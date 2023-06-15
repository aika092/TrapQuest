Magic Lamp by Collectibles begins here.

A magic lamp is a kind of thing. There is 1 magic lamp. A magic lamp has a number called wishes. Figure of magic lamp is the file "Items/Collectibles/lamp1.png".

To decide which figure-name is the examine-image of (C - a magic lamp):
	decide on figure of magic lamp.
To say ExamineDesc of (L - a magic lamp):
	say "A small oil lamp. [if the wishes of L > 0]There's a djinn trapped inside[otherwise]It's empty[end if].".
The printed name of magic lamp is "[TQlink of item described][if the wishes of item described <= 0]oil[otherwise]magic[end if] lamp[shortcut-desc][TQxlink of item described][verb-desc of item described]".
The text-shortcut of magic lamp is "lmp". Understand "oil" as magic lamp.
To say ShortDesc of (C - a magic lamp):
	say "[if the wishes of C <= 0]oil[otherwise]magic[end if] lamp".

Carry out rubbing a magic lamp:
	allocate 3 seconds;
	say "You rub the lamp. ";
	if the wishes of the noun > 0:
		let M be a random off-stage djinn;
		say "The djinn appears![line break][first custom style]'You again. [if the wishes of the noun is 3]You'll be [please]d to hear that since you are my new owner, you get three wishes whenever you want. You could use all three in a row to gain lots of strength, or maybe you want to save them to allow me to help you escape when you're in trouble. Really, it's up to you[otherwise if the wishes of the noun is 2]You have two wishes left. Speak your will and then leave me to my misery[otherwise]This is your final wish. Better make it count[end if].'[roman type][line break]";
		compute djinn wishing of M;
	otherwise:
		say "Nothing happens.". [Selkie: Might it be fun to punish them with a bad wish result? "Ha! Exceeding your wish limit means [i]I[/i] get to choose the wish to grant on you!"]

Definition: a magic lamp is immune to change: decide yes.
Definition: a magic lamp is magic themed: decide yes.

To decide which number is the bartering value of (T - a magic lamp) for (M - an aeromancer):
	decide on 5.
To decide which number is the bartering value of (T - a magic lamp) for (M - Icarus):
	decide on 4.

Magic Lamp ends here.
