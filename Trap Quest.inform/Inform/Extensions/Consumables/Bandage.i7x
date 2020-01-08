Bandage by Consumables begins here.


A bandage is a kind of thing. There are 11 bandages. The printed name of bandage is "[TQlink of item described]bandage[TQxlink of item described][verb-desc of item described]". The printed plural name of bandage is "[TQlink of item described]bandages[TQxlink of item described][verb-desc of item described]". The text-shortcut of bandage is "bdg".
To say ExamineDesc of (B - a bandage):
	say "A crude bandage you managed to scavenge up.".

Figure of bandage is the file "Items/Collectibles/bandage1.png".

To decide which figure-name is the examine-image of (C - a bandage):
	decide on figure of bandage.

bandaging is an action applying to one thing.

To say ShortDesc of (C - a bandage):
	say "bandage".

Check drinking bandage:
	try bandaging the noun instead.
Check lubing bandage:
	try bandaging the noun instead.

Check bandaging:
	if the body soreness of the player <= 0, say "You don't need a bandage." instead;
	if the player is immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the noun is not bandage, say "That noun is for using a bandage!" instead.

FAcooldown is a number that varies.

Carry out bandaging:
	allocate 6 seconds;
	say "You apply a bandage!";
	decrease the body soreness of the player by 1;
	now FAcooldown is a random number between 50 and 70;
	destroy the noun.

To say unique-verb-desc of (T - bandage):
	if inline hyperlinks >= 2, say "[if the body soreness of the player > 0] [link][bracket]use[close bracket][as]use [text-shortcut of T][end link]".

Understand "bandage with [something]", "bandage self with [something]" as bandaging.


Bandage ends here.
