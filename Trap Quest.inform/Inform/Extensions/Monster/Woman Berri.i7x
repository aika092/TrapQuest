Woman Berri by Monster begins here.

To construct unique buttons for (M - woman-player):
	if the changing-station-tank-scene of M > 0 and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of TakeAllButton;
		now the ButtonCommand entry is "pull rope";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is prone or the player is in danger, now the ButtonColour entry is lightModeFullYellow;
		if the player is immobile, now the ButtonColour entry is lightModeFullRed.

The current-name of woman-player is "Berri". The old-name of woman-player is "Berri".

To say MediumDesc of (M - woman-player):
	say "[if M is introduced][womanTitle] [womanName][otherwise]mysterious [man of M][end if]".

Figure of woman 1 is the file "NPCs/MultiFloor/berri/woman1.jpg".
Figure of woman 2 is the file "NPCs/MultiFloor/berri/woman2.jpg".
Figure of woman 2b is the file "NPCs/MultiFloor/berri/woman2b.jpg".
Figure of woman 2c is the file "NPCs/MultiFloor/berri/woman2c.jpg".
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
Figure of Berri Cutscene 4 is the file "NPCs/MultiFloor/berri/woman-cutscene4.jpg".
Figure of human toilet is the file "NPCs/MultiFloor/berri/woman-cutscene5.jpg".
Figure of Berri Cutscene 6a is the file "NPCs/MultiFloor/berri/woman-cutscene6a.jpg".
Figure of Berri Cutscene 6b is the file "NPCs/MultiFloor/berri/woman-cutscene6b.jpg".
Figure of Berri Cutscene 7 is the file "NPCs/MultiFloor/berri/woman-cutscene7.jpg".
Figure of Berri Cutscene 8 is the file "NPCs/MultiFloor/berri/woman-cutscene8.jpg".
Figure of Berri Cutscene 9 is the file "NPCs/MultiFloor/berri/woman-cutscene9.jpg".
Figure of Berri Cutscene 10a is the file "NPCs/MultiFloor/berri/woman-cutscene10a.jpg".
Figure of Berri Cutscene 10b is the file "NPCs/MultiFloor/berri/woman-cutscene10b.jpg".
Figure of Berri Cutscene 11a is the file "NPCs/MultiFloor/berri/woman-cutscene11a.jpg".
Figure of Berri Cutscene 11b is the file "NPCs/MultiFloor/berri/woman-cutscene11b.jpg".
Figure of Berri Cutscene 11c is the file "NPCs/MultiFloor/berri/woman-cutscene11c.jpg".
Figure of Berri Cutscene 11d is the file "NPCs/MultiFloor/berri/woman-cutscene11d.jpg".

To decide which figure-name is the monster-image of (M - woman-player):
	if M is caged and M is in the location of dominatrix-cage, decide on the examine-image of dominatrix-cage;
	if the dominatrix-contraption-scene of M > 0 and the dominatrix-contraption-scene of M < 6:
		if the dominatrix-contraption-scene of M < 4 or diaper messing < 3:
			if watersports fetish is 1, decide on Figure of Berri Cutscene 1a;
			otherwise decide on Figure of Berri Cutscene 1b;
		otherwise:
			if watersports fetish is 1, decide on Figure of Berri Cutscene 1c;
			otherwise decide on Figure of Berri Cutscene 1d;
	if the changing-station-tank-scene of woman-player > 0:
		if diaper messing >= 6, decide on figure of berri cutscene 10b;
		otherwise decide on figure of berri cutscene 10a;
	if the woman-bimbo of M < 3:
		if the ass-hook-scene of M > 0:
			if the ass-hook-scene of M > 3, decide on Figure of Berri Cutscene 6b;
			otherwise decide on Figure of Berri Cutscene 6a;
		decide on figure of woman 1;
	if the woman-bimbo of M is 3:
		if the woman-status of woman-player is 90 and the vine-scene of woman-player <= 4, decide on figure of woman 2b;
		if there is a revealed hypno trap in the location of M, decide on figure of woman 2c;
		decide on figure of woman 2;
	if the woman-bimbo of M is 4, decide on figure of woman 3;
	if the woman-bimbo of M is 5:
		if the woman-status of M is 98, decide on figure of woman 4e; [diaper pail]
		if M is soggy, decide on figure of woman 4b;
		if M is messy:
			if the woman-diaper-state of M is 1, decide on figure of woman 4c;
			decide on figure of woman 4d;
		if the woman-status of M is 81, decide on figure of berri cutscene 4; [hiding messed diaper]
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
				otherwise say "[BigNameDesc of M] squeaks and crosses [his of M] legs, but it's no use. [big he of M] is unable to stop [himself of M] from releasing [his of M] hold on [his of M] bladder.";
			resolve diaper use of M;
	if M is in the location of the player and the woman-diaper-state of M > the woman-latest-diaper-state of M:
		if M is messy and the woman-diaper-state of M < 3:
			say "[bold type][WomanName] now has [if the woman-diaper-state of M is 2]an insanely bulky hyper-messed[otherwise]a messy[end if] diaper.[roman type][line break]";
		otherwise if M is soggy and the woman-diaper-state of M is 1:
			say "[bold type][WomanName] now has a wet diaper.[roman type][line break]";
		now the woman-latest-diaper-state of M is the woman-diaper-state of M.

Definition: woman-player is willing to have her diaper changed:
	if the favour of woman-player < 15 and (woman-player is not messy or the woman-diaper-state of woman-player < 2), decide no;
	decide yes.

Check BabChanging woman-player with:
	if the woman-diaper-state of the noun is 0, say "[big he of the noun] isn't in need of that." instead.

Carry out BabChanging woman-player with:
	allocate 6 seconds;
	say "You try to guide [NameDesc of the noun] onto [his of the noun] back. ";
	if woman-player is not willing to have her diaper changed:
		say "[big he of the noun] resists.[line break][speech style of the noun]'H-Hey, not so fast! I don't want you to be my caregiver. I can stay like this for a while longer...'[roman type][line break]";
	otherwise:
		say "You get to work cleaning up [his of the noun] [if the noun is messy]messy[otherwise]soggy[end if] nappy and replacing it with [if the second noun is a diaper][NameDesc of the second noun][otherwise]a diaper from your [MediumDesc of the second noun][end if]. [if the woman-bimbo of the noun <= 5]You can tell [he of the noun] is really ashamed about[otherwise]You sense that [he of the noun] is completely unperturbed by[end if] [one of]having to be changed by you[or]the fact that you're intimately cleaning [his of the noun] genitals[or]your new dynamic as caregiver and baby[cycling]. Eventually [he of the noun][']s all clean and safely padded again.";
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

To decide which number is the zap damage improvement of (W - magic pistol):
	if the stomach-liquid of the player > 0:
		let S be the stomach-liquid of the player;
		if S > stomach-max, decide on stomach-max;
		decide on S;
	decide on -99.

To say PistolStomachLiquid:
	say "[one of]You are shocked to feel your stomach emptying of liquid! [if the total squirtable fill of belly > 0](but the liquid in your intestines is still there). [end if][or][stopping]".

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

To compute perception of (M - woman-player):
	if M is angered:
		say "[BigNameDesc of M] notices you![line break][speech style of M]'[one of][if the woman-bimbo of M < 5]You! How could you treat me so poorly?! I'm not going to let you get away with it any more!'[otherwise]Hey sexy. You've taught me some valuable lessons in how to be a good friend. I think it's time for me to return to favour...'[end if][or]You still haven't lost? Let's go again, then!'[or]Hi again, bitch.'[stopping][roman type][line break][big he of M] starts walking towards you.";
	otherwise if the woman-diaper-state of M > 0 and M is willing to have her diaper changed:
		say "[BigNameDesc of M] notices you![line break][speech style of M]'[if the woman-bimbo of M < 6][one of]Um, hi, do you have a spare diaper on you? I'm all out, and I really need a change. And I'm really worried that if I don't get one soon, I'm going to start getting a bit too used to this, haha[or]Hey again... I'm really sorry to keep bothering you, but you don't happen to have another diaper I could wear, do you[stopping][otherwise if M is messy]Berri did poopies[otherwise]Berri did tinkles[end if]...'[roman type][line break][big he of M] [if the woman-bimbo of M < 6]tries to squeeze [his of M] legs together to hide [his of M] soiled diaper as much as possible, but it's so mega-thick that [his of M] thighs are still wide apart[otherwise]squeezes [his of M] legs into the super-thick padding between [his of M] thighs as much as [he of M] can, clearly enjoying the sensation[end if].";
	otherwise:
		deinterest M. [Unless there has been a scene trigger, it's up to the player to interact with her]

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
		interest woman-player;
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
				VineSceneTransition;
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
	if the TrapNo of V >= 0 and woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 90;
		now woman-player is in the location of the player;
		interest woman-player;
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
		deploy woman-player with woman-status 101;
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
			if the woman-status of woman-player is 101:
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
	if the number of monsters in Hotel21 is 0 and the woman-bimbo of woman-player < 6 and woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 5;
		say "You arrive into the staff room to discover [NameDesc of woman-player] sitting on one of the chairs, the pink straps holding [him of woman-player] in place. You hear [his of woman-player] voice speaking to you.[line break][speech style of woman-player]'[if the player is presenting as female]NANA! NANA![otherwise]DADA! DADA![end if] Look at me, I'm safe and sound on my big girl chair! Watch me go potty in my Pampies!'[roman type][line break][BigNameDesc of woman-player] looks round in confusion.[line break][speech style of woman-player]'What?! I didn't say that!'[roman type][line break]";
		if diaper messing >= 4 and the woman-bimbo of woman-player is 5:
			say "But then you hear a loud squelching sound as [NameDesc of woman-player] loudly messes [his of woman-player] diaper in front of you. [big he of woman-player] turns bright red and has a mixture of shock and shame on [his of woman-player] face.";
		otherwise:
			say "But then you hear a loud hissing sound as [NameDesc of woman-player] loudly wets [himself of woman-player] in front of you. [if the woman-bimbo of woman-player is 2][big he of woman-player] must be wearing a diaper under [his of woman-player] outfit, because nothing is leaking out from underneath [his of woman-player] dress. [end if][big he of woman-player] turns bright red and has a mixture of shock and shame on [his of woman-player] face.";
		say "[speech style of woman-player]'Oh... Oh no...'[roman type][line break]";
		now woman-player is in the location of the player;
		interest woman-player;
		resolve diaper use of woman-player;
		say "The straps holding [NameDesc of woman-player] in place then unlock themselves, releasing [him of woman-player].[line break][speech style of woman-player]'[big please]... can we just pretend that never happened...'[roman type][line break]".

Chapter - Mechanic Scene

Report going when there is an uninterested mechanic in the location and the mechanic-scene of woman-player is 0:
	if debugmode is 1, say "Checking if berri can appear.";
	if the number of monsters in the location of the player is 1 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 91;
		now woman-player is in the location of the player;
		interest woman-player;
		interest mechanic;
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
			DifficultyUp mechanic by 1;
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

Report going when the player is in Hotel37 and the dominatrix-contraption-scene of woman-player is 0 and the woman-bimbo of woman-player is 4 and (diaper messing >= 3 or watersports fetish is 1):
	if debugmode is 1, say "Checking if berri can appear.";
	if dominatrix is not in the location of the player and dominatrix is alive and woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 93;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive here you see that [NameDesc of woman-player] is here on [his of woman-player] back, tied up in a very unique contraption. [big he of woman-player] is bound to the wall with metal wristcuffs behind [his of woman-player] back. [big he of woman-player] is wearing a tight pink latex bodysuit around a massive diaper. Above [his of woman-player] head is an open-topped tank, slowly filling with a [if watersports fetish is 1]yellow[otherwise]green[end if] liquid. The pipe above the tank which is feeding it with liquid has a sign next to it which reads '[if watersports fetish is 1]HOTEL URINALS DRAINAGE'[otherwise]SUPER-LAX DISPENSER'[end if]. The bottom of the tank drains down via a tube into [NameDesc of woman-player][']s mouth via an airtight tube gag. To make things worse, [his of woman-player] nostrils are also plugged by tubes with hollow corks - these two tubes join together and then go down into [his of woman-player] diaper.";
		say "The predicament is clear: [NameDesc of woman-player] can only breathe via [his of woman-player] mouth if the tank and connecting tube are empty of liquid, which will only be the case if [he of woman-player] drinks everything that comes out of the drainpipe. Otherwise, [he of woman-player] is forced to breathe through [his of woman-player] nose, meaning [he of woman-player][']ll be getting what oxygen [he of woman-player] can from within [his of woman-player] latex-clad megadiaper.".

A time based rule (this is the anal contraption predicament rule):
	if the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player <= 5:
		let W be woman-player;
		if W is in the location of the player:
			increase the dominatrix-contraption-scene of W by 1;
			if the dominatrix-contraption-scene of W is 1:
				say "[BigNameDesc of W] sees you enter, and [his of W] expression changes from one of panic to one of urgency. You can barely make out the words [he of W] tries to communicate through [his of W] mouth-tube:[line break][speech style of W]'[NameBimbo], thank the stars! That cheeky dominatrix didn't like the tone of my voice and decided I needed to [']Learn how to not waste air.['] But I don't think I can take this! [big please], find a way to disarm this thing before it... well, you know...'[roman type][line break]But it's already too late. Some [if watersports fetish is 1][urine][otherwise]green laxative drink[end if] has already started to flow out of the drainpipe, flooding the tank above [NameDesc of W][']s head and cutting off [his of W] speech and airway. [BigNameDesc of W] holds [his of W] breath, refusing to suck up the liquid. For now.";
				say "You could [bold type]search[roman type] the box for a way to disarm it, or you could [bold type]wait[roman type] (or just leave), to not mess with the dominatrix's plans.";
			otherwise if the dominatrix-contraption-scene of W is 2:
				say "[BigNameDesc of W] groans in discomfort. [big he of W] can't hold [his of W] breath any longer, and begins to desperately try to breathe through [his of W] nose. When [he of W] quickly realises how little oxygen is available to [him of W] via this avenue, [he of W] whines and then reluctantly begins to suck the [if watersports fetish is 1][urine][otherwise]green laxative drink[end if] through the tube towards [his of W] mouth. [big he of W] audibly gags in disgust when [he of W] tastes it on [his of W] tongue.";
			otherwise if the dominatrix-contraption-scene of W is 3:
				say "[BigNameDesc of W] grunts with further shame and disgust as [he of W] gulps, sucks, and swallows more and more of the [if watersports fetish is 1][urine][otherwise]green laxative drink[end if], attempting to earn a clear airway once again. Finally [he of W] succeeds in emptying the tank and tube, and begins to desperately fill [his of W] lungs through the now clear airway.";
			otherwise if the dominatrix-contraption-scene of W is 4:
				say "[speech style of W]'Uh-oh...'[roman type][line break]Disaster strikes as with a loud [if diaper messing >= 3]BRRRRT[otherwise]hiss[end if], [NameDesc of woman-player] soils [himself of W] and fills [his of W] superthick diaper with a large helping of [if diaper messing >= 3]stinky mess[otherwise][urine][end if]. You can't smell a thing, which you realise probably means the entire odour is being well-contained within [NameDesc of woman-player][']s rubber prison.";
			otherwise if the dominatrix-contraption-scene of W is 5:
				say "The situation for [NameDesc of W] goes from bad to worse as a noise in the drain heralds the arrival of a new batch of [if watersports fetish is 1][urine][otherwise]green laxative drink[end if].[speech style of W]'Gaaaah...'[roman type][line break][BigNameDesc of W] is once again cut off by the liquid filling the tank, not only stopping [him of W] from speaking but also from breathing through [his of W] mouth. Once again needing to breathe through [his of W] nose, [NameDesc of W][']s face goes red as [he of W] is forced to experience the full scent of [his of W] soiled padding. But there's nothing for it but to breathe it all in, getting as much oxygen as [he of W] can through [his of W] own [if diaper messing >= 3]filth[otherwise][urine][end if]. At the same time, [he of W] begins once again desperately sucking and swallowing, hoping to once again gain access to fresh air.";
				increase the delayed sluttification of W by 1;
			otherwise:
				say "[speech style of W]'Fbbbbrt... Fgaaahh... Can't think!'[roman type][line break]After finally emptying the tank and tube, that's all [NameDesc of W] manages to say in between deep breaths before the drainpipe unleashes a third serving of [if watersports fetish is 1][urine][otherwise]green laxative drink[end if] into the tray. [if watersports fetish is 1 and diaper messing >= 3][BigNameDesc of W] soils [himself of W] with a second helping of mess as [he of W] begins to breathe through [his of W] nose once again[otherwise]Forced to breathe through [his of W] nose once again, [NameDesc of W] begins to choke and gag between every gulp[end if]. [big his of W] eyes begin to roll up into the back of [his of W] head... Uh-oh, is this going to end badly?!";
				if dominatrix is not in the location of the player:
					say "[BigNameDesc of dominatrix] appears from the east!";
					now dominatrix is in the location of the player;
				say "[BigNameDesc of dominatrix] laughs playfully and claps [his of dominatrix] hands as if this was just a fun little joke you were all in on. Retrieving a key, [he of dominatrix] removes [NameDesc of W][']s bondage - and just in time, too.";
				if the number of caged monsters in the location is 0 and dominatrix-cage is not grabbing the player:
					compute dominatrix caging of woman-player;
					now the mess of dominatrix-cage is 1;
				if dominatrix is not dangerous, satisfy dominatrix;
		otherwise:
			increase the delayed sluttification of W by 1;
			now the dominatrix-contraption-scene of W is 6;
			if the number of caged monsters in the location of W is 0 and dominatrix-cage is not grabbing the player:
				now dominatrix is in the location of W;
				compute dominatrix caging of woman-player;
				now the mess of dominatrix-cage is 1.

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
			say "Thanks to solving [his of woman-player] situation, you now feel much [smarter]!";
			IntUp 3;
			now the dominatrix-contraption-scene of woman-player is 7;
	if the dominatrix-contraption-scene of woman-player < 7, compute DominatrixInterruption;
	do nothing instead.

To compute DominatrixInterruption:
	if clumsy april fools is 1 or dominatrix is in the location or dominatrix is in the room east from the location or (a random number between 1 and 10) is 1:
		let M be dominatrix;
		now M is in the location of the player;
		interest M;
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

Report going when there is a diaper pail in the location and the pail-scene of woman-player is 0 and the woman-bimbo of woman-player is 4:
	if debugmode is 1, say "Checking if berri can appear.";
	let M be a random regional monster carrying a soiled-diaper;
	if woman-player is relaxed redeploy appropriate and M is monster:
		deploy woman-player with woman-status 98;
		now the pail-scene of woman-player is 1;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive here you see [NameDesc of woman-player][']s legs flailing from the top of a diaper pail, its lid wide open. It looks like [he of woman-player][']s stuck! And judging by the horrid smell coming from within, you can imagine what [he of woman-player] is surrounded by. You could try to rescue [him of woman-player] by [bold type]pull[roman type]ing [him of woman-player].".

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

Chapter - Messy Diaper Scene

woman-player has a number called messy-diaper-scene.

Report going when there is a diaper pail in the location and the messy-diaper-scene of woman-player is 0 and the woman-bimbo of woman-player is 5 and diaper messing >= 6:
	if debugmode is 1, say "Checking if berri can appear.";
	if woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 81;
		now the messy-diaper-scene of woman-player is 1;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive here you see [NameDesc of woman-player] arriving from the other direction. It looks like [he of woman-player] spotted you first, and is hiding something behind [his of woman-player] back. And judging by the horrid smell coming from [him of woman-player], you can imagine what it is. [big he of woman-player] seems very embarrassed about it and no longer wants to put [his of woman-player] nasty used diaper into the diaper pail with you watching, clearly hoping [he of woman-player] can do it without having to let you properly see the monstrous messy memento behind [him of woman-player].[line break][speech style of woman-player]'Oh hi, [NameBimbo]! What's up? Me? There's nothing up with me! Nothing at all! I came in here for no reason at all...'[roman type][line break]".

Report going when the woman-status of woman-player is 81 and woman-player is alive:
	let L be the location of woman-player;
	if the location of the player is not L:
		if there is a diaper pail in L:
			if woman-player is nearby, say "Out of the corner of your eye, you spot [NameDesc of woman-player] depositing [his of woman-player] diaper in the pail and then getting out of there as fast as [he of woman-player] can.";
		otherwise:
			say "From the corner of your eye, you spot [NameDesc of woman-player] depositing [his of woman-player] diaper on the ground and then getting out of there as fast as [he of woman-player] can.";
			let SD be a random off-stage soiled-diaper;
			if SD is a thing:
				now the diaper-origin of SD is "hypermessed diaper from Berri";
				now SD is in L;
		vanish woman-player.

Chapter - Human Toilet Scene

To check woman toilet:
	if the player is in Hotel38 and watersports fetish is 1 and the human-toilet-scene of woman-player > 1:
		say "You feel more dominant!";
		SportsGet;
		DelicateDown 1;
		FavourDown woman-player by 1;
		womanSluttify.

A time based rule:
	if the player is in Hotel38 and the human-toilet-scene of woman-player is 0 and the woman-bimbo of woman-player is 4 and woman-player is relaxed redeploy appropriate:
		say "A groaning, gurgling noise from below you makes you notice that the toilet here looks different from usual. It's [NameDesc of woman-player]! [big he of woman-player] has been strapped down to the ground on [his of woman-player] back, with a hollow 'Punishment Potty' nailed to the ground over [his of woman-player] head. Anyone who sat on the potty would be able to [if there is a worn diaper or watersports fetish is 0]envelop [his of woman-player] face with their diaper[otherwise]piss directly on [his of woman-player] face[end if]. [big he of woman-player] looks up at you with imploring puppy-dog eyes.[line break][speech style of woman-player]'Wease eh ee ow! Weeeease! Ha hay-hron hah heh hee!'[roman type][line break]You think you understand what [he of woman-player][']s saying? There's a key that can be used to release [him of woman-player], but it's currently in the possession of a hotel patron. Perhaps if you spend enough time in the hotel, you'll be able to encounter [him of a random patron] and agree to pay some kind of... [']ransom[']. Until then there's nothing you can do about the fact that [NameDesc of woman-player] is [if watersports fetish is 1]the new hotel toilet. It's up to you how many more times you use [his of woman-player] mouth as your waste disposal unit[otherwise]stuck underneath the Punishment Potty. It's up to you how many more times you sit your diaper on [his of woman-player] face[end if]. You doubt it'll be very good for [his of woman-player] sanity, but it might help you feel more dominant.";
		now the human-toilet-scene of woman-player is 2;
		now woman-player is permanently banished.

To compute woman toilet release:
	let K be skeleton key;
	if human-toilet-key is held and (K is nothing or forbidden-key is not human-toilet-key), now K is human-toilet-key;
	if K is held:
		if forbidden-key is K:
			say "Something deep in your brain won't let you use [NameDesc of K] to save [NameDesc of woman-player].";
		otherwise if the traitor-hypno of hypno-lesson > 0 and forbidden-key is nothing:
			decrease the traitor-hypno of hypno-lesson by 1;
			say "Something inside you urges you to [speech style of woman-player]help your friend[roman type]. You find yourself unable to bring yourself to use [NameDesc of K] to save [NameDesc of woman-player]. Perhaps if you are able to obtain a different key, however, you'll be able to circumvent your hypnosis and help [him of woman-player] in the [']proper['] way.";
			if the player is desperate to pee and the player is able to use a toilet:
				say "But for now... your body has different plans for what would be the best way to help [NameDesc of woman-player] become a better person...";
				allocate 6 seconds;
				compute toilet use;
		otherwise:
			allocate 6 seconds;
			now the human-toilet-scene of woman-player is 1;
			now woman-player is summon-available;
			say "You push the key into each of the padlocks and twist. Moments later you have parted [NameDesc of woman-player] from the Punishment Potty.[line break][speech style of woman-player]'Thank you so much for saving me...'[roman type][line break]";
			deploy woman-player with woman-status 95;
			now woman-player is in the location of the player;
			FavourUp woman-player;
			say "[BigNameDesc of K] crumbles into dust.";
			destroy K;
	otherwise:
		say "You don't have a key that could do that.".

Chapter - Ass Hook Scene

woman-player has a number called ass-hook-scene.

Report going when the ass-hook-scene of woman-player is 0 and playerRegion is Dungeon and there is an unrevealed ass hook in the location and the woman-bimbo of woman-player is 2 and the number of untriggered ass hook in the location is 0:
	if debugmode is 1, say "Checking if berri can appear.";
	if woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 99;
		now the ass-hook-scene of woman-player is 1;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive here you see [NameDesc of woman-player] is stuck in the middle of the room, the back of [his of woman-player] white panties caught by the hook on a rope that you encountered earlier. The hook has pulled [his of woman-player] panties into a hard and painful wedgie! [big he of woman-player] tries to loosen the hook with one hand, but clearly will need to use both of [his of woman-player] hands to have any chance of success. But [his of woman-player] other hand is busy holding onto [his of woman-player] water pistol, and [he of woman-player] doesn't seem willing to drop it.[line break][speech style of woman-player]'Oh, [NameBimbo]! [big please], it hurts so much... can you get me free?'[roman type][line break]".

A time based rule (this is the berri ass hook rule):
	if the woman-status of woman-player is 99 and woman-player is alive:
		increase the ass-hook-scene of woman-player by 1;
		now player-numerical-response is 0;
		let M be a random alive undefeated awake uninterested royal guard;
		let guard-arrives be false;
		if woman-player is in the location of the player:
			if the player is immobile or the player is in danger:
				say "You can't try to do anything to [NameDesc of woman-player] because you are a bit busy right now!";
			otherwise if the player is prone:
				say "You can't try to do anything to [NameDesc of woman-player] until you stand up.";
			otherwise if the player is able to use manual dexterity:
				reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
				say "You can do something to [NameDesc of woman-player], if you like.";
				set numerical response 1 to "try to pull down the hook";
				set numerical response 2 to "try to rip [his of woman-player] panties";
				set numerical response 3 to "try to steal [his of woman-player] water pistol";
				set numerical response 0 to "don't interact with [him of woman-player]";
				compute multiple choice question;
			otherwise:
				say "You can't try to do anything to [NameDesc of woman-player] because you lack the necessary manual dexterity.";
		let A be another-turn;
		now another-turn is 1;
		if player-numerical-response is 1:
			say "You pull down on the hook with all your might.";
			let S be a random number between 1 and the strength of the player;
			if debuginfo > 0, say "[input-style]Hook pull roll: Strength d[strength of the player] ([S]) | (8.5) Difficulty[roman type][line break]";
			if S > 8:
				say "Success! You manage to pull down the hook far enough that [NameDesc of woman-player] can detach [his of woman-player] panties and keep them intact.[line break][speech style of woman-player]'Thank you so much, [NameBimbo]! I don't know what I would have done without you...'[roman type][line break]";
				FavourUp woman-player by 3;
				now the woman-status of woman-player is 1;
				now the ass-hook-scene of woman-player is -1;
			otherwise:
				say "You only manage to pull it down a couple of inches before you slip, and the hook yanks [his of woman-player] back up, renewing the wedgie.[line break][speech style of woman-player]'Ow ow ow ow! Careful!!!'[roman type][line break]";
				FavourDown woman-player by 1;
		otherwise if player-numerical-response is 2:
			say "You pull at the waistband with both hands until it becomes to come apart. Moments later, with a loud ripping sound, the panties fall to pieces, and the hook is able to retract up into its hole in the ceiling.";
			if M is royal guard and the player is getting unlucky:
				now guard-arrives is true;
			otherwise:
				say "[BigNameDesc of woman-player] turns bright red at you being able to see [his of woman-player] rude bits.[line break][speech style of woman-player]'Um, thanks, [NameBimbo]! I think...'[roman type][line break]";
				now the woman-status of woman-player is 1;
				now the ass-hook-scene of woman-player is -1;
		otherwise if player-numerical-response is 3:
			say "You reach out and grab [NameDesc of woman-player][']s pistol.[line break][speech style of woman-player]'HEY!!!'[roman type][line break]";
			let S be a random number between 1 and the strength of the player;
			if debuginfo > 0, say "[input-style]Pistol steal roll: Strength d[strength of the player] ([S]) | (9.5) Difficulty[roman type][line break]";
			if S > 9:
				say "You're too strong - there's nothing [he of woman-player] can do as you wrench it out of [his of woman-player] hand.[line break][speech style of woman-player]'You [bitch]! I won't forgive you!'[roman type][line break]";
				now magic pistol is carried by the player;
				now woman-player is angered;
				if M is royal guard:
					if the ass-hook-scene of woman-player <= 3, now the ass-hook-scene of woman-player is 4; [triggers urination]
					now guard-arrives is true;
				otherwise:
					say "Now with two free hands, [NameDesc of woman-player] is able to free [himself of woman-player] from the hook. Unpicking the wedgie, [he of woman-player] flees for now.";
					womanSluttify;
					vanish woman-player;
			otherwise:
				say "[BigNameDesc of woman-player] manages to squeeze the trigger before you can pull it out of [his of woman-player] grasp. A single moment of dread turns to surprise as a powerful burst of [milk] jets out of the nozzle and drenches your face, filling your mouth and blinding you. You are forced to let go of the gun in order to wipe your face.";
				compute striking success effect of woman-player on face;
				FavourDown woman-player by 4;
		otherwise:
			now another-turn is A;
		if the woman-status of woman-player is 99 or guard-arrives is true:
			if woman-player is in the location of the player:
				if the ass-hook-scene of woman-player is 4:
					say "[BigNameDesc of woman-player] screams with frustration and pain as [he of woman-player] wets [himself of woman-player] through [his of woman-player] wedgie! [big his of woman-player] panties are soaked, and a big yellow puddle forms between [his of woman-player] feet.";
					PuddleUp urine by 15;
				otherwise if the ass-hook-scene of woman-player < 4 and woman-player is not unfriendly:
					say "[speech style of woman-player]'[one of][big please] save me [NameBimbo], I really need the toilet[or][big please], I can't hold it much longer[or]I can't hold it[stopping]!'[roman type][line break]";
				if guard-arrives is true or (M is royal guard and the player is getting unlucky):
					now M is in the location of the player;
					say "[speech style of M]'What's all this then?'[roman type][line break][BigNameDesc of M] has arrived in the [location of the player]. [big he of M] stares at [NameDesc of woman-player] with an outraged look on [his of M] face.[line break][speech style of M]'DISGUSTING! [if the ass-hook-scene of woman-player < 4]Adult [men of woman-player] do not walk around flashing their genitals to the world[otherwise]You are clearly wearing the wrong underwear, [child of M][end if].'[roman type][line break]Grabbing [NameDesc of woman-player] with one strong arm, [NameDesc of M] relieves [him of woman-player] of all [his of woman-player] clothing in front of you, and busies [himself of M] with dressing [NameDesc of woman-player] in a new outfit, starting with a medium thickness disposable diaper. Within just a few moments, [NameDesc of woman-player] looks quite different.";
					increase the woman-bimbo of woman-player by 1;
					now the woman-status of woman-player is 1;
					try examining woman-player;
					say "[speech style of M]'And you'd better stay in diapers until I give you permission to wear big [boy of woman-player] panties again.'[roman type][line break][BigNameDesc of M] seems satisfied, and loses interest. [BigNameDesc of woman-player] looks deeply ashamed. [GotUnluckyFlav]";
					bore M;
					now M is moved; [prevents him wandering away in the same turn]
			otherwise if the ass-hook-scene of woman-player >= 4 and woman-player is alive:
				PuddleUp urine by 15 in the location of woman-player;
				womanSluttify;
				vanish woman-player.

Chapter - Changing Station Scene

woman-player has a number called changing-station-scene.

Report going when the changing-station-scene of woman-player is 0 and the woman-bimbo of woman-player is 3 and the player is in Hotel20 and there is an automated changing station in the location of the player:
	if debugmode is 1, say "Checking if berri can appear.";
	if woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 28;
		now woman-player is caged;
		now the changing-station-scene of woman-player is 1;
		now woman-player is in the location of the player;
		interest woman-player;
		let ACS be a random automated changing station in the location of the player;
		say "As you arrive here you see [NameDesc of woman-player] is stuck in the [ACS], wrists bound in cuffs above [his of woman-player] head. A tight pink tube top all you can see on [his of woman-player] top half and [his of woman-player] bottom half obscured by the door. Robotic arms are busy doing something to [his of woman-player] bottom half.[line break][speech style of woman-player]'Oh, [NameBimbo]! This is bad timing. What's going on here, you ask? Nothing at all. I'm just getting a change.'[roman type][line break]".

A time based rule (this is the berri changing station rule):
	if the woman-status of woman-player is 28 and woman-player is caged:
		if woman-player is alive:
			increase the changing-station-scene of woman-player by 1;
			if woman-player is in the location of the player:
				if the changing-station-scene of woman-player <= 2:
					say "[BigNameDesc of woman-player] gives you what looks like a pained smile.[line break][speech style of woman-player]'Um... would you mind [please] coming back later?'[roman type][line break]";
					cutshow figure of berri cutscene 7 for woman-player;
				otherwise if the changing-station-scene of woman-player is 3:
					say "[BigNameDesc of woman-player] whimpers to [himself of woman-player]. [big he of woman-player] seems to be... shaking?[line break][speech style of woman-player]'N-No... [big please], I don't want to let [him of the player] see... it would be too embarrassing...'[roman type][line break]";
					cutshow figure of berri cutscene 7 for woman-player;
				otherwise:
					say "[BigNameDesc of woman-player][']s face turns red and [his of woman-player] body starts to spasm.[line break][speech style of woman-player]'Cccccccccc... CUMMING! I'm cumming! Oh god, I'm cumming in a diaper...'[roman type][line break][big he of woman-player] seems to have been holding back for as long as humanly possible, but now that [his of woman-player] orgasm is overtaking [him of woman-player], [he of woman-player] can't hold it back any longer. [big he of woman-player] throws [his of woman-player] body back and forth as [he of woman-player] shakes uncontrollably, cumming [his of woman-player] brains out.[paragraph break]Finally [his of woman-player] [']episode['] dies down. The robotic arms pull [NameDesc of woman-player][']s dungarees back into place and then retract, and [he of woman-player] is released from [his of woman-player] wrist bondage. The door opens, and [he of woman-player] stumbles out, looking fatigued and humiliated.[line break][speech style of woman-player]'I'm so sorry you had to see that. I'm so embarrassed...'[roman type][line break]";
					increase the delayed sluttification of woman-player by 1;
			otherwise if the changing-station-scene of woman-player >= 4:
				let Neighbour Finder be the location of the player;
				if woman-player is nearby:
					say "You spot [NameDesc of woman-player] stumbling out of the automated changing station in the [location of woman-player]. [big he of woman-player] looks rather fatigued.";
					deinterest woman-player;
			if the changing-station-scene of woman-player >= 4:
				now woman-player is unconcerned;
				now the health of woman-player is the maxhealth of woman-player / 2;
		otherwise:
			now woman-player is unconcerned.

Chapter - Matron Fight Scene

woman-player has a number called matron-fight-scene.

Report going when the matron-fight-scene of woman-player is 0 and the woman-bimbo of woman-player is 2 and the player is in Hotel22 and matron is in Hotel22 and matron is threatening and the times-met of matron is 0:
	if debugmode is 1, say "Checking if berri can appear.";
	if woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 100;
		now the matron-fight-scene of woman-player is 1;
		now woman-player is in the location of the player;
		interest woman-player;
		now the health of woman-player is 1;
		now the health of matron is (the maxhealth of matron * 3) / 4;
		say "As you arrive here you see [NameDesc of woman-player] is on [his of woman-player] knees in front of [NameDesc of matron] looking extremely fatigued, [his of woman-player] water pistol empty. On the other hand, [NameDesc of matron] looks like [he of matron][']s barely worked up a sweat. [BigNameDesc of woman-player] is looking up at [NameDesc of matron] with a face full of trepidation.".

A later time based rule (this is the berri matron rule):
	if the woman-status of woman-player is 100:
		let M be matron;
		let ableToRun be false;
		if M is in the location of woman-player and M is threatening:
			increase the matron-fight-scene of woman-player by 1;
			if M is uninterested or M is friendly:
				if the matron-fight-scene of woman-player <= 2:
					if M is in the location of the player:
						say "[speech style of woman-player]'Help me, [NameBimbo]! This crazy bitch is trying to put me in diapers!'[roman type][line break]";
						cutshow figure of berri cutscene 8 for woman-player;
				otherwise if the matron-fight-scene of woman-player is 3:
					if M is in the location of the player:
						say "[BigNameDesc of M] lifts [NameDesc of woman-player] up onto the giant changing table, ignoring [his of woman-player] weak wriggling.[line break][speech style of woman-player]'Let me go, you mad[man of M]!'[roman type][line break]";
						cutshow figure of berri cutscene 8 for woman-player;
				otherwise:
					if M is in the location of the player:
						say "[BigNameDesc of M] locks [NameDesc of woman-player][']s wrists and ankles into the straps anchored to the corners of the bed.[line break][speech style of M]'A little [boy of woman-player] like you won't be needing any clothes like these any more!'[line break][speech style of woman-player]'Noooooo!'[roman type][line break][BigNameDesc of woman-player] moans with despair as [he of woman-player] is stripped naked. [big his of woman-player] old clothes are ripped apart, and are now completely ruined.[line break][speech style of M]'Something like this seems about right for the age you like to act!'[roman type][line break][BigNameDesc of M] is now holding a pink crop top, a stretchy pair of blue dungarees, and... a pack of [']super thick diapers['].[paragraph break]";
						say "[BigNameDesc of M] works extremely quickly, and mere seconds later, [NameDesc of woman-player] is now dressed in [his of woman-player] new outfit, [his of woman-player] new diaper's bulge extremely visible at both the front and back.[line break][speech style of M]'There we go, now you can go play without worrying about that weak bladder of yours.'[line break][speech style of woman-player]'I don't have a weak bladder, you weirdo!'[roman type][line break][BigNameDesc of woman-player] protests.[line break][speech style of M]'Oh, is that so?'[roman type][line break][BigNameDesc of M] picks up the baby's bottle of milk next to [NameDesc of woman-player][']s head and forces it into [his of woman-player][']s mouth. [BigNameDesc of woman-player] squeals but there's nothing [he of woman-player] can do to prevent the liquid flowing into [his of woman-player] mouth, which makes [him of woman-player] forced to gulp it down to prevent [himself of woman-player] from choking. When the bottle is finally empty, [NameDesc of M] releases [NameDesc of woman-player] from the straps and allows [him of woman-player] to stand.[paragraph break]";
						say "[speech style of woman-player]'My crotch feels strange. What the hell was in that?!'[roman type][line break][BigNameDesc of woman-player] demands. But the answer then becomes self-explanatory as a hissing sound fills the room, and all three of you are acutely aware that [he of woman-player] is wetting [himself of woman-player].[line break][speech style of M]'Are you sure you don't have a weak bladder?'[roman type][line break][BigNameDesc of M] teases [him of woman-player], and uses a hand to squeeze the front of [his of woman-player] padding.[line break][speech style of M]'Wet, but not wet enough for a change yet. Run along now darling, and come back after you've had another accident.'[roman type][line break][BigNameDesc of woman-player] is bright red, but [he of woman-player] knows [he of woman-player] is much too weak to fight back. And plus, [he of woman-player] has no other clothes to wear.";
					now the woman-bimbo of woman-player is 3;
					now the woman-status of woman-player is 27;
					deinterest M;
					if M is in the location of the player, check guaranteed perception of M;
			otherwise:
				now ableToRun is true;
		otherwise:
			now ableToRun is true;
		if ableToRun is true:
			now the woman-status of woman-player is 27;
			if woman-player is in the location of the player:
				say "[BigNameDesc of woman-player] flees from the room, as fast as [his of woman-player] legs will carry [him of woman-player]!";
				if woman-player is in Hotel22, try woman-player going east;
			deinterest woman-player;
			regionally place woman-player.

Chapter - Matron Play Scene

Report going when the woman-old-bimbo of woman-player is 5 and the woman-bimbo of woman-player is 6 and the player is in Hotel22 and matron is in Hotel22 and matron is threatening:
	if debugmode is 1, say "Checking if berri can appear.";
	if woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 26;
		now woman-player is in the location of the player;
		interest woman-player;
		cutshow figure of berri cutscene 9 for woman-player;
		say "As you arrive here you see [NameDesc of woman-player] is on [his of woman-player] knees in front of [NameDesc of matron], locked in place with wrist straps and a thigh spreader bar, with a giant plain disposable diaper taped up around [him of woman-player]. [big he of woman-player] has purple baby mittens on [his of woman-player] hands and purple socks on [his of woman-player] feet, matching [his of woman-player] purple pacifier gag and small purple baby bib that is too small to conceal [his of woman-player] breasts. [BigNameDesc of matron] is teasing [NameDesc of woman-player] with a vibrating wand massager, bringing [him of woman-player] to the edge but pulling it away before [he of woman-player] cums. [BigNameDesc of woman-player] is very red in the face, and is looking up at [NameDesc of matron] with pleading eyes. It's clear that poor Berri has been edged for quite a while.[line break][speech style of matron]'Oh, you think you deserve to cum, do you? I don't know about that.'[roman type][line break][BigNameDesc of matron] teases.";
		if matron is interested, say "[BigNameDesc of matron] turns to you.";
		otherwise say "[BigNameDesc of matron] notices you[if the player is sluttily dressed]![otherwise].[end if]";
		say "[speech style of matron]'I'll let you decide.'[roman type][line break]";
		interest matron;
		if the traitor-hypno of hypno-lesson is 0, say "Does Berri get to orgasm? [if the player is not a nympho]On one hand it looks like [he of woman-player] really needs it, but on the other hand it might be best not to keep giving into the carnal desires of this game...[end if]";
		if the traitor-hypno of hypno-lesson > 0 or the player is not consenting:
			if the traitor-hypno of hypno-lesson > 0:
				say "Something inside urges you to [variable custom style]help your friend[roman type] by betraying [him of woman-player]. You shake your head, a vindictive grin appearing on your face.";
				decrease the traitor-hypno of hypno-lesson by 1;
			otherwise:
				say "You shake your head.[line break][if the player is able to speak][variable custom style]'I don't want any part of this.'[roman type][line break]";
			say "[BigNameDesc of woman-player][']s eyes go wide, but [NameDesc of matron] just shrugs, a bemused smile on [his of matron] face.[line break][speech style of matron]'Have it your way.'[roman type][line break][big he of matron] clicks off the wand, and begins packing it away.";
			satisfy matron;
			now woman-player is angered;
			say "[BigNameDesc of woman-player] moans desperately into [his of woman-player] pacifier, but no sympathy is forthcoming. [big his of woman-player] sorrow begins to turn into anger. [big he of woman-player] spits insults at you from behind [his of woman-player] paci.[line break][speech style of woman-player]'You BITH! I'm gogga kick your ash!'[roman type][line break][BigNameDesc of matron] seems entertained by that.[line break][speech style of matron]'Ooh, be my guest!'[roman type][line break]";
		otherwise:
			say "You nod your head.[line break][if the player is able to speak][speech style of matron]'No no, I want you to beg me, on [his of woman-player] behalf. Why does [he of woman-player] deserve it?'[roman type][line break][BigNameDesc of matron] folds [his of matron] arms with a smirk. You sigh, but you feel like it's too late to back out now.[line break][variable custom style]'Berri has been a good little baby slave for [his of woman-player] [literalMistress of matron], wearing big thick diapers everywhere [he of woman-player] goes, and doing [his of woman-player] business in them instead of the grown-up potty because [he of woman-player] knows [his of woman-player] place. So please let [him of woman-player] go cummies in [his of woman-player] Pampies!'[roman type][line break][end if][BigNameDesc of matron] turns to [NameDesc of woman-player].[line break][speech style of matron]'Do you think you deserve to cum because of all the peepees [if diaper messing >= 3]and poopoos [end if]you've done in your diapees?'[roman type][line break][BigNameDesc of woman-player] nods furiously.[line break][speech style of matron]'Okay then sweetie. Enjoy your reward!'[roman type][line break][BigNameDesc of matron] pushes the wand back up against [NameDesc of woman-player][']s privates and holds it there. Within seconds [NameDesc of woman-player] is thrashing around and screaming through [his of woman-player] pacifier as an insanely powerful orgasm overwhelms [him of woman-player].";
			now the woman-diaper-state of woman-player is 1;
			say "And then...[line break][italic type][if diaper messing >= 6]BRRRRRRRRRRRRRRRRRT[otherwise]HISSSSSSSSSSSSS[end if][line break]You can hear [NameDesc of woman-player] soiling [his of woman-player] padding as [he of woman-player][']s extreme pleasure causes [him of woman-player] to momentarily lose control of [his of woman-player] bodily functions. You expect [him of woman-player] to look embarrassed about that, but [he of woman-player] doesn't. In fact, [he of woman-player] looks pleased, as if the toilet action going on down below merely enhanced the experience. As [NameDesc of woman-player] comes down from [his of woman-player] euphoric high, [his of woman-player] smile doesn't fade. [big he of woman-player] looks blissful, as if [he of woman-player] has found [his of woman-player] inner peace. As if deep down, [he of woman-player] wholly and truly loves using [his of woman-player] diapers.";
			satisfy matron;
		say "With a click of [NameDesc of matron][']s fingers, [NameDesc of woman-player][']s bondage unlocks. The pacifier remains, but no longer gagged. [big his of woman-player] diaper transforms, growing somehow even bigger, and gaining a childish balloon pattern. A soft pink leash trails from [his of woman-player] collar. [big he of woman-player] looks truly broken and domesticated[if woman-player is angered], but also bent on revenge. Not revenge on [NameDesc of matron], but revenge on you[end if].";
		now the woman-old-bimbo of woman-player is 6.

Chapter - Changing Station Tank

Understand "rope" as woman-player when the changing-station-tank-scene of woman-player > 0.

Report going when the woman-bimbo of woman-player is 5 and the changing-station-tank-scene of woman-player is 0 and the player is in Hotel20 and hotel changing station is in Hotel20:
	if debugmode is 1, say "Checking if berri can appear.";
	if woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 102;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive here you see [NameDesc of woman-player] holding the rope for the automated changing station's container lid. The transparent container is full of used diapers, and if [he of woman-player] gives the rope any slack at all, the lid will open and the diapers will tumble out of the container and onto [his of woman-player] head.[line break][speech style of woman-player]'Oh gosh [NameBimbo], please help me! I need to tie this back to the hook over there, but the lid is so heavy... if I stop pulling down on it with all my strength, it'll open up! And my arms are getting so tired! Please, quickly, help me [bold type]pull[speech style of woman-player] this thing over to the hook and tie the knot!'[roman type][line break]";
		now the changing-station-tank-scene of woman-player is 1.

A time based rule (this is the berri-changing-station-tank rule):
	if the changing-station-tank-scene of woman-player > 0:
		if woman-player is in the location of hotel changing station:
			if the changing-station-tank-scene is 1:
				if woman-player is in the location of the player, say "[BigNameDesc of woman-player] is straining.[line break][speech style of woman-player]'I seriously can't hold on for much longer...'[roman type][line break]";
			otherwise if the changing-station-tank-scene is 2:
				if woman-player is in the location of the player, say "[BigNameDesc of woman-player] is panicking.[line break][speech style of woman-player]'No, no no! It's gonna slip!'[roman type][line break]";
			otherwise:
				if woman-player is in the location of the player, say "[BigNameDesc of woman-player] loses [his of woman-player] grip on the rope, and the lid opens. Countless dirty diapers rain down over [his of woman-player] head, half-burying [him of woman-player]. [big he of woman-player] makes gagging noises as [he of woman-player] crawls out of the pile.";
				release changing station diapers;
				WomanSluttify;
				now the changing-station-tank-scene of woman-player is -1;
			increase the changing-station-tank-scene of woman-player by 1;
		otherwise:
			if the player is not in the location of hotel changing station, release changing station diapers; [we're trying to catch weird edge cases here, but we still can't have the tank spontaneously open if the player's there]
			now the changing-station-tank-scene of woman-player is -60;
	otherwise if the changing-station-tank-scene of woman-player < 0 and the changing-station-tank-scene of woman-player > -10:
		if the player is in the location of hotel changing station and woman-player is in the location of the player, say "[BigNameDesc of woman-player] [one of]coughs in digust[or]retches[or]coughs and splutters[or]gags with nausea[cycling].[line break][speech style of woman-player]'[one of]Gross[or]Yuck[or]Eurgh[in random order]!'[roman type][line break]";
		decrease the changing-station-tank-scene of woman-player by 1.

Check pulling woman-player when the changing-station-tank-scene of woman-player > 0:
	if the player is immobile or the player is in danger, say "You're a bit busy!" instead;
	if the player is prone, say "You can't do that while on your knees." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the traitor-hypno of hypno-lesson > 0:
		say "Something inside urges you to [variable custom style]help your friend[roman type] by betraying [him of woman-player]. You just stand still and watch.";
		decrease the traitor-hypno of hypno-lesson by 1;
		try waiting instead;
	reset multiple choice questions;
	set numerical response 1 to "Try to take the weight of the rope while [NameDesc of woman-player] ties the knot";
	set numerical response 2 to "Try to tie the knot while [NameDesc of woman-player] takes the weight";
	set numerical response 0 to "Cancel.";
	compute multiple choice question;
	if player-numerical-response is 1:
		allocate 6 seconds;
		let R be a random number between 6 and 12;
		if debuginfo > 0, say "[input-style]Berri betrayal check: d7+5 ([R]) | [favour of woman-player].5 Berri favour[roman type][line break]";
		say "You grab the rope above [NameDesc of woman-player], and pull down hard. [BigNameDesc of woman-player] releases, breathing a sigh of relief. ";
		if R > the favour of woman-player:
			say "At first you assume [he of woman-player][']s going to go round to the other side to get in a better position to tie the knot, but instead you see that [he of woman-player] is just rapidly heading for the way out![line break][speech style of woman-player]'[if the favour of woman-player >= 10]I'm so sorry, I can't... I can't risk it. I'm so sorry[otherwise if diaper messing >= 7]Revenge is a dish best served stinky, bitch[otherwise]Revenge is a dish best served soggy, bitch[end if]!'[roman type][line break]";
			compute mandatory room leaving of woman-player;
			vanish woman-player;
			now the changing-station-tank-scene of woman-player is -20;
			say "You try to tie the rope to the hook yourself, but it's no use. As soon as you try, the rope slips and the lid flies open. ";
			release changing station diapers on the player;
		otherwise if the player is getting unlucky:
			say "[big he of woman-player] takes a few attempts, but [he of woman-player] eventually manages to secure the knot back onto the hook.[line break][speech style of woman-player]'Thank you so much for helping me, [NameBimbo], I couldn't have done it without you!'[roman type][line break]";
			FavourUp woman-player;
			say "You finally let go of the rope. And then the knot slips loose! [BigNameDesc of woman-player] clearly hadn't done as good of a job as [he of woman-player] thought. The rope flies up and the lid flips open. ";
			now the changing-station-tank-scene of woman-player is -1;
			release changing station diapers on the player;
			say "Countless dirty diapers rain down over [NameDesc of woman-player][']s head too, half-burying [him of woman-player].[line break][speech style of woman-player]'Noooooo-MMMPH!'[roman type][line break][big he of woman-player] makes gagging noises as [he of woman-player] crawls out of the pile.[line break][speech style of woman-player]'Ah fuck, I'm sorry, [NameBimbo]... This went really badly...'[roman type][line break]";
			WomanSluttify;
		otherwise:
			say "[big he of woman-player] takes a few attempts, but [he of woman-player] eventually manages to secure the knot back onto the hook.[line break][speech style of woman-player]'Thank you so much for helping me, [NameBimbo], I couldn't have done it without you!'[roman type][line break]";
			FavourUp woman-player;
			now the changing-station-tank-scene of woman-player is -1000;
	otherwise if player-numerical-response is 2:
		allocate 6 seconds;
		let D be a random number between 1 and the dexterity of the player;
		if debuginfo > 0, say "[input-style]Knot tie check: dexterity roll d[dexterity of the player] ([D]) | 7.5 difficulty rating[roman type][line break]";
		say "You secure the knot back onto the hook.[line break][speech style of woman-player]'Thank you so much for helping me, [NameBimbo], I couldn't have done it without you!'[roman type][line break]";
		if D > 7:
			FavourUp woman-player;
			now the changing-station-tank-scene of woman-player is -1000;
		otherwise:
			say "[BigNameDesc of woman-player] lets go of the rope. And then the knot slips loose! You clearly hadn't done as good of a job tying that knot as you thought. The rope flies up and the lid flips open. ";
			now the changing-station-tank-scene of woman-player is -1;
			release changing station diapers on the player;
			WomanSluttify;


Chapter - Hole In Wall

To decide which figure-name is the examine-image of (G - hole-in-wall):
	if the hole-in-wall-scene of woman-player > 0 and woman-player is in HoleInWall:
		if the hole-in-wall-scene of woman-player is 2:
			if diaper messing >= 7, decide on Figure of Berri Cutscene 11c;
			decide on Figure of Berri Cutscene 11b;
		if the hole-in-wall-scene of woman-player >= 3:
			decide on Figure of Berri Cutscene 11d;
		decide on Figure of Berri Cutscene 11a;
	decide on figure of hole.

To construct unique icons for (T - hole-in-wall):
	if the hole-in-wall-scene of woman-player > 1 and woman-player is in HoleInWall:
		add Figure of WetUrineIcon to the list of icons;
		if diaper messing >= 7, add Figure of MessButton to the list of icons.

hole-in-wall can be facesat-this-turn. [have we already punished the player for having their face in the diaper this turn?]

Check pulling hole-in-wall when the hole-in-wall-scene of woman-player > 0:
	if woman-player is in HoleInWall:
		if the player is not able to manually use their hands, do nothing instead;
		if the player is upright, say "You would need to be on your knees[if the number of worn stuck clothing is 0] and get up close and personal[end if] to do that." instead;
		allocate 6 seconds;
		say "You grip the person above their ankles and pull with all your might. The person frantically shakes their padded butt in panic, causing it to repeatedly smush against your face.";
		if the hole-in-wall-scene of woman-player > 1:
			now hole-in-wall is facesat-this-turn;
			if diaper messing >= 7:
				compute MessyDiaperFacesit of hole-in-wall;
			otherwise:
				compute WetDiaperFacesit of hole-in-wall;
		let R be (a random number between 1 and 12) + (a random number between 1 and 12);
		if debuginfo > 0, say "[input-style]Pulling Berri out check: Player strength ([strength of the player].5) | ([R]) = 2d12 difficulty rating[roman type][line break]";
		if the strength of the player >= R:
			say "With a powerful tug from your arms, you successfully yank the person loose, and they fall backwards out of the hole!";
			compute berri hole in wall exit;
		otherwise:
			say "The person doesn't budge[if the strength of the player > 1] this time. But you can always try again - surely you'll get them out eventually[otherwise]. You're so impossibly weak that you'll never be able to pull them out[end if]!";
		do nothing instead;

A later time based rule (this is the berri hole in wall rule):
	if the hole-in-wall-scene of woman-player > 0 and woman-player is in HoleInWall:
		if the hole-in-wall-scene of woman-player is 1: [not soiled yet]
			if a random number between 1 and 2 is 1:
				if the player is in the location of hole-in-wall:
					say "The person's wiggling and shaking becomes more and more frantic, and then it becomes clear why. ";
					if there is a worn stuck headgear:
						compute DiaperFacesitStart of hole-in-wall;
					otherwise if diaper messing >= 7:
						say "With a loud rasping sound, they unleash a torrent of horrible brown enema water into their diaper. The smell immediately begins to fill the room. Now if you want to help them escape, you're going to have to put your face right up near that stinky soiled padding...";
					otherwise:
						say "With a loud hissing sound, they unleash a torrent of [urine] into their diaper. Now if you want to help them escape, you're going to have to put your face right up near that soggy soiled padding...";
				now the hole-in-wall-scene of woman-player is 2;
			otherwise if the player is in the location of hole-in-wall:
				say "The person stuck in the wall is [one of]wiggling[or]shaking[cycling] their diapered butt erratically.";
		otherwise if the player is in the location of hole-in-wall: [already soiled]
			if there is a worn stuck headgear:
				if hole-in-wall is not facesat-this-turn:
					if diaper messing >= 7:
						compute MessyDiaperFacesit of hole-in-wall;
					otherwise:
						compute WetDiaperFacesit of hole-in-wall;
				if diaper messing >= 7 and a random number between 1 and 2 is 1:
					say "Another loud low rumble lets you know that more enema expulsion is imminent! ";
					if the player is not tolerating messy diapers:
						let TXT be substituted form of "As you scrunch up with [if the diaper addiction of the player < a random number between 8 and 11]horror[otherwise]trepidation[end if],";
						FearUp (20 - the diaper addiction of the player) with reason TXT;
					otherwise:
						say "[if the player is a nympho or the player is enjoying messy diapers]You[otherwise]Despite your better judgement, you[end if] feel yourself getting turned on.";
					compute MessyDiaperFacesitExpulsion of hole-in-wall;
					now the hole-in-wall-scene of woman-player is 3;
			otherwise if diaper messing >= 7 and a random number between 1 and 2 is 1:
				say "After another loud low rumble, the messy padded butt's sphincter opens again, and another torrent of brown enema water, just as big as the last, floods into the diaper! It expands to a ridiculous size to contain all the nasty goop!";
				now the hole-in-wall-scene of woman-player is 3;
			if a random number between 1 and 20 is 1:
				say "With a stroke of luck, the person seems to find the perfect angle, and is able to begin to wriggle themselves free! A couple of moments later, and they are out!";
				compute berri hole in wall exit;
		otherwise: [already soiled and player isn't there]
			compute berri hole in wall exit;
		if the hole-in-wall-scene of woman-player is 3, increase turnsWithSoiledDiaper by 2;
		now hole-in-wall is not facesat-this-turn;

To compute berri hole in wall exit:
	now woman-player is in the location of hole-in-wall;
	now the woman-status of woman-player is 25;
	deinterest woman-player;
	now the refractory-period of woman-player is 0;
	repeat with H running through stuck headgear:
		if H is held or H is in the location of woman-player, now H is not stuck;
	if woman-player is in the location of the player, say "As the person's face emerges from the hole, you discover who it is. It's [NameDesc of woman-player]! [big he of woman-player] looks very flustered and embarrassed.";
	now the woman-diaper-state of woman-player is 0;
	if the hole-in-wall-scene of woman-player is 2:
		now the woman-diaper-state of woman-player is 1;
		if diaper messing >= 7:
			now the woman-latest-diaper-state of woman-player is the woman-diaper-state of woman-player;
		otherwise if woman-player is in the location of the player: [she was only wet in the hole but actually she's messed. let's explain that here]
			say "Suddenly, [NameDesc of woman-player][']s sphincter gives way, and [he of woman-player] involuntarily unleashes a huge stinky enema into [his of woman-player] giant diaper. It's very loud and undeniably foul.";
			say "[variable custom style][if the player is able to speak]'Uh-oh. You really need a change now...'[otherwise]Uh-oh. Somebody really needs a change now...[end if][roman type][line break]";
			now the woman-latest-diaper-state of woman-player is 0; [this will make sure that the periodic stuff updates her diaper state]
		if diaper messing >= 4, now the refractory-period of woman-player is the messRefractoryLimit of woman-player + 40; [she's going to go again real soon]
	otherwise if the hole-in-wall-scene of woman-player >= 3:
		now the woman-diaper-state of woman-player is 2;
		now the woman-latest-diaper-state of woman-player is the woman-diaper-state of woman-player;
	otherwise: [she's bursting]
		now the refractory-period of woman-player is the messRefractoryLimit of woman-player + 19;
	now the hole-in-wall-scene of woman-player is -1;
	if woman-player is in the location of the player:
		check guaranteed perception of woman-player;
		interest woman-player;
		FavourUp woman-player;
		say "[BigNameDesc of woman-player] notices you![line break][speech style of woman-player]'Oh my gosh, thank you so much for saving me! I can't believe you saw me stuck like this... [if the woman-diaper-state of woman-player > 0]And losing control in my diaper like that... [end if]How embarrassing! I'm so sorry, I'm such a failure! I haven't been able to stay out of diapers at all! At this rate, I think I'm going to be stuck like this. I'm just hoping... If I try my best... I can fight this place's attempts to make me grow to enjoy it...'[roman type][line break]".

To construct unique buttons for (D - hole-in-wall):
	if the hole-in-wall-scene of woman-player > 0 and woman-player is in HoleInWall and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is figure of TakeAllButton;
		now the ButtonCommand entry is "pull [text-shortcut of D]";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is upright, now the ButtonColour entry is lightModeFullYellow; [turn yellow - need to be kneeling]
		if the player is immobile or the player is in danger or the player is flying, now the ButtonColour entry is lightModeFullRed. [turn red - player immobile]

Part 5 - Protection

To compute protection of (M - woman-player):
	let X be M;
	repeat with U running through dangerous monsters in the location of the player:
		now X is U;
	if the player is flying:
		now M is uninterested;
	otherwise if X is M:
		compute unique interaction of M;
	otherwise:
		compute M protecting against X;

To compute unique interaction of (M - woman-player):
	compute wandering of M.

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
			now the wrangle-bonus of X is 0;
			if prev-health is the maxhealth of X, say AllyInstigated of X;
		otherwise:
			say "[BigNameDesc of M] tries to kick [NameDesc of X], but [his of M] soiled diaper prevents [him of M] from being able to maintain enough balance to get any power behind [his of M] foot!".

Part 6 - Combat

Section 0 - Punishment

The berri diaper quest rules is a rulebook. The diaper quest rules of woman-player is the berri diaper quest rules.

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
The woman unique punishment rule is listed in the berri diaper quest rules.

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
	interest M;
	update woman name and bimbo.

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

To compute contraption sex of (M - a monster):
	do nothing.

To compute patron scene climax of (W - woman-player):
	do nothing.

fishbowl is a vessel. fishbowl is in Holding Pen.

Woman Berri ends here.
