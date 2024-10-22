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
    public partial class AddPage : Page
    {
        //private Data.Users newUser;
        public AddPage()
        {
            InitializeComponent();
            loadComboBoxes();
            loadIdBox();
        }

        private void loadIdBox()
        {
            try
            {
                idBlock.Text = Data.KT5_Entities.GetContext().Users.OrderByDescending(d => d.id).FirstOrDefault().ToString();
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void loadComboBoxes()
        {
            try
            {
                roleComboBox.ItemsSource = Data.KT5_Entities.GetContext().Roles.ToList();
                genderComboBox.ItemsSource = Data.KT5_Entities.GetContext().Genders.ToList();
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errorsString = new StringBuilder();

                if (String.IsNullOrEmpty(lastnameBox.Text))
                {
                    errorsString.AppendLine("Заполните поле Фамилия");
                }
                if (String.IsNullOrEmpty(nameBox.Text))
                {
                    errorsString.AppendLine("Заполните поле Имя");
                }
                if (String.IsNullOrEmpty(patronymicBox.Text))
                {
                    errorsString.AppendLine("Заполните поле Отчество");
                }

                if (String.IsNullOrEmpty(roleComboBox.Text))
                {
                    errorsString.AppendLine("Выберите Должность");
                }

                if (String.IsNullOrEmpty(birthBox.Text))
                {
                    errorsString.AppendLine("Заполните поле Дата Рождения");
                }
                if (String.IsNullOrEmpty(phoneBox.Text))
                {
                    errorsString.AppendLine("Заполните поле Телефон");
                }
                // я забыл как писать конструкцию Split

                if (String.IsNullOrEmpty(genderComboBox.Text))
                {
                    errorsString.AppendLine("Выберите Пол");
                }

                if (String.IsNullOrEmpty(emailBox.Text))
                {
                    errorsString.AppendLine("Заполните поле Email");
                }
                if (Data.KT5_Entities.GetContext().Users.Any(d => d.email == emailBox.Text) == true)
                {
                    errorsString.AppendLine("Поле Email должно быть уникальным");
                }
                if (String.IsNullOrEmpty(loginBox.Text))
                {
                    errorsString.AppendLine("Заполните поле Логин");
                }
                if (Data.KT5_Entities.GetContext().Users.Any(d => d.login == loginBox.Text) == true)
                {
                    errorsString.AppendLine("Поле Логин должно быть уникальным");
                }

                
                if (String.IsNullOrEmpty(passwordBox1.Password))
                {
                    errorsString.AppendLine("Заполните поле Пароль");
                }
                if (String.IsNullOrEmpty(passwordBox2.Password))
                {
                    errorsString.AppendLine("Заполните поле Повтор Пароля");
                }

                if(passwordBox1.Password.Length < 8)
                {
                    errorsString.AppendLine("Пароль не должен быть короче 8 знаков");
                }
                // не знаю как узнать у переменной цифры и капс

                if (passwordBox1.Password != passwordBox2.Password)
                {
                    errorsString.AppendLine("Пароли не совпадают");
                }

                if (errorsString.Length > 0)
                {
                    MessageBox.Show($"{errorsString}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }

                if (errorsString.Length <= 0)
                {
                    var newUser = new Data.Users();

                    newUser.name = nameBox.Text;
                    newUser.lastname = lastnameBox.Text;
                    newUser.patronymic = patronymicBox.Text;

                    newUser.RoleId = roleComboBox.SelectedIndex;
                    newUser.BirthDate = Convert.ToDateTime(birthBox.Text);
                    newUser.phone = phoneBox.Text;

                    newUser.GenderId = genderComboBox.SelectedIndex;

                    newUser.email = emailBox.Text;
                    newUser.login = loginBox.Text;
                    newUser.password = passwordBox1.Password;

                    Data.KT5_Entities.GetContext().Users.Add(newUser);
                    Data.KT5_Entities.GetContext().SaveChanges();
                }
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void backBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
