All Piercings by Piercings Modules begins here.

A piercing is a kind of clothing. A piercing is usually unique. A piercing is usually metal. A piercing is manly.

Definition: a piercing is removable: decide no. [Some clothing can never be removed, even by monsters.]
Definition: a piercing is magic-enhanceable: decide no.
Definition: a piercing is destructible: decide no.
The transform-resistance of a piercing is usually 1.

Check taking off piercing:
	say "That's permanently welded into your skin!" instead. [We don't use the removability rules so that we can define custom phrases]

To decide which number is the heaviness of (C - a piercing):
	decide on 0.

Definition: a piercing is eligible:
	if it is off-stage and it is fetish appropriate, decide yes;
	decide no.

To say PiercingFlav of (P - a piercing):
	say "An arm comes down with a searing hot needle! You scream as your flesh is burned and pierced. The needle is quickly moved and a [P] is pushed into place. The connection somehow welds itself shut, meaning that the piercing is permanent!".

Definition: a piercing is too boring: decide no.
Definition: a piercing is disintegration-protected: decide yes.

Check wearing piercing:
	if the noun is not worn and debugmode > 0:
		say "You use the ancient powers of Aika to connect piercing to your body.";
		summon noun cursed instead;
	otherwise:
		say "You're already wearing it, that's permanently welded into your skin!" instead.

Check taking off piercing:
	say "You can't take that off, it's permanently pierced into your skin!" instead.

A module is a kind of piercing. A module has a number called module-charge. Understand "module" as a module.

Definition: a module is eligible: decide no.
Definition: a module is fetish appropriate:
	if artificial enhancements fetish is 1, decide yes;
	decide no.
Definition: a module is discovered varied: decide no.
To uniquely set up (M - a module):
	now M is blessed.

To say ModuleFlav of (M - a module):
	say "".
To say ShortDesc of (M - a module):
	say "module".

Figure of module 1 is the file "Items/Accessories/Piercings/module1.png".
Figure of module 2 is the file "Items/Accessories/Piercings/module2.png".
Figure of module 3 is the file "Items/Accessories/Piercings/module3.png".
Figure of module 4 is the file "Items/Accessories/Piercings/module4.png".
Figure of module 5 is the file "Items/Accessories/Piercings/module5.png".

ass-module is a module. The printed name of ass-module is "[clothing-title-before]ass module[clothing-title-after]". The text-shortcut of ass-module is "asm". Understand "ass module" as ass-module.

ass-module has a number called dex-transfer. The dex-transfer of ass-module is 0.

To decide which figure-name is the clothing-image of (C - ass-module):
	decide on figure of module 3.

To decide which number is the dexterity-influence of (C - ass-module):
	let D be the dex-transfer of C + 3;
	decide on D.

To say ModuleFlav of (M - ass-module):
	say "An arm snakes out with a strange silvery triangle on one end. It carefully places it on your skin just above your ass, and you feel a brief twinge of pain as wires push their way into your skin. When the arm pulls away the triangle is left behind.[line break][second custom style]'Thank you for participating in the Silicone Reflex Support module trial! [big please] listen carefully to the following instructions. You will find that your agility has improved and will continue to grow in-line with the silicone implants in your buttocks. Nanobots will draw power from your body and store it safely inside the silicone gel. The Health and Safety Department reminds all testers that removal of installed modules will result in severe nerve disruption and therefore the permanent loss of all stored power. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".

To say ClothingDesc of (C - ass-module):
	say "A triangle of silvery metal is pressed into your skin just above your ass. You recall the dire warning you were given - [if the dex-transfer of C > 0]removing with it would cause irreparable damage to your agility[otherwise]once it has started to store more power inside your buttocks, removing the module would cause you to lose all that power permanently[end if].".
To say ShortDesc of (C - ass-module):
	say "ass module".

To compute periodic effect of (P - ass-module):
	increase the module-charge of P by 1;
	if the module-charge of P > 48:
		now the module-charge of P is 0;
		if the raw dexterity of the player > 1:
			if the thickness of hips < max ass size:
				say "[bold type]Your ass suddenly feels terribly warm, and some of the nanobots in it spring to life. It suddenly swells up in size! You feel some [one of][or]more [stopping]of your athletic power transferred into the nanobots for safekeeping.[roman type][line break]";
				AssImplantsUp 1;
				DexDown 1;
				increase the dex-transfer of P by 1;
			otherwise if the thickness of hips > 1 and the player is getting unlucky:
				decrease the thickness of hips by 1;
				say "[bold type]Your ass suddenly feels terribly warm, and some of the nanobots in it spring to life. You feel some of your flesh being converted into ass implants! More of your athletic power must have been transferred to the nanobots, too...[roman type][line break]";
				AssImplantsUp 1;
				DexDown 1;
				increase the dex-transfer of P by 1;
				say GotUnluckyFlav;

[!<TheAssModuleButtSlutRule>+

Increases the chances of anal sex.

+!]
This is the ass module butt slut rule:
	if ass-module is worn, increase the desirability of asshole by the dex-transfer of ass-module.
The ass module butt slut rule is listed in the butt slut eligibility rules.

breast-module is a module. The printed name of breast-module is "[clothing-title-before]breast module[clothing-title-after]". The text-shortcut of breast-module is "brm". Understand "breast module" as breast-module.

To decide which figure-name is the clothing-image of (C - breast-module):
	decide on figure of module 2.

breast-module has a number called str-transfer. The str-transfer of breast-module is 0.

To decide which number is the strength-influence of (C - breast-module):
	let D be the str-transfer of C + 3;
	decide on D.

To say ModuleFlav of (M - breast-module):
	say "An arm snakes out with a strange silvery triangle on one end. It carefully places it on your skin just above your cleavage, and you feel a brief twinge of pain as wires push their way into your skin. When the arm pulls away the triangle is left behind.[line break][second custom style]'Thank you for participating in the Silicone Strength Support module trial! [big please] listen carefully to the following instructions. You will find that your agility has improved and will continue to grow in-line with the silicone implants in your breasts. Nanobots will draw power from your body and store it safely inside the silicone gel. The Health and Safety Department reminds all testers that removal of installed modules will result in severe nerve disruption and therefore the permanent loss of all stored power. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".

[!<TheBreastModuleSlutRule>+

A breast module increases the chance of titfucks.

+!]
This is the breast module slut rule:
	if breast-module is worn, increase the desirability of breasts by the str-transfer of breast-module.
The breast module slut rule is listed in the tit slut eligibility rules.

To say ClothingDesc of (C - breast-module):
	say "A triangle of silvery metal is pressed into your skin just above your cleavage. You recall the dire warning you were given - [if the str-transfer of C > 0]removing with it would cause irreparable damage to your strength[otherwise]once it has started to store more power inside your breasts, removing the module would cause you to lose all that power permanently[end if].".

To say ShortDesc of (C - breast-module):
	say "breast module".

To compute periodic effect of (P - breast-module):
	increase the module-charge of P by 1;
	if the module-charge of P > 48:
		now the module-charge of P is 0;
		if the raw strength of the player > 1:
			if the player is not top heavy:
				say "[bold type]Your breasts suddenly feel terribly warm and they swell up in size! You feel some [one of][or]more [stopping]of your muscular power transferred into the nanobots for safekeeping.[roman type][line break]";
				BustImplantsUp 1;
				StrengthDown 1;
				increase the str-transfer of P by 1;
			otherwise if the flesh volume of breasts > 1 and the player is getting unlucky:
				decrease the flesh volume of breasts by 1;
				say "[bold type]Your breasts suddenly feel terribly warm, and some of the nanobots in it spring to life. Some of your flesh has been converted into breast implants! More of your muscle power must have been transferred to the nanobots, too...[roman type][line break]";
				BustImplantsUp 1;
				StrengthDown 1;
				increase the str-transfer of P by 1;
				say GotUnluckyFlav.



sissy-staple is a module. The printed name of sissy-staple is "[clothing-title-before]sissy staple[clothing-title-after]". The text-shortcut of sissy-staple is "sstp". Understand "sissy staple" as sissy-staple.

Definition: sissy-staple is fetish appropriate:
	if the player is possessing a penis, decide yes;
	decide no.

To decide which figure-name is the clothing-image of (C - sissy-staple):
	decide on figure of module 5.

To decide which number is the anal sensitivity influence of (C - sissy-staple):
	decide on 3.

To say ModuleFlav of (M - sissy-staple):
	say "An arm snakes out with a lewd probe on the end. Its head bulges and drools cool lubricant profusely from a winking sphincter at the end. The probe draws circles around your exposed [asshole], the cool sensation of the lube sending shivers through your body. The probe then surges forward, penetrating you to the hilt. To your surprise, it doesn't begin to fuck you, instead you feel a stroking sensation tease your prostate! Just as you start to get excited, you hear a mechanical whine from the probe followed by a sharp stinging pain inside of your [asshole]. The probe retracts from your hungry [asshole] with a lewd *plop*. [line break][second custom style]'Thank you for participating in the Sissy Staple module trial! [big please] listen carefully to the following instructions. You will find that your libido and desire for anal stimulation has improved and will continue to grow in line with your newly enhanced prostate. The AI in your new implant will be monitoring your behaviour as a sissy, and will be providing corrective adjustments should you spend extended lengths of time uncaged or unplugged. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".


To say ClothingDesc of (C - sissy-staple):
	say "Every now and then you can feel your prostate swelling as the tiny module releases yet another strong dose of aphrodisiacs and transformatives... You recall that the module will continue to dump large cocktails of drugs into your quivering prostate. If you're plugged and caged like a perfect sissy, the transformatives may help you on your quest. If not... They'll just help turn you into a weak, limp-dicked, submissive sissy slut. The only visual evidence is a futuristic looking implant above your [genitals].".

To say ShortDesc of (C - sissy-staple):
	say "sissy staple".

To compute periodic effect of (P - sissy-staple):
	if the player is possessing a penis:
		if there is worn ass plugging clothing:
			decrease the module-charge of P by 1;
		otherwise:
			increase the module-charge of P by 2;
		if there is a worn chastity bond:
			decrease the module-charge of P by 1;
		otherwise:
			increase the module-charge of P by 2;
		if the module-charge of P > 100: [you're not plugged and caged]
			now the module-charge of P is 0;
			say "You feel a sharp pain inside, followed by radiating warmth as your [asshole] tingles. The [ShortDesc of P] has dumped yet another load of [if the bimbo of the player < 10]drugs[otherwise][second custom style]yummy sissy juice[roman type][end if] right into your prostate. You feel your [sissy-penis] start to actively dribble precum as your prostate kicks into overdrive. Something about this process is too much for your poor [sissy-penis], [if the size of penis > min penis size]and you can see it visibly shrink[otherwise]and you can see it just twitch and leak. The [ShortDesc of P] coats your [asshole] with lubricant, encouraging you to go find a [manly-penis] to fuck. You coo softly[end if] as you sink deep into submissive fantasies.[roman type][line break]";
			say "[second custom style][one of]GOOD SISSIES HAVE TINY CLITTIES[line break]GOOD SISSIES STAY LOCKED AWAY[or]HEAD DOWN ASS UP[line break]THAT'S HOW SISSIES LIKE TO FUCK[or]KEEP ME LOCKED AWAY[line break]CUM IN MY MOUTH[or]I'M A PATHETIC SUBMISSIVE SLUT[line break]I NEED AN ALPHA'S FAT DICK IN MY ASSHOLE TO CUM[or]MY TINY WILLY IS USELESS[line break]I WAS BORN TO SERVE SUPERIOR COCKS[or]THE ONLY THING BETTER THAN A COCK[line break]IS TWO COCKS INSIDE OF ME[or]CHASTITY CAGES KEEP ME FROM HAVING NAUGHTY ERECTIONS[line break]MY USELESS SISSY CUMMIES SHOULD STAY INSIDE MY TINY BALLS[in random order][roman type][line break]";
			if the size of penis > min penis size:
				PenisDown 1;
				SilentlyDelicateUp 1;
			otherwise:
				let L be a random lubricant;
				now L is covering the asshole;
				now the timer of L is a random number between 300 and 600;
			if the player is getting unlucky:
				say "You feel your [ShortDesc of P] release another drug that makes your hips swell and your [asshole] pucker for deep breeding from [manly-penis].";
				HipUp 1;
				AnalSexAddictUp 1;
				say GotUnluckyFlav;
			passively stimulate asshole from P times 5;
		if the module-charge of P < -100: [you have been plugged and caged]
			now the module-charge of P is 0;
			say "You feel a sharp pain inside, followed by radiating warmth as your [asshole] tingles. The [ShortDesc of P] has dumped yet another load of [if the bimbo of the player < 10]drugs[otherwise][second custom style]yummy sissy juice[roman type][end if] right into your prostate. You feel your [sissy-penis] start to actively dribble precum as your prostate kicks into overdrive. Something about this process is too much for your poor [sissy-penis], and you can see it twitch and leak. The [ShortDesc of P] coats your [asshole] with lubricant, encouraging you to go find a [manly-penis] to fuck. [if the number of worn rigid actually nipple covering clothing is 0 and the player is able to use manual dexterity]You pinch your nipples as you sink deep into submissive fantasies.[end if][roman type][line break]";
			say "[second custom style][one of]GOOD SISSIES HAVE TINY CLITTIES[line break]GOOD SISSIES STAY LOCKED AWAY[or]HEAD DOWN ASS UP[line break]THAT'S HOW SISSIES LIKE TO FUCK[or]KEEP ME LOCKED AWAY[line break]CUM IN MY MOUTH[or]I'M A PATHETIC SUBMISSIVE SLUT[line break]I NEED AN ALPHA'S FAT DICK IN MY ASSHOLE TO CUM[or]MY TINY WILLY IS USELESS[line break]I WAS BORN TO SERVE SUPERIOR COCKS[or]THE ONLY THING BETTER THAN A COCK[line break]IS TWO COCKS INSIDE OF ME[or]CHASTITY CAGES KEEP ME FROM HAVING NAUGHTY ERECTIONS[line break]MY USELESS SISSY CUMMIES SHOULD STAY INSIDE MY TINY BALLS[in random order][roman type][line break]";
			SilentlyDelicateUp 1;
			if a random number between 1 and 3 > 1 and the openness of asshole > a random number between 2 and 6:
				say "You feel the [ShortDesc of P] tighten your [asshole] so you can better squeeze [second custom style][semen][roman type] from fat [manly-penis]![roman type][line break]";
				AssClose 1;
			otherwise:
				say "You feel the [ShortDesc of P] is slowly training your mind and body to be a better fuckdoll. You feel more flexible, but also more submissive![roman type][line break]";
				DexUp 1;
			let L be a random lubricant;
			now L is covering asshole;
			now the timer of L is a random number between 300 and 600;
			passively stimulate asshole from P times 1.



clitoris lead is a piercing. The printed name of clitoris lead is "[TQlink of item described][item style][if the bimbo of the player > 10]clit[otherwise]clitoris[end if] lead[clothing-title-after]". The text-shortcut of clitoris lead is "cl". Understand "clit" as clitoris lead. Figure of clitoris lead is the file "Items/Accessories/Piercings/clitlead1.png".

To decide which figure-name is the clothing-image of (C - a clitoris lead):
	decide on figure of clitoris lead.

To say ClothingDesc of (C - clitoris lead):
	say "A short metal chain attached to your clitoris hood piercing. [if the player is clit stuck]The [random monster covering C] is holding onto it, threatening to pull it roughly, which is preventing you from fighting back.[otherwise if the player is prone]It barely touches the ground as you crawl. [otherwise if the concealer of C is nothing]It dangles between your legs awkwardly, the bottom end hanging just below your knees. [end if][if the player is not clit stuck]Any enemy that got a hold of this would be able to subdue you easily.[end if]".

To say ShortDesc of (C - clitoris lead):
	say "clitoris lead".

To decide which number is the vaginal sensitivity influence of (C - clitoris lead):
	if C is cursed, decide on 3;
	if C is blessed, decide on -2;
	decide on 1.

To decide which number is the delicateness-influence of (C - clitoris lead):
	decide on 1.

To decide which number is the initial outrage of (C - clitoris lead):
	if there is a currently visible clitoris piercing, decide on 20;
	decide on 3. [It's not actually all that lewd if they can't see what it's attached to.]

To say PiercingFlav of (P - clitoris lead):
	say "An arm comes down with a short piece of chain! You whimper meekly, expecting the piercing needle to join it. However, instead the chain is simply brought down to your clitoris, and one end of it is connected to your clit piercing. The two have combined into a single piece of metal that looks somehow welded together! You now have what is essentially a short leash permanently connected to your clit.[line break][variable custom style]If someone gets hold of this, there'd be no way I could fight back, it would be way too painful! [if the player is not a nympho]How concerning... how am I supposed to fight back now?[otherwise]I guess it's lucky that getting fucked is so fun, then![end if][roman type][line break]";
	cutshow figure of modmachine cutscene 1 for modification machine.

To decide which object is the concealer of (C - clitoris lead):
	repeat with O running through bottom-layer-concealing potentially vagina covering clothing:
		unless O is skirted, decide on O;
	decide on nothing.

To decide which object is the at least partial concealer of (C - clitoris lead):
	if C is listed in the armUses of arms, decide on arms;
	repeat with O running through bottom-layer-concealing potentially at least partially vagina covering clothing:
		unless O is skirted, decide on O;
	decide on nothing.

Definition: clitoris lead (called C) is subduing:[Can C be held by monsters to fully control the player?]
	if the at least partial concealer of C is a thing, decide no;
	decide yes.

Definition: yourself is clit stuck:
	repeat with M running through monsters covering clitoris lead:
		if M is not in the location of the player, now M is not covering clitoris lead;
		otherwise decide yes;
	decide no.

To say SubduedGrabFlav of (C - clitoris lead):
	say "[variable custom style][if the delicateness of the player < 8]Fuck, fuck, fuck, get off!!![otherwise if the delicateness of the player < 14]Eek that's way too sensitive! I can't move a muscle![otherwise]Oopsie, caught again![end if][roman type][line break]".

Check taking off clitoris lead:
	say "That's permanently welded onto your clitoris piercing!";
	if the player is not able to use their hands:
		say "...Besides, it's hardly like you can even get at it now with your hands.";
	otherwise if the noun is not blessed and the player is able to automatically masturbate:
		say "...But [one of]your tugging on[or]your fumbling with[or]your attempts to dislodge[at random] it makes your sensitive [one of]clit[or]nub[or]bud[or]button[as decreasingly likely outcomes] [one of]stiffen under your fingers[or]send sparks of pleasure up your belly[or]sends an illicit thrill through you[or]feel [italic type]so good[roman type][at random]. [one of]You shiver, eyes rolling up and tongue roving over your [LipDesc] as your hand creeps further down...[or]Your nipples harden, a sigh falls through your lips, and your hand creeps further down...[or]Your hand creeps further down, and your fingers find your moistening flower...[or][line break][variable custom style]I can't help it![roman type][line break][stopping]";
		now auto is 1;
		try masturbating;
		now auto is 0;
	do nothing instead.

Section 1 Wearability

Definition: clitoris lead (called P) is eligible:
	if the player is not possessing a vagina or clitoris lead is worn or the player is pussy protected, decide no;
	if clitoris piercing is worn, decide yes;
	decide no.

clitoris piercing is a kind of piercing.

normal clit piercing is a clitoris piercing.
slut clit piercing is a clitoris piercing.

The printed name of a clitoris piercing is "[TQlink of item described][item style][if the bimbo of the player > 10]clit[otherwise]clitoris[end if] piercing[clothing-title-after]". The text-shortcut of clitoris piercing is "clp". Understand "clit" as clitoris piercing. Figure of clitoris piercing is the file "Items/Accessories/Piercings/clitpiercing1.png". Figure of slut clitoris piercing is the file "Items/Accessories/Piercings/clitpiercing2.png". A clitoris piercing is vaginal-sex-addiction-influencing.

The printed name of slut clit piercing is "[TQlink of item described][item style]slut [if the bimbo of the player > 10]clit[otherwise]clitoris[end if] piercing[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - a clitoris piercing):
	decide on figure of clitoris piercing.

To decide which figure-name is the clothing-image of (C - slut clit piercing):
	decide on figure of slut clitoris piercing.

To say ClothingDesc of (C - a clitoris piercing):
	say "A jewelled vertical clitoris hood piercing[if C is slut clit piercing] with the pink word 'SLUT' dangling off of it in pink jewels[end if]. [if C is cursed]You can feel it making your clit much more sensitive[otherwise if C is blessed]You can feel it making your clit less sensitive[otherwise]You can feel it making your clit slightly more sensitive[end if].".
To say ShortDesc of (C - a clitoris piercing):
	say "jewelled clitoris piercing".
To say ShortDesc of (C - slut clit piercing):
	say "jewelled SLUT clitoris piercing".

To decide which number is the vaginal sensitivity influence of (C - a clitoris piercing):
	if C is cursed, decide on 3;
	if C is blessed, decide on -2;
	decide on 1.

To decide which number is the delicateness-influence of (C - a clitoris piercing):
	[Selkie: does this make sense if the piercing is blessed, reducing sensitivity?
	Aika: Yes, I think so, I personally feel like it's still a 'submissive' thing, to have a clit piercing.]
	decide on 1.

To decide which number is the initial outrage of (C - a clitoris piercing):
	decide on 13.

To decide which number is the initial outrage of (C - slut clit piercing):
	decide on 17.

To say PiercingFlav of (P - a clitoris piercing):
	say "An arm comes down with a searing hot needle! You scream [if the player is gagged]through your gag [end if]as your poor clitoris is painfully pierced. The needle is quickly removed and a jewelled metal piercing is pushed into place.[line break][variable custom style][if the delicateness of the player < 10]Oww! No, no, anywhere but there! That's my most sensitive part... and I can feel this making it even more sensitive![otherwise if 15 is too humiliating]I have to make sure this is kept hidden under clothes! How embarrassing.[otherwise]Hmm, I can feel this making my clit WAY more sensitive. I guess that will help me have lots of orgasms![end if][roman type][line break]";
	if there is a worn tattoo and clit-piercing tattoo is not worn and a random number between 1 and 2 is 1:
		say "A bizarre tattoo appears in your armpit!";
		summon clit-piercing tattoo;
		try examining clit-piercing tattoo.

To decide which object is the concealer of (C - a clitoris piercing):
	if C is listed in the armUses of arms, decide on arms;
	let V be the concealer of vagina;
	if V is a thing, decide on V;
	[Stuff that fails to conceal the vagina because of a cameltoe can still conceal the piercing]
	repeat with D running through worn actually dense skirt-covering-crotch clothing:
		decide on D;
	repeat with D running through worn actually dense potentially pussy covering clothing:
		decide on D.

To decide which object is the at least partial concealer of (C - a clitoris piercing):
	if C is listed in the armUses of arms, decide on arms;
	decide on the at least partial concealer of vagina.

Check taking off clitoris piercing:
	say "That's permanently welded into your [if the bimbo of the player < 10]poor sensitive [end if]clit!";
	if the player is not able to use their hands:
		say "Besides, it's not like you even [i]could[/i] do that right now, with your hands.";
	otherwise if the noun is not blessed and the player is able to automatically masturbate:
		say "...But [one of]your tugging on[or]your fumbling with[or]your attempts to dislodge[at random] it makes your sensitive [one of]clit[or]nub[or]bud[or]button[as decreasingly likely outcomes] [one of]stiffen under your fingers[or]send sparks of pleasure up your belly[or]sends an illicit thrill through you[or]feel [italic type]so good[roman type][at random]. [one of]You shiver, eyes rolling up and tongue roving over your [LipDesc] as your hand creeps further down...[or]Your nipples harden, a sigh falls through your lips, and your hand creeps further down...[or]Your hand creeps further down, and your fingers find your moistening flower...[or][line break][variable custom style]I can't help it![roman type][line break][stopping]";
		now auto is 1;
		try masturbating;
		now auto is 0;
	do nothing instead.

To decide which object is the potential-upgrade-target of (C - normal clit piercing):
	decide on slut clit piercing.

Section - Wearability

Definition: a clitoris piercing (called P) is eligible:
	if the player is not possessing a vagina or P is worn or the player is pussy protected or there is a worn clitoris piercing, decide no;
	decide yes.

This is the cursed clitoris piercing stops you wearing underwear rule:
	let C be a random worn cursed clitoris lead;
	if C is nothing, now C is a random worn cursed clitoris piercing;
	if C is a thing:
		if wearing-target is not no protection and wearing-target is not diaper:
			if summoning is 0 and autowear is false, say "The curse of your [C] somehow prevents you from putting this on!";
			rule fails.
The cursed clitoris piercing stops you wearing underwear rule is listed in the knickers wearability rules.

This is the cursed clitoris piercing stops you wearing trousers rule:
	let C be a random worn cursed clitoris lead;
	if C is nothing, now C is a random worn cursed clitoris piercing;
	if C is a thing:
		if wearing-target is not no protection:
			if summoning is 0 and autowear is false, say "The curse of your [C] somehow prevents you from putting this on!";
			rule fails.
The cursed clitoris piercing stops you wearing trousers rule is listed in the trousers wearability rules.

This is the cursed clitoris piercing stops you wearing crotch covering dresses rule:
	let C be a random worn cursed clitoris lead;
	if C is nothing, now C is a random worn cursed clitoris piercing;
	if C is a thing:
		if wearing-target is crotch covering and wearing-target is not no protection:
			if summoning is 0 and the player is not in Predicament20:
				if autowear is false, say "The curse of your [C] somehow prevents you from putting this on!";
				rule fails. [NB this purposefully doesn't prevent them from being summoned.]
The cursed clitoris piercing stops you wearing crotch covering dresses rule is listed in the overdress wearability rules.
The cursed clitoris piercing stops you wearing crotch covering dresses rule is listed in the underdress wearability rules.


A nipple piercing is a kind of piercing.

A nipple chain is a kind of nipple piercing. The printed name of nipple chain is "[clothing-title-before]nipple chain[clothing-title-after]". The printed plural name of nipple chain is "[TQlink of item described][item style]nipple chains[clothing-title-after]". The text-shortcut of nipple chain is "nc". There is 1 nipple chain. Figure of nipple chain is the file "Items/Accessories/Piercings/nipplechain1.png". A nipple chain is usually titfuck-addiction-influencing. A nipple chain has a number called arousal-charge.

To decide which object is the coverer of (C - a nipple chain):
	repeat with O running through top-layer-concealing very low cut or higher clothing:
		if O is not mesh, decide on O;
	decide on nothing.

To decide which object is the concealer of (C - a nipple chain):
	repeat with O running through actually dense top-layer-concealing very low cut or higher clothing:
		decide on O;
	decide on nothing.
To decide which object is the at least partial concealer of (C - a nipple chain):
	repeat with O running through partially-top-layer-concealing very low cut or higher clothing:
		if O is not see-through, decide on O;
	decide on nothing.

[!<TheCowChainSlutRule>+

A worn nipple chain increases the chance of titfucks.

+!]
This is the cow chain slut rule:
	if there is a worn nipple chain, increase the desirability of breasts by 5.
The cow chain slut rule is listed in the tit slut eligibility rules.

To decide which number is the initial outrage of (C - a nipple chain):
	decide on 11.

To decide which number is the heaviness of (C - a nipple chain):
	decide on 1.

To decide which figure-name is the clothing-image of (C - a nipple chain):
	decide on figure of nipple chain.

To say ClothingDesc of (C - a nipple chain):
	say "Two solid metal piercings connected together by a short chain. Your already over-sensitive nipples would scream in pain if this were to get pulled anything but gently.".

To say ShortDesc of (C - a nipple chain):
	say "nipple chain".

To compute periodic effect of (N - a nipple chain):
	increase the arousal-charge of N by 1;
	if the arousal-charge of N > 65:
		now the arousal-charge of N is 0;
		if N is cursed and the latex-transformation of the player < 6:
			say "[bold type]Your [printed name of N] are [one of][or]still [stopping]making your nipples over-sensitive and erect, keeping you stimulated![roman type][line break]";
			passively stimulate breasts from N.

Definition: a nipple chain is eligible: decide no.

Check taking off nipple piercing:
	say "They're permanently welded into your nipples!" instead.

Definition: a nipple chain is subduing: decide yes.

To say LeashFlav of (C - a nipple chain):
	say "nipple chain".

To say SubduedGrabFlav of (C - nipple chain):
	say "[variable custom style][if the delicateness of the player < 8]Fuck, fuck, fuck, get off!!![otherwise if the delicateness of the player < 14]Eek, that's way too sensitive! I daren't move a muscle![otherwise]Oopsie, caught again![end if][roman type][line break]".

Section 1 Wearability

nipple piercing wearability rules is a rulebook. The wearability rules of nipple chain is usually nipple piercing wearability rules.

This is the nipple chain breast covering clash rule:
	if there is worn nipple covering clothing, rule fails.
The nipple chain breast covering clash rule is listed in the nipple piercing wearability rules.

This is the nipple chain already worn rule:
	if there is a worn nipple chain, rule fails.
The nipple chain already worn rule is listed in the nipple piercing wearability rules.

This is the overdress nipple chain clash rule:
	if wearing-target is actually nipple covering and (the player is in Predicament20 or the player is not in a predicament room):
		repeat with N running through worn nipple chains:
			if N is not blessed:
				if summoning is 0 and autowear is false, say "Your [ShortDesc of N] is somehow preventing you from wearing any clothing that would cover your nipples! Maybe if you blessed it?";
				rule fails.
The overdress nipple chain clash rule is listed in the overdress wearability rules.

This is the bra nipple chain clash rule:
	if wearing-target is actually nipple covering:
		repeat with N running through worn nipple chains:
			if summoning is 0 and autowear is false, say "Your [ShortDesc of N] is preventing you from ever wearing any kind of bra that would cover your nipples!";
			rule fails.
The bra nipple chain clash rule is listed in the bra wearability rules.

nipple-rings is a nipple piercing. The printed name of nipple-rings is "[clothing-title-before]nipple rings[clothing-title-after]". The text-shortcut of nipple-rings is "nr". Understand "nipple", "rings" as nipple-rings. nipple-rings is titfuck-addiction-influencing. nipple-rings is milk production.

Figure of nipple rings is the file "Items/Accessories/Piercings/nipplepiercing1.png".

To decide which figure-name is the clothing-image of (C - nipple-rings):
	decide on figure of nipple rings.

To say ClothingDesc of (C - nipple-rings):
	say "A high gauge ring pierces each of your nipples. They make you feel a bit like a cow...".
To say ShortDesc of (C - nipple-rings):
	say "nipple rings".
To say MediumDesc of (C - nipple-rings):
	say "pair of high gauge nipple rings".

Definition: nipple-rings is eligible: decide no.
Definition: nipple-rings is cow themed: decide yes.

[!<TheCowRingsSlutRule>+

Worn cow piercings increases the chance of titfucks.

+!]
This is the cow rings slut rule:
	if nipple-rings is worn, increase the desirability of breasts by 10.
The cow rings slut rule is listed in the tit slut eligibility rules.

Section - Wearability

nipple-rings wearability rules is a rulebook. The wearability rules of nipple-rings is usually nipple-rings wearability rules.

This is the cow rings breast covering clash rule:
	if there is worn breast covering clothing, rule fails.
The cow rings breast covering clash rule is listed in the nipple-rings wearability rules.

This is the cow rings already worn rule:
	if there is a worn nipple piercing, rule fails.
The cow rings already worn rule is listed in the nipple-rings wearability rules.

This is the overdress cow rings clash rule:
	if wearing-target is normally-nipple-covering or wearing-target is ridiculously low cut or higher:
		if nipple-rings is worn and nipple-rings is cursed:
			if summoning is 0 and autowear is false, say "Your [ShortDesc of nipple-rings] is somehow preventing you from wearing the [ShortDesc of wearing-target]! Maybe if you uncursed it?";
			rule fails;
		if dick-nipple-piercings is worn:
			if summoning is 0 and autowear is false, say "Your [ShortDesc of dick-nipple-piercings] are somehow preventing you from wearing the [ShortDesc of wearing-target]! It looks like you're going to be topless and appearing ultra slutty to onlookers for the rest of your run...";
			rule fails.
The overdress cow rings clash rule is listed in the overdress wearability rules.

[This is the bra cow rings clash rule:
	if wearing-target is normally-nipple-covering:
		if nipple-rings is worn and nipple-rings is not blessed:
			if summoning is 0 and autowear is false, say "Your [ShortDesc of nipple-rings] is magically preventing you from wearing any kind of bra! Maybe if you blessed it?";
			rule fails.
The bra cow rings clash rule is listed in the bra wearability rules.]


dick-nipple-piercings is a nipple piercing. The printed name of dick-nipple-piercings is "[clothing-title-before]dick nipple piercings[clothing-title-after]". The text-shortcut of dick-nipple-piercings is "dnp". Understand "dick nipple", "nipple", "piercings" as dick-nipple-piercings. dick-nipple-piercings is titfuck-addiction-influencing. Figure of dick nipple piercing is the file "Items/Accessories/Piercings/nipplepiercing2.png".

To decide which figure-name is the clothing-image of (C - dick-nipple-piercings):
	decide on figure of dick nipple piercing.

To say ClothingDesc of (C - dick-nipple-piercings):
	say "A gold ring pierces each of your nipples. Dangling from each ring is a veiny golden [manly-penis].".
To say ShortDesc of (C - dick-nipple-piercings):
	say "dick nipple rings".
To say MediumDesc of (C - dick-nipple-piercings):
	say "pair of gold penis-shaped nipple rings".

Definition: dick-nipple-piercings is eligible: decide no.

Definition: dick-nipple-piercings is penis themed: decide yes.

To decide which number is the initial outrage of (C - dick-nipple-piercings):
	decide on 18.

The wearability rules of dick-nipple-piercings is the nipple-rings wearability rules.


A pair of earrings is a kind of piercing. The text-shortcut of pair of earrings is "ea". A pair of earrings is womanly. Understand "pair", "pair of" as a pair of earrings.

To decide which object is the concealer of (C - a pair of earrings):
	if there is a worn actually dense hood, decide on a random worn actually dense hood;
	if the largeness of hair > 12, decide on hair;
	decide on nothing.
To decide which object is the at least partial concealer of (C - a pair of earrings):
	if C is listed in the armUses of arms, decide on arms;
	if there is a worn hood, decide on a random worn hood;
	if the largeness of hair > 12, decide on hair;
	decide on nothing.

condom-earrings is a pair of earrings. condom-earrings is latex. The printed name of condom-earrings is "[TQlink of item described][item style]pair of used condom earrings[clothing-title-after]". condom-earrings has an object called cum1. condom-earrings has an object called cum2.
Understand "used condom" as condom-earrings.
Definition: condom-earrings is eligible:
	if podium is in the location of the player, decide no; [only the modification machine does this]
	if it is off-stage and condom fetish >= 2 and total used condoms > 1, decide yes;
	decide no.
To decide which number is the initial outrage of (C - condom-earrings):
	decide on 12.
Figure of earrings condoms is the file "Items/Accessories/Piercings/Earrings4.png".
To decide which figure-name is the clothing-image of (C - condom-earrings):
	decide on figure of earrings condoms.
To say ClothingDesc of (C - condom-earrings):
	say "A real genuine used condom is attached to each of your earlobes. The condoms appear to be somehow magically fastened, which means they are permanent. The [semen] permanently dangling from your left ear came from [if cum1 of C is a thing and cum1 of C is not the throne][NameDesc of cum1 of C][otherwise]an unknown source[end if]. The [semen] permanently oozing around your right ear came from [if cum2 of C is a thing and cum2 of C is not the throne][NameDesc of cum2 of C][otherwise]an unknown source[end if].";

To say ShortDesc of (C - condom-earrings):
	say "used condom earrings".
To say MediumDesc of (C - condom-earrings):
	say "pair of used condom earrings".

To say PiercingFlav of (P - condom-earrings):
	let C1 be nothing;
	let C2 be nothing;
	repeat with CC running through worn clothing:
		if C1 is nothing and the used condoms of CC > 0:
			now C1 is CC;
			let M be the condomPop of CC;
			now the cum1 of P is M;
			increase the empty condoms of CC by 1;
		if C2 is nothing and the used condoms of CC > 0:
			now C2 is CC;
			let M be the condomPop of CC;
			now the cum2 of P is M;
			increase the empty condoms of CC by 1;
	say "Two robotic arms come down! [if C1 is C2]Each takes a used condom from [NameDesc of C1][otherwise]One takes a used condom from [NameDesc of C1], and the other takes another used condom from [NameDesc of C2][end if]. One used condom is pressed against your left earlobe, and the other against your right earlobe, where they magically fuse into place! Two nasty loads of [semen] are now permanently dangling and wobbling by the sides of your face!";
	GrossOut 8.


transforming-earrings is a pair of earrings. The printed name of transforming-earrings is "[TQlink of item described][item style]pair of [if item described is cursed]ultra slutty[otherwise if item described is blessed]heart shaped[otherwise]penis shaped[end if] earrings[clothing-title-after]".
Understand "penis shaped" as transforming-earrings when item described is bland. Understand "heart", "shaped" as transforming-earrings when item described is blessed. Understand "ultra", "slutty" as transforming-earrings when item described is cursed. transforming-earrings has a number called variation. transforming-earrings is womanly.
The transform-resistance of transforming-earrings is 0.

Definition: transforming-earrings is toilet themed:
	if it is cursed and watersports fetish is 1, decide yes;
	decide no.
This is the earrings piss slut rule:
	if there is a worn toilet themed pair of earrings, increase the desirability of belly by 8.
The earrings piss slut rule is listed in the piss slut eligibility rules.
Definition: transforming-earrings is interracial themed:
	if it is cursed and watersports fetish is 0, decide yes;
	decide no.
To decide which number is the bbc-addiction-influence of (C - transforming-earrings):
	if C is interracial themed, decide on 1;
	decide on 0.
Definition: transforming-earrings is oral sex themed:
	if it is cursed and watersports fetish is 0 and interracial fetish is 0 and the variation of it < 3, decide yes;
	decide no.
To decide which number is the oral-sex-addiction-influence of (C - transforming-earrings):
	if C is oral sex themed, decide on 1;
	decide on 0.
Definition: transforming-earrings is anal sex themed:
	if it is cursed and watersports fetish is 0 and interracial fetish is 0 and the variation of it is not 2, decide yes;
	decide no.
To decide which number is the anal-sex-addiction-influence of (C - transforming-earrings):
	if C is anal sex themed, decide on 1;
	decide on 0.
Definition: transforming-earrings is penis themed:
	if it is bland or (it is cursed and watersports fetish is 0 and interracial fetish is 0 and the variation of it is not 1), decide yes;
	decide no.
To decide which number is the semen-addiction-influence of (C - transforming-earrings):
	if C is penis themed, decide on 1;
	decide on 0.
Definition: transforming-earrings is vagina themed:
	if it is cursed and watersports fetish is 0 and interracial fetish is 0 and the variation of it is 1, decide yes;
	decide no.
To decide which number is the vaginal-sex-addiction-influence of (C - transforming-earrings):
	if C is vagina themed, decide on 1;
	decide on 0.
Definition: transforming-earrings is white themed:
	if it is cursed, decide yes;
	decide no.
Definition: transforming-earrings is heart themed:
	if it is blessed, decide yes;
	decide no.
Definition: transforming-earrings is gem themed:
	if it is blessed, decide yes;
	decide no.

To uniquely set up (C - transforming-earrings):
	now the variation of C is a random number between 1 and 3.

To say CurseCurseFlav of (C - transforming-earrings):
	say "Your [printed name of C] transform in shape, and are now the ultra slutty circular things again!";
	update appearance level.

To say CurseBlandFlav of (C - transforming-earrings):
	say "Your [printed name of C] transform in shape, and are now penis shaped again!";
	update appearance level.

To say BlessBlessFlav of (C - transforming-earrings):
	say "Your [printed name of C] transform in shape to large jewelled hearts, and now look much less trashy and more valuable!";
	update appearance level.

To say BlessBlandFlav of (C - transforming-earrings):
	say "Your [printed name of C] transform in shape, and are now shaped like [manly-penis]s![line break][variable custom style][if the bimbo of the player < 12 or 7 is too humiliating]Hmm, well I guess that is a little bit better...?[otherwise if the bimbo of the player < 15]Ooh, these are cute![otherwise]Aww, I preferred having the super trashy ones! I guess these are pretty trashy too...[end if][roman type][line break]";
	update appearance level.

To decide which number is the initial outrage of (C - transforming-earrings):
	if C is cursed, decide on 10;
	if C is blessed, decide on 2;
	decide on 6.

To decide which figure-name is the clothing-image of (C - transforming-earrings):
	if C is cursed:
		if watersports fetish is 1:
			decide on figure of earrings toilet;
		otherwise if interracial fetish is 1:
			decide on figure of earrings gangbang;
		otherwise if the player is originally female and the variation of C is 1:
			decide on figure of earrings holes;
		otherwise if the variation of C is 2:
			decide on figure of earrings sucking cock;
		otherwise:
			decide on figure of earrings cock ass;
	otherwise if C is blessed:
		decide on figure of Earrings Hoop;
	otherwise if bukkake fetish is 1:
		decide on figure of Earrings Bukkake Cock;
	otherwise:
		decide on figure of Earrings Cock.

To say ClothingDesc of (C - transforming-earrings):
	if C is cursed:
		if watersports fetish is 1:
			say "A pair of earrings shaped like toilet rolls, marking you as a human toilet. ";
		otherwise if interracial fetish is 1:
			say "A pair of large circular plastic earrings with a white female gender symbol surrounded by four black male gender symbols pointing towards it. ";
		otherwise if the player is originally female and the variation of C is 1:
			say "A pair of large circular plastic earrings with graphic depictions of a mouth, vagina, and asshole on each one. ";
		otherwise if the variation of C is 2:
			say "A pair of large circular plastic earrings with the words 'I <3 Sucking Cock' on each one. ";
		otherwise:
			say "A pair of large circular plastic earrings with the words 'I <3 Cock In My Ass' on each one. ";
		say "These would only be worn by a drunk girl at a hen party, or maybe an exhibitionist nymphomaniac[if the sex addiction of the player > 12 and the humiliation of the player > 30000][line break][second custom style] like me![roman type][line break][otherwise].[end if]";
	otherwise if C is blessed:
		say "Two large dangling earrings shaped like hearts, with several diamonds embedded in the hoops. They could be interpreted as wealthy and refined, or slutty, probably depending on what the rest of the wearer looks like.";
	otherwise if bukkake fetish is 1:
		say "A pair of metal earrings shaped as penises, pointing towards your face. A jewel at the tip of the [manly-penis] represents a cumshot.";
	otherwise:
		say "A pair of plastic flesh coloured earrings shaped as penises, pointing downwards, complete with large balls. They look very cheap and trashy.";
	say "The earrings have no hook but a closed metal hole, which means they are permanent.".

To say ShortDesc of (C - transforming-earrings):
	say "[if C is cursed]ultra slutty[otherwise if C is blessed]hooped[otherwise]cock-shaped[end if] earrings".
To say MediumDesc of (C - transforming-earrings):
	say "pair of [ShortDesc of C]".

Figure of earrings bukkake cock is the file "Items/Accessories/Piercings/Earrings2a.png".
Figure of earrings cock is the file "Items/Accessories/Piercings/Earrings2b.png".
Figure of earrings hoop is the file "Items/Accessories/Piercings/Earrings3a.png".
Figure of earrings cock ass is the file "Items/Accessories/Piercings/Earrings1a.png".
Figure of earrings holes is the file "Items/Accessories/Piercings/Earrings1b.png".
Figure of earrings gangbang is the file "Items/Accessories/Piercings/Earrings1c.png".
Figure of earrings sucking cock is the file "Items/Accessories/Piercings/Earrings1d.png".
Figure of earrings toilet is the file "Items/Accessories/Piercings/Earrings1e.png".

To decide which number is the bimbo-influence of (C - transforming-earrings):
	decide on 1.
To decide which number is the anal-sex-addiction-influence of (C - transforming-earrings):
	if C is cursed and the variation of C is not 2 and watersports fetish is 0, decide on 1;
	decide on 0.
To decide which number is the urine-taste-addiction-influence of (C - transforming-earrings):
	if C is cursed and watersports fetish is 1, decide on 1;
	decide on 0.
To decide which number is the oral-sex-addiction-influence of (C - transforming-earrings):
	if C is cursed and the variation of C is 2 and watersports fetish is 0, decide on 1;
	decide on 0.
To decide which number is the intelligence-influence of (C - transforming-earrings):
	if C is blessed, decide on 1;
	decide on 0.

To say PiercingFlav of (P - transforming-earrings):
	say "An arm comes down with a searing hot needle! You scream [if the player is gagged]through your gag [end if]as your earlobes are painfully pierced.";
	PainUp 20;
	say "The needle is quickly removed and two obscene earrings are pushed into place. The hook of the earrings are then somehow welded shut, meaning that the earrings are permanent![line break][variable custom style][if the humiliation of the player < 20000]Oh you have GOT to be kidding me! These look absolutely ridiculous! Surely I can't be stuck with them forever?![otherwise if the humiliation of the player < 30000]These look stupid, but then I guess it's a fair reflection of how undignified I've become.[otherwise]There's definitely no excuse for having such ridiculous earrings. Everyone will know I'm a shameless exhibitionist! Tee-hee.[end if][roman type][line break]".

Section - Wearability

pair of earrings wearability rules is a rulebook. The wearability rules of pair of earrings is usually pair of earrings wearability rules.

This is the pair of earrings already worn rule:
	if there is a worn pair of earrings, rule fails.
The pair of earrings already worn rule is listed in the pair of earrings wearability rules.

heel-module is a module. The printed name of heel-module is "[clothing-title-before]heel module[clothing-title-after]". The text-shortcut of heel-module is "hem". Understand "heel module" as heel-module.

To decide which figure-name is the clothing-image of (C - heel-module):
	decide on figure of module 4.

heel-module has a number called heel-transfer. The heel-transfer of heel-module is 0.

To decide which number is the heel-skill-influence of (C - heel-module):
	decide on 2 + the heel-transfer of C.

To say ClothingDesc of (C - heel-module):
	say "Your ankles are now covered in a silvery substance that extends to the base of your foot.".
To say ShortDesc of (C - heel-module):
	say "heel module".

To say ModuleFlav of (M - heel-module):
	say " An arm snakes out and painfully injects something into your ankles, which are soon covered in a pliable but tough silvery substance.[line break][second custom style]'Thank you for participating in the Allure Improvement System module trial! Please listen carefully to the following instructions. This module will improve the ability of your body to balance in an appropriately feminine posture. [big please] listen carefully to the following instructions. Module nanobots will ensure that the height of any worn high heels is kept at an appropriate height to allow for further high heel training and perfection, and enable the [bold type][']strut['][second custom style] protocol. Over time heel muscle memory will be migrated to the module database for enhancement and safekeeping. The Health and Safety Department reminds all testers that removal of installed modules will result in severe nerve disruption and therefore the permanent loss of all stored talent. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".

Definition: heel-module is strut enabling: decide yes.

To compute periodic effect of (M - heel-module):
	let H be a random worn heels;
	increase the module-charge of M by 1;
	if H is heels:
		let Hi be the hindrance of H;
		if the module-charge of M > 48 and the raw heel skill of the player > 0:
			decrease the raw heel skill of the player by 1;
			increase heel-transfer of M by 1;
			now the module-charge of M is 0;
			increase the heel-height of H by 1;
			say "You feel your ankles twitch, and you suddenly feel your [ShortDesc of H] increase in height. They are now [H]!".

A lip piercing is a kind of piercing. The printed name of lip piercing is "[TQlink of item described][item style]lip piercing[clothing-title-after]". The text-shortcut of lip piercing is "lpc". There is 1 lip piercing. Figure of lip piercing is the file "Items/Accessories/Piercings/lippiercing1.png".

To decide which figure-name is the clothing-image of (C - a lip piercing):
	decide on figure of lip piercing.

To say ClothingDesc of (C - a lip piercing):
	say "A high gauge half ring metal piercing sits deep behind your bottom lip. ".

To say ShortDesc of (C - a lip piercing):
	say "half ring lip piercing".

To decide which number is the intelligence-influence of (C - a lip piercing):
	unless C is blessed, decide on -1;
	decide on 0.

To decide which number is the dexterity-influence of (C - a lip piercing):
	unless C is cursed, decide on 1;
	decide on 0.

To decide which number is the initial outrage of (C - a lip piercing):
	decide on 3.

To decide which object is the at least partial concealer of (C - a lip piercing):
	if C is listed in the armUses of arms, decide on arms;
	if there is a worn hood, decide on a random worn hood;
	decide on the at least partial concealer of face.

To decide which object is the concealer of (C - a lip piercing):
	if C is listed in the armUses of arms, decide on arms;
	if there is a worn actually dense hood, decide on a random worn actually dense hood;
	decide on the concealer of face.

To set up influence of (C - a lip piercing):
	set up taste-based influence of C.

To say PiercingFlav of (P - a lip piercing):
	say "An arm comes down with a searing hot needle! You scream [if the player is gagged]through your gag [end if]as you are painfully pierced just below your bottom lip. The needle is quickly removed and a thick metal ring is pushed into place. There's no way to remove it![line break][variable custom style]It feels harder to think straight...[roman type][line break]".

Check taking off lip piercing:
	say "That's permanently welded into your lip!" instead.

Section - Wearability

lip piercing wearability rules is a rulebook. The wearability rules of lip piercing is usually lip piercing wearability rules.

This is the lip piercing already worn rule:
	if there is a worn lip piercing, rule fails.
The lip piercing already worn rule is listed in the lip piercing wearability rules.

head-module is a module. The printed name of head-module is "[clothing-title-before]head module[clothing-title-after]". The text-shortcut of head-module is "hdmd".

To decide which figure-name is the clothing-image of (C - head-module):
	decide on figure of module 1.

head-module has a number called int-transfer. The int-transfer of head-module is 0.

To decide which number is the intelligence-influence of (C - head-module):
	let D be the int-transfer of C + 3;
	decide on D.

To say ModuleFlav of (M - head-module):
	say "An arm snakes out with a strange silvery triangle on one end. It carefully places it on the middle of your your forehead, and you feel a brief twinge of pain as wires push their way into your skin. When the arm pulls away the triangle is left behind.[line break][second custom style]'Thank you for participating in the Central Processor Support module trial! [big please] listen carefully to the following instructions. You will find that your brainpower has improved and will continue to grow in-line with the enhancements to your hair and lips. Nanobots will draw power from your body and store it safely inside the artificial materials. The Health and Safety Department reminds all testers that removal of installed modules will result in severe nerve disruption and therefore the permanent loss of all stored mental function. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".

[!<TheLipsModuleBlowjobSlutRule>+

Increases the chance of oral sex.

+!]
This is the head module blowjob slut rule:
	if head-module is worn, increase the desirability of face by the int-transfer of head-module.
The head module blowjob slut rule is listed in the blowjob slut eligibility rules.

To say ClothingDesc of (C - head-module):
	say "A triangle of silvery metal is pressed into your forehead. You recall the dire warning you were given - [if the int-transfer of C > 0]removing with it would cause irreparable damage to your intelligence[otherwise]once it has started to store more brainpower inside your hair and lips, removing the module would cause you to lose all that power permanently[end if].".
To say ShortDesc of (C - head-module):
	say "head module".

To compute periodic effect of (P - head-module):
	increase the module-charge of P by 1;
	if the module-charge of P > 48:
		now the module-charge of P is 0;
		let HL be max hair length - the largeness of hair;
		if frozen hair is 1, now HL is 0;
		if the raw intelligence of the player > 1 and (the lips of face < max lip size or HL > 0):
			IntDown 1;
			increase the int-transfer of P by 1;
			if the lips of face >= max lip size or HL / 3 > (3 - the lips of face):
				say "[bold type]Your hair [if the fake largeness of hair > 0]extensions suddenly feel terribly warm and they suddenly stretch in size[otherwise]suddenly feels terribly warm as extensions begin to manifest themselves at the tips[end if]! ";
				FakeHairUp 1;
			otherwise:
				LipsUp 1;
				say "[bold type]Your lips suddenly feel terribly warm as they puff out inside, even more collagen having been created inside by the module! ";
			say "You feel some [one of][or]more [stopping]of your brainpower transferred into the nanobots for safekeeping.[roman type][line break]";

A nose piercing is a kind of piercing. The text-shortcut of nose piercing is "np". Understand "septum", "sep" as nose piercing. Figure of small nose piercing is the file "Items/Accessories/Piercings/nosepiercing1.png". Figure of ugly nose piercing is the file "Items/Accessories/Piercings/nosepiercing2.png". A nose piercing is usually manly.

To decide which number is the intelligence-influence of (C - a nose piercing):
	unless C is blessed, decide on -1;
	decide on 0.

To decide which number is the strength-influence of (C - a nose piercing):
	unless C is cursed, decide on 1;
	decide on 0.

To decide which object is the concealer of (C - a nose piercing):
	if C is listed in the armUses of arms, decide on arms;
	if there is a worn actually dense hood, decide on a random worn actually dense hood;
	decide on the concealer of face.

To decide which object is the at least partial concealer of (C - a nose piercing):
	if C is listed in the armUses of arms, decide on arms;
	if there is a worn hood, decide on a random worn hood;
	decide on the at least partial concealer of face.

To say PiercingFlav of (P - a nose piercing):
	say "An arm comes down with a searing hot needle! You scream [if the player is gagged]through your gag [end if]as your nose's septum is painfully pierced. The needle is quickly removed and a thick metal ring is pushed into place. There's no way to remove it![line break][variable custom style]It feels harder to think straight...[roman type][line break]".

Part 1 - Small Nose Piercing

A small nose piercing is a kind of nose piercing. There is 1 small nose piercing.

The printed name of small nose piercing is "[TQlink of item described][item style][if the intelligence of the player > 6]septum[otherwise]nose[end if] piercing[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - a small nose piercing):
	decide on figure of small nose piercing.

To say ClothingDesc of (C - a small nose piercing):
	say "A high gauge nose piercing.".
To say ShortDesc of (C - a small nose piercing):
	say "high gauge nose piercing".

To decide which number is the initial outrage of (C - a small nose piercing):
	decide on 4.

To decide which object is the potential-upgrade-target of (C - a small nose piercing):
	decide on a random off-stage ugly nose piercing.

Part 2 - Ugly Nose Piercing

An ugly nose piercing is a kind of nose piercing. There is 1 ugly nose piercing.

The printed name of ugly nose piercing is "[TQlink of item described][item style]ugly [if the intelligence of the player > 6]septum[otherwise]nose[end if] piercing[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - an ugly nose piercing):
	decide on figure of ugly nose piercing.

To say ClothingDesc of (C - an ugly nose piercing):
	say "A high gauge nose piercing, which is much too big and looks like it should be on an animal. It will make people think you are nothing but an object, devoid of meaningful human personality.".

To say ShortDesc of (C - an ugly nose piercing):
	say "ugly high gauge nose piercing".

To decide which number is the initial outrage of (C - an ugly nose piercing):
	decide on 7.

Definition: an ugly nose piercing is eligible: decide no.

Section - Wearability

nose piercing wearability rules is a rulebook. The wearability rules of nose piercing is usually nose piercing wearability rules.

This is the nose piercing already worn rule:
	if there is a worn nose piercing, rule fails.
The nose piercing already worn rule is listed in the nose piercing wearability rules.

A tongue piercing is a kind of piercing. The printed name of tongue piercing is "[TQlink of item described][item style]tongue piercing[clothing-title-after]". The text-shortcut of tongue piercing is "tpi". A tongue piercing is usually oral-sex-addiction-influencing. A tongue piercing has a number called thirst-charge.

To decide which number is the initial outrage of (C - a tongue piercing):
	decide on 7.

To decide which object is the concealer of (C - a tongue piercing):
	if C is listed in the armUses of arms, decide on arms;
	unless there is a worn ringagged clothing or the latex-transformation of the player > 6, decide on face;
	decide on the at least partial concealer of face.

Check taking off tongue piercing:
	say "That's permanently welded into your tongue!" instead.

To say ShortDesc of (C - a tongue piercing):
	say "tongue piercing".

To compute periodic effect of (P - a tongue piercing):
	increase the thirst-charge of P by 1;
	if the thirst-charge of P > 80:
		now the thirst-charge of P is 0;
		if P is not blessed and the stomach-semen of the player is 0 and the semen volume of face is 0 and the thirst of the player < 3 and the latex-transformation of the player < 5:
			say "[bold type]Your [printed name of P] is [one of][or]still [stopping]crying out for you to taste and swallow more [semen]. You suddenly feel a lot thirstier...";
			while the player is not thirsty and the stomach-liquid of the player > 0:
				StomachDown 1;
			if P is cursed, StomachDown 1.

Definition: a tongue piercing is eligible: decide no.
Definition: a tongue piercing is oral sex themed: decide yes.

[!<TheTonguePiercingPreventsSpeechRule>+

Prevents speech if cursed.

+!]
This is the tongue piercing prevents speech rule:
	if there is a worn cursed tongue piercing, rule fails.
The tongue piercing prevents speech rule is listed in the player speech rules.

Section - Wearability

tongue piercing wearability rules is a rulebook. The wearability rules of tongue piercing is usually tongue piercing wearability rules.

This is the tongue piercing already worn rule:
	if there is a worn tongue piercing, rule fails.
The tongue piercing already worn rule is listed in the tongue piercing wearability rules.

tongue-piercing is a tongue piercing.

Figure of tongue piercing is the file "Items/Accessories/Piercings/tonguepiercing1.png".

To decide which figure-name is the clothing-image of (C - tongue-piercing):
	decide on figure of tongue piercing.

To say ClothingDesc of (C - tongue-piercing):
	say "A large stud fixed on the underside of your tongue. You're not used to its presence so it's difficult to take your mind off it[if C is cursed]. Its curse is preventing people from understanding what you're trying to say[end if].".

All Piercings ends here.
