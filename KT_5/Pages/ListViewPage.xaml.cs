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
    /// Логика взаимодействия для ListViewPage.xaml
    /// </summary>
    public partial class ListViewPage : Page
    {
        public ListViewPage()
        {
            InitializeComponent();
            loadListView();
        }

        private void loadListView()
        {
            try
            {
                listView.ItemsSource = Data.KT5_Entities.GetContext().Users.ToList();
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private void backBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (Classes.Manager.frameHelper.CanGoBack == true)
                {
                    Classes.Manager.frameHelper.GoBack();
                }
                else
                {
                    MessageBox.Show("Невозможно вернуться назад", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Classes.Manager.frameHelper.Navigate(new Pages.AddPage());
            }
            catch (Exception ex)
            {
                return;
            }
        }
    }
}
