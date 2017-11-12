Camera Trap by Traps begins here.

A camera trap is a kind of trap.  There are 10 potentially sticky camera traps.  The description of a camera trap is "A modern looking camera is embedded in a wall at ankle height.  It is pointing upwards and looks like it could take some extremely high resolution images.".

This is the spawn initial hotel camera traps rule:
	repeat with N running from 1 to 8:
		let R be a random trappable placed modern room;
		while there is a camera trap in R:
			now R is a random trappable placed modern room;
		let T be a random off-stage camera trap;
		deploy T in R;
		if N > 4, now T is triggerless.
The spawn initial hotel camera traps rule is listed in the set up hotel traps rules.

To trigger (Y - a camera trap):
	let P be a random off-stage upskirt poster;
	if ((the number of worn trousers is 0 and the number of worn skirted clothing > 0) or asshole is lewdly exposed or the flesh volume of hips > 5) and P is poster:
		say "[FlashFlav of Y]";
		say "It was in a perfect position to capture a full shot [if the number of worn trousers is 0 and the number of worn skirted clothing > 0]right up your skirt[otherwise]of your [HipDesc][end if].";
		say "[one of][variable custom style][if the humiliation of the player < 20000]Oh my god, how embarrassing!  I hope I never see that photo.[otherwise if the humiliation of the player < 30000]Whatever. Not the worst situation I've been caught in with this game.[otherwise]Fine by me.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][second custom style][one of]I bet I looked sexy[or]Whatever makes me popular with the boys[stopping]![end if][stopping][roman type][line break]";
		set up P;
	otherwise:
		say "You hear a weird whirring, a bit like an old camera film being wound forwards, but nothing else happens.".

To say FlashFlav of (Y - a camera trap):
	say "[bold type]FLASH![roman type]  A bright flash like lightning envelops the room for a brief moment.  [if Y is revealed and the reset-timer of Y < 99000]You had forgotten about that stupid camera!  [otherwise if Y is revealed][variable custom style][one of]How many photos is that thing going to take?  [or][stopping][roman type][line break][otherwise]You were not expecting that!  Looking towards the light source, you notice a[one of][or]nother[stopping] camera.  [end if]";
	now Y is revealed;
	now the reset-timer of Y is 99999.

A poster is a kind of thing.  A poster is not portable.  The printed name of a poster is "[TQlink of item described][if item described is in the hotel]banner[otherwise]poster[end if][TQxlink of item described]".  The text-shortcut of a poster is "po".
A poster can be unspotted or spotted.  A poster is usually unspotted.  [Has the player seen it before?]
A poster can be identifiable or unidentifiable.  A poster is usually identifiable. [Can the player be identified from the poster?]
Understand "banner" as poster.  Understand "new" as a poster when the item described is unspotted and the item described is on-stage. [For debugging purposes]

A poster has a text called title.
[The below variables are to track the state of the player at the time the image was taken.]
A poster has a number called old-gender.
A poster has a number called old-stance.
A poster has a number called old-breasts.
A poster has a number called old-belly.
A poster has a number called old-ass.
A poster has a number called genitals visible.
A poster has a number called asshole visible.
A poster has a number called old-cumface.
A poster has a number called old-cumbreasts.
A poster has a number called old-cumbelly.
A poster has a number called old-cumthighs.
A poster has a number called old-hairlength.
A poster has a number called old-penislength.
A poster has a text called old-haircolour.
A poster has an object called old-overdress.
A poster has an object called old-bra.
A poster has an object called old-knickers.
A poster has a number called old-knickers-semen.
A poster has a number called old-knickers-urine.
A poster has a number called old-knickers-water.
A poster has a number called old-knickers-mess.
A poster has an object called old-skirt.
A poster has an object called old-trousers.
A poster has a number called old-bimbo.
A poster has an object called old-father.
A poster has an object called old-special. [We can remember one unique special item, e.g. chastity cage]
[heels are too variable to be used here, the item may have transformed significantly]

To set up (P - a poster):
	develop P;
	distribute P.

To develop (P - a poster):
	now the old-gender of P is player-gender;
	now the old-stance of P is the stance of the player;
	now the old-breasts of P is the largeness of breasts;
	now the old-belly of P is the largeness of belly;
	now the old-ass of P is the flesh volume of hips;
	now the old-cumface of P is the semen coating of face;
	now the old-cumbreasts of P is the semen coating of breasts;
	now the old-cumbelly of P is the semen coating of belly;
	now the old-cumthighs of P is the semen coating of thighs;
	now the old-hairlength of P is the largeness of hair;
	now the old-penislength of P is the size of penis;
	now the old-haircolour of P is HairColourText;
	now the old-overdress of P is a random worn overdress;
	now the old-bra of P is a random worn bra;
	let K be a random worn knickers;
	now the old-knickers of P is K;
	if K is knickers:
		now the old-knickers-semen of P is the semen-soak of K;
		now the old-knickers-urine of P is the urine-soak of K;
		now the old-knickers-water of P is the water-soak of K;
		now the old-knickers-mess of P is the mess of K;
	now the old-skirt of P is a random worn skirt;
	now the old-trousers of P is a random worn trousers;
	now the old-bimbo of P is the bimbo of the player;
	if the pregnancy of the player > 0, now old-father of P is the father;
	if asshole is lewdly exposed, now the asshole visible of P is 1;
	if vagina is lewdly exposed or penis is lewdly exposed, now the genitals visible of P is 1;
	compute special of P;
	compute unique variables of P.

To compute special of (P - a poster):
	if there is a worn ballgag:
		now the old-special of P is a random worn ballgag;
	otherwise if there is a worn chastity cage:
		now the old-special of P is a random worn chastity cage;
	otherwise if there is a worn ankle bond:
		now the old-special of P is a random worn ankle bond;
	otherwise if there is a worn tattoo:
		now the old-special of P is a random worn tattoo;
	otherwise if there is a worn neckwear:
		now the old-special of P is a random worn necklace.

To compute unique variables of (P - a poster):
	do nothing.

To distribute (P - a poster):
	while P is off-stage:
		let R be a random placed room;
		unless there is a poster in R:
			if R is in the Dungeon or R is in the Woods or R is in the Hotel or R is in the Mansion:
				now P is in R;
	compute title of P.

To compute title of (P - a poster):
	now the title of P is "SLUT".

To say TitleDesc of (P - a poster):
	if P is in the hotel, say "Underneath, a bright sign made of small yellow and red bulbs has the words '[title of P]' slowly flashing.";
	otherwise say "The title of the poster, in large letters at the bottom, reads [italic type]'[title of P]'[roman type].".

To decide which number is the lewdness of (P - a poster):
	decide on 350.

Check examining an unspotted poster:
	follow the player spots poster rule. [This stops the player somehow examining the poster first.]

A time based rule (this is the player spots poster rule):
	let P be a random unspotted poster in the location of the player;
	if P is poster:
		if the player is in the hotel:
			say "You stop in your tracks and look up, [if the player is gagged]and your mouth would be agape if it wasn't gagged[otherwise]mouth agape[end if] as you see the large object above your head.  A giant banner hangs from the ceiling, with a photo of you in it.  ";
		otherwise:
			say "You yelp in surprise as you enter this room and immediately spot a large poster of a lewd scene on [if the player is in the Woods]a giant tree[otherwise]a wall[end if].  The image is one of you, taken by a camera trap earlier in the game.  ";
		say "[line break][ShortDesc of P][TitleDesc of P]";
		say "[if the humiliation of the player < 10000][first custom style][one of]Oh my god!  No no no no no!  How many people have seen this?  I feel so ashamed...[or]Oh no! There's one here too?![or]Oh no!  How may of these are there?![or]No no no, not another one!  There are pictures of me everywhere![then at random][otherwise if the humiliation of the player < 20000][variable custom style][one of]Oh no!  How do I take this down?!  How embarrassing![or]Eek!  Another one!  How awful...[or]Fucking hell, how many pictures of me are there?[then at random][otherwise if the humiliation of the player < 30000][variable custom style][one of]Ooh!  What meanie put this up without asking me?  I should have at least been asked![or]If I find who put this up they're going to be in big trouble![or]That's so mean!  But kind of hot...[or]How do I get myself into these situations! *giggle*[then at random][otherwise if the humiliation of the player < 40000][second custom style]I can't believe how much this is turning me on, to be objectified like that![otherwise][second custom style]I deserved that.[end if][roman type][line break]";
		if the humiliation of the player < 20000, say "[if the player is in the hotel][one of]You jump, trying to reach the banner and pull it down, but it's no use - it's way too high!  [first custom style]Noooo![roman type][line break][or][stopping][otherwise][one of]You try to rip the poster off the wall, but it's extremely durable and stuck on with some very impressive adhesive - you can't even damage it!  [first custom style]Oh come on![roman type][line break][or][stopping][end if]";
		say "[one of]Dare you look closer at your own shameful image?[or][stopping]";
		humiliate the lewdness of P;
		now P is spotted.

A time based rule (this is the monster spots poster rule):
	let P be a random spotted poster in the location of the player;
	if P is poster:
		repeat with M running through intelligent monsters in the location of the player:
			if M is not disapproving P:
				if the sleep of M is 0 and M is interested or the boredom of M > 30: [Essentially we don't want to do this check if the monster is just about to 'notice' the player.]
					say "The [M] spots the [if P is in the hotel]banner[otherwise]poster[end if] of you in this room!";
					if P is identifiable:
						IdentifiablePosterReaction of M;
					otherwise:
						UnidentifiablePosterReaction of M;
					now M is disapproving P.

To IdentifiablePosterReaction of (M - a monster):
	say "The [M] looks at you, blinks, then looks back to the poster.  [speech style of M]'Wait a second, is this YOU?!  Holy shit, [one of]you're a disgrace[or]you're disgusting[or]you're such a slut[or]what a slut[or]you're even more of a massive whore than I guessed[at random].'[roman type][line break]";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a monster):
	say "[speech style of M]'Heh, [one of]this bitch is a total disgrace, whoever she is[or]that's fucking disgusting, I'm glad I don't know this girl[or]I've never seen such a nasty sight in my life[or]what a slut[or]that's one fine booty[at random].'[roman type][line break]";
	say "You turn bright red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player.

To say PosterGenitals:
	if genitals visible of item described is 1 or asshole visible of item described is 1, say "Your [if genitals visible of item described is 1 and old-gender of item described is 0][PenisFlavour old-penislength of item described][otherwise if genitals visible of item described is 1][vagina][end if][if genitals visible of item described is 1 and asshole visible of item described is 1] and [end if][if asshole visible of item described is 1][asshole][end if] [if genitals visible of item described is 1 and asshole visible of item described is 1]are[otherwise]is[end if] fully visible.  ".

To say PosterCum of (P - a poster):
	if old-cumface of P > 0, say "Your face is [if old-cumface of P > 7]caked[otherwise if old-cumface of P > 3]covered[otherwise]splattered[end if] with [semen].";
	if old-cumbreasts of P > 0, say "Your breasts are [if old-cumbreasts of P > 7]caked[otherwise if old-cumbreasts of P > 3]covered[otherwise]splattered[end if] with [semen].";
	if old-cumbelly of P > 0, say "Your belly is [if old-cumbelly of P > 7]caked[otherwise if old-cumbelly of P > 3]covered[otherwise]splattered[end if] with [semen].";
	if old-cumthighs of P > 0, say "Your thighs are [if old-cumthighs of P > 7]caked[otherwise if old-cumthighs of P > 3]covered[otherwise]splattered[end if] with [semen].".

Chapter 1 Upskirt Poster

An upskirt poster is a kind of poster.  The description of an upskirt poster is "[UpskirtPosterDesc]".    An upskirt poster has a number called upskirt successful.
There are 10 upskirt posters.  An upskirt poster is usually unidentifiable.

To compute unique variables of (P - an upskirt poster):
	if the number of worn trousers is 0 and the number of worn skirted clothing > 0, now the upskirt successful of P is 1.

To compute title of (P - an upskirt poster):
	if the old-special of P is chastity cage and there is a lewdly exposed fuckhole:
		if P is in the hotel, now the title of P is "CHASTITY SLUT";
		otherwise now the title of P is "I only cum from my butthole!";
	otherwise if the old-knickers-mess of P > 0:
		if P is in the hotel, now the title of P is "PATHETIC POOPYPANTS";
		otherwise now the title of P is "This big baby is so pathetic that [if the player is male and the bimbo of the player < 8]he went number two in his[otherwise]she went number two in her[end if] own pants!";
	otherwise if the old-knickers-urine of P > 0:
		if diaper lover >= 0:
			if P is in the hotel, now the title of P is "CAN'T STAY DRY";
			otherwise now the title of P is "Shocking evidence that this little one can't even control its own bladder!";
		otherwise:
			if P is in the hotel, now the title of P is "NAUGHTY PISS SLUT";
			otherwise now the title of P is "Shocking evidence that this whore gets turned on by pissing herself.";
	otherwise if the old-knickers of P is diaper:
		if P is in the hotel, now the title of P is "DIAPERED CRYBABY";
		otherwise now the title of P is "A properly padded peepot.";
	otherwise if the old-overdress of P is royal attire:
		if P is in the hotel, now the title of P is "HER ROYAL SLUTNESS";
		otherwise now the title of P is "A royal slip-up!";
	otherwise if there is a lewdly exposed fuckhole:
		if P is in the hotel, now the title of P is "SHAME ON YOU";
		otherwise now the title of P is "Have you seen this butthole?";
	otherwise if the number of worn trousers is 0 and the number of worn skirted clothing > 0:
		if P is in the hotel, now the title of P is "UPSKIRT SLUT";
		otherwise now the title of P is "A beautiful upskirt.";
	otherwise if the old-father of P is a thing:
		if P is in the hotel, now the title of P is "BRED LIKE A BITCH";
		otherwise now the title of P is "Pregnant, but probably not proud.";
	otherwise:
		if P is in the hotel:
			if the flesh volume of hips > 6, now the title of P is "FAT ASSED WHORE";
			otherwise now the title of P is "PHAT ASSED WHORE";
		otherwise:
			now the title of P is "An arse to remember.".

To say UpskirtPosterDesc:
	say "An extremely detailed [if upskirt successful of item described is 1]upskirt [end if]photo of you from behind, on your hands and knees.  ";
	if old-father of item described is a thing and old-belly of item described > 3:
		say "You are visibly pregnant[if the pregnancy of the player is 0] with [PregGrowth of old-father of item described] inside your[otherwise]with a[end if] [if old-belly of item described > 5]giant[otherwise]large[end if] belly.";
	if old-skirt of item described is clothing or old-overdress of item described is skirted clothing, say "[if old-skirt of item described is clothing]Due to your compromising position, your [ShortDesc of old-skirt of item described] does nothing to protect your modesty.  [otherwise]You are wearing a [ShortDesc of old-overdress of item described].  However it does nothing to protect your modesty.  [end if]";
	if genitals visible of item described is 1 or asshole visible of item described is 1, say "Your [if genitals visible of item described is 1 and old-gender of item described is 0][PenisFlavour old-penislength of item described][otherwise if genitals visible of item described is 1][vagina][end if][if genitals visible of item described is 1 and asshole visible of item described is 1] and [end if][if asshole visible of item described is 1][asshole][end if] [if genitals visible of item described is 1 and asshole visible of item described is 1]are[otherwise]is[end if] fully visible.  ";
	if old-trousers of item described is clothing or old-knickers of item described is clothing:
		say "You are wearing a ";
		if old-trousers of item described is clothing:
			say "[ShortDesc of old-trousers of item described].  ";
		otherwise:
			say "[selfexamineuniquetitle of old-knickers of item described]";
			if the old-knickers-mess of item described > 0:
				say "that have an extremely visible bulge on the backdoor, showing that you messed yourself";
			otherwise if the old-knickers-semen of item described > 0:
				say "[if the old-knickers-semen of item described > the soak-limit of old-knickers of item described / 2] that is soaked in [semen][otherwise]that has evidence of drippings of [semen][end if]";
			otherwise if the old-knickers-urine of item described > 0:
				say "[if the old-knickers-urine of item described > the soak-limit of old-knickers of item described / 2] that is soaked in [urine][otherwise]that has evidence of drippings of [urine][end if]";
			otherwise if the old-knickers-water of item described > 0:
				say "[if the old-knickers-urine of item described > the soak-limit of old-knickers of item described / 2] that is soaked[otherwise]that is damp[end if]";
			say ".  ";
	if old-cumthighs of item described > 0, say "Your thighs are [if old-cumthighs of item described > 7]caked[otherwise if old-cumthighs of item described > 3]covered[otherwise]splattered[end if] with [semen].";
	say "It seems unlikely someone could recognize you just from this image.  [TitleDesc of item described]".

To say ShortDesc of (P - an upskirt poster):
	say "The photo shows you at a [if upskirt successful of P is 1]convenient upskirt[otherwise]compromising[end if] angle.  There is a perfect view of your [if asshole visible of P is 1]naughty bits[otherwise if upskirt successful of P is 1 and old-trousers of P is nothing and old-knickers of P is clothing][selfexamineuniquetitle of old-knickers of P][otherwise]butt[end if].".

To decide which number is the lewdness of (P - an upskirt poster):
	let N be 200;
	if upskirt successful of P is 1, increase N by 50;
	if asshole visible of P is 1, increase N by 50;
	if genitals visible of P is 1, increase N by 50;
	decide on N.

Chapter 2 Shameful Orgasm Poster

A shameful orgasm poster is a kind of poster.  The description of a shameful orgasm poster is "[ShamefulPosterDesc]".  A shameful orgasm poster has an object called old-stimulant.  A shameful orgasm poster has a number called old-sex-addiction.  A shameful orgasm poster has a number called old-latex-transformation.  There are 10 shameful orgasm posters.

To compute unique variables of (P - a shameful orgasm poster):
	now the old-sex-addiction of P is the sex addiction of the player;
	now the old-latex-transformation of P is the latex-transformation of the player;
	now the old-stimulant of P is a random thing penetrating asshole.

To compute title of (P - a shameful orgasm poster):
	if the old-latex-transformation of P >= 7:
		if P is in the hotel:
			if a random number between 1 and 2 is 1, now the title of P is "FUCKDOLL FEELS FABULOUS";
			otherwise now the title of P is "SEX DOLL LOVES IT";
		otherwise if the old-bimbo of P > 10:
			now the title of P is "Rubber fuckdoll loves her new purpose in life.";
		otherwise:
			now the title of P is "The latex sex doll enjoys itself a bit too much!";
	otherwise if old-stimulant of P is monster or diaper quest is 1:
		if the old-overdress of P is royal attire:
			if P is in the hotel:
				now the title of P is "FIT TO RULE?";
			otherwise if the old-bimbo of P > 10:
				now the title of P is "Prudish princess turned girl gone wild!";
			otherwise:
				now the title of P is "Royal princess caught in sex scandal!";
		otherwise if the old-overdress of P is leotard and old-gender of P is 0 and diaper quest is 0:
			if P is in the hotel:
				now the title of P is "SISSY SLUT";
			otherwise if the dexterity of the player > 15:
				now the title of P is "'Sissy ballerina shows just how flexible she can be!'";
			otherwise:
				now the title of P is "'This sissy ballerina is sure enjoying her morning stretches.'";
		otherwise if the old-overdress of P is maid outfit:
			if P is in the hotel:
				now the title of P is "SERVICE WITH A SMILE";
			otherwise if the sex addiction of the player > 10:
				now the title of P is "At Hotel Premier Sinn, your every demand is her desire!";
			otherwise:
				now the title of P is "Come along to Hotel Premier Sinn, where even the maids join in on the fun!";
		otherwise if the old-overdress of P is schoolgirl outfit:
			if P is in the hotel:
				now the title of P is "GOOD GIRL";
			otherwise if diaper lover <= 0:
				now the title of P is "This Detention Hall Doll just can't keep out of trouble!";
			otherwise:
				now the title of P is "Daddy's little girl is all grown up!";
		otherwise if the old-overdress of P is clubbing dress or the old-overdress of P is evening dress:
			if P is in the hotel, now the title of P is "PARTY GIRL";
			otherwise now the title of P is "After the club is the after party, and after the party is...";
		otherwise if the diaper quest is 1:
			if the old-knickers of P is not knickers:
				if P is in the hotel, now the title of P is "PUBLIC DISGRACE";
				otherwise now the title of P is "Be on the look-out for this disgusting pervert!  Punish her on sight!";
			if the old-knickers of P is diaper:
				if P is in the hotel, now the title of P is "I LOVE MY PADDING";
				otherwise now the title of P is "My thick padding feels sooo good I just can't help but cum in them again and again!";
			otherwise:
				if P is in the hotel, now the title of P is "I LOVE MY PANTIES";
				otherwise now the title of P is "Look at me doing grown-up things in my big girl panties!";
		otherwise if old-sex-addiction of P < 7:
			if P is in the hotel, now the title of P is "ANAL SLUT";
			otherwise now the title of P is "As much as she'd tell you she hates it right now, we know she'll be back for more.";
		otherwise if old-sex-addiction of P < 12:
			if P is in the hotel, now the title of P is "ANAL ADDICT";
			otherwise now the title of P is "The only way to beat this addiction is to feed it!";
		otherwise:
			if P is in the hotel, now the title of P is "FUCK ME HARDER!";
			otherwise now the title of P is "Slut Watch: If you see this girl, just say the word and she will happily let you fuck her ass.";
	otherwise:
		if old-sex-addiction of P < 7:
			if P is in the hotel, now the title of P is "BUTTHOLE BANDIT";
			otherwise now the title of P is "Her mind says no, but her body says yes.  She'll be addicted to anal in no time.";
		otherwise if old-sex-addiction of P < 12:
			if P is in the hotel, now the title of P is "ANAL TRAINING";
			otherwise now the title of P is "Learning to love anal, one day at a time.";
		otherwise:
			if P is in the hotel, now the title of P is "GAPE QUEEN";
			otherwise now the title of P is "A true anal addict!".

To say ShamefulPosterDesc:
	say "[ShortDesc of item described]";
	say "[PosterGenitals]";
	say "[if old-sex-addiction of item described < 6]Your face is twisted in a mixture of pleasure, pain, shame and despair[otherwise if old-sex-addiction of item described < 11]You face is contorted into an expression of guilty pleasure[otherwise]Your face is one of pure bliss and ecstasy[end if] [if old-stimulant of item described is male monster]as the [old-stimulant of item described] [one of]ruins[or]plows into[or]makes love to[at random] your [asshole][otherwise if old-stimulant of item described is a thing]as the [old-stimulant of item described] [one of]causes you to orgasm[or]forces you to climax[or]makes you cum from your [asshole][at random][otherwise][one of]you cum from your [asshole][or]your [asshole] causes you to orgasm[at random][end if].  ";
	if old-overdress of item described is clothing:
		compute SelfExamineDesc of old-overdress of item described;
	otherwise if old-bra of item described is clothing:
		let B be old-breasts of item described;
		let O be old-bra of item described;
		[say "You have [if B < 2]flat [otherwise if B < 16][CupDesc of B][otherwise]stupidly giant [end if] tits [ShortDesc of O].  ";]
	if old-skirt of item described is clothing, say "You are wearing a [ShortDesc of old-skirt of item described].  ";
	if old-trousers of item described is clothing, say "You are [if old-overdress of item described is clothing]also [end if]wearing a [ShortDesc of old-trousers of item described].  ";
	say "[PosterCum of item described]";
	say "It is very easy to recognize you from this image.  [TitleDesc of item described]".

To say ShortDesc of (P - a shameful orgasm poster):
	say "An extremely detailed photo of you from the front, shot from ground level.  You are [if old-stance of P is 0]standing with your knees slightly bent.  [otherwise]on your hands and knees.  [end if]You are in the throes of an orgasm[if old-stimulant of P is a thing] caused by the [old-stimulant of P][end if].  ".

To decide which number is the lewdness of (P - a shameful orgasm poster):
	let N be 200;
	if old-stimulant of P is monster, increase N by 100;
	decide on N.

Chapter 3 Masturbation Poster

A masturbation poster is a kind of poster.

A masturbation poster is a kind of poster.  The description of a masturbation poster is "[MasturbationPosterDesc]".  A masturbation poster has an object called old-stimulant.  A masturbation poster has a number called old-sex-addiction.  A masturbation poster has an object called old-monster.  There are 10 masturbation posters.

To compute title of (P - a masturbation poster):
	if old-monster of P is monster:
		if old-sex-addiction of P < 7:
			if P is in the hotel, now the title of P is "PUBLIC DISGRACE";
			otherwise now the title of P is "This one tries to claim she's not a slut, but enjoys an audience when wanking!  Someone's in denial.";
		otherwise if old-sex-addiction of P < 10:
			if P is in the hotel, now the title of P is "SHAMELESS";
			otherwise now the title of P is "She prefers when there's an audience.";
		otherwise:
			if P is in the hotel, now the title of P is "ATTENTION WHORE";
			otherwise now the title of P is "Look at the lengths this whore will go to get attention.";
	otherwise if diaper quest is 1:
		if the old-knickers of P is not knickers:
			if P is in the hotel, now the title of P is "PUBLIC DISGRACE";
			otherwise now the title of P is "Be on the look-out for this exhibitionist masturbating pervert!  Punish her on sight!";
		if the old-knickers-mess of P > 0:
			if P is in the hotel, now the title of P is "ULTIMATE DISGRACE";
			otherwise now the title of P is "Little one proves there are no limits to her depravity.";
		otherwise if the old-knickers-urine of P > 0:
			if P is in the hotel, now the title of P is "WILD WET WANKER";
			otherwise now the title of P is "She can't help herself - she just loves the way her soggy pants feel!";
		otherwise if the old-knickers of P is diaper:
			if P is in the hotel, now the title of P is "I LOVE MY PADDING";
			otherwise now the title of P is "My thick padding feels sooo good I just can't help but cum in them again and again!";
		otherwise:
			if P is in the hotel, now the title of P is "I LOVE MY PANTIES";
			otherwise now the title of P is "Look at me doing grown-up things in my big girl panties!";
	otherwise:
		if the old-overdress of P is royal attire:
			if P is in the hotel:
				now the title of P is "OUR ROYAL HORNDOG";
			otherwise if the humiliation of the player < 17500:
				now the title of P is "Princess caught polishing her pearl!";
			otherwise:
				now the title of P is "Apparently even royalty suffer from the basest of urges.";
		otherwise if the old-overdress of P is leotard and old-gender of P is 0:
			if P is in the hotel, now the title of P is "SISSY SLUT";
			otherwise now the title of P is "'This sissy is showing just how much she likes being dressed in a tutu.'";
		otherwise if the old-overdress of P is maid outfit:
			if P is in the hotel:
				now the title of P is "PUT HER IN CHASTITY";
			otherwise if there is an interested monster:
				now the title of P is "Serving herself before anyone else? How disgraceful!";
			otherwise:
				now the title of P is "This is why you should keep your maid locked in chastity.";
		otherwise if the old-overdress of P is schoolgirl outfit:
			if P is in the hotel, now the title of P is "BAD GIRL";
			otherwise now the title of P is "Only the naughtiest girls have a danger wank in public!";
		otherwise if the old-overdress of P is clubbing dress or the old-overdress of P is evening dress:
			if P is in the hotel:
				now the title of P is "NICE DANCE MOVES";
			otherwise if the bimbo of the player > 10:
				now the title of P is "Looks like this slut decided to have a party of her own!";
			otherwise:
				now the title of P is "I guess she didn't pull tonight.  Clearly, she needs to act even sluttier!";
		otherwise if old-sex-addiction of P < 7:
			if P is in the hotel, now the title of P is "NOT AS DISCREET AS YOU THOUGHT";
			otherwise now the title of P is "There are no prudes, only people who try and pretend they're not nymphomaniacs in private.";
		otherwise if old-sex-addiction of P < 10:
			if P is in the hotel, now the title of P is "SHAMELESS";
			otherwise now the title of P is "Giving into the urges.";
		otherwise:
			if P is in the hotel, now the title of P is "ORGASM ADDICT";
			otherwise now the title of P is "There are worse things to be addicted to.".

To compute unique variables of (P - a masturbation poster):
	now the old-sex-addiction of P is the sex addiction of the player;
	now the old-monster of P is a random intelligent monster in the location of the player.

To say MasturbationPosterDesc:
	say "[ShortDesc of item described]";
	say "[PosterGenitals]";
	say "[if old-sex-addiction of item described < 8]Your expression is one of nervous relief[otherwise if old-sex-addiction of item described < 11]You face is contorted into an expression of guilty pleasure[otherwise]Your face is one of pure bliss and ecstasy[end if].  ";
	if old-monster of item described is monster:
		say "The [old-monster of item described] is staring at you with a [if old-monster of item described is robot]never changing[otherwise if old-monster of item described is intelligent]disapproving[otherwise]questioning[end if] face.  ";
	if old-overdress of item described is clothing:
		say "You are wearing a [ShortDesc of old-overdress of item described].  ";
	otherwise if old-bra of item described is clothing:
		let B be old-breasts of item described;
		let O be old-bra of item described;
		[say "You have [if B < 2]flat [otherwise if B < 16][CupDesc of B][otherwise]stupidly giant [end if] tits [ShortDesc of O].  ";]
	if old-skirt of item described is clothing, say "You are wearing a [ShortDesc of old-skirt of item described].  ";
	if old-trousers of item described is clothing, say "You are [if old-overdress of item described is clothing]also [end if]wearing a [ShortDesc of old-trousers of item described].  ";
	say "[PosterCum of item described]";
	say "It is very easy to recognize you from this image.  [TitleDesc of item described]".

To say ShortDesc of (P - a masturbation poster):
	say "An extremely detailed photo of you from the front, shot from ground level.  You are [if old-stance of P is 0]standing straight.  [otherwise]on your hands and knees.  [end if][if old-stimulant of P is insertable thing]You are fucking yourself with your [old-stimulant of P].  [otherwise if old-stimulant of P is knickers]You are very visibly pleasuring yourself through your [selfexamineuniquetitle of old-knickers of P].  [otherwise if old-stimulant of P is clothing]You are very visibly pleasuring yourself through your clothing.  [otherwise]It is very clear that you are wanking.  [end if]".

To decide which number is the lewdness of (P - a masturbation poster):
	let N be 200;
	if old-stimulant of P is a thing, increase N by 100;
	decide on N.




Chapter 4 Wetting Poster

A wetting poster is a kind of poster.  The description of a wetting poster is "[WettingPosterDesc]".  A wetting poster has an object called urination-target.  A wetting poster has a number called old-humiliation.   A wetting poster has a number called old-peereaction.  A wetting poster has an object called old-monster.
There are 10 wetting posters.

To compute unique variables of (P - a wetting poster):
	now the old-humiliation of P is the humiliation of the player;
	let K be a random worn bottom level pee protection clothing;
	if K is clothing, now the urination-target of P is K;
	otherwise now the urination-target of P is the location of the player.

To compute title of (P - a wetting poster):
	if urination-target of P is diaper:
		if old-peereaction of P is 2:
			if the old-overdress of P is royal attire:
				if P is in the hotel, now the title of P is "PRINCESS POTTYPANTS";
				otherwise now the title of P is "A royal relief!";
			otherwise if the old-overdress of P is leotard and old-gender of P is 0:
				if P is in the hotel, now the title of P is "SISSY PEEPOT";
				otherwise now the title of P is "'I'm a little peepot, whimper and pout[line break]Here is my diapee I cry about[line break]When I get all fussy I wail and shout[line break]Check my diaper and change me out'";
			otherwise if the old-overdress of P is maid outfit:
				if P is in the hotel, now the title of P is "EMPLOYEE OF THE MONTH";
				otherwise now the title of P is "A hard working maid doesn't have time to take loo breaks!";
			otherwise if the old-overdress of P is schoolgirl outfit:
				if P is in the hotel, now the title of P is "TEACHER'S PET";
				otherwise now the title of P is "When conventional punishments didn't work, this is what the principal came up with.";
			otherwise if the old-overdress of P is clubbing dress or the old-overdress of P is evening dress:
				if P is in the hotel, now the title of P is "PARTYING WHILE PADDED?";
				otherwise now the title of P is "Are you sure you're mature enough for big girl parties, dear?";
			otherwise if the old-overdress of P is nightie:
				if P is in the hotel, now the title of P is "BIMBO BABYDOLL";
				otherwise now the title of P is "This is how you can tell it's bedtime.";
			otherwise if old-monster of P is monster:
				if old-humiliation of P < 31000:
					if P is in the hotel, now the title of P is "SNEAKY SLUT";
					otherwise now the title of P is "There's nothing quite like the risk of being caught in the act.";
				otherwise:
					if P is in the hotel, now the title of P is "ATTENTION WHORE DIAPER GIRL";
					otherwise now the title of P is "An attention starved diaper slut demands an audience.";
			otherwise if old-bimbo of P < 7:
				if P is in the hotel, now the title of P is "TOILET TRAINING?";
				otherwise now the title of P is "Getting used to her new life in nappies.";
			otherwise if old-bimbo of P < 12:
				if P is in the hotel, now the title of P is "I LOVE DIAPERS";
				otherwise now the title of P is "Learning to love her diapers, one day at a time.";
			otherwise:
				if P is in the hotel, now the title of P is "ORGASMIC NAPPY";
				otherwise now the title of P is "The diapered slut loses control.";
		otherwise:
			if P is in the hotel, now the title of P is "MESSY MISSY";
			otherwise now the title of P is "Uh-oh, someone needs an urgent change!";
	otherwise if old-peereaction is 3:
		if the old-overdress of P is royal attire:
			if P is in the hotel, now the title of P is "PRINCESS PUDDLEPANTS";
			otherwise now the title of P is "A royal mess!";
		otherwise if the old-overdress of P is maid outfit:
			if P is in the hotel, now the title of P is "YOU'RE FIRED!";
			otherwise now the title of P is "Why the maid was fired - she kept making messes of her own.";
		otherwise if the old-overdress of P is nightie:
			if P is in the hotel, now the title of P is "BEDWETTER";
			otherwise now the title of P is "This is why mommy wanted to put you in diapers, dearie.";
		otherwise if old-monster of P is monster:
			if old-humiliation of P < 27500:
				if P is in the hotel, now the title of P is "DISGRACEFUL";
				otherwise now the title of P is "A public disgrace.";
			otherwise:
				if P is in the hotel, now the title of P is "PISS SLUT";
				otherwise now the title of P is "A well trained piss slave.";
		otherwise if old-bimbo of P < 10:
			if P is in the hotel, now the title of P is "SOGGY FEELING?";
			otherwise now the title of P is "Not her proudest moment.";
		otherwise:
			if P is in the hotel, now the title of P is "PISS PERVERT";
			otherwise now the title of P is "Caught in the act!  What a pervert.";
	otherwise:
		if the old-overdress of P is royal attire:
			if P is in the hotel, now the title of P is "PRINCESS PUDDLES";
			otherwise now the title of P is "A royal mess!";
		otherwise if the old-overdress of P is maid outfit:
			if P is in the hotel, now the title of P is "YOU'RE FIRED!";
			otherwise now the title of P is "Why the maid was fired - she kept making messes of her own.";
		otherwise if old-monster of P is monster:
			if old-humiliation of P < 27500:
				if P is in the hotel, now the title of P is "DISGRACEFUL";
				otherwise now the title of P is "A public disgrace.";
			otherwise:
				if P is in the hotel, now the title of P is "PISS SLUT";
				otherwise now the title of P is "A well trained piss slave.";
		otherwise:
			if P is in the hotel, now the title of P is "CAUGHT IN THE ACT";
			otherwise now the title of P is "Use a toilet, you filthy slut!";

To say WettingPosterDesc:
	say "[ShortDesc of item described]";
	say "[PosterGenitals]";
	if old-peereaction of item described is 2:
		if old-monster of item described is monster, say "Your eyes are locked onto the [old-monster of item described], [if old-humiliation of item described < 20000]and your pale facial expression is one of pure terror that they might notice what you are doing[otherwise if old-humiliation of item described < 31000]your cheeks are red and you are biting your lip, clearly embarrassed that they might be aware of what you're doing[otherwise]and your mouth is open in an almost ecstatic grin, you are clearly in the middle of demanding their attention as you wet yourself[end if].  ";
		otherwise say "[if the old-special of item described is ballgag]It's difficult to understand your facial expression because of the [old-special of item described] in your mouth[otherwise if old-bimbo of item described < 7]You don't look very happy with yourself[otherwise if old-bimbo of item described < 12]You have a calm, relaxed facial expression, and seem at peace with your situation[otherwise]Your facial expression is contorted with pleasure, your tongue is hanging out and your eyes have rolled to the back of your head[end if].  ";
	otherwise if old-monster of item described is monster:
		say "[if old-humiliation of item described < 27500]Your entire face has gone beetroot red as you have allowed the [old-monster of item described] to see you [urinate][otherwise]Your eyes are pointed downwards in shame as you submissively make sure the [old-monster of item described] can very clearly see you [urinate][end if].  ";
	otherwise if old-peereaction of item described is 3:
		say "[if old-bimbo of item described > 9]You have a naughty, guilty grin on your face[otherwise]You have a disgusted look on your face[end if].  ";
	otherwise if urination-target of item described is a room:
		say "[if urination-target of item described is in the Woods or old-humiliation of item described >= 15000]Your facial expression seems to show that you don't really mind pissing on the floor.  [variable custom style]Um yeah, this was nothing compared to all the other stuff I've been through!  [roman type][otherwise]You are clearly very uncomfortable, paranoid that someone is going to come walking past and witness your shame.  [end if]";
	if old-overdress of item described is clothing, say "You are wearing a [ShortDesc of old-overdress of item described].  ";
	if old-trousers of item described is clothing, say "You are [if old-overdress of item described is clothing]also [end if]wearing a [ShortDesc of old-trousers of item described].  ";
	say "[PosterCum of item described]";
	say "It is very easy to recognize you just from this image.  [TitleDesc of item described]".

To say ShortDesc of (P - a wetting poster):
	say "An extremely detailed photo of you from the front, shot from ground level.  You are [if old-stance of P is 0]standing with your knees slightly bent.  [otherwise]on your hands and knees.  [end if][if urination-target of P is clothing]You are very visibly wetting yourself into your [urination-target of P].  [otherwise if urination-target of P is room]You are very visibly peeing onto the floor of the [urination-target of P].  [otherwise]You are very visibly peeing onto the ground.  [end if]";
	if image cutscenes is 1 and the title of P is "TEACHER'S PET" and the class of the player is schoolgirl, display figure of teachers pet cutscene 1.

To decide which number is the lewdness of (P - a wetting poster):
	let N be 200;
	if urination-target of P is clothing and urination-target of P is not diaper, increase N by 100;
	if old-monster of P is monster, increase N by 100;
	if asshole visible of P is 1, increase N by 50;
	if genitals visible of P is 1, increase N by 50;
	if old-cumface of P > 0 or old-cumbreasts of P > 0, increase N by 100;
	decide on N.

Chapter 5 Expulsion Poster

An expulsion poster is a kind of poster.  The description of an expulsion poster is "[ExpulsionPosterDesc]".
There are 10 expulsion posters.

An expulsion poster has a number called old-small-eggs.  An expulsion poster has a number called old-medium-eggs.  An expulsion poster has a number called old-large-eggs.  An expulsion poster has a number called old-milk-count.  An expulsion poster has a number called old-urine-count.  An expulsion poster has a number called old-semen-count.  An expulsion poster has a number called old-water-count.  An expulsion poster has an object called old-headgear.

To compute uniquest variables of (P - an expulsion poster): [This has a different name because it is called differently.]
	now the old-small-eggs of P is small-egg-count;
	now the old-medium-eggs of P is medium-egg-count;
	now the old-large-eggs of P is large-egg-count;
	now the old-milk-count of P is milk-count;
	now the old-urine-count of P is urine-count;
	now the old-semen-count of P is semen-count;
	now the old-water-count of P is water-count;
	now the old-headgear of P is a random worn headgear.

To compute title of (P - an expulsion poster):
	if old-small-eggs of P > 0 or old-medium-eggs of P > 0 or old-large-eggs of P > 0:
		if old-large-eggs of P > 0:
			if P is in the hotel, now the title of P is "BRED BY TENTACLES";
			otherwise now the title of P is "Whatever is inside that egg, you can be sure it's not of this world.";
		otherwise if the old-overdress of P is royal attire:
			if P is in the hotel, now the title of P is "QUEEN CHICKEN";
			otherwise now the title of P is "Royal princess caught laying mystery eggs!  Is she an alien?";
		otherwise if P is in the hotel:
			if old-bimbo of P < 7:
				now the title of P is "I LAY EGGS";
			otherwise if old-bimbo of P < 12:
				now the title of P is "I LOVE LAYING EGGS";
			otherwise:
				now the title of P is "EGG LAYING BIMBO";
		otherwise:
			now the title of P is "WANTED: Information on mystery slut. Why is she laying eggs in our hotel?!";
	otherwise:
		if the liquid types of P > 1:
			if P is in the hotel, now the title of P is "LIVING CUM COCKTAIL MACHINE?";
			otherwise now the title of P is "However that disgusting mess got inside her is probably a mystery best left unsolved.";
		otherwise if the old-urine-count of P > 0:
			if P is in the hotel, now the title of P is "HUMAN TOILET";
			otherwise now the title of P is "A girl really knows her place in the world after her asshole has been used as a urinal.";
		otherwise if the old-milk-count of P > 0:
			if old-headgear of P is royal circlet:
				if P is in the hotel, now the title of P is "ROYAL MILK ON TAP";
				otherwise now the title of P is "A rare image of a royal slave dutifully producing milk for her princess, and carrying it in her belly.";
			otherwise:
				if P is in the hotel, now the title of P is "MILK ON TAP";
				otherwise now the title of P is "What a waste of perfectly good milk!";
		otherwise if the old-semen-count of P is 0: [enema]
			if old-headgear of P is tiara:
				if P is in the hotel, now the title of P is "A ROYAL MESS";
				otherwise now the title of P is "It looks like the Princess couldn't make it to the royal potty in time!";
			otherwise if old-headgear of P is maid headdress:
				if P is in the hotel, now the title of P is "MODERN CLEANING TECHNIQUES";
				otherwise now the title of P is "You're supposed to clean messes, not make them yourself!";
			otherwise if old-headgear of P is pink scrunchie:
				if P is in the hotel:
					let R be a random number between 1 and 2;
					if R is 1, now the title of P is "CHEER FOR HER";
					if R is 2, now the title of P is "CHEERBAB'S FAMOUS ROUTINE";
				otherwise:
					let R be a random number between 1 and 2;
					if R is 1, now the title of P is "You need detention for such disgusting behaviour, young Miss!";
					if R is 2, now the title of P is "Schoolgirls should be put back into diapers until they can control their buttholes.";
			otherwise if old-headgear of P is blue scrunchie:
				if P is in the hotel:
					let R be a random number between 1 and 4;
					if R is 1, now the title of P is "HALL MONITOR NEEDED?";
					if R is 2, now the title of P is "SCHOOLGIRL STOMACH STRUGGLES";
					if R is 3, now the title of P is "STUDENT SPLASHES OUT";
					if R is 4, now the title of P is "LAZY LEARNER NEEDS NAPPIES";
				otherwise:
					let R be a random number between 1 and 4;
					if R is 1, now the title of P is "You need detention for such disgusting behaviour, young Miss!";
					if R is 2, now the title of P is "Someone deserves a spanking!";
					if R is 3, now the title of P is "If this schoolgirl can't find the toilet, maybe she should be put back into kindergarten!";
					if R is 4, now the title of P is "Schoolgirls should be put back into diapers until they can control their buttholes.";
			otherwise:
				if P is in the hotel:
					let R be a random number between 1 and 4;
					if R is 1, now the title of P is "ENE-MISHAP";
					if R is 2, now the title of P is "#JUSTBABYPROBLEMS";
					if R is 3, now the title of P is "TSUNAMI FROM HER TUMMY";
					if R is 4, now the title of P is "FOUNTAIN OF SHAME";
				otherwise:
					let R be a random number between 1 and 4;
					if R is 1, now the title of P is "Someone didn't make it to the toilet in time!";
					if R is 2, now the title of P is "Only a baby would make this kind of mess!";
					if R is 3, now the title of P is "An adult baby demonstrating how difficult it can be to find a potty in time.";
					if R is 4, now the title of P is "Dumb baby doesn't know what a toilet looks like!";
		if the old-overdress of P is royal attire:
			if P is in the hotel, now the title of P is "DISHONOURED ROYALTY";
			otherwise now the title of P is "Royal princess caught in sex scandal!";
		otherwise if the old-overdress of P is leotard and old-gender of P is 0:
			if P is in the hotel, now the title of P is "SISSY SLUT";
			otherwise now the title of P is "'This ballerina is learning what a true sissy's life is like.'";
		otherwise if the old-overdress of P is maid outfit:
			if P is in the hotel, now the title of P is "CLEAN THAT UP";
			otherwise now the title of P is "The aftermath of this maid's most recent disciplinary session.";
		otherwise if the old-overdress of P is schoolgirl outfit:
			if P is in the hotel, now the title of P is "TEACHER'S PET";
			otherwise now the title of P is "Being the teacher's pet has its ups and downs.";
		otherwise if the old-overdress of P is priestess outfit:
			if P is in the hotel, now the title of P is "HOLY COW!";
			otherwise now the title of P is "That's what she gets for leaving her post at the dungeon altar.";
		otherwise if the old-overdress of P is gang bang girl T-shirt:
			if P is in the hotel, now the title of P is "GANG BANG BITCH";
			otherwise now the title of P is "A very appropriate T-shirt.";
		otherwise if the old-overdress of P is fertility outfit:
			if P is in the hotel, now the title of P is "TAKING NATURE'S COURSE";
			otherwise now the title of P is "Even the divine can be caught in a moment of disgrace.";
		otherwise if the old-overdress of P is clubbing dress or the old-overdress of P is evening dress:
			if P is in the hotel, now the title of P is "100% SLUT";
			otherwise now the title of P is "Anal sex is the perfect birth control method for a one night stand.";
		otherwise if old-bimbo of P < 7:
			if P is in the hotel, now the title of P is "WE KNOW WHAT YOU DID";
			otherwise now the title of P is "Not how she expected to be spending her day.";
		otherwise if old-bimbo of P < 12:
			if P is in the hotel, now the title of P is "ANAL CREAMPIE ADDICT";
			otherwise now the title of P is "This is not the first nor the last time she had this happen today.";
		otherwise:
			if P is in the hotel, now the title of P is "ASSCUM CRAZED SLUT";
			otherwise now the title of P is "This whore is famous throughout the lands for being able to take huge amounts of cum in her belly.  It all comes out sooner or later, though.".

To say ExpulsionPosterDesc:
	say "[ShortDesc of item described]";
	say "[PosterGenitals]";
	if old-small-eggs of item described > 0 or old-medium-eggs of item described > 0 or old-large-eggs of item described > 0, say "[if old-large-eggs of item described > 0]The gigantic size of the egg leaving your [asshole] has caused your face to twist in a mixture of pleasure, pain, shame and despair[otherwise if old-bimbo of item described < 11]You face is contorted into an expression of guilty pleasure[otherwise]Your face is one of pure bliss and ecstasy[end if] as you push [if old-small-eggs of item described + old-medium-eggs of item described + old-large-eggs of item described > 1]them[otherwise]it[end if] out.  ";
	otherwise say "[if old-milk-count of item described + old-urine-count of item described + old-semen-count of item described > 6]A [one of]huge torrent[or]powerful cascade[or]heavy flow[at random][otherwise]A [one of]moderate flow[or]number of squirts[or]steady trickle[at random][end if] of [if the liquid types of item described > 1]multiple bodily fluids mixed together[otherwise if old-milk-count of item described > 0][milk][otherwise if old-urine-count of item described > 0][urine][otherwise if the old-semen-count of item described > 0][semen][otherwise]enema water[end if] travels from your [asshole] to the ground.  You have a very [if the old-bimbo of item described < 7][one of]distressed[or]upset[or]surprised[at random][otherwise if old-bimbo of item described < 12][one of]goofy[or]embarrassed[or]dreamy[sticky random][otherwise][one of]lewd[or]aroused[or]calm[sticky random][end if] expression on your face.  ";
	if old-overdress of item described is clothing:
		say "You are wearing a [ShortDesc of old-overdress of item described].";
	otherwise if old-bra of item described is clothing:
		let B be old-breasts of item described;
		let O be old-bra of item described;
		[say "You have [if B < 2]flat [otherwise if B < 16][CupDesc of B][otherwise]stupidly giant [end if] tits [ShortDesc of O].  ";]
	if old-skirt of item described is clothing, say "You are wearing a [ShortDesc of old-skirt of item described].  ";
	if old-trousers of item described is clothing, say "You are [if old-overdress of item described is clothing]also [end if]wearing a [ShortDesc of old-trousers of item described].  ";
	say "[PosterCum of item described]";
	say "It is very easy to recognize you from this image.  [TitleDesc of item described]".

To decide which number is the liquid types of (P - an expulsion poster):
	let N be 0;
	if old-milk-count of P > 0, increase N by 1;
	if old-semen-count of P > 0, increase N by 1;
	if old-urine-count of P > 0, increase N by 1;
	decide on N.

To say ShortDesc of (P - an expulsion poster):
	say "An extremely detailed photo of you from the front, shot from ground level.  You are [if old-stance of P is 0]standing with your knees slightly bent.  [otherwise]on your hands and knees.  [end if]You are in the middle of [if old-small-eggs of P > 0 or old-medium-eggs of P > 0 or old-large-eggs of P > 0]laying eggs[otherwise if diaper quest is 1]expelling an enema[otherwise]squirting bodily fluids[end if] from your [asshole].  ".

To decide which number is the lewdness of (P - an expulsion poster):
	let N be 300;
	if the liquid types of P > 1, increase N by 100;
	decide on N.



Camera Trap ends here.
