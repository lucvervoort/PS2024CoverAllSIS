using Assignment.WPF.App.ViewModels;
using System.Windows;
using System.Windows.Input;
using MVVM;
using Assignment.Domain;
using Assignment.WPF.App.Languages;
using System;
using Microsoft.Extensions.Logging;
using AutoMapper;
using Assignment.WPF.App.DTO;
using System.Collections.Generic;
// using System.Collections.ObjectModel;

namespace Generic.Host.WPF.App
{
    public class MainWindowViewModel : ViewModelBase
    {
        public CustomerManager? Manager { get; set; }
        public ILogger<MainWindow>? Logger { get; set; }
        public TestWindow? TestWindow { get; set; }

        private IMapper _mapper;

        private RelayCommand? _exitCommand;
        public ICommand ExitCommand
        {
            get
            {
                _exitCommand ??= new RelayCommand(param => this.Exit(), param => this.CanExit());
                return _exitCommand;
            }
        }
        private bool CanExit()
        {
            return true;
        }

        private void Exit()
        {
            Application.Current.Shutdown();
        }

        private bool CanOk()
        {
            return true;
        }

        private void Ok()
        {
            var customers = Manager?.GetAllCustomers();

            var customerDtos = _mapper.Map<IEnumerable<CustomerDTO>>(customers);

            if (customerDtos != null)
            {
                foreach (var customerDto in customerDtos)
                {
                    if (customerDto.ContactName != null)
                    {
                        Console.ConsoleOutput.Add(customerDto.ContactName);
                    }
                }                

                // Manager?.DeleteCustomer(customers.First());
            }

            //_testWindow?.Show();

            var info = GC.GetGCMemoryInfo();
            Logger?.LogInformation(Translations.HeapSizeTag + info.HeapSizeBytes);
            var totalMemoryBeforeCleanup = GC.GetTotalMemory(false);
            Logger?.LogInformation("Total memory before cleanup: " + totalMemoryBeforeCleanup);
            var totalMemoryAfterCleanup = GC.GetTotalMemory(true); // effectief zoveel mogelijk vrijgeven naar het OS met true
            Logger?.LogInformation("Total memory after cleanup: " + totalMemoryAfterCleanup);

            StatusText = "Memory cleanup: from " + totalMemoryBeforeCleanup + " to " + totalMemoryAfterCleanup + " bytes";
        }

        private string _statusText = "";
        public string StatusText
        {
            get { return _statusText; }
            set
            {
                if (_statusText != value)
                {
                    _statusText = value;
                    RaisePropertyChanged();
                }
            }
        }

        private RelayCommand? _okCommand;
        public ICommand OkCommand
        {
            get
            {
                _okCommand ??= new RelayCommand(param => this.Ok(), param => this.CanOk());
                return _okCommand;
            }
        }

        public MainWindowViewModel(IMapper mapper): base()
        {
            _mapper = mapper;
        }

/*

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
*/

        private ConsoleContent _consoleContent = new();
        public ConsoleContent Console
        {
            get
            {
                return _consoleContent;
            }

            set
            {
                if (_consoleContent != value)
                {
                    _consoleContent = value;
                    RaisePropertyChanged();
                }
            }
        }
    }
}
