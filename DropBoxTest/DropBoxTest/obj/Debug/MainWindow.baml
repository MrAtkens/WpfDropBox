   M S B A M L   `   `   `  ����F  BDropBoxTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:DropBoxTestDropBoxTest  5   	       DropBoxTest.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:DropBoxTest     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��600��6)    � WindowStyle$
 None=�65    � 
ResizeMode$ NoResize=�6H   .��5	      �  � RowDefinitions 5
      �� 5      $��24 �6   �� 5      .+�5      � -   5        ���	#FF1789E6$��25��5   !   $��0��6-   .+�5      ]� $��Right=�6   $��Center=�6,   .+�5      �� -   5        $	����5      $��Segoe MDL2 Assets)�6!   
�������$��0 0 10 0q�6S   ���	#FF1789E6��6|   Z� 6�   �� 5      -   5        $	����5      $��Segoe MDL2 Assets)�6"   
�������$��0 0 2 0q�6T   ���	#FF1789E6��6}   Z� 6�   5      5      �� 5      $��DropBox Aotus��6
   $��Roboto)�6"   $��24(�66   $��10q�6D   $
��Left=�6Q   $	��Top=�6l   $��1��6�   ���	#FF1789E66�   �� 5      -   5         ��Name$ DropName��5   
   $��Имя��6   $��Roboto)�6*   $��	0 20 10 0q�6>   $��16(�6Q   $��Center=�6`   $	��Top=�6}   $��1��6�   ���	#FF1789E66�   �� 5      -   5        $ 	DropEmail��5   
   $��
Почта��6   $��Roboto)�6-   $��	0 20 70 0q�6A   $��16(�6T   $��Right=�6c   $	��Top=�6   $��1��6�   ���	#FF1789E66�   �� 5      -   5        $	����5      $��20(�6   $��Segoe MDL2 Assets)�6.   $��10q�6M   $��	0 0 0 250q�6Z   
�������$��Center=�6�   $��Center=�6�   ���	#FF1789E6$��1��6�   ��6�   Z� 6�   � 5      $��3��6
   .+�5      �� $��3��6   $��30 140 30 40q�6!   ���	#FF1789E6 �� RadiusY$ 20��6H    �� RadiusX$ 20��6U   &   System.Windows.Controls.DataGrid  5      -   5          Name$ Table��5      $
��Left=�6   $	��246��68   $	��Top=�6E   $	��509��6]   $��
48,153,0,0q�6i   ���	#FF1789E6
�������   AlternatingRowBackground
 �������6}   Z� 	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Имя папки��6      FontSize$ 17Q�6N      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6]      CanUserReorder .     
FontFamily$ Yu Gothic UI Semibold)�6~   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *
FolderName+6~     5      $
 Имя файла��6   $ * 6L   $ 17Q�6V    .  $ Yu Gothic UI Semibold)�6}    6-   �� *
FileName+6}     5      $
 Размер файла��6   $ * 6N   $ 17Q�6X    .  $ Yu Gothic UI Semibold)�6    60   �� *
FileSize+6   5#      5%      5'      5(      