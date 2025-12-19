Magic Power by Player begins here.

The player has a number called magic-power. [Raw magic power]
The player has a number called magic-fatigue. [Recent magic drain]

[Magic power as treated by spells and so on.]
To decide which number is the total magic power of the player:
	decide on the magic-power of the player + the trophy-mode of magic-trophy + (humiliation-fetish * the humiliation of the player / 4000) + (the number of worn wizardry clothing * 3).

To decide which number is the magic power of the player:
	let M be the total magic power of the player - the magic-fatigue of the player;
	if M < 0, decide on 0;
	decide on M.

To MagicPowerUp (X - a number):
	let T be the total magic power of the player;
	while X > 0:
		decrease X by 1;
		let B be acolyte-undergarment;
		let G be acolyte-chestpiece;
		if B is worn or G is worn:
			if B is not worn:
				MagicSteal G;
			otherwise if G is not worn:
				MagicSteal B;
			otherwise:
				if the charge of B > the charge of G:
					MagicSteal G;
				otherwise if the charge of B < the charge of G:
					MagicSteal B;
				otherwise:
					if a random number between 1 and 2 is 1, MagicSteal G;
					otherwise MagicSteal B;
		otherwise if the magic-power of the player < 20:
			increase the magic-power of the player by 1;
			if X is 0:
				if T is 0, say "[bold type]You feel you now have the ability to use magic! [one of][if newbie tips is 1]When you use magic, your magic energy will deplete. Several environment objects and game effects will enable you to either partially or fully replenish your magical energy.[end if][line break][variable custom style]Wow!!! What an incredible feeling! I'm magic![or][stopping][roman type][line break]";
				otherwise say "You feel your capacity to use magic has [one of]increased[or]improved[or]expanded[in random order].";
		otherwise if X is 0:
			if a random number between 1 and 5 is 1 and the player is deserving of more intelligence:
				say "Your body is so full of magic that the excess fizzles into your brain, making you slightly [smarter].";
				IntUp 1;
			otherwise if a random number between 1 and 5 is 1 and the player is deserving of more dexterity:
				say "Your body is so full of magic that the excess fizzles into your ligaments, making you more limber.";
				DexUp 1;
			otherwise:
				say "Your body is so full of magic that the excess fizzles off of you with a pink display of sparkles.".

To MagicPowerDown (X - a number):
	if X > the magic-power of the player, now X is the magic-power of the player;
	if X > 0, say "You have lost [if X is the magic-power of the player]all[otherwise if X > 1]lots[otherwise]some[end if] of your magic power.";
	while X > 0:
		decrease X by 1;
		decrease the magic-power of the player by 1.

To MagicPowerRefresh (X - a number):
	let T be the total magic power of the player;
	if the magic-fatigue of the player > T, now the magic-fatigue of the player is T;
	let F be the magic-fatigue of the player;
	decrease the magic-fatigue of the player by X;
	if the magic-fatigue of the player < 0, now the magic-fatigue of the player is 0;
	if the magic-fatigue of the player < F, say "[bold type]Your magic power feels [if the magic-fatigue of the player is 0]completely[otherwise if the magic-fatigue of the player < T / 2]mostly[otherwise]slightly[end if] refreshed![roman type][line break]".

To compute magic regeneration:
	let X be 1;
	if the number of worn humility-stone > 2, increase X by 1;
	if the number of worn humility-stone > 5, increase X by 1;
	MagicPowerRefresh X;

[Stuff to do with casting spells goes below.]
the magic consequences rules is a rulebook.

To decide which number is MagicPowerDamage:
	let X be 3 + magic theme bonus + the intelligence of the player / 4;
	if the class of the player is cumdumpster, increase X by (3 + the stomach-semen of the player) / 4;
	decide on X.

To compute spell consequences of (Z - a thing):
	compute MagicDrain of Z;
	follow the magic consequences rules.

To compute MagicDrain of (Z - a thing):
	increase the magic-fatigue of the player by the magic-cost of Z.

To decide which number is the raw-magic-cost of (Z - a thing):
	decide on 2.
To decide which number is the magic-cost of (Z - a thing):
	let M be the raw-magic-cost of Z;
	if M > 0:
		if the trophy-mode of magic-trophy is 1, now M is M / 3;
		if Z is equippable and combatSpeed > 1, now M is M / combatSpeed;
		if M < 1, now M is 1;
	decide on M.

Definition: a tentacle monster is a tripper:
	if the class of the player is "magical schoolgirl" or (there is a worn zap ready equippable and heart hairpin is off-stage and heart hairpin is actually summonable), decide yes;
	decide no.

To say TripChanceFlav of (M - a tentacle monster):
	do nothing.

To decide which number is the tripping roll of (M - a tentacle monster):
	if there is a worn uncursed living belt of sturdiness, decide on -9999;
	decide on 9999.

To say MonsterTrippedFlav of (M - a tentacle monster):
	say "Roaring with unrestrained arousal, [NameDesc of M] picks you up off the ground with several strong tentacles!";
	repeat with H running through worn equippables:
		if H is not gloves:
			now H is in the location of the player;
			say "Your [H] is wrestled out of your hand and thrown to the corner of the room!";
	if heart hairpin is off-stage and heart hairpin is actually summonable:
		say "A heart hairpin appears in your hair!";
		summon heart hairpin cursed.

Check taking equippable when the player is immobile:
	if the noun is not held, say "You try to reach it but it's too far away!" instead.

This is the magical girl cums then wins her fight orgasm resolution rule:
	let H be a random hand ready equippable in the location of the player;
	if there is a tentacle monster penetrating a body part and the class of the player is magical girl and H is actually summonable clothing and H is not gloves and the body soreness of the player < 10:
		now the fatigue of the player is 0;
		say "Your orgasm fills you with renewed energy! You feel like you could escape and keep fighting if you want. Do you want to? ";
		if the player is consenting:
			say "With a flick of your fingers, your [ShortDesc of H] comes flying back to your hand! You swerve it in an arc and the tentacles holding [if there is a tentacle monster penetrating a fuckhole]and filling [end if]you are sliced in two! You fall to the ground gracefully, landing on two feet.";
			now the stance of the player is 0;
			now H is worn by the player;
			repeat with M running through monsters in the location of the player:
				dislodge M;
			if the player is able to speak, say "[variable custom style]'[if the player is a nympho]That was fun, but I have to beat you up now, sorry[otherwise if the player is a pervert]You've had your fun, but now you'll pay the price for your sins[otherwise]How dare you make me... orgasm... on your... eww! You will pay with your life[end if]!'[roman type][line break]";
			if H is zap ready, MagicPowerRefresh 100.
The magical girl cums then wins her fight orgasm resolution rule is listed last in the orgasm resolution rules.

Part - Spells

A magic-spell is a kind of backdrop.
A magic-spell has a number called the outrageousness.
A magic-spell has a text called the incantation. [Understand the incantation property as describing a magic-spell.] [Unnecessary because we also set the text shortcut to this]

Definition: a magic-spell is reactive-only: decide yes. [Does it only work when used in front of someone who's listening?]

To decide which number is the raw-magic-cost of (S - a magic-spell):
	decide on 6.

Table of Possible Incantations
phrase (text)	naughtiness (number)
with 50 blank rows

To say NewbieSpellFlav:
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've found a magic spell! Spells consume magic power, which is not particularly plentiful but you should hopefully acquire a bit of it over your adventure. Most spells require you to say the rude words while someone can hear (and understand) you.[roman type][line break][or][stopping]".

To compute learning of (S - a magic-spell):
	if the number of filled rows in the Table of Possible Incantations > 0:
		now S is everywhere;
		sort the Table of Possible Incantations in random order;
		choose row 1 from the Table of Possible Incantations;
		now the outrageousness of S is the naughtiness entry;
		now the incantation of S is the phrase entry;
		now the text-shortcut of S is the phrase entry;
		say "You have learned how to [MagicSpellEffect of S]! The magic incantation is 'I [incantation of S]'. It requires [magic-cost of S] magic power.[SpelloutrageousnessInfo of S]";
		blank out the whole row;
		trigger learn-spell-wisp-quest;
	otherwise:
		say "BUG - no fetish appropriate incantations were left to assign to the spell.".

To say ExamineDesc of (S - a magic-spell):
	say "You know how to [MagicSpellEffect of S]! The magic incantation is 'I [incantation of S]'. It requires [magic-cost of S] magic power.[SpelloutrageousnessInfo of S]".

To say SpelloutrageousnessInfo of (S - a magic-spell):
	if debuginfo > 0, say "[input-style]outrageousness rating: [outrageousness of S]/20[roman type][line break]".

To say MagicSpellEffect of (S - a magic-spell):
	say "ERROR - missing effect description for [S]".

Definition: a magic-spell is uncastable rather than castable:
	if the incantation of it is "", decide yes;
	decide no.
Definition: a magic-spell is fetish appropriate: decide yes.
Definition: a magic-spell is staller: decide yes. [Does it make all NPCs lose a turn?]
Definition: a magic-spell is costable rather than uncostable: [does the player have enough max magic power to ever play this?]
	if the raw-magic-cost of it <= the total magic power of the player, decide yes;
	decide no.

Spellcasting is an action applying to one thing.
Check Spellcasting:
	if the noun is uncastable, say "You don't know that spell." instead;
	if the magic power of the player < the magic-cost of the noun, say "You don't have enough magic power to cast that spell (you need [magic-cost of the noun])." instead;
	if the player is in a predicament room or the player is in School34, say "It seems like magic doesn't work here..." instead;
	if the player is not able to trigger manual speech, say "You can't currently speak in order to perform the incantation!" instead.
Carry Out Spellcasting:
	allocate 3 seconds;
	say CastFlav of the noun.
Report Spellcasting:
	if there is a reactive monster or the noun is not reactive-only:
		let L be the location of the player;
		compute spell consequences of the noun;
		repeat with M running through reactive monsters:
			if M is in L, compute spell outrageousness reaction of M to the noun;
		if the noun is staller and the player is in danger:
			say "A magic flash temporarily blinds the enemies in the room, making them lose a turn!";
			repeat with M running through combative monsters:
				now M is stalled;
	otherwise:
		say "Nothing happens. It would seem that this spell only works when used in front of someone who can listen and understand the words.[one of][line break][variable custom style]The laws of this universe are so stupid!!![roman type][line break][or][stopping]";
	follow the speech penalties rules.
Understand "I [magic-spell]" as Spellcasting.

To say CastFlav of (S - a magic-spell):
	[say "[variable custom style]'I [incantation of S]!'[roman type][line break]";]
	if there is a reactive monster, say "You declare loudly[if the outrageousness of S * 300 > the humiliation of the player], trying to say it quickly[one of] to get it over with as fast as possible[or][stopping][otherwise if the outrageousness of S * 350 < the humiliation of the player], making sure to pronounce each syllable correctly[end if]. [HumiliateReflect (the outrageousness of S * 10 * the number of reactive monsters)]";
	otherwise say "You declare out loud to nobody in particular.".

To compute spell outrageousness reaction of (M - a monster) to (S - a magic-spell):
	if M is uninterested and M is unfriendly:
		check perception of M;
	otherwise:
		let O be the latest-appearance of M;
		if diaper quest is 1, now O is the latest-cringe of M;
		if the outrageousness of S > O:
			if M is uninterested, interest M;
			if diaper quest is 0, compute disapproval of M;
			otherwise compute cringe disapproval of M.


incantations-initialised is initially false.
A game universe initialisation rule (this is the incantation initialisation rule):
	if incantations-initialised is false: [allows us to call it early without double-calling it]
		now incantations-initialised is true;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "love to cum";
		now the naughtiness entry is 4;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "am a naughty [boy of the player] who needs a good spanking";
		now the naughtiness entry is 8;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "am a nasty [boy of the player] with nasty [boy of the player] needs";
		now the naughtiness entry is 8;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "hate having unspanked cheeks";
		now the naughtiness entry is 9;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "get horny from being told what to do";
		now the naughtiness entry is 9;
		if diaper quest is 0:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love licking hot throbbing lollies";
			now the naughtiness entry is 5;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love cock";
			now the naughtiness entry is 5;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "want to cum cum with my bum bum";
			now naughtiness entry is 7;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love having anal orgasms";
			now the naughtiness entry is 6;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love the taste of cum";
			now the naughtiness entry is 7;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "cant remember how many [manly-penis]s I sucked today";
			now the naughtiness entry is 8;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "will spread my legs for anyone";
			now the naughtiness entry is 9;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "suck cock for cash";
			now the naughtiness entry is 10;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "am a walking talking free use fuckhole";
			now the naughtiness entry is 11;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "fuck [GrossMates]";
			now the naughtiness entry is 12;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "yield my asshole to [manly-penis] traffic";
			now the naughtiness entry is 12;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "slob fat knobs";
			now the naughtiness entry is 10;
		if pregnancy fetish > 0:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "can't wait to be knocked up";
			now the naughtiness entry is 5;
		if weight gain fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "am a fat disgusting pig";
			now the naughtiness entry is 7;
		if artificial enhancements fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "try to be the best fuck doll I can be";
			now the naughtiness entry is 8;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "want to have even bigger cock pillow tits";
			now the naughtiness entry is 9;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "want a fake-ass fake ass";
			now the naughtiness entry is 9;
		if interracial fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "am addicted to big [BlackCock]";
			now the naughtiness entry is 9;
		if egg laying fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love laying eggs from my butthole";
			now the naughtiness entry is 9;
		if ungape is 0 and diaper quest is 0:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "have assfucked so many cocks that my butthole won't close up any more";
			now the naughtiness entry is 10;
		if condom fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "drink cum from used condoms";
			now the naughtiness entry is 11;
		if bukkake fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "want to be covered in thick sticky man cream";
			now the naughtiness entry is 11;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "use cocks to do my makeup";
			now the naughtiness entry is 11;
		if mythical creature fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "am so loose I can take a horsecock";
			now the naughtiness entry is 11;
		if a2m fetish > 0:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "clean their cocks off with my mouth after they pull out of my asshole";
			now the naughtiness entry is 12;
		if a2m fetish > 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love drinking anal creampies";
			now the naughtiness entry is 13;
		if watersports fetish is 1:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "am a disgusting piss drinking human urinal";
			now the naughtiness entry is 14;
		if diaper lover > 0:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "need to go tinkles";
			now the naughtiness entry is 3;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love thick diapers";
			now the naughtiness entry is 4;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "want my mommy";
			now the naughtiness entry is 5;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "need double diapers to stop me leaking";
			now the naughtiness entry is 6;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "need a hard spanking on my naughty bottom";
			now the naughtiness entry is 7;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "need to be locked in super-thick Pampies";
			now the naughtiness entry is 8;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "deserve to be punished for touching my no-no without permission";
			now the naughtiness entry is 9;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love my wet nappies";
			now the naughtiness entry is 10;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "pee myself for fun";
			now the naughtiness entry is 11;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "am going tinkles in my diaper";
			now the naughtiness entry is 12;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "have my squirt-squirt cummies inside my Pampies";
			now the naughtiness entry is 13;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love sniffing soaking wet nappies";
			now the naughtiness entry is 14;
			if diaper messing >= 3:
				choose a blank row in the Table of Possible Incantations;
				now the phrase entry is "am a pathetic poopy pottypants";
				now the naughtiness entry is 13;
				choose a blank row in the Table of Possible Incantations;
				now the phrase entry is "love doing stinkies in my panties";
				now the naughtiness entry is 15;
				choose a blank row in the Table of Possible Incantations;
				now the phrase entry is "get turned on when I mess myself";
				now the naughtiness entry is 15;
			if diaper messing >= 7:
				choose a blank row in the Table of Possible Incantations;
				now the phrase entry is "sniff messy diapers for fun";
				now the naughtiness entry is 15;
				choose a blank row in the Table of Possible Incantations;
				now the phrase entry is "rub my face in the back of messy nappies";
				now the naughtiness entry is 16;
			if diaper swapping >= 2:
				choose a blank row in the Table of Possible Incantations;
				now the phrase entry is "want you to piss in my padding";
				now the naughtiness entry is 14;
			if diaper cumrag >= 1:
				choose a blank row in the Table of Possible Incantations;
				now the phrase entry is "want your to feel your spunk oozing down inside my Pampies";
				now the naughtiness entry is 15.


[
IDEAS FOR SPELLS:

Buffs: Stats, dodge,
Heal
Body size / slutty stats reduce

]



wand-summoning is a magic-spell.
To decide which number is the raw-magic-cost of (S - wand-summoning):
	decide on 1.
Definition: wand-summoning is reactive-only: decide no.
To say MagicSpellEffect of (S - wand-summoning):
	say "summon a magic wand".
Report Spellcasting wand-summoning:
	check clutch replacement;
	let E be a random worn hand ready clothing;
	if E is clothing, now wearing-target is E;
	let H be a random worn headgear;
	if E is clothing and ((E is vibe-wand or E is cursed or E is unremovable or E is bag of holding) or (H is clothing and H is removal-blocking)): [class wands can't be replaced by this spell]
		say "The spell doesn't seem to work while you're holding [NameDesc of E]!";
	otherwise:
		let W be nintendolls-wand;
		if the class of the player is magical girl, now W is a random heart wand;
		if the class of the player is "magical schoolgirl", now W is notebook;
		PinkWardrobeUnclash W;
		summon W uncursed;
		now W is impermanence;
		say "With a flash of pink, [NameDesc of W] appears in your hand! Wow! [bold type]It has the [']impermanence['] property,[roman type] which means that it will disappear at some point in the near future.";
		if the class of the player is adventurer and the player is the donator and the number of worn headgear is 0 and lolita magical dress is off-stage and the number of worn unremovable nudism-disabling clothing is 0 and a random number between 1 and 2 is 1:
			say "Looking down, you realise that the flash of pink did more than just summon a wand - it sent all of your clothing back to the pink wardrobe, and summoned a cursed but powerful [ShortDesc of lolita magical dress]! ...Is that a good thing, or a bad thing?";
			repeat with C running through worn nudism-disabling clothing:
				dislodge C;
				now C is in pink wardrobe;
			summon lolita magical dress cursed;
			now lolita magical dress is impermanence;
			now lolita magical dress is intelligence-influencing;
			now the raw-magic-modifier of lolita magical dress is 2;
			try examining lolita magical dress.

An all later time based rule (this is the magic power spell rule):
	if the player is not in a predicament room and the total magic power of the player > 0 and wand-summoning is uncastable:
		now wand-summoning is everywhere;
		now the outrageousness of wand-summoning is 6;
		now the incantation of wand-summoning is "call upon the power of girlcum";
		now the text-shortcut of wand-summoning is "call upon the power of girlcum";
		say "[bold type]You now instinctively know how to [MagicSpellEffect of wand-summoning]! The magic incantation is 'I [incantation of wand-summoning]'.[SpelloutrageousnessInfo of wand-summoning][roman type][line break]".

An all later time based rule (this is the magical girl spell rule):
	if the player is not in a predicament room and the class of the player is magical girl and magic-purify is uncastable:
		now magic-purify is everywhere;
		if inhuman pregnancy >= 2:
			now the outrageousness of magic-purify is 6;
			now the incantation of magic-purify is "dedicate my womb to eldritch spawn";
			now the text-shortcut of magic-purify is "dedicate my womb to eldritch spawn";
		otherwise:
			now the outrageousness of magic-purify is 2;
			now the incantation of magic-purify is "love being stalked";
			now the text-shortcut of magic-purify is "love being stalked";
		say "[bold type]You now instinctively know how to [MagicSpellEffect of magic-purify]! The magic incantation is 'I [incantation of magic-purify]'.[SpelloutrageousnessInfo of magic-purify][roman type][line break]".

magic-mapping is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-mapping):
	decide on 5.
Definition: magic-mapping is staller: decide no.
To say MagicSpellEffect of (S - magic-mapping):
	say "conjure a mental map of the entire region".
Report Spellcasting magic-mapping when there is a reactive monster:
	if the magic power of the player > 0:
		repeat with R running through rooms:
			if R is not predicament room and R is regionally in playerRegion, now R is discovered;
		say "You can see a perfect map of the entire [playerRegion] in your mind!";
		display entire map;
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".

magic-blinking is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-blinking):
	decide on 4.
Definition: magic-blinking is reactive-only: decide no.
To say MagicSpellEffect of (S - magic-blinking):
	say "blink away to a neighbouring location".
Report Spellcasting magic-blinking:
	now Neighbour Finder is the location of the player;
	let D be a random N-viable direction;
	let R be the room D from the location of the player;
	if the player is immobile:
		say "Your body shimmers and tries to disappear, but it can't because you're being held in place!";
	otherwise if R is Solid Rock:
		say "Your body shimmers and tries to disappear, but the spell can't find a place to blink to away to!";
	otherwise:
		say "Your body shimmers and then disappears! A split second later, you have reappeared to the [D] in the [R].";
		repeat with M running through interested monsters in the location of the player:
			if the player is getting lucky:
				let F be the favour of M;
				deinterest M;
				FavourSet M to F; [no favour change]
			now M is moved; [won't move again this turn]
		teleport to R.
Definition: magic-blinking is staller: decide no. [Does it make all NPCs lose a turn?]

magic-warping is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-warping):
	decide on 8.
Definition: magic-warping is reactive-only: decide yes.
To say MagicSpellEffect of (S - magic-warping):
	say "teleport away to a random location in this region".
Report Spellcasting magic-warping when there is a reactive monster:
	if the player is trap stuck or the player is vine stuck or a random lake monster is penetrating an orifice:
		say "The magic tries to teleport you, but something holding onto you prevents the magical from successfully moving you!";
	otherwise if playerRegion is school or the player is in a painting-room:
		say "The magic of this dimension seems to prevent this from working!";
	otherwise:
		let target-teleport be Dungeon12;
		if playerRegion is Dungeon:
			while target-teleport is Dungeon12 or target-teleport is the location of the player:
				now target-teleport is a random placed labyrinth room;
		if playerRegion is Woods:
			while target-teleport is Dungeon12 or target-teleport is the location of the player:
				now target-teleport is a random placed jungle room;
		if playerRegion is Hotel:
			while target-teleport is Dungeon12 or target-teleport is the location of the player:
				now target-teleport is a random placed modern room;
		if playerRegion is Mansion:
			while target-teleport is Dungeon12 or target-teleport is the location of the player:
				now target-teleport is a random placed haunted room;
		say "You feel yourself sucked through a portal. The scenery around you slightly changes, and you are now in the [printed name of target-teleport]!";
		repeat with M running through interested monsters in the location of the player:
			let F be the favour of M;
			deinterest M;
			FavourSet M to F; [no favour change]
			now M is moved; [won't move again this turn]
		teleport to target-teleport.
Definition: magic-warping is staller: decide no. [Does it make all NPCs lose a turn?]

magic-inflating is a magic-spell.
Definition: magic-inflating is fetish appropriate:
	if inflation fetish is 1, decide yes;
	decide no.
To say MagicSpellEffect of (S - magic-inflating):
	say "inflate yourself until you're lighter than air".
Report Spellcasting magic-inflating when there is a reactive monster:
	if the weight of the player < -5 or the latex-transformation of the player > 6:
		say "Nothing happens, as you're already lighter than air!";
	otherwise:
		say "Your breasts, belly and butt explode with size as your body is filled with air!";
		let N be 0;
		while N < 100 and the weight of the player > -6:
			increase N by 1; [infinite loop failsafe]
			BustInflate 1;
			if the total fill of belly <= belly limit - 2, Assfill 1 air;
			AssInflate 1.

magic-smarts-timer is a number that varies.
magic-smarting is a magic-spell.
To say MagicSpellEffect of (S - magic-smarting):
	say "temporarily boost your intelligence".
Report Spellcasting magic-smarting when there is a reactive monster:
	say "The magic rushes to your brain, filling it with keen focus and expanded knowledge!";
	increase magic-smarts-timer by default-candy-duration.

an all time based rule (this is the magic smarts decay rule):
	if magic-smarts-timer > default-candy-duration:
		decrease magic-smarts-timer by time-seconds;
		if magic-smarts-timer <= default-candy-duration:
			say "[bold type]The intelligence improving effects of the magic spell have decreased.[roman type][line break]";
	otherwise if magic-smarts-timer > 0:
		decrease magic-smarts-timer by time-seconds;
		if magic-smarts-timer <= 0:
			say "[bold type]The intelligence improving effects of the magic spell have ended.[roman type][line break]";
			now magic-smarts-timer is 0.

magic-speed-timer is a number that varies.
magic-speeding is a magic-spell.
To say MagicSpellEffect of (S - magic-speeding):
	say "temporarily boost your speed".
Report Spellcasting magic-speeding when there is a reactive monster:
	say "The magic rushes to your legs, giving you additional reflexes and speed!";
	increase magic-speed-timer by default-candy-duration.

an all time based rule (this is the magic speed decay rule):
	if magic-speed-timer > default-candy-duration:
		decrease magic-speed-timer by time-seconds;
		if magic-speed-timer <= default-candy-duration:
			say "[bold type]The speed improving effects of the magic spell have decreased.[roman type][line break]";
	otherwise if magic-speed-timer > 0:
		decrease magic-speed-timer by time-seconds;
		if magic-speed-timer <= 0:
			say "[bold type]The speed improving effects of the magic spell have ended.[roman type][line break]";
			now magic-speed-timer is 0.

magic-strength-timer is a number that varies.
magic-strengthening is a magic-spell.
To say MagicSpellEffect of (S - magic-strengthening):
	say "temporarily boost your strength".
Report Spellcasting magic-strengthening when there is a reactive monster:
	say "The magic rushes to your arms, giving them additional energy and strength!";
	increase magic-strength-timer by default-candy-duration.

an all time based rule (this is the magic strength decay rule):
	if magic-strength-timer > default-candy-duration:
		decrease magic-strength-timer by time-seconds;
		if magic-strength-timer <= default-candy-duration:
			say "[bold type]The strength improving effects of the magic spell have decreased.[roman type][line break]";
	otherwise if magic-strength-timer > 0:
		decrease magic-strength-timer by time-seconds;
		if magic-strength-timer <= 0:
			say "[bold type]The strength improving effects of the magic spell have ended.[roman type][line break]";
			now magic-strength-timer is 0.

magic-blind is a magic-spell.
Definition: magic-blind is staller: decide no.
To say MagicSpellEffect of (S - magic-blind):
	say "temporarily blind every enemy in the room".
Report Spellcasting magic-blind when there is a reactive monster:
	let blindSuccess be 0;
	repeat with M running through unfriendly monsters in the location of the player:
		if the blind-status of M is 0:
			say "A dark aura surrounds [NameDesc of M][']s eyes. [big he of M][']s temporarily blinded!";
			now the blind-status of M is 3;
			now blindSuccess is 1;
	if blindSuccess is 0, say "Unfortunately it didn't work on [if the number of unfriendly monsters in the location of the player is 1][NameDesc of a random unfriendly monster in the location of the player][otherwise]anyone[end if]!".

magic-poison is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-poison):
	decide on 3.
To say MagicSpellEffect of (S - magic-poison):
	say "poison every enemy in the room".
Report Spellcasting magic-poison when there is a reactive monster:
	let poisonSuccess be 0;
	repeat with M running through unfriendly monsters in the location of the player:
		if the poison-status of M is 0:
			say "A shining purple mist ripples across [NameDesc of M][']s body. [big he of M][']s been poisoned!";
			now the poison-status of M is 5;
			now poisonSuccess is 1;
	if poisonSuccess is 0, say "Unfortunately it didn't work on [if the number of unfriendly monsters in the location of the player is 1][NameDesc of a random unfriendly monster in the location of the player][otherwise]anyone[end if]!".

magic-paralyse is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-paralyse):
	decide on 10.
To say MagicSpellEffect of (S - magic-paralyse):
	say "paralyse every enemy in the room".
Report Spellcasting magic-paralyse when there is a reactive monster:
	let paralyseSuccess be 0;
	repeat with M running through unfriendly monsters in the location of the player:
		if the paralyse-status of M is 0:
			say "Ropes of golden light wrap around [NameDesc of M][']s body. [big he of M][']s been paralysed!";
			now the paralyse-status of M is 5;
			now paralyseSuccess is 1;
	if paralyseSuccess is 0, say "Unfortunately it didn't work on [if the number of unfriendly monsters in the location of the player is 1][NameDesc of a random unfriendly monster in the location of the player][otherwise]anyone[end if]!".

magic-luck is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-luck):
	decide on 9.
To say MagicSpellEffect of (S - magic-luck):
	say "temporarily increase your luck".
Report Spellcasting magic-luck when there is a reactive monster:
	increase luck-timer of luck-tincture by 30;
	say "A golden aura begins to shimmer around you.[line break][variable custom style][one of]I feel amazing! Maybe I should look for things that would usually require me to get lucky...[or]I feel lucky![stopping][roman type][line break]".
Definition: magic-luck is staller: decide no. [Does it make all NPCs lose a turn?]

magic-unlock is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-unlock):
	decide on 10.
To say MagicSpellEffect of (S - magic-unlock):
	say "unlock a piece of clothing you're wearing[if bondage protection is 0] (that isn't locked with a specific key)[end if]".
Report Spellcasting magic-unlock when there is a reactive monster:
	let LC be the list of worn locked clothing;
	let C be nothing;
	if bondage protection is 0:
		repeat with CC running through LC:
			let K be a random specific-key covering CC;
			if K is a thing, remove CC from LC;
	if the number of entries in LC > 0:
		sort LC in random order;
		now C is entry 1 in LC;
	if C is a thing:
		unlock C;
		say "Your [C] clicks open![line break][variable custom style][one of]Huzzah, it worked[or]Freedom[stopping]![roman type][line break]";
	otherwise:
		say "Nothing happens! There must not be anything you're wearing that this spell can unlock...".
Definition: magic-unlock is staller: decide no. [Does it make all NPCs lose a turn?]

magic-bandage is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-bandage):
	decide on 2.
To say MagicSpellEffect of (S - magic-bandage):
	say "manifest a medkit bandage".
Report Spellcasting magic-bandage when there is a reactive monster:
	let C be a random off-stage bandage;
	if C is a thing:
		now C is carried by the player;
		say "A brand new [C] appears [if C is currently-in-bag]inside your bag of holding[otherwise]in your hand[end if]. Nice!";
	otherwise:
		say "Nothing happens! There must be too many bandages loaded in the game universe already...".
Definition: magic-bandage is staller: decide no. [Does it make all NPCs lose a turn?]

magic-mouthful is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-mouthful):
	decide on 1.
To say MagicSpellEffect of (S - magic-mouthful):
	say "manifest a mouthful of liquid".
Report Spellcasting magic-mouthful when there is a reactive monster:
	let L be semen;
	if diaper quest is 1, now L is milk;
	if lactation fetish is 1 and a random number between -1 and watersports fetish is -1, now L is milk;
	if a random number between 0 and watersports fetish is 1, now L is urine;
	say "[if the total volume of face is 0]Your mouth is suddenly filled to the brim with [variable L][otherwise]The magic begins to manifest [variable L] in your mouth[end if]!";
	FaceFill L by 4.
Definition: magic-mouthful is staller: decide yes. [Does it make all NPCs lose a turn?]

magic-diaper-change is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-diaper-change):
	decide on 4.
To say MagicSpellEffect of (S - magic-diaper-change):
	say "magically make a worn diaper [if diaper messing >= 4]clean and [end if]dry again".
Report Spellcasting magic-diaper-change when there is a reactive monster:
	let D be a random worn diaper;
	if D is diaper:
		if D is diaper-stack:
			let N be a random number between 1 and the number of entries in the list of stacked diapers;
			now D is entry N in the list of stacked diapers;
		say "The magic searches for a worn diaper, and finds [NameDesc of D]! ";
		if D is perceived wet or D is perceived messed, say "Your [D] is suddenly, magically, completely [if D is dirty]unsoiled and [end if]dry again!";
		otherwise say "It's already completely dry, so nothing happens...";
		fully clean D;
	otherwise:
		say "The magic searches for a worn diaper, but can't find one! Nothing happens.".
Definition: magic-diaper-change is staller:
	if there is a worn diaper, decide yes;
	decide no.
Definition: magic-diaper-change is fetish appropriate:
	if diaper lover > 0, decide yes;
	decide no.

magic-clothe is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-clothe):
	decide on 2.
To say MagicSpellEffect of (S - magic-clothe):
	say "summon a random cursed +2 sexy item of clothing".
Report Spellcasting magic-clothe when there is a reactive monster:
	let C be a random off-stage transformation-rare fetish appropriate class summonable clothing;
	if C is clothing:
		PinkWardrobeUnclash C;
		summon C uncursed;
		now C is cursed;
		now the raw-magic-modifier of C is 2;
		say ClassSummonFlav of C;
		compute persistent quest of C;
		unless the quest of C is no-clothing-quest, say QuestFlav of C;
	otherwise:
		say "Nothing happens! The universe couldn't find an item of clothing to make you wear.".
Definition: magic-clothe is staller: decide no. [Does it make all NPCs lose a turn?]

magic-purify is a magic-spell.
To decide which number is the raw-magic-cost of (S - magic-purify):
	decide on 4.
Definition: magic-purify is reactive-only:
	if inhuman pregnancy >= 2, decide no;
	decide yes.
To say MagicSpellEffect of (S - magic-purify):
	say "purify concentrated magical energy".
Check Spellcasting magic-purify:
	let T be a random tentacle-breeder in the location of the player;
	unless T is tentacle-breeder, now T is a random stalking mini-portal;
	if T is nothing, now T is a random stalking wisp;
	unless T is nothing:
		let C be the magic-cost of the noun + the magic-cost of T;
		if the magic power of the player < C, say "You don't have enough magic power to cast that spell (you need [C])." instead.
Report Spellcasting magic-purify:
	let T be a random tentacle-breeder in the location of the player;
	unless T is tentacle-breeder, now T is a random stalking mini-portal;
	if T is nothing, now T is a random stalking wisp;
	unless T is nothing:
		compute MagicDrain of T;
		MagicPurify T.

Magic Power ends here.
