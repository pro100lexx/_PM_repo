using System.Windows;

namespace ExpoManager.Views
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void confirmButtonClick(object sender, RoutedEventArgs e)
        {
            confirmButton.Content = "connecting...";
            ApplicationLogin(loginBox.Text, passBox.Password);
        }

        private void buttonClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
