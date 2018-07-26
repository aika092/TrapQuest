Hypno Traps by Traps begins here.

A hypno trap is a kind of trap. A cocksucker hypno trap is a kind of hypno trap. A fucktoy hypno trap is a kind of hypno trap. A diaper hypno trap is a kind of hypno trap. There are 5 potentially wire potentially sticky potentially click cocksucker hypno traps. There are 5 potentially wire potentially sticky potentially click fucktoy hypno traps. There are 7 potentially wire potentially sticky potentially click diaper hypno traps. Understand "screen" as hypno trap. The printed name of a hypno trap is "hypno screen".

This is the spawn initial hotel hypno traps rule:
	repeat with N running from 1 to 6:
		let R be a random trappable placed modern room;
		while there is a hypno trap in R:
			now R is a random trappable placed modern room;
		let U be a random off-stage hypno trap;
		while diaper lover < 1 and U is a diaper hypno trap: 
			now U is a random off-stage hypno trap;
			if the number of off-stage fucktoy hypno traps + the number of off-stage cocksucker hypno traps is 0:
				now U is nothing;
				break; [safeguard]
		if diaper focus is 1, now U is a random off-stage diaper hypno trap;
		deploy U in R.
The spawn initial hotel hypno traps rule is listed first in the set up hotel traps rules.

The description of a hypno trap is "A monitor revealed from within a hidden compartment in a wall. On the screen is [hypno content of item described]. It's difficult to look away once you start watching it.".

To say EnvironmentDesc of (T - a hypno trap):
	say "A large [if T is expired]blank TV screen[otherwise if T is diaper hypno trap]TV screen showing adults being treated like babies[otherwise]TV screen showing degrading sex acts with a hypnotic pattern[end if] takes up a large portion of the wall in front of you. ".

To say ShortDesc of (T - a hypno trap):
	say "hypno screen".

To trigger (Y - a hypno trap):
	now Y is revealed;
	now Y is not untriggered;
	say "A section of the wall in front of you slides away, and behind it is a large screen. On the screen is [hypno content of Y].";
	now the reset-timer of Y is 250.

To compute turn trap effect of (T - a hypno trap):
	say "The [printed name of T] in front of you [one of]captivates your attention[or]catches your eyes[or]once again catches your eyes[stopping]!";
	compute hypno effect of T.

To compute time decay of (T - a hypno trap):
	if the reset-timer of T - time-seconds < 200:
		if T is in the location of the player, say "The hypno screen finally turns itself off.";
		if T is nearby, say "The [T] in the [location of T] finally stops.";
		now T is expired.

To say hypno content of (Y - a hypno trap):
	say "a swirling hypnotic pattern".

To say hypno content of (Y - a cocksucker hypno trap):
	say "a swirling hypnotic pattern, with short clips flashing constantly of [if the player is male]transsexual [end if]porn stars gleefully giving blowjobs to huge [manly-penis]s [if bukkake fetish is 1]and receiving massive facials[otherwise]and swallowing massive loads[end if]".

To say hypno content of (Y - a fucktoy hypno trap):
	say "a swirling hypnotic pattern, with short clips flashing constantly of [if the player is male]transsexual [end if]porn stars getting [if the player is male]anally destroyed[otherwise if pregnancy fetish is 1]vaginally bred[otherwise]double penetrated[end if] by huge [manly-penis]s".

To say hypno content of (Y - a diaper hypno trap):
	say "a swirling hypnotic pattern, with short clips flashing constantly of adults gleefully wetting [if diaper lover >= 4]and messing [end if]their diapers and playing around in them, frequently stopping to rub their padded crotches enthusiastically".

To compute hypno effect of (Y - a hypno trap):
	let R be a random number between -6 and 19;
	increase R by a random number between 0 and the intelligence of the player / 2;
	if the player is immobile and R >= 0, increase R by 7; [There is always a chance of tearing eyes away even when immobile with low int]
	if R > the intelligence of the player or the bimbo of the player > 14 or wanking is 1:
		say "[if wanking is 1]You continue to stare at the screen, completely unable to look away. [otherwise if the bimbo of the player > 14]You don't even consider trying to look away, of course you want to watch! [otherwise if the player is immobile]Because you are held in place, you find it even more difficult to look elsewhere!  [otherwise]You can't bring yourself to look away!  [end if]";
		say "[video content of Y]";
		compute specific hypno effect of Y;
		if woman-barbara is in the location of the player:
			compute barbara hypno shared progression;
		if the player is able to wank and the player is a bit horny and the player is not in danger and a random number between 5 and (19 - (the arousal of the player / 750)) < the sex addiction of the player and wanking is 0:
			now auto is 1;
			try masturbating;
			now auto is 0;
		arouse 750;
	otherwise:
		if woman-barbara is in the location of the player:
			say "Do you block [NameDesc of woman-barbara][']s vision of the screen? [yesnolink]";
			if the player consents:
				if the woman-bimbo of woman-barbara > 5:
					say "[BigNameDesc of woman-barbara] blinks out of [his of woman-barbara] trance.[line break][second custom style]'NO! NO STOPPING FUN! TAKE ME BACK!'[roman type][line break][big he of woman-barbara] takes an aggressive stance!";
					now woman-barbara is angered;
				otherwise:
					say "[BigNameDesc of woman-barbara] blinks out of [his of woman-barbara] trance.[line break][second custom style]'Oh! Eek! Thank you so much for saving me, [NameBimbo]. I owe you one.'[roman type][line break]";
					compute room leaving of woman-barbara;
					bore woman-barbara;
					FavourUp woman-barbara;
				if the woman-status of woman-barbara is 94 and the delayed sluttification of woman-barbara >= 2, decrease the delayed sluttification of woman-barbara by 2;
			otherwise:
				compute barbara hypno solo progression;
		say "You overpower the hypnotic urge and tear your eyes away from the screen, for now. You should try and leave the room before your eyes wander back!".

To compute specific hypno effect of (Y - a hypno trap):
	do nothing. [Should never happen; each hypno trap should have a function here]

hypno-trigger-tasty is a number that varies.
hypno-trigger-maturity is a number that varies.
hypno-trigger-pussy is a number that varies.

To compute specific hypno effect of (Y - a cocksucker hypno trap):
	if hypno-trigger-tasty is 0 and the player is a November 2017 top donator:
		say "For some reason the word 'tasty' repeats in your head over and over and over and over. You feel that if you were to hear someone say that word out loud, you might lose control over your own actions.";
		now hypno-trigger-tasty is 1;
	otherwise if the thirst of the player < 3:
		say "You feel weirdly thirsty.";
		StomachDown 1;
	otherwise:
		say "You feel an itch at the back of your throat[if the semen taste addiction of the player > 12], and you know that there's only one thing that can cure it[otherwise] for a brief moment[one of], and then it passes[or][stopping][end if].";
	if diaper quest is 0, SemenTasteAddictUp 1;
	if watersports fetish is 1, UrineTasteAddictUp 1.

To compute specific hypno effect of (Y - a fucktoy hypno trap):
	if the player is male, AnalSexAddictUp 1;
	otherwise VaginalSexAddictUp 1;
	SexAddictUp 1.
	
To compute specific hypno effect of (Y - a diaper hypno trap):
	if diaper lover >= 4 and the player is full and there is a worn total protection diaper:
		say "Beyond your control, you feel your body bare down as you grunt.[line break]";
		compute messing;
	otherwise if the bladder of the player > 6:
		say "You feel yourself relax.[line break]";
		now delayed urination is 1;
		try urinating;
	otherwise:
		say "[one of][if there is a worn diaper]Seeing the images on the screen, you feel more comfortable with the idea of wearing and using your diaper. [end if][if there is a worn diaper and the diaper addiction of the player < 10]After all, if you have to go, you have to go, right?[otherwise if there is a worn diaper]After all, they're super comfy and toilets are dumb![otherwise]Part of you suddenly wishes you were wearing a diaper.[end if][if the number of worn diapers is 0 and the diaper addiction of the player < 10]At the very least, they're more convenient.[otherwise if the number of worn diapers is 0]After all, the people on the screen look like they're having so much fun![end if][or][or][cycling]";
	if the raw diaper addiction of the player < 20:
		DiaperAddictUp 1;
	otherwise:	
		increase incontinence by 1.

To say video content of (Y - a hypno trap):
	say "[line break][specific video content of Y][one of]The words flash in front of your eyes and[or]Once again[stopping] [one of]they are imprinted onto your brain[or]they are burned onto the back of your skull[or]you can hear them echo throughout your mind[or]you find yourself repeating the words in your head[or]they are gone in an instant, leaving a permanent impression on your subconscious mind[in random order].".

To say specific video content of (Y - a hypno trap):
	say "[second custom style]I AM A FILTHY SLUT[roman type][line break]". [Should never happen]

To say specific video content of (Y - a cocksucker hypno trap):
	say "[second custom style][one of]I CRAVE CUM[or]FIND A MAN[line break]DRAIN HIS BALLS[or]WORSHIP THE COCK[line break]SWALLOW YOUR PRIZE[or]I CAN'T WAIT[line break]FOR HIM TO PAINT MY [if bukkake fetish is 1]FACE[otherwise]THROAT[end if][or]COCK TASTES GOOD[line break][if watersports fetish is 1]PISS[otherwise]CUM[end if] TASTES BETTER[or]MASSAGE HIS BALLS[line break]WITH MY TONGUE[or]GOOD THINGS CUM[line break]TO THOSE WHO BEG[or][if watersports fetish is 1]PISS ON[otherwise]FUCK[end if] MY FACE[or]USE MY THROAT[or]OPEN WIDE[line break]TAKE HIM DEEP[or]HE LIKES IT BEST[line break]WHEN I GAG[or]IF HE FEELS MY TEETH[line break]I GET A SLAP[or]I KEEP MY HANDS[line break]BEHIND MY BACK[or]I LOOK INTO HIS EYES[line break]AS I GAG ON HIS DICK[or]I CAN'T SAY NO[line break]WHEN MY MOUTH IS FULL OF DICK[or][if bukkake fetish is 1]GET COVERED IN SO MUCH CUM[line break]THAT MY EYES ARE GLUED SHUT[otherwise]GRAB MY HAIR[line break]PULL ME IN[end if][or][if bukkake fetish is 1]I KEEP HIS CUM ON MY FACE[line break]IT MAKES ME LOOK PRETTY[otherwise]I HOLD HIS CUM IN MY MOUTH[line break]TO SAVOUR THE TASTE[end if][in random order][roman type][line break]". 

To say specific video content of (Y - a fucktoy hypno trap):
	say "[second custom style][one of]FILL ME UP[or]FIND A COCK[line break]RIDE IT HARD[or]HE'S SO STRONG[line break]HE DOES WHAT HE WANTS[or]I CAN'T WAIT[line break]TO FEEL HIM INSIDE ME[or]I CAN TASTE MY ASS[line break]ON HIS DICK[or]ALL OF MY HOLES[line break]NEED FILLING WITH CUM[or]I WILL ONLY CUM[line break]WITH MASTER'S PERMISSION[or][if the player is male]MY WILLY IS USELESS[line break]I NEED A REAL MAN[otherwise]MY JOB IN LIFE[line break]IS TO KEEP MY [caps cunt] WARM[end if][or]USE MY ASSHOLE[line break]AS YOUR PERSONAL [if watersports fetish is 1]URINAL[otherwise]CUM DUMP[end if][or][if pregnancy fetish is 1 and the player is female]BREED MY [caps cunt][line break]MAKE ME CARRY YOUR CHILD[otherwise]I DON'T USE CONDOMS[line break]SO I CAN FEEL HIM CUM INSIDE[end if][or]I THANK HIM POLITELY[line break]FOR RUINING MY ASS[or]ONE COCK IS GOOD[line break][if the player is female]THREE[otherwise]TWO[end if] COCKS IS BETTER[or]HE PULLS ON MY HAIR[line break]SO I KNOW TO GO FASTER[or]MY BELLY IS FULL[line break]OF STRANGERS['] SEMEN[or]I DON'T KNOW HIS NAME[line break][if pregnancy fetish is 1 and the player is female]BUT I'M CARRYING HIS KID[otherwise]BUT I RECOGNISE HIS DICK[end if][or][if egg laying fetish is 1 and the player is female]FILL MY [caps pussy] WITH CUM[line break]FILL MY BELLY WITH EGGS[otherwise]FILL MY BELLY SO MUCH[line break]THAT I CAN'T MOVE FOR HOURS[end if][or][if egg laying fetish is 1]I LET MONSTERS BREED ME[line break]WITH THEIR EGGS[otherwise]I KEEP A PLUG IN MY ASS[line break]SO I DON'T LOSE HIS CUM[end if][or]MY FRIENDS ARE WATCHING[line break]NOW THEY KNOW WHO I REALLY AM[or]I'M NOT A WHORE[line break]I'D FUCK ANY GUY FOR FREE[in random order][roman type][line break]". 

To say specific video content of (Y - a diaper hypno trap):
	say "[second custom style][one of]I'M JUST A BABY[or]I'M JUST A DIAPERSLUT[or]CALL ME POTTYPANTS[or]NO TOILETS[line break]JUST DIAPERS[or]I'M NOT GROWN-UP[line break]I'LL NEVER GROW UP[or][if diaper lover >= 4]GRUNT AND PUSH[otherwise]I WET MY NAPPY[end if][or]SPANK MY ASS[line break][if diaper lover >= 4]AND SPREAD MY MESS[otherwise]AND MAKE IT RED[end if][or]FIND A MOMMY[line break]TO RUB MY DIAPER[or]I NEED[line break]A GROWN-UP[line break]TO TELL ME WHAT TO DO[or]I NEED A DADDY[line break][if player is male]TO MAKE ME HIS SISSY[otherwise]TO MAKE ME HIS BABYGIRL[end if][or][if player is male]GOOD SISSIES[otherwise]GOOD GIRLS[end if][line break]CREAM THEIR PAMPERS[or][if diaper quest is 1]DON'T THINK[line break]JUST LET IT GO[otherwise]PRETEND HIS COCK[line break]IS A PACIFIER[end if][or]WHEN I'M NAUGHTY[line break]PUT ME OVER YOUR KNEE[or][if diaper quest is 1]THE MORE I DRINK[line break]THE MORE I PEE[otherwise]FILL MY BOTTLE[line break]FULL OF CUM[end if][or][if lactation fetish is 1]FEED ME MILK[line break]FROM YOUR BREASTS[otherwise]BOUNCE ME[end if][line break]IN A DIAPER[line break]ON YOUR KNEE[or]FILL MY NAPPY[line break][if diaper quest is 1]SHOW MY FRIENDS[otherwise]WITH YOUR CUM[end if][or]RUB MY CLITTY[line break]THROUGH MY SOGGY PADDING[or][if diaper lover >= 3]MESS[otherwise]WET[end if] MYSELF ON PURPOSE[line break]DURING MY DIAPER CHECK[or]SPANK ME HARD ENOUGH[line break]AND YOU'LL MAKE ME CUM[or]CLEAN ME OUT[line break]WITH A BIG SOAPY ENEMA[or]THE FEELING OF [if diaper lover >= 3]POOPING[otherwise]WETTING[end if] MYSELF[line break]IS ABSOLUTE BLISS[in random order][roman type][line break]". 



Hypno Traps ends here.

