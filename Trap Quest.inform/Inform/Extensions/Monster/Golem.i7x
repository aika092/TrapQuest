Golem by Monster begins here.

golem is a monster. golem is neuter. golem is guarding. The poison-status of golem is -1.

The text-shortcut of golem is "gol". Understand "silicone", "slime" as golem.

Figure of Golem is the file "NPCs/MultiFloor/Golem/golem1.jpg".
Figure of Interested Golem is the file "NPCs/MultiFloor/Golem/golem2.jpg".
Figure of Wrangling Golem 1 is the file "NPCs/MultiFloor/Golem/golem3.jpg".
Figure of Wrangling Golem 2 is the file "NPCs/MultiFloor/Golem/golem4.jpg".
Figure of Wrangling Golem 3 is the file "NPCs/MultiFloor/Golem/golem5.jpg".

To decide which figure-name is the monster-image of (M - golem):
	decide on Figure of Golem.

To decide which figure-name is the unfriendly-monster-image of (M - golem):
	let N be the number of body parts wrangled by M;
	if N is 2, decide on Figure of Wrangling Golem 2;
	if N is 1, decide on Figure of Wrangling Golem 1;
	decide on Figure of Interested Golem.

To say ShortDesc of (M - golem):
	say "golem".

To say MediumDesc of (M - golem):
	say "[if artificial enhancements fetish is 1]silicone[otherwise]slime[end if] golem".

To say MonsterDesc of (M - golem):
	say "This blue creature superficially resembles a female form, but seems to be made out of a translucent, moist gel. You can immediately tell what whoever created [him of M] was most concerned with, as the face has no detail at all, while the breasts, belly, thighs and ass are all extremely 'thicc', rendered with as much perfection as can be managed in the medium. In spite of the lack of a face, [he of M] exudes a sense of malice[if M is guarding]. [bold type][big he of M] stands in front of the stairwell, blocking the way[roman type][end if].".

To set up (M - golem):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now M is guarding;
	now the boredom of M is 1000; [at first it doesn't attack on sight]
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - golem):
	decide on 11.

To compute monstermotion of (M - golem):
	compute room leaving of M;
	MonsterStomp M.

To MonsterStomp (M - golem):
	let stomped be 0;
	repeat with N running through undefeated awake monsters in the location of M:
		if stomped is 0 and N is not penetrating a body part and N is not grabbing the player and N is not M:
			compute N stomping M; [reversed]
			now stomped is 1.

To compute (M - a monster) stomping (N - golem):
	say "[BigNameDesc of M] grabs [NameDesc of N], but the golem seems happier for it! [if artificial enhancements fetish is 1][big his of N] body engulfs [NameDesc of M], and [NameDesc of M][']s muscles bulge out with new definition and power![otherwise][big his of N] body dissolves into a mass of ones and zeroes, which are absorbed into [NameDesc of M][']s skin. [big he of M] grunts as [his of M] muscles suddenly bulge out with even more definition and power![end if]";
	SilentlyDifficultyUp M by 6;
	destroy N.

Definition: golem is objectifying the player: decide yes.
Definition: golem is scarable: decide no.

Definition: golem (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if the noun is up or the noun is down, decide yes;
	let D be the difficulty of M * 2;
	let R be a random number from 1 to (D + the movement reduction of the player); [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
	if debuginfo > 0, say "[input-style][ShortDesc of M][']s movement block check: player movement penalty ([movement reduction of the player]) + block skill d[D] ([R - the movement reduction of the player]) = [R] | ([the dexterity of the player].5) dexterity[roman type][line break]";
	if R > the dexterity of the player, decide yes;
	decide no.

To say MovementBlock of (M - golem):
	if the noun is up or the noun is down, say "There's no way you can get to the other side of [NameDesc of M] without first defeating [him of M]!";
	otherwise say "[BigNameDesc of M] manages to get in front of you and block your path, slowing down your movement!".

To compute perception of (M - golem):
	anger M;
	say "The golem turns to face you almost mechanically and yet with unsettling grace[one of]. [big he of M] seems to be blocking the path forward, you'll need to deal with [him of M] to move on[or][stopping]. [CombatProvokedReaction of M]".

The unique punishment rule of golem is usually the golem merging rule.
This is the golem merging rule:
	if the player is prone, say "You cringe on the ground as the creature approaches you. [if artificial enhancements fetish is 1]You realise [he of golem] isn't stopping as [he of golem] moves towards you, and finally presses up against you! [big his of golem] cold fluid body engulfs you for a terrible instant before suddenly vanishing! Your relief quickly turns to dread at wondering what [he of golem] might have done to you...[otherwise]The creature embraces you in its mismatched arms, and your body suddenly feels warm! A feeling of horrible dread comes over you all of a sudden and your vision blacks out for a moment. When you come to, you are alone.[end if][line break]";
	otherwise say "[BigNameDesc of golem][']s cold fluid body engulfs you for a terrible instant before suddenly vanishing! Your relief quickly turns to dread at wondering what [he of golem] might have done to you...";
	cutshow Figure of Wrangling Golem 3 for golem;
	if artificial enhancements fetish is 1:
		if rubber top hat is off-stage and rubber top hat is actually summonable:
			say "You're now wearing a small pink latex top hat!";
			summon rubber top hat cursed;
		if the player is not top heavy:
			say "Your chest feels strange and you look down in horror to see your breasts have expanded. [if the silicone volume of breasts is 0]Apparently you have breast implants now![otherwise]Your breast implants are even bigger![end if]";
			BustImplantsUp 6;
			say "You now have [BreastDesc].";
		if the flesh volume of hips + the silicone volume of hips < max ass size:
			say "Your ass feels strange and you look down in horror to see it's expanded. [if the silicone volume of hips is 0]Apparently you have silicone implants in it now![otherwise]Your butt implants are even bigger than they used to be![end if]";
			AssImplantsUp 3;
			say "You now have [AssDesc].";
	otherwise:
		If the player is not top heavy:
			say "Your chest feels suddenly heavier...";
			Bustup 4;
		if the player is not bottom heavy:
			say "Your ass feels suddenly heavier...";
			HipUp 4;
		say "Your muscles feel a bit stiff...";
		DexDown 2;
	if the lips of face < max lip size:
		say "Your lips feel suddenly uncomfortable, and you can tell they've grown in size.";
		LipsUp 1;
	destroy golem;
	rule succeeds.

To say CombatProvokedReaction of (M - golem):
	say "Arms appear from the shoulders of [NameDesc of M].".

To say DamageReaction (N - a number) of (M - golem):
	if N > (the maxhealth of M / 4):
		say "[BigNameDesc of M] ignores the blow!";
	otherwise:
		say "[if artificial enhancements fetish is 1][BigNameDesc of M] seems to be leaking clear fluid from some tears in its body.[otherwise][BigNameDesc of M] seems to be starting to come apart at the seams.[end if]".

To compute failed damage of (M - golem):
	if attack-type >= 4:
		say "[big he of M] is completely unaffected[one of]. It would seem that magic attacks have no effect on [NameDesc of golem][or][stopping]!";
	otherwise:
		compute golem attack stickiness.

To decide which number is the damage modifier of (M - golem): [Immune to magic]
	if attack-type >= 4, decide on (attack-damage * -1);
	decide on 0.

To compute standard damage of (M - golem):
	if the health of M > 0:
		compute damage reaction of M;
		compute golem attack stickiness;
		interest M;
		anger M;
		if M is undefeated and M is not caged, compute combatProvoked of M; [All NPCs should become unfriendly here, if able.]
	otherwise:
		compute defeat of M.

To compute golem attack stickiness:
	if attack-type <= 3:
		if the player is getting unlucky:
			say "As you try to pull away, you find that your [if attack-type is 1]arm[otherwise]leg[end if] has become stuck inside [NameDesc of golem][']s body! [GotUnluckyFlav]You have a decision to make: keep fighting, or first try to pull away?";
			if attack-type is 1, now golem is wrangling arms;
			otherwise now golem is wrangling thighs;
			now golem is stalled.

The golem priority attack rules is a rulebook. The priority attack rules of a golem is the golem priority attack rules.

[Once partially stuck, you'll soon be fully stuck]
This is the golem grabbiness rule:
	let M be current-monster;
	let N be the number of body parts wrangled by M;
	if N is 1:
		say "You are being rapidly sucked into the centre of [NameDesc of M]. Soon you won't be able to move your limbs at all!";
		now M is wrangling thighs;
		now M is wrangling arms;
		rule succeeds;
	otherwise if N is 2:
		follow the golem merging rule;
		rule succeeds.
The golem grabbiness rule is listed in the golem priority attack rules.

This is the player can't attack in golem wrist wrangle rule:
	if golem is wrangling arms:
		say "[BigFuckerDesc of golem] has your arm immobilised inside [his of golem] body. You'll have to free yourself first!";
		rule fails.
The player can't attack in golem wrist wrangle rule is listed in the ability to slap rules.

This is the player can't attack in golem thigh wrangle rule:
	if golem is wrangling thighs:
		say "[BigFuckerDesc of golem] has your leg immobilised inside [his of golem] body. You'll have to free yourself first!";
		rule fails.
The player can't attack in golem thigh wrangle rule is listed in the ability to knee rules.
The player can't attack in golem thigh wrangle rule is listed in the ability to kick rules.


To say WrangleResistFailFlav of (M - golem):
	say "You struggle, but [one of]you don't manage to break free[or]the slime clinging to you is just too strong[in random order] this time!".

To say WrangleResistSuccessFlav of (M - golem):
	say "You yank as hard you can, and with a loud SLURP, your [if the number of body parts wrangled by M > 1]arms and legs[otherwise if thighs is wrangled by M]leg[otherwise]arm[end if] slips free!".

To decide which number is the strength roll of (M - golem):
	decide on (a random number between 1 and the difficulty of M) + (a random number between 1 and the difficulty of M).

To say StrikingSuccessFlav of (M - golem) on (B - a body part):
	say "[BigNameDesc of M] smacks you with a [if artificial enhancements fetish is 1]moist yet firm[otherwise]surprisingly strong[end if] fist!".

To say StrikingFailureFlav of (M - golem) on (B - a body part):
	say "[BigNameDesc of M] swipes at you, but you manage to dodge it.".

To say BanishFleeFlav of (M - golem):
	say "[BigNameDesc of M] [if artificial enhancements fetish is 1]dissolves into clear fluid and evaporates away[otherwise]collapses into a pile of limbs, which is a bit gross, you must admit[end if].".

To say MuteGreetResponse of (M - golem):
	say "The mannequin doesn't reply. It would appear to be magically animated rather than sentient.".

To say MuteQuestion of (M - golem):
	say SexDollQuestion of M.

Golem ends here.
