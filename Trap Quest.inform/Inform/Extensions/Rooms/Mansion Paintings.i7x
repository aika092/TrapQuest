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
	if the noun is dress-painting and there is a worn unremovable dress, say "You try, but when your [random worn unremovable dress] tries to cross the threshold, you are pushed away by an invisible force!" instead;
	if the noun is heist-painting:
		repeat with C running through worn usually unautoremovable clothing:
			unless C is headgear or C is nudism-enabling, say "You try, but when your [C] tries to cross the threshold, you are pushed away by your headgear! It's like it's saying that it would be a mistake to enter this region with clothing that you can't easily remove..." instead;
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
		compute painting completion of P;
		update player region.

To compute painting completion of (P - a painting):
	compute unique painting completion of P;
	repeat with R running through painting-rooms:
		repeat with T running through things in R:
			if T is bowsette:
				try bowsette going south;
				now bowsette is moved;
			otherwise:
				only destroy T;
	if the number of on-stage rippling paintings is 0 and bowsette is off-stage and bowsette is not permanently banished, now bowsette-painting is rippling.

To compute unique painting completion of (P - a painting):
	do nothing.



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
	say "A frilly pink latex dress with matching pink gloves appears to be reaching out towards you.".

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
[DressPainting05 is a dress-painting-room. The grid position of DressPainting05 is <10,9,7>. The shape of DressPainting05 is L10/0-0-1-1-1-1.
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
ToiletPainting05 is a toilet-painting-room. The grid position of ToiletPainting05 is <12,9,7>. The shape of ToiletPainting05 is L12/0-0-1-1-1-1.
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

To decide which figure-name is the NPC-icon of (P - toilet-monster):
	decide on Figure of Red NPC.

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
		FearUp 10;
		DelicateUp 1;
		increase the times-terrorized of toilet-monster by 1;
		if the times-terrorized of toilet-monster is 2 and diaper lover > 0:
			say "This horrific encounter is leaving a lasting impression on your psyche. [bold type]From now on, you won't be able to bring yourself to use a toilet unless there's someone friendly there with you.[roman type][line break]";
		otherwise:
			say "This horrific encounter is leaving a lasting impression on your psyche. You can tell that [bold type]from now on, you'll be more susceptible to losing hold of liquid in your mouth or butt, when you are surprised, or in pain.[roman type][line break]";
			increase the raw-expulsion-weakness of the player by 1;
		if the times-terrorized of toilet-monster > 2:
			let TPR be a random toilet-painting-room-exit toilet-painting-room;
			if the player is not in TPR:
				say "[bold type]You are teleported to the room where you can see the real exit to the south.[roman type][line break]";
				teleport to TPR;
			if diaper quest is 0 and meat-toilet-panties is not worn and meat-toilet-panties is class summonable:
				class summon meat-toilet-panties.


To compute painting entrance of (P - toilet-painting):
	now playerRegion is school; [any time based events that don't happen in the school should also not happen here]
	let R be a random number between 3 and 8;
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
	let dong-activated be false;
	repeat with R running through cock-painting-rooms:
		repeat with D running through dongs in R:
			if D is not held:
				let CM be a random off-stage cock-monster;
				if CM is a thing:
					now CM is in R;
					now the cock-monster-origin of CM is D;
					if the player is in R, say "Before your very eyes, [NameDesc of D] transforms into a winged and very real disembodied [manly-penis]! It takes flight, and heads right for you!";
					now dong-activated is true;
					only destroy D;
	if dong-activated is true, say "The sound of fluttering wings from further down the tunnel makes it clear that you are no longer alone in here!".

Check taking:
	if the player is in a cock-painting-room:
		if areYouSure is 1 and the noun is plentiful accessory and CockPainting03 is not discovered:
			say "You sense that it might make sense to explore deeper into the tunnel before touching anything. Are you sure you want to pick [NameDesc of the noun] up?";
			if the player is not consenting, say "You decide against picking it up, for now." instead;
		if the noun is dong:
			allocate 2 seconds;
			compute cock monster activation instead.

Report wearing:
	if the noun is plentiful accessory and the player is in a cock-painting-room, compute cock monster activation.



heist-painting is a painting. heist-painting can be heist-stolen. heist-painting can be key-stolen. The text-shortcut of heist-painting is "hptg".

Figure of heist painting is the file "Env/Mansion/painting6c.png".
Figure of heist painting stolen is the file "Env/Mansion/painting6b.png".
Figure of heist hypno is the file "Special/Cutscene/cutscene-heist-hypno1.jpg".

To decide which figure-name is the examine-image of (P - heist-painting):
	if P is heist-stolen, decide on figure of heist painting stolen;
	decide on figure of heist painting.

Definition: heist-painting is fetish appropriate: decide no. [it spawns by its own means]

To say MediumDesc of (P - heist-painting):
	say "pedestal painting".
To say UniqueExamineDesc of (P - heist-painting):
	say "A painting of a pedestal, that looks similar to the others in the room[unless P is heist-stolen]. A priceless jewel-encrusted tiara can be seen within the (painted) glass display case[end if].".

To compute unique painting completion of (P - heist-painting):
	progress quest of heist-quest.

A heist-painting-room is a kind of painting-room. The printed name of a heist-painting-room is "Museum Room".
The description of a heist-painting-room is "This looks and feels like a small room in a museum, complete with expensive-looking artworks on the walls and red rope protecting the exhibits.".
[A heist-painting-room is usually not discovered.]

To decide which number is the concealment of (R - a heist-painting-room):
	decide on 0.

HeistPainting01 is a heist-painting-room. The grid position of HeistPainting01 is <14,8,8>. The shape of HeistPainting01 is L14/0-0-0-1-1-0.
HeistPainting02 is a heist-painting-room. The grid position of HeistPainting02 is <14,9,8>. The printed name of HeistPainting02 is "Vault Entrance". The shape of HeistPainting02 is L14/0-0-0-1-1-1.
HeistPainting02 is east of HeistPainting01. HeistPainting02 can be vault-opened.
To decide which number is the concealment of (R - HeistPainting02):
	decide on 1.
HeistPainting03 is a heist-painting-room. The grid position of HeistPainting03 is <14,10,8>. The shape of HeistPainting03 is L14/0-0-0-0-1-1.
HeistPainting03 is east of HeistPainting02.
To decide which number is the concealment of (R - HeistPainting03):
	decide on 1.
HeistPainting04 is a heist-painting-room. The grid position of HeistPainting04 is <14,8,7>. The shape of HeistPainting04 is L14/0-0-1-1-1-0.
HeistPainting04 is south of HeistPainting01. HeistPainting04 has a number called scariness.
[HeistPainting05 is a heist-painting-room. The grid position of HeistPainting05 is <14,9,7>.  The shape of HeistPainting05 is L14/0-0-1-1-1-1.
HeistPainting05 is east of HeistPainting04. HeistPainting05 is south of HeistPainting02.]
HeistPainting06 is a heist-painting-room. The printed name of HeistPainting06 is "Cluttered Museum Room". The grid position of HeistPainting06 is <14,10,7>. The shape of HeistPainting06 is L14/0-0-1-0-0-1.
[HeistPainting06 is east of HeistPainting05.] HeistPainting06 is south of HeistPainting03.
The description of a HeistPainting06 is "This looks and feels like a small room in a museum, complete with expensive-looking artworks on the walls and red rope protecting the exhibits. [bold type]There are a lot of pedestals, pillars and cabinets in this room, which makes it excellent for hiding in, but also makes it take a lot longer to get to the other side.[roman type][line break]".
To decide which number is the concealment of (R - HeistPainting06):
	decide on 6.
To decide which number is the obstacle-hindrance of (R - HeistPainting06):
	decide on 6.
HeistPainting07 is a heist-painting-room. The printed name of HeistPainting07 is "Icy Museum Room". The grid position of HeistPainting07 is <14,8,6>. The shape of HeistPainting07 is L14/0-0-1-1-0-0. HeistPainting07 has a direction called arrival-direction.
The description of a HeistPainting07 is "This looks and feels like a small room in a museum, complete with expensive-looking artworks on the walls and red rope protecting the exhibits. But the floor of this room is completely made of ice! A sign indicates that visitors should collect and wear ice skates to experience this immersive Arctic Experience room, but there are none to be seen.".
HeistPainting07 is south of HeistPainting04.
HeistPainting08 is a heist-painting-room. The grid position of HeistPainting08 is <14,9,6>. The shape of HeistPainting08 is L14/0-0-1-1-0-1.
HeistPainting08 is east of HeistPainting07. [HeistPainting08 is south of HeistPainting05.]
HeistPainting09 is a heist-painting-room. The grid position of HeistPainting09 is <14,10,6>. The shape of HeistPainting09 is L14/0-0-1-0-0-1.
HeistPainting09 is east of HeistPainting08. The printed name of HeistPainting09 is "Laser Room". HeistPainting09 is south of HeistPainting06. HeistPainting09 has a direction called arrival-direction.
The description of HeistPainting09 is "This room is guarded by a 3D mesh of red lasers. Blocking the path of a laser would probably be bad.".

HeistPainting10 is a heist-painting-room. The grid position of HeistPainting10 is <14,9,9>. The printed name of HeistPainting10 is "Vault Lobby". The description of HeistPainting10 is "This room is lined with motion sensor activated turrets that look somewhat like blow darts. How many needles you get hit by will probably depend on your dexterity and skill as a cat burglar.". The shape of HeistPainting10 is L14/0-0-1-0-1-0.
HeistPainting10 is north of HeistPainting02. HeistPainting10 has a direction called arrival-direction.
HeistPainting11 is a heist-painting-room. The grid position of HeistPainting11 is <14,9,10>. The printed name of HeistPainting11 is "Vault". The shape of HeistPainting11 is L14/0-0-0-0-1-0.
HeistPainting11 is north of HeistPainting10.

[To decide which number is the obstacle-hindrance of (R - a heist-painting-room):
	decide on 2.
To decide which text is ObstacledDesc of (R - a heist-painting-room):
	decide on "It's so dark and dingy that it takes a little longer than normal to navigate your way through the doorway.".]

milk-fountain is a thing. milk-fountain is not portable. The printed name of milk-fountain is "[TQlink of item described]milk fountain[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of milk-fountain is "mf". Understand "milk", "fountain" as milk-fountain.

To say ShortDesc of (M - milk-fountain):
	say "milk fountain".
To say MediumDesc of (M - milk-fountain):
	say "milk fountain".
To say ExamineDesc of (M - milk-fountain):
	say "A [if diaper quest is 0]small phallic fountain spurting fresh milk. ...You could probably fit the tip in your butt, or mouth[otherwise]life-sized statue of a pregnant woman, with nipples that are spurting fresh milk. You could probably drink from a nipple, or try touching the statue elsewhere and see if anything happens[end if].".

To decide which figure-name is the examine-image of (M - milk-fountain):
	decide on Figure of milk fountain.

To compute standard decanting of (D - milk-fountain):
	allocate 6 seconds;
	compute milk-fountain decanting of the noun.

To compute milk-fountain decanting of (V - a vessel):
	say "You place the [ShortDesc of V] underneath the falling milk. ";
	compute milk-fountain filling of V.

To compute milk-fountain filling of (V - a vessel):
	now the fill-colour of V is white;
	now V is boring-origin;
	DoseFill V;
	say "The [ShortDesc of V] is filled with [milk].";
	force inventory-focus redraw.

To compute milk-fountain enema:
	allocate 6 seconds;
	say "You press your [asshole] up against the tip of [NameDesc of milk-fountain], and it only takes a short few moments of gurgling and gushing for your belly to be filled with a large helping of [milk].";
	AssFill 10 milk.

To compute milk-fountain mouthful:
	allocate 6 seconds;
	say "You move your [if diaper quest is 0]face up to the froth[otherwise]lips up to one nipple[end if] of the [NameDesc of milk-fountain], and suck up a large mouthful of [milk].";
	FaceFill milk by 4.

Check plugging asshole with milk-fountain:
	if diaper quest is 1, say "How in the world would you get your butthole up there?" instead;
	if asshole is actually occupied, say "You'd need to remove [NameDesc of random thing filling asshole] first." instead;
	if the player is ass protected, say "Your [random top level ass protection clothing] is in the way." instead;
	if the player is prone, say "You would need to be standing to do this successfully." instead;
	compute milk-fountain enema instead.

Check drinking milk-fountain:
	if face is actually occupied, say "You'd need to remove [NameDesc of random thing filling face] first." instead;
	if the player is prone, say "You would need to be standing up to do this successfully." instead;
	compute milk-fountain mouthful instead.

Check poking milk-fountain:
	allocate 2 seconds;
	if diaper quest is 0, say "Nothing happens." instead;
	say "As you touch the statue's belly, you feel a rumbling from inside your own! ";
	if the total squirtable fill of belly >= belly limit:
		cutshow Figure of milk fountain touched for milk-fountain;
		say "But nothing happens, because your belly is already full to the brim!" instead;
	otherwise if cat burglar outfit is worn:
		cutshow Figure of milk fountain touched for milk-fountain;
		let BL be belly limit - the total squirtable fill of belly;
		AssFill BL with milk;
		say "As if by magic, your own belly bulges outwards, as if it were pregnant! But no... You understand that it's not got a baby in it... your bowels have just been filled to the brim with [milk]!" instead;
	otherwise:
		say "But then, whatever magic that was fizzles out. You sense that you may have more luck if you could somehow become a more [']full['] cat burglar." instead.

Check entering milk-fountain:
	reset multiple choice questions;
	set numerical response 1 to "Fill your mouth with milk";
	set numerical response 2 to "[if diaper quest is 1]Touch the belly[otherwise]Fill your ass with milk[end if]";
	set numerical response 0 to "Cancel";
	compute multiple choice question;
	if player-numerical-response is 1:
		try drinking milk-fountain instead;
	otherwise if player-numerical-response is 2:
		if diaper quest is 1, try poking milk-fountain instead;
		otherwise try plugging asshole with milk-fountain instead;
	otherwise:
		say "Action cancelled." instead.

To construct normal buttons for (T - milk-fountain):
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of MouthButton;
		now the ButtonCommand entry is "drink [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
		if the total volume of face > 0, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player has full mouth]
		if face is actually occupied, now the ButtonColour entry is lightModeFullRed; [turn red - player can't drink]
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		if diaper quest is 0:
			now the ButtonImage entry is Figure of AssholeButton;
			now the ButtonCommand entry is "plug butthole with [text-shortcut of T]";
			now the ButtonColour entry is lightModeFullGreen;
			if the player is ass protected, now the ButtonColour entry is lightModeFullYellow; [turn yellow - clothing in way]
			if asshole is actually occupied, now the ButtonColour entry is lightModeFullRed; [turn red - player can't anally insert]
		otherwise:
			now the ButtonImage entry is Figure of PokeButton;
			now the ButtonCommand entry is "poke [text-shortcut of T]";
			now the ButtonColour entry is lightModeFullGreen.
To say verb-desc of (T - milk-fountain):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[unique-verb-desc of T] [link][bracket][if diaper quest is 0]mouth[otherwise]drink[end if][close bracket][as]drink [text-shortcut of T][end link][if diaper quest is 0][link][bracket]asshole[close bracket][as]plug butthole with [text-shortcut of T][end link][otherwise][link][bracket]touch[close bracket][as]poke [text-shortcut of T][end link][end if]".


zap-bot is a person. zap-bot can be uninterested or interested. zap-bot can be moved. zap-bot can be zapping. The printed name of zap-bot is "[TQlink of item described]security bot[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of zap-bot is "scbt".

Figure of zap bot is the file "Env/Mansion/ghostbot1.jpg".
To decide which figure-name is the examine-image of (M - zap-bot):
	decide on Figure of zap bot.

Definition: zap-bot is reactive:
	if it is in the location of the player, decide yes;
	decide no.

To check disapproval of (M - zap-bot): [Should be rare. Perhaps sometimes the slimegirl seeing you leak pee]
	say "[one of][first custom style]'INTRUDER PRIMARY CHARACTERISTIC IDENTIFIED: [if diaper quest is 1]PATHETIC BABY[otherwise]DISGUSTING WHORE[end if]. SECONDARY CHARACTERISTIC IDENTIFIED: CAT BURGLAR.'[roman type][line break][or][stopping]".

To decide which figure-name is the NPC-icon of (Z - zap-bot):
	if Z is interested, decide on Figure of Red NPC;
	decide on Figure of Black NPC.

To compute boring spit reaction of (M - zap-bot):
	if M is uninterested:
		now M is interested;
		say "[first custom style]'INTRUDER ALERT. PREPARE TO BE INCAPACITATED...'[roman type][line break][BigNameDesc of zap-bot][']s eyes light up red as it announces that it has noticed you!".

To compute painting entrance of (P - heist-painting):
	now playerRegion is school; [any time based events that don't happen in the school should also not happen here]
	now P is not rippling;
	let LP be the location of P;
	change the south exit of HeistPainting08 to LP;
	say "You step through the painting, and find yourself in a different, secret part of the mansion's museum. It's like a fancy private gallery, with expensive artpieces adorning the well-maintained walls and floors. You can return through the painting frame to the south, but you get the feeling that once you leave this area, you won't be able to return.

	Some sort of cat burglar sixth-sense provided by your new hood is warning you that [bold type]this place has moisture sensors on the floors[roman type] - you'll need to be careful not to spill any liquid on the ground here.

	Suddenly you notice... All the things that [if there is a worn bag of holding]weren't in your bag of holding[otherwise]you were holding[end if] have remained in the [LP], on the other side of the painting.[line break][variable custom style]I guess I'll have to get them back after I leave.[roman type][line break]";
	now milk-fountain is in HeistPainting08;
	now zap-bot is in a random heist-painting-room;
	if zap-bot is in HeistPainting08 or zap-bot is in HeistPainting10 or zap-bot is in HeistPainting11, now zap-bot is in HeistPainting02;
	repeat with T running through held things:
		if T is currently-not-in-bag or T is bottle or T is skeleton key:
			now T is in LP;
			dislodge T;
			if T is skeleton key, now P is key-stolen;
	let PD be a random pedestal in HeistPainting02;
	if PD is a thing:
		if diaper quest is 1:
			let D be plain-massive-diaper;
			if plain-massive-diaper is worn, now D is blue-massive-diaper;
			blandify and reveal D;
			now D is cursed;
			now D is audible squelches;
			now the quest of D is enemy-orgasm-quest;
			now the raw-magic-modifier of D is 3;
			now D is dexterity-influencing;
			now D is in PD;
			now the paid of PD is 1;
		otherwise:
			blandify and reveal white-cat-tail-plug;
			compute class set up of white-cat-tail-plug;
			now white-cat-tail-plug is in PD;
			now the paid of PD is 4;
	let PD be a random pedestal in HeistPainting03;
	if PD is a thing:
		now skeleton key is in PD;
		now the paid of PD is 2;
	let PD be a random pedestal in HeistPainting04;
	if PD is a thing:
		blandify and reveal cat burglar outfit;
		compute class set up of cat burglar outfit;
		now cat burglar outfit is in PD;
		now the paid of PD is 2;
	let PD be a random pedestal in HeistPainting11;
	if PD is a thing:
		set up jewelled-tiara;
		now jewelled-tiara is in PD;
		now the paid of PD is 6;
	otherwise:
		say "MAJOR BUG: The pedestals that should have been in this region are missing. Please submit a bug report to Aika including the output of the following command: [']showme all pedestals[']. I will now give you the jewelled tiara so that you can compelete this quest even though the subregion is borked.";
		set up jewelled-tiara;
		now jewelled-tiara is carried by the player;
	[now witch's goblet is in HeistPainting03;]
	now the player is in HeistPainting08.

An all time based rule (this is the heist painting rule):
	if playerRegion is school and the player is in a heist-painting-room:
		if the player is in HeistPainting01:
			say "[one of][bold type]All four walls of this room are giant screens, which have hypnotic sex loops playing on repeat![roman type][line break][HeistHypnoOrgasm][or][if the player is prone]You keep your eyes downcast, avoiding looking at the screens.[otherwise]The giant screens continue to play hypnotic porn.[line break][HeistHypnoOrgasm][end if][stopping]";
		if zap-bot is not in the location of the player or (zap-bot is uninterested and a random number between 1 and 2 is 1):
			now zap-bot is not zapping;
			let L be the location of zap-bot;
			let LDE be the number of entries in the Nviables of L;
			let LDER be a random number between 1 and LDE;
			let D be entry LDER in the Nviables of L;
			if zap-bot is interested:
				now zap-bot is uninterested;
				repeat with LD running through the Nviables of L:
					let LDR be the room LD from L;
					if the player is in LDR, now D is LD;
			unless HeistPainting02 is not vault-opened and D is north and L is HeistPainting02, try zap-bot going D;
		if zap-bot is in the location of the player:
			if zap-bot is uninterested:
				let R be a random number between 1 and 11;
				let C be the concealment of the location of the player;
				let P be the stealth of the player;
				if debuginfo > 0, say "[input-style]Zapbot perception check: awareness roll (d11) = [R] | [C + P].5 = ([C].5) [location of the player] concealment rating + ([P]) player [if the player is upright]standing[otherwise]kneeling[end if] stealth rating[roman type][line break]";
				if C + P >= R:
					say "[BigNameDesc of zap-bot] fails to notice you.";
				otherwise:
					now zap-bot is interested;
					say "[first custom style]'INTRUDER ALERT. PREPARE TO BE INCAPACITATED...'[roman type][line break][BigNameDesc of zap-bot][']s eyes light up red as it announces that it has noticed you!";
			otherwise:
				if zap-bot is zapping:
					say "[BigNameDesc of zap-bot] presses its second hand on the other side of your torso. You are completely fried with electricity, and momentarily pass out. When you open your eyes what feels like a split-second later, you are back in the [location of heist-painting].";
					now the player is in the location of heist-painting;
					compute painting completion of heist-painting;
					update player region;
					PainUp 40;
				otherwise:
					say "[BigNameDesc of zap-bot] presses one hand against you, and releases a strong electric current into your torso!";
					now zap-bot is zapping;
					PainUp 25.

To say HeistHypnoOrgasm:
	let A be minimum arousal + 1000;
	if the arousal of the player < A, now the arousal of the player is A; [if arousal is too low, the check below will return false]
	if the player is able to orgasm so soon:
		if the player is able to orgasm:
			say "The hypnotic swirls are incredibly powerful, and just like that, you feel something building inside your [genitals]...";
			now another-turn is 1;
			now another-turn-flavour is "It takes you a few moments to recover from the shock of your spontaneous orgasm.";
			if the player is possessing a penis, cutshow Figure of heist hypno;
			vaginally orgasm shamefully;
	otherwise:
		say "Fortunately, you have literally just orgasmed, so it has no significant effect.";

Check going north when the player is in HeistPainting02:
	if HeistPainting02 is not vault-opened:
		if skeleton key is held:
			say "Unlock the door to the vault with the skeleton key?";
			if the player is consenting:
				say "The skeleton key morphs itself to perfectly fit into the lock. After you turn and unlock the door, the key crumbles to dust.";
				if heist-painting is key-stolen, now skeleton key is in the location of heist-painting;
				otherwise destroy skeleton key;
				now HeistPainting02 is vault-opened;
			otherwise:
				say "Action cancelled." instead;
		otherwise:
			say "There's no way you're opening this vault door without a key." instead.

Report going when the player is in HeistPainting04:
	if the scariness of HeistPainting04 is 0, now the scariness of HeistPainting04 is a random number between 15 and 50;
	say "Suddenly, with a terrifying scream, a disfigured spectre rushes at you from the portrait on the far wall!";
	FearUp the scariness of HeistPainting04;
	say "[one of][or]Despite it having happened just a short while before, you still weren't expecting that.[or]At least you knew it was coming that time.[or]It's nowhere near as scary now that you know it's coming.[stopping]";
	if the scariness of HeistPainting04 >= 2, now the scariness of HeistPainting04 is the scariness of HeistPainting04 / 2.

Report going when the player is in HeistPainting07:
	now the arrival-direction of HeistPainting07 is the opposite-direction of the noun.

Check going when the player is in HeistPainting07:
	if the noun is not the arrival-direction of HeistPainting07:
		say "You will have to [if the player is upright]try to keep your balance[otherwise]crawl very slowly[end if] across the ice, is that okay?";
		if the player is not consenting, say "Action cancelled." instead.

Carry out going when the player is in HeistPainting07:
	if the noun is not the arrival-direction of HeistPainting07:
		if the player is upright:
			say "You try to keep your balance as you slip and slide your way across the room!";
			let D be a random number between 1 and the dexterity of the player;
			let Z be 13;
			if debuginfo > 0, say "[input-style]Laser avoidance check: Dexterity d[dexterity of the player] = D | [Z].5[roman type][line break]";
			if D > Z:
				say "You manage to stay upright!";
			otherwise:
				say "When you're almost there, you slip and slam to the ground with a painful smack!";
				try kneeling;
				let T be the substituted form of "As you faceplant,";
				check sudden spit and expulsion with reason T;
				compute single choice question "Proceed into the next room";
		otherwise:
			if zap-bot is in the location of the player, say "You can't crawl slowly across the ice [if zap-bot is interested]while you've got [NameDesc of zap-bot] on your tail[otherwise]without [NameDesc of zap-bot] easily spotting you and catching you[end if]!" instead;
			now another-turn is 1;
			now another-turn-flavour is "It takes you a decent while to carefully crawl across the ice.".

Report going when the player is in HeistPainting09:
	now the arrival-direction of HeistPainting09 is the opposite-direction of the noun.

Check going when the player is in HeistPainting09:
	if the noun is not the arrival-direction of HeistPainting09:
		if zap-bot is in the location of the player, say "You can't navigate your way through the 3D maze of lasers [if zap-bot is interested]while you've got [NameDesc of zap-bot] on your tail[otherwise]without [NameDesc of zap-bot] spotting you and catching you[end if]!" instead;
		say "You will have to navigate your way through the 3D maze of lasers, is that okay?";
		if the player is not consenting, say "Action cancelled." instead.

Carry out going when the player is in HeistPainting09:
	if the noun is not the arrival-direction of HeistPainting09:
		say "You do your best to avoid the mesh of lasers.";
		let LN be a list of numbers;
		add 1 to LN;
		add 2 to LN;
		add 3 to LN;
		sort LN in random order;
		say "You try to avoid your [BreastDesc] hitting a laser [if the player is prone]beneath[otherwise]in front of you[end if].";
		let D be a random number between 1 and the dexterity of the player;
		let Z be 4 + (the largeness of breasts / 2);
		if debuginfo > 0, say "[input-style]Laser avoidance check: Dexterity d[dexterity of the player] = D | [Z].5 = 4.5 + ([the largeness of breasts / 2]) breast size[roman type][line break]";
		if D > Z:
			say "You manage to dodge it!";
		otherwise:
			say "Oh crap - the laser hits you in the boob!";
			let R be entry 1 in LN;
			remove R from LN;
			if R is 1:
				let TBP be a random top level breasts protection clothing;
				if TBP is a thing and TBP is transformable:
					say "The laser hits [NameDesc of TBP]! ";
					potentially transform TBP;
				otherwise:
					say "The laser hits your [BreastDesc][unless the player is top heavy], causing them to swell[end if]!";
					BustUp 2;
			otherwise if R is 2:
				say "The laser hits your skin, causing an immediate white-hot burning sensation!";
				PainUp 20;
			otherwise:
				say "The laser triggers an alarm[if zap-bot is not in the location of the player], causing a security droid to come racing into the room[end if]!";
				now zap-bot is in the location of the player;
				if zap-bot is uninterested:
					now zap-bot is interested;
					say "[first custom style]'INTRUDER ALERT. PREPARE TO BE INCAPACITATED...'[roman type][line break]";
		say "You try to avoid your [AssDesc] hitting a laser [if the player is prone]above[otherwise]to the side[end if].";
		let D be a random number between 1 and the dexterity of the player;
		let Z be 4 + (the total volume of hips / 2);
		if debuginfo > 0, say "[input-style]Laser avoidance check: Dexterity d[dexterity of the player] = D | [Z].5 = 4.5 + ([the total volume of hips / 2]) ass size[roman type][line break]";
		if D > Z:
			say "You manage to dodge it!";
		otherwise:
			say "Oh crap - the laser hits you in the butt!";
			let R be entry 1 in LN;
			remove R from LN;
			if R is 1:
				let TBP be the at least partial concealer of hips;
				if TBP is transformable clothing:
					say "The laser hits [NameDesc of TBP]! ";
					potentially transform TBP;
				otherwise:
					say "The laser hits your [BreastDesc][unless the player is top heavy], causing them to swell[end if]!";
					BustUp 2;
			otherwise if R is 2:
				say "The laser hits your skin, causing an immediate white-hot burning sensation!";
				PainUp 20;
			otherwise:
				say "The laser triggers an alarm[if zap-bot is not in the location of the player], causing a security droid to come racing into the room[end if]!";
				now zap-bot is in the location of the player;
		say "You try to hop over a low moving laser.";
		let D be a random number between 1 and the dexterity of the player;
		let Z be 10;
		if debuginfo > 0, say "[input-style]Laser avoidance check: Dexterity d[dexterity of the player] = D | [Z].5[roman type][line break]";
		if D > Z:
			say "You manage to dodge it!";
		otherwise:
			say "Oh crap - the laser hits you in the [if the player is upright]crotch[otherwise]face[end if]!";
			let R be entry 1 in LN;
			remove R from LN;
			if R is 1:
				if the player is upright:
					if the size of penis > min penis size:
						PenisDown 1;
					otherwise if the player is possessing a vagina and the labia plumpness of vagina < max labia plumpness:
						LabiaUp 1 with comment;
					otherwise:
						say "You feel your libido rising.";
						SexAddictUp 1;
				otherwise:
					if the lips of face < max lip size:
						say "Your lips swell.";
						LipsUp 1;
					otherwise:
						say "You feel some IQ points slipping away.";
						IntDown 1;
			otherwise if R is 2:
				say "The laser hits your skin, causing an immediate white-hot burning sensation!";
				PainUp 20;
			otherwise:
				say "The laser triggers an alarm[if zap-bot is not in the location of the player], causing a security droid to come racing into the room[end if]!";
				now zap-bot is in the location of the player;
		compute single choice question "Proceed into the next room".

To SemenPuddleUp (X - a number) in (R - a heist-painting-room):
	if the total puddle of R is 0:
		say "As the [semen] hits the floor, an alarm blares out![line break][first custom style]'SPILLAGE HAZARD DETECTED. SPILLAGE HAZARD DETECTED.'[roman type][line break][if zap-bot is not in the location of the player]The alert causes a security droid to come racing into the room![end if]";
		now zap-bot is in the location of the player;
	increase the semen-puddle of R by X.

To UrinePuddleUp (X - a number) in (R - a heist-painting-room):
	if the total puddle of R is 0:
		say "As the [urine] hits the floor, an alarm blares out![line break][first custom style]'SPILLAGE HAZARD DETECTED. SPILLAGE HAZARD DETECTED.'[roman type][line break][if zap-bot is not in the location of the player]The alert causes a security droid to come racing into the room![end if]";
		now zap-bot is in the location of the player;
	increase the urine-puddle of R by X.

To MilkPuddleUp (X - a number) in (R - a heist-painting-room):
	if the total puddle of R is 0:
		say "As the [milk] hits the floor, an alarm blares out![line break][first custom style]'SPILLAGE HAZARD DETECTED. SPILLAGE HAZARD DETECTED.'[roman type][line break][if zap-bot is not in the location of the player]The alert causes a security droid to come racing into the room![end if]";
		now zap-bot is in the location of the player;
	increase the milk-puddle of R by X.

Report going when the player is in HeistPainting10:
	now the arrival-direction of HeistPainting10 is the opposite-direction of the noun.

Check going when the player is in HeistPainting10:
	if the noun is not the arrival-direction of HeistPainting10:
		if the player is prone, say "You'll need to go through this lobby on two feet as fast as you can to avoid being peppered by countless needles." instead;
		say "You will have to run through the middle of the needle turrets, is that okay?";
		if the player is not consenting, say "Action cancelled." instead.

Carry out going when the player is in HeistPainting10:
	if the noun is not the arrival-direction of HeistPainting10:
		say "You run as fast as you can, ducking and weaving as several needles come flying towards you!";
		let T be a random needle trap;
		let NS be the number of worn sneaking clothing;
		repeat with N running from 1 to 4:
			if a random number between 1 and NS > 1:
				say "Your [random worn sneaking clothing] manages to prevent a turret from detecting you!";
			otherwise:
				trigger T.

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
	add south to the Nviables of BowsettePainting01;
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
