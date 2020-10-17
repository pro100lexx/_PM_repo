using System.Diagnostics;
using System.Windows;

namespace ExpoManager.Views
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Closed(object sender, System.EventArgs e)
        {
            Process.GetCurrentProcess().Kill();
        }
    }
}
