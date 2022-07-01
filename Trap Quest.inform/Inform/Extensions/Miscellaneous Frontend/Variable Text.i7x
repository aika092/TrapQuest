Variable Text by Miscellaneous Frontend begins here.

To say variable custom style:
	if a random number from 7 to 12 > the bimbo of the player, say first custom style;
	otherwise say second custom style.

[!<hypnoTrigger:String>*

This is the variable text that controls whether hypnosis is triggered

*!]

hypno-trigger is a text that varies.

To say feet:
	say "[if there are worn boots]boots[otherwise if there are worn heels]heels[otherwise if there are worn shoes]shoes[otherwise]feet[end if]".

[!<SayStud>+

If the player is impressed with the (assumed male) NPC

+!]
To say stud:
	if the class of the player is santa's little helper:
		say "Santa[one of] baby[or][or][purely at random]";
	if the player is feeling dominant:
		say "[one of][if diaper quest is 1]handsome[otherwise]big boy[end if][or]honey[or]cutie[as decreasingly likely outcomes]";
	otherwise if the player is not feeling submissive:
		say "[if diaper lover >= 1]Sir[otherwise][one of]stud[or]handsome[or]stud[or]sailor[as decreasingly likely outcomes][end if]";
	otherwise:
		say "[if diaper lover >= 1 and the bimbo of the player > 12]daddy[otherwise][one of]Sir[or]Master[purely at random][end if]".

To say literalMistress of (M - a monster):
	if M is presenting as female, say "mistress";
	otherwise say "master".

To say big literalMistress of (M - a monster):
	if M is presenting as female, say "Mistress";
	otherwise say "Master".

[!<SayMistress>+

If the player is impressed with the (assumed female) NPC

+!]
To say mistress:
	if the class of the player is santa's little helper:
		say "Mrs. Santa";
	if the player is feeling dominant:
		say "[one of]honey[or]cutie[or]beautiful[or]doll[as decreasingly likely outcomes]";
	otherwise if the player is not feeling submissive:
		say "[one of]Ma'am[or]Missus[or]Madame[as decreasingly likely outcomes]";
	otherwise:
		say "[if diaper lover >= 1 and the bimbo of the player > 12]Mommy[otherwise][one of]Mistress[or]my goddess[or]your worship[as decreasingly likely outcomes][end if]".

[!<SayStud>+

If the player is impressed with the NPC (unknown gender)

+!]
To say stud of (M - a person):
	if M is presenting as female, say mistress;
	otherwise say stud.

[!<SayWormOfMonster>+

If the player looks down on the NPC

+!]
To say worm of (M - a monster):
	if the class of the player is santa's little helper:
		say "little elf";
	otherwise:
		say "[one of]little[or]pathetic[or]weak little[as decreasingly likely outcomes] [one of]bitch[if M is male and M is human] boy[end if][or]shit[or]worm[or][if M is male and M is human]shrimp-dick[otherwise]shit[end if][or]fucktoy[as decreasingly likely outcomes]".

[!<SayWormOfMonster>+

To decide whether the player looks down on this NPC

+!]
To say stud-worm of (M - a monster):
	if M is unimpressive and M is unintimidating and the player is feeling dominant, say worm of M;
	otherwise say stud of M.

Definition: a monster is unintimidating rather than intimidating:
	if the difficulty of it < the strength of the player / 2, decide yes;
	decide no. [Does the monster look too scary to insult?]

Definition: a monster (called M) is impressive rather than unimpressive: [Does the monster look like a good lay?]
	if M is dark skinned and interracial fetish is 1, decide yes;
	if the girth of M > 10 - highest body part sex addiction, decide yes; [The more the player loves dick, the smaller dick they are satisfied by]
	decide no.

To say babe:
	say "[one of]babe[or]hottie[or]honey[or]sexy girl[as decreasingly likely outcomes]"

To say whore:
	say "[one of]whore[or]harlot[or]hussie[or]tart[as decreasingly likely outcomes]".

To say slut:
	say "[one of]slut[or]skank[or]slag[as decreasingly likely outcomes]".

To say sissy:
	if the player is gendered male, say "sissy";
	otherwise say "[if diaper quest is 0]slutty[otherwise]girly[end if]".

To say sissy slut:
	if the player is gendered male:
		say "sissy[one of][if diaper quest is 0] slut[end if][or][as decreasingly likely outcomes]";
	otherwise if diaper quest is 1:
		say "babygirl";
	otherwise:
		say slut.

To say bitch:
	if diaper quest is 1, say "[if the diaper addiction of the player < 8]meanie[otherwise if the diaper addiction of the player < 14]dumbo[otherwise]stupid-head[end if]";
	otherwise say "[one of]bitch[or][cunt][as decreasingly likely outcomes]".

[!<SayFucker>+

Something the player says to NPCs they're unhappy with

+!]
To say fucker of (M - a monster):
	if M is female or a random number between 1 and 2 <= lady fetish, say "[one of]bitch[or]idiot[as decreasingly likely outcomes]";
	otherwise say "[one of]asshole[or]motherfucker[or]jackass[or]bastard[or]fucker[as decreasingly likely outcomes]".

To say beautiful:
	say "[one of]rockin['][or]stylingbitchin['][or]beautiful[or]amazing[or]fucking hot[or]fucking sexy[at random]".

[!<SayGenitals>+

Whatever is the player's current sex organ (i.e. no including asshole)

+!]
To say genitals:
	if the player is herm:
		say "[player-penis] and [vagina]";
	otherwise if the player is possessing a vagina:
		say vagina;
	otherwise:
		if the player is not possessing a penis:
			say ShortDesc of penis;
		otherwise if the size of penis > 5:
			say manly-penis;
		otherwise:
			say sissy-penis.

To say real-genitals:
	if the player is possessing a vagina, say vagina;
	if the player is possessing a penis:
		if the real size of penis > 5:
			say manly-penis;
		otherwise:
			say sissy-penis.

To say player-crotch:
	if the player is barbie, say "[asshole]";
	otherwise say "[if the player is possessing a vagina][vagina][otherwise if the size of penis > 5][manly-penis][otherwise if the player is possessing a penis][sissy-penis][end if] and [asshole]".

To say fuckholes:
	say "[if the player is possessing a vagina][vagina] and [end if][asshole]".

To say load:
	say load of the player.

To say load of (M - a thing):
	let A be the semen load of M;
	say "[if A < 3][one of]tiny[or]watery[or]small[purely at random] load[otherwise if A < 6][one of]hot[or]warm[or]average[at random] load[otherwise if A < 9][one of]thick[or]creamy[or]big[or]fat[purely at random] load[otherwise if A < 11][one of]huge[or]massive[or]ultra thick[purely at random] load[otherwise][one of]inhuman[or]insane[or]ridiculous[purely at random] load[end if]".

To say variable (P - a body part):
	if P is asshole:
		say "[asshole]";
	otherwise if P is vagina:
		say "[vagina]";
	otherwise if P is face:
		say "mouth";
	otherwise:
		say "[ShortDesc of P]".

To say variable (L - a liquid-object):
	if L is semen:
		say semen;
	otherwise if L is urine:
		say urine;
	otherwise if L is milk:
		say milk;
	otherwise if L is murkwater:
		say "murky liquid";
	otherwise:
		say "[L]".

[
    Selkie thinks that:

    - 'manly-penis' is just for referring to a dick in general.
    - (so player-manly-penis is now provided for the player's 'manly penis')
    - sissy-penis is intended for downplaying the player's penis
    - vagina is intended for the player's vagina
    - player-penis is intended for adaptively referring to player-penis
    - hence Selkie has changed player-penis to now use the new
      player-manly-penis instead of the previous manly-penis.
    - plain-sissy-penis is for bare sissy penis terms, player or monster
    - DickDesc of monster now uses appropriate terms when it's sissy-ish
]
To say player-penis:
	say "[if the size of penis < 5][sissy-penis][otherwise][player-manly-penis][end if]".

To say plain-sissy-penis:
	say "[one of]prick[or]willy[or]pecker[or]clitty[or]noodle[or]dickie[or]winky[or]weeny[as decreasingly likely outcomes]".

To say sissy-penis:
	say LatexFlav with " "; [#LXorDD]
	if the player is barbie:
		say "[one of]smooth groin[or]sexless mound[or]smooth stretch of skin[at random]"; [I avoided using doll-like here so we can further qualify this with "doll-like", elsewhere]
	otherwise if the class of the player is santa's little helper:
		say "little candy cane";
	otherwise:
		say plain-sissy-penis.

To say manly-penis:
	if the class of the player is santa's little helper:
		say "candy cane";
	otherwise:
		say "[one of]cock[or]dick[cycling]".

To say player-manly-penis:
	say LatexFlav with " "; [#LXorDD]
	say manly-penis.

To say vagina:
	say LatexFlav with " "; [#LXorDD]
	if the raw intelligence of the player < 5 and diaper lover >= 1:
		say "[one of]pussy[or]cherry[or]kitty[or]no-no[or]muffin[as decreasingly likely outcomes]";
	otherwise if the bimbo of the player < 8 or diaper quest is 1:
		say "[one of]pussy[or]vagina[or]cherry[or]pussy[or]vagina[or]honey pot[as decreasingly likely outcomes]";
	otherwise if the bimbo of the player < 14:
		say "[one of]pussy[or]cunt[or]snatch[or]slit[as decreasingly likely outcomes]";
	otherwise:
		say "[one of]cunt[or]snatch[or]pussy[or]cunt[or]main cum dump[or][if pregnancy fetish is 1]baby maker[otherwise]main fuckhole[end if][or]pussy[or]clunge[as decreasingly likely outcomes]".

To say asshole: [#LXorDD: I don't add the LatexFlav here because it might be a little repetitive, and also because you could only see the sheen by looking in a mirror.]
	if the player is sexed male:
		if the raw intelligence of the player < 5 and diaper lover >= 1:
			say "[one of]bum[or]butt[or]no-no[or]muffin[as decreasingly likely outcomes]";
		otherwise if the bimbo of the player < 8 or diaper quest is 1:
			say "[one of]ass[or]anus[or]hole[or]rosebud[or]backdoor[if diaper quest is 0] entrance[end if][or]rear [if diaper quest is 1]exit[otherwise]entrance[end if][as decreasingly likely outcomes]";
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

To say buttcheeks:
	if the delicateness of the player < a random number between 2 and 6:
		say "[one of]backside[or]derriere[or]posteriors[or]hindquarters[as decreasingly likely outcomes]";
	otherwise if the delicateness of the player < 10:
		say "[one of]rear[or]butt cheeks[or]buttocks[or]behinds[as decreasingly likely outcomes]";
	otherwise if the delicateness of the player < 15 or diaper quest is 0:
		say "[one of]bottom[or]butt[or]bum[or]tush[or]hiney[as decreasingly likely outcomes]";
	otherwise:
		say "[one of]bum[or]bum-bum[or]tooshie[as decreasingly likely outcomes]".

To say semen-adjective:
	if the semen addiction of the player + 3 <= the semen taste addiction of the player and the semen addiction of the player - 3 >= the semen taste addiction of the player, say "[if the semen taste addiction of the player < 3]appalling[otherwise if the semen taste addiction of the player < 5]disgusting[otherwise if the semen taste addiction of the player < 8]unpleasant[otherwise if the semen taste addiction of the player < 10]strange[otherwise if the semen taste addiction of the player < 13]strangely pleasant[otherwise if the semen taste addiction of the player < 17][one of]delicious[or]tasty[at random][otherwise][one of]heavenly[or]yummy[at random][end if]"; [if the semen addictions are too far apart this may not make sense]
	otherwise say "salty".

To say semen:
	if the class of the player is santa's little helper:
		say "eggnog";
	otherwise if the semen addiction of the player < 7:
		say "[one of]semen[or]ejaculate[or]seed[or]cum[or]man cream[or]seminal fluid[as decreasingly likely outcomes]";
	otherwise if the semen addiction of the player < 13:
		say "[one of]cum[or]spunk[or]jizz[or]jism[or]spooge[or]semen[or]man cream[as decreasingly likely outcomes]";
	otherwise:
		say "[if a random number between the semen addiction of the player and 20 > 19][semen-adjective] [end if][one of]cum[or][if pregnancy fetish is 1]baby batter[otherwise]man juice[end if][or][if pregnancy fetish is 1]baby gravy[otherwise]man milk[end if][or]dick juice[or]happy batter[or]cock snot[as decreasingly likely outcomes]".

To say tasted-semen:
	say "[semen-adjective] [semen]".

To say urine:
	if the class of the player is santa's little helper:
		say "hot buttered rum";
	otherwise if the raw intelligence of the player < 5 and diaper lover >= 1:
		say "[one of]pee pee[or]wee wee[or]wee[or]tinkle juice[as decreasingly likely outcomes]";
	otherwise if the bimbo of the player < 8:
		say "[one of]urine[or]piss[or]urine[or]pee[as decreasingly likely outcomes]";
	otherwise if the urine taste addiction of the player < 14:
		say "[one of]pee[or]piss[or]piss[or]wee[or]urine[as decreasingly likely outcomes]";
	otherwise:
		say "piss".

To say urinate:
	say "[one of][if the bimbo of the player < 5]urinate[otherwise]wee[end if][or]pee[or]piss[purely at random]".

To say harden:
	say "[one of]harden[or]stiffen[or]grow[at random]".

To say milk:
	if the class of the player is santa's little helper:
		say "brandy butter";
	otherwise:
		say "[if a random number between 10 and 20 < the milk taste addiction of the player][one of]tasty[or]yummy[purely at random] [end if][if diaper lover >= 1][one of]milk[or]breast milk[or]momma's milk[or]boob juice[as decreasingly likely outcomes][otherwise if lactation fetish is 1 and a random number between 1 and the bimbo of the player > 8][one of]cow juice[or]udder milk[or]breast milk[at random][otherwise]milk[end if]".

To say smarter:
	say "[if the intelligence of the player < 6][one of]smarterer[or]better at thinking and stuff[as decreasingly likely outcomes][otherwise][one of]smarter[or]more brainy[as decreasingly likely outcomes][end if]".

To decide which text is man of (M - a thing):
	decide on "[if M is live]being[otherwise]thing[end if]".

To decide which text is man of (M - a person):
	decide on "[if M is neuter]being[otherwise if M is presenting as female]woman[otherwise]man[end if]".

To decide which text is big man of (M - a thing):
	decide on man of M in title case.

To decide which text is caps man of (M - a thing):
	decide on man of M in upper case.

To decide which text is men of (M - a thing):
	decide on "[if M is live]beings[otherwise]things[end if]".

To decide which text is men of (M - a person):
	decide on "[if M is neuter]beings[otherwise if M is presenting as female]women[otherwise]men[end if]".

To decide which text is big men of (M - a thing):
	decide on men of M in title case.

To decide which text is caps men of (M - a thing):
	decide on men of M in upper case.

[Used to refer to npcs, not the player]
To decide which text is sissy-girl:
	decide on "[if lady fetish is 2]sissy[otherwise]girl[end if]".

To decide which text is sissy-girls:
	decide on "[if lady fetish is 2]sissies[otherwise]girls[end if]".

To decide which text is boy of (M - a thing):
	decide on man of M.

To decide which text is boy of (M - a person):
	decide on "[if M is neuter]youngling[otherwise if M is presenting as female]girl[otherwise]boy[end if]".

To decide which text is big boy of (M - a thing):
	decide on boy of M in title case.

To decide which text is caps boy of (M - a thing):
	decide on boy of M in upper case.

To decide which text is he of (M - a thing):
	decide on "[if M is live]they[otherwise]it[end if]".

To decide which text is he of (M - a person):
	decide on "[if M is neuter]it[otherwise if M is presenting as female]she[otherwise]he[end if]".

To decide which text is big he of (M - a thing):
	decide on he of M in title case.

To decide which text is caps he of (M - a thing):
	decide on he of M in upper case.

To decide which text is him of (M - a thing):
	decide on "[if M is live]them[otherwise]it[end if]".

To decide which text is him of (M - a person):
	decide on "[if M is neuter]it[otherwise if M is presenting as female]her[otherwise]him[end if]".

To decide which text is big him of (M - a thing):
	decide on him of M in title case.

To decide which text is caps him of (M - a thing):
	decide on him of M in upper case.

To decide which text is his of (M - a thing):
	decide on "[if M is live]their[otherwise]its[end if]".

To decide which text is his of (M - a person):
	decide on "[if M is neuter]its[otherwise if M is presenting as female]her[otherwise]his[end if]".

To decide which text is big his of (M - a thing):
	decide on his of M in title case.

To decide which text is caps his of (M - a thing):
	decide on his of M in upper case.

To decide which text is hers of (M - a thing):
	decide on "[if M is live]theirs[otherwise]its[end if]".

To decide which text is hers of (M - a person):
	decide on "[if M is neuter]its[otherwise if M is presenting as female]hers[otherwise]his[end if]".

To decide which text is big hers of (M - a thing):
	decide on hers of M in title case.

To decide which text is caps hers of (M - a thing):
	decide on hers of M in upper case.

To decide which text is himself of (M - a thing):
	decide on "[if M is live]themselves[otherwise]itself[end if]".

To decide which text is himself of (M - yourself):
	decide on "[if M is presenting as female]herself[otherwise]himself[end if]".

To decide which text is himself of (M - a person):
	decide on "[if M is neuter]itself[otherwise if M is presenting as female]herself[otherwise]himself[end if]".

To decide which text is big himself of (M - a thing):
	decide on himself of M in title case.

To decide which text is caps himself of (M - a thing):
	decide on himself of M in upper case.

To decide which text is fathertext of (M - a thing):
	decide on "parent".

To decide which text is fathertext of (M - yourself):
	decide on "[if M is presenting as female]mother[otherwise]father[end if]".

To decide which text is fathertext of (M - a person):
	decide on "[if M is neuter]parent[otherwise if M is presenting as female]mother[otherwise]father[end if]".

To decide which text is big fathertext of (M - a thing):
	decide on fathertext of M in title case.

To decide which text is caps fathertext of (M - a thing):
	decide on fathertext of M in upper case.

To decide which text is brother of (M - a thing):
	decide on "sibling".

To decide which text is brother of (M - a person):
	decide on "[if M is neuter]sibling[otherwise if M is presenting as female]sister[otherwise]brother[end if]".

To decide which text is big brother of (M - a thing):
	decide on brother of M in title case.

To decide which text is caps brother of (M - a thing):
	decide on brother of M in upper case.

To decide which text is son of (M - a thing):
	decide on "child".

To decide which text is son of (M - a person):
	decide on "[if M is neuter]child[otherwise if M is presenting as female]daughter[otherwise]son[end if]".

To decide which text is big son of (M - a thing):
	decide on son of M in title case.

To decide which text is caps son of (M - a thing):
	decide on son of M in upper case.

[!<SayDickDescOfMonster>+

General purpose method of referring to a monster, "M"'s penis

+!]
To say DickDesc of (M - a monster):
	if full-lady fetish is 1:
		say "strap-on";
	otherwise if M is fairy:
		say "[one of]miniature[or]minuscule[or]mini[at random]";
	otherwise if lady fetish is 2:
		say plain-sissy-penis;
	otherwise:
		say manly-penis.

[!<SayLongDickDescOfMonster>+

Specific method of referring to a monster "M"'s penis. Should only be used every once in a while.

+!]
To say LongDickDesc of (M - a monster):
	if full-lady fetish is 1:
		say "strap-on dildo";
	otherwise if M is fairy:
		say "tiny, locked-away penis";
	otherwise: [There's no 'if lady fetish is 2' case here since full-lady fetish is 1 means that lady fetish is 1 and futanari fetish is 0.]
		say "hard [manly-penis]".

To say HoleDesc of (M - a monster):
	if M is presenting as male, say "asshole";
	otherwise say "pussy".

To say ChestDesc of (M - a monster):
	if M is presenting as male, say "chest";
	otherwise say "breasts".

To say cockhead of (M - a monster):
	say "[one of]cockhead[or]tip[or]bellend[or]dicktip[in random order]".

To say daddy of (M - a monster):
	if the class of the player is santa's little helper and M is male:
		say "Santa";
	otherwise if the bimbo of the player > 18:
		say "[if M is presenting as male]Papa[otherwise]Mama[end if]";
	otherwise:
		say "[if M is presenting as male]Daddy[otherwise]Mummy[end if]".

To say daddytitle of (M - a monster):
	if M is presenting as male:
		say "Daddy";
	otherwise:
		say "Mommy".

To say caps daddytitle of (M - a monster):
	if M is presenting as male:
		say "DADDY";
	otherwise:
		say "MOMMY".

To say royal-subject of (M - a monster):
	if M is bride-consort:
		say "consort";
	otherwise if M is patron:
		say "peasant";
	otherwise:
		say "subject".

To say big royal-subject of (M - a monster):
	if M is bride-consort:
		say "Consort";
	otherwise if M is patron:
		say "Peasant";
	otherwise:
		say "Subject".

To say caps royal-subject of (M - a monster):
	if M is bride-consort:
		say "CONSORT";
	otherwise if M is patron:
		say "PEASANT";
	otherwise:
		say "SUBJECT".

To say honey of (M - a person):
	if the class of the player is santa's little helper:
		say "snowflake";
	otherwise:
		say "[one of]honey[or]dear[or]sunshine[or]darling[or]cutie[or]cupcake[or]sweetums[or]sweetheart[or]snowflake[at random]".

To say child of (M - a monster):
	if the class of the player is santa's little helper:
		say "little elf";
	otherwise:
		say "[one of]little one[or]child[or]young one[at random]".

To say baby title of (M - a monster):
	if the class of the player is santa's little helper:
		say "[one of]our little padded prancer[or]the little baby elf[at random]";
	otherwise if the class of the player is princess:
		say "[one of]our little princess[or]princess pottypants[or]her royal padded highness[or]princess of the pampers[or]the royal waddler[or]her royal heinie[at random]";
	otherwise:
		say "[one of]my little trooper[or]our little bedwetter[or]little miss waddlebum[or]chubby-cheeks[or]little miss [if diaper messing >= 3]stinker[otherwise]pee-pee-pants[end if][or]Baby [NameBimbo][or][at random]".

To say brotha of (M - a person):
	if interracial fetish is 1:
		if M is presenting as male, say "brotha";
		otherwise say "sista";
	otherwise:
		if M is presenting as male, say "dude";
		otherwise say "bitch".

To say big brotha of (M - a person):
	if interracial fetish is 1:
		if M is presenting as male, say "Brotha";
		otherwise say "Sista";
	otherwise:
		if M is presenting as male, say "Dude";
		otherwise say "Bitch".

To say slut school:
	say "[if diaper quest is 1]Attitude[otherwise]Slut[end if] Academy".

To say muffled sounds:
	if the player is able to make sounds:
		if there is a thing penetrating face or the player is gagged:
			say gag sounds;
		otherwise:
			say open mouth sounds.

To say open mouth sounds:
	if there is a live thing penetrating a fuckhole:
		say "'[if the relevant sex addiction of the player < 8 or 5 - (the delicateness of the player / 4) < fuckhole pain][one of]EEEEH!!!'[or]OOOOOHH!!!'[or]UH-UH! UH-UH!'[or]AAAAAAGH!'[at random][otherwise if the relevant sex addiction of the player < 13][one of]Uuf! Uuf! Uuf...'[or]Aaaah...'[or]Ah!'[or]Aaah?'[at random][otherwise][one of]Ooh.'[or]Oooooh...'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise if the player is in danger:
		say "'[if the sex addiction of the player < 8][one of]Uh-uh.'[or]Uh...'[or]Ah-uh.'[or]Uh!'[at random][otherwise if the sex addiction of the player < 13][one of]Uhhhhh...'[or]Aaaaah!'[at random][otherwise][one of]Oooh.'[or]Ah!'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise:
		say "'[one of]Ooh?'[or]Aah?'[or]Uh huh?'[at random]".

To say gag sounds:
	if there is a live thing penetrating face:
		say "'[one of]Hck hck hck hck...'[or]Ack ack ack ack!'[or]Nng...'[or]Nnk! Nnk nnk nnk...'[at random]";
	otherwise if the player is not able to make sounds:
		say "";
	otherwise if there is a live thing penetrating a fuckhole:
		say "'[if the relevant sex addiction of the player < 8 or 5 - (the delicateness of the player / 4) < fuckhole pain][one of]MMMMMMPH!!!'[or]HHMMMNNNGGH!!!'[or]NNNG! NNNG! NNNNNNNNG!!!'[or]AAAAAAGHN!'[at random][otherwise if the relevant sex addiction of the player < 13][one of]Unf! Unf! Unf...'[or]Mmmph...'[or]Gah!'[or]Aag.'[at random][otherwise][one of]Mmmm.'[or]Mmmmm!'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise if the player is in danger:
		say "'[if the relevant sex addiction of the player < 8][one of]Nn nn.'[or]Mm mm.'[or]Mmph.'[or]Ah ah!'[at random][otherwise if the relevant sex addiction of the player < 13][one of]Hmmmm...'[or]Mmmph...'[or]Mmm.'[or]Aag.'[at random][otherwise][one of]Mmmm.'[or]Mmmmm!'[or]Ah...'[or]Ooooh!'[or]Eeee!'[at random][end if]";
	otherwise if diaper quest is 1 and there is a worn baby pacifier:
		say "'[one of]Ga-ga?'[or]Ahh hoo mah da-da?'[or]Ga-ga-ga!'[or]Baw-wa-ah-ah?'[at random]";
	otherwise:
		say "'[one of]Mmmmph?'[or]Mmmmm?'[or]Mmph Uck Nnn Mmm?'[at random]".

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
		if egg laying fetish is 1, say "collection of eggs";
		otherwise say "anal ping pong balls";
	otherwise:
		say "horrid mixture".

To say liquidMix:
	if lactation fetish is 1 and watersports fetish is 1:
		say "some horrid grey liquid";
	otherwise if watersports fetish is 1:
		say "some horrid yellowish liquid";
	otherwise if lactation fetish is 1:
		say "some horrid white liquid that looks a lot like it might be a mixture of [milk] and [semen]";
	otherwise:
		say "thick white [semen]".

To say cascade:
	say "[one of]cascade[or]deluge[or]fountain[or]gush[at random]".

To say flow:
	say "[one of]flow[or]stream[as decreasingly likely outcomes]".

To say horror:
	say "[horror the bimbo of the player]".

To say horror (N - a number):
	increase N by a random number between 1 and -1;
	say "[if N < 3]horror[otherwise if N < 5]shock[otherwise if N < 7]concern[otherwise if N < 9]confusion[otherwise if N < 12]mild surprise[otherwise]awe[end if]".

To say joy:
	say "[joy the bimbo of the player]".

To say joy (N - a number):
	increase N by a random number between 1 and -1;
	say "[if N < 3]anger[otherwise if N < 5]frustration[otherwise if N < 7]annoyance[otherwise if N < 9]mixed emotions[otherwise if N < 12]a nervous thrill[otherwise if N < 15]joy[otherwise]glee[end if]".

[!<BlushingPrettily>+

A humiliation reaction: expands to something grammatically equivalent to "blushing prettily".

+!]
To say BlushingPrettily:
	say "[if the humiliation of the player < HUMILIATION-PROUD][one of]growling angrily[or]grinding your teeth[or]growling under your breath[at random][otherwise if the humiliation of the player < HUMILIATION-MODEST][one of]fighting off a feeling of shame[or]feeling your cheeks warm[or]pursing your lips[or]blinking rapidly and looking away[or]swallowing in shame[or]cringing at how you must look[at random][otherwise][one of]feeling your cheeks flush[or]blushing prettily[or]feeling your face flush bright pink[at random][end if]".

[!<BlushPrettily>+

A humiliation reaction: expands to something grammatically equivalent to "blush prettily".

+!]
To say BlushPrettily:
	say "[if the humiliation of the player < HUMILIATION-PROUD][one of]growl inwardly[or]grind your teeth[or]harrumph under your breath[or]wince with shame[or]grimace with shame[at random][otherwise if the humiliation of the player < HUMILIATION-MODEST][one of]fight off a feeling of shame[or]feel your cheeks warm[or]purse your lips[or]blink rapidly and look away[or]swallow in shame[or]cringe at how you must look[at random][otherwise][one of]feel your cheeks flush[or]blush prettily[or]feel your face flush bright pink[at random][end if]".

[!<BlushN>+

A humiliation reaction: expands to something grammatically equivalent to "blush". In this one, we know the exact amount of humiliation being dealt out and can assign text accordingly.

+!]
To say blush (N - a number):
	now N is N / (1 + (the humiliation of the player / 8000));
	if debugmode > 0, say "[input-style](scaled humiliation [N]) [roman type]";
	say "[if the player is proud and N < 25][one of]growl angrily[or]grind your teeth[or]growl under your breath[at random][otherwise if the player is not disgraced and N < 25][one of]fight off a feeling of shame[or]feel your cheeks warm[or]purse your lips[or]blink rapidly and look away[or]swallow in shame[or]cringe at how you must look[at random][otherwise if N < 25 and the player is shameless][one of]smile wickedly[or]cheekily bite your lip[or]shiver with excitement[or]shyly lick your lips[at random][otherwise if N < 25][one of]smile shyly[or]lower your eyes[or]mewl bashfully[or]feel your cheeks flush[or]feel yourself getting warmer[at random][otherwise if N < 50 and the player is shameless][one of]smile nervously[or]shyly bite your lip[or]shiver with arousal[at random][otherwise if N < 50][one of]turn a deep shade of red[or]blush deeply[or]whimper with shame[or]shiver with embarrassment[at random][otherwise][one of]hang your head in shame[or]grimace with self-disgust[or]clench your fists with self-loathing[or]shake your head in self-judgement[at random][end if]";
	humiliate N.

[!<HumiliateReflectN>+

A humiliation reaction: expands to a full sentence grammatically equivalent to "You blush.". In this one, we know the exact amount of humiliation being dealt out and can assign text accordingly.

+!]
To say HumiliateReflect (N - a number):
	say "You [blush N].".

[!<SayGreatOne>+

In support of a hypnosis test, you can be indoctrinated by the cultists to react to them mentioning the Great Ones

+!]
To say great one:
	say "Great One";
	if player-hypno-great is 1:
		now hypno-trigger is "great one".

To say caps great one:
	say "GREAT ONE";
	if player-hypno-great is 1:
		now hypno-trigger is "great one".

To say great ones:
	say "Great Ones";
	if player-hypno-great is 1:
		now hypno-trigger is "great one".

To say caps great ones:
	say "GREAT ONES";
	if player-hypno-great is 1:
		now hypno-trigger is "great one".

[!<SayTasty>+

Aika's first hypnosis test

+!]
To say tasty:
	say "tasty";
	now hypno-trigger is "tasty".

To say big tasty:
	say "Tasty";
	now hypno-trigger is "tasty".

To say caps tasty:
	say "TASTY";
	now hypno-trigger is "tasty".

[!<SayMaturity>+

Aika's first DQ hypnosis test

+!]
To say maturity:
	say "maturity";
	now hypno-trigger is "maturity".

To say big maturity:
	say "Maturity";
	now hypno-trigger is "maturity".

To say caps maturity:
	say "MATURITY";
	now hypno-trigger is "maturity".

To say pussy:
	say "pussy";
	now hypno-trigger is "pussy".

To say big pussy:
	say "Pussy";
	now hypno-trigger is "pussy".

To say caps pussy:
	say "PUSSY";
	now hypno-trigger is "pussy".

To say cunt:
	say "cunt";
	now hypno-trigger is "cunt".

To say big cunt:
	say "Cunt";
	now hypno-trigger is "cunt".

To say caps cunt:
	say "CUNT";
	now hypno-trigger is "cunt".

To say please:
	say "please";
	now hypno-trigger is "please".

To say big please:
	say "Please";
	now hypno-trigger is "please".

To say caps please:
	say "PLEASE";
	now hypno-trigger is "please".

Variable Text ends here.
