Severed Tentacle by Headgear begins here.


A severed-tentacle is a kind of headgear. There is one severed-tentacle. A severed-tentacle is biological. A severed-tentacle is blondeness-positive. A severed-tentacle is brightness-neutral. A severed-tentacle is redness-negative. Understand "severed", "tentacle", "master" as severed-tentacle. 

Definition: a severed-tentacle (called T) is TQedible:
	decide yes.

TentInt is a number that varies. TentInt is 1.[### Since this is only used within the tentacle's functions, we should consider making this variable part of the tentacle itself.]

The printed name of severed-tentacle is usually "[TQlink of item described][clothing-title-before][if there is a worn severed-tentacle]The Master[otherwise]severed tentacle[end if][clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of severed-tentacle is "sev".

Figure of severed tentacle is the file "Items/Accessories/Head/severedtentacle1.png".

To decide which figure-name is the clothing-image of (C - a severed-tentacle):
	decide on figure of severed tentacle.

To say ClothingDesc of (H - a severed-tentacle):
	say "[if the player is wearing a throbbing-tentacle]You can barely see the end of the tentacle sticking out of you, slowly waving.[otherwise if there is a worn severed-tentacle]A gently throbbing tentacle, its warm touch on your head fills you with a sense of peace at the sudden simplicity of your situation.[otherwise]A piece of mind flayer calamari. It[']s still gently thrashing about, as if it[']s trying to reach for your head.[end if]".

To say ShortDesc of (H - a severed-tentacle):
	say "severed tentacle".
	
To compute SelfExamineDesc of (H - a severed-tentacle):
	say "[if the player is male and the player is wearing a throbbing-tentacle]The end of a tentacle barely sticks out of your [asshole].[otherwise if the player is wearing a throbbing-tentacle]The end of a tentacle barely sticks out of your [vagina].[otherwise]You have a gently throbbing tentacle wrapped around your head.[end if]".
	
Carry out wearing severed-tentacle:
	say "As you lay the tentacle on your head, it suddenly wraps tightly around it! You feel gentle suction, and then a voice:[line break][first custom style]'As expected you reveal yourself for the [whore] you are. Your body will serve me now!'[roman type][line break]".
	
Check TQeating severed-tentacle:
	if the noun is worn, say "You would need to take it off your head first." instead.

Carry out TQeating severed-tentacle:
	say "The tentacle briefly and frantically thrashes as you chew on it, then swallow. You feel much smarter!";
	destroy the noun;
	now seconds is 6;
	IntUp 2.
	
To compute periodic effect of (H - a severed-tentacle):
	if a random number between 1 and 20 is 1:
		if the intelligence of the player > 1:
			Intdown 1;
			increase TentInt by 1;
			increase the domination of the player by 4;
			say "The tentacle on your head throbs suddenly, and you feel light-headed. [line break][first custom style]'You make an excellent meal. I shall reward you to make you a more suitable servant.'[roman type][line break]";
			if a random number between 1 and 2 is 1:
				Strengthup 1;
				say " You feel stronger!";
			otherwise:
				Dexup 1;
				say " You feel more flexible!";
		otherwise if the player is not wearing a throbbing-tentacle and a monster is not penetrating a fuckhole and a trap is not penetrating a fuckhole:
			say "The tentacle on your head throbs with increasing frequency and you feel an increasing sense of suction on your head. [line break][first custom style]'It appears my meal is complete. Now for your final reward. Remove me and place me before your entrance, [whore].'[roman type][line break]You feel the tentacle slightly release, and you gently and reverently remove it from your head. Taking the tentacle[']s shaft in both hands, you place it up against your [if the player is female][vagina][']'s[otherwise][asshole][']s[end if] entrance. [if the player is not lewdly exposed]With unexpected strength, the tentacle rips aside all obstructions, then[otherwise]It then[end if] slowly yet forcefully enters you. As it pushes itself in, you feel compelled to rub its length in your hands and are rewarded by it swelling inside you. After an excruciating moment that feels like an eternity it bottoms out inside you, and begins to pulse and rub until it fills you completely. [line break][first custom style]'Come, [slut]. Now.'[roman type][line break]You find yourself gleefully obeying!";
			let P be a random off-stage throbbing-tentacle;
			repeat with C running through worn top level protection clothing:
				destroy C;
			repeat with D running through worn clothing:
				if D is penetrating a fuckhole, destroy D;
			destroy H;
			if the player is male:
				if the player is able to get horny, anally orgasm shamefully;
				say " You leave the tentacle inside your [asshole], sensing that now it is in its proper place.";
				summon P cursed;
				now P is penetrating asshole;
			otherwise:
				if the player is able to get horny, vaginally orgasm shamefully;
				say " You leave the tentacle inside your [vagina], sensing that now it is in its proper place.";
				summon P cursed;
				now P is penetrating vagina;
		otherwise if the player is able to get horny:
			say "The tentacle on your head throbs with what feels like amusement. [line break][first custom style]'I was going to reward you, [whore], but it seems you are busy so I suppose it can wait. Hmm, still, I think you deserve this...'[roman type][line break]A rush of euphoria envelops you!";
			if the player is male:
				anally orgasm shamefully;
			otherwise:
				vaginally orgasm shamefully.
				
	
Check taking off severed-tentacle:
	let H be a random worn severed-tentacle;
	if the player is wearing a throbbing-tentacle:
		say "You can feel the Master is comfortable where he is, and have no desire to remove him." instead;
	otherwise if TentInt + a random number between 1 and 5 > the intelligence of the player + a random number between 1 and 5:
		increase the domination of the player by 2;
		say "You try to muster the will to remove the tentacle from your head, but as you do its voice rings out in your head. [first custom style]'You will not be rid of me, thrall. I think you should be punished for this insolence. Now obey me. ";
		if the asshole is not lewdly exposed or breasts is not lewdly exposed or (vagina is not lewdly exposed and the player is female):
			say "You need no clothing. Tear it off.'[roman type]";
			repeat with C running through worn nipple covering clothing:
				say "You mechanically tear the [C] off yourself.";
				destroy C;
			repeat with C running through worn top level protection clothing:
				say "You mechanically tear the [C] off yourself.";
				destroy C;
			try waiting instead;
		otherwise if there is an interested intelligent monster in the location of the player and the player is not immobile:
			let M be a random interested intelligent monster in the location of the player;
			say "Show [M] what a [whore] you really are.'[roman type]";
			try kneeling;
			if the player is female, try presenting vagina instead;
			otherwise try presenting asshole instead;
		otherwise:
			say "Feel your hunger grow. Sate it with [manly-penis].'[roman type]";
			SexAddictUp 2;
			OralSexAddictUp 2;
			try waiting instead.


Severed Tentacle ends here.

