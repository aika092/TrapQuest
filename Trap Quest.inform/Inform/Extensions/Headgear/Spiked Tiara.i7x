Spiked Tiara by Headgear begins here.

spiked-tiara is a headgear. spiked-tiara is biological. spiked-tiara is blondeness-negative. spiked-tiara is brightness-positive. spiked-tiara is redness-negative. spiked-tiara is sex-addiction-influencing. Understand "spiked", "tiara" as spiked-tiara.

Definition: spiked-tiara is tongued: decide yes.

The printed name of a spiked-tiara is "[clothing-title-before]spiked tiara[clothing-title-after]". The text-shortcut of spiked-tiara is "spti".

To say TongueStatus of (C - a clothing):
	if tonguesActive > 0, say "The tongues are currently salivating and licking every part of you that they can reach.";
	otherwise say "The tongues are currently motionless, making them look more like a weird fashion statement. Any normal person that looked would assume that they weren't, you know, actual living demonic tongues.".

To decide which text is tonguesColour:
	if tonguesBlack is true, decide on "black";
	decide on "white".

Figure of white spiked tiara is the file "Items/Accessories/Head/spikedtiara1a.png".
Figure of tonguing white spiked tiara is the file "Items/Accessories/Head/spikedtiara1b.png".
Figure of black spiked tiara is the file "Items/Accessories/Head/spikedtiara2a.png".
Figure of tonguing black spiked tiara is the file "Items/Accessories/Head/spikedtiara2b.png".

To decide which figure-name is the clothing-image of (C - spiked-tiara):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black spiked tiara;
		decide on figure of black spiked tiara;
	otherwise:
		if C is tonguing, decide on figure of tonguing white spiked tiara;
		decide on figure of white spiked tiara.

To say ClothingDesc of (H - spiked-tiara):
	say "This [tonguesColour] [MediumDesc of H] has small regular spikes along the front, giving it a rather sinister feel. Multiple living tongues rope down from under its body to hug your ears, chin, and anything else they can reach. [TongueStatus of H]".

To say ShortDesc of (H - spiked-tiara):
	say "tongued tiara".

To say MediumDesc of (H - spiked-tiara):
	say "demonic tongued tiara".

Definition: spiked-tiara is demonic: decide yes.
Definition: spiked-tiara is white themed if tonguesBlack is false.
Definition: spiked-tiara is black themed if tonguesBlack is true.

To decide which number is the initial outrage of (C - spiked-tiara):
	if C is tonguing, decide on 14;
	decide on 4.

To compute SelfExamineDesc of (H - spiked-tiara):
	say "You are wearing a [MediumDesc of H] on top of your [ShortDesc of hair]. ".

A time based rule (this is the tongued clothing licking rule):
	let N be the number of worn tongued clothing;
	if tonguesBlack is false and the player is female and the virgin of the player is 0:
		let C be a random worn tongued clothing;
		if N > 0, say "Your [if N is 1][ShortDesc of C][otherwise]tongued clothing all[end if] turns from a pure white to a dark black. You can tell [if N is 1]it is[otherwise]they are[end if] now making you feel more perverse...";
		now tonguesBlack is true;
		now spiked-tiara is brightness-negative;
	if N > 0:
		decrease tonguesActive by 1;
		let C be a random worn tongued clothing;
		if the player is not a bit horny or refactoryperiod > 0:
			now the rounds-horny of no-orgasm-quest is 0;
			if refactoryperiod > 0 and tonguesActive < 0, now tonguesActive is -30; [As soon as refactory period is over, tongues will start]
		otherwise:
			increase the rounds-horny of no-orgasm-quest by 1;
		if tonguesActive <= -30 and refactoryperiod <= 0: [It's been 30 rounds since they were licking, so they start again]
			say "[bold type]The tongues under your [if N is 1][ShortDesc of C][otherwise]clothing[end if] seem disappointed that you're [one of]not[or]no longer[stopping] aroused, and begin to salivate and lick you wherever they can reach![roman type][line break]";
			now tonguesActive is a random number between 15 and 40;
			update appearance level;
			force clothing-focus redraw; [This forces the clothing window to redraw]
			repeat with TC running through worn tongued clothing:
				if TC is bottom level protection:
					stimulate vagina from TC;
				otherwise if TC is bottom level lactation cover:
					stimulate breasts from TC;
				otherwise if TC is crotch covering:
					stimulate thighs from TC;
				otherwise:
					stimulate arms from TC;
		otherwise if tonguesActive >= 0:
			if tonguesActive is 0:
				say "[bold type]The tongues under your [if N is 1][ShortDesc of C][otherwise]clothing[end if] [if the player is horny]seem satisfied with how horny they've made you, and [end if]return to a passive state.[roman type][line break]";
				update appearance level;
				force clothing-focus redraw; [This forces the clothing window to redraw]
			otherwise:
				say "[one of]The tongues under your [if N is 1][ShortDesc of C][otherwise]clothing[end if] continue to lick you with their sloppy, salivating tongues.[or][or][or][or][cycling]";
				arouse 25 * N;
		if the rounds-horny of no-orgasm-quest >= a random number between (45 - the sex addiction of the player) and 200: [It's more difficult for a sex addicted player to avoid orgasms]
			progress quest of no-orgasm-quest;
			now the rounds-horny of no-orgasm-quest is 0;
	otherwise:
		now tonguesActive is 0.

Report slapping:
	compute tongue clothing.
Report kneeing:
	compute tongue clothing.
Report kicking:
	compute tongue clothing.
Report zapping:
	compute tongue clothing.

To compute tongue clothing:
	let N be the number of worn tongued clothing;
	if N > 0:
		if tonguesActive < 0:
			let C be a random worn tongued clothing;
			say "[bold type]The tongues under your [if N is 1][ShortDesc of C][otherwise]clothing[end if] react to the combat and begin to salivate and lick you wherever they can reach![roman type][line break]";
			now tonguesActive is a random number between 15 and 40;
			update appearance level;
			force clothing-focus redraw; [This forces the clothing window to redraw]
			stimulate arms from C;
		if spiked-tiara is off-stage and tonguesActive > 0 and spiked-tiara is actually summonable:
			say "[bold type]A [MediumDesc of spiked-tiara] appears on your forehead! You feel its tongues immediately begin to explore your head, and inside your ears...[roman type][line break]";
			summon spiked-tiara cursed.

Chapter - Class Outfit

Definition: spiked-tiara (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed]
	if wearing-target is not C and wearing-target is tongued, decide yes;
	decide no.

[tongue-summoned is a number that varies.
To compute unique recycling of (C - spiked-tiara):
	now tongue-summoned is 0.]

To compute class outfit of (H - spiked-tiara):
	let L be the list of off-stage tongued clothing;
	let something-summoned be H;
	repeat with C running through L:
		if something-summoned is H and C is actually summonable:
			now something-summoned is C;
			say "[bold type]Your spiked tiara's tongues wriggle enthusiastically as a [ShortDesc of C] materialises on you.[roman type][line break]";
			summon C;
			if a random number between 1 and 2 is 1, now C is dexterity-influencing;
			otherwise now C is strength-influencing;
			now the raw-magic-modifier of C is the number of worn tongued clothing / 3;
	if something-summoned is H:
		let O be a random worn overdress;
		let S be a random worn shoes;
		let B be a random worn bra;
		let T be a random worn stockings;
		let BT be a random worn belt;
		let E be a random worn hand ready equippable;
		if S is shoes and S is not tongue-heels:
			transform S into tongue-heels;
		otherwise if T is stockings and T is not tongue-stockings:
			transform T into tongue-stockings;
		otherwise if BT is belt and T is not demonic:
			transform T into tongue-belt;
		otherwise if B is bra and B is not tongue-bra:
			transform B into tongue-bra;
		otherwise if O is overdress and O is not tongue-suit:
			transform O into tongue-suit;
			repeat with SK running through worn skirted clothing:
				say "Your [SK] [wardrobeVanishes of SK]!";
				now SK is in pink wardrobe;
		otherwise if E is equippable and E is not demonic:
			transform E into tongue-gloves.

Chapter - Quest

no-orgasm-quest is a headgear-clothing-quest. no-orgasm-quest has a number called rounds-horny.

To uniquely set up (C - spiked-tiara):
	now the quest of C is no-orgasm-quest.

To say QuestFlav of (Q - no-orgasm-quest):
	say "You sense it wants you to [bold type]stay horny[roman type] but try and avoid orgasming for as long as possible.".

To say QuestTitle of (Q - no-orgasm-quest):
	say " (orgasm avoiding quest)".

Spiked Tiara ends here.
