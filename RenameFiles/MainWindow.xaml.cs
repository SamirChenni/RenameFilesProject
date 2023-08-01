using Microsoft.Win32;
using System;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Input;


namespace RenameFiles
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string selectedFolderPath = "";
        string fileName = "";
        public MainWindow()
        {
            InitializeComponent();
            Clear();
        }
        
        private void Rename_Click(object sender, RoutedEventArgs e)
        {
            if(myTxtBox.Text == null || myTxtBox.Text.Trim() == "")
            {
                MessageBox.Show("Please choose the path first!","Information",MessageBoxButton.OK,MessageBoxImage.Information);
                myTxtBox.Focus();
                return;
            }
            else if(nameTxtBox.Text == null || nameTxtBox.Text.Trim() == "")
            {
                MessageBox.Show("Please choose a name!", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                nameTxtBox.Focus();
                return;
            }
            else
            {
                string pattern = @"\s\d{1,3}\s";
                Regex regex = new Regex(pattern);
                if (selectedFolderPath == "")
                {
                    selectedFolderPath = myTxtBox.Text;
                }
                try
                {
                    string[] files = Directory.GetFiles(selectedFolderPath);
                    fileName = nameTxtBox.Text;

                    foreach(string file in files)
                    {
                        string extension = Path.GetExtension(file);
                        MatchCollection matchCollection = regex.Matches(file);
                        foreach (Match hit in matchCollection )
                        {
                            GroupCollection groupCollection = hit.Groups;
                            File.Move(file, $"{selectedFolderPath}/{fileName}{groupCollection[0].Value}{extension}");
                        }
                    }
                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.ToString());
                }

            }

        }

        private void Browse_Click(object sender , RoutedEventArgs e)
        {
            

            using (System.Windows.Forms.FolderBrowserDialog folderBrowserDialog = new System.Windows.Forms.FolderBrowserDialog())
            {
                // Show the folder browser dialog and check if the user clicked the "OK" button
                if (folderBrowserDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    // Get the selected folder path
                    selectedFolderPath = folderBrowserDialog.SelectedPath;
                    myTxtBox.Text = selectedFolderPath;

                }
            }
        }
        private void Clear_Click(object sender, RoutedEventArgs e)
        {
            Clear();
        }
        private void Clear()
        {
            
            try
            {
                myTxtBox.Text = string.Empty;            
                nameTxtBox.Text = string.Empty;
                selectedFolderPath = string.Empty;
                fileName = string.Empty;
                myTxtBox.Focus();
            }
            catch (Exception e)
            {

                MessageBox.Show(e.ToString());
            }
        }
        private void myButton_MouseEnter(object sender , MouseEventArgs e)
        {
            this.Cursor = Cursors.Hand;
        }

        private void myButton_MouseLeave(object sender , MouseEventArgs e)
        {
            this.Cursor = Cursors.Arrow;
        }
    }
}
