   M S B A M L   `   `   `  ���� F  BRenameFiles, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:RenameFilesRenameFiles      RenameFiles.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:RenameFiles       � 
ResizeMode$  CanMinimize=� � Title$ Rename Files��$	��370��$	��650�� � WindowStartupLocation$ CenterScreen=� � Icon$ Image\Rf.png��.��� $��20q� � RowDefinitions �� $	��100 ��� $	��100 ��� $	��100 �.+��� $��0��$��Center=�$��Center=�$��5q�$��80��$	��600�� �� CornerRadius$ 5������  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,0&�.���  � Color$ DeepSkyBlue��	 � Offset$		 0.0Q�� $ 	LightBlue��$		 0.5Q�._��� ���� $	 0,0&�$	 1,0&�.��� $ DeepSkyBlue��$		 0.0Q�� $ 	LightBlue��$		 0.5Q��� $��1��$��Center=�$��Center=�$��5q�$��80��$	��600��$ 5������ $	 0,0&�$	 1,0&�.��� $ DeepSkyBlue��$		 0.0Q�� $ 	LightBlue��$		 0.5Q�._��� ���� $	 0,0&�$	 1,0&�.��� $ DeepSkyBlue��$		 0.0Q�� $ 	LightBlue��$		 0.5Q��� $��0��
 �� Orientation$
 
Horizontal=�$
��Left=�$	��Top=�$��40��$	��600��.+��� $��	Location:��$��Verdana)�$��15(�$��Bottom=�$��Bottom=�$��10 5 0 0q��� $��0��$
 
Horizontal=�$��Center=�$��Bottom=�$��80��$	��600��.+��� -   $��myTxtBox��$	��450��$��30��$��Center=�$��20q��� -   $��Browse��$��Browse��$��80��$��30��$��10q�$��15(�   RoundedButton#��[  �� $��1��$
 
Horizontal=�$
��Left=�$	��Top=�$��40��$	��600��.+��� $��	New Name:��$��Verdana)�$��15(�$��Bottom=�$��Bottom=�$��10 5 0 0q��� $��1��$
 
Horizontal=�$��Center=�$��Bottom=�$��80��$	��600��.+��� -   $��
nameTxtBox��$	��450��$��30��$��Center=�$��20q��� -   $��Rename��$��Rename��$��80��$��30��$��10q�$��15(�#��[   � ToolTip$3 -Rename all the files that have the same name.���� $��2��$
 
Horizontal=�$��Center=�$��Center=�$	��100��$	��200��.+��� -   $��Clear��$��50��$	��100��#��[  $��20(�$ Clear Everything��$
��55 0q����� $	 0,0&�$	 1,0&�.��� $ DeepSkyBlue��$		 0.0Q�� $ 	LightBlue��$		 0.5Q�