Hypno Traps by Traps begins here.

A hypno trap is a kind of trap. A cocksucker hypno trap is a kind of hypno trap. A fucktoy hypno trap is a kind of hypno trap. A BBC hypno trap is a kind of hypno trap. A diaper hypno trap is a kind of hypno trap. There are 3 potentially wire potentially sticky potentially click cocksucker hypno traps. There are 3 potentially wire potentially sticky potentially click fucktoy hypno traps. There are 2 potentially wire potentially sticky potentially click BBC hypno traps. There are 4 potentially wire potentially sticky potentially click diaper hypno traps. Understand "screen" as hypno trap. The printed name of a hypno trap is "hypno screen".

This is the spawn initial hotel hypno traps rule:
	repeat with N running from 1 to 4:
		let R be a random trappable placed modern room;
		let X be 0;
		while there is a hypno trap in R and X < 50:
			now R is a random trappable placed modern room;
			increase X by 1;
		let U be a random off-stage hypno trap;
		now X is 0;
		while ((diaper lover < 1 and U is a diaper hypno trap) or (interracial fetish < 1 and U is a BBC hypno trap)) and X < 50:
			now U is a random off-stage hypno trap;
			increase X by 1;
		if diaper quest is 1 or (diaper focus is 1 and the number of on-stage diaper hypno traps < 3), now U is a random off-stage diaper hypno trap;
		deploy U in R.
The spawn initial hotel hypno traps rule is listed first in the set up hotel traps rules.

To say ExamineDesc of (T - a hypno trap):
	say "A monitor revealed from within a hidden compartment in a wall. On the screen is [hypno content of T]. It's difficult to look away once you start watching it.".

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

To say hypno content of (Y - a BBC hypno trap):
	say "a swirling hypnotic pattern, with short clips flashing constantly of porn stars worshipping and pleasuring incredibly sized black [manly-penis]s with every part of their body".

To say hypno content of (Y - a diaper hypno trap):
	say "a swirling hypnotic pattern, with short clips flashing constantly of adults gleefully wetting [if diaper messing >= 4]and messing [end if]their diapers and playing around in them, frequently stopping to rub their padded crotches enthusiastically".

To compute hypno effect of (Y - a hypno trap):
	let R be a random number between -6 and 19;
	increase R by a random number between 0 and the intelligence of the player / 2;
	if the player is immobile and R >= 0, increase R by 7; [There is always a chance of tearing eyes away even when immobile with low int]
	if R > the intelligence of the player or the bimbo of the player > 14 or wanking is 1:
		say "[if wanking is 1]You continue to stare at the screen, completely unable to look away. [otherwise if the bimbo of the player > 14]You don't even consider trying to look away, of course you want to watch! [otherwise if the player is immobile]Because you are held in place, you find it even more difficult to look elsewhere! [otherwise]You can't bring yourself to look away! [end if]";
		say "[video content of Y]";
		compute specific hypno effect of Y;
		if woman-barbara is in the location of the player:
			compute barbara hypno shared progression;
		if the player is able to wank and the player is a bit horny and the player is not in danger and a random number between 5 and (30 - (the arousal of the player / 750)) < the sex addiction of the player and wanking is 0:
			now auto is 1;
			try masturbating;
			now auto is 0;
		arouse 750;
	otherwise:
		if woman-barbara is in the location of the player:
			say "Do you block [NameDesc of woman-barbara][']s vision of the screen? ";
			if the player is reverse bimbo consenting:
				if the woman-bimbo of woman-barbara > 5:
					say "[BigNameDesc of woman-barbara] blinks out of [his of woman-barbara] trance.[line break][second custom style]'NO! NO STOPPING FUN! TAKE ME BACK!'[roman type][line break][big he of woman-barbara] takes an aggressive stance!";
					now woman-barbara is angered;
				otherwise:
					say "[BigNameDesc of woman-barbara] blinks out of [his of woman-barbara] trance.[line break][second custom style]'Oh! Eek! Thank you so much for saving me, [NameBimbo]. I owe you one.'[roman type][line break]";
					compute mandatory room leaving of woman-barbara;
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
	commence animation of OralHypnoAnimation;
	if hypno-trigger-tasty is 0:
		say "For some reason the word 'tasty' repeats in your head over and over and over and over. You feel that if you were to hear someone say that word out loud, you might lose control over your own actions.";
		now hypno-trigger-tasty is 1;
	otherwise if the thirst of the player < 3:
		say "You feel weirdly thirsty.";
		StomachDown 1;
	otherwise:
		say "You feel an itch at the back of your throat[if the semen taste addiction of the player > 12], and you know that there's only one thing that can cure it[otherwise] for a brief moment[one of], and then it passes[or][stopping][end if].";
	if diaper quest is 0:
		if the oral sex addiction of the player * 2 > semen taste addiction of the player, SemenTasteAddictUp 1;
		otherwise OralSexAddictUp 1;
	UrineTasteAddictUp 1.

To compute specific hypno effect of (Y - a fucktoy hypno trap):
	if the player is male:
		commence animation of ShemaleHypnoAnimation;
	otherwise:
		commence animation of DPHypnoAnimation;
	if the player is male, AnalSexAddictUp 1;
	otherwise VaginalSexAddictUp 1;
	SexAddictUp 1.

To compute specific hypno effect of (Y - a BBC hypno trap):
	commence animation of BBCHypnoAnimation;
	if the raw BBC addiction of the player > the raw sex addiction of the player, SexAddictUp 1; [Remember sex addiction is between 1 and 20, and BBC only between 1 and 10. So this is a fair way to make sure that sex addiction isn't too massively far behind, at least not from a sexy hypno screen.]
	BBCAddictUp 1.

hypno-trigger-please is a number that varies.

To compute specific hypno effect of (Y - a diaper hypno trap):
	commence animation of DiaperHypnoAnimation;
	if hypno-trigger is "please" and hypno-trigger-please is 0:
		say "For some reason the words [second custom style]'PLEASE'[roman type] and [second custom style]'PEE'[roman type] keep echoing around in your head. You feel it ebb and settle, taking a permanent home in the deepest recesses of your mind.";
		now hypno-trigger-please is 1;
		now hypno-trigger is "";
	otherwise if diaper messing >= 3 and the player is full and asshole is not actually occupied and there is a worn total protection soilable knickers:
		say "Beyond your control, you feel your body bare down as you grunt.";
		now voluntarySquatting is 1;
		compute messing;
	otherwise if the bladder of the player > 6:
		say "You feel yourself relax.";
		now delayed urination is 2;
		try urinating;
	otherwise if incontinence < the max-incontinence of the player and a random number between 1 and 2 is 1:
		say "You feel your ability to hold onto your bladder [if diaper messing >= 3]and bowels [end if]weakening.";
	otherwise if the raw diaper addiction of the player < 20:
		say "[one of][if there is a worn diaper]Seeing the images on the screen, you feel more comfortable with the idea of wearing and using your diaper. [end if][if there is a worn diaper and the diaper addiction of the player < 10]After all, if you have to go, you have to go, right?[otherwise if there is a worn diaper]After all, they're super comfy and toilets are dumb![otherwise]Part of you suddenly wishes you were wearing a diaper.[end if][if the number of worn diapers is 0 and the diaper addiction of the player < 10]At the very least, they're more convenient.[otherwise if the number of worn diapers is 0]After all, the people on the screen look like they're having so much fun![end if][or][or][cycling]";
		SilentlyDiaperAddictUp 1.

To say video content of (Y - a hypno trap):
	say "[line break][specific video content of Y][one of]The words flash in front of your eyes and[or]Once again[stopping] [one of]they are imprinted onto your brain[or]they are burned onto the back of your skull[or]you can hear them echo throughout your mind[or]you find yourself repeating the words in your head[or]they are gone in an instant, leaving a permanent impression on your subconscious mind[in random order].".

To say specific video content of (Y - a hypno trap):
	say "[second custom style]I AM A FILTHY SLUT[roman type][line break]". [Should never happen]

To say specific video content of (Y - a cocksucker hypno trap):
	say "[second custom style][one of]I CRAVE CUM[or]FIND A [caps man of shopkeeper][line break]DRAIN [caps his of shopkeeper] BALLS[or]WORSHIP THE COCK[line break]SWALLOW YOUR PRIZE[or]I CAN'T WAIT[line break]FOR [caps him of shopkeeper] TO PAINT MY [if bukkake fetish is 1]FACE[otherwise]THROAT[end if][or]COCK TASTES GOOD[line break][if watersports fetish is 1]PISS[otherwise]CUM[end if] TASTES BETTER[or]MASSAGE [caps his of shopkeeper] BALLS[line break]WITH MY TONGUE[or]GOOD THINGS CUM[line break]TO THOSE WHO BEG[or][if watersports fetish is 1]PISS ON[otherwise]FUCK[end if] MY FACE[or]USE MY THROAT[or]OPEN WIDE[line break]TAKE [caps him of shopkeeper] DEEP[or][caps he of shopkeeper] LIKES IT BEST[line break]WHEN I GAG[or]IF [caps he of shopkeeper] FEELS MY TEETH[line break]I GET A SLAP[or]I KEEP MY HANDS[line break]BEHIND MY BACK[or]I LOOK INTO [caps his of shopkeeper] EYES[line break]AS I GAG ON [caps his of shopkeeper] DICK[or]I CAN'T SAY NO[line break]WHEN MY MOUTH IS FULL OF DICK[or][if bukkake fetish is 1]GET COVERED IN SO MUCH CUM[line break]THAT MY EYES ARE GLUED SHUT[otherwise]GRAB MY HAIR[line break]PULL ME IN[end if][or][if bukkake fetish is 1]I KEEP [caps his of shopkeeper] CUM ON MY FACE[line break]IT MAKES ME LOOK PRETTY[otherwise]I HOLD [caps his of shopkeeper] CUM IN MY MOUTH[line break]TO SAVOUR THE TASTE[end if][in random order][roman type][line break]".

To say specific video content of (Y - a fucktoy hypno trap):
	say "[second custom style][one of]FILL ME UP[or]FIND A COCK[line break]RIDE IT HARD[or][caps he of shopkeeper][']S SO STRONG[line break][caps he of shopkeeper] DOES WHAT [caps he of shopkeeper] WANTS[or]I CAN'T WAIT[line break]TO FEEL [caps him of shopkeeper] INSIDE ME[or]I CAN TASTE MY ASS[line break]ON [caps his of shopkeeper] DICK[or]ALL OF MY HOLES[line break]NEED FILLING WITH CUM[or]I WILL ONLY CUM[line break]WITH MASTER'S PERMISSION[or][if the player is male]MY WILLY IS USELESS[line break]I NEED A REAL MAN[otherwise]MY JOB IN LIFE[line break]IS TO KEEP MY [caps cunt] WARM[end if][or]USE MY ASSHOLE[line break]AS YOUR PERSONAL [if watersports fetish is 1]URINAL[otherwise]CUM DUMP[end if][or][if pregnancy fetish is 1 and the player is female]BREED MY [caps cunt][line break]MAKE ME CARRY YOUR CHILD[otherwise]I DON'T USE CONDOMS[line break]SO I CAN FEEL [caps him of shopkeeper] CUM INSIDE[end if][or]I THANK [caps him of shopkeeper] POLITELY[line break]FOR RUINING MY ASS[or]ONE COCK IS GOOD[line break][if the player is female]THREE[otherwise]TWO[end if] COCKS IS BETTER[or][caps he of shopkeeper] PULLS ON MY HAIR[line break]SO I KNOW TO GO FASTER[or]MY BELLY IS FULL[line break]OF STRANGERS['] SEMEN[or]I DON'T KNOW [caps his of shopkeeper] NAME[line break][if pregnancy fetish is 1 and the player is female]BUT I'M CARRYING [caps his of shopkeeper] KID[otherwise]BUT I RECOGNISE [caps his of shopkeeper] DICK[end if][or][if egg laying fetish is 1 and the player is female]FILL MY [caps pussy] WITH CUM[line break]FILL MY BELLY WITH EGGS[otherwise]FILL MY BELLY SO MUCH[line break]THAT I CAN'T MOVE FOR HOURS[end if][or][if egg laying fetish is 1]I LET MONSTERS BREED ME[line break]WITH THEIR EGGS[otherwise]I KEEP A PLUG IN MY ASS[line break]SO I DON'T LOSE [caps his of shopkeeper] CUM[end if][or]MY FRIENDS ARE WATCHING[line break]NOW THEY KNOW WHO I REALLY AM[or]I'M NOT A WHORE[line break]I'D FUCK ANY GUY FOR FREE[in random order][roman type][line break]".

To say specific video content of (Y - a BBC hypno trap):
	say "[second custom style][one of]BLACK IS BETTER[line break]BLACK IS BEST[or]GET BLACKED[line break]NEVER GO BACK[or]BLACK IS BIGGER[line break]BIGGER IS BETTER[or]I'M A PATHETIC SUBMISSIVE [WhiteSub in upper case][line break]BORN TO SERVE [BlackCock in upper case][or][if the player is male]MY WHITE WILLY IS USELESS[line break]I WAS BORN TO SERVE SUPERIOR COCKS[otherwise]MY JOB IN LIFE[line break]IS TO KEEP [BlackCock in upper case] HAPPY[end if][or]THE ONLY THING BETTER THAN A [BlackCock in upper case][line break]IS TWO[or][if pregnancy fetish is 1 and the player is female]MY [caps cunt] IS FOR BREEDING[line break]STRONG BLACK BABIES[otherwise]I ONLY USE CONDOMS[line break]WITH BORING WHITE COCKS[end if][or]MY HOLE IS SO [if ungape is 1]GREEDY[otherwise]STRETCHED[end if][line break]ONLY [BlackCock in upper case] CAN FULFIL IT[or]ONE [BlackCock in upper case] FOR MY MOUTH[line break][if the player is female]TWO EACH FOR MY [caps cunt] AND ASS[otherwise]TWO FOR MY ASS[end if][or]MY [if pregnancy fetish is 1]WOMB[otherwise]BELLY[end if] IS FULL[line break]OF MY BULL'S BABY BATTER[or]I DON'T CARE WHO [caps he of shopkeeper] IS[line break]IF [caps he of shopkeeper][']s BLACK THEN I'M GAME[or]WHEN A BLACK [caps man of shopkeeper] WALKS IN[line break]MY PANTIES HIT THE FLOOR[line break][or]I'LL SERVE AS A SEX SLAVE[line break]TO THE BLACK MASTER RACE[or]WHITE COCKS HAVE TO PAY[line break]BLACK ENTRY IS FREE[in random order][roman type][line break]".

To say specific video content of (Y - a diaper hypno trap):
	say "[second custom style][one of]I'M JUST A BABY[or]I'M JUST A DIAPERSLUT[or]CALL ME POTTYPANTS[or]NO TOILETS[line break]JUST DIAPERS[or]I'M NOT GROWN-UP[line break]I'LL NEVER GROW UP[or][if diaper messing >= 4]GRUNT AND PUSH[otherwise]I WET MY NAPPY[end if][or]SPANK MY ASS[line break][if diaper messing >= 4]AND SPREAD MY MESS[otherwise]AND MAKE IT RED[end if][or]FIND A MOMMY[line break]TO RUB MY DIAPER[or]I NEED[line break]A GROWN-UP[line break]TO TELL ME WHAT TO DO[or]I NEED A DADDY[line break][if the player is male and transGender is 0]TO MAKE ME HIS SISSY[otherwise]TO MAKE ME HIS BABYGIRL[end if][or][if the player is male]GOOD SISSIES[otherwise]GOOD GIRLS[end if][line break]CREAM THEIR PAMPERS[or][if diaper quest is 1]DON'T THINK[line break]JUST LET IT GO[otherwise]PRETEND HIS COCK[line break]IS A PACIFIER[end if][or]WHEN I'M NAUGHTY[line break]PUT ME OVER YOUR KNEE[or][if diaper quest is 1]THE MORE I DRINK[line break]THE MORE I PEE[otherwise]FILL MY BOTTLE[line break]FULL OF CUM[end if][or][if lactation fetish is 1]FEED ME MILK[line break]FROM YOUR BREASTS[otherwise]BOUNCE ME[end if][line break]IN A DIAPER[line break]ON YOUR KNEE[or]FILL MY NAPPY[line break][if diaper quest is 1]SHOW MY FRIENDS[otherwise]WITH YOUR CUM[end if][or]RUB MY CLITTY[line break]THROUGH MY SOGGY PADDING[or][if diaper messing >= 3]MESS[otherwise]WET[end if] MYSELF ON PURPOSE[line break]DURING MY DIAPER CHECK[or]SPANK ME HARD ENOUGH[line break]AND YOU'LL MAKE ME CUM[or]CLEAN ME OUT[line break]WITH A BIG SOAPY ENEMA[or]THE FEELING OF [if diaper messing >= 3]POOPING[otherwise]WETTING[end if] MYSELF[line break]IS ABSOLUTE BLISS[or][caps please] LET ME PEE PEE PLEASE LET ME PEE PEE PLEASE LET ME PEE PEE PLEASE[in random order][roman type][line break]".

Figure of HypnoDiaperAnimation000 is the file "Special/Animations/HypnoDiaper/frame_000.jpg".
Figure of HypnoDiaperAnimation001 is the file "Special/Animations/HypnoDiaper/frame_001.jpg".
Figure of HypnoDiaperAnimation002 is the file "Special/Animations/HypnoDiaper/frame_002.jpg".
Figure of HypnoDiaperAnimation003 is the file "Special/Animations/HypnoDiaper/frame_003.jpg".
Figure of HypnoDiaperAnimation004 is the file "Special/Animations/HypnoDiaper/frame_004.jpg".
Figure of HypnoDiaperAnimation005 is the file "Special/Animations/HypnoDiaper/frame_005.jpg".
Figure of HypnoDiaperAnimation006 is the file "Special/Animations/HypnoDiaper/frame_006.jpg".
Figure of HypnoDiaperAnimation007 is the file "Special/Animations/HypnoDiaper/frame_007.jpg".
Figure of HypnoDiaperAnimation008 is the file "Special/Animations/HypnoDiaper/frame_008.jpg".
Figure of HypnoDiaperAnimation009 is the file "Special/Animations/HypnoDiaper/frame_009.jpg".
Figure of HypnoDiaperAnimation010 is the file "Special/Animations/HypnoDiaper/frame_010.jpg".
Figure of HypnoDiaperAnimation011 is the file "Special/Animations/HypnoDiaper/frame_011.jpg".
Figure of HypnoDiaperAnimation012 is the file "Special/Animations/HypnoDiaper/frame_012.jpg".
Figure of HypnoDiaperAnimation013 is the file "Special/Animations/HypnoDiaper/frame_013.jpg".
Figure of HypnoDiaperAnimation014 is the file "Special/Animations/HypnoDiaper/frame_014.jpg".
Figure of HypnoDiaperAnimation015 is the file "Special/Animations/HypnoDiaper/frame_015.jpg".
Figure of HypnoDiaperAnimation016 is the file "Special/Animations/HypnoDiaper/frame_016.jpg".
Figure of HypnoDiaperAnimation017 is the file "Special/Animations/HypnoDiaper/frame_017.jpg".
Figure of HypnoDiaperAnimation018 is the file "Special/Animations/HypnoDiaper/frame_018.jpg".
Figure of HypnoDiaperAnimation019 is the file "Special/Animations/HypnoDiaper/frame_019.jpg".
Figure of HypnoDiaperAnimation020 is the file "Special/Animations/HypnoDiaper/frame_020.jpg".
Figure of HypnoDiaperAnimation021 is the file "Special/Animations/HypnoDiaper/frame_021.jpg".
Figure of HypnoDiaperAnimation022 is the file "Special/Animations/HypnoDiaper/frame_022.jpg".
Figure of HypnoDiaperAnimation023 is the file "Special/Animations/HypnoDiaper/frame_023.jpg".
Figure of HypnoDiaperAnimation024 is the file "Special/Animations/HypnoDiaper/frame_024.jpg".
Figure of HypnoDiaperAnimation025 is the file "Special/Animations/HypnoDiaper/frame_025.jpg".
Figure of HypnoDiaperAnimation026 is the file "Special/Animations/HypnoDiaper/frame_026.jpg".
Figure of HypnoDiaperAnimation027 is the file "Special/Animations/HypnoDiaper/frame_027.jpg".
Figure of HypnoDiaperAnimation028 is the file "Special/Animations/HypnoDiaper/frame_028.jpg".
Figure of HypnoDiaperAnimation029 is the file "Special/Animations/HypnoDiaper/frame_029.jpg".
Figure of HypnoDiaperAnimation030 is the file "Special/Animations/HypnoDiaper/frame_030.jpg".
Figure of HypnoDiaperAnimation031 is the file "Special/Animations/HypnoDiaper/frame_031.jpg".
Figure of HypnoDiaperAnimation032 is the file "Special/Animations/HypnoDiaper/frame_032.jpg".
Figure of HypnoDiaperAnimation033 is the file "Special/Animations/HypnoDiaper/frame_033.jpg".
Figure of HypnoDiaperAnimation034 is the file "Special/Animations/HypnoDiaper/frame_034.jpg".
Figure of HypnoDiaperAnimation035 is the file "Special/Animations/HypnoDiaper/frame_035.jpg".
Figure of HypnoDiaperAnimation036 is the file "Special/Animations/HypnoDiaper/frame_036.jpg".
Figure of HypnoDiaperAnimation037 is the file "Special/Animations/HypnoDiaper/frame_037.jpg".
Figure of HypnoDiaperAnimation038 is the file "Special/Animations/HypnoDiaper/frame_038.jpg".
Figure of HypnoDiaperAnimation039 is the file "Special/Animations/HypnoDiaper/frame_039.jpg".
Figure of HypnoDiaperAnimation040 is the file "Special/Animations/HypnoDiaper/frame_040.jpg".
Figure of HypnoDiaperAnimation041 is the file "Special/Animations/HypnoDiaper/frame_041.jpg".
Figure of HypnoDiaperAnimation042 is the file "Special/Animations/HypnoDiaper/frame_042.jpg".
Figure of HypnoDiaperAnimation043 is the file "Special/Animations/HypnoDiaper/frame_043.jpg".
Figure of HypnoDiaperAnimation044 is the file "Special/Animations/HypnoDiaper/frame_044.jpg".
Figure of HypnoDiaperAnimation045 is the file "Special/Animations/HypnoDiaper/frame_045.jpg".
Figure of HypnoDiaperAnimation046 is the file "Special/Animations/HypnoDiaper/frame_046.jpg".
Figure of HypnoDiaperAnimation047 is the file "Special/Animations/HypnoDiaper/frame_047.jpg".
Figure of HypnoDiaperAnimation048 is the file "Special/Animations/HypnoDiaper/frame_048.jpg".
Figure of HypnoDiaperAnimation049 is the file "Special/Animations/HypnoDiaper/frame_049.jpg".
Figure of HypnoDiaperAnimation050 is the file "Special/Animations/HypnoDiaper/frame_050.jpg".
Figure of HypnoDiaperAnimation051 is the file "Special/Animations/HypnoDiaper/frame_051.jpg".
Figure of HypnoDiaperAnimation052 is the file "Special/Animations/HypnoDiaper/frame_052.jpg".
Figure of HypnoDiaperAnimation053 is the file "Special/Animations/HypnoDiaper/frame_053.jpg".
Figure of HypnoDiaperAnimation054 is the file "Special/Animations/HypnoDiaper/frame_054.jpg".
Figure of HypnoDiaperAnimation055 is the file "Special/Animations/HypnoDiaper/frame_055.jpg".
Figure of HypnoDiaperAnimation056 is the file "Special/Animations/HypnoDiaper/frame_056.jpg".
Figure of HypnoDiaperAnimation057 is the file "Special/Animations/HypnoDiaper/frame_057.jpg".
Figure of HypnoDiaperAnimation058 is the file "Special/Animations/HypnoDiaper/frame_058.jpg".
Figure of HypnoDiaperAnimation059 is the file "Special/Animations/HypnoDiaper/frame_059.jpg".
Figure of HypnoDiaperAnimation060 is the file "Special/Animations/HypnoDiaper/frame_060.jpg".
Figure of HypnoDiaperAnimation061 is the file "Special/Animations/HypnoDiaper/frame_061.jpg".
Figure of HypnoDiaperAnimation062 is the file "Special/Animations/HypnoDiaper/frame_062.jpg".
Figure of HypnoDiaperAnimation063 is the file "Special/Animations/HypnoDiaper/frame_063.jpg".
Figure of HypnoDiaperAnimation064 is the file "Special/Animations/HypnoDiaper/frame_064.jpg".
Figure of HypnoDiaperAnimation065 is the file "Special/Animations/HypnoDiaper/frame_065.jpg".
Figure of HypnoDiaperAnimation066 is the file "Special/Animations/HypnoDiaper/frame_066.jpg".
Figure of HypnoDiaperAnimation067 is the file "Special/Animations/HypnoDiaper/frame_067.jpg".
Figure of HypnoDiaperAnimation068 is the file "Special/Animations/HypnoDiaper/frame_068.jpg".
Figure of HypnoDiaperAnimation069 is the file "Special/Animations/HypnoDiaper/frame_069.jpg".
Figure of HypnoDiaperAnimation070 is the file "Special/Animations/HypnoDiaper/frame_070.jpg".
Figure of HypnoDiaperAnimation071 is the file "Special/Animations/HypnoDiaper/frame_071.jpg".
Figure of HypnoDiaperAnimation072 is the file "Special/Animations/HypnoDiaper/frame_072.jpg".
Figure of HypnoDiaperAnimation073 is the file "Special/Animations/HypnoDiaper/frame_073.jpg".
Figure of HypnoDiaperAnimation074 is the file "Special/Animations/HypnoDiaper/frame_074.jpg".
Figure of HypnoDiaperAnimation075 is the file "Special/Animations/HypnoDiaper/frame_075.jpg".
Figure of HypnoDiaperAnimation076 is the file "Special/Animations/HypnoDiaper/frame_076.jpg".
Figure of HypnoDiaperAnimation077 is the file "Special/Animations/HypnoDiaper/frame_077.jpg".
Figure of HypnoDiaperAnimation078 is the file "Special/Animations/HypnoDiaper/frame_078.jpg".
Figure of HypnoDiaperAnimation079 is the file "Special/Animations/HypnoDiaper/frame_079.jpg".
Figure of HypnoDiaperAnimation080 is the file "Special/Animations/HypnoDiaper/frame_080.jpg".
Figure of HypnoDiaperAnimation081 is the file "Special/Animations/HypnoDiaper/frame_081.jpg".
Figure of HypnoDiaperAnimation082 is the file "Special/Animations/HypnoDiaper/frame_082.jpg".
Figure of HypnoDiaperAnimation083 is the file "Special/Animations/HypnoDiaper/frame_083.jpg".
Figure of HypnoDiaperAnimation084 is the file "Special/Animations/HypnoDiaper/frame_084.jpg".
Figure of HypnoDiaperAnimation085 is the file "Special/Animations/HypnoDiaper/frame_085.jpg".
Figure of HypnoDiaperAnimation086 is the file "Special/Animations/HypnoDiaper/frame_086.jpg".
Figure of HypnoDiaperAnimation087 is the file "Special/Animations/HypnoDiaper/frame_087.jpg".
Figure of HypnoDiaperAnimation088 is the file "Special/Animations/HypnoDiaper/frame_088.jpg".
Figure of HypnoDiaperAnimation089 is the file "Special/Animations/HypnoDiaper/frame_089.jpg".
Figure of HypnoDiaperAnimation090 is the file "Special/Animations/HypnoDiaper/frame_090.jpg".
Figure of HypnoDiaperAnimation091 is the file "Special/Animations/HypnoDiaper/frame_091.jpg".
Figure of HypnoDiaperAnimation092 is the file "Special/Animations/HypnoDiaper/frame_092.jpg".
Figure of HypnoDiaperAnimation093 is the file "Special/Animations/HypnoDiaper/frame_093.jpg".
Figure of HypnoDiaperAnimation094 is the file "Special/Animations/HypnoDiaper/frame_094.jpg".
Figure of HypnoDiaperAnimation095 is the file "Special/Animations/HypnoDiaper/frame_095.jpg".
Figure of HypnoDiaperAnimation096 is the file "Special/Animations/HypnoDiaper/frame_096.jpg".
Figure of HypnoDiaperAnimation097 is the file "Special/Animations/HypnoDiaper/frame_097.jpg".
Figure of HypnoDiaperAnimation098 is the file "Special/Animations/HypnoDiaper/frame_098.jpg".
Figure of HypnoDiaperAnimation099 is the file "Special/Animations/HypnoDiaper/frame_099.jpg".
Figure of HypnoDiaperAnimation100 is the file "Special/Animations/HypnoDiaper/frame_100.jpg".
Figure of HypnoDiaperAnimation101 is the file "Special/Animations/HypnoDiaper/frame_101.jpg".
Figure of HypnoDiaperAnimation102 is the file "Special/Animations/HypnoDiaper/frame_102.jpg".
Figure of HypnoDiaperAnimation103 is the file "Special/Animations/HypnoDiaper/frame_103.jpg".
Figure of HypnoDiaperAnimation104 is the file "Special/Animations/HypnoDiaper/frame_104.jpg".
Figure of HypnoDiaperAnimation105 is the file "Special/Animations/HypnoDiaper/frame_105.jpg".
Figure of HypnoDiaperAnimation106 is the file "Special/Animations/HypnoDiaper/frame_106.jpg".
Figure of HypnoDiaperAnimation107 is the file "Special/Animations/HypnoDiaper/frame_107.jpg".
When play begins:
	fill DiaperHypnoAnimation from Figure of HypnoDiaperAnimation000 to 107.

Hypno Traps ends here.
