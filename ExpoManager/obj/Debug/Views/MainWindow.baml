   M S B A M L   `   `   `  ����F  BExpoManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ExpoManager.ViewsExpoManager.Views  5   	   ?$clr-namespace:ExpoManager.Views.TabsExpoManager.Views.Tabs  5   	   "    ExpoManager.Views.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ExpoManager.Views     5   	   8tabData$clr-namespace:ExpoManager.Views.Tabs     5   	   -   5          � Title$  Expo Manager��5	   	    � WindowStartupLocation$ CenterScreen=�6   $��0q�6C   $��0q�6W   ���	#FF666666���	#FFE6E6E6$	��700��6�   $
��1200��6�    � Icon$< 6/ExpoManager;component/DesignSource/pics/expo_icon.png��6�   $
��1200��6�   .��5
      � $��Center=�6   $
��1167��6(    � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      �� 5      $��5 �6   .+�5   
   �� -   5         ��Name$ 
tabControl��5       �� TabStripPlacement$
 Left=�6)   $��0q�6B   $��0q�6V    �� SelectedIndex$ 1��6b   $
��1167��6�   $��1��6�   ��6t   Z�  � 	Resources 5       �� 
TargetType	 �� Property
 �� Value �� 
TargetType �� Padding �� ImageSource ��Name �� Triggers P� Property P� Value �� 
TargetName   tabsContainer��%�  '��       &	      �� 5      " ��6   .�5      �� 	 � ��
 5      �� 5      " ��6.   .R�5   "   � $	��208��6'   $��46��63   $��	0,10,-2,0q�6?   .+�5   &   �� $��Border��6-   $ 20,2,0,0q�6;   ��5   *   �� 5   .   $@ :/ExpoManager;component/DesignSource/pics/btn_menu_back.png��69   ._�5   *   �� $ ContentSite��5   )   $��Header��5   )   $��Center=�5   )   $
��Left=�5   )   5    '   5!   #    5"   "   P� 5#   &    �@��
IsSelected . . �5$   *   �� $ Border��61   	 � ��
 5%   .   �� 5&   2   $H B/ExpoManager;component/DesignSource/pics/btn_menu_back_pressed.png��6=   5(   +   �� 5)   *   $ Border��61   	 �@��Padding$
 25,4,0,0q�6X   �� 5*   *   	 � ��
 �	#FF4D4D4D6G   5+   '   P� 5,   &    � {� .  6S   P� 5-   &    �@J�IsMouseOver . . �5.   *   �� $ Border��61   	 �@��Padding$
 25,4,0,0q�6X   �� 5/   *   	 � ��
 �	#FF4D4D4D6G   �� 50   *   $ Border��61   	 � ��
 51   .   �� 52   2   $H B/ExpoManager;component/DesignSource/pics/btn_menu_back_pressed.png��6=   54   +   55   '   57      59      �� 5:      	 � ��
 �	#FFE6E6E663   �� 5;      	 � ��$
 0q�6/   �� 5<      	 � ��$
 0q�60   �� 5=      	 � ��$<
 6/ExpoManager;component/DesignSource/fonts/#FontAwesome)�63   �� 5>      	 � ��$
 18(�61   �� 5?      	 � ��$
 DemiBold"�63   �� 5@      	 � ��$	
 Top=�6:   �� 5A      	 � ��$

 Left=�6<   �� 5B      	 �@�UseLayoutRounding
 .  6:   5C      �� 5D      .�5E      �� 	 � ��
 �	#FFE6E6E66:   �� 5F      	 �@��CornerRadius$
 10��6<   �� 5G      	 � ��$
 2q�6?   �� 5H      	 � ��
 �	#FF4D4D4D6;   5I      5J      .@�5K      �� $��  |  ГРАФИК��6   .��5L      (  "System.Windows.Controls.WebBrowser     Source$( "http://service.tvexpo.pro/plan.php?�6   5M      �� 5N      $��  |  ПРОЕКТЫ��6   .��5O      (   "ExpoManager.Views.Tabs.tabProjects  $��Normal"�6&   5P      �� 5Q      $��  |  КЛИЕНТЫ��6   .��5R      �� #��[  6   ._�5S      �� .��6   КЛИЕНТЫ6%   5T      5U      �� 5V      $��  |  СОБЫТИЯ��6   .��5W      �� #��[  6   ._�5X      �� .��6   СОБЫТИЯ6%   5Y      5Z      �� 5[      $��  |  ОФИС��6   .��5\      �� #��[  6   ._�5]      �� .��6   
ОФИС6"   5^      5_      �� 5`      $��  |  БАЗА��6   .��5a      �� #��[  6   ._�5b      �� .��6   
БАЗА6"   5c      5d      �� 5e      $��  |  ПРОПУСКА��6   .��5f      �� #��[  6   ._�5g      �� .��6   ПРОПУСКА6&   5h      5i      �� 5j      $ ��  |  ОСНАЩЕНИЕ��6   .��5k      �� #��[  6   ._�5l      �� .��6   ОСНАЩЕНИЕ6'   5m      5n      5o      5p      5q      