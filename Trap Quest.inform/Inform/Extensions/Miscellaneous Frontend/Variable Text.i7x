Variable Text by Miscellaneous Frontend begins here.


[!<SayVariableCustomStyle>+

REQUIRES COMMENTING

+!]
To say variable custom style:
	if a random number from 7 to 12 > the bimbo of the player, say first custom style;
	otherwise say second custom style.

[!<hypnoTrigger:String>*

This is the variable text that controls whether hypnosis is triggered

*!]

hypno-trigger is a text that varies.

[!<SayFeet>+

REQUIRES COMMENTING

+!]
To say feet:
	say "[if there are worn boots]boots[otherwise if there are worn heels]heels[otherwise if there are worn shoes]shoes[otherwise]feet[end if]".

[!<SayStud>+

REQUIRES COMMENTING

+!]
To say stud:
	if the player is a santa's little helper:
		say "Santa[one of] baby[or][or][purely at random]";
	otherwise:
		say "[one of]stud[or]handsome[or]stud[or]big boy[or][if diaper lover >= 1]daddy[otherwise]master[end if][as decreasingly likely outcomes]".

[!<SayBabe>+

REQUIRES COMMENTING

+!]
To say babe:
	say "[one of]babe[or]hottie[or]honey[or]sexy girl[as decreasingly likely outcomes]"

[!<SayWhore>+

REQUIRES COMMENTING

+!]
To say whore:
	say "[one of]whore[or]harlot[or]hussie[or]tart[as decreasingly likely outcomes]".

[!<SaySlut>+

REQUIRES COMMENTING

+!]
To say slut:
	say "[one of]slut[or]skank[or]slag[as decreasingly likely outcomes]".

[!<SayBitch>+

REQUIRES COMMENTING

+!]
To say bitch:
	if diaper quest is 1, say "[if the diaper addiction of the player < 8]meanie[otherwise if the diaper addiction of the player < 14]dumbo[otherwise]stupid-head[end if]";
	otherwise say "[one of]bitch[or]cunt[as decreasingly likely outcomes]".

[!<SayBeautiful>+

REQUIRES COMMENTING

+!]
To say beautiful:
	say "[one of]rockin['][or]stylingbitchin['][or]beautiful[or]amazing[or]fucking hot[or]fucking sexy[at random]".

[!<SayGenitals>+

REQUIRES COMMENTING

+!]
To say genitals:
	if the player is female, say vagina;
	if the player is male: 
		if the size of penis is 0:
			say ShortDesc of penis;
		otherwise if the size of penis > 5:
			say manly-penis;
		otherwise:
			say sissy-penis.

[!<SayPlayerCrotch>+

REQUIRES COMMENTING

+!]
To say player-crotch:
	if the player is male and the size of penis is 0, say "[asshole]";
	otherwise say "[if the player is female][vagina][otherwise if the size of penis > 5][manly-penis][otherwise][sissy-penis][end if] and [asshole]".

[!<SayFuckholes>+

REQUIRES COMMENTING

+!]
To say fuckholes:
	say "[if the player is female][vagina] and [end if][asshole]".

[!<SayLoad>+

REQUIRES COMMENTING

+!]
To say load:
	say "[if the size of penis < 5][one of]below average load[or]small load[or]thin load[purely at random][otherwise if the size of penis < 8][one of]hot load[or]thick load[or]average load[purely at random][otherwise][one of]massive load[or]big load[or]fat load[purely at random][end if]".

[!<SayVariableBodyPart>+

REQUIRES COMMENTING

+!]
To say variable (P - a body part):
	if P is asshole:
		say "[asshole]";
	otherwise if P is vagina:
		say "[vagina]";
	otherwise if P is face:
		say "mouth";
	otherwise:
		say "[P]".

[!<SayPlayerPenis>+

REQUIRES COMMENTING

+!]
To say player-penis:
	say "[if the size of penis < 5][sissy-penis][otherwise][manly-penis][end if]".

[!<SaySissyPenis>+

REQUIRES COMMENTING

+!]
To say sissy-penis:
	if the player is barbie:
		say "[one of]smooth groin[or]sexless mound[or]smooth stretch of skin[at random]"; [I avoided using doll-like here so we can further qualify this with "doll-like", elsewhere]
	otherwise:
		say "[one of]prick[or]willy[or]pecker[or]clitty[or]noodle[or]dickie[or]winky[or]weeny[as decreasingly likely outcomes]".

[!<SayManlyPenis>+

REQUIRES COMMENTING

+!]
To say manly-penis:
	if the player is a santa's little helper:
		say "candy cane";
	otherwise:
		say "[one of]cock[or]dick[cycling]".

[!<SayVagina>+

REQUIRES COMMENTING

+!]
To say vagina:
	if the raw intelligence of the player < 5 and diaper lover >= 1:
		say "[one of]pussy[or]cherry[or]kitty[or]no-no[or]muffin[as decreasingly likely outcomes]";
	otherwise if the bimbo of the player < 8 or diaper quest is 1:
		say "[one of]pussy[or]vagina[or]cherry[or]pussy[or]vagina[or]honey pot[as decreasingly likely outcomes]";
	otherwise if the bimbo of the player < 14:
		say "[one of]pussy[or]cunt[or]snatch[or]slit[as decreasingly likely outcomes]";
	otherwise:
		say "[one of]cunt[or]snatch[or]pussy[or]cunt[or]main cum dump[or][if pregnancy fetish is 1]baby maker[otherwise]main fuckhole[end if][or]pussy[or]clunge[as decreasingly likely outcomes]".

[!<SayAsshole>+

REQUIRES COMMENTING

+!]
To say asshole:
	if the player is male:
		if the raw intelligence of the player < 5 and diaper lover >= 1:
			say "[one of]bum[or]butt[or]no-no[or]muffin[as decreasingly likely outcomes]";
		otherwise if the bimbo of the player < 8 or diaper quest is 1:
			say "[one of]ass[or]anus[or]hole[or]backdoor[if diaper quest is 0] entrance[end if][or]rear [if diaper quest is 1]exit[otherwise]entrance[end if][as decreasingly likely outcomes]";
		otherwise if the bimbo of the player < 14:
			say "[one of]ass[or]asshole[or]fuckhole[or]boypussy[as decreasingly likely outcomes]";
		otherwise:
			say "[one of]ass[or]fuckhole[or]cum dump[or]boypussy[or]fanny[as decreasingly likely outcomes]";
	otherwise:
		if the raw intelligence of the player < 5 and diaper lover >= 1:
			say "[one of]bum[or]butt[or]bum bum[or]poo poo[as decreasingly likely outcomes]";
		otherwise if the bimbo of the player < 8:
			say "[one of]ass[or]anus[or]backdoor[if diaper quest is 0] entrance[end if][or]rear [if diaper quest is 1]exit[otherwise]entrance[end if][as decreasingly likely outcomes]";
		otherwise if the bimbo of the player < 14 or diaper quest is 1:
			say "[one of]ass[or]asshole[or]butthole[or]butt[as decreasingly likely outcomes]";
		otherwise:
			say "[one of]asshole[or]butthole[or]rear fuckhole[or]rear cum dump[as decreasingly likely outcomes]".

[!<SayButtcheeks>+

REQUIRES COMMENTING

+!]
To say buttcheeks:
	if the delicateness of the player < a random number between 2 and 6:
		say "[one of]backside[or]derriere[or]posteriors[or]hindquarters[as decreasingly likely outcomes]";
	otherwise if the delicateness of the player < 10:
		say "[one of]rear[or]butt cheeks[or]buttocks[or]behinds[as decreasingly likely outcomes]";
	otherwise if the delicateness of the player < 15 or diaper quest is 0:
		say "[one of]bottom[or]butt[or]bum[or]tush[or]hiney[as decreasingly likely outcomes]";
	otherwise:
		say "[one of]bum[or]bum-bum[or]tooshie[as decreasingly likely outcomes]".

[!<SaySemenAdjective>+

REQUIRES COMMENTING

+!]
To say semen-adjective:
	say "[if the semen taste addiction of the player < 3]appalling[otherwise if the semen taste addiction of the player < 5]disgusting[otherwise if the semen taste addiction of the player < 8	]unpleasant[otherwise if the semen taste addiction of the player < 10]strange[otherwise if the semen taste addiction of the player < 13]strangely pleasant[otherwise if the semen taste addiction of the player < 17][one of]delicious[or]tasty[at random][otherwise][one of]heavenly[or]yummy[at random][end if]".

[!<SaySemen>+

REQUIRES COMMENTING

+!]
To say semen:
	if the player is a santa's little helper:
		say "eggnog";
	otherwise if the semen addiction of the player < 7:
		say "[one of]semen[or]ejaculate[or]seed[or]cum[or]man cream[or]seminal fluid[as decreasingly likely outcomes]";
	otherwise if the semen addiction of the player < 13:
		say "[one of]cum[or]spunk[or]jizz[or]jism[or]spooge[or]semen[or]man cream[as decreasingly likely outcomes]";
	otherwise:
		say "[if a random number between the semen addiction of the player and 20 > 19][semen-adjective] [end if][one of]cum[or][if pregnancy fetish is 1]baby batter[otherwise]man juice[end if][or][if pregnancy fetish is 1]baby gravy[otherwise]man milk[end if][or]dick juice[or]happy batter[or]cock snot[as decreasingly likely outcomes]".

[!<SayTastedSemen>+

REQUIRES COMMENTING

+!]
To say tasted-semen:
	say "[semen-adjective] [semen]".

[!<SayUrine>+

REQUIRES COMMENTING

+!]
To say urine:
	if the player is a santa's little helper:
		say "hot buttered rum";
	otherwise if the raw intelligence of the player < 5 and diaper lover >= 1:
		say "[one of]pee pee[or]wee wee[or]wee[or]tinkle juice[as decreasingly likely outcomes]";
	otherwise if the bimbo of the player < 8:
		say "[one of]urine[or]piss[or]urine[or]pee[as decreasingly likely outcomes]";
	otherwise if the urine taste addiction of the player < 14:
		say "[one of]pee[or]piss[or]piss[or]wee[or]urine[as decreasingly likely outcomes]";
	otherwise:
		say "[one of][or]yummy [or]tasty [or][or]delicious [or][or]my favourite drink [as decreasingly likely outcomes]piss".

[!<SayUrinate>+

REQUIRES COMMENTING

+!]
To say urinate:
	say "[one of][if the bimbo of the player < 5]urinate[otherwise]wee[end if][or]pee[or]piss[purely at random]".

[!<SayMilk>+

REQUIRES COMMENTING

+!]
To say milk:
	if the player is a santa's little helper:
		say "brandy butter";
	otherwise:
		say "[if lactation fetish is 1 and a random number between 1 and the bimbo of the player > 8][one of]cow juice[or]udder milk[or]breast milk[at random][otherwise]milk[end if]".

[!<SayHeOfMonster>+

REQUIRES COMMENTING

+!]
To say he of (M - a monster):
	say "[if M is neuter]it[otherwise if M is female]she[otherwise]he[end if]".

[!<SayBigHeOfMonster>+

REQUIRES COMMENTING

+!]
To say big he of (M - a monster):
	say "[if M is neuter]It[otherwise if M is female]She[otherwise]He[end if]".

[!<SayHimOfMonster>+

REQUIRES COMMENTING

+!]
To say him of (M - a monster):
	say "[if M is neuter]it[otherwise if M is female]her[otherwise]him[end if]".

[!<SayHisOfMonster>+

REQUIRES COMMENTING

+!]
To say his of (M - a monster):
	say "[if M is neuter]its[otherwise if M is female]her[otherwise]his[end if]".

[!<SayBigHisOfMonster>+

REQUIRES COMMENTING

+!]
To say big his of (M - a monster):
	say "[if M is neuter]Its[otherwise if M is female]Her[otherwise]His[end if]".

[!<SayHimselfOfMonster>+

REQUIRES COMMENTING

+!]
To say himself of (M - a monster):
	say "[if M is neuter]itself[otherwise if M is female]herself[otherwise]himself[end if]".

[!<SayDaddyOfMonster>+

REQUIRES COMMENTING

+!]
To say daddy of (M - a monster):
	if the bimbo of the player > 18, say "[if M is female]Nana[otherwise]Papa[end if]";
	otherwise say "[if M is female]Mummy[otherwise]Daddy[end if]".

[!<SayHoneyOfMonster>+

REQUIRES COMMENTING

+!]
To say honey of (M - a monster):
	say "[one of]honey[or]dear[or]sunshine[or]darling[or]cutie[or]cupcake[or]sweetums[or]sweetheart[at random]".

[!<SayChildOfMonster>+

REQUIRES COMMENTING

+!]
To say child of (M - a monster):
	say "[one of]little one[or]child[or]young one[at random]".

[!<SayBabyTitleOfMonster>+

REQUIRES COMMENTING

+!]
To say baby title of (M - a monster):
	if the player is a princess:
		say "[one of]our little princess[or]princess pottypants[or]her royal padded highness[or]princess of the pampers[or]the royal waddler[or]her royal heinie[at random]";
	otherwise:
		say "[one of]my little trooper[or]our little bedwetter[or]little miss waddlebum[or]chubby-cheeks[or]little miss [if diaper lover >= 3]stinker[otherwise]pee-pee-pants[end if][or]Baby [NameBimbo][or][at random]".

[!<SayMuffledSounds>+

REQUIRES COMMENTING

+!]
To say muffled sounds:
	if the player is able to make sounds:
		if there is a thing penetrating face or the player is gagged:
			say "[gag sounds]";
		otherwise:
			say "[open mouth sounds]".

[!<SayOpenMouthSounds>+

REQUIRES COMMENTING

+!]
To say open mouth sounds:
	if there is a live thing penetrating a fuckhole:
		say "'[if the relevant sex addiction of the player < 8 or 5 - (the delicateness of the player / 4) < fuckhole pain][one of]EEEEH!!!'[or]OOOOOHH!!!'[or]UH-UH! UH-UH!'[or]AAAAAAGH!'[at random][otherwise if the relevant sex addiction of the player < 13][one of]Uuf!  Uuf! Uuf...'[or]Aaaah...'[or]Ah!'[or]Aaah?'[at random][otherwise][one of]Ooh.'[or]Oooooh...'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise if the player is in danger:
		say "'[if the sex addiction of the player < 8][one of]Uh-uh.'[or]Uh...'[or]Ah-uh.'[or]Uh!'[at random][otherwise if the sex addiction of the player < 13][one of]Uhhhhh...'[or]Aaaaah!'[at random][otherwise][one of]Oooh.'[or]Ah!'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise:
		say "'[one of]Ooh?'[or]Aah?'[or]Uh huh?'[at random]".

[!<SayGagSounds>+

REQUIRES COMMENTING

+!]
To say gag sounds:
	if there is a live thing penetrating face:
		say "'[one of]Hck hck hck hck...'[or]Ack ack ack ack!'[or]Nng...'[or]Nnk! Nnk nnk nnk...'[at random]";
	otherwise if there is a live thing penetrating a fuckhole:
		say "'[if the relevant sex addiction of the player < 8 or 5 - (the delicateness of the player / 4) < fuckhole pain][one of]MMMMMMPH!!!'[or]HHMMMNNNGGH!!!'[or]NNNG!  NNNG!  NNNNNNNNG!!!'[or]AAAAAAGHN!'[at random][otherwise if the relevant sex addiction of the player < 13][one of]Unf!  Unf! Unf...'[or]Mmmph...'[or]Gah!'[or]Aag.'[at random][otherwise][one of]Mmmm.'[or]Mmmmm!'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise if the player is in danger:
		say "'[if the relevant sex addiction of the player < 8][one of]Nn nn.'[or]Mm mm.'[or]Mmph.'[or]Ah ah!'[at random][otherwise if the relevant sex addiction of the player < 13][one of]Hmmmm...'[or]Mmmph...'[or]Mmm.'[or]Aag.'[at random][otherwise][one of]Mmmm.'[or]Mmmmm!'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise if diaper quest is 1 and there is a worn baby pacifier:
		say "'[one of]Ga-ga?'[or]Ahh hoo mah da-da?'[or]Ga-ga-ga!'[or]Baw-wa-ah-ah?'[at random]";
	otherwise:
		say "'[one of]Mmmmph?'[or]Mmmmm?'[or]Mmph Uck Nnn Mmm?'[at random]".

[!<SayEnema>+

REQUIRES COMMENTING

+!]
To say enema: [must be singular e.g. "creampie", not plural e.g. "creampies"]
	if the water volume of belly is the total squirtable fill of belly:
		say "enema";
	otherwise if the semen volume of belly is the total squirtable fill of belly:
		say "creampie";
	otherwise if the milk volume of belly is the total squirtable fill of belly:
		say "[milk] enema";
	otherwise if the urine volume of belly is the total squirtable fill of belly:
		say "[urine] enema";
	otherwise if the total egg fill of belly > 0:
		say "collection of eggs";
	otherwise:
		say "horrid mixture".

[!<SayCascade>+

REQUIRES COMMENTING

+!]
To say cascade:
	say "[one of]cascade[or]deluge[or]fountain[or]gush[at random]".

[!<SayFlow>+

REQUIRES COMMENTING

+!]
To say flow:
	say "[one of]flow[or]stream[as decreasingly likely outcomes]".
	

[!<SayGreatOne>+

In support of a hypnosis test, you can be indoctrinated by the cultists to react to them mentioning the Great Ones

+!]

To say great one:
	say "Great One";
	if player-hypno-great is 1:
		now hypno-trigger is "great one".

[!<SayTasty>+

Aika's first hypnosis test

+!]
To say tasty:
	say "tasty";
	now hypno-trigger is "tasty".

Variable Text ends here.
