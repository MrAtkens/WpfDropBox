using Dropbox.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;


namespace DropBoxTest
{
	public partial class MainWindow : Window
	{
		static NameAndEmail nameAndEmail = new NameAndEmail();

		DropboxClient dbx = new DropboxClient("MFjF9li5oDAAAAAAAAAADYxnoiH2F_7Wge54CN_SwCe3Lr_5HZbnDT_K73vSj0gx");

		DropItem dropItem = new DropItem();

		int counter = 0;

		public MainWindow()
		{
			InitializeComponent();

			var task = Task.Run((Func<Task>)MainWindow.Run);
			task.Wait();

			DropName.Content = nameAndEmail.Name;
			DropEmail.Content = nameAndEmail.Email;

		}

		static async Task Run()
		{
			using (var dbx = new DropboxClient("MFjF9li5oDAAAAAAAAAADYxnoiH2F_7Wge54CN_SwCe3Lr_5HZbnDT_K73vSj0gx"))
			{
				var full = await dbx.Users.GetCurrentAccountAsync();

				nameAndEmail.Name = full.Name.DisplayName;
				nameAndEmail.Email = full.Email;

			}
		}

		public async Task ListRootFolder()
		{
			File file = new File();
			string folder = "";
			var list = await dbx.Files.ListFolderAsync(folder);

			// show folders then files
			foreach (var item in list.Entries.Where(i => i.IsFolder))
			{
				file.FileName=item.Name;

				Table.Items.Add(file);
			}
	
			foreach (var item in list.Entries.Where(i => i.IsFile))
			{
				file.FileName = item.Name;
				file.FileSize = item.AsFile.Size/1024;

				Table.Items.Add(file);
			}
		}

		async Task Download(DropboxClient dbx, string folder, string file)
		{
			using (var response = await dbx.Files.DownloadAsync(folder + "/" + file))
			{
				Console.WriteLine(await response.GetContentAsStringAsync());
			}
		}

		private void Refresh(object sender, RoutedEventArgs e)
		{
			ListRootFolder();
		}

		private void DragApp(object sender, System.Windows.Input.MouseButtonEventArgs e)
		{
			DragMove();
		}

		private void Minimaze(object sender, RoutedEventArgs e)
		{
			WindowState = WindowState.Minimized;
		}

		private void Exit(object sender, RoutedEventArgs e)
		{
			Close();
		}
	}
}
