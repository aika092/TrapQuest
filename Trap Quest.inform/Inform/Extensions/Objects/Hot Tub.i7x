Hot Tub by Objects begins here.


The hot-tub is a water-body-scenery. the hot-tub is not portable. The printed name of hot-tub is "[TQlink of item described]hot tub[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of hot-tub is "tub". the hot-tub has a number called charge. hot-tub is in School21. Understand "hot", "tub" as hot-tub.
To decide which figure-name is the examine-image of (C - hot-tub):
	decide on Figure of school hot tub.

To say ExamineDesc of (H - hot-tub):
	say "This large tub bubbles away with warm, inviting water.".

To compute showering (H - hot-tub):
	say "Your time in the water leaves you feeling completely refreshed!";
	now the fatigue of the player is 0;
	BodyHeal 10;
	let M be a random alive male teacher;
	if diaper quest is 1, now M is a random alive teacher;
	if M is monster and the refactory-period of M < 0 and armband is worn and face is not actually occupied and M is not in the location of the player:
		if diaper quest is 0:
			now M is in the location of the player;
			now M is interested;
			calm M;
			say "Just as you're ready to get out, [NameDesc of M] turns up at the door![line break][speech style of M]'I thought I might find you here. Don't mind if I join you!'[roman type][line break][big he of M] is soon seated next to you in the tub, [his of M] wandering hands and fingers soon probing and groping you.[line break][speech style of M]'While we're both here, let's see how your blowjob skills are coming along, eh?'[roman type][line break]It looks like you're going to have to decide whether or not to accept the rather blunt proposal...[line break]Do you suck [his of M] [DickDesc of M]? ";
			if the player is bimbo consenting:
				now presented-orifice is face;
				now the chosen-orifice of M is presented-orifice;
				now M is friendly-fucking;
				FavourUp M by the sex desire of M;
				now current-monster is M;
				follow the monster mouth insertion rules;
			otherwise:
				compute angry punishment of M;
				satisfy M;
		otherwise if the player is diapered:
			now M is in the location of the player;
			now M is interested;
			calm M;
			say "Just as you're ready to get out, [NameDesc of M] turns up at the door![line break][speech style of M]'I thought I might find you here. Don't mind if I join you!'[roman type][line break][big he of M] is soon seated next to you in the tub, [his of M] wandering hands and fingers soon probing and groping you.[line break][speech style of M]'Wearing a diaper in the pool? What a naughy [boy of the player]. Do you like the feeling of all that soggy squishy padding against your no-no?'[roman type][line break][BigNameDesc of M] starts to move [his of M] hand towards your crotch. It looks like you're going to have to decide whether or not to let [him of M] play with you...[line break]Do you let [his of M] masturbate you through your soaked padding? ";
			if the player is bimbo consenting:
				compute masturbation of M;
			otherwise:
				compute angry punishment of M;
				satisfy M.



Hot Tub ends here.
