Armband by Accessories begins here.

armband is an accessory. armband is unique. armband is plastic. armband has a text called armband-title. armband has a text called armband-print. The text-shortcut of armband is "armb".

The printed name of armband is usually "[TQlink of item described][item style][accessory-colour of the item described] armband[clothing-title-after]".

Figure of armband 1 is the file "Items/Accessories/Arm/armband1.png".
Figure of armband 2 is the file "Items/Accessories/Arm/armband2.png".
Figure of armband 3 is the file "Items/Accessories/Arm/armband3.png".
Figure of armband 4 is the file "Items/Accessories/Arm/armband4.png".
Figure of armband 5 is the file "Items/Accessories/Arm/armband5.png".
Figure of armband 6 is the file "Items/Accessories/Arm/armband6.png".

Definition: armband is cursable: decide no.

To say ShortDesc of (C - armband):
	say "[accessory-colour of C] armband".

To say MediumDesc of (C - armband):
	say "'[armband-print of C]' [ShortDesc of C]".

To decide which figure-name is the clothing-image of (C - armband):
	if armband is sapphire, decide on figure of armband 1;
	if armband is emerald, decide on figure of armband 2;
	if armband is ruby, decide on figure of armband 3;
	if armband is pink diamond, decide on figure of armband 4;
	if armband is pure diamond, decide on figure of armband 5;
	decide on figure of armband 6.

To say ClothingDesc of (C - armband):
	if the armband-print of C is "new recruit", say "A neon pink armband with a clear plastic sleeve which you would expect to be used to hold an ID card. It does have a card inside, but instead of a photo of yourself there are just the words 'NEW RECRUIT' in big bumpy letters that look like they are made out of [accessory-colour of C].";
	otherwise say "A neon pink armband with a clear plastic sleeve. The card inside reads the words '[NameBimbo] the [armband-print of C]' in big bumpy letters that look like they are made out of [accessory-colour of C].".

To decide which text is jewellery-shortcut of (A - armband):
	decide on "ab".

To decide which number is the rank of (Y - yourself):
	if armband is worn:
		if the armband-print of armband is "new recruit", decide on 0;
		if armband is sapphire, decide on 1;
		if armband is emerald, decide on 2;
		if armband is ruby, decide on 3;
		if armband is pink diamond, decide on 4;
		if armband is pure diamond, decide on 5;
		decide on 6;
	decide on 10.

To say rank-colour of (N - a number):
	if N is 1:
		say "sapphire";
	otherwise if N is 2:
		say "emerald";
	otherwise if N is 3:
		say "ruby";
	otherwise if N is 4:
		say "pink diamond";
	otherwise if N is 5:
		say "pure diamond";
	otherwise:
		say "solid gold".

Definition: armband is blue themed:
	if armband is sapphire, decide yes;
	decide no.
Definition: armband is green themed:
	if armband is emerald, decide yes;
	decide no.
Definition: armband is red themed:
	if armband is ruby, decide yes;
	decide no.
Definition: armband is pink themed:
	if armband is pink diamond, decide yes;
	decide no.
Definition: armband is white themed:
	if armband is pure diamond, decide yes;
	decide no.
Definition: armband is yellow themed:
	if armband is solid gold, decide yes;
	decide no.

Report taking off armband:
	now armband is in Holding Pen;
	say "As you remove the armband you watch it disintegrate into nothingness. Uh-oh, there's no going back now...";
	repeat with M running through reactive students:
		compute nonstudent perception of M;
	repeat with M running through reactive staff members:
		compute nonstudent perception of M;
	if playerRegion is school, display entire map. [Some arrows might turn green]

Carry out wearing armband:
	say "You place the armband around your left bicep and strap it tight.";

Report wearing armband:
	compute armband replacement.

To compute armband replacement:
	if the stolen-strength of armband > 0:
		increase the raw strength of the player by the stolen-strength of armband;
		now the stolen-strength of armband is 0;
		say "As you replace the armband you feel all of your strength return to you![line break][variable custom style]Phew![roman type][line break]";
	repeat with M running through staff members:
		compute M reacting to armband replacement.

Check going:
	if armband is worn and playerRegion is School:
		let D be the noun;
		let R be the room D from the location of the player;
		if the entry-rank of the location of the player < the entry-rank of R and the entry-rank of R > the rank of the player:
			say "As you try to touch the door, your armband shoots a powerful jolt of electricity down your arm![one of][line break][variable custom style]I guess I'm not allowed to go through here yet...[roman type][line break][or][stopping]" instead.

Armband ends here.
