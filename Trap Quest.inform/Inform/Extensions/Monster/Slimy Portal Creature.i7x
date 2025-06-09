Slimy Portal Creature by Monster begins here.

slimy-portal is a thing. slimy-portal is not portable. slimy-portal is in Mansion45. The printed name of slimy-portal is "[TQlink of item described]slimy portal[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of slimy-portal is "sp". Understand "slimy", "portal" as slimy-portal. slimy-portal has a number called charge.

To say ExamineDesc of (C - slimy-portal):
	say "A weird swirling portal, contained within a frame of green slime. It's about as tall as you are. [if the charge of C <= 0]In the centre, it looks like some kind of object is poking through the portal. Perhaps you could take it.[otherwise]There was an item in the middle of it before. Maybe another one will appear later?[end if]".

To decide which figure-name is the examine-image of (C - slimy-portal):
	if the charge of C <= 0, decide on figure of slimy-portal-creature item;
	decide on figure of slimy-portal-creature.

Definition: slimy-portal is immune to change: decide yes.

Check taking slimy-portal:
	if the charge of slimy-portal > 0, say "There's nothing to take." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the player is prone, say "You would need to be standing up to do that." instead;
	if the player is immobile or the player is in danger, say "Don't you think you're a bit busy?!" instead;
	say "You reach out and try to yank the item out of the portal.";
	allocate 6 seconds;
	if the player is getting unlucky:
		say "But instead, it yanks you![line break][variable custom style]Huh?![roman type][line break]The slime grabs hold of you and pulls you all the way inside!";
		set up slimy-portal-creature;
		now slimy-portal-creature is in the location of the player;
		interest slimy-portal-creature;
		anger slimy-portal-creature;
		destroy slimy-portal;
		follow the slimy-portal-creature wallification rule;
	otherwise:
		let C be a random off-stage fetish appropriate alchemy product;
		if C is nothing or a random number between 1 and 2 is 1:
			now C is a random off-stage plentiful accessory;
			now C is pink diamond;
			if the player is getting lucky:
				now C is pure diamond;
				if the player is getting lucky, now C is solid gold;
			set shortcut of C;
		now C is carried by the player;
		say "You pull it out to discover that it's a [C]![line break][variable custom style][one of]Nice[or]Oh, sweet[at random]![roman type][line break]";
		if C is plentiful accessory:
			if C is actually summonable:
				now C is worn by the player;
			otherwise:
				now C is in the location of the player;
				say "Unable to wear it right now, you are forced to drop it on the ground.";
		focus-consider C;
		now the charge of slimy-portal is 400;
	do nothing instead.

A time based rule (this is the slimy portal rule):
	if the charge of slimy-portal > 0:
		decrease the charge of slimy-portal by time-seconds;
		if the charge of slimy-portal <= 0 and slimy-portal is in the location of the player, say "A new item appears in the middle of [NameDesc of slimy-portal]!".


slimy-portal-creature is a monster. slimy-portal-creature is neuter. slimy-portal-creature is guarding. The poison-status of slimy-portal-creature is -1. The blind-status of slimy-portal-creature is -1.
slimy-portal-creature has a direction called latest-direction.
slimy-portal-creature has a number called fucker-timer.
slimy-portal-creature has a number called fucker-count.
slimy-portal-creature can be bwc-oral, bbc-oral, or demon-oral.
slimy-portal-creature can be bwc-fuck, bbc-fuck, or demon-fuck.

The text-shortcut of slimy-portal-creature is "sp". Understand "slimy", "portal", "monster" as slimy-portal-creature.

Figure of slimy-portal-creature item is the file "NPCs/Mansion/WallCreature/slimy-portal-creature1a.png".
Figure of slimy-portal-creature is the file "NPCs/Mansion/WallCreature/slimy-portal-creature1b.png".

Figure of interested slimy-portal-creature is the file "NPCs/Mansion/WallCreature/slimy-portal-creature2.png".
Figure of Wrangling slimy-portal-creature 1 is the file "NPCs/Mansion/WallCreature/slimy-portal-creature3.png".
Figure of Wrangling slimy-portal-creature 2 is the file "NPCs/Mansion/WallCreature/slimy-portal-creature4.png".
Figure of Wrangling slimy-portal-creature 3 is the file "NPCs/Mansion/WallCreature/slimy-portal-creature5.png".


To decide which figure-name is the monster-image of (M - slimy-portal-creature):
	decide on Figure of slimy-portal-creature.

To decide which figure-name is the unfriendly-monster-image of (M - slimy-portal-creature):
	if M is grabbing the player, decide on figure of walled creature;
	let N be the number of body parts wrangled by M;
	if N > 0:
		if N >= 2, decide on Figure of Wrangling slimy-portal-creature 3;
		if M is wrangling arms, decide on Figure of Wrangling slimy-portal-creature 1;
		decide on Figure of Wrangling slimy-portal-creature 2;
	decide on Figure of Interested slimy-portal-creature.


To say ShortDesc of (M - slimy-portal-creature):
	say "portal monster".

To say MediumDesc of (M - slimy-portal-creature):
	say "slimy portal monster".

To say MonsterDesc of (M - slimy-portal-creature):
	say "This weird slimy portal is alive, and has eyes!!!".

To set up (M - slimy-portal-creature):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - slimy-portal-creature):
	decide on 14.

Definition: slimy-portal-creature (called M) is objectifying the player:
	now the objectification of M is 1;
	decide yes.
Definition: slimy-portal-creature is scarable: decide no.
Definition: slimy-portal-creature is a urinater: decide no.

Definition: slimy-portal-creature (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if the latest-direction of M is the noun, decide yes;
	decide no.

To say MovementBlock of (M - slimy-portal-creature):
	say "[BigNameDesc of M] is completely blocking that doorway! There's no way to get past.".

To compute perception of (M - slimy-portal-creature):
	anger M;
	say CombatProvokedReaction of M.

The unique punishment rule of slimy-portal-creature is usually the slimy-portal-creature merging rule.
This is the slimy-portal-creature merging rule:
	if current-monster is grabbing the player, rule succeeds;
	if the player is prone:
		say "[BigNameDesc of slimy-portal-creature] reaches out with a slimy appendage and ";
		if current-monster is wrangling arms and current-monster is wrangling thighs:
			say "pulls you all the way inside!";
			follow the slimy-portal-creature wallification rule;
		otherwise if current-monster is wrangling arms or a random number between 1 and 2 is 1:
			say "grabs hold of your thighs!";
			now current-monster is wrangling thighs;
		otherwise:
			say "grabs hold of your arms!";
			now current-monster is wrangling arms;
		rule succeeds.

To say CombatProvokedReaction of (M - slimy-portal-creature):
	say "[BigNameDesc of M] fixes all of its eyes on you!".

To say DamageReaction (N - a number) of (M - slimy-portal-creature):
	if N > (the maxhealth of M / 4):
		say "[BigNameDesc of M] shudders as it withstands the blow.";
	otherwise:
		say "[BigNameDesc of M][']s structural integrity is beginning to fail!".

To compute failed damage of (M - slimy-portal-creature):
	if attack-type >= 4:
		say "[big he of M] is completely unaffected[one of]. It would seem that magic attacks have no effect on [NameDesc of slimy-portal-creature][or][stopping]!";
	otherwise:
		compute slimy-portal-creature attack stickiness.

To decide which number is the damage modifier of (M - slimy-portal-creature): [Immune to magic]
	if attack-type >= 4, decide on (attack-damage * -1);
	decide on 0.

To compute standard damage of (M - slimy-portal-creature):
	if the health of M > 0:
		compute damage reaction of M;
		compute slimy-portal-creature attack stickiness;
		interest M;
		anger M;
		if M is undefeated and M is not caged, compute combatProvoked of M; [All NPCs should become unfriendly here, if able.]
	otherwise:
		compute defeat of M.

To compute slimy-portal-creature attack stickiness:
	if attack-type <= 3:
		if the player is getting unlucky:
			say "As you try to pull away, you find that your [if attack-type is 1]arm[otherwise]leg[end if] has become stuck inside [NameDesc of slimy-portal-creature][']s body! [GotUnluckyFlav]You have a decision to make: keep fighting, or first try to pull away?";
			if attack-type is 1, now slimy-portal-creature is wrangling arms;
			otherwise now slimy-portal-creature is wrangling thighs;
			now slimy-portal-creature is stalled.

The latex punishment rule of slimy-portal-creature is the no latex punishment rule.

The slimy-portal-creature priority attack rules is a rulebook. The priority attack rules of a slimy-portal-creature is the slimy-portal-creature priority attack rules.

[Once partially stuck, you'll soon be fully stuck]
This is the slimy-portal-creature grabbiness rule:
	let M be current-monster;
	let N be the number of body parts wrangled by M;
	if N is 1:
		say "You are being rapidly sucked into the centre of [NameDesc of M]. Soon you won't be able to move your limbs at all!";
		now M is wrangling thighs;
		now M is wrangling arms;
		rule succeeds;
	otherwise if N is 2 and the player is upright:
		say "[BigNameDesc of M] begins to draw you inside! You are forced to your knees.";
		try kneeling;
		rule succeeds.
The slimy-portal-creature grabbiness rule is listed in the slimy-portal-creature priority attack rules.

Definition: slimy-portal-creature is wrangling-while-kneeling: decide yes.

This is the player can't attack in slimy-portal-creature wrist wrangle rule:
	if slimy-portal-creature is wrangling arms:
		say "[BigFuckerDesc of slimy-portal-creature] has your arm immobilised inside [his of slimy-portal-creature] body. You'll have to free yourself first!";
		rule fails.
The player can't attack in slimy-portal-creature wrist wrangle rule is listed in the ability to slap rules.

This is the player can't attack in slimy-portal-creature thigh wrangle rule:
	if slimy-portal-creature is wrangling thighs:
		say "[BigFuckerDesc of slimy-portal-creature] has your leg immobilised inside [his of slimy-portal-creature] body. You'll have to free yourself first!";
		rule fails.
The player can't attack in slimy-portal-creature thigh wrangle rule is listed in the ability to knee rules.
The player can't attack in slimy-portal-creature thigh wrangle rule is listed in the ability to kick rules.


To say WrangleResistFailFlav of (M - slimy-portal-creature):
	say "You struggle, but [one of]you don't manage to break free[or]the slime clinging to you is just too strong[in random order] this time!".

To say WrangleResistSuccessFlav of (M - slimy-portal-creature):
	say "You yank as hard you can, and with a loud SLURP, your [if the number of body parts wrangled by M > 1]arms and legs[otherwise if thighs is wrangled by M]leg[otherwise]arm[end if] slips free!".

This is the slimy-portal-creature wallification rule:
	say "[bold type]You are now stuck inside [NameDesc of slimy-portal-creature][roman type], with your head sticking out one side, and your butt sticking out the other![line break][variable custom style]Fuck! I can't get any kind of grip to get free![roman type][line break]";
	dislodge slimy-portal-creature;
	now the fucker-timer of slimy-portal-creature is a random number between 7 and 30;
	now the fucker-count of slimy-portal-creature is 0;
	now slimy-portal-creature is grabbing the player;
	maybe-map-display the unfriendly-monster-image of slimy-portal-creature;
	now the stance of the player is 1.

This is the slimy-portal-creature wallification prevents hand use rule:
	if slimy-portal-creature is grabbing the player:
		if manual hands attempt is 1, say "[variable custom style]My hands are stuck inside this slimy thing!!![roman type][line break]";
		rule fails.
The slimy-portal-creature wallification prevents hand use rule is listed in the hands restriction rules.

To compute unique early action of (M - slimy-portal-creature):
	if M is grabbing the player:
		if diaper quest is 1:
			let K be a random worn knickers;
			if K is slime-diaper:
				let P be a random off-stage slime pacifier;
				if P is actually summonable and a random number between 1 and 2 is 1:
					say "[BigNameDesc of M] pushes a [MediumDesc of P] into your mouth![line break][variable custom style]Mmmmmph![roman type][line break]";
					summon P cursed with quest;
				otherwise if the fucker-count of M is 0 and M is able to use a diaper urinal:
					increase the fucker-count of M by 1;
					let X be a random unseen-stranger;
					say "You hear a dominant-sounding voice from the other side of [NameDesc of M]![line break][speech style of X]'[one of]Well well well, look what we have here. Some silly baby's gone and got [himself of the player] caught by the slime wall[or]Ooh, the slime wall has got a new catch[stopping]. Well, as I'm here, and there's this very convenient padding right here for me to use...'[roman type][line break]";
					now diaper-invasion-waistband is false;
					now diaper-invasion-hold is false;
					say "You are powerless to resist as [NameDesc of X] uses [his of X] own hand to pull the waistband of the rear of your diaper back to accept [his of X] [urine].";
					say DiaperUrinalPeeFlav of X;
					compute diaper urinal peeing of X;
					say "With a satisfied sigh, [NameDesc of X] zips back up.[line break][speech style of X]'Well, now I feel a lot better. And hey, if anything, you should be thanking me, baby[boy of the player]. Since that slime diaper you've got will only dissolve once it's completely soaked inside.'[roman type][line break]And with that, [NameDesc of X] leaves you alone, with the warmth of [his of X] [urine] still a lasting reminder of what [he of X] did to you against your skin.";
				otherwise:
					say "With a loud [']SLURP['], [NameDesc of M] releases you, depositing you back on the ground! It begins to shamble away.";
					bore M;
			otherwise:
				if K is knickers:
					now the urine-soak of K is 0;
					now the milk-soak of K is 0;
					now the semen-soak of K is 0;
					WaterEmpty K;
					say "Magic green slime gets onto your [NameDesc of K]! ";
					silently transform K into slime-diaper;
					say "The next thing you know, ";
				otherwise:
					summon slime-diaper uncursed;
					say "Magic green slime oozes around your loins, and the next thing you know, ";
				say "you're wearing a [MediumDesc of slime-diaper]![line break][variable custom style][one of]Huh?![or]Not again![stopping][roman type][line break]";
				let C be the coverer of slime-diaper;
				while C is clothing:
					say "As the slime touches your [C], it disintegrates it!";
					destroy C;
					now C is the coverer of slime-diaper;
				cutshow Figure of walled creature slime diaper for M;
		otherwise:
			if there is a monster penetrating face and there is a monster penetrating a fuckhole:
				let X be a random monster penetrating face; [we will only be displaying the rear holes on the wall itself]
				if M is demon-oral:
					cutshow figure of walled creature demon oral for X;
				otherwise if M is bbc-oral:
					cutshow figure of walled creature bbc oral for X;
				otherwise:
					cutshow figure of walled creature bwc oral for X;
			decrease the fucker-timer of slimy-portal-creature by 6;
			if the fucker-timer of slimy-portal-creature <= 0: [fucker appears, or the player is released]
				if the player is monster fucked and the fucker-count of slimy-portal-creature > 6:
					do nothing; [wait for fuckers to finish, then release]
				otherwise if the player is not monster fucked and the fucker-count of slimy-portal-creature >= a random number between 1 and 6: [instead, player is released]
					say "With a loud [']SLURP['], [NameDesc of M] releases you, depositing you back on the ground! It begins to shamble away.";
					bore M;
				otherwise:
					now the fucker-timer of slimy-portal-creature is a random number between 7 and 36;
					if a random number between 1 and 2 is 1 or there is a monster penetrating face:
						increase the fucker-count of slimy-portal-creature by 1;
						let X be a random off-stage unseen-stranger;
						set up X;
						now X is in the location of the player;
						interest X;
						anger X;
						let Y be a random off-stage unseen-stranger;
						say "You hear [if Y is a monster]two dominant-sounding voices[otherwise]a dominant-sounding voice[end if] from the other side of [NameDesc of M]![line break][speech style of X]'[one of]Well well well, look what we have here. Some silly slut's gone and got [himself of the player] caught by the slime wall[or]Ooh, the slime wall has got a new catch[stopping].'[roman type][line break]";
						if the player is possessing a vagina and chastity-belt is not worn:
							set up Y;
							now Y is in the location of the player;
							interest Y;
							anger Y;
							say "One of them chuckles.[line break][speech style of X]'Looks like it's our lucky day.'[roman type][line break]The other says hungrily.";
						otherwise:
							say "[big his of X] voice sounds rather... lusty.";
						let stripping-in-progress be 1;
						let C be a random top level ass protection clothing;
						if the player is possessing a vagina and chastity-belt is not worn, now C is a random top level protection clothing;
						while stripping-in-progress > 0:
							let D be C;
							if D is displacable:
								say "Something pulls [NameDesc of D] out of the way!";
								displace D;
							otherwise if D is rippable:
								say "Something rips a hole in [NameDesc of D]!";
								rip D;
							otherwise if D is actually strippable:
								say "Something pulls [NameDesc of D] off of you!";
								dislodge D;
								now D is in the location of the player;
							otherwise if D is destructible:
								say "Something rips [NameDesc of D] to shreds!";
								destroy D;
							let C be a random top level ass protection clothing;
							if the player is possessing a vagina and chastity-belt is not worn, now C is a random top level protection clothing;
							if C is nothing:
								now stripping-in-progress is 0;
							otherwise if C is D:
								now stripping-in-progress is -1;
								say "You feel [NameDesc of D] being tugged at!";
						if stripping-in-progress is 0:
							let S be a random thing penetrating asshole;
							if S is disembodied and S is not unremovable clothing:
								say "[BigNameDesc of X] removes [NameDesc of S] from your [asshole]!";
								dislodge S;
								now S is in the location of the player;
							if the player is possessing a vagina:
								now S is a random thing penetrating vagina;
								if S is disembodied and S is not unremovable clothing:
									say "[BigNameDesc of X] removes [NameDesc of S] from your [vagina]!";
									dislodge S;
									now S is in the location of the player;
						if stripping-in-progress is -1:
							say "[speech style of X]'Fucking thing won't budge!'[roman type][line break]You hear the frustrated sounds of someone giving up stripping you behind [NameDesc of M].";
						if vagina is not undefended and Y is a monster, finally destroy Y;
						if asshole is not undefended, finally destroy X;
						now M is bwc-fuck;
						anger X;
						if X is a combative monster:
							say "You feel something thick and warm sliding into your [asshole]. You're being fucked by [NameDesc of X]!";
							now X is penetrating asshole;
							now the sex-length of X is a random number between 3 and 5;
							if the player is getting unlucky:
								now M is demon-fuck;
								say "But wait! That's much thicker than a normal [manly-penis]?! And as [he of X] thrusts away, you feel things getting hotter than they should![line break][speech style of X]'Hahaha, enjoying getting fucked by a demon? Or is the heat too much for you to handle?'[line break][variable custom style]Oh my god, [if Y is a combative monster]they're DEMONS[otherwise][he of X][']s a DEMON[end if]![roman type][line break]";
								ruin asshole;
							otherwise if interracial fetish > 0 and a random number between 1 and 5 > 2:
								now M is bbc-fuck;
								say "But wait! That's much thicker than a normal [manly-penis]?![line break][speech style of X]'Hahaha, how do you like this thick black cock, whore?'[line break][variable custom style]Oh my god, [he of X][']s a black guy! And [he of X][']s HUGE![roman type][line break]";
							ruin asshole;
						if Y is a combative monster:
							say "[if X is a combative monster]At the same time, you[otherwise]You[end if] feel a penis sliding into your [vagina]. You're being [if X is a combative monster]double penetrated back there[otherwise]fucked by [NameDesc of Y][end if]!";
							now Y is penetrating vagina;
							if X is a combative monster, now the sex-length of Y is the sex-length of X;
							otherwise now the sex-length of Y is a random number between 3 and 5;
							if condom fetish is not 0 and condom fetish is not 2 and a random number between 0 and 1 is 1:
								now X is wrapped;
								say "[variable custom style]At least I can feel that [he of X][']s wearing a condom...[roman type][line break]";
							if X is not a combative monster and the player is getting unlucky:
								now M is demon-fuck;
								say "But wait! That's much thicker than a normal [manly-penis]?! And as [he of Y] thrusts away, you feel things getting hotter than they should![line break][speech style of Y]'Hahaha, enjoying getting fucked by a demon? Or is the heat too much for you to handle?'[line break][variable custom style]Oh my god, [he of Y][']s a DEMON![roman type][line break]";
								ruin vagina;
							ruin vagina;
					otherwise if face is not actually occupied:
						increase the fucker-count of slimy-portal-creature by 1;
						let X be a random off-stage unseen-stranger;
						set up X;
						now X is in the location of the player;
						interest X;
						say "You hear someone approaching you from the front![line break][speech style of X]'[one of]Oh look, a slimy little fuckhole. Don't mind if I do[or]A lovely little face-hole, ripe for the fucking[stopping]...'[roman type][line break]Moments later, a warm, hard [manly-penis] is being pushed past your lips and into your mouth, and it keeps on going until it's pushing against the back of your throat![line break][variable custom style][gag sounds][roman type][line break]";
						now X is penetrating face;
						now the throating of X is 1;
						now the sex-length of X is a random number between 3 and 5;
						if condom fetish is not 0 and condom fetish is not 2 and a random number between 0 and 1 is 1:
							now X is wrapped;
							say "[variable custom style]At least I can feel that [he of X][']s wearing a condom...[roman type][line break]";
						now M is bwc-oral;
						if the player is getting unlucky:
							now M is demon-oral;
							say "But wait! As [he of X] thrusts away, you feel things getting hotter than they should![line break][speech style of X]'Hahaha, yes, that's right, this is going to get a bit SPICY, because you're getting throatfucked by a DEMON, you little human whore!'[roman type][line break]";
							PainUp 10;
						otherwise if interracial fetish > 0 and a random number between 1 and 5 > 2:
							now M is bbc-oral;
							say "But wait! That's much thicker than a normal [manly-penis]?![line break][speech style of X]'I'm impressed you fit so much of this big black cock, in your face-hole, slut.'[line break][variable custom style]Oh my god, [he of X][']s a black guy! And [he of X][']s HUGE![roman type][line break]".




To decide which number is the strength roll of (M - slimy-portal-creature):
	decide on (a random number between 1 and the difficulty of M) + (a random number between 1 and the difficulty of M).

To say StrikingSuccessFlav of (M - slimy-portal-creature) on (B - a body part):
	say "[BigNameDesc of M] smacks you with a slimy tentacle!".

To say StrikingFailureFlav of (M - slimy-portal-creature) on (B - a body part):
	say "[BigNameDesc of M] swipes at you, but you manage to dodge it.".


To compute defeat of (M - slimy-portal-creature):
	say "[BigNameDesc of M] collapses into an inert pile of slime.";
	loot M;
	destroy M.

To loot (M - a slimeball):
	let D be a random off-stage ectoplasm;
	if D is ectoplasm:
		now D is in the location of the player;
		compute autotaking D.

To say MuteGreetResponse of (M - slimy-portal-creature):
	say "The slime doesn't reply. It would appear to be magically animated rather than sentient.".

To say MuteQuestion of (M - slimy-portal-creature):
	say SexDollQuestion of M.


Slimy Portal Creature ends here.
