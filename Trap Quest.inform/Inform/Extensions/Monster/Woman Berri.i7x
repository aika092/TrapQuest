Woman Berri by Monster begins here.

The current-name of woman-player is "Berri". The old-name of woman-player is "Berri".

To say MediumDesc of (M - woman-player):
	say "[if M is introduced][womanTitle] [womanName][otherwise]mysterious [man of M][end if]".

Figure of woman 1 is the file "NPCs/MultiFloor/berri/woman1.jpg".
Figure of woman 2 is the file "NPCs/MultiFloor/berri/woman2.jpg".
Figure of woman 2b is the file "NPCs/MultiFloor/berri/woman2b.jpg".
Figure of woman 3 is the file "NPCs/MultiFloor/berri/woman3.jpg".
Figure of woman 4a is the file "NPCs/MultiFloor/berri/woman4a.jpg".
Figure of woman 4b is the file "NPCs/MultiFloor/berri/woman4b.jpg".
Figure of woman 4c is the file "NPCs/MultiFloor/berri/woman4c.jpg".
Figure of woman 4d is the file "NPCs/MultiFloor/berri/woman4d.jpg".
Figure of woman 4e is the file "NPCs/MultiFloor/berri/woman4e.jpg".
Figure of woman 5a is the file "NPCs/MultiFloor/berri/woman5a.jpg".
Figure of woman 5b is the file "NPCs/MultiFloor/berri/woman5b.jpg".
Figure of woman 5c is the file "NPCs/MultiFloor/berri/woman5c.jpg".
Figure of woman 5d is the file "NPCs/MultiFloor/berri/woman5d.jpg".

Figure of Berri Cutscene 1a is the file "NPCs/MultiFloor/berri/woman-cutscene1a.jpg".
Figure of Berri Cutscene 1b is the file "NPCs/MultiFloor/berri/woman-cutscene1b.jpg".
Figure of Berri Cutscene 1c is the file "NPCs/MultiFloor/berri/woman-cutscene1c.jpg".
Figure of Berri Cutscene 1d is the file "NPCs/MultiFloor/berri/woman-cutscene1d.jpg".
Figure of Berri Cutscene 2 is the file "Special/Cutscene/cutscene-berri-vinepit1.jpg".
Figure of Berri Cutscene 3 is the file "Special/Cutscene/cutscene-berri-craft1.jpg".

To decide which figure-name is the monster-image of (M - woman-player):
	if the dominatrix-contraption-scene of M > 0 and the dominatrix-contraption-scene of M < 6:
		if the dominatrix-contraption-scene of M < 4 or diaper messing < 3:
			if watersports fetish is 1, decide on Figure of Berri Cutscene 1a;
			otherwise decide on Figure of Berri Cutscene 1b;
		otherwise:
			if watersports fetish is 1, decide on Figure of Berri Cutscene 1c;
			otherwise decide on Figure of Berri Cutscene 1d;
	if the woman-bimbo of M < 3, decide on figure of woman 1;
	if the woman-bimbo of M is 3:
		if the woman-status of woman-player is 90 and the vine-scene of woman-player <= 4, decide on figure of woman 2b;
		decide on figure of woman 2;
	if the woman-bimbo of M is 4, decide on figure of woman 3;
	if the woman-bimbo of M is 5:
		if the woman-status of M is 98, decide on figure of woman 4e; [diaper pail]
		if M is soggy, decide on figure of woman 4b;
		if M is messy:
			if the woman-diaper-state of M is 1, decide on figure of woman 4c;
			decide on figure of woman 4d;
		decide on figure of woman 4a;
	otherwise:
		if M is soggy, decide on figure of woman 5b;
		if M is messy:
			if the woman-diaper-state of M is 1, decide on figure of woman 5c;
			decide on figure of woman 5d;
		decide on figure of woman 5a.

[
Condition for Berri being male
if (tg fetish is 1 and the woman-bimbo of M < 2 and lady fetish is not 1) or lady fetish is 2:
]
To say MonsterDesc of (M - woman-player):
	[if lady fetish is 2:
		if the woman-bimbo of M is 0, say "A slim, brown-haired [man of M] wearing a dark grey shirt under a black leather jacket and a matching pair of figure-hugging leather pants. [big his of M] strong jawline is darkened with stubble, and although most of [his of M] skin is covered up, you can tell [he of M][']s fairly athletic. [big he of M] is wearing a pair of square-rimmed glasses and carrying a modern-looking pistol.";
		if the woman-bimbo of M is 1, say "A [man of M] with ear-length brown hair and a soft cast to [his of M] facial features that makes [him of M] look very feminine. [big he of M] is wearing a black fishnet shirt under a cropped leather jacket, and a matching pair of fishnet leggings underneath a pair of form-hugging leather shorts. The glasses resting on the bridge of [his of M] nose are slightly askew, and [he of M] is carrying a modern-looking pistol.";
		if the woman-bimbo of M is 2, say "A long haired brunette wearing a black fishnet shirt underneath a tight black leather corset. Below that, [he of M]'s wearing a pair of torn fishnet leggings and a tiny pair of black hotpants, which provides the bare minimum of modesty for [his of M] crotch. [big he of M] is wearing glasses over a decent amount of makeup, and carrying a modern looking pistol.";
		if the woman-bimbo of M is 3, say "A long haired brunette wearing a tight black latex top which is too small and has too large of a cleavage window to cover [his of M] nipples. A pair of fishnet leggings and a super short black latex skirt are too exposing to hide the fact that [his of M] [manly-penis] has been locked into chastity. [big he of M] is wearing glasses over a decent amount of makeup.";
		if the woman-bimbo of M is 4, say "A long haired brunette wearing nothing on [his of M] top half but a sheer lace bra that leaves [his of M] nipples very visible. [big he of M] is wearing black suspenders and stockings but no underwear, leaving [his of M] [manly-penis], which is locked in chastity, fully exposed. [big he of M] is wearing heavily done make up. You can tell by [his of M] facial expressions that [he of M]'s having more trouble than usual thinking straight.";
		if the woman-bimbo of M is 5, say "A [man of M] wearing nothing on [his of M] top half at all except a tight black latex choker around [his of M] neck. [big he of M] is wearing a pair of fake kitty cat ears with the headband well hidden under [his of M] long brown hair, which is in a ponytail. [big he of M] is also wearing a pair of black latex crotchless panties, which fully expose [his of M] chastity cage, along with a pair of very shiny black latex thigh-high boots with long stiletto heels. [big he of M] is wearing a very heavy amount of make up. You can tell by [his of M] facial expressions [he of M]'s having huge amounts of trouble thinking straight.";
		if the woman-bimbo of M is 6:
			say "A long haired, huge breasted brunette wearing nothing at all[if bukkake fetish is 0] except a pair of white latex fetish boots with chunky heels[end if] and a matching white chastity cage around [his of M] [sissy-penis]. [big his of M] facial expression is one of empty-headed bliss.[if bukkake fetish is 1] [big he of M] is thoroughly covered in [semen] from head to toe, and has yet more [semen] dripping out of [his of M] fuckhole. [big his of M] hips and buttcheeks must have doubled if not tripled in size since you first met [him of M].";
	otherwise:]
	say "A cute brunette with a tuft of purple hair at the front. [big he of M] is wearing ";
	if the woman-bimbo of M is 2, say "a cute blue and white dress with frills, and carrying what looks like a small blue water pistol.";
	if the woman-bimbo of M is 3, say "blue dungarees with a pink heart at the front, over a pink crop top. A thick bulge around [his of M] loins lets you know that [he of M][']s diapered under [his of M] dungarees. [big he of M] looks rather embarrassed about how obvious that is.";
	if the woman-bimbo of M is 4, say "a bold pink latex bodysuit from neck to toe, with the thickest diaper you've ever seen bulging at the crotch. [big he of M] looks very embarrassed to be seen like this.";
	if the woman-bimbo of M is 5, say "a super short pink babydoll dress that does nothing to hide [his of M] animal patterned superthick diaper.";
	if the woman-bimbo of M >= 6, say "one of the largest, most ridiculous diapers you've ever seen with a pink and orange balloon pattern. [big he of M] is wearing patching pink baby mittens and baby booties and seems to only crawl around on these now. [big he of M] has a large pacifier in [his of M] mouth and a soft pink leash connected to [his of M] collar, which appears to be locked on.";
	if M is messy:
		say "[big his of M] diaper [if the woman-diaper-state of M > 1]is filled to bursting with insane amounts of vile smelling filth which squelches noisily with every movement [he of M] makes[otherwise]has been soiled - even if it wasn't for the smell, you can see the lumpy evidence of it for yourself in the seat of [his of M] diaper. It makes subtle squelching sounds when [NameDesc of M] squeezes [his of M] thighs together[end if].";
	otherwise if M is soggy:
		say "The bottom of [his of M] diaper has turned a bold shade of yellow, evidence that [he of M] has wet [himself of M], and probably more than once. It makes subtle squelching sounds when [NameDesc of M] squeezes [his of M] thighs together.".

To say MessyMonsterFlav of (M - woman-player):
	say "". [handled above]

To update name of (M - woman-player):
	if the woman-bimbo of M < 3:
		now the current-title of M is "Player";
	otherwise if the woman-bimbo of M is 3:
		now the current-title of M is "Diapered Player";
	otherwise if the woman-bimbo of M is 4:
		now the current-title of M is "Fetish Slave";
	otherwise if the woman-bimbo of M is 5:
		now the current-title of M is "Adult Baby";
	otherwise:
		now the current-title of M is "Babygirl".

To compute friendly boredom of (M - woman-player):
	if the woman-status of M is 98:
		distract M; [berri is in the pail and can't follow the player]
	otherwise:
		increase the friendly boredom of M by 1;
		if the player is not in danger and a random number from 10 to 30 < the friendly boredom of M:
			distract M;
			if M is in the location of the player, say BecomesBoredFlav of M.

woman-player has a number called woman-diaper-state.
woman-player has a number called woman-latest-diaper-state.

Definition: woman-player is soggy:
	if the woman-diaper-state of it > 0 and diaper messing < 6, decide yes;
	decide no.
Definition: woman-player is messy:
	if the woman-diaper-state of it > 0 and diaper messing >= 6, decide yes;
	decide no.

To vanish (M - a monster):
	if M is woman-player and M is introduced:
		remove M from play;
		if M is messy and the woman-diaper-state of M > 1, womanSluttify;
		reset diaper of M;
	if the woman-status of M is 98 or (the woman-status of M is 90 and the vine-scene of M is 5):
		FavourDown M;
		womanSluttify.

To decide which number is the messRefractoryLimit of (M - woman-player):
	decide on -300.

To resolve diaper use of (M - woman-player):
	now the refractory-period of M is 0;
	if the woman-bimbo of M > 4:
		increase the woman-diaper-state of M by 1;
		if M is in the location of the player, say "[variable custom style][if the player is able to speak]'Uh-oh. You need a change...'[otherwise]Uh-oh. Somebody needs a change...[end if][roman type][line break]".

To reset diaper of (M - woman-player):
	now the woman-diaper-state of M is 0;
	now the woman-latest-diaper-state of M is 0;
	now the refractory-period of M is 0.

To compute periodic recovery of (M - woman-player):
	if the woman-bimbo of M > 4 and M is interested:
		decrease the refractory-period of M by a random number between 1 and 20;
		if the refractory-period of M < the messRefractoryLimit of M:
			if M is in the location of the player:
				if M is messy, say "[speech style of M]'Hnnnng...'[roman type][line break][BigNameDesc of M] takes a squatting position, and then you hear a cacophony of awful sounds as [he of M] fills [his of M] diaper.";
				otherwise say "[BigNameDesc of M] squeaks and crosses [his of M] legs, but it's no use. [big he of M] is unable to stop.";
			resolve diaper use of M;
	if M is in the location of the player and the woman-diaper-state of M > the woman-latest-diaper-state of M:
		if M is messy and the woman-diaper-state of M < 3:
			say "[bold type][WomanName] now has [if the woman-diaper-state of M is 2]an insanely bulky hyper-messed[otherwise]a messy[end if] diaper.[roman type][line break]";
		otherwise if M is soggy and the woman-diaper-state of M is 1:
			say "[bold type][WomanName] now has a wet diaper.[roman type][line break]";
		now the woman-latest-diaper-state of M is the woman-diaper-state of M.

Check BabChanging woman-player with:
	if the woman-diaper-state of the noun is 0, say "[big he of the noun] isn't in need of that." instead.

Carry out BabChanging woman-player with:
	allocate 6 seconds;
	say "You try to guide [NameDesc of the noun] onto [his of the noun] back. ";
	if the favour of the noun < 15 and (the noun is not messy or the woman-diaper-state of the noun < 2):
		say "[big he of the noun] resists.[line break][speech style of the noun]'H-Hey, not so fast! I don't want you to be my caregiver. I can stay like this for a while longer...'[roman type][line break]";
	otherwise:
		say "You get to work cleaning up [his of the noun] [if the noun is messy]messy[otherwise]soggy[end if] nappy and replacing it with [if the second noun is a diaper][NameDesc of the second noun][otherwise]a diaper from your [MediumDesc of the second noun][end if]. You can tell [he of the noun] isn't pleased about having to be changed by you. Eventually [he of the noun][']s all clean and safely padded again.";
		FavourDown the noun;
		reset diaper of the noun;
		let SD be a random off-stage soiled-diaper;
		if diaper messing >= 6 and SD is soiled-diaper:
			now SD is carried by the player;
			say "You are now carrying the yucky [SD] that [he of the noun] was wearing before.";
		if the second noun is diaper, only destroy the second noun.

To say LeftoverDesc (N - 131):
	say "Berri is sleeping and you can't seem to wake [him of woman-player]. From what you can tell from [his of woman-player] mumblings, [he of woman-player][']s having a bad dream.".

Part - Magic Pistol

Figure of magic pistol is the file "Items/Accessories/Equippables/pistol2.jpg".

magic pistol is plastic.

Definition: magic pistol is blue themed: decide yes.

To say ClothingDesc of (W - magic pistol):
	say "A small blue water pistol. The water container appears to be disconnected from the nozzle, so how does it work?".

To say ShortDesc of (W - magic pistol):
	say "pistol".

To decide which number is the damage improvement of (W - magic pistol):
	if the stomach-liquid of the player > 0:
		let S be the stomach-liquid of the player;
		if S > stomach-max, decide on stomach-max;
		decide on S;
	decide on -99.

To say PistolStomachLiquid:
	say "[one of]You are shocked to feel your stomach emptying of liquid! [or][stopping]".

To compute attack of (W - magic pistol) at (M - a monster):
	say "You aim the [ShortDesc of W] at [NameDesc of M] and pull the trigger. ";
	let SL be the stomach-liquid of the player;
	if SL > 0:
		say "[PistolStomachLiquid]Jets of water[if the stomach-milk of the player > 0] and [milk][end if][if the stomach-urine of the player > 0] and [urine][end if] fly out of the tip, hitting [NameDesc of M] with [if SL > 10]insane force[otherwise if SL > 5]massive force[otherwise if SL > 2]strong force[otherwise]a powerful splash[end if]!";
		StomachDown SL;
	otherwise:
		say "Nothing happens...".

Part 1 - Perception

To compute (M - boogeymonster) stomping (N - woman-player):
	if M is in the location of the player:
		say "[BigNameDesc of M] envelops [NameDesc of N], and everything goes black for a moment. When you can see again, [NameDesc of M] is gone and [LeftoverDesc leftover-type of N].";
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N;
		destroy N;
		regionally place M;
	otherwise:
		vanish N.

Part 4 - Wandering

To compute wandering of (M - woman-player):
	follow the woman wandering rules.

The woman wandering rules is a rulebook.

Chapter - Vine Hole Scene

Report going when the vine-hole-scene of woman-player is 0 and the woman-bimbo of woman-player is 2 and the location is Woods16:
	if debugmode is 1, say "Checking if berri can appear.";
	if the number of monsters in the location of the player is 0 and another-turn is 0 and vine boss is in WoodsBoss01 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 29;
		now the vine-hole-scene of woman-player is 1;
		now woman-player is in the location of the player;
		now woman-player is interested;
		cutshow figure of berri cutscene 2 for woman-player;
		now temporaryYesNoBackground is figure of berri cutscene 2;
		say "As you arrive here you see that [NameDesc of woman-player] is here, trying to climb out of the pit, with a strong green vine wrapped around one of [his of woman-player] wrists, trying to pull [him of woman-player] back down into the underground cavern. [big his of woman-player] pistol has fallen out of [his of woman-player] hand, lying just inches away out of [his of woman-player] reach. [if the player is upright][bold type]As you are distracted by the gun, you stumble on a rock and fall to your knees.[roman type][paragraph break][BigNameDesc of woman-player] spots you and [his of woman-player] eyes widen with a look of urgency.[line break][speech style of woman-player]'[NameBimbo]! Thank the stars! Quick, my gun!'[roman type][line break]What do you do?";
		now the stance of the player is 1; [Important to avoid the clumsy fall-in-the-hole cutscene happening in the same turn]
		[cutshow figure of barbara cutscene 9 for woman-player;]
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "hand [his of woman-player] pistol to [him of woman-player]";
		if magic pistol is actually summonable, set numerical response 2 to "try to use [his of woman-player] pistol yourself to save [him of woman-player]";
		set numerical response 3 to "take [his of woman-player] gun for yourself";
		set numerical response 0 to "ignore [him of woman-player] entirely";
		compute multiple choice question;
		let CNR be player-numerical-response;
		if CNR is 1:
			say "[BigNameDesc of woman-player] snatches the pistol out of your hand as soon as it is in [his of woman-player] reach and points it down below [his of woman-player] feet, outside of your vision. You hear a weird sort of wet 'phut phut' sound as [he of woman-player] squeezes the trigger and you swear you can see [his of woman-player] belly slightly deflate as [he of woman-player] does. A loud roar comes from the pit, and you see the vine around [NameDesc of woman-player][']s wrist loosen slightly - enough for [him of woman-player] to quickly wriggle free and scramble further out of the pit! You take [his of woman-player] hand and help [him of woman-player] to [his of woman-player] feet, out of harm's way.[line break][speech style of woman-player]'Thanks, you really saved my bacon there. I owe you one.'[roman type][line break][BigNameDesc of woman-player] hugs you closely, [his of woman-player] crotch pressing against you for a few precious moments. You can't feel any padding - it seems that Berri has avoided being diapered so far.[line break][speech style of woman-player]'If I were you, I wouldn't try to fight the vine monster down there. It's just too strong.'[roman type][line break]";
			FavourUp woman-player;
		otherwise if CNR is 2:
			say "[BigNameDesc of woman-player] looks concerned as you pick up the pistol and point it towards the vine gripping [his of woman-player] hand.[line break][speech style of woman-player]'No, wait-'[roman type][line break][big he of woman-player] tries to stop you but you've already pulled the trigger. ";
			if the stomach-liquid of the player > 0:
				say "[PistolStomachLiquid]A huge jet of water flies out of the tip, painting not only the vine but [NameDesc of woman-player] in the burst. [big he of woman-player] coughs and splutters and loses [his of woman-player] grip. ";
			otherwise:
				say "The trigger clicks but nothing comes out.[line break][speech style of woman-player]'It's not a normal gun, you idiot, you need to have recently drunk som-'[roman type][line break][big his of woman-player] speech turns into a yelp as [he of woman-player] loses [his of woman-player] grip with [his of woman-player] free hand. ";
			say "You watch awkwardly and helplessly as [he of woman-player] is pulled back down into the hole!";
			summon magic pistol;
			FavourDown woman-player;
			now woman-player is in WoodsBoss01;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "throw the pistol down after [him of woman-player]. Maybe it's not too late for it to be of some use.";
			set numerical response 2 to "go down the pit to try and rescue [him of woman-player]";
			set numerical response 3 to "just wait...";
			compute multiple choice question;
			let CNR be player-numerical-response;
			if CNR is 1:
				say "You feel too guilty to hold onto the pistol, and throw it down into the pit. Hopefully that way [he of woman-player] will know that you didn't mean to fail [him of woman-player]...";
				only destroy magic pistol;
			otherwise if CNR is 2:
				now the stance of the player is 0;
				try going down;
				say "When you get to the bottom you discover that it's already too late.";
				now the sleep of woman-player is 9999;
				increase the woman-bimbo of woman-player by 1;
				try examining woman-player;
				say "Also, there's another problem. The vine boss is here. And it's clearly already very angry.";
				now the health of vine boss is (the maxhealth of vine boss * 2) / 3;
			otherwise:
				say "You slowly back away from the hole, racked with guilt, but too scared to stay close!";
			if CNR is not 2:
				VineSceneTransition;
		otherwise:
			say "[BigNameDesc of woman-player] looks [if CNR is 3]concerned as you pick up the pistol, and [end if]horrified when [he of woman-player] sees you turning to walk away.[line break][speech style of woman-player]'WHAT?! No, [NameBimbo], don't leave me like this! You bastard! I'll never forgive you!'[roman type][line break][if CNR is not 3]With an impressive display of agility, [NameDesc of woman-player] manages to grab the pistol and point it at you. A single moment of dread turns to surprise as a powerful burst of [milk] jets out of the nozzle and drenches your face, filling your mouth and blinding you. [end if]At this moment, [he of woman-player] loses [his of woman-player] grip with [his of woman-player] free hand, and is pulled back down into the hole.";
			if CNR is 3:
				now magic pistol is carried by the player;
				now woman-player is angered;
			otherwise:
				compute striking success effect of woman-player on face;
				FavourDown woman-player by 10;
				VineSceneTransition;
		now temporaryYesNoBackground is figure of small image.

To VineSceneTransition:
	now woman-player is in the location of the player;
	now the vine-hole-scene of woman-player is 2;
	increase the woman-bimbo of woman-player by 1;
	now the delayed sluttification of woman-player is 0; [reverses effect of 'compute striking success effect']
	now the woman-status of woman-player is 90;
	let V be a random off-stage vines;
	now V is in the location of the player;
	now V is revealed;
	now the TrapNo of V is -7500;
	say "Moments later, a pair of portals appear from thin air, and Berri falls out of one to the ground. [big he of woman-player] is now wearing blue dungarees with a pink heart at the front, over a pink crop top. A thick bulge around [his of woman-player] loins lets you know that [he of woman-player][']s diapered under [his of woman-player] dungarees. Strong green vines shoot out of the ground and wrap around [his of woman-player] wrists and ankles, holding them in place. [big his of woman-player] body is then suspended in mid-air halfway through the portals, forcing [his of woman-player] face to be held right against [his of woman-player] diaper bulge.".

Chapter - Vines Scene

Report going when there is an vine in the location and the woman-bimbo of woman-player is 3 and the vine-scene of woman-player is 0:
	if debugmode is 1, say "Checking if berri can appear.";
	let V be a random vine in the location of the player;
	if the number of monsters in the location of the player is 0 and the TrapNo of V >= 0 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 90;
		now woman-player is in the location of the player;
		now woman-player is interested;
		repeat with VN running through vines in the location of the player:
			now the TrapNo of VN is -7500; [prevents it from attacking the player]
		say "As you arrive here you see that [NameDesc of woman-player] is here, with strong green vines wrapped around [his of woman-player] wrists and ankles, holding them in place. [big his of woman-player] body is being held halfway through a set of portals, which is forcing [his of woman-player] face to be held right against [his of woman-player] diaper bulge.".

An all time based rule (this is the berri vines rule):
	if the woman-status of woman-player is 90 and the vine-scene of woman-player <= 4:
		if there are vines in the location of woman-player:
			let W be woman-player;
			increase the vine-scene of W by 1;
			if the vine-scene of W is 1:
				if W is in the location of the player, say "[speech style of W]'[NameBimbo], [if the vine-hole-scene of W < 2]thank goodness you're here! Quick, [end if]help me [please], it's going to - unf!!!'[roman type][line break][BigNameDesc of W] is cut off as a thick green vine pushes [his of W] face fully into the rear of [his of W] padding. It looks like you could [if inline hyperlinks >= 2][link]pull vines[as]pull[end link][otherwise][bold type]pull[roman type][end if] on the vines to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
			otherwise if the vine-scene of W is 2:
				if W is in the location of the player, say "[speech style of W]'Come on [NameBimbo], what's the hold-up?! Aaaahn~'[roman type][line break]The vines bring [NameDesc of W][']s face in for a second breathing session through [his of W] padding.";
			otherwise if the vine-scene of W is 3:
				if W is in the location of the player, say "[speech style of W]'Okay okay let's make a deal, if you help me I'll give you a fshashahahahahaaaaaah...'[roman type][line break]A third face-smush means that you are unable to make out what [he of W] was promising to give you.";
			otherwise if the vine-scene of W is 4:
				if W is in the location of the player, say "[speech style of W]'[big please] help me [please] help me [please] help me I'll give you all I haaaaa~'[roman type][line break][big his of W] fourth face-smush is more brutal than the rest - instead of just being pressed in there once, [his of W] head is repeatedly thrust back and forth in quick succession.";
			otherwise if the vine-scene of W is 5: [The WomanSluttify for this takes place in the "Vanish" function]
				if W is in the location of the player:
					say "[speech style of W]'Gzzt... can't hold it... Gah!'[roman type][line break]You hear a loud [if diaper messing >= 7]rasping sound as [NameDesc of W] fills [his of W] diaper with mess[otherwise]hissing sound as [NameDesc of W] wets [himself of W][end if]. The vines waste no time in forcing [his of W] face into [his of W] padding for an extra-long face plant session. [BigNameDesc of W] whines and gags as [he of W] is forced to breathe through [his of W] used diaper. Finally, the vines release [him of W], retreating back into the soil.[line break][speech style of W]'You fucking bitch...'[roman type][line break][big he of W] murmurs before passing out.[paragraph break]While [NameDesc of W] is asleep, the seemingly fully intelligent vines pull away [his of W] dungarees, remove [his of W] used nappy and replace it with an identical clean one, before buttoning [his of W] outfit back up.";
					let J be a random off-stage plentiful bracelet;
					if J is clothing:
						now J is pink diamond;
						set shortcut of J;
						say "A vine, seemingly gleeful at your collaboration, snakes up out of the soil completely before coiling around itself into a circle and turning into metal. There is now a [J] on the ground in front of you!";
						now J is in the location of the player;
						if the number of worn bracelets < 2, compute autotaking J;
					repeat with V running through vines in the location of the player:
						now the TrapNo of V is -750;
						now V is unrevealed;
					now the sleep of W is 500;
				otherwise:
					decrease the vine-scene of W by 1; [We stall at this point until the player returns]
		otherwise:[Berri has somehow moved on. But the scene still happened! So let's make sure that's taken into account with these numbers.]
			now the vine-scene of woman-player is 5;
			repeat with V running through alive vines:
				if the TrapNo of V < -750, now the TrapNo of V is -750;
				now V is unrevealed.

To WomanVinePull:
	let W be woman-player;
	allocate 6 seconds;
	if the traitor-hypno of hypno-lesson > 0:
		say "Something inside you urges you to [second custom style]help your friend[roman type] instead. You stand and watch.";
		if the vine-scene of W >= 4, decrease the traitor-hypno of hypno-lesson by 1;
	otherwise if the player is upright and clumsy april fools is 1:
		say "You reach for a vine but instead trip and fall!";
		try kneeling;
		say aprilFoolsClumsyFlav;
		now another-turn is 1;
		now another-turn-flavour is "It takes you a few moments to steady yourself in the dirt and find your hands.";
	otherwise:
		say "You yank at the vines holding one of [NameDesc of W][']s wrists and ankles and it loosens enough for [him of W] to fall free.";
		if the vine-scene of W is 1:
			if the favour of W >= 15, say "[BigNameDesc of W] gives you a big tight hug.[line break][speech style of W]'Thanks a bunch, hun! I don't think I could have escaped them without you.'[roman type][line break][big he of W] takes hold of your arm, as if [he of W] feels safe when [he of W][']s around you.";
			otherwise say "[BigNameDesc of W] gives you a reluctant smile.[line break][speech style of W]'I guess I have to say thank you for saving me.'[roman type][line break]";
			FavourUp W;
		otherwise if the vine-scene of W is 2:
			say "[BigNameDesc of W] dusts [himself of W] down.[line break][speech style of W]'[if the favour of W >= 15]Phew! for a moment there I thought you were going to let it torture me[otherwise]What took you so long[end if].'[roman type][line break]";
		otherwise if the vine-scene of W is 3:
			if the favour of W >= 13:
				let S be a random off-stage snack;
				say "[BigNameDesc of W] harrumphs.[line break][speech style of W]'I can't believe you blackmailed me like that... Fine, take this.'[roman type][line break][big he of W] gives you one [printed name of S].";
				now S is carried by the player;
			otherwise:
				say "[BigNameDesc of W] harrumphs.[line break][speech style of W]'I can't believe you blackmailed me like that... Fuck you, I'm not giving you anything.'[roman type][line break]";
			FavourDown W;
		otherwise if the vine-scene of W is 4:
			if the favour of W >= 13:
				let S be a random off-stage snack;
				let J be a random off-stage plentiful accessory;
				now J is pure diamond;
				set shortcut of J;
				say "[BigNameDesc of W] growls.[line break][speech style of W]'I can't believe you took advantage of me like that. I thought I was going to go crazy... Fine, take these, you bitch.'[roman type][line break][big he of W] gives you one [printed name of S] and a [printed name of J].";
				now S is carried by the player;
				now J is in the location of the player;
				compute autotaking J;
				WomanSluttify;
			otherwise:
				say "[BigNameDesc of W] harrumphs.[line break][speech style of W]'I can't believe you took advantage of me like that. I thought I was going to go crazy... Fuck you, I'm not giving you anything.'[roman type][line break]";
			FavourDown W;
		now the vine-scene of W is 6.

Chapter - Hotel Urinal Scene

Report going when the player is in Hotel31 and watersports fetish is 1 and the woman-bimbo of woman-player is 4 and the hotel-urinal-scene of woman-player is 0:
	if debugmode is 1, say "Checking if Berri can appear.";
	if the number of monsters in the location of the player is 0 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 93;
		now woman-player is in Holding Pen;
		let M be a random alive undefeated wrestler;
		now the hotel-urinal-scene of woman-player is 1;
		say "[bold type]As you arrive here, a rather shocking sight greets you. [roman type]";
		if M is wrestler:
			now M is in Holding Pen;
			say "[BigNameDesc of M] and [NameDesc of woman-player] are both bound in latex bodysuits with incredibly thick diaper bulges at the crotch. They are bound in place in the urinals, their legs locked in a fully bent position by thigh binds, and their arms bound behind their backs. The padlocks holding their bondage straps together all have digital displays, suggesting that they are controlled electronically. Wand vibrators anchored in the bases of the urinals are pressed tightly against their genitals through their thick padding, buzzing away powerfully. Nose hooks and ring gags keep their mouths and nostrils wide open at all times. Digital panels fastened to the front of their diaper bulges have loading bars displayed above four red padlock symbols. Your best guess is that their bondage will only unlock once their diapers are filled to capacity, which is somehow being measured by those digital panels. A genius and cruel predicament, as this will require them to drink any and all [urine] they can in order to fill their stomachs and bladders. As it stands, [NameDesc of woman-player][']s loading bar seems about 60% full, whereas [NameDesc of M][']s loading bar is already 80% full.[paragraph break]Both of them notice you as soon as you walk in, and they both immediately begin trying to communicate with you through their ring gags.[line break][speech style of woman-player]'Pleesh... Pee inshide my mout... I wan to dink your pee!'[roman type][line break][BigNameDesc of woman-player] begs you as loudly as possible. [BigNameDesc of M] quickly tries to supersede [him of woman-player].[line break][speech style of M]'Yesh... Pee inshide my mout... I wan to drink all your hot pish!'[roman type][line break]It would seem that if you were to [bold type]urinate[roman type] in a urinal here, you would be able to choose which request to fulfil.";
		otherwise:
			say "[BigNameDesc of woman-player] is bound in a pink latex bodysuit with an incredibly thick diaper bulge at [his of woman-player] crotch. [big he of woman-player] is bound in place in a urinal, [his of woman-player] legs locked in a fully bent position by thigh binds, and [his of woman-player] arms bound behind [his of woman-player] back. The padlocks holding [his of woman-player] bondage straps together all have digital displays, suggesting that they are controlled electronically. A wand vibrator anchored in the base of the urinal is pressed tightly against [his of woman-player] genitals through [his of woman-player] thick padding, buzzing away powerfully. A nose hooks and ring gag keeps [his of woman-player] mouth and nostril wide open at all times. A digital panel fastened to the front of [his of woman-player] diaper bulge has a loading bar displayed above four red padlock symbols. Your best guess is that [his of woman-player] bondage will only unlock once [his of woman-player] diaper is filled to capacity, which is somehow being measured by those digital panels. A genius and cruel predicament, as this will require [him of woman-player] to drink any and all [urine] [he of woman-player] can in order to fill [his of woman-player] stomach and bladder. As it stands, [NameDesc of woman-player][']s loading bar seems about 60% full.[paragraph break][big he of woman-player] notices you as soon as you walk in, and [he of woman-player] immediately begins trying to communicate with you through [his of woman-player] ring gag.[line break][speech style of woman-player]'Pleesh... Pee inshide my mout... I wan to dink your pee!'[roman type][line break][BigNameDesc of woman-player] begs you as loudly as possible.".

To compute WrestlerUrinalCompletion:
	let M be a random wrestler in Holding Pen;
	if M is monster:
		say "DING! It's not long before [NameDesc of M][']s loading bar reaches 100% and [his of M] bondage falls away. [big he of M] pulls [himself of M] out of [his of M] urinal prison and begins to crawl away, moaning softly to [himself of M] as [he of M] does, [his of M] overfull diaper squelching loudly with every movement.";
		now M is in Hotel01;

An all time based rule (this is the berri urinal rule):
	if the hotel-urinal-scene of woman-player > 0:
		increase hotel-urinal-scene of woman-player by 1;
		if hotel-urinal-scene of woman-player > a random number between 4 and 7:
			let M be a random wrestler in Holding Pen;
			if the woman-status of woman-player is 93:
				if the player is in Hotel31:
					if the hotel-urinal-scene of woman-player <= 10:
						say "[bold type]Suddenly, a large group of hotel patrons enter the room. [roman type]They laugh at [if M is monster]the two diapersuited human urinals[otherwise][NameDesc of woman-player][end if], and then unzip their pants. [if M is monster]Both human urinals are[otherwise][big he of woman-player] is[end if] soon being doused in countless streams of [urine], doing [if M is monster]their[otherwise][his of woman-player][end if] best to catch and gulp down as much as possible.";
						compute WrestlerUrinalCompletion;
						say "[BigNameDesc of woman-player] has now swallowed a huge amount of [urine] but seems to need to wait for it to make it to [his of woman-player] bladder. Meanwhile, the vibrating wand continues to [if the hotel-urinal-scene of woman-player is 10]melt [his of woman-player] mind with insanely[otherwise]stimulate [his of woman-player] [genitals] with[end if] powerful vibrations. You can't help but get turned on.";
					otherwise:
						say "The vibrating wand continues to [if the hotel-urinal-scene of woman-player is 10]melt [NameDesc of woman-player][']s mind with insanely[otherwise]stimulate [NameDesc of woman-player][']s [genitals] with[end if] powerful vibrations. You can't help but get turned on.";
					arouse 1000;
					if newbie tips is 1, say "[newbie style][WomanName] will be able to escape once you leave the room.[roman type][line break]";
				otherwise:
					if Hotel31 is nearby, say "[bold type]Looking through to the neighbouring room, you see that [WomanName] has finally managed to fill [his of woman-player] diaper and get [himself of woman-player] free.[roman type][line break]";
					vanish woman-player;
					now the woman-status of woman-player is 1;
					if the hotel-urinal-scene of woman-player < 10, womanSluttify; [if you didn't piss on her yourself, she's getting sluttified]
			if M is monster, now M is in Hotel01;
		otherwise if the player is in Hotel31:
			say "The wand vibrators continue to buzz away. Loud sexual moans fill the room. You can't help but get turned on.";
			arouse 1000;

Chapter - Hotel Chair Scene

Report going when the player is in Hotel21 and Hotel21 is not discovered:
	if the number of monsters in Hotel21 is 0 and the woman-bimbo of woman-player < 6 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 5;
		say "You walk into the staff room to discover [NameDesc of woman-player] sitting on one of the chairs, the pink straps holding [him of woman-player] in place. You hear [his of woman-player] voice speaking to you.[line break][speech style of woman-player]'[if the player is presenting as female]NANA! NANA![otherwise]DADA! DADA![end if] Look at me, I'm safe and sound on my big girl chair! Watch me go potty in my Pampies!'[roman type][line break][BigNameDesc of woman-player] looks round in confusion.[line break][speech style of woman-player]'What?! I didn't say that!'[roman type][line break]";
		if diaper messing >= 4 and the woman-bimbo of woman-player is 5:
			say "But then you hear a loud squelching sound as [NameDesc of woman-player] loudly messes [his of woman-player] diaper in front of you. [big he of woman-player] turns bright red and has a mixture of shock and shame on [his of woman-player] face.";
		otherwise:
			say "But then you hear a loud hissing sound as [NameDesc of woman-player] loudly wets [himself of woman-player] in front of you. [if the woman-bimbo of woman-player is 2][big he of woman-player] must be wearing a diaper under [his of woman-player] outfit, because nothing is leaking out from underneath [his of woman-player] dress. [end if][big he of woman-player] turns bright red and has a mixture of shock and shame on [his of woman-player] face.";
		say "[speech style of woman-player]'Oh... Oh no...'[roman type][line break]";
		now woman-player is in the location of the player;
		now woman-player is interested;
		resolve diaper use of woman-player;
		say "The straps holding [NameDesc of woman-player] in place then unlock themselves, releasing [him of woman-player].[line break][speech style of woman-player]'Please... can we just pretend that never happened...'[roman type][line break]".

Chapter - Mechanic Scene

Report going when there is an uninterested mechanic in the location and the mechanic-scene of woman-player is 0:
	if debugmode is 1, say "Checking if berri can appear.";
	if the number of monsters in the location of the player is 1 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 91;
		now woman-player is in the location of the player;
		now woman-player is interested;
		now mechanic is interested;
		anger mechanic;
		say "As you arrive here you see that [NameDesc of woman-player] is here on [his of woman-player] knees, with [NameDesc of mechanic] pinning [him of woman-player] down. [big he of mechanic] is holding a wand vibrator to [NameDesc of woman-player][']s genitals through [his of woman-player] [if the woman-bimbo of woman-player > 2]padding[otherwise]outfit[end if].";
		follow the mechanic tortures berri rule.

This is the mechanic tortures berri rule:
	if the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3 and woman-player is in the location of the player and mechanic is unfriendly:
		let W be woman-player;
		let M be mechanic;
		increase the mechanic-scene of W by 1;
		if the mechanic-scene of W is 1:
			say "[BigNameDesc of M] gives you a brief look.[line break][speech style of M]'Don't interrupt me and I'll make it worth your while.'[roman type][line break][big he of M] holds a golden ring in the air, and then turns [his of M] attention back to [NameDesc of W]. It looks like you could attack [NameDesc of M] to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
			now M is guarding;
			now woman-player is guarding;
		otherwise if the mechanic-scene of W is 2:
			say "[BigNameDesc of M] chuckles.[line break][speech style of M]'Yes that's right, you dumb baby. Nobody's coming to save you. And all it took was a tiny bribe for your little [']friend['] over there to [pussy] out.'[roman type][line break][big he of M] starts spanking [NameDesc of W], causing [him of W] to squeal in a mixture of pain and pleasure.";
		otherwise if the mechanic-scene of W is 3:
			say "[BigNameDesc of M] spanks [NameDesc of W] harder and harder as [he of W] nears orgasm.[line break][speech style of M]'Is my little perverted baby gonna cum during [his of W] spankings?'[roman type][line break]";
		otherwise if the mechanic-scene of W is 4:
			let J be a random off-stage plentiful ring;
			now J is solid gold;
			set shortcut of J;
			now J is in the location of the player;
			say "[BigNameDesc of W] wails as [he of W] cums, [his of W] legs visibly shaking as the powerful climax flows through [his of W] body. [big he of M] removes the wand vibrator from its position lodged against [NameDesc of W][']s crotch and clicks it off, smirking at [him of W]. But [NameDesc of W] is looking directly at you, with dismay in [his of W] eyes.[line break][speech style of W]'Really?'[roman type][line break]That's all [he of W] manages before [he of W] passes out. [BigNameDesc of M] drops the [J] in front of you.[line break][speech style of M]'Money well spent.'[roman type][line break]";
			now the latest-appearance of M is the appearance of the player; [to stop him suddenly noticing the player and deciding to bang]
			satisfy mechanic;
			now mechanic is unleashed;
			now W is unleashed;
			WomanSluttify;
			FavourDown W;
			now the sleep of W is 300;
			compute autotaking J;
		rule succeeds.
The mechanic tortures berri rule is listed first in the mechanic priority attack rules.

Chapter - Dominatrix Contraption Scene

Understand "fucking", "machine", "box", "pink dildo", "rope", "ropes", "pulley", "pulleys", "spring", "springs", "glue", "glove", "gloves" as woman-player when the woman-status of woman-player is 93.

Report going when the player is in Hotel37 and the dominatrix-contraption-scene of woman-player is 0 and the player is an august 2020 diaper donator and the woman-bimbo of woman-player is 4 and (diaper messing >= 3 or watersports fetish is 1):
	if debugmode is 1, say "Checking if berri can appear.";
	if dominatrix is not in the location of the player and dominatrix is alive and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 93;
		now woman-player is in the location of the player;
		now woman-player is interested;
		say "As you arrive here you see that [NameDesc of woman-player] is here on [his of woman-player] back, tied up in a very unique contraption. [big he of woman-player] is bound to the wall with metal wristcuffs behind [his of woman-player] back. [big he of woman-player] is wearing a tight pink latex bodysuit around a massive diaper. Above [his of woman-player] head is a open-topped tank, slowly filling up with a [if watersports fetish is 1]yellow[otherwise]green[end if] liquid. The pipe above the tank which is feeding it with liquid has a sign next to it which reads '[if watersports fetish is 1]HOTEL URINALS DRAINAGE'[otherwise]SUPER-LAX DISPENSER'[end if]. The bottom of the tank drains down via a tube into [NameDesc of woman-player][']s mouth via an airtight tube gag. To make things worse, [his of woman-player] nostrils are also plugged by tubes with hollow corks - these two tubes join together and then go down into [his of woman-player] diaper.";
		say "The predicament is clear: [NameDesc of woman-player] can only breathe via [his of woman-player] mouth if the tank and connecting tube are empty of liquid, which will only be the case if [he of woman-player] drinks everything that comes out of the drainpipe. Otherwise, [he of woman-player] is forced to breathe through [his of woman-player] nose, meaning [he of woman-player][']ll be getting what oxygen [he of woman-player] can from within [his of woman-player] latex-clad megadiaper.".

A time based rule (this is the anal contraption predicament rule):
	if the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player <= 5 and woman-player is in the location of the player:
		let W be woman-player;
		increase the dominatrix-contraption-scene of W by 1;
		if the dominatrix-contraption-scene of W is 1:
			say "[BigNameDesc of W] sees you enter, and [his of W] expression changes from one of panic to one of urgency. You can barely make out the words [he of W] tries to communicate through [his of W] mouth-tube:[line break][speech style of W]'[NameBimbo], thank the stars! That cheeky dominatrix didn't like the tone of my voice and decided I needed to [']Learn how to not waste air.['] But I don't think I can take this! [big please], find a way to disarm this thing before it... well, you know...'[roman type][line break]But it's already too late. Some [if watersports fetish is 1][urine][otherwise]green laxative drink[end if] has already started to flow out of the drainpipe, flooding the tank above [NameDesc of W][']s head and cutting off [his of W] speech and airway. [BigNameDesc of W] holds [his of W] breath, refusing to suck up the liquid. For now.";
			say "You could [bold type]search[roman type] the box for a way to disarm it, or you could [bold type]wait[roman type] (or just leave), to not mess with the dominatrix's plans.";
		otherwise if the dominatrix-contraption-scene of W is 2:
			say "[BigNameDesc of W] groans in discomfort. [big he of W] can't hold [his of W] breath any longer, and begins to desperately try to breathe through [his of W] nose. When [he of W] quickly realises how little oxygen is available to [him of W] via this avenue, [he of W] whines and then reluctantly begins to suck the [if watersports fetish is 1][urine][otherwise]green laxative drink[end if] through the tube towards [his of W] mouth. [big he of W] audibly gags in disgust when [he of W] tastes it on [his of W] tongue.";
		otherwise if the dominatrix-contraption-scene of W is 3:
			say "[BigNameDesc of W] grunts with further shame and disgust as [he of W] gulps and sucks and swallows more and more of the [if watersports fetish is 1][urine][otherwise]green laxative drink[end if], attempting to earn a clear airway once again. Finally [he of W] succeeds in emptying the tank and tube, and begins to desperately fill [his of W] lungs through the now clear airway.";
		otherwise if the dominatrix-contraption-scene of W is 4:
			say "[speech style of W]'Uh-oh...'[roman type][line break]Disaster strikes as with a loud [if diaper messing >= 3]BRRRRT[otherwise]hiss[end if], [NameDesc of woman-player] soils [himself of W] and fills [his of W] superthick diaper with a large helping of [if diaper messing >= 3]stinky mess[otherwise][urine][end if]. You can't smell a thing, which you realise probably means that the entire odour is being well-contained within [NameDesc of woman-player][']s rubber prison.";
		otherwise if the dominatrix-contraption-scene of W is 5:
			say "The situation for [NameDesc of W] goes from bad to worse as a noise in the drain heralds the arrival of a new batch of [if watersports fetish is 1][urine][otherwise]green laxative drink[end if].[speech style of W]'Gaaaah...'[roman type][line break][BigNameDesc of W] is once again cut off by the liquid filling the tank, not only stopping [him of W] from speaking but also from breathing through [his of W] mouth. Once again needing to breathe through [his of W] nose, [NameDesc of W][']s face goes red as [he of W] is forced to experience the full scent of [his of W] soiled padding. But there's nothing for it but to breathe it all in, getting as much oxygen as [he of W] can through [his of W] own [if diaper messing >= 3]filth[otherwise][urine][end if]. At the same time, [he of W] begins once again desperately sucking and swallowing, hoping to once again gain access to fresh air.";
			increase the delayed sluttification of W by 1;
		otherwise if the dominatrix-contraption-scene of W is 6:
			say "[speech style of W]'Fbbbbrt... Fgaaahh... Can't think!'[roman type][line break]After finally emptying the tank and tube, that's all [NameDesc of W] manages to say in between deep breaths before the drainpipe unleashes a third serving of [if watersports fetish is 1][urine][otherwise]green laxative drink[end if] into the tray. [if watersports fetish is 1 and diaper messing >= 3][BigNameDesc of W] soils [himself of W] with a second helping of mess as [he of W] begins to breathe through [his of W] nose once again[otherwise]Forced to breathe through [his of W] nose once again, [NameDesc of W] begins to choke and gag between every gulp[end if]. [big his of W] eyes begin to roll into the back of [his of W] head. You watch the liquid level in the tank slowly lower as [NameDesc of W] forces [himself of W] to swallow gulp after gulp of the digusting stuff. Finally it's empty again, but now for some reason [NameDesc of W][']s breathing seems less desperate and more steady? You look at [NameDesc of W][']s face to see how [he of W][']s handling the sensation... Oh. [big he of W] has already passed out.";
			now the sleep of W is 200;
			increase the delayed sluttification of W by 1;
			if dominatrix is in the location of the player:
				say "[BigNameDesc of dominatrix] laughs playfully and claps [his of dominatrix] hands as if this was just a fun little joke you were all in on. Retrieving a key, [he of dominatrix] removes [NameDesc of W][']s bondage and lies [him of W] down on the ground. But [he of dominatrix] doesn't remove the tube connecting [NameDesc of W][']s corked nostrils from [his of W] soiled diaper.[line break][speech style of dominatrix]'[big he of W][']ll be fine sleeping like that, don't you think? It'll be a nice surprise when [he of W] wakes up.'[roman type][line break]";
				satisfy dominatrix.

Check searching woman-player when the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player < 6:
	if the player is at least partially immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the traitor-hypno of hypno-lesson > 0 and the dominatrix-contraption-scene of woman-player <= 2:
		decrease the traitor-hypno of hypno-lesson by 1;
		allocate 6 seconds;
		say "Something inside you urges you to [second custom style]help your friend[roman type] instead. You walk up and give the front of [his of woman-player] diaper a loving rub. [big he of woman-player] looks at you like [he of woman-player][']s seen a ghost." instead;
	if the player is upright, try kneeling;
	if the player is upright: [Just in case]
		now the stance of the player is 1;
		say "You are now on your knees.";
	allocate 6 seconds;
	increase the dominatrix-contraption-search of woman-player by 1;
	if a random number between 1 and the intelligence of the player > 10, increase the dominatrix-contraption-search of woman-player by 1;
	if the dominatrix-contraption-scene of woman-player <= 1:
		say "You check to see if the tank can be moved so the drainpipe is no longer emptying itself into it. Unfortunately, it's completely stuck in place.";
	otherwise if the dominatrix-contraption-scene of woman-player is 2:
		say "You try to remove [his of woman-player] nose plugs but are dismayed to find they're somehow stuck in place, either with glue or magic!";
	otherwise:
		say "[one of]You decide the only way you can help [him of woman-player] is to somehow disconnect the tank from [his of woman-player] mouth. [or][stopping]";
		if the dominatrix-contraption-search of woman-player < 4:
			say "You fumble with the end secured in [his of woman-player] gag but it's really tight! You haven't made much progress yet.";
		otherwise if the dominatrix-contraption-search of woman-player is 4:
			say "You manage to loosen something! It looks like it should twist now. One more try and [he of woman-player] should be able to escape!";
		otherwise:
			say "You've done it! You've removed the tube from [his of woman-player] mouth! [big he of woman-player] breathes a big sigh of relief.[line break][speech style of woman-player]'I can breathe! Thank you so much [NameBimbo], I owe you my sanity! I wish I had something to give you, but...'[roman type][line break][NameDesc of woman-player] shrugs as best as [he of woman-player] can what with [his of woman-player] hands still bound behind [him of woman-player], to emphasise the point that [he of woman-player] doesn't have anything of value right now.[line break][speech style of woman-player]'I've got to come up with a good apology for the dominatrix now. Wish me luck.'[roman type][line break]";
			FavourUp woman-player by 3;
			say "Thanks to solving the situation, you now feel much [smarter]!";
			IntUp 3;
			now the dominatrix-contraption-scene of woman-player is 7;
	if the dominatrix-contraption-scene of woman-player < 7, compute DominatrixInterruption;
	do nothing instead.

To compute DominatrixInterruption:
	if clumsy april fools is 1 or dominatrix is in the location or dominatrix is in the room east from the location or (a random number between 1 and 10) is 1:
		let M be dominatrix;
		now M is in the location of the player;
		now M is interested;
		anger M;
		say "[bold type][if clumsy april fools is 1]You accidentally knock two pulleys into each other, which make a loud metal CLANG! [roman type][aprilFoolsClumsyFlav][bold type]Moments later[otherwise]All of a sudden,[end if] [NameDesc of M][bold type] [if dominatrix is in the location of the player]bursts into a fit of rage[otherwise]arrives from the east[end if]![line break][speech style of M]'WHAT HAVE WE HERE? Did I give you permission to interfere in my affairs?! I saw what you were trying to do. Oh [honey of M], you're going to regret that.'[roman type][line break]";
		now the stance of the player is 1;
		compute spanking of M;
		now M is stalled.

To say WomanCraftSceneFlav:
	say "You see [NameDesc of woman-player] is here, in the middle of crafting a potion. As you approach, [he of woman-player] turns to face you, holding a small vial full of a brightly glowing pink liquid.[line break][speech style of woman-player]'Oh hey [NameBimbo], I almost didn't notice you there! I have no idea what this will do but look how strong it's glowing - I bet it'll be powerful! Do you want to try it? If you don't, I'll be the guinea pig myself!'[roman type][line break][big he of woman-player] offers you the pink vial.";
	cutshow Figure of Berri Cutscene 3 for woman-player.

Chapter - Diaper Pail Scene

woman-player has a number called pail-scene.

Report going when there is a diaper pail in the location and the pail-scene of woman-player is 0 and the player is an october 2020 diaper donator and the woman-bimbo of woman-player is 4:
	if debugmode is 1, say "Checking if berri can appear.";
	let M be a random regional monster carrying a soiled-diaper;
	if woman-player is redeploy appropriate and M is monster:
		deploy woman-player with woman-status 98;
		now the pail-scene of woman-player is 1;
		now woman-player is in the location of the player;
		now woman-player is interested;
		say "As you arrive here you see [NameDesc of woman-player][']s legs flailing out the top of a diaper pail, its lid wide open. It looks like [he of woman-player][']s stuck! And judging by the horrid smell coming from within, you can imagine what [he of woman-player] is surrounded by. You could try to rescue [him of woman-player] by [bold type]pull[roman type]ing [him of woman-player].".

Check pulling woman-player when the woman-status of woman-player is 98:
	if the player is immobile, say "You're a bit busy!" instead;
	if the player is prone, say "You would need to stand up first." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the player is in danger, say "You can't do that in the middle of combat!" instead;
	allocate 6 seconds;
	if a random number between the strength of the player and 30 > 20:
		let M be a random regional monster carrying a soiled-diaper;
		say "You succeed in lifting [NameDesc of woman-player] out of [his of woman-player] stinky prison.[line break][speech style of woman-player]'Thank you so much for saving me, [NameBimbo][if M is monster]! The awful [MediumDesc of M] found a stinky diaper left lying around the [playerRegion] and thought it was mine! But it wasn't, I promise[end if]!'[roman type][line break]";
		if M is monster:
			repeat with SD running through soiled-diaper carried by M:
				destroy SD;
		now the woman-status of M is 1;
	otherwise:
		say "You try to lift [NameDesc of woman-player] out of the diaper pail but [he of woman-player] is so heavy! You don't manage it this time. Meanwhile, the smell of the stinky used diapers inside fills your nostrils, overwhelming you.";
		DiaperAddictUp 1.

Part 5 - Protection

To compute protection of (M - woman-player):
	let X be M;
	repeat with U running through dangerous monsters in the location of the player:
		now X is U;
	if the player is flying:
		now M is uninterested;
	otherwise if X is M:
		if the woman-status of M is 96 and the patron-scene-done of M is 1 and M is in the location of the player:
			compute patron scene climax of M;
		otherwise:
			compute wandering of M;
	otherwise:
		compute M protecting against X;

To compute (M - woman-player) protecting against (X - a monster):
	if the woman-status of M >= 80:
		do nothing;[Berri was spawned to get fucked, not fight.]
	otherwise if the woman-bimbo of M > 5:
		say "[BigNameDesc of M] giggles.[line break][speech style of M]'Have fun, I won't get in your way!'[roman type][line break]";
		deinterest M;
	otherwise if the player is monster stuck:
		say "[BigNameDesc of M] sobs.[line break][speech style of M]'I'm so sorry, I couldn't stop [him of X]!'[roman type][line break][big he of M] runs off.";
		deinterest M;
		womanSluttify;
		Vanish M;
		if a random number between 1 and 2 is 1 and the woman-bimbo of M < 6, increase the woman-bimbo of M by 1;
	otherwise:
		let prev-health be the health of X;
		let R be a random number from 1 to 3;
		decrease R by the woman-diaper-state of M;
		if R > 0:
			say "[BigNameDesc of M] [if the woman-diaper-state of M > 0]knees[otherwise][one of]knees[or]kicks[purely at random][end if] [NameDesc of X][if the woman-diaper-state of M > 0], but [his of M] soiled diaper gets in the way and reduces [his of M] power[end if]!";
			decrease the health of X by R;
			if prev-health is the maxhealth of X, say AllyInstigated of X;
		otherwise:
			say "[BigNameDesc of M] tries to kick [NameDesc of X], but [his of M] soiled diaper prevents [him of M] from being able to maintain enough balance to get any power behind [his of M] foot!".

Part 6 - Combat

Section 0 - Punishment

This is the woman unique punishment rule:
	let M be woman-player;
	let J be the biggest held jewel;
	let P be a random eligible piercing;
	let G be a random regional glue;
	if playerRegion is Hotel and P is piercing and P is actually summonable:
		unless modification machine is in the location of the player:
			drag to Hotel02 by M;
		say "[big he of M] forces you onto the [ShortDesc of modification machine]! [PiercingFlav of P]";
		summon P cursed;
		say "[speech style of M]'Hahaha, that looks so ridiculous! Serves you right.'[roman type][line break]";
	otherwise if playerRegion is Woods and vine boss is alive:
		drag to Woods16 by M;
		say "[speech style of M]'Have fun, [if the woman-bimbo of M < 5]bitch.'[otherwise]*giggle*'[end if][roman type][line break][big he of M] pushes you down the hole.";
		now the player is in WoodsBoss01;
		if another-turn-flavour is "", now another-turn-flavour is the substituted form of "It takes you a moment to recover from the fall.";
		now another-turn is 1;
	otherwise if playerRegion is Dungeon and G is glue:
		say "[speech style of M]'[if the woman-bimbo of M < 5]Do you regret making an enemy of me yet?'[otherwise]This is my favourite spot down here! Enjoy!'[end if][roman type][line break][big he of M] pushes you into the glue.";
		increase the times-stuck of G by 1;
		now the player-motion of the player is 0;
		now G is grabbing the player;
		now the stickiness of the player is 2 + a random number between 1 and the glue-strength of G / 4;
		now the smell-duration of G is 4;
	otherwise if the woman-bimbo of M < 5 and J is plentiful accessory:
		say "[BigNameDesc of M] yanks the [J] from your [if J is carried and there is a worn bag of holding][ShortDesc of a random worn bag of holding][otherwise if J is carried]hands[otherwise if J is necklace]neck[otherwise if J is bracelet]wrist[otherwise]finger[end if]![line break][speech style of M]'This is mine now.'[roman type][line break]";
		now M is carrying J;
	otherwise:
		say "[BigNameDesc of M] lowers [his of M] bottom onto your face. [if the woman-bimbo of M < 3]Yep, turns out that [he of M] is diapered under there. [end if][big his of M] thick padding gently touches the tip of your nose.";
		if face is not actually occupied, say "[line break][speech style of M]'[if the woman-bimbo of M < 5]Rub your face into my diaper, [cunt]. Show me you admit defeat.'[otherwise]Wanna smell?'[end if][roman type][line break]Do you rub your face in [NameDesc of M][']s diaper? ";
		if face is not actually occupied and the player is bimbo consenting:
			say "You [if the diaper addiction of the player < 7]reluctantly[otherwise if the diaper addiction of the player < 14]obediently[otherwise]happily[end if] rub your face [his of M] crinkly padding, [if the player is not a pervert]wincing with shame[otherwise if the player is not a nympho]and start to get turned on[end if] when [he of M] sighs with pleasure. ";
			if the raw delicateness of the player < the raw diaper addiction of the player:
				say "You feel a bit more submissive for having done that.";
				increase the raw delicateness of the player by 1;
			otherwise:
				DiaperAddictUp 1;
		otherwise:
			say "[speech style of M]'[if face is not actually occupied and the woman-bimbo of M >= 5]Fine, I guess you'll just have to sit there and watch!'[otherwise if the woman-bimbo of M >= 5]Look how squishy it is!'[otherwise if face is actually occupied]Take a close look, bitch. This is what you're gonna be grinding your face into one of these days soon.'[otherwise]How rebellious. Are you sure you don't want a smell?'[end if][roman type][line break][big he of M] pushes both hands into the seat of [his of M] butt, causing it to make loud plastic rustling sounds, and wet squelching sounds underneath. [big he of M] moans loudly in pleasure as [he of M] keeps pleasuring [himself of M] through [his of M] nappy. [if the player is not a nympho]You find yourself becoming desensitised to such lewd displays - it's pretty normal for this kind of game[otherwise]You find yourself staring deep inside with glee and wonder in your eyes[end if]. [big he of M] brings [himself of M] to a screaming orgasm through [his of M] padding, right in front of your face. [big he of M] laughs and then stands back up.";
			SexAddictUp 1;
	satisfy M.

Section 1 - Fighting

To say MonsterTripAnnounceFlav of (M - woman-player):
	say "[BigNameDesc of M] [if the woman-bimbo of M < 4]shifts [his of M] weight and goes for a slide tackle[otherwise if the woman-bimbo of M < 6]grabs your shoulders and tries to hook a foot behind your ankle[otherwise]drops to [his of M] knees and after greedily staring at your crotch for a moment, tries to grab your legs and squeeze them together[end if]!".

To compute (M - woman-player) striking (B - face):
	unless the woman-bimbo of M < 3 and the delayed sluttification of M is 0, BodyRuin 2.

To compute striking success effect of (M - woman-player) on (B - face):
	if the woman-bimbo of M < 3 and the delayed sluttification of M is 0:
		FaceFill milk by 6;
		now another-turn-flavour is the substituted form of "You are still recoiling from being blinded with [milk].";
		now another-turn is 1;
		womanSluttify.

To say StrikingSuccessFlav of (M - woman-player) on (B - a body part):
	if B is face and the woman-bimbo of M < 3 and the delayed sluttification of M is 0:
		say "[BigNameDesc of M] growls and takes a step back. Aiming with a steady hand, [he of M] points [his of M] gun at your head.[line break][speech style of M]'This wasn't meant for you.'[roman type][line break]";
		say "A single moment of dread turns to surprise as a powerful burst of [milk] jets out of the nozzle and drenches your face, filling your mouth and blinding you!";
	otherwise if the woman-bimbo of M < 5:
		say "[BigNameDesc of M] [one of]winds up a big punch and smacks you[or]lands a karate chop[or]kicks you[at random] [TargetName of B]! Ouch!!";
	otherwise:
		say "[BigNameDesc of M] [one of]giggles as [he of M] [or]grins and [or][at random]spanks you [one of]hard [or][or][purely at random][TargetName of B]!";

Part 7 - Conversation

To say conventional greeting of (M - woman-player):
	if the woman-status of M is 0 and M is stranger:
		say FirstGreeting to M;
	otherwise:
		if the bimbo of the player < 4:
			say "'Hi again, [womanName].'";
		otherwise if the bimbo of the player < 8:
			say "'Hey there, [womanName] what's up?'";
		otherwise if the bimbo of the player < 10:
			say "'Hey hey [womanName], looking good!'";
		otherwise if the bimbo of the player < 12:
			say "'Hiya [womanName], damn you're looking so adorable!'";
		otherwise if the bimbo of the player < 15:
			say "'Ooh [womanName], you're turning me on, looking like that!'";
		otherwise:
			say "'Hey [womanName], want to play?'".

To compute basic greeting to (M - woman-player):
	if M is uninterested, check guaranteed perception of M; [This should make sure all flags and variable trackings are as normal for an NPC]
	if the woman-status of M is 0 and M is stranger:
		say "[speech style of M]'Oh shit! Wait... oh my god, are you another player? I didn't realise there was more than one of us playing at the same time! I wonder if we're allowed to work together? What's my name? People call me [']Berri['].'[roman type][line break]";
		if newbie tips is 1, say "[newbie style]Newbie tip: Berri is a special type of NPC, that under normal circumstances remains friendly throughout the entire course of the game, and will even fight alongside you, or appear to help you out of sticky situations. However if bad things happen, including if you lose a fight alongside [him of M], [he of M][']ll start to lose the game [himself of M], and become more babified. Also, sometimes when you bump into [him of M] [he of M][']ll be in the middle of a predicament, and you have to choose whether to help [him of M] or let it happen. Letting it happen usually either avoids the risk of bad stuff, or rewards you with powerful items. However, it'll continue Berri's progress towards becoming a diaper-addicted adult baby fetishist. A super-diaper-addicted Berri is a sort-of useless sidekick who can even do really unhelpful things like release the [ShortDesc of boogeymonster].[roman type][line break]";
		now M is introduced;
		now the text-shortcut of M is "bri";
	otherwise if the woman-status of M is 98:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3:
		say "[speech style of M]'EEEEEEEEEE!'[roman type][line break]";
	otherwise if M is angered:
		say "[speech style of M]'Why yes I would like to [if the woman-bimbo of M < 5]fight[otherwise]play[end if].'[roman type][line break]";
	otherwise if the woman-status of M is 0:
		if M is interested:
			say "[speech style of M]'I hate being alone in these woods...'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'Heya sweetums.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. Look who it is! Did you always look so adorable? I'm jealous!'[roman type][line break]";
	otherwise if the woman-status of M is 1:
		if M is interested:
			say "[speech style of M]'There are lots of people who want to keep us in diapers around here at the moment, aren't there?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'Heya sweetums.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. Look who it is! Did you always look so darn cute? I'm jealous!'[roman type][line break]";
	otherwise if the woman-status of M is 2 or the woman-status of M is 7:
		if the favour of M < the bondage-favour-limit of M:
			say "[speech style of M]'Karma's a bitch, but not as much of a bitch as you.'[roman type][line break]";
		otherwise if the woman-old-bimbo of M is the woman-bimbo of M:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'You should be more careful, bondage is really difficult to deal with.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[speech style of M]'Bondage might sound fun, but it really makes it a lot more difficult to play the game.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'You don't know how tempting it was to have my way with you before setting you free~'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'Heya sweetums.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. Look who it is! Did you always look so adorable? I'm jealous!'[roman type][line break]";
	otherwise if the woman-status of M is 3:
		if the woman-old-bimbo of M is the woman-bimbo of M:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'The boogeymonster is very tough. Now that it's released, you should probably get the hell out of here!'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[speech style of M]'I doubt you can take the boogeymonster. Unless you've got a bit of blind optimism like me, you should probably head back up to the woods.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'If you want to have some fun, stay down here with me!'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'Heya sweetums.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. Look who it is! Did you always look like that? I'm jealous!'[roman type][line break]";
	otherwise if the woman-status of M is 4:
		if M is interested:
			say "[speech style of M]'Hmm, robots are kind of exciting, I guess?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you've made it this far.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] beams at you.[line break][speech style of M]'Hey there, honey.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. Look who it is! Aren't you just LOVING this fetish hotel?'[roman type][line break]";
	otherwise if the woman-status of M is 5:
		say "[speech style of M]'[one of][if the woman-bimbo of M < 4]Let's not talk about what just happened okay? [big please]?'[otherwise if the woman-bimbo of M is 4]I can't believe I let you catch me in such a humiliating moment. Maybe I really am a pervert...'[otherwise]I feel so much better after sitting on that chair! Yum!'[end if][or][if the woman-bimbo of M < 4]Come on, let's try and find the exit to this crazy hotel.'[otherwise]Exploring the hotel with you is so much fun!'[end if][stopping][roman type][line break]";
	otherwise if the woman-status of M is 90:
		say "[speech style of M]'Let's keep away from those vines, shall we?'[roman type][line break]";
	otherwise if the woman-status of M is 94:
		if there is a revealed hypno trap in the location of M:
			say "[speech style of M]'Huh? Oh crap, another hypno trap! Let's get out of here!'[roman type][line break]";
			compute mandatory room leaving of M;
			now M is uninterested;
		otherwise:
			say "[speech style of M]'Those TV screens are so difficult to stop watching...'[roman type][line break]";
	otherwise if the woman-status of M is 95:
		say "[speech style of M]'Thank you so much for saving me from that toilet prison. It was on a timer and if nobody saved me within the next few minutes, it would have locked permanently!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm not sure I want to talk right now.'[roman type][line break]";
	now M is interested;
	now the woman-old-bimbo of M is the woman-bimbo of M;
	now the old-name of M is the current-name of M;
	now the old-title of M is the current-title of M.

talk-berri-question is a talk-object.

To consider (T - talk-berri-question) for (M - a monster):
	if M is woman-player and M is interested and M is not stranger:
		now the printed name of T is the substituted form of "[variable custom style][BerriQuestion][roman type][line break]";
		set next numerical response to the substituted form of "[printed name of T]";

To say BerriQuestion:
	let M be woman-player;
	if the woman-status of M is 0:
		if the woman-bimbo of M < 3:
			say "'How did you get that gun?'";
		otherwise if the woman-bimbo of M < 5:
			say "'How did you end up in here anyway?'";
		otherwise:
			say "'What happened to you?'";
	otherwise if the woman-status of M is 2 and the favour of M < the bondage-favour-limit of M:
		say "'Could I please use your skeleton key?'";
	otherwise if the woman-status of M is 3 or playerRegion is Dungeon:
		say "'Why are you back down here?'";
	otherwise if playerRegion is Hotel:
		say "'Why are you visiting the Hotel?'";
	otherwise:
		say "'Can we chat?'".

To execute (T - talk-berri-question) for (M - a monster):
	if the woman-status of M is 98:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3:
		say "[speech style of M]'EEEEEEEEEE!'[roman type][line break]";
	otherwise if M is angered:
		say "[speech style of M]'[if the player is upright]That's a great question. Let me answer it with my fist.'[otherwise]I don't think you're in the position to be the one asking questions right now, do you?'[roman type][line break]";
	otherwise if there is a revealed hypno trap in the location of M: [looking at hypno trap]
		say "[speech style of M]'Uuuuuuuuh...'[roman type][line break]";
	otherwise if the woman-status of M is 0:
		if the woman-bimbo of M < 3:
			say "[speech style of M]'You don't want to know what I had to do to get this gun.'[roman type][line break][big he of M] looks ashamed.";
		otherwise if the woman-bimbo of M < 5:
			say "[speech style of M]'I met this lovely woman called Hayley online, we began dating... and then she slowly started to expose me to certain new... kinks... in the bedroom. [one of]When I showed some resistance to wearing diapers for her, she tricked me into signing up to test this game. I think she knew exactly what sort of game it was...'[or]She wanted me to appreciate how sexy diapers could be... so she encouraged me to sign up for early access to this diaper themed virtual reality experience. What she DIDN'T tell me was that if I lose, I could become addicted to diapers, and maybe even incontinent...'[sticky random][roman type][line break]";
		otherwise:
			say "[speech style of M]'Lots of fun things, that's what!'[roman type][line break]";
	otherwise if the woman-status of M is 2 and the favour of M < the bondage-favour-limit of M:
		say "[speech style of M]'Fuck no. [one of]Why am I not giving you the key? Payback, of course. What else?'[or]Payback for what? You bloody well know what.'[or]Plead all you want, I'm not changing my mind.'[stopping][roman type][line break]";
	otherwise if the woman-status of M is 3:
		if the woman-bimbo of M < 5:
			say "[speech style of M]'Can you keep a secret? I may have pulled the lever for the [ShortDesc of boogeymonster]! Teehee!'[roman type][line break]";
		otherwise:
			say "[speech style of M]'To [']fight['] the [ShortDesc of boogeymonster], of course, silly!'[roman type][line break]";
	otherwise if playerRegion is Dungeon:
		if the woman-bimbo of M < 3:
			say "[speech style of M]'Well the shop and altar are often useful, and until the royal guards turn aggressive it's a bit safer than anywhere else.'[roman type][line break]";
		otherwise if the woman-bimbo of M < 5:
			say "[speech style of M]'Well the traps are less harsh, and that gladiator's milk is just so delicious...'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Well I wanted to see if I could beat up a royal guard. Turns out I can't, but don't worry, [he of a random royal guard] gave me a consolation prize! *giggle*'[roman type][line break]";
	otherwise if playerRegion is Hotel:
		if the woman-bimbo of M < 4:
			say "[speech style of M]'[one of]I'm still looking for the way out. I hope you haven't fallen into complete depravity yet, have you?'[or]I'd just had way too much trouble with those vines, so I came up here to get away from here. And now I have to deal with robots! Grr!'[cycling][roman type][line break]";
		otherwise:
			say "[speech style of M]'I'm earning some money by pretending to be an adult baby slave for hire! What about you?'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm sorry I don't really feel in the mood right now.'[roman type][line break]".

To compute friendly drink of (M - woman-player):
	if M is uninterested or M is stranger:
		say "[big he of M] doesn't seem to realise you're talking to [him of M].";
	otherwise if the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3:
		say "[speech style of M]'EEEEEEEEEE!'[roman type][line break]";
	otherwise if the woman-status of M is 98:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if M is angered:
		say "[speech style of M]'As if I'd help you!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm sorry, I've got nothing!'[roman type][line break]".

To compute friendly food of (M - woman-player):
	if M is stranger:
		say "[big he of M] doesn't seem to realise you're talking to [him of M].";
	otherwise if the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3:
		say "[speech style of M]'EEEEEEEEEE!'[roman type][line break]";
	otherwise if the woman-status of M is 98:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if M is angered:
		say "[speech style of M]'As if I'd help you!'[roman type][line break]";
	otherwise:
		say FriendlyFoodApologiseFlav of M.

Part - Unused Functions

To compute patron scene of (M - woman-player):
	do nothing.

To compute PlayerWomanStoolFuck:
	do nothing.

To compute contraption sex of (M - woman-player):
	do nothing.

To check woman toilet:
	do nothing.

To compute woman toilet release:
	do nothing.

To compute patron scene climax of (W - woman-player):
	do nothing.

fishbowl is a vessel. fishbowl is in Holding Pen.

Woman Berri ends here.
