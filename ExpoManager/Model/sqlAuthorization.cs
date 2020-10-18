using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using MySql.Data.MySqlClient;

namespace ExpoManager.Views
{
    public partial class LoginWindow : Window
    {
        public void ApplicationLogin(string login, string password)
        {
            string sqlquery = string.Format("SELECT Count(*) FROM `Users` WHERE login = '{0}' AND password = '{1}'", login, password);
            MySqlConnection myConnection = new MySqlConnection(GetConnectionString());
            
            try
            {
                myConnection.Open();
                MySqlCommand mySqlCommand = new MySqlCommand(sqlquery, myConnection);
                int account = Convert.ToInt32(mySqlCommand.ExecuteScalar());
                if (account == 1)
                {
                    this.Hide();
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();
                }
                else
                {
                    MessageBox.Show("Логин или пароль введены не верно.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                myConnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка");
            }

            string query = string.Format("SELECT Count(*) FROM `Users` WHERE login = '{0}' AND password = '{1}'", login, password);
            //SqlConnection myConnection = new SqlConnection(GetConnectionString());
            //SqlCommand myCommand = new SqlCommand(CommandText, myConnection);
            //myConnection.Open();
            //myCommand.ExecuteScalar();
            //myConnection.Close();
            //SqlDataAdapter dataAdapter = new SqlDataAdapter(myCommand);
            //DataTable dt = new DataTable();
            //dataAdapter.Fill(dt);
            //if ((int)dt.Rows[0][0] == 1)
            //{
            //    this.Hide();
            //    MainWindow mainWindow = new MainWindow();
            //    mainWindow.Show();
            //}
            //else
            //{
            //    MessageBox.Show("Логин или пароль введены не верно.","Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            //}
        }

        private string GetConnectionString()
        {
            //string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Environment.CurrentDirectory + "\\Model\\ExpoDB.mdf;Integrated Security=True";
            //string myConnectionString = "Database=expo;Data Source=10.8.0.1;User Id=lexx;Password=f9FOYzH9LT1APb8K";

            MySqlConnectionStringBuilder mysqlCSB = new MySqlConnectionStringBuilder();
            mysqlCSB.Server = "10.8.0.1";             // IP адрес БД
            mysqlCSB.Port = 3306;                     // Порт
            mysqlCSB.Database = "expo";               // Имя БД
            mysqlCSB.UserID = "lexx";                 // Имя пользователя БД
            mysqlCSB.Password = "f9FOYzH9LT1APb8K";   // Пароль пользователя БД
            //mysqlCSB.CharacterSet = "utf8_unicode_ci"; // Кодировка Базы Данных

            return mysqlCSB.ConnectionString;
        }
    }
}
