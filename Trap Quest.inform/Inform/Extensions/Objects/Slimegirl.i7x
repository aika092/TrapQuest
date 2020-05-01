Slimegirl by Objects begins here.

slimegirl is a person. The printed name of slimegirl is "[TQlink of item described]slimegirl[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of slimegirl is "slgl". Understand "slime", "girl" as slimegirl. slimegirl is wearable.

Figure of slimegirl is the file "NPCs/Forest/slimegirl1.png".
Figure of Slimegirl Cutscene 1 is the file "Special/Cutscene/cutscene-slimegirl1.png".
Figure of Slimegirl Cutscene 2 is the file "Special/Cutscene/cutscene-slimegirl2.png".

To decide which figure-name is the examine-image of (C - slimegirl):
	decide on figure of slimegirl.

To say ExamineDesc of (C - slimegirl):
	say "A blue, semi-transparent creature made out of some kind of slimy liquid, in the shape of a buxom humanoid [boy of C]. It appears that [he of C] can shapeshift, but the extent of [his of C] powers is unclear. [if C is worn][big he of C] is currently living inside your belly. [end if][if C is worn and the intensity of C > 0][big he of C] is making you crave semen much more than usual![end if][line break]".

Definition: slimegirl is cult garb: decide yes.

Check wearing slimegirl:
	say "You can't wear that!" instead.

Check taking off slimegirl:
	say "[if the noun is worn][big he of the noun]'s inside you, that's not very straightforward...[otherwise]How would that work?[end if]" instead.

Check inserting slimegirl into:
	say "[if the noun is worn][big he of the noun]'s inside you, that's not very straightforward...[otherwise]I don't think [he of the noun] agrees.[end if]" instead.

To decide which number is the girth of (M - slimegirl):
	decide on 9. [This is how wide she forces you when she goes inside.]

slimegirl has a number called hunger.
[
The higher the number, the more desperate the slimegirl is to get some semen.
At hunger 10, the slimegirl dies.
A hunger of 999 means the slimegirl is permanently dead.
]

slimegirl has a number called intensity.
[
The higher the number here, the more the slimegirl is influencing the player's stats.
]

slimegirl has a number called timetaken.
[
The higher this number, the longer it has been since the last time the hunger of the slimegirl changed.
]

An all time based rule (this is the compute slimegirl rule):
	if slimegirl is worn:
		let M be slimegirl;
		increase the timetaken of M by seconds;
		if the timetaken of M > a random number between (200 - (hunger of M * 10)) and 250:
			now the timetaken of M is 0;
			if the hunger of M < 2:
				increase the hunger of M by 1;
			otherwise if the hunger of M < 5:
				increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]I'm getting hungry in here... can you feed me with some [tasty] cum soon [please]?'[or]I'm hungry, give me some more cum!'[or]I need semen to live in here, you know? [big please] feed me soon!'[or]Hey baby, have you forgotten about me? I need feeding, you know...'[in random order][roman type][line break]";
				let R be a random number between 1 and 3;
				if R is 1:
					say "You feel [NameDesc of M] slightly influencing your love of [semen] and sex.";
					now the intensity of M is 1;
				if R is 2:
					say "You feel [NameDesc of M] significantly influencing your love of [semen] and sex.";
					now the intensity of M is 2;
				if R is 3:
					if weight gain fetish is 1:
						say "You feel [NameDesc of M] enlarging your ass cheeks, to make you more tempting to potential partners.";
						AssSwell 1;
					otherwise:
						say "You feel [NameDesc of M] widening your hips, to make you more tempting to potential partners.";
						HipUp 1;
			otherwise if the hunger of M < 7:
				if a random number between 1 and 2 is 1, increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]I'm getting sooo hungry in here... I really need some manly seed soon!'[or]I'm fed up of waiting, feed me now or else!!'[or]I'm going to keep fucking with you if you don't feed me, you slut!'[or]Are you enjoying what I'm doing to you or something? Just find a manly stud, and get him to assfuck you! It's not hard!'[in random order][roman type][line break]";
				let R be a random number between 1 and 3;
				if R is 1:
					say "You feel [NameDesc of M] massively influencing your love of [semen] and sex.";
					now the intensity of M is 3;
				if R is 2:
					if the hunger of M is 7:
						say "You feel [NameDesc of M] forcing your mind to think like a total anal slut.";
						now the intensity of M is 4;
						arouse 3000;
					otherwise:
						say "You feel [NameDesc of M] significantly influencing your love of [semen] and sex.";
						now the intensity of M is 2;
				if R is 3:
					if weight gain fetish is 1:
						say "You feel [NameDesc of M] enlarging your ass cheeks, to make you more tempting to potential partners.";
						AssSwell 1;
					otherwise:
						say "You feel [NameDesc of M] widening your hips, to make you more tempting to potential partners.";
						HipUp 1;
				if lactation fetish is 1:
					say "You feel some kind of toxin flowing through your body, which makes you feel all giddy, and almost euphoric. [if the lactation rate of the player > 0]You can feel your lactation rate increasing[otherwise]You can feel your breasts start to produce [milk][end if].";
					increase the lactation rate of the player by 1;
			otherwise if the hunger of M is 7:
				increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]Okay I give up, I guess you're really not going to feed me. Will you at least take me back to my pool? I'll die if you leave me in here...'[or]Okay okay I give up again! [big please] take me back to my pool?'[stopping][roman type][line break]";
				now the intensity of M is 0;
			otherwise if the hunger of M < 10:
				increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]Either feed me or let me out!!! I'm going to starve!'[or]I won't let you starve me to death!'[or]You bitch, let me out!'[or]Let me out of here, you fucking whore!'[in random order][roman type][line break]";
				now the intensity of M is 2;
				if lactation fetish is 1:
					say "You feel some kind of toxin flowing through your body, which makes you feel all giddy, and almost euphoric. [if the lactation rate of the player > 0]You can feel your lactation rate increasing[otherwise]You can feel your breasts start to produce [milk][end if].";
					increase the lactation rate of the player by 1;
				if watersports mechanics is 1:
					BladderUp 1;
				if a random number between 1 and 2 is 1:
					say "You feel [NameDesc of M] expanding your breasts!";
					BustUp 1;
				otherwise:
					say "You feel [NameDesc of M] widening your hips!";
					HipUp 1;
			otherwise:
				say "[bold type][BigNameDesc of M] shrivels up and dies inside of you. [big he of M] seems to disappear completely![roman type][line break]";
				remove M from play;
				now the hunger of M is 999;
				say "Your victory against the monster has strengthened your resolve to continue. You feel more at peace with yourself.";
				SexAddictDown 2;
				SemenAddictDown 2;
				say "You now have a [BellyDesc].".

To SlimeGirlCheck (this is the slime-girl-clean rule):
	let S be 0;
	let M be slimegirl;
	repeat with C running through worn clothing:
		if the semen-soak of C > 0, increase S by 1;
	if M is worn by the player:
		if asshole is not actually occupied and the hunger of M > 7:
			say "[BigNameDesc of M] pushes [his of M] way out of your [asshole]!";
			now M is penetrating asshole;
			ruin asshole;
			now M is not penetrating asshole;
			now M is in Woods05;
			now the hunger of M is 0;
			now the intensity of M is 0;
			now the timetaken of M is 0;
			say "[second custom style]'Well, thanks for returning me to my pool, I guess...'[roman type][line break]";
		rule fails;
	otherwise if the semen coating of face > 0 or the semen coating of breasts > 0 or the semen coating of thighs > 0 or S > 0 or the total felchable volume of vagina > 0 or the semen volume of belly > 0 or the semen coating of hair > 0:
		if M is in Woods05:
			say "The slimegirl hurries over to you! ";
		otherwise if the hunger of M is not 999:
			now M is in Woods05;
			say "As the [semen] starts to wash off, you [one of]are shocked to[or]once again[stopping] see a humanoid monster made completely of liquid leap out of the water and pounce on you. ";
		otherwise:
			rule fails;
		say "[one of]At first you expect the monster (who at closer inspection is some kind of female slime monster) to be attacking you, but you quickly realise [he of M] is [or][BigNameDesc of M] quickly begins [stopping]lapping up all the [semen] on your body[if S > 0] and clothes[end if].";
		cutshow figure of slimegirl cutscene 1 for M;
		if the total felchable volume of vagina > 0 and vagina is not actually occupied and the player is not pussy protected:
			say "[BigNameDesc of M] moves down to your [vagina], and laps away with great enthusiasm. ";
			stimulate vagina from M;
			increase S by the semen volume of vagina;
			now the semen volume of vagina is 0;
			if the pregnancy of the player is 0:
				increase S by the womb volume of vagina;
				WombEmpty the womb volume of vagina;
		if the semen volume of belly > 0 and asshole is not actually occupied and the player is not ass protected:
			say "[BigNameDesc of M] moves down to your [asshole], and licks with increased vigour. It feels incredible!";
			increase S by 1;
			stimulate asshole from M;
		if bukkake fetish is 1, say "[big he of M] continues licking you up and down until all the [semen] you had on you is gone. Everywhere [he of M] licks gives you a little tingle of pleasure.";
		passively stimulate thighs from M times 2;
		repeat with C running through worn clothing:
			clean C;
			Drench C;
		increase S by the semen coating of hair;
		now the semen coating of hair is 0;
		now the urine coating of hair is 0;
		increase S by the semen coating of face;
		now the semen coating of face is 0;
		increase S by the semen coating of breasts;
		now the semen coating of breasts is 0;
		increase S by the semen coating of belly;
		now the semen coating of belly is 0;
		increase S by the semen coating of thighs;
		now the semen coating of thighs is 0;
		if lactation fetish is 1, now S is 10; [With lactation fetish, she'll always try to jump inside]
		if the player is not ass protected and asshole is not occupied and S > 6 and belly limit - the total fill of belly >= 10 and the latex-transformation of the player <= 2:
			say "[BigNameDesc of M] smacks [his of M] lips. [line break][second custom style]'That was [one of]the best feast I've had in a long time[or]just as great as last time[stopping]! I think I'm going to have to travel with you for a while...'[roman type][line break]";
			say "[one of]You are still trying to work out what that means when[or]Once again[stopping] [he of M] dives underwater, and suddenly you feel something poking forcefully at your [asshole]. [big he of M]'s... [he of M]'s trying to force [himself of M] in!";
			let R be a random number between (the number of worn swimming themed wearthing * 5) and the dexterity of the player;
			if acolyte-chestpiece is worn, now R is 0;
			say "[bold type]Do you want to try and escape?[roman type] ";
			if the player is consenting:
				if debuginfo > 0, say "[input-style]Escape from slimegirl check: swimming modifier ([the number of worn swimming themed wearthing * 5]); dexterity ([dexterity of the player]) -> RNG([the number of worn swimming themed wearthing * 5]~[dexterity of the player]) = [R] | (7.5) slimegirl invasion skill[roman type][line break]";
			otherwise:
				now R is -9999;
			if the player is prone, decrease R by 2;
			if R < 8:
				unless R <= -9999, say "It's no good, [he of M]'s too fast for you! You can't get away! ";
				say "You feel [if the openness of asshole < 8]your [asshole] forced wide as [NameDesc of M] swims up inside you and into your belly![otherwise][him of M] wiggling as [NameDesc of M] swims up into your [asshole] and into your belly![end if]";
				cutshow figure of slimegirl cutscene 2 for M;
				say "[big he of M] somehow speaks to you telepathically.[line break][second custom style]'I hope you don't mind me living in here for a while, but I want to drink all the [tasty] cum that people are going to squirt inside you!'[roman type][line break]";
				say "[if the bimbo of the player < 7][line break][first custom style]Holy shit, what is this?![otherwise if the bimbo of the player < 11][line break][variable custom style]Err... okay? I think?[otherwise][line break][second custom style]Ooh, this could be fun![end if][roman type][line break]";
				now M is penetrating asshole;
				ruin asshole;
				now M is not penetrating asshole;
				now M is worn by the player;
				now the semen volume of belly is 0;
				cancel father material of asshole;
				say "[if the largeness of belly > 3][big his of M] residence inside your belly means that you now have a[PermanentBelly] [BellyDesc][otherwise if there is a worn corset]You can tell that if your weren't wearing a corset, the presence of the slimegirl would be distending your belly[otherwise]Your belly now feels very heavy, even though it's not showing any signs of distension[end if].";
			otherwise:
				say "You manage to swim out of the waterfall pool before [he of M] can force [himself of M] inside.[line break][second custom style]'No, wait, come back! Awww...'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] smacks [his of M] lips.[line break][second custom style]'That was [one of][tasty][or]scrumptious[or]yummy[in random order]! Come back any time, [one of]darling[or]baby[in random order]!'[roman type][line break]";
		allocate 6 seconds;
		rule succeeds;
	rule fails.

To compute talk option (N - 1) to (M - slimegirl):
	if M is worn:
		say "[big he of M] telepathically communicates with you.[line break][second custom style]'Are you talking to me? [one of]Yes, I can hear you.'[or]Say what you want to say, already!'[stopping][roman type][line break]";
	otherwise:
		say "[second custom style]'Why don't you come a bit closer, honey?'[roman type]";
	say "[line break]".

To compute talk option (N - 2) to (M - slimegirl):
	say "[variable custom style]'Can you teach me anything useful?'[roman type][line break]";
	if M is worn:
		if the hunger of M < 3:
			teach milkskill;
		otherwise:
			say "[second custom style]'Stop asking questions and feed me!'[roman type]";
	otherwise:
		say "[second custom style]'I'm not telling you anything! What motivation do I have to help you out?'[roman type]";
	say "[line break]".

To compute talk option (N - 3) to (M - slimegirl):
	if M is worn:
		if the hunger of M < 3:
			if lactation fetish is 1:
				say "[second custom style]'Here, maybe this will help!'[roman type][line break]";
				say "You can feel the [milk] in your breasts increasing in volume[one of]![or].[stopping]";
				MilkUp 2;
			otherwise:
				say "[second custom style]'I don't, but you could always find a naughty monster and drink his yummy cum!'[roman type]";
		otherwise:
			say "[second custom style]'Hah, now you know how I feel!'[roman type]";
	say "[line break]".

To compute talk option (N - 4) to (M - slimegirl):
	if M is worn:
		if the hunger of M < 3:
			say "[second custom style]'I don't, but you could always find a naughty monster and eat his yummy cum!'[roman type]";
		otherwise:
			say "[second custom style]'Hah, now you know how I feel!'[roman type]";
	say "[line break]".

Slimegirl ends here.
