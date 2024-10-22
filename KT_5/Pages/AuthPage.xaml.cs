using KT_5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace KT_5.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthPage.xaml
    /// </summary>
    public partial class AuthPage : Page
    {
        public AuthPage()
        {
            InitializeComponent();
        }

        private void checkAuthData()
        {
            try
            {
                StringBuilder errorsString = new StringBuilder();

                string login = loginBox.Text.ToString();
                string password = passwordBox.Password.ToString();

                var user = Data.KT5_Entities.GetContext().Users.Where(d => d.login == login && d.password == password).FirstOrDefault();

                if (Data.KT5_Entities.GetContext().Users.Any(d => d.login == login && d.password == password) == true)
                {
                    if (user.Roles.name == "Менеджер") // replace with switch constrcution cuz this is weird and ugly
                    {
                        Classes.Manager.frameHelper.Navigate(new Pages.ListViewPage()); // also replace depending on role of user

                    }
                    // add all last roles

                }
                else
                {
                    errorsString.AppendLine("Неправильный логин или пароль!");
                    MessageBox.Show($"{errorsString}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private void applyBtn_Click(object sender, RoutedEventArgs e)
        {
            checkAuthData();
        }
    }
}
