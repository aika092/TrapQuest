Severed Tentacle by Headgear begins here.

severed-tentacle is a headgear. severed-tentacle is biological. severed-tentacle is blondeness-positive. severed-tentacle is brightness-neutral. severed-tentacle is redness-negative. Understand "severed", "tentacle", "master" as severed-tentacle. severed-tentacle has a number called tentInt. The tentInt of severed-tentacle is usually 0.

Definition: severed-tentacle is TQedible: decide yes.

To compute intDrain of (T - severed-tentacle):
	IntDown 1;
	increase the tentInt of T by 1.

The printed name of severed-tentacle is "[clothing-title-before][if the item described is worn and the intelligence of the player is 1]The Master[otherwise]severed tentacle[end if][clothing-title-after]". The text-shortcut of severed-tentacle is "sev".

Figure of severed tentacle is the file "Items/Accessories/Head/severedtentacle1.png".

To decide which figure-name is the clothing-image of (C - severed-tentacle):
	decide on figure of severed tentacle.

To say ClothingDesc of (H - severed-tentacle):
	say "[if there is a worn severed-tentacle]A gently throbbing tentacle, its warm touch on your head fills you with a sense of peace at the sudden simplicity of your situation.[otherwise]A piece of mind flayer calamari. It[']s still gently thrashing about, as if it[']s trying to reach for your head.[end if]".

To say ShortDesc of (H - severed-tentacle):
	say "[if the intelligence of the player is 1 and H is worn]Master[otherwise]severed tentacle[end if]".

To compute SelfExamineDesc of (H - severed-tentacle):
	say "You have a gently throbbing tentacle wrapped around your head.".

Carry out wearing severed-tentacle:
	say "As you lay the tentacle on your head, it suddenly wraps tightly around it! You feel gentle suction, and then a voice:[line break][first custom style]'As expected you reveal yourself for the [whore] you are. Your body will serve me now!'[roman type][line break]".

Check TQeating severed-tentacle:
	if the noun is worn, say "You would need to take it off your head first." instead.

Carry out TQeating severed-tentacle:
	say "The tentacle briefly and frantically thrashes as you chew on it, then swallow. You feel much smarter!";
	destroy the noun;
	allocate 6 seconds;
	IntUp 2.

To compute throbbing of (H - severed-tentacle) into (T - throbbing-tentacle):
	let M be mind flayer;
	say "You feel the tentacle slightly release, and you reverently reach up remove [him of M] from your head. Holding the undulating shaft in both hands, you lower [him of M] down to your [if the player is female]vaginal[otherwise]anal[end if] entrance. [if the player is not lewdly exposed]With awesome strength, [italic type]your Master[roman type] rips aside all obstructions, then[otherwise][italic type]Your Master[roman type] gives you an experimental prod, then[end if] slowly yet forcefully enters you. As [he of M] pushes [himself of M] in, you feel compelled to rub [his of M] length in your hands and are rewarded by [him of M] swelling inside you. After an excruciating moment that feels like an eternity, [he of M] bottoms out inside you, pulsing and rubbing until [he of M] fills you completely. [line break][first custom style]'Come, [slut]. Now.'[roman type][line break]You find yourself gleefully obeying!";
	repeat with C running through worn top level protection clothing:
		now C is in pink wardrobe;
	repeat with D running through worn clothing:
		if D is penetrating a fuckhole, now D is in pink wardrobe;
	only destroy H;
	if the player is male:
		if the player is able to get horny, anally orgasm shamefully;
		say " You leave the tentacle inside your [asshole], sensing it is now in its proper place.";
		summon T cursed;
		now T is penetrating asshole;
	otherwise:
		if the player is able to get horny, vaginally orgasm shamefully;
		say " You leave the tentacle inside your [vagina], sensing that now it is in its proper place.";
		summon T cursed;
		now T is penetrating vagina;

To compute periodic effect of (H - severed-tentacle):
	let T be a random off-stage throbbing-tentacle;
	if a random number between 1 and 20 is 1:
		if the intelligence of the player > 1:
			compute intDrain of H;
			increase the domination of the player by 4;
			say "The tentacle on your head throbs suddenly, and you feel light-headed. [line break][first custom style]'You make an excellent meal. I shall reward you to make you a more suitable servant.'[roman type][line break]";
			if a random number between 1 and 2 is 1:
				Strengthup 1;
				say " You feel stronger!";
			otherwise:
				Dexup 1;
				say " You feel more flexible!";
		otherwise if (the player is female and T is vaginally summonable) or (the player is male and T is actually summonable):
			say "The tentacle on your head throbs with increasing frequency and you feel an increasing sense of suction on your head. [line break][first custom style]'It appears my meal is complete. Now for your final reward. Remove me and place me before your entrance, [whore].'[roman type][line break]";
			compute throbbing of H into T;
		otherwise if the player is able to get horny:
			say "The tentacle on your head throbs with what feels like amusement. [line break][first custom style]'I was going to reward you, [whore], but it seems you are busy so I suppose it can wait. Hmm, still, I think you deserve this...'[roman type][line break]A rush of euphoria envelops you!";
			if the player is male:
				anally orgasm shamefully;
			otherwise:
				vaginally orgasm shamefully.

Check taking off severed-tentacle:
	let S be the noun;
	let T be a random off-stage throbbing-tentacle;
	say "You reach up to try and remove [the printed name of S] from your head.";
	if the intelligence of the player is 1:
		if (the player is female and T is vaginally summonable) or (the player is male and T is actually summonable):
			say "The tentacle on your head throbs with greater frequency and you feel an increasing sense of suction on your head. [line break][first custom style]'You want to move me? Hm, then I suppose it's unavoidable. Remove me and place me before your entrance, [whore].'[roman type][line break]";
			compute throbbing of S into T instead;
		otherwise:
			say "You remember your head belongs to your [ShortDesc of T] anyway, and immediately stop." instead;
	otherwise if the tentInt of severed-tentacle > the intelligence of the player + a random number between -4 and 5:
		increase the domination of the player by 2;
		say "Your will wavers, and your hand trembles as the tentacle's voice rings out in your head. [first custom style]'You will not be rid of me, thrall. I think you should be punished for this insolence. Now obey me. ";
		if the asshole is not lewdly exposed or breasts is not lewdly exposed or (vagina is not lewdly exposed and the player is female):
			say "You need no clothing. Tear it off.'[roman type]";
			let C be a random worn nipple covering clothing;
			unless C is clothing, now C is a random worn top level protection clothing;
			if C is clothing:
				say "You have no need of that [C]. Tear it off.'[roman type][line break]Your trembling hand immediately reaches down and tears off your [printed name of C].";
				now C is in pink wardrobe;
			try waiting instead;
		otherwise if there is an interested intelligent monster in the location of the player and the player is not immobile:
			let M be a random interested intelligent monster in the location of the player;
			say "Show [NameDesc of M] what a [whore] you really are.'[roman type]";
			try kneeling;
			if the player is female, try presenting vagina instead;
			otherwise try presenting asshole instead;
		otherwise:
			say "Feel your hunger grow. Sate it with [manly-penis].'[roman type]";
			SexAddictUp 2;
			OralSexAddictUp 2;
			try waiting instead.

Severed Tentacle ends here.
