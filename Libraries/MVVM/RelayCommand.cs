﻿using System.Windows.Input;

namespace MVVM
{
    public class RelayCommand : ICommand
    {
        private Action<object?> _execute;
        private Predicate<object?> _canExecute;
        private event EventHandler? _canExecuteChangedInternal;

        public RelayCommand(Action<object?> execute)
            : this(execute, DefaultCanExecute)
        {
        }

        public RelayCommand(Action<object?>? execute, Predicate<object?>? canExecute)
        {
            this._execute = execute ?? throw new ArgumentNullException(nameof(execute));
            this._canExecute = canExecute ?? throw new ArgumentNullException(nameof(canExecute));
        }

        public event EventHandler? CanExecuteChanged
        {
            add
            {
                System.Windows.Input.CommandManager.RequerySuggested += value;
                this._canExecuteChangedInternal += value;
            }

            remove
            {
                CommandManager.RequerySuggested -= value;
                this._canExecuteChangedInternal -= value;
            }
        }

        public bool CanExecute(object? parameter)
        {
            return this._canExecute != null && this._canExecute(parameter);
        }

        public void Execute(object? parameter)
        {
            if(this._execute != null) 
                this._execute(parameter);
        }

        public void OnCanExecuteChanged()
        {
            EventHandler? handler = this._canExecuteChangedInternal;
            //DispatcherHelper.BeginInvokeOnUIThread(() => handler.Invoke(this, EventArgs.Empty));
            handler?.Invoke(this, EventArgs.Empty);
        }

        public void Destroy()
        {
            this._canExecute = _ => false;
            this._execute = _ => { return; };
        }

        private static bool DefaultCanExecute(object? parameter)
        {
            return true;
        }
    }
}
