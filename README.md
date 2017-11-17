# TrapQuest
Partially redacted public version of the source code for the indie adult roguelike game.

Required is inform 6F95. (6M62 does not seem to work)

Maybe it's possbile to install the binary, but on arch linux gnome-inform could also be installed from source:
https://github.com/ptomato/gnome-inform7/archive/6F95.tar.gz

./autogen.sh && ./configure --prefix=$USER/builds/gnome-inform_6F95/
Required to install is gtkhtml version 3.something (not libgtkhtml). This package is orphaned.

For this also the ni file has to be placed in the src/ni directory. The ni file can be obtained from:
http://inform7.com/download/content/6F95/I7_6F95_Linux_all.tar.gz
(extract it from the right archive contained, hint: uname -a)

Also gnome-inform had another issue but with make -k but it seemed a harmless one, at least make -k and make -k install resulted in a working binary (so far).

Also had to 
mv Trap\ Quest.materials/*.png 'Trap Quest Materials'/

and now Trap quest it seems to run :)
