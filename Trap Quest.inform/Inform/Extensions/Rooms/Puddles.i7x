Puddles by Rooms begins here.


[!<Room>@<semenPuddle:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called semen-puddle. The semen-puddle of a room is usually 0.

[!<Room>@<urinePuddle:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called urine-puddle. The urine-puddle of a room is usually 0.

[!<Room>@<milkPuddle:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called milk-puddle. The milk-puddle of a room is usually 0.

[!<Room>@<sprinklePuddle:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called sprinkle-puddle. The sprinkle-puddle of a room is usually 0.

[!<Room>@<slimePuddle:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called slime-puddle. The slime-puddle of a room is usually 0.
A room can be glue-puddled. A room is usually not glue-puddled.
Definition: A room is glue-puddled if a glue is in it. [One approach might be to let the glue-puddle be a number, and use that to represent how sticky it is; but since the stickiness of the player is already being used to do that, I *think* it makes sense to use that instead.]


Understand "puddle", "pool", "liquid", "mess", "juice" as a room[ when the semen-puddle of the room + the milk-puddle of the room + the urine-puddle of the room > 0].


Book 1 Puddles

[!<DecideWhichNumberIsTheSlipperinessOfRoom>+

REQUIRES COMMENTING

+!]
To decide which number is the slipperiness of (R - a room):
	Let X be semen-puddle of R + urine-puddle of R + milk-puddle of R + sprinkle-puddle of R;
	[if R is in the mansion, ]increase X by the slime-puddle of R;
	now X is X / 5;
	if R is raining, increase X by 2;
	if X > 8, decide on 8;
	decide on X.

To PuddleUp (L - semen) by (X - a number):
	SemenPuddleUp X.
To PuddleUp (L - urine) by (X - a number):
	UrinePuddleUp X.
To PuddleUp (L - milk) by (X - a number):
	MilkPuddleUp X.
To PuddleUp (L - water) by (X - a number):
	do nothing.

To PuddleUp (L - semen) by (X - a number) in (R - a room):
	SemenPuddleUp X in R.
To PuddleUp (L - urine) by (X - a number) in (R - a room):
	UrinePuddleUp X in R.
To PuddleUp (L - milk) by (X - a number) in (R - a room):
	MilkPuddleUp X in R.
To PuddleUp (L - water) by (X - a number) in (R - a room):
	do nothing.

[!<SemenPuddleUp>+

REQUIRES COMMENTING

+!]
To SemenPuddleUp (X - a number):
	if X > 0, SemenPuddleUp X in the location of the player.

To SemenPuddleUp (X - a number) in (R - an object):
	do nothing.

To SemenPuddleUp (X - a number) in (R - a room):
	if R is a room, increase the semen-puddle of R by X.

To SemenPuddleUp (X - a number) in (R - HoleInWall):
	increase the semen-puddle of the location of hole-in-wall by X.

To SemenPuddleUp (X - a number) in (R - DiaperPail):
	increase the semen-puddle of the location of most-recent-pail by X.

[!<UrinePuddleUp>+

REQUIRES COMMENTING

+!]
To UrinePuddleUp (X - a number):
	if X > 0, UrinePuddleUp X in the location of the player.

To UrinePuddleUp (X - a number) in (R - an object):
	do nothing.

To UrinePuddleUp (X - a number) in (R - a room):
	if R is a room and watersports mechanics is 1, increase the urine-puddle of R by X.

To UrinePuddleUp (X - a number) in (R - HoleInWall):
	increase the urine-puddle of the location of hole-in-wall by X.

To UrinePuddleUp (X - a number) in (R - DiaperPail):
	increase the urine-puddle of the location of most-recent-pail by X.

To MilkPuddleUp (X - a number):
	if X > 0, MilkPuddleUp X in the location of the player.

To MilkPuddleUp (X - a number) in (R - an object):
	do nothing.

To MilkPuddleUp (X - a number) in (R - a room):
	if R is a room and (lactation fetish is 1 or diaper quest is 1), increase the milk-puddle of R by X.

To MilkPuddleUp (X - a number) in (R - HoleInWall):
	increase the milk-puddle of the location of hole-in-wall by X.

To MilkPuddleUp (X - a number) in (R - DiaperPail):
	increase the milk-puddle of the location of most-recent-pail by X.

A time based rule (this is the puddles disappearing rule):
	repeat with H running through placed haunted rooms:
		if the slime-puddle of H > 0, decrease the slime-puddle of H by 1;
	repeat with R running through placed jungle rooms:
		if R is smoky:
			decrease the smoke of wild gladiator by 1;
			if the smoke of wild gladiator < 0, now R is not smoky;
		if the semen-puddle of R > 0:
			decrease the semen-puddle of R by 1;
			if R is Woods30, ChargeUp giant-statue by 7;
			ChargeUp giant-statue by 2;
		if the urine-puddle of R > 0:
			decrease the urine-puddle of R by 1;
			if R is Woods30, ChargeUp giant-statue by 3;
			ChargeUp giant-statue by 2;
		if the milk-puddle of R > 0:
			decrease the milk-puddle of R by 1;
			if R is Woods30, ChargeUp giant-statue by 5;
			ChargeUp giant-statue by 2.

[!<TheStickyDecayRule>+

REQUIRES COMMENTING

+!]
A time based rule (this is the sticky decay rule):
	let WasGlued be 0;
	if the stickiness of the player > 0:
		if the player is glue stuck:
			[They're supposed to pull free. But let's be kind and say the glue does eventually weaken for some reason. Just much slower than ghost jizz. Maybe allow them to pee on it to weaken it faster?]
			now WasGlued is 1;
			[###Selkie: Aika set this to 1, not 5; and may be right. But I want to try instead having a slower decay of stickiness for rounds in which nothing happens, so they get more fetishy rounds of struggling and squirming trying to get free. The stickiness now reduces more readily each round that something happens. And if a monster encounters them, the stickiness also reduces by 1, then.]
			if a random number between 1 and [1]5 is 1:
				decrease the stickiness of the player by 1;
		otherwise:
			decrease the stickiness of the player by 1;
		if the stickiness of the player is 0:
			if WasGlued is 1:
				say "You[one of] can hardly believe it: you[or][stopping]r continued pulling - or maybe sheer age - has weakened the glue so it's no longer holding you to the floor!";
				now a random glue in the location of the player is not grabbing the player;
				[I don't destroy the glue because only the stickiness of the parts in contact with the player have faded.]
			otherwise:
				say "Enough of the [if bukkake fetish is 1]slime dries for you to finally move by yourself again[otherwise]magic dissipates for you to move again[end if].".

Figure of puddle 1 is the file "Env/MultiFloor/puddle1.png".
Figure of puddle 2 is the file "Env/MultiFloor/puddle2.png".
Figure of puddle 3 is the file "Env/MultiFloor/puddle3.png".
Figure of puddle 4 is the file "Env/MultiFloor/puddle4.png".
Figure of puddle 5 is the file "Env/MultiFloor/puddle5.png".

[!<SayPuddleDesc>+

REQUIRES COMMENTING

+!]
To say PuddleDesc:
	repeat with S running through revealed sprinkle traps in the location of the player:
		if S is expired, say "Inactive sprinklers hangs from the ceiling. There is a fine layer of [SprinkleLiquid of S] on the floor here. ";
		otherwise say "Sprinklers in the ceiling are covering everything with a fine layer of [SprinkleLiquid of S]. ";
	if the semen-puddle of the location of the player > 0:
		if the semen-puddle of the location of the player <= 20, say "There is a [if the semen-puddle of the location of the player > 12]very large puddle[otherwise if the semen-puddle of the location of the player > 7]large puddle[otherwise if the semen-puddle of the location of the player > 3]puddle[otherwise]small puddle[end if] of [semen] in the middle of this room. ";
		otherwise say "[if the semen-puddle of the location of the player < 30]Most of the floor of this room is covered in [semen].[otherwise if the semen-puddle of the location of the player < 45]No corner of this room has been spared from the huge amounts of [semen] that has been expelled in this room.[otherwise if the semen-puddle of the location of the player < 70]The entire floor of this room is coated by a layer of [semen] that is about a centimetre deep.[otherwise]The entire floor of this room is coated by a layer of [semen] that is about half an inch deep.[end if]";
	if the urine-puddle of the location of the player > 0 and the semen-puddle of the location of the player <= 20: [We only talk about the urine if there's only puddles of semen.]
		if the urine-puddle of the location of the player <= 20, say "There is a [if the urine-puddle of the location of the player > 12]very large puddle[otherwise if the urine-puddle of the location of the player > 7]large puddle[otherwise if the urine-puddle of the location of the player > 3]puddle[otherwise]small puddle[end if] of [urine] in the middle of this room. ";
		otherwise say "[if the urine-puddle of the location of the player < 30]Most of the floor of this room is covered in [urine].[otherwise if the urine-puddle of the location of the player < 45]No corner of this room has been spared from the huge amounts of [urine] that has been expelled in this room.[otherwise if the urine-puddle of the location of the player < 70]The entire floor of this room is coated by a layer of [urine] that is about a centimetre deep.[otherwise]The entire floor of this room is coated by a layer of [urine] that is about half an inch deep.[end if]";
	if the milk-puddle of the location of the player > 0 and the semen-puddle of the location of the player <= 20 and the urine-puddle of the location of the player <= 20: [We only talk about the milk if there's only puddles of semen and urine.]
		if the milk-puddle of the location of the player <= 20, say "There is a [if the milk-puddle of the location of the player > 12]very large puddle[otherwise if the milk-puddle of the location of the player > 7]large puddle[otherwise if the milk-puddle of the location of the player > 3]puddle[otherwise]small puddle[end if] of [milk] in the middle of this room. ";
		otherwise say "[if the milk-puddle of the location of the player < 30]Most of the floor of this room is covered in [milk].[otherwise if the milk-puddle of the location of the player < 45]No corner of this room has been spared from the huge amounts of [milk] that has been expelled in this room.[otherwise if the milk-puddle of the location of the player < 70]The entire floor of this room is coated by a layer of [milk] that is about a centimetre deep.[otherwise]The entire floor of this room is coated by a layer of [milk] that is about half an inch deep.[end if]";
	if [playerRegion is Mansion and ]the slime-puddle of the location of the player > 0:
		if the slime-puddle of the location of the player < 6:
			say "[if bukkake fetish is 1]There is a steadily drying film of green slime on every surface in this room.[otherwise]Every surface in this room is glowing with ghostly magic.[end if]";
		otherwise:
			say "Every surface in this room is coated in a thick film of glowing green slime.".

puddle-object is focus-thing. The text-shortcut of a puddle-object is "puddle".

To decide which figure-name is the examine-image of (T - puddle-object):
	let N be the semen-puddle of the location of the player + the urine-puddle of the location of the player + the milk-puddle of the location of the player + the slime-puddle of the location of the player;
	if N > 35, decide on figure of puddle 5;
	if N > 20, decide on figure of puddle 4;
	if N > 10, decide on figure of puddle 3;
	if N > 5, decide on figure of puddle 2;
	decide on figure of puddle 1.

To BackgroundRender (T - puddle-object) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let N be the TQColour of white;
	if the urine-puddle of the location of the player > 0:
		if the semen-puddle of the location of the player > 0, now N is the TQColour of murky;
		otherwise now N is the TQColour of golden;
	otherwise if the semen-puddle of the location of the player > 0:
		now N is the TQColour of creamy;
	otherwise if the slime-puddle of the location of the player > 0:
		now N is the TQColour of lime;
	draw a rectangle N in the current focus window at X1 by Y1 with size DX by DY.

This is the puddles get focused rule:
	if the semen-puddle of the location of the player + the urine-puddle of the location of the player + the milk-puddle of the location of the player + the slime-puddle of the location of the player > 0:
		focus-consider puddle-object.
The puddles get focused rule is listed in the focus finding rules.

To construct normal buttons for (T - puddle-object):
	let P be a random worn pink spraybottle;
	if ButtonTableFull is 0 and P is a thing:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is examine-image of P;
		now the ButtonCommand entry is "clean puddle with [text-shortcut of P]";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is upright, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player needs to stand]
	if diaper quest is 0 and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of DrinkButton;
		now the ButtonCommand entry is "clean puddle with mouth";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is upright, now the ButtonColour entry is lightModeFullYellow. [turn yellow - player needs to kneel]


Puddles ends here.

