using Microsoft.Extensions.Logging;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;
using Assignment.Domain;
// using System.Collections.ObjectModel;

namespace Generic.Host.WPF.App
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly MainWindowViewModel _dataContext;

        // We gebruiken DI om het logger singleton te bekomen: parameter van constructor
        public MainWindow(ILogger<MainWindow>? logger, TestWindow testWindow, CustomerManager manager, MainWindowViewModel vm) // DI vult singleton in, automatisch
        {
            InitializeComponent();

            _dataContext = vm;
            _dataContext.Manager = manager;
            _dataContext.Logger = logger;
            _dataContext.TestWindow = testWindow;
            DataContext = _dataContext;

            Loaded += MainWindow_Loaded;
        }

        void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            InputBlock.KeyDown += InputBlock_KeyDown;
            InputBlock.Focus();
        }

        void InputBlock_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                _dataContext.Console.ConsoleInput = InputBlock.Text;
                _dataContext.Console.RunCommand();
                InputBlock.Focus();
                Scroller.ScrollToBottom();
            }
        }

        /// <summary>
        /// Toegevoegd om te kunnen de applicatie stoppen met het kruisje van MainWindow
        /// </summary>
        /// <param name="e"></param>
        protected override void OnClosing(CancelEventArgs e)
        {
            Application.Current.Shutdown();  // ik neem huidige WPF app en ik vraag deze om te stoppen
            //e.Cancel = true;
        }
    }
}
