Diaper Framework by Knickers begins here.


diaper is a kind of knickers. The armour of diaper is 11. The description of diaper is "[ImageDesc of item described][diaper-desc]". The soak-limit of diaper is usually 36. A diaper is usually manly. a knickers has a number called mess. The text-shortcut of diaper is "dp". A diaper is usually manly.

Definition: a clothing (called D) is dry rather than wet:
	if the total-soak of D <= 0, decide yes;
	decide no.

Definition: a knickers (called D) is unmessed rather than messed:
	if the mess of D <= 0, decide yes;
	decide no.

Check going down when the player is in Woods16 and there is a worn messed knickers and diaper quest is 0:
	say "[variable custom style]I'm not going into some small closed space while wearing this smelly thing![roman type][line break]" instead.

Definition: a knickers (called D) is unsoiled rather than soiled:
	if D is dry and D is unmessed, decide yes;
	decide no.

Definition: a knickers (called K) is soilable:
	decide no.

Definition: a diaper (called D) is soilable:
	decide yes.

Definition: a training pants (called D) is soilable:
	if panty messing is 0, decide no;
	decide yes.
Definition: a panties (called D) is soilable:
	if panty messing is 0, decide no;
	decide yes.
Definition: a briefs (called D) is soilable:
	if panty messing is 0, decide no;
	decide yes.
Definition: a hotpants (called D) is soilable:
	if panty messing is 0, decide no;
	decide yes.
Definition: a microshorts (called D) is soilable:
	if panty messing is 0, decide no;
	decide yes.
Definition: a cutoffs (called D) is soilable:
	if panty messing is 0, decide no;
	decide yes.
Definition: a bikini bottoms (called D) is soilable:
	if panty messing is 0, decide no;
	decide yes.
Definition: a pink bikini bottoms (called D) is soilable:
	decide no.
Definition: a crotchless bikini bottoms (called D) is soilable:
	decide no.

To clean (C - a knickers):
	now the urine-soak of C is 0;
	now the milk-soak of C is 0;
	now the semen-soak of C is 0;
	now the mess of C is 0.

To set up influence of (C - a diaper):
	now C is delicateness-influencing.

To compute drying of (C - a diaper):
	do nothing.

disposable diaper is a kind of diaper.
pullup diaper is a kind of diaper.

Definition: a diaper (called C) is leghole free:
	if C is disposable diaper, decide yes;
	decide no.

The printed name of diaper is usually "[TQlink of item described][clothing-title-before]diaper[clothing-title-after][TQxlink of item described][verb-desc of item described]".

The DQFigure of diaper is usually DQMedium. 

To compute SelfExamineDesc of (K - a diaper):
	say "A large puffy adult diaper completely covers your [ShortDesc of hips]. ".

To say selfexamineuniquetitle of (K - a diaper):
	say "diaper".

To say diaper-desc:
	say ClothingDesc of item described;
	say "[diaper-saturation-desc]";
	if item described is crotch-unzipped:
		say "The crotch is currently unzipped.";
	otherwise if item described is no protection:
		say "A large tear at the crotch means that your orifices are left unguarded, and urinating will inevitably still cause you to make a mess.".

To decide which number is the original price of (C - a diaper):
	decide on 3.

To decide which number is the heaviness of (D - a diaper):
	decide on the weight of D + 1.

To decide which number is the initial outrage of (C - a diaper):
	if diaper quest is 1, decide on 0;
	if C is currently diaper covered, decide on 3;
	let O be 3 + the unique outrage of C;
	if the urine-soak of C is 0, decrease O by 2;
	decide on O.

To decide which number is the initial cringe of (C - a diaper):
	if C is currently diaper covered, decide on 3;
	let O be 6 + the unique outrage of C;
	if the urine-soak of C is 0, decrease O by 2;
	decide on O.

Definition: a diaper (called D) is currently diaper covered: [if it's not, that means it's fully visible. otherwise it means that probably just the shape can be seen.]
	if D is not worn, decide no;
	if there is a worn diaper covering clothing, decide yes;
	decide no.

Definition: a clothing (called C) is diaper covering:
	if C is potentially at least partially asshole covering not-butt-windowed clothing and C is not knickers, decide yes;
	decide no.

To decide which number is the unique outrage of (C - a diaper):
	decide on 0.
	
To decide which number is the fluid outrage of (C - a diaper):
	if diaper quest is 1 and C is wet and C is not currently diaper covered:
		if the total-soak of C >= the soak-limit of C, decide on 8;
		decide on 5;
	decide on 0.

Definition: a diaper (called C) is fluid immune:
	decide no.

Definition: a diaper (called C) is too boring:
	decide no.

To say ShortDesc of (D - a diaper):
	say selfexamineuniquetitle of D.
	
A diaper has a number called curse-charge.
	
To compute periodic effect of (D - a diaper):
	compute unique periodic effect of D;
	if D is no protection and D is not zippable and D is cursed or D is blessed:
		if the number of embodied things penetrating a fuckhole is 0 and the bladder of the player > 4 and the player is not in danger and (the soak-limit of D / 2 > the total-soak of D):
			say "[bold type]You feel your [D] somehow repair itself!  The rip at the crotch disappears, leaving it looking brand new[if the urine-soak of D > 0] (apart from the [urine])[end if].[roman type][line break]";
			repair D;
	increase the curse-charge of D by 1;
	if the curse-charge of D > 35:
		now the curse-charge of D is 0;
		let S be ((the soak-limit of D * 4) / 5) - the total-soak of D; [Is the diaper over 80% full]
		if S <= 0 and D is not cursed and a random number between 1 and 70 is 1:
			say "[bold type]You feel the waistband and leg holes of your [ShortDesc of D] tighten significantly. It looks like you can't take it off any more![line break][variable custom style]I'm being punished for not changing it, aren't I?[roman type][line break]";
			curse D;
	if xavier-diaper-link > 0 and D is total protection:
		increase xavier-diaper-link by 1;
		if xavier-diaper-link is 17 or xavier-diaper-link is 39:
			say "All of a sudden you get a wet feeling from your [genitals]... but it's not you. The Demon Queen must be urinating [one of][or]once [stopping]again!  In any case it feels, sounds and appears as if you are wetting yourself. ";
			PissSoak 12 on D;
			say "[PeeReaction 2]";
			if diaper lover < 3, now xavier-diaper-link is 1;
		if xavier-diaper-link is 57:
			now xavier-diaper-link is 1;
			say "All of a sudden you feel your butthole open wide to start letting out a massive ooze of poop... but it's not you. The Demon Queen must be messing herself [one of][or]once [stopping]again!  In any case it feels, sounds and appears as if it's you, which is all that really matters. ";
			now rectum is 35;
			if D is not demon diaper, now diaper-scene-unhandled is 1;
			compute messing.

To compute unique periodic effect of (D - a diaper):
	do nothing.

Definition: a diaper (called D) is basic loot:
	decide no. [A diaper never spawns from selecting a random basic loot knickers. #MG Seems redundant with the default]

Definition: a diaper (called D) is fetish appropriate:
	if diaper lover >= 1, decide yes;
	decide no.

To decide which number is the heaviness of (D - a diaper):
	decide on the weight of D.

To decide which number is the weight of (D - a diaper):
	let X be 0;
	increase X by the total-soak of D / 10;
	decrease X by the magic-modifier of D;
	decrease X by the number of worn diaper covers * 3;
	if X > 0, decide on X;
	decide on 0.

Definition: a diaper (called D) is eligible:
	if D is store, decide no;
	if D is in holding pen, decide no;
	if D is unique or D is rare, decide no;
	if D is off-stage, decide yes;
	if D is worn, decide no;
	if D is held, decide no;
	if D is in the location of the player, decide no;
	if D is in pink wardrobe, decide no;
	repeat with C running through containers in the location of the player:
		if D is in C, decide no; [This is here to stop us spawning a diaper in a container then immediately moving it back to standard item pen]
	decide yes.

To restock (C - a diaper):
	let B be a random eligible diaper;
	if B is diaper, now B is in Standard Item Pen.

This is the setup starting diapers rule:
	if diaper lover >= 1 and diaper quest is 0:
		let C be a random diaper;
		restock C;
		restock C.
The setup starting diapers rule is listed in the setup starting items rules.
		
To say diaper-saturation-desc:
	let D be the soak-limit of the item described;
	if item described is messed, say "You have filled the diaper [if the mess of item described > 10]to the brim with[otherwise if the mess of item described > 5]with a large amount of[otherwise]with a relatively small amount of[end if] your stinky mess.";
	say "[if the total-soak of item described >= D]It has absorbed as much [soak-types] as it can possibly hold, and is puffed out to its largest possible size. [otherwise if the total-soak of item described >= D / 4]It has absorbed a huge amount of [soak-types], and as such has expanded quite a bit. [otherwise if the total-soak of item described >= D / 6]It has absorbed a decent amount of [soak-types]. [otherwise if the total-soak of item described >= D / 10]It has absorbed a smallish amount of [soak-types]. [otherwise if the total-soak of the item described > 0]It has absorbed a small amount of [soak-types].[otherwise]It is completely unsoiled. [end if]";
	if the item described is worn, say "[if the weight of item described is 0]It doesn't weigh you down at all.[otherwise if the weight of item described is 1]It is weighing you down a tiny amount.[otherwise if the weight of item described is 2]It is weighing you down a noticeable amount.[otherwise if the weight of item described is 3]It is quite heavy now and the bloated nature is forcing you to walk with a waddle.[otherwise if the weight of item described is 4]It is very noticeably weighing you down and making it impossible to walk without a waddle.[otherwise if the weight of item described is 5]It is adding significant amounts to your body weight and is forcing your legs apart into an exaggerated waddle.[otherwise if the weight of item described is 6]It is extremely heavy and has expanded to a comical size. Your thighs are forced wide apart and you can't bend your knees at all when you walk.[otherwise]It is so heavy from all the [soak-types] it is holding that it feels like it is made of lead. The puffy padding has expanded so far in every direction that you can no longer see your feet. You can feel that the bottom of the diaper goes down past your knees. Your thighs and legs are forced so far apart that you can only move by waddling along with the tiniest of steps. You would probably be better off crawling.".

Report wearing diaper:
	if the urine-soak of the noun > 0:
		say "The cold wet squelch as you put the [noun] on makes you [if the diaper addiction of the player < 10]shudder involuntarily. How gross[otherwise if the diaper addiction of the player < 14]squirm uncomfortably. It's cold and clammy[otherwise]shiver with arousal[end if].";
		if the diaper addiction of the player < 14, arouse 350;
		DiaperAddictUp 1;
	if diaper lover is 3 and the player is feeling full:
		say "Almost as if a switch is flicked inside your stomach, you suddenly feel the [if rectum > 6]desperate [end if]need to go number two.[one of][line break][variable custom style]It's like I only can feel the need to go whilst wearing a diaper?! This game is [if the bimbo of the player < 10]fucked up[otherwise]weird[end if]![roman type][line break][or][stopping]";

Check taking a messed knickers:
	say "[variable custom style]There's no way I'm touching that.[roman type][line break]" instead.

Check wearing a messed knickers:
	say "[variable custom style]There's no way I'm touching that.[roman type][line break]" instead.

Check taking off a worn messed knickers:
	say "[variable custom style]There's no way I'm touching that until I've found [if the bimbo of the player < 13]a way to change and clean myself[otherwise]someone to change me[end if].[roman type][line break]" instead.

Definition: a knickers is unremovable rather than removable if it is messed.

To say MonsterOfferRejectFlav of (M - an intelligent monster) to (T - a diaper):
	say "[speech style of M]'Do I look like I have problems controlling my bladder?!'[roman type][line break]".

To decide which object is the unique-upgrade-target of (C - a diaper):
	decide on nothing.

To decide which object is the potential-upgrade-target of (C - a diaper):
	let chosenD be nothing;
	repeat with D running through eligible diapers: [Find the next most padded diaper at the same humiliation level]
		if the initial outrage of D is the initial outrage of C and D is not waddle diaper and the soak-limit of D > the soak-limit of C:
			if chosenD is nothing:
				now chosenD is D;
			otherwise:
				if the soak-limit of chosenD > the soak-limit of D, now chosenD is D;
	if chosenD is nothing:
		repeat with D running through eligible diapers: [If we can't increase the padding, find the next most humiliating diaper]
			if the initial outrage of D > the initial outrage of C and D is not waddle diaper:
				if chosenD is nothing:
					now chosenD is D;
				otherwise:
					if the initial outrage of chosenD > the initial outrage of D, now chosenD is D;
	if chosenD is nothing and the bimbo of the player > 8, decide on a random off-stage waddle diaper; [We've reached the end of all available diapers, time to force the player into the crazy waddle diaper!]
	decide on chosenD. [The waddle diaper is already on-stage, so no more transformations happen.]

Definition: a diaper (called D) is untransformable:
	if the potential-upgrade-target of D is nothing, decide yes;
	decide no.

Check taking off worn diaper:
	if there is a worn I love my wet nappies T-shirt and the urine-soak of the noun is not 0 and the total-soak of the noun < (the soak-limit of the noun / 2) and the noun is total protection, say "Your [printed name of random worn I love my wet nappies T-shirt] is somehow magically preventing you from removing the [noun]!" instead;
	if the noun is glued:
		try tearing off the noun;
		if the noun is glued:
			do nothing instead.




Diaper Framework ends here.

