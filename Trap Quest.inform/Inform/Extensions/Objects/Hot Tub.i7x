Hot Tub by Objects begins here.


The hot-tub is a thing. the hot-tub is not portable. The printed name of hot-tub is "[TQlink of item described]hot tub[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of hot-tub is "tub". Instead of entering hot-tub, try showering hot-tub. the hot-tub has a number called charge. hot-tub is in School21. The description of hot-tub is usually "[HotTubDesc]". Understand "water", "hot", "tub" as hot-tub.

To say HotTubDesc:
	say "This large tub bubbles away with warm, inviting water.".

Carry out showering hot-tub:
	now tracked-semen is 0;
	if seconds is 0, say "You [if the player is upright]walk up to the tub[otherwise]crawl up to the tub[end if] and sink into the lovely relaxing water[if the player is upright]. [bold type]You are now on your knees.[roman type][line break][otherwise].[end if]";
	now the stance of the player is 1;
	wash salves;
	compute showering;
	say "Your time in the water leaves you feeling completely refreshed!";
	now the fatigue of the player is 0;
	let M be a random alive male teacher;
	if M is monster and armband is worn and face is not actually occupied and diaper quest is 0 and M is not in the location of the player:
		now M is in the location of the player;
		now M is interested;
		calm M;
		say "Just as you're ready to get out, [NameDesc of M] turns up at the door![line break][speech style of M]'I thought I might find you here. Don't mind if I join you!'[roman type][line break][big he of M] is soon sat next to you in the tub, [his of M] wandering hands and fingers soon probing and groping you.[line break][speech style of M]'While we're both here, let's see how your blowjob skills are coming along, eh?'[roman type][line break]It looks like you're going to have to decide whether or not to accept the rather blunt proposal...[line break]Do you suck [his of M] [manly-penis]? [yesnolink]";
		if the player consents:
			now presented-orifice is face;
			now the chosen-orifice of M is presented-orifice;
			now M is friendly-fucking;
			FavourUp M by the sex desire of M;
			follow the insertion rules of M;
		otherwise:
			compute angry punishment of M;
			satisfy M.
		
	

Hot Tub ends here.
