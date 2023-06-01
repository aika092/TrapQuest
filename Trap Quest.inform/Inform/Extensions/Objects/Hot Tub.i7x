Hot Tub by Objects begins here.

The hot-tub is a water-body-scenery. the hot-tub is not portable. The printed name of hot-tub is "[TQlink of item described]hot tub[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of hot-tub is "tub". the hot-tub has a number called charge. hot-tub is in School21. Understand "hot", "tub" as hot-tub.
To decide which figure-name is the examine-image of (C - hot-tub):
	decide on Figure of school hot tub.

To say ExamineDesc of (H - hot-tub):
	say "This large tub bubbles away with warm, inviting water.".

[
The hot tub has only one section, and the player can't dive (in fact, they shouldn't dive because, like bacteria!)

The hot tub is just deep enough to swim in, but the player can't dive (and really they shouldn't, because gross)

There are no swimming checks in the hot tub as a result, but the player will gain arousal over time just from the heat. Staying in the bathtub will heal the player's body soreness and fatigue.

Staying in the tub too long may give a teacher a chance to show up.

possibly: maybe go the Japanese bathing route and have sections.
]
To compute swimming in (H - hot-tub):
	let swimming be 1;
	let swim-turns be 0;
	let watcher-ready be 0;
	allocate 6 seconds;
	while swimming is 1:
		if swim-turns is 0 and water-peeing is false:
			say "You slip into the tub and allow yourself to sink in all the way up to your shoulders.";
		compute bathing;
		if swim-turns is 0: [a teacher will show up!]
			let M be a random alive male teacher;
			if diaper quest is 1, now M is a random alive teacher;
			if M is monster and armband is worn and the refractory-period of M < 0:
				interest M;
				if M is in the location of the player:
					say "[BigNameDesc of M] walks over to you![line break][speech style of M]'Don't mind if I join you!'[roman type][line break][big he of M] is soon seated next to you in the tub, [his of M] wandering hands and fingers soon probing and groping you.";
				otherwise:
					now M is in the location of the player;
					calm M;
					say "[BigNameDesc of M] turns up at the door![line break][speech style of M]'I thought I might find you here. Don't mind if I join you!'[roman type][line break][big he of M] is soon seated next to you in the tub, [his of M] wandering hands and fingers soon probing and groping you.";
		if diaper quest is 1 or there is a worn diaper:
			let N be a random interested teacher in the location of the player;
			if N is monster and (the player is horny or (the player is a bit horny and the player is getting unlucky)):
				if there is a worn diaper, say "[line break][speech style of N]'Wearing a diaper in the tub? What a kinky [boy of the player] you are. Do you like the feeling of all that soggy squishy padding against your no-no?'[roman type][line break][BigNameDesc of N] starts to move [his of N] hand towards your crotch. It looks like you're going to have to decide whether or not to let [him of N] play with you...[line break]Do you let [him of N] masturbate you through your soaked padding? ";
				otherwise say "[line break][speech style of N]'Not wearing a diaper? What a shame. But on the other hand, if there's no padding in the way... What's to stop me from doing this?'[roman type][line break][BigNameDesc of N] starts to move [his of N] hand towards your crotch. It looks like you're going to have to decide whether or not to let [him of N] play with you...[line break]Do you let [him of N] masturbate you? ";
				if the player is bimbo consenting:
					compute masturbation of N;
				otherwise:
					consider angry punishment of N;
				now swimming is 0;
		otherwise:
			let N be a random interested male teacher in the location of the player;
			if N is monster and (the player is horny or (the player is a bit horny and the player is getting unlucky)):
				say "[line break][speech style of N]'While we're both here, let's see how your blowjob skills are coming along, eh?'[roman type][line break]It looks like you're going to have to decide whether or not to accept the rather blunt proposal...[line break]Do you suck [his of N] [DickDesc of N]? ";
				if the player is bimbo consenting:
					now presented-orifice is face;
					now the chosen-orifice of N is presented-orifice;
					now N is friendly-fucking;
					FavourUp N by the sex desire of N;
					now current-monster is N;
					follow the monster mouth insertion rules;
				otherwise:
					say "[speech style of N]'Then get the fuck out of my hot tub!'[roman type][line break][BigNameDesc of N] snaps.";
					consider angry punishment of N;
				now swimming is 0;
		say line break;
		if swimming is 1:
			let N be a random interested male teacher in the location of the player;
			if N is nothing, let N be a random interested teacher in the location of the player;
			if N is monster:
				say "[BigNameDesc of N][']s soft fondling gently stimulates you over time.";
				passively stimulate thighs from N;
				check for arousal change;
			increase swim-turns by 1;
			say "[line break]Do you want to get out yet?";
			if the player is consenting:
				say "You climb out of the tub.";
				now swimming is 0;
			otherwise:
				say "You keep relaxing in the tub.";
	if seconds > 0, increase seconds by swim-turns * 3;
	display entire map.

Hot Tub ends here.
