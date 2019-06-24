# TrapQuest

**PLEASE NOTE THAT THIS IS NOW OVER SIX MONTHS OLD DUE TO CODE REWORKS MAKING IT DIFFICULT TO EXTRACT IMAGES FROM THE CODE. AIKA IS WORKING ON A FIX.**

Partially redacted public version of the source code for the indie adult roguelike game.

Read this first:
https://github.com/aika092/TrapQuest/wiki/Getting-Started

If you need to run it on linux:

Required is inform 6F95. (6M62 does not seem to work) maybe 6G60 also works but the source version of gnome-inform has build issues.

Maybe it's possbile to install the binary, but on arch linux gnome-inform could also be installed from source:
https://github.com/ptomato/gnome-inform7/archive/6F95.tar.gz

./autogen.sh && ./configure --prefix=/home/$USER/builds/gnome-inform_6F95/
Required to install is gtkhtml version 3.something (not libgtkhtml, nor version 4, and yes, this package is orphaned).

To compile also the ni file has to be placed in the src/ni directory. The ni file can be obtained from:
http://inform7.com/download/content/6F95/I7_6F95_Linux_all.tar.gz
(extract it from the right archive contained, hint for architecture: uname -a)

Also gnome-inform had another issue but it seems a harmless one, at least make -k and make -k install and built a working gnome-inform (so far).

Also had to 
mv Trap\ Quest.materials/*.png 'Trap Quest Materials'/

And now Trap quest seems to run :)
