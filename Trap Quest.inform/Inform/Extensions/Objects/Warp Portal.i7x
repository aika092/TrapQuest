Warp Portal by Objects begins here.

A warp portal is a kind of thing. A warp portal is not portable. The printed name of warp portal is "[TQlink of item described]warp portal[TQxlink of item described][verb-desc of item described]". The text-shortcut of warp portal is "wpo". Understand "lever" as a warp portal.
A warp portal has a region called destination. The destination of a warp portal is the dungeon.
A warp portal can be next-portal-forbidden. [The player can't use this portal until they use a different one.]
The printed name of a warp portal is "[TQlink of item described]warp portal to the [destination of item described][TQxlink of item described][verb-desc of item described]".

hotel portal is a warp portal. hotel portal is in Hotel40.
dungeon portal is a warp portal. dungeon portal is in Dungeon10.
mansion portal is a warp portal. mansion portal is in Mansion32.
school portal is a warp portal. school portal is in School01.

Figure of flexible warp portal is the file "Env/MultiFloor/portal1.png".
Figure of warp portal is the file "Env/MultiFloor/portal2.png".

To decide which figure-name is the examine-image of (C - a warp portal):
	decide on figure of flexible warp portal.

To decide which direction is the covered-direction of (C - a warp portal):
	decide on north.

To say ExamineDesc of (C - a warp portal):
	say "This giant swirling green portal in the [covered-direction of C] wall will teleport you to another part of the world. There's a lever next to the portal, which might allow you to change the destination. [DestinationDesc of C]".

Definition: a warp portal is immune to change: decide yes.

Check entering a warp portal:
	try going the covered-direction of the noun instead.

Check pulling a warp portal:
	try turning the noun instead.

Check turning a warp portal:
	if the noun is next-portal-forbidden, say "This portal seems to currently be on the fritz - it's glitching wildly! You can't do anything meaningful to it in this state... you'll have to find your way out by foot." instead;
	allocate 2 seconds;
	if Hotel01 is not placed and Mansion01 is not placed and (the noun is not in the school or (the player is not an october 2019 top donator and the player is not an october 2019 diaper donator) or the number of appropriate predicaments is 0), say "Nothing happens. Perhaps this lever won't work until you've explored more of the world on your own first..." instead;
	rotate the noun attempt 1;
	say "You hear a mechanism whirring, and the portal shimmers. [DestinationDesc of the noun]";
	[increase the chance of a team predicament by sending a student down if available from the hallway]
	if the destination of the noun is school and the noun is in the school and the number of students in School01 is 0 and there is a student in School02:
		let ST be a random student in School02;
		try ST going south;
		now ST is moved; [won't move again this turn]
	do nothing instead.

To rotate (W - a warp portal) attempt (N - a number):
	if the destination of W is the Dungeon:
		now the destination of W is the hotel;
		if N is 1, now N is 2;
	if the destination of W is the Hotel and (N is 1 or the location of hotel portal is not discovered or W is in the hotel):
		if debugmode > 1, say "location of hotel portal is [location of hotel portal]. It is [unless the location of hotel portal is discovered]not [end if]discovered.";
		now the destination of W is the mansion;
		if N is 1, now N is 2;
	if the destination of W is the Mansion and (N is 1 or the location of mansion portal is not discovered or W is in the mansion):
		now the destination of W is the school;
		if N is 1, now N is 2;
	if the destination of W is the school and (N is 0 or (W is in the school and ((the player is not an october 2019 top donator and the player is not an october 2019 diaper donator) or the number of appropriate eligible predicaments is 0 or predicamentJustDone is true)) or (armband is not worn and ex-princess is not unconcerned)):
		now the destination of W is the dungeon;
		if W is in the Dungeon and N < 3, rotate W attempt (N + 1).

To say DestinationDesc of (T - a warp portal):
	if T is regionally in school and the destination of T is school:
		say "The warp portal will now take you to[one of]... the 'Extra Credit' zone? What's that?![or] the 'extra credit' zone.[stopping]";
	otherwise if T is next-portal-forbidden:
		say "The warp portal won't currently be able to take you anywhere - it's glitching wildly!";
	otherwise if T is not regionally in the destination of T:
		say "The warp portal will currently take you to the [destination of T].".

To say unique-verb-desc of (T - a warp portal):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link] [link][bracket]switch[close bracket][as]pull lever[end link]".

The can't go that way rule is not listed in the check going rulebook.

Check an actor going (this is the can't go that way except for warp portals rule):
	if the room gone to is nothing or the room gone to is Solid Rock:
		if the noun is down, try foodlisting instead;
		if the door gone through is nothing:
			let WP be a random warp portal in the location of the player;
			if WP is warp portal and the covered-direction of WP is the noun and (WP is not regionally in the destination of WP or the destination of WP is school):
				if WP is next-portal-forbidden:
					if the actor is the player:
						say "This portal seems to currently be on the fritz - it's glitching wildly! [We] [can't go] that way.";
					stop the action;
				otherwise if the class of the player is trick-or-treater:
					if the actor is the player:
						say "Your [random worn headgear] is somehow preventing [us] from leaving while [we][']re a [']trick or treater[']!";
					stop the action;
			otherwise:
				if the actor is the player:
					say "[We] [can't go] that way." (A);
				stop the action;
		otherwise:
			if the actor is the player:
				say "[We] [can't], since [the door gone through] [lead] nowhere." (B);
			stop the action.

To decide which direction is the covered-direction of (C - school portal):
	decide on south.

predicamentJustDone is initially false. [We only want one 'extra credit' predicament between each lesson.]

To teleport via (W - a warp portal):
	let D be nothing;
	now team-predicament-partner is nothing;
	let NPF be 0;
	if W is in the school:
		if the destination of W is not school:
			if predicamentJustDone is false and receptionist is in the location of the player:
				let M be receptionist;
				repeat with ST running through alive unfriendly students: [find a really angry student]
					if a random number between the favour of M and 10 < 9, now M is ST;
				if M is student:
					now team-predicament-partner is M;
					if there is an eligible appropriate predicament:
						now M is in the location of the player;
						say "[bold type]Just as you begin to step into the warp portal, [NameDesc of M] [bold type]appears and yanks on the lever! [roman type][big he of M] grins a mischievous, vindictive grin and waves goodbye as the destination changes to the 'extra credit zone'!";
						satisfy M;
						now the destination of W is school;
		if the destination of W is dungeon:
			if armband is not sapphire and armband is not emerald and armband is worn:
				if Hotel40 is not discovered:
					if Woods01 is unplaced:
						Set Up The Woods;
						follow the setting up woods monsters rules;
						repeat with M running through alive nonsetup monsters:
							set up M;
					if Hotel01 is unplaced:
						Set Up The Hotel;
						follow the setting up hotel monsters rules;
						repeat with M running through alive nonsetup monsters:
							set up M;
					now the destination of W is hotel;
					say "[bold type]The warp portal appears to shudder and glitch as you step into it. It's sending you to somewhere you didn't ask to go! Uh-oh...[roman type][line break]";
					now NPF is 1;
				otherwise if armband is not ruby and Mansion32 is not discovered:
					if Woods01 is unplaced:
						Set Up The Woods;
						follow the setting up woods monsters rules;
						repeat with M running through alive nonsetup monsters:
							set up M;
					if Mansion01 is unplaced:
						Set Up The Mansion;
						follow the setting up mansion monsters rules;
						repeat with M running through alive nonsetup monsters:
							set up M;
					now the destination of W is mansion;
					say "[bold type]The warp portal appears to shudder and glitch as you step into it. It's sending you to somewhere you didn't ask to go! Uh-oh...[roman type][line break]";
					now NPF is 1;
	repeat with P running through warp portals:
		now P is not next-portal-forbidden;
		if P is regionally in the destination of W, now D is P;
	if D is warp portal, now the destination of D is playerRegion; [The portal you just went through will send you right back to where you were unless you pull the lever]
	if W is D: [School portal leads to extra credit zone]
		now the destination of W is the Dungeon;
		display entire map;
		let L be the list of eligible appropriate predicaments;
		say "As you go through the portal, you feel your clothing stolen away by some invisible forces![one of][line break][variable custom style]This isn't like before?![roman type][line break][or][stopping][if debugmode > 0][line break]List of appropriate predicaments: [L][line break][end if]";
		repeat with C running through held things:
			if C is worn clothing:
				if C is removable and C is not headgear and C is not combat visor and C is not armband:
					dislodge C;
					now C is in Predicament20;
			otherwise if C is not worn:
				now C is in Predicament20;
		now the semen coating of face is 0;
		now the semen coating of hair is 0;
		now the urine coating of hair is 0;
		now the semen coating of breasts is 0;
		now the semen coating of belly is 0;
		now the semen coating of thighs is 0;
		display inventory-focus stuff; [can't force immediate inventory-focus redraw because the empty list would actually be correct and then it wouldn't redraw]
		sort L in random order;
		let P be entry 1 in L;
		if debugmode > 0, say "selected [P].";
		if team-predicament-partner is not student and receptionist is in the location of the player:
			let ST be a random student in the location of the player;
			if ST is student:
				now team-predicament-partner is ST;
				if there is an eligible appropriate team-predicament and a random number between 1 and 4 > 1:
					now P is a random eligible appropriate team-predicament;
					if debugmode > 0, say "After reconsidering joint predicament options and seeing [ST] in the reception area, selected [P].";
		otherwise if team-predicament-partner is student:
			if there is an eligible appropriate team-predicament and a random number between 1 and 3 > 1, now P is a random eligible appropriate team-predicament;
			if debugmode > 0, say "After reconsidering joint predicament options, selected [P].";
		if P is team-predicament:
			say "[paragraph break]Behind [NameDesc of team-predicament-partner], [NameDesc of receptionist] casually struts up and then plants a foot on [NameDesc of team-predicament-partner][']s back![line break][speech style of team-predicament-partner]'What?! No wait-!'[roman type][line break][BigNameDesc of receptionist] kicks forward, and [NameDesc of team-predicament-partner] is pushed into the warp portal alongside you! You're both going in at the same time!";
			now team-predicament-partner is interested;
			update appearance level;
			now the latest-appearance of team-predicament-partner is the appearance of the player;
			if diaper quest is 1, now the latest-cringe of team-predicament-partner is the cringe appearance of the player;
		let TP be a random off-stage fetish appropriate trophy;
		if TP is trophy, now TP is in Predicament20;
		now current-predicament is P;
		execute P;
		increase the times-completed of P by 1;
		now temporaryYesNoBackground is Figure of small image;
		now predicamentJustDone is true;
	otherwise if D is school portal:
		compute background student promotions;
		if receptionist is alive and receptionist is not in School01, now receptionist is in School01;
		if armband is worn and armband is not solid gold and there is an alive undefeated correctly-ranked teacher and the armband-print of armband is not "new recruit":
			let A be a random appropriate assembly;
			if A is assembly:
				set up A;
			otherwise:
				say "As you go through the portal, you appear back in the School again, just in front of the classroom. After you've gone through, the portal closes behind you. There's a classroom right in front of you. A schoolbell rings - it's time for class right now!";
				if armband is sapphire:
					now the player is in School07;
				otherwise if armband is emerald:
					now the player is in School03;
				otherwise if armband is ruby:
					now the player is in School26;
				otherwise if armband is pink diamond:
					now the player is in School25;
				otherwise:
					now the player is in School24;
			update player region;
			display entire map;
		otherwise:
			now the player is in School01;
			update player region;
			display entire map;
			say "As you go through the portal, you find yourself [one of]in a large room with expensive marble walls and floor[or]back in the school reception[stopping].";
	otherwise if D is warp portal:
		now predicamentJustDone is false;
		now the player is in the location of D;
		if NPF is 1, now D is next-portal-forbidden;
		update player region;
		now the location of the player is discovered;
		display entire map;
		say "As you go through the portal, you appear in the [location of the player][one of]! There is an identical green portal in this room too, to allow you to go back and forth![or]![stopping]".


Warp Portal ends here.
