using Assignment.Contracts;
using Assignment.WPF.App.Languages;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Serilog;
using System;
using System.Windows;
using Assignment.Infrastructure.Repositories;
using Assignment.Domain;
//using Assignment.Infrastructure.Context;

namespace Generic.Host.WPF.App
{

    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private readonly IHost _host;
        private IConfiguration _configuration;

        private void Application_DispatcherUnhandledException(object sender, System.Windows.Threading.DispatcherUnhandledExceptionEventArgs e)
        {
            MessageBox.Show(e.Exception.Message, Translations.ExceptionMsg, MessageBoxButton.OK, MessageBoxImage.Error);
            e.Handled = true;
        }

        public App()
        {
            var hostBuilder = new HostBuilder()

                .ConfigureAppConfiguration((context, configurationBuilder) =>
                {
                    configurationBuilder.SetBasePath(context.HostingEnvironment.ContentRootPath);
                    configurationBuilder.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);
                    // Niet optioneel: config bestand moet er staan!
                    // reload on change: zonder de app te herstarten is een aangepast configuratiebestand opgeladen
                    configurationBuilder.AddEnvironmentVariables(); // bijvoorbeeld SET X=Y
                })

                .UseSerilog((hostingContext, loggerConfiguration) => loggerConfiguration.ReadFrom.Configuration(hostingContext.Configuration))

                // DI:

                // Repositories registreren bij DI

                .ConfigureServices((context, services) =>
                {
                    services.AddSingleton<MainWindow>(); // ik maak de "dienst" MainWindow bekend als singleton
                    services.AddSingleton<TestWindow>();

                    services.AddAutoMapper(typeof(MappingConfig));

                    services.AddSingleton<CustomerManager>();
                    services.AddSingleton<MainWindowViewModel>();

                    // Db connection string:
                    var cs = context.Configuration.GetConnectionString("DefaultConnectionString");

                    // Registreer hier je DbContext klasse bij DI ...
            
                    /*
                    services.AddDbContext<MyDbContext>(
                        dbContextOptions => dbContextOptions
                            .UseSqlServer(cs)
                            // The following three options help with debugging, but should
                            // be changed or removed for production.
                            .LogTo((msg) => System.Diagnostics.Debug.WriteLine(msg), LogLevel.Debug)
                            .EnableSensitiveDataLogging()
                            .EnableDetailedErrors()
                            );
                    */
                    services.AddSingleton<IRepository<Assignment.Domain.Models.Customer>, EFCustomerRepository>();    
                });

            _host = hostBuilder.Build();
        }

        private async void OnStartup(object sender, StartupEventArgs e)
        {
            // Eerst lifecycle koppelen
            await _host.StartAsync();

            var logger = _host.Services.GetRequiredService<ILogger<App>>();
            logger.LogInformation("Host lifecycle coupled, launching main window...");

            _configuration = _host.Services.GetRequiredService<IConfiguration>();
            var langSpec = _configuration["Language"]!;
            // We zetten de taal van de applicatie: ISO standaard
            logger.LogInformation($"Setting application language to {langSpec}");
            Translations.Culture = new System.Globalization.CultureInfo(langSpec); // nl-BE en-US fr-BE 

            // Daarna startvenster als dienst aanvragen en tonen:
            var mainWindow = _host.Services.GetService<MainWindow>(); // hier gebeurt de eerste keer een "new"            
            mainWindow?.Show();
        }
        
        private async void OnExit(object sender, ExitEventArgs e)
        {
            using (_host)
            {
                await _host.StopAsync(TimeSpan.FromSeconds(5)); // we gunnen de host 5 seconden alvorens geforceerd te stoppen
            }
        }
    }
}
