Hot Tub by Objects begins here.

The hot-tub is a water-body-scenery. the hot-tub is not portable. The printed name of hot-tub is "[TQlink of item described]hot tub[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of hot-tub is "tub". the hot-tub has a number called charge. hot-tub is in School21. Understand "hot", "tub" as hot-tub.
To decide which figure-name is the examine-image of (C - hot-tub):
	decide on Figure of school hot tub.

Figure of hot tub cutscene 1 is the file "Special/Cutscene/cutscene-hottub1.jpg".

To say ExamineDesc of (H - hot-tub):
	say "This large tub bubbles away with warm, inviting water.".

[
The hot tub has only one section, and the player can't dive (in fact, they shouldn't dive because, like bacteria!)

The hot tub is just deep enough to swim in, but the player can't dive (and really they shouldn't, because gross)

There are no swimming checks in the hot tub as a result, but the player will gain arousal over time just from the heat. Staying in the bathtub will heal the player's body soreness and fatigue.

possibly: maybe go the Japanese bathing route and have sections.
]
To compute swimming in (H - hot-tub):
	let swimming be 1;
	let swim-turns be 0;
	let fondling-teacher be receptionist;
	allocate 6 seconds;
	let M be a random alive teacher;
	let K be a random worn messed knickers;
	if K is clothing and armband is worn and M is monster and (M is in the location of the player or the player is not getting lucky):
		now swimming is 0;
		interest M;
		if M is in the location of the player:
			say "[BigNameDesc of M][']s eyes go wide!";
		otherwise:
			now M is in the location of the player;
			say "[BigNameDesc of M] turns up at the door!";
		say "[speech style of M]'WHAT do you think you are doing?! Getting in the hot tub with that MESSY [ShortDesc of K]?!'[roman type][line break]";
		if K is perceived unmessed diaper, compute awakened state check of K;
		say "[BigNameDesc of M] strides over to you.[line break][speech style of M]'You were going to make the water all filthy, you idiot. That's it! Detention for you!'[roman type][line break][big he of M] adopts an aggressive stance...";
		anger M;
	while swimming is 1:
		if swim-turns is 0 and water-peeing is false:
			say "You slip into the tub and allow yourself to sink in all the way up to your shoulders.";
		compute bathing;
		if swim-turns is 0: [a teacher will show up!]
			if diaper quest is 0, now M is a random alive male teacher;
			if M is monster and armband is worn and the refractory-period of M < 0 and the player is not getting lucky:
				interest M;
				if M is in the location of the player:
					say "[BigNameDesc of M] walks over to you![line break][speech style of M]'Don't mind if I join you!'[roman type][line break][big he of M] is soon seated next to you in the tub, [his of M] wandering hands and fingers soon probing and groping you.";
				otherwise:
					now M is in the location of the player;
					calm M;
					say "[BigNameDesc of M] turns up at the door![line break][speech style of M]'I thought I might find you here. Don't mind if I join you!'[roman type][line break][big he of M] is soon seated next to you in the tub, [his of M] wandering hands and fingers soon probing and groping you.";
				now fondling-teacher is M;
		if diaper quest is 1 or there is a worn diaper:
			if fondling-teacher is teacher and fondling-teacher is interested and fondling-teacher is in the location of the player and fondling-teacher is friendly and the player is horny: [receptionist isn't a teacher, so if this is still set to receptionist then nothing will happen]
				cutshow Figure of hot tub cutscene 1 for fondling-teacher;
				if there is a worn diaper, say "[line break][speech style of fondling-teacher]'Wearing a diaper in the tub? What a kinky [boy of the player] you are. Do you like the feeling of all that soggy squishy padding against your no-no?'[roman type][line break][BigNameDesc of fondling-teacher] starts to move [his of fondling-teacher] hand towards your crotch.";
				otherwise say "[line break][speech style of fondling-teacher]'Not wearing a diaper? What a shame. But on the other hand, if there's no padding in the way... What's to stop me from doing this?'[roman type][line break][BigNameDesc of fondling-teacher] starts to move [his of fondling-teacher] hand towards your crotch.";
				if the player is not a nympho, say "[variable custom style]I shouldn't let [him of fondling-teacher] do this... But also... It's kind of too late![roman type][line break]";
				compute masturbation of fondling-teacher;
				now swimming is 0;
		otherwise:
			if fondling-teacher is teacher and fondling-teacher is interested and fondling-teacher is male and fondling-teacher is in the location of the player and fondling-teacher is friendly and the player is horny: [receptionist isn't a teacher, so if this is still set to receptionist then nothing will happen]
				cutshow Figure of hot tub cutscene 1 for fondling-teacher;
				say "[line break][speech style of fondling-teacher]'Ooh, I can tell you're horny too! While we're both here, and in the mood, let's see how your blowjob skills are coming along, eh?'[roman type][line break]";
				now presented-orifice is face;
				now the chosen-orifice of fondling-teacher is presented-orifice;
				now fondling-teacher is friendly-fucking;
				FavourUp fondling-teacher by the sex desire of fondling-teacher;
				now current-monster is fondling-teacher;
				follow the monster mouth insertion rules;
				now swimming is 0;
		say line break;
		if swimming is 1:
			if fondling-teacher is teacher and fondling-teacher is interested and fondling-teacher is in the location of the player and fondling-teacher is friendly: [receptionist isn't a teacher, so if this is still set to receptionist then nothing will happen]
				cutshow Figure of hot tub cutscene 1 for fondling-teacher;
				let RB be a random number between 1 and 3;
				let BP be thighs;
				if RB is 2, now BP is breasts;
				if RB is 3:
					now BP is asshole;
					if the player is possessing a vagina, now BP is vagina;
					if the player is possessing a penis, now BP is penis;
				say "[BigNameDesc of fondling-teacher] [one of]gently[or]softly[or]tenderly[in random order] [one of]fondles[or]strokes[or]gropes[or]molests[in random order] your [variable BP].";
				if (BP is vagina or BP is penis) and the player is very horny, stimulate BP from fondling-teacher;
				otherwise passively stimulate BP from fondling-teacher;
				check for arousal change;
				let S be turtle-swimsuit;
				if diaper quest is 0, now S is a random off-stage fetish appropriate normal-monokini;
				if S is actually summonable:
					say "[BigNameDesc of fondling-teacher] reaches for a [MediumDesc of S].[line break][speech style of fondling-teacher]'Here, I've got a proper swimsuit for you to wear.'[roman type][line break]";
					summon S cursed with quest;
				otherwise:
					let D be random worn overdress;
					if D is nothing, now D is a random worn underdress;
					if D is nothing, now D is a random worn corset;
					if D is nothing, now D is a random worn bra;
					if D is clothing and D is not swimming themed:
						say "[BigNameDesc of fondling-teacher] is holding a handful of your [ShortDesc of D].[line break][speech style of fondling-teacher]'[one of]This isn't really appropriate swimwear, now, is it?'[or][speech style of fondling-teacher]'Let's get your non-swimming clothes off, you silly [if diaper lover > 0]little [boy of the player][otherwise]minx[end if].'[stopping][roman type][line break]";
						compute fondling-teacher pulling off D;
			otherwise:
				now fondling-teacher is receptionist;
			increase swim-turns by 1;
			if fondling-teacher is teacher:
				reset multiple choice questions;
				set numerical response 1 to "Keep relaxing in the hot tub";
				set numerical response 2 to "Try to ease yourself away from [NameDesc of fondling-teacher] and get out of the hot tub";
				set numerical response 3 to "Forcefully pull away from [NameDesc of fondling-teacher] and get out of the hot tub ([he of fondling-teacher] may be unimpressed by your reluctance...)";
				compute multiple choice question;
				if player-numerical-response is 2:
					let INT be a random number between 1 and the intelligence of the player;
					let D be INT + swim-turns;
					if debuginfo > 0, say "[input-style]Escape check: Intelligence roll (d[intelligence of the player]) = [INT] + Turns spent in tub ([swim-turns]) = [D] | [difficulty of fondling-teacher * 2].5 [MediumDesc of fondling-teacher] difficulty rating[roman type][line break]";
					say "You give [NameDesc of fondling-teacher] your best kind and polite smile, as you shift yourself away. ";
					if D > the difficulty of fondling-teacher * 2:
						say "[BigNameDesc of fondling-teacher] pouts, but relents, and releases you.";
						now swimming is 0;
					otherwise:
						say "[BigNameDesc of fondling-teacher] [one of]seems to decide to pretend[or]pretends[stopping] that [he of fondling-teacher] hasn't noticed you trying to separate from [him of fondling-teacher], and continues to hold you in place!";
				otherwise if player-numerical-response is 3:
					say "You yank yourself away, and [NameDesc of fondling-teacher] scowls, visibly unimpressed.";
					consider angry punishment of fondling-teacher;
					say "You get out of the hot tub.";
					now swimming is 0;
			otherwise:
				reset multiple choice questions;
				set numerical response 1 to "Keep relaxing in the hot tub";
				set numerical response 2 to "Get out of the hot tub";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You keep relaxing in the tub.";
				otherwise:
					say "You get out of the hot tub.";
					now swimming is 0;
	if seconds > 0, increase seconds by swim-turns * 3;
	display entire map.

Hot Tub ends here.
