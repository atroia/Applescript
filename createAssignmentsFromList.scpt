FasdUAS 1.101.10   ��   ��    k             l     ��  ��    / )-----------------------------------------     � 	 	 R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��    6 0 Create InCopy Assignments in InDesign from list     �   `   C r e a t e   I n C o p y   A s s i g n m e n t s   i n   I n D e s i g n   f r o m   l i s t      l     ��  ��      by Aaron Troia     �      b y   A a r o n   T r o i a      l     ��  ��      c: 3/31/2022     �      c :   3 / 3 1 / 2 0 2 2      l     ��  ��    
  m:      �      m :        l     ��������  ��  ��       !   l     �� " #��   " _ Y This script will take a list from a text file to create InCopy Assignments in InDesign      # � $ $ �   T h i s   s c r i p t   w i l l   t a k e   a   l i s t   f r o m   a   t e x t   f i l e   t o   c r e a t e   I n C o p y   A s s i g n m e n t s   i n   I n D e s i g n     !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) z t This script is modified from from Script Doctor (Shirley Hopkins) "Create Assignments for InCopy With Scripts" code    * � + + �   T h i s   s c r i p t   i s   m o d i f i e d   f r o m   f r o m   S c r i p t   D o c t o r   ( S h i r l e y   H o p k i n s )   " C r e a t e   A s s i g n m e n t s   f o r   I n C o p y   W i t h   S c r i p t s "   c o d e (  , - , l     �� . /��   . O I https://yourscriptdoctor.com/create-assignments-for-incopy-with-scripts/    / � 0 0 �   h t t p s : / / y o u r s c r i p t d o c t o r . c o m / c r e a t e - a s s i g n m e n t s - f o r - i n c o p y - w i t h - s c r i p t s / -  1 2 1 l     �� 3 4��   3 / )-----------------------------------------    4 � 5 5 R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 2  6 7 6 l     ��������  ��  ��   7  8 9 8 l     : ; < : r      = > = m      ? ? � @ @   > o      ���� 0 username userName ; O I Username will appear next to Assignment name in parenthesis when created    < � A A �   U s e r n a m e   w i l l   a p p e a r   n e x t   t o   A s s i g n m e n t   n a m e   i n   p a r e n t h e s i s   w h e n   c r e a t e d 9  B C B l     ��������  ��  ��   C  D�� D l  2 E���� E O   2 F G F k   1 H H  I J I l   �� K L��   K / ) get InDesign file name without extension    L � M M R   g e t   I n D e s i g n   f i l e   n a m e   w i t h o u t   e x t e n s i o n J  N O N r     P Q P c     R S R n     T U T 1    ��
�� 
pnam U 4   �� V
�� 
docu V m   
 ����  S m    ��
�� 
TEXT Q o      ���� 0 docname docName O  W X W r    * Y Z Y n    ( [ \ [ 7   (�� ] ^
�� 
ctxt ] m    ����  ^ l   ' _���� _ \    ' ` a ` l   % b���� b I   %���� c
�� .sysooffslong    ��� null��   c �� d e
�� 
psof d m     f f � g g  . e �� h��
�� 
psin h o     !���� 0 docname docName��  ��  ��   a m   % &���� ��  ��   \ o    ���� 0 docname docName Z o      ���� 0 docname2 docName2 X  i j i l  + +�� k l��   k C = set Assignment color - notice color is an enumeration value     l � m m z   s e t   A s s i g n m e n t   c o l o r   -   n o t i c e   c o l o r   i s   a n   e n u m e r a t i o n   v a l u e   j  n o n r   + . p q p m   + ,��
�� uicliGry q o      ���� 0 	usercolor 	userColor o  r s r r   / 7 t u t 4  / 3�� v
�� 
docu v m   1 2����  u o      ���� 0 docref docRef s  w�� w O   81 x y x k   >0 z z  { | { I  > C������
�� .CoResavedocu        obj ��  ��   |  } ~ } r   D O  �  c   D K � � � 1   D I��
�� 
path � m   I J��
�� 
TEXT � o      ���� 0 docpath docPath ~  � � � l  P P�� � ���   � p j I think this line only pertains if you are creating the assignment from a selection (possibly not needed)    � � � � �   I   t h i n k   t h i s   l i n e   o n l y   p e r t a i n s   i f   y o u   a r e   c r e a t i n g   t h e   a s s i g n m e n t   f r o m   a   s e l e c t i o n   ( p o s s i b l y   n o t   n e e d e d ) �  � � � r   P [ � � � b   P W � � � o   P S���� 0 docpath docPath � m   S V � � � � � ( A s s i g n m e n t s : c o n t e n t : � o      ���� 0 	storypath 	storyPath �  � � � l  \ \�� � ���   � "  iterate through a text file    � � � � 8   i t e r a t e   t h r o u g h   a   t e x t   f i l e �  � � � r   \ s � � � n   \ o � � � 2  k o��
�� 
cpar � l  \ k ����� � I  \ k�� ���
�� .rdwrread****        **** � l  \ g ����� � I  \ g���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
prmp � m   ` c � � � � � T P i c k   t e x t   f i l e   c o n t a i n i n g   A s s i g n m e n t   n a m e s��  ��  ��  ��  ��  ��   � o      ���� 0 asgnpath asgnPath �  � � � X   t � ��� � � Z   � � � ����� � ?  � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 nextline nextLine � m   � �����   � k   � � � �  � � � r   � � � � � o   � ����� 0 nextline nextLine � o      ���� 0 asgnname asgnName �  � � � l  � ��� � ���   � V P I believe this line creates the Assignments folder (if it doesnt already exist)    � � � � �   I   b e l i e v e   t h i s   l i n e   c r e a t e s   t h e   A s s i g n m e n t s   f o l d e r   ( i f   i t   d o e s n t   a l r e a d y   e x i s t ) �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 docpath docPath � o   � ����� 0 docname2 docName2 � m   � � � � � � �    A s s i g n m e n t s : � o   � ����� 0 asgnname asgnName � m   � � � � � � � 
 . i c m a � o      ���� 0 nextline nextLine �  ��� � Z   � � � ��� � � H   � � � � l  � � ����� � I  � ��� ���
�� .CoRedoexbool        obj  � 4   � ��� �
�� 
AsMt � o   � ����� 0 nextline nextLine��  ��  ��   � r   � � � � � I  � ��� � �
�� .corecrel****      � null � m   � ���
�� 
AsMt � �� ���
�� 
prdt � K   � � � � �� � �
�� 
pnam � o   � ����� 0 asgnname asgnName � �� � �
�� 
UsrN � o   � ����� 0 username userName � �� � �
�� 
AFCl � o   � ����� 0 	usercolor 	userColor � �� � �
�� 
AsEx � m   � ���
�� AsEEAsEs � �� ���
�� 
path � o   � ����� 0 nextline nextLine��  ��   � o      ���� 0 asgnref asgnRef��   � r   � � � � � 4   � ��� �
�� 
AsMt � o   � ����� 0 asgnname asgnName � o      ���� 0 asgnref asgnRef��  ��  ��  �� 0 nextline nextLine � o   w z���� 0 asgnpath asgnPath �  � � � l  � � � � � r   � � � � b   � � � � o   � ���� 0 	storypath 	storyPath � m    � � � � � 
 . i c m l � o      ���� 0 icmlpath icmlPath � 4 .set icmlPath to storyPath & baseName & ".icml"    � � � � \ s e t   i c m l P a t h   t o   s t o r y P a t h   &   b a s e N a m e   &   " . i c m l " �  � � � r  	 � � � 4  	�� �
�� 
AsMt � m  ������ � o      ���� 0 	unasgnref 	unasgnRef �  � � � r   � � � n   � � � 1  ��
�� 
pnam � o  ���� 0 	unasgnref 	unasgnRef � o      ���� 0 
unasgnname 
unasgnName �  � � � O * � � � I $)������
�� .AsSuupdtnull���     AsMt��  ��   � o  !�� 0 asgnref asgnRef �  ��~ � I +0�}�|�{
�} .CoResavedocu        obj �|  �{  �~   y o   8 ;�z�z 0 docref docRef��   G m     � ��                                                                                  InDn  alis    �  Macintosh HD                   BD ����Adobe InDesign 2022.app                                        ����            ����  
 cu             Adobe InDesign 2022   ;/:Applications:Adobe InDesign 2022:Adobe InDesign 2022.app/   0  A d o b e   I n D e s i g n   2 0 2 2 . a p p    M a c i n t o s h   H D  8Applications/Adobe InDesign 2022/Adobe InDesign 2022.app  / ��  ��  ��  ��       �y � ��y   � �x
�x .aevtoappnull  �   � **** � �w ��v�u �t
�w .aevtoappnull  �   � **** � k    2  8  D�s�s  �v  �u    �r�r 0 nextline nextLine 2 ?�q ��p�o�n�m�l�k f�j�i�h�g�f�e�d�c�b�a ��`�_ ��^�]�\�[�Z�Y�X�W�V � ��U�T�S�R�Q�P�O�N�M�L ��K�J�I�H�q 0 username userName
�p 
docu
�o 
pnam
�n 
TEXT�m 0 docname docName
�l 
ctxt
�k 
psof
�j 
psin�i 
�h .sysooffslong    ��� null�g 0 docname2 docName2
�f uicliGry�e 0 	usercolor 	userColor�d 0 docref docRef
�c .CoResavedocu        obj 
�b 
path�a 0 docpath docPath�` 0 	storypath 	storyPath
�_ 
prmp
�^ .sysostdfalis    ��� null
�] .rdwrread****        ****
�\ 
cpar�[ 0 asgnpath asgnPath
�Z 
kocl
�Y 
cobj
�X .corecnte****       ****
�W 
leng�V 0 asgnname asgnName
�U 
AsMt
�T .CoRedoexbool        obj 
�S 
prdt
�R 
UsrN
�Q 
AFCl
�P 
AsEx
�O AsEEAsEs�N 

�M .corecrel****      � null�L 0 asgnref asgnRef�K 0 icmlpath icmlPath�J 0 	unasgnref 	unasgnRef�I 0 
unasgnname 
unasgnName
�H .AsSuupdtnull���     AsMt�t3�E�O�+*�k/�,�&E�O�[�\[Zk\Z*����� k2E�O�E�O*�k/E` O_  �*j O*a ,�&E` O_ a %E` O*a a l j a -E` O �_ [a a l kh  �a ,j d�E`  O_ �%a !%_  %a "%E�O*a #�/j $ -a #a %�_  a &�a '�a (a )a �a *l +E` ,Y *a #_  /E` ,Y h[OY��O_ a -%E` .O*a #i/E` /O_ /�,E` 0O_ , *j 1UO*j UU ascr  ��ޭ