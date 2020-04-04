Basic Beds by Furniture begins here.

Section - Guard Beds

prison guard's bed is a kind of furniture. 1 prison guard's bed is in Dungeon06. The printed name of prison guard's bed is "[TQlink of item described]guard's bed[TQxlink of item described][shortcut-desc][verb-desc of item described]". prison guard's bed can be in use. prison guard's bed is usually not in use. The text-shortcut of prison guard's bed is "gbe".

To say ExamineDesc of (C - prison guard's bed):
	say "The prison guard has a comfortable but bland looking double bed. You have no idea if you would get in trouble for resting on it or not[if the intelligence of the player > 7], but knowing this game, the odds aren't in your favour[end if].".

To decide which figure-name is the examine-image of (F - a prison guard's bed):
	decide on figure of hotel bed. [TODO: unique image]

To compute furniture resting on (F - prison guard's bed):
	now resting is 1;
	now F is in use;
	repeat with M running through royal guards:
		if M is friendly and M is interested, deinterest M; [This is so that they notice you are using the bed]
		now the boredom of M is 0;
	compute normal rest of F.

To compute rest ending of (F - a prison guard's bed):
	now F is not in use.

To say RestingDesc of (F - prison guard's bed):
	say "You [one of]get into the bed and [or]continue to [stopping]relax on the comfortable mattress.".

A bunk bed is a kind of prison guard's bed. A bunk bed is not portable. The printed name of bunk bed is "[TQlink of item described]bunk bed[TQxlink of item described][verb-desc of item described]". There is 1 bunk bed. 1 bunk bed is in Dungeon22. 1 bunk bed is in Dungeon23. 1 bunk bed is in Dungeon24. 1 bunk bed is in Dungeon25. The text-shortcut of a bunk bed is "bed".

Figure of bunk bed is the file "Env/Dungeon/bunkbed1.png".

To decide which figure-name is the examine-image of (C - a bunk bed):
	decide on figure of bunk bed.

To say ExamineDesc of (C - a bunk bed):
	say "A basic, inexpensive looking bed, for military personnel. You have no idea if you would get in trouble for resting on it or not[if the intelligence of the player > 7], but knowing this game, the odds aren't in your favour.[otherwise].[end if]".

Check going:
	if clumsy is 1 and the player is upright and the player is not in danger:
		let M be a random reactive friendly royal guard;
		let F be a random prison guard's bed in the location of the player;
		if M is royal guard and F is a thing and a random number between 0 and 1 < clumsy april fools:
			say "As you move to leave, you trip and fall onto [NameDesc of F]!";
			say aprilFoolsClumsyFlav;
			compute furniture resting on F instead;
			do nothing instead.


Section - Trap Beds

[prison cell]

[A prison-cell is a thing. prison-cell is not portable. The printed name of prison-cell is "[TQlink of item described]cell[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of prison-cell is "prnl". Understand "cell", "prison cell", "prison" as prison-cell. prison-cell is in Dungeon03.

To say ExamineDesc of (C - prison-cell):
	say "A cramped prison cell with a stone bed suspended from one wall, and a mysterious crystal slab inset into the wall opposite.".

[To decide which figure-name is the examine-image of (C - prison-cell):
	decide on figure of podium.]

Definition: prison-cell is immune to change: decide yes.

Check climbing prison-cell:
	try entering the prison-cell instead.

Check entering prison-cell:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	say "You enter the prison cell.";
	now the source-room of InsideTheCell is the location of the player;
	now the player is in InsideTheCell instead.

Check going while the player is in InsideTheCell:
	let R be the source-room of InsideTheCell;
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	let H be skeleton key;
	if the player is in danger:
		say "The door has been securely locked. [if H is held]You might be able to unlock it with your skeleton key. Do you?[otherwise]You might be able to open it, if you had a key...[end if]";
		if H is held and the player is consenting:
			say "You use the key to unlock the door, and quickly leave the cell!";
			destroy H;
			now the player is in R;[dungeon03 is the stone cell]
	otherwise:
		say "You step out of the cell.";
		now the player is in R;
	if the player is not in InsideTheCell:
		repeat with M running through monsters in InsideTheCell:
			say "[line break][BigNameDesc of M] follows you out.";
			now M is in R;
		say "[line break]The cell door closes behind you." instead;[important, otherwise we trigger the normal movement code]
	otherwise:
		do nothing instead.]

[A prison bed is a kind of furniture. A prison bed is not portable. There is 1 prison bed in Dungeon03. The printed name of prison bed is "[TQlink of item described]prison bed[TQxlink of item described][verb-desc of item described]". The text-shortcut of a prison bed is "pnbe".

To say ExamineDesc of (C - a prison bed):
	say "A stone shelf connected to the wall by two rusted out chains. It doesn't look comfortable, but it's technically a bed.".

To decide which figure-name is the examine-image of (C - a prison bed):
	decide on figure of bunk bed.

To compute furniture resting on (F - a prison bed):
	compute crappy rest of F.

To say RestingDesc of (F - a prison bed):
	say  "You [one of][or]continue to [stopping]rest on the prison bed.";

To compute unique normal effect of (F - a prison bed):
	let M be a random unfriendly monster regionally in playerRegion;
	if M is intelligent and a random number between 1 and 3 is 1:
		now M is in InsideTheCell;
		now M is interested;
		say "[BigNameDesc of M] enters the cell while you're in the middle of resting, and shuts the door behind [him of M]. The door immediately locks.".

To say RestCompleteFlav of (F - a prison bed):
	say "[variable custom style]I feel a little better, I guess...[roman type][line break]".]

[witch shack]

[A witch-shack is a thing. witch-shack is not portable. The printed name of witch-shack is "[TQlink of item described]shack[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of witch-shack is "wsha". Understand "shack", "witch shack" as witch-shack. witch-shack is in Woods20.

To say ExamineDesc of (C - witch-shack):
	say "A small wooden shack containing a bed made out of straw, and a mysterious sheet of crystal inset into the wall.".

[To decide which figure-name is the examine-image of (C - witch-shack):
	decide on figure of podium.]

Definition: witch-shack is immune to change: decide yes.

Check climbing witch-shack:
	try entering the witch-shack instead.

Check entering witch-shack:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	let W be witch;
	say "You walk into the witch's shack. [if W is in the location of the player and W is bitchy][speech style of W]'Oh, just help yourself to my house then. If anything hostile comes by, I'll be siccing it on you, by the way.'[roman type][otherwise if W is in the location of the player][speech style of W]'While you're in there, help yourself to my bed. It isn't comfortable, but it's better than nothing!'[roman type][end if][line break]";
	now the source-room of InsideTheShack is the location of the player;
	now the player is in InsideTheShack instead.

Check going while the player is in InsideTheShack:
	let R be the source-room of InsideTheShack;
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger:
		say "The door has been sealed with magic! [if the magic-power of the player > 2]You might be able to use your own magic to unlock it. Do you want to try?[otherwise]You might be able to overcome it, if you had some magic power...[end if]";
		if the magic-power of the player > 2 and the player is consenting:
			say "You feel the magic power built up in your body flow into the door, which glows bright blue before swinging open. You quickly leave the shack!";
			now the player is in R;
	otherwise:
		say "You leave the witch's shack and close the door behind you.";
		now the player is in R;
	if the player is not in InsideTheShack:
		repeat with M running through monsters in InsideTheShack:
			say "[line break][BigNameDesc of M] follows you out.";
			now M is in R;
		say "[line break]The door closes behind you." instead;[important, otherwise we trigger the normal movement code]
	otherwise:
		do nothing instead.

A straw bed is a kind of furniture. A straw bed is not portable. There is 1 straw bed in InsideTheShack. The printed name of straw bed is "[TQlink of item described]straw bed[TQxlink of item described][verb-desc of item described]". The text-shortcut of a straw bed is "strw".

To say ExamineDesc of (C - a straw bed):
	say "A small bed made out of soft straw. It doesn't look very comfortable.".

To decide which figure-name is the examine-image of (C - a straw bed):
	decide on figure of bunk bed.

To compute furniture resting on (F - a straw bed):
	compute crappy rest of F.

To say RestingDesc of (F - a straw bed):
	say  "You [one of][or]continue to [stopping]rest on the straw bed.";

To compute unique normal effect of (F - a straw bed):
	let M be a random unfriendly monster in the Woods;
	let W be witch;
	let R be a random number between 1 and 7;
	if M is interested, increase R by 1;
	if W is in Woods20 and W is bitchy, increase R by 2;
	if R > 6:
		now M is in InsideTheShack;
		now M is interested;
		if W is in the location of the player and W is bitchy, say "[BigNameDesc of M] enters the shack while you're still in the middle of resting, and the door slams shut behind [him of M].";
		otherwise say "[BigNameDesc of M] enters the shack while you're still in the middle of resting. [big he of M] quickly shuts the door, which glows magenta as it magically locks itself.".
		[now shack-door is in the location of the player.]

To say RestCompleteFlav of (F - a straw bed):
	say "[variable custom style]I feel a little better, I guess...[roman type][line break]".]

A cot is a kind of furniture. A cot is not portable. There is 1 cot. The printed name of cot is "[TQlink of item described]cot[TQxlink of item described][verb-desc of item described]". The text-shortcut of a cot is "cot".

To say ExamineDesc of (C - a cot):
	say "A small, uncomfortable looking bed.".

To decide which figure-name is the examine-image of (C - a cot):
	decide on figure of bunk bed.

To compute furniture resting on (F - a cot):
	let M be a random alive dominatrix in the location of the player;
	if M is a monster and the number of alive monsters in the location of the player < 2:
		say "[speech style of M]'Rest up, I have some work for you to do once you[']re finished up.'[roman type] [BigNameDesc of M] presses a small button on a remote, and a modesty shutter slams across the doorway of the room.";
		now a random modesty shutter is in the location of the player;
	compute normal rest of F.

To say RestingDesc of (F - a cot):
	say "You [one of][or]continue to [stopping]rest on the cot.";

To compute rest ending of (F - a cot):
	if the number of modesty shutters in the location of the player > 0:
		let M be a random alive dominatrix in the location of the player;
		say "[BigNameDesc of M] grins. Looks like you[']ll have to handle her before you can leave this room.";
		now the sex-length of M is 5;
		if number of plentiful accessories retained by M < 1, now a random off-stage ring is retained by M;
		now M is interested.

Basic Beds ends here.
