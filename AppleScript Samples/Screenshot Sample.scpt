FasdUAS 1.101.10   ��   ��    k             l     �� ��    = 7  Copyright (c) 2005 Stephen Holt. All rights reserved.       	  l     �� 
��   
 %   http://www.crashonlaunch.org/    	     l     ������  ��        l     �� ��    L F  This program is free software; you can redistribute it and/or modify         l     �� ��    L F  it under the terms of the GNU General Public License as published by         l     �� ��    I C  the Free Software Foundation; either version 2 of the License, or         l     �� ��    + %  (at your option) any later version.         l     ������  ��        l     �� ��    G A  This program is distributed in the hope that it will be useful,         l     ��  ��     F @  but WITHOUT ANY WARRANTY; without even the implied warranty of      ! " ! l     �� #��   # E ?  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the    "  $ % $ l     �� &��   & 4 .  GNU General Public License for more details.    %  ' ( ' l     ������  ��   (  ) * ) l     �� +��   + J D This script is based on code contained in and knowledge gained from    *  , - , l     �� .��   . = 7 Cyberduck's AppleScript Samples - http://cyberduck.ch/    -  / 0 / l     ������  ��   0  1 2 1 l     �� 3��   3 > 8  Bug fixes, suggestions and comments should be sent to:    2  4 5 4 l     �� 6��   6    sholt@crashonlaunch.org    5  7 8 7 l     ������  ��   8  9 : 9 l     �� ;��   ;     Modified by David Kocher    :  < = < l     ������  ��   =  > ? > l     �� @��   @   remote stuff    ?  A B A l     C�� C r      D E D m      F F  example.net    E o      ���� 0 	theserver 	theServer��   B  G H G l    I�� I r     J K J m     L L 	 ftp    K o      ���� 0 theprotocol theProtocol��   H  M N M l    O�� O r     P Q P m    	 R R  username    Q o      ���� 0 theuser theUser��   N  S T S l    U�� U r     V W V m     X X  /images    W o      ���� "0 theremotefolder theRemoteFolder��   T  Y Z Y l     ������  ��   Z  [ \ [ l     �� ]��   ] / ) Set the location for the image and thumb    \  ^ _ ^ l   # `�� ` r    # a b a b     c d c n     e f e 1    ��
�� 
psxp f l    g�� g I   �� h i
�� .earsffdralis        afdr h m    ��
�� afdrdesk i �� j k
�� 
from j m    ��
�� fldmfldu k �� l��
�� 
rtyp l m    ��
�� 
TEXT��  ��   d m     m m  Screenshots    b o      ���� 0 image_location  ��   _  n o n l  $ + p�� p r   $ + q r q o   $ '���� 0 image_location   r o      ���� 0 thumb_location  ��   o  s t s l     ������  ��   t  u v u l     �� w��   w   take the screenshot    v  x y x l  , 3 z�� z I  , 3�� {��
�� .sysodelanull��� ��� nmbr { m   , / | | ?�      ��  ��   y  } ~ } l  4 C ��  I  4 C�� ���
�� .sysoexecTEXT���     TEXT � b   4 ? � � � b   4 ; � � � m   4 7 � �  /usr/sbin/screencapture     � o   7 :���� 0 image_location   � m   ; > � � 
 .pdf   ��  ��   ~  � � � l     ������  ��   �  � � � l     �� ���   �   do the image stuffs    �  � � � l  D � ��� � Q   D � � � � � O   G � � � � k   M � � �  � � � I  M R������
�� .ascrnoop****      � ****��  ��   �  � � � l  S S�� ���   � ' ! get the image from the clipboard    �  � � � r   S b � � � I  S ^�� ���
�� .aevtodocnull  �    alis � b   S Z � � � o   S V���� 0 image_location   � m   V Y � � 
 .pdf   ��   � o      ���� 0 	the_image   �  � � � l  c c�� ���   �   save the image as a png    �  � � � I  c z�� � �
�� .coresavenull���    obj  � o   c f���� 0 	the_image   � �� � �
�� 
fltp � m   i l��
�� typvPNGf � �� ���
�� 
kfil � b   o v � � � o   o r���� 0 image_location   � m   r u � � 
 .png   ��   �  � � � l  { {�� ���   �   resize image for thumb    �  � � � I  { ��� � �
�� .icasscalnull��� ��� obj  � o   { ~���� 0 	the_image   � �� ���
�� 
maxi � m   � ����� ���   �  � � � l  � ��� ���   �   save the thumb as png    �  � � � I  � ��� � �
�� .coresavenull���    obj  � o   � ����� 0 	the_image   � �� � �
�� 
fltp � m   � ���
�� typvPNGf � �� ���
�� 
kfil � b   � � � � � o   � ����� 0 thumb_location   � m   � � � �  
.thumb.png   ��   �  ��� � I  � ��� ���
�� .coreclosnull���    obj  � o   � ����� 0 	the_image  ��  ��   � m   G J � ��null     ߀��  	�Image Events.app0���� 7��� ��� u@$   )       �(�� ���@ uimev   alis    �  	jungle hd                  ��-#H+    	�Image Events.app                                                 Zq��#[        ����  	                CoreServices    ��      ��;      	�  	�  	�  6jungle hd:System:Library:CoreServices:Image Events.app  "  I m a g e   E v e n t s . a p p   	 j u n g l e   h d  ,System/Library/CoreServices/Image Events.app  / ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 error_message  ��   � I  � ��� ���
�� .sysodlogaskr        **** � o   � ����� 0 error_message  ��  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � 1 + upload the image and thumbs with Cyberduck    �  ��� � l  �D ��� � Q   �D � � � � O   �7 � � � k   �6 � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  � � � r   � � � � � l  � � ��� � I  � ��� ���
�� .corecrel****      � null � m   � ���
�� 
docu��  ��   � o      ���� 0 
thebrowser 
theBrowser �  � � � Q   �0 � � � � O   �# � � � k   �" � �  � � � r   � � � � � m   � � � �  UTF-8    � 1   � ���
�� 
enco �  � � � I  � ����� �
�� .CYCKCoCtnull��� ��� obj ��   � �� � �
�� 
HoSt � o   � ����� 0 	theserver 	theServer � �� � �
�� 
PrCl � o   � ����� 0 theprotocol theProtocol � � � �
� 
UsMe � o   � ��~�~ 0 theuser theUser � �} ��|
�} 
PaTh � o   � ��{�{ "0 theremotefolder theRemoteFolder�|   �  � � � I  ��z�y �
�z .CYCKUpAdnull��� ��� obj �y   � �x ��w
�x 
PaTh � b   � � � o  �v�v 0 image_location   � m   � � 
 .png   �w   �  � � � I �u�t �
�u .CYCKUpAdnull��� ��� obj �t   � �s ��r
�s 
PaTh � b     o  �q�q 0 thumb_location   m    
.thumb.png   �r   � �p I "�o�n�m
�o .CYCKDiCtnull��� ��� obj �n  �m  �p   � l  � ��l o   � ��k�k 0 
thebrowser 
theBrowser�l   � R      �j�i
�j .ascrerr ****      � **** o      �h�h 0 error_message  �i   � I +0�g�f
�g .sysodlogaskr        **** o  +,�e�e 0 error_message  �f   � �d I 16�c�b�a
�c .aevtquitnull��� ��� obj �b  �a  �d   � m   � ��null     ߀�� 9rCyberduck.app� �0���� 7���   @ u@$   )       �(�� ���@ uCYCK   alis    �  	jungle hd                  ��-#H+   9rCyberduck.app                                                   i(*�g��        ����  	                build     ��      �g��     9r 8�� ?S ?H  I  Ajungle hd:Users:dkocher:Desktop:cyberduck-2.4:build:Cyberduck.app     C y b e r d u c k . a p p   	 j u n g l e   h d  7Users/dkocher/Desktop/cyberduck-2.4/build/Cyberduck.app   /    ��   � R      �`	�_
�` .ascrerr ****      � ****	 o      �^�^ 0 error_message  �_   � I ?D�]
�\
�] .sysodlogaskr        ****
 o  ?@�[�[ 0 error_message  �\  ��  ��       �Z�Z   �Y
�Y .aevtoappnull  �   � **** �X�W�V�U
�X .aevtoappnull  �   � **** k    D  A  G  M  S  ^  n  x  }  �  ��T�T  �W  �V   �S�S 0 error_message   < F�R L�Q R�P X�O�N�M�L�K�J�I�H�G m�F�E |�D � ��C ��B ��A�@�?�>�= ��<�;�:�9 ��8�7�6�5�4�3�2�1 ��0�/�.�-�,�+�* ��)�(�'�R 0 	theserver 	theServer�Q 0 theprotocol theProtocol�P 0 theuser theUser�O "0 theremotefolder theRemoteFolder
�N afdrdesk
�M 
from
�L fldmfldu
�K 
rtyp
�J 
TEXT�I 
�H .earsffdralis        afdr
�G 
psxp�F 0 image_location  �E 0 thumb_location  
�D .sysodelanull��� ��� nmbr
�C .sysoexecTEXT���     TEXT
�B .ascrnoop****      � ****
�A .aevtodocnull  �    alis�@ 0 	the_image  
�? 
fltp
�> typvPNGf
�= 
kfil
�< .coresavenull���    obj 
�; 
maxi�: �
�9 .icasscalnull��� ��� obj 
�8 .coreclosnull���    obj �7 0 error_message  �6  
�5 .sysodlogaskr        ****
�4 .miscactvnull��� ��� null
�3 
docu
�2 .corecrel****      � null�1 0 
thebrowser 
theBrowser
�0 
enco
�/ 
HoSt
�. 
PrCl
�- 
UsMe
�, 
PaTh�+ 
�* .CYCKCoCtnull��� ��� obj 
�) .CYCKUpAdnull��� ��� obj 
�( .CYCKDiCtnull��� ��� obj 
�' .aevtquitnull��� ��� obj �UE�E�O�E�O�E�O�E�O������ �,a %E` O_ E` Oa j Oa _ %a %j O ga  ]*j O_ a %j E` O_ a a a _ a  %� !O_ a "a #l $O_ a a a _ a %%� !O_ j &UW X ' (�j )O �a * x*j +Oa ,j -E` .O S_ . Ia /*a 0,FO*a 1�a 2�a 3�a 4�a 5 6O*a 4_ a 7%l 8O*a 4_ a 9%l 8O*j :UW X ' (�j )O*j ;UW X ' (�j )ascr  ��ޭ