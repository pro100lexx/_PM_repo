using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace ExpoManager.Views
{
    public partial class LoginWindow : Window
    {
        public void ApplicationLogin(string login, string password)
        {
            string CommandText = string.Format("SELECT Count(*) FROM [dbo].[Users] WHERE login = '{0}' AND password = '{1}'", login, password);
            SqlConnection myConnection = new SqlConnection(GetConnectionString());
            SqlCommand myCommand = new SqlCommand(CommandText, myConnection);
            myConnection.Open();
            myCommand.ExecuteScalar();
            myConnection.Close();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(myCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            if ((int)dt.Rows[0][0] == 1)
            {
                this.Hide();
                MainWindow mainWindow = new MainWindow();
                mainWindow.Show();
            }
            else
            {
                MessageBox.Show("Логин или пароль введены не верно.","Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private string GetConnectionString()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Environment.CurrentDirectory + "\\Model\\ExpoDB.mdf;Integrated Security=True";
            return connectionString;
        }
    }
}
