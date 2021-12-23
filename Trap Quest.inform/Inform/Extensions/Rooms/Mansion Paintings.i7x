Mansion Paintings by Rooms begins here.

A painting is a kind of thing. A painting is not portable. The printed name of a painting is "[TQlink of item described][MediumDesc of item described][TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "painting" as painting.

A painting can be rippling.

To say ShortDesc of (P - a painting):
	say "painting".

To say ExamineDesc of (P - a painting):
	say "[UniqueExamineDesc of P][if P is rippling]It is rippling... is it a painting, or is it a portal?! You might be able to [bold type]enter[roman type] it.[end if]".

To say UniqueExamineDesc of (P - a painting):
	say "".

Check entering a painting:
	if the noun is not rippling, say "That's just a normal painting. How would you do that?" instead;
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the player is in danger, say "You need to deal with the [random dangerous monster in the location of the player] first!" instead;
	if the player is clothing stuck, say "You can't because your [a random worn stuck clothing] is stuck in place!" instead;
	allocate 5 seconds;
	let LM be the list of monsters in the location of the player;
	compute painting entrance of the noun;
	now the noun is not rippling;
	repeat with M running through LM:
		deinterest M;
		compute mandatory room leaving of M;
	do nothing instead.

To compute painting entrance of (P - a painting):
	say "BUG - nothing coded for this painting.".

A painting-room is a kind of room. A painting-room has a labyrinth shape called shape. The grid position of a painting-room is usually <0,0,0>. A painting-room is usually discovered.

Check going north:
	let P be a random painting in the location of the player;
	if P is painting:
		say "Step into [NameDesc of P]?";
		if the player is consenting, try entering P instead.

Report going south:
	let P be a random painting in the location of the player;
	if P is painting:
		repeat with R running through painting-rooms:
			repeat with T running through things in R:
				if T is bowsette:
					try bowsette going south;
					now bowsette is moved;
				otherwise:
					only destroy T;
		if the number of on-stage rippling paintings is 0 and bowsette is off-stage and bowsette is not permanently banished:
			now bowsette-painting is rippling;
		update player region.


dress-painting is a painting. dress-painting is rippling. dress-painting can be spookified. The text-shortcut of dress-painting is "dptg".

Figure of dress painting is the file "Env/Mansion/painting1a.jpg".
Figure of dress painting rippling is the file "Env/Mansion/painting1b.jpg".
Figure of dress painting flying is the file "Env/Mansion/painting1c.png".

To decide which figure-name is the examine-image of (P - dress-painting):
	if P is rippling, decide on figure of dress painting rippling;
	decide on figure of dress painting.

To say MediumDesc of (P - dress-painting):
	say "dress painting".
To say UniqueExamineDesc of (P - dress-painting):
	say "A frilly pink latex dress with matching pink gloves apears to be reaching out towards you.".

To decide which number is the girth of (P - dress-painting):
	decide on 2.

A dress-painting-room is a kind of painting-room. The printed name of a dress-painting-room is "Dark Mansion Room".

DressPainting01 is a dress-painting-room. The grid position of DressPainting01 is <10,8,8>. The shape of DressPainting01 is L10/0-0-0-1-1-0.
DressPainting02 is a dress-painting-room. The grid position of DressPainting02 is <10,9,8>. The shape of DressPainting02 is L10/0-0-0-1-1-1.
DressPainting02 is east of DressPainting01.
DressPainting03 is a dress-painting-room. The grid position of DressPainting03 is <10,10,8>. The shape of DressPainting03 is L10/0-0-0-0-1-1.
DressPainting03 is east of DressPainting02.
DressPainting04 is a dress-painting-room. The grid position of DressPainting04 is <10,8,7>. The shape of DressPainting04 is L10/0-0-1-1-1-0.
DressPainting04 is south of DressPainting01.
[DressPainting05 is a dress-painting-room. The grid position of DressPainting05 is <10,9,7>.  The shape of DressPainting05 is L10/0-0-1-1-1-1.
DressPainting05 is east of DressPainting04. DressPainting05 is south of DressPainting02.]
DressPainting06 is a dress-painting-room. The grid position of DressPainting06 is <10,10,7>. The shape of DressPainting06 is L10/0-0-1-0-0-1.
[DressPainting06 is east of DressPainting05.] DressPainting06 is south of DressPainting03.
DressPainting07 is a dress-painting-room. The grid position of DressPainting07 is <10,8,6>. The shape of DressPainting07 is L10/0-0-1-1-0-0.
DressPainting07 is south of DressPainting04.
DressPainting08 is a dress-painting-room. The grid position of DressPainting08 is <10,9,6>. The shape of DressPainting08 is L10/0-0-1-1-0-1.
DressPainting08 is east of DressPainting07. [DressPainting08 is south of DressPainting05.]
DressPainting09 is a dress-painting-room. The grid position of DressPainting09 is <10,10,6>. The shape of DressPainting09 is L10/0-0-1-0-0-1.
DressPainting09 is east of DressPainting08. DressPainting09 is south of DressPainting06.

To decide which number is the obstacle-hindrance of (R - a dress-painting-room):
	decide on 2.
To decide which text is ObstacledDesc of (R - a dress-painting-room):
	decide on "It's so dark and dingy that it takes a little longer than normal to navigate your way through the doorway.".

To compute painting entrance of (P - dress-painting):
	now playerRegion is school; [any time based events that don't happen in the school should also not happen here]
	change the south exit of DressPainting08 to the location of P;
	let R be a random number between 1 and 9;
	repeat with DPR running through dress-painting-rooms:
		decrease R by 1;
		if R is 0:
			blandify and reveal pink-and-blue translucent fetish dress;
			now pink-and-blue translucent fetish dress is in DPR;
			now pink-and-blue translucent fetish dress is cursed;
			now pink-and-blue translucent fetish dress is strength-influencing;
		otherwise:
			let J be a random off-stage ring;
			if J is a ring:
				now J is sapphire;
				set shortcut of J;
				now J is in DPR;
	say "You step through the painting, and find yourself in a different, secret part of the mansion. You can return through the painting frame to the south, but you get the feeling that once you leave this area, you won't be able to return.";
	now the player is in DressPainting08.

An all time based rule (this is the dress painting rule):
	if the player is in a dress-painting-room:
		if pink-and-blue translucent fetish dress is in the location of the player and pink-and-blue translucent fetish dress is not worn:
			now dress-painting is spookified; [this is how we flag that the dress is chasing the player]
			say "[bold type][BigNameDesc of pink-and-blue translucent fetish dress] [bold type]soars towards you[one of], taking on a life on its own.[or]![stopping][roman type][line break]";
			let D be a random number between 1 and the dexterity of the player;
			if the player is prone, now D is a random number between 1 and the square root of the dexterity of the player;
			let R be a random number between 1 and 20;
			if debuginfo > 0, say "[input-style]Dress evasion check: Dexterity roll (d[dexterity of the player]) = [D] | [R].5 = (d20 + 0.5) Dress agility[roman type][line break]";
			if D > R:
				say "You manage to dodge it this time, and it flies by without touching you!";
			otherwise:
				let clothing-removed be false;
				repeat with C running through worn clothing:
					if clothing-removed is false and C is removable and (C is breast covering or C is belly covering or C is skirted or C is dress or C is unskirted themed or (C is crotch covering and C is uncovered themed)):
						say "One of the gloves touches your [C]!";
						WardrobeVanish C;
						now clothing-removed is true;
				if clothing-removed is false:
					if pink-and-blue translucent fetish dress is not actually summonable, now pink-and-blue translucent fetish dress is non-combat;
					if pink-and-blue translucent fetish dress is actually summonable:
						say "It jumps up onto you - you're now wearing it! A chill goes down your spine, and somehow you know you're not alone in this cursed dress!";
						summon pink-and-blue translucent fetish dress cursed;
						gluify pink-and-blue translucent fetish dress;
						now pink-and-blue translucent fetish dress is possession;
						if doom-quest is appropriate, now the quest of pink-and-blue translucent fetish dress is doom-quest;
						otherwise compute quest of pink-and-blue translucent fetish dress;
						say QuestFlav of pink-and-blue translucent fetish dress;
					otherwise:
						let F be asshole;
						if the player is possessing a vagina, now F is vagina;
						if the player is possessing a penis, now F is penis;
						say "One of the gloves touches your [variable F]! An invisible [if F is penis]fist wraps around your shaft, and gives several quick tugs[otherwise]pair of fingers slip inside, and give you several quick finger-fucks[end if].";
						stimulate F from dress-painting;
		if dress-painting is spookified and pink-and-blue translucent fetish dress is not worn and pink-and-blue translucent fetish dress is not in the location of the player:
			say "[BigNameDesc of pink-and-blue translucent fetish dress] is chasing you. It's right behind you!";
			now pink-and-blue translucent fetish dress is in the location of the player.


toilet-painting is a painting. toilet-painting is rippling. The text-shortcut of toilet-painting is "tptg".

Figure of toilet painting is the file "Env/Mansion/painting3a.jpg".
Figure of toilet painting rippling is the file "Env/Mansion/painting3b.jpg".
Figure of toilet painting monster is the file "Env/Mansion/painting3c.jpg".

To decide which figure-name is the examine-image of (P - toilet-painting):
	if P is rippling, decide on figure of toilet painting rippling;
	decide on figure of toilet painting.

To say MediumDesc of (P - toilet-painting):
	say "toilet painting".
To say UniqueExamineDesc of (P - toilet-painting):
	say "A monster that looks like a toilet with big scary teeth.".

A toilet-painting-room is a kind of painting-room. The printed name of a toilet-painting-room is "Dark Mansion Room". A toilet-painting-room can be toilet-painting-room-exit.

ToiletPainting01 is a toilet-painting-room. The grid position of ToiletPainting01 is <12,8,8>. The shape of ToiletPainting01 is L12/0-0-0-1-1-0.
ToiletPainting02 is a toilet-painting-room. The grid position of ToiletPainting02 is <12,9,8>. The shape of ToiletPainting02 is L12/0-0-0-1-1-1.
ToiletPainting02 is east of ToiletPainting01.
ToiletPainting03 is a toilet-painting-room. The grid position of ToiletPainting03 is <12,10,8>. The shape of ToiletPainting03 is L12/0-0-0-0-1-1.
ToiletPainting03 is east of ToiletPainting02.
ToiletPainting04 is a toilet-painting-room. The grid position of ToiletPainting04 is <12,8,7>. The shape of ToiletPainting04 is L12/0-0-1-1-1-0.
ToiletPainting04 is south of ToiletPainting01.
ToiletPainting05 is a toilet-painting-room. The grid position of ToiletPainting05 is <12,9,7>.  The shape of ToiletPainting05 is L12/0-0-1-1-1-1.
ToiletPainting05 is east of ToiletPainting04. ToiletPainting05 is south of ToiletPainting02.
ToiletPainting06 is a toilet-painting-room. The grid position of ToiletPainting06 is <12,10,7>. The shape of ToiletPainting06 is L12/0-0-1-0-0-1.
ToiletPainting06 is east of ToiletPainting05. ToiletPainting06 is south of ToiletPainting03.
ToiletPainting07 is a toilet-painting-room. The grid position of ToiletPainting07 is <12,8,6>. The shape of ToiletPainting07 is L12/0-0-1-1-0-0.
ToiletPainting07 is south of ToiletPainting04.
ToiletPainting08 is a toilet-painting-room. The grid position of ToiletPainting08 is <12,9,6>. The shape of ToiletPainting08 is L12/0-0-1-1-0-1.
ToiletPainting08 is east of ToiletPainting07. ToiletPainting08 is south of ToiletPainting05.
ToiletPainting09 is a toilet-painting-room. The grid position of ToiletPainting09 is <12,10,6>. The shape of ToiletPainting09 is L12/0-0-1-0-0-1.
ToiletPainting09 is east of ToiletPainting08. ToiletPainting09 is south of ToiletPainting06.

toilet-monster is a person. toilet-monster is neuter. toilet-monster is not portable. The printed name of toilet-monster is "[TQlink of item described]toilet monster[TQxlink of item described][verb-desc of item described]". The text-shortcut of toilet-monster is "tltm". toilet-monster has a number called times-terrorized. Understand "toilet", "monster" as toilet-monster.

To decide which figure-name is the examine-image of (C - toilet-monster):
	decide on figure of toilet painting monster.

To say ExamineDesc of (C - toilet-monster):
	say "A giant toilet with teeth and a tongue. It's clearly alive, and sentient. Luckily, it doesn't seem to be able to move.".
To say ShortDesc of (C - toilet-monster):
	say "toilet monster".
To say MediumDesc of (C - toilet-monster):
	say "toilet monster".

To set map coordinates for (P - toilet-monster) in (R - a room):
	set centre map coordinates for P.

An all time based rule (this is the toilet monster rule):
	if the player is in a toilet-painting-room and toilet-monster is in the location of the player:
		say "[first custom style]'[one of]BOO[or]I'M GONNA GOBBLE YOU UP IF YOU GET TOO CLOSE[or]COME CLOSER, LITTLE MORSEL[or]ME AGAIN[stopping]! HAHAHAHAHA.'[roman type][line break][one of][BigNameDesc of toilet-monster][']s scary, booming voice sends shivers down your spine.[or][stopping]";
		say "[one of]How scary[or]Terrifying[or]Too spooky for you[then at random]! ";
		let T be "Your fright makes it more difficult to hold on, and";
		check sudden spit and expulsion with reason T;
		DelicateUp 1;
		increase the times-terrorized of toilet-monster by 1;
		if the times-terrorized of toilet-monster is 2 and diaper lover > 0, say "[bold type]This horrific encounter is leaving a lasting impression on your psyche. From now on, you won't be able to bring yourself to use a toilet unless there's someone friendly there with you.[roman type][line break]";
		if the times-terrorized of toilet-monster > 2:
			let TPR be a random toilet-painting-room-exit toilet-painting-room;
			if the player is not in TPR:
				say "[bold type]You are teleported to the room where you can see the real exit to the south.[roman type][line break]";
				teleport to TPR;
			if diaper quest is 0 and meat-toilet-panties is not worn and meat-toilet-panties is class summonable:
				class summon meat-toilet-panties.


To compute painting entrance of (P - toilet-painting):
	now playerRegion is school; [any time based events that don't happen in the school should also not happen here]
	let R be a random number between 1 and 9;
	repeat with TPR running through toilet-painting-rooms:
		decrease R by 1;
		if R is 0:
			now toilet-monster is in TPR;
		otherwise:
			let J be a random off-stage plentiful accessory;
			if J is a thing:
				if R < -4:
					now J is ruby;
				otherwise if R <= 0:
					now J is emerald;
				otherwise:
					now J is sapphire;
				set shortcut of J;
				now J is in TPR;
	let PRNG be a random number between 8 and 10;
	repeat with TPR running through toilet-painting-rooms:
		now TPR is seen;
		let E be the easting part of the grid position of TPR;
		let N be the northing part of the grid position of TPR;
		if debugmode > 1, say "grid position [grid position of TPR]; E [E]; N [N].";
		if E is 8: [west side]
			let L be a random toilet-painting-room;
			change the west exit of TPR to L;
			if debugmode > 1, say "west exit now leads to [grid position of L].";
		if E is 10: [east side]
			let L be a random toilet-painting-room;
			change the east exit of TPR to L;
			if debugmode > 1, say "east exit now leads to [grid position of L].";
		if N is 8: [north side]
			let L be a random toilet-painting-room;
			change the north exit of TPR to L;
			if debugmode > 1, say "north exit now leads to [grid position of L].";
		if N is 6: [south side]
			let L be a random toilet-painting-room;
			if E is PRNG:
				change the south exit of TPR to the location of P;
				now TPR is toilet-painting-room-exit;
			otherwise:
				change the south exit of TPR to the location of toilet-monster;
			if debugmode > 1, say "south exit now leads to [grid position of L].";
	say "You step through the painting, and find yourself in a different, secret part of the mansion. The floor is all tiles, like a huge bathroom. It appears to stretch endlessly in all directions! You get the feeling that once you leave this area, you won't be able to return.";
	let LR be a list of rooms; [create a list of rooms that the monster is not in or nearby, and that doesn't have the exit]
	let L be the location of toilet-monster;
	repeat with TPR running through toilet-painting-rooms:
		if toilet-monster is not in TPR and TPR is not toilet-painting-room-exit:
			let monster-found be false;
			repeat with D running through the Nviables of TPR:
				if monster-found is false and the room D from the location of the player is L, now monster-found is true;
			if monster-found is false, add TPR to LR;
	let R be a random number between 1 and the number of entries in LR;
	now the player is in entry R in LR.


cock-painting is a painting. cock-painting is rippling. The text-shortcut of cock-painting is "cptg".

Definition: cock-painting is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Figure of cock painting is the file "Env/Mansion/painting4a.jpg".
Figure of cock painting rippling is the file "Env/Mansion/painting4b.jpg".
Figure of cock painting monster is the file "Env/Mansion/painting4c.jpg".

To decide which figure-name is the examine-image of (P - cock-painting):
	if P is rippling, decide on figure of cock painting rippling;
	decide on figure of cock painting.

To say MediumDesc of (P - cock-painting):
	say "cock painting".
To say UniqueExamineDesc of (P - cock-painting):
	say "A stony hallway inhabited by what looks like living, flying [manly-penis]s.".

A cock-painting-room is a kind of painting-room. The printed name of a cock-painting-room is "Dark Tunnel".

CockPainting01 is a cock-painting-room. The grid position of CockPainting01 is <13,8,8>. The shape of CockPainting01 is L13/0-0-1-0-0-0.
CockPainting02 is a cock-painting-room. The grid position of CockPainting02 is <13,8,9>. The shape of CockPainting02 is L13/0-0-1-0-1-0. CockPainting02 is north of CockPainting01.
CockPainting03 is a cock-painting-room. The grid position of CockPainting03 is <13,8,10>. The shape of CockPainting03 is L13/0-0-1-0-1-0. CockPainting03 is north of CockPainting02.
CockPainting04 is a cock-painting-room. The grid position of CockPainting04 is <13,8,11>. The shape of CockPainting04 is L13/0-0-1-0-1-0. CockPainting04 is north of CockPainting03.
CockPainting05 is a cock-painting-room. The grid position of CockPainting05 is <13,8,12>. The shape of CockPainting05 is L13/0-0-1-0-1-0. CockPainting05 is north of CockPainting04.
CockPainting06 is a cock-painting-room. The grid position of CockPainting06 is <13,8,13>. The shape of CockPainting06 is L13/0-0-0-0-1-0. CockPainting06 is north of CockPainting05.

A cock-monster is a kind of person. A cock-monster is not portable. A cock-monster has an object called the cock-monster-origin. A cock-monster is neuter. The printed name of a cock-monster is "[TQlink of item described][MediumDesc of item described][TQxlink of item described][verb-desc of item described]". Understand "cock", "monster" as cock-monster.

Definition: a cock-monster is reactive: decide no.

To decide which figure-name is the examine-image of (C - cock-monster):
	decide on figure of cock painting monster.

To say ExamineDesc of (C - cock-monster):
	say "A winged disembodied [manly-penis] that seems to have been magically brought to life from a dildo.".
To say ShortDesc of (C - cock-monster):
	say "cock monster".

winged-cock-monster is a cock-monster. Understand "winged" as winged-cock-monster. The text-shortcut of winged-cock-monster is "wckm".
To say MediumDesc of (C - winged-cock-monster):
	say "winged cock monster".
flying-cock-monster is a cock-monster. Understand "flying" as flying-cock-monster. The text-shortcut of flying-cock-monster is "fckm".
To say MediumDesc of (C - flying-cock-monster):
	say "flying cock monster".
bat-like-cock-monster is a cock-monster. Understand "bat-like" as bat-like-cock-monster. The text-shortcut of bat-like-cock-monster is "bckm".
To say MediumDesc of (C - bat-like-cock-monster):
	say "bat-like cock monster".
spooky-cock-monster is a cock-monster. Understand "spooky" as spooky-cock-monster. The text-shortcut of spooky-cock-monster is "sckm".
To say MediumDesc of (C - spooky-cock-monster):
	say "spooky cock monster".

An all time based rule (this is the cock monster rule):
	if the player is in a cock-painting-room:
		repeat with CM running through alive cock-monsters:
			if CM is in the location of the player:
				let R be a random number between 0 and (1 + bukkake fetish);
				if R <= 1 or (bukkake fetish is 0 and the semen coating of thighs >= 10):
					let F be a random orifice;
					if F is a fuckhole and F is actually occupied, now F is face;
					if F is face and face is actually occupied, now F is a random fuckhole;
					if F is vagina and the player is not possessing a vagina, now F is asshole;
					say "[BigNameDesc of CM] flies directly towards your [variable F]!";
					let D be a random number between 1 and the dexterity of the player;
					let R be a random number between 1 and 16;
					if debuginfo > 0, say "[input-style][MediumDesc of CM] evasion check: Dexterity roll (d[dexterity of the player]) = [D] | [R].5 = (d16 + 0.5) Cock monster agility[roman type][line break]";
					if D > R:
						say "You manage to bat it away, this time!";
					otherwise:
						let C be nothing;
						if F is vagina and there is top level protection clothing:
							let C be a random top level protection clothing;
						otherwise if F is asshole and there is top level ass protection clothing:
							let C be a random top level ass protection clothing;
						if C is clothing:
							say "[BigNameDesc of CM] bashes against the [clothing-material of C] material of your [ShortDesc of C], ";
							damage C;
							let RT be a random number between 1 and 10;
							if RT > the armour of C - the damage of C and C is rippable:
								say "creating a huge tear at the crotch!";
								now C is crotch-ripped;
							otherwise if RT > the armour of C - the damage of C and C is tearable:
								say "destroying it!";
								destroy C;
							otherwise:
								say "weakening it, and smearing it with [semen]!";
								AnnouncedSquirt semen on C by 1;
						otherwise if F is actually occupied:
							let FP be a random thing penetrating F;
							say "It bashes against [NameDesc of FP] inside your [variable F], sending intense sensations down its length!";
							ruin F;
						otherwise:
							say "It forces its way inside your [variable F], where it ";
							if F is face:
								now CM is penetrating face;
								if a random number between 0 and watersports fetish is 1:
									say "urinates!";
									FaceFill urine by 7;
									say "It pulls out[if the total volume of face > 0], leaving you with a [MouthfulDesc][end if].";
									dislodge CM;
								otherwise:
									say "ejaculates!";
									FaceFill semen by 3;
									[suggest swallowing;]
									if the player is getting unlucky:
										say "It turns into a sex toy again, and is now stuck in your mouth! [GotUnluckyFlav]";
										summon cock pacifier cursed with quest;
										destroy CM;
									otherwise:
										say "It pulls out[if the total volume of face > 0], leaving you with a [MouthfulDesc][end if].";
										dislodge CM;
							otherwise:
								if F is vagina:
									say "first ejaculates, and then transforms back into a [cock-monster-origin of CM]!";
									now CM is penetrating vagina;
									PussyFill 7;
									dislodge CM;
									summon cock-monster-origin of CM cursed vaginally with quest;
								otherwise:
									say "transforms back into a [cock-monster-origin of CM]!";
									summon cock-monster-origin of CM cursed with quest;
								now the size of cock-monster-origin of CM is 2;
								now cock-monster-origin of CM is expansion;
								destroy CM;
				otherwise if the player is prone and a random number between 0 and watersports fetish is 1:
					say "[BigNameDesc of CM] pisses all over you from above!";
					AnnouncedSquirt urine on hair by 3;
					AnnouncedSquirt urine on breasts by 4;
				otherwise:
					let F be thighs;
					if bukkake fetish is 1:
						let LF be {face, hair, breasts, belly, hips, thighs};
						let R be a random number between 1 and 6;
						now F is entry R in LF;
					if a random number between 1 and 5 is 1:
						say "[BigNameDesc of CM] gets overexcited and spurts out several ropes of [semen], all over your [variable F]!";
						AnnouncedSquirt semen on F by 7;
					otherwise:
						say "[BigNameDesc of CM] rubs its cockhead up against your [variable F], dribbling [semen] as it does.";
						AnnouncedSquirt semen on F by 1;
			otherwise:
				let R be the location of CM;
				let L be the location of the player;
				if a random number between 0 and the number of cock-monsters in L is 0:
					if the northing part of the grid position of R > the northing part of the grid position of L, try CM going south;
					otherwise try CM going north.

To compute painting entrance of (P - cock-painting):
	now playerRegion is school; [any time based events that don't happen in the school should also not happen here]
	let N be 0;
	repeat with CPR running through cock-painting-rooms:
		let J be a random off-stage plentiful accessory;
		if J is a thing:
			now J is pure diamond;
			if N is 0, now J is sapphire;
			if N is 1, now J is emerald;
			if N is 2, now J is ruby;
			if N is 3, now J is pink diamond;
			set shortcut of J;
			now J is in CPR;
		if N > 1:
			let D be a random off-stage plentiful fetish appropriate dong;
			if D is nothing, now D is a random plentiful fetish appropriate dong;
			unless D is worn:
				blandify and reveal D;
				now D is cursed;
				now D is in CPR;
		increase N by 1;
	say "You step through the painting, and find yourself in a different, secret part of the mansion. A dark stone hallway stretches forwards in front of you. You get the feeling that once you leave this area, you won't be able to return. [bold type]Your instinct tells you that as soon as you touch anything you find in here, something spooky is likely to happen.[roman type][line break]";
	change the south exit of CockPainting01 to the location of P;
	now the player is in CockPainting01.

To compute cock monster activation:
	repeat with R running through cock-painting-rooms:
		repeat with D running through dongs in R:
			if D is not held:
				let CM be a random off-stage cock-monster;
				if CM is a thing:
					now CM is in R;
					now the cock-monster-origin of CM is D;
					if the player is in R, say "Before your very eyes, [NameDesc of D] transforms into a winged and very real disembodied [manly-penis]! It takes flight, and heads right for you!";
					only destroy D;
	say "The sound of fluttering wings from further down the tunnel makes it clear that you are no longer alone in here!".

Check taking:
	if the noun is dong and the player is in a cock-painting-room:
		allocate 2 seconds;
		compute cock monster activation instead.

Report wearing:
	if the noun is plentiful accessory and the player is in a cock-painting-room, compute cock monster activation.



bowsette-painting is a painting. The text-shortcut of bowsette-painting is "bptg".

Figure of bowsette painting is the file "Env/Mansion/painting2a.jpg".
Figure of bowsette painting rippling is the file "Env/Mansion/painting2b.jpg".

To decide which figure-name is the examine-image of (P - bowsette-painting):
	if P is rippling, decide on figure of bowsette painting rippling;
	decide on figure of bowsette painting.

To say MediumDesc of (P - bowsette-painting):
	say "Bowsette painting".
To say UniqueExamineDesc of (P - bowsette-painting):
	say "A buxom horned, fanged [man of bowsette] is pictured. [big he of bowsette] has a wide grin on [his of bowsette] face.".

BowsettePainting01 is a painting-room. The grid position of BowsettePainting01 is <11,8,8>. The shape of BowsettePainting01 is L11/0-0-0-0-0-0.

To compute painting entrance of (P - bowsette-painting):
	now playerRegion is school; [any time based events that don't happen in the school should also not happen here]
	change the south exit of BowsettePainting01 to the location of P;
	repeat with N running from 1 to 2:
		let J be a random off-stage plentiful accessory;
		if J is a thing:
			if N is 1, now J is emerald;
			otherwise now J is ruby;
			set shortcut of J;
			now J is in BowsettePainting01;
	now the bowsette-origin of bowsette is bowsette;
	set up bowsette;
	now the temperament of bowsette is 1;
	now bowsette is in BowsettePainting01;
	say "You step through the painting, and find yourself in a different, secret part of the mansion. You can return through the painting frame to the south, but you get the feeling that once you leave this area, you won't be able to return.";
	now the player is in BowsettePainting01.


Mansion Paintings ends here.
