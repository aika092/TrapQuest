Magic Power by Player begins here.

[!<Player>@<magicPower:Integer>*

Raw magic power

*!]
The player has a number called magic-power.

[Magic power as treated by spells and so on.]
To decide which number is the magic power of the player:
	if magic-power of the player < 2 and the trophy-mode of magic-trophy is 2, decide on 2;
	otherwise decide on the magic-power of the player.


[Creating functions for magic power management so I can use these to trigger becoming the Magical Girl if you don't have another class when gaining magic power]

To MagicPowerUp (X - a number):
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
		otherwise if the magic-power of the player < 5:
			increase the magic-power of the player by 1;
		otherwise if X is 0:
			if a random number between 1 and 5 is 1 and the player is deserving of more intelligence:
				say "Your body is so full of magic that the excess fizzles into your brain, making you slightly smarter.";
				IntUp 1;
			otherwise if a random number between 1 and 5 is 1 and the player is deserving of more dexterity:
				say "Your body is so full of magic that the excess fizzles into your ligaments, making you more limber.";
				DexUp 1;
			otherwise:
				say "Your body is so full of magic that the excess fizzles off of you with a pink display of sparkles.".


[###Selkie: might be fun to have a [Smartening] function that would say, depending on intelligence, stuff like "getting smarterer", "getting better at thinking and stuff", "becoming way smarter", "becoming less sluggish", "working more smoothly", "operating more efficiently", "functioning keenly", "sparkling with brilliance".]
To MagicPowerDown (X - a number):
	if X > the magic-power of the player, now X is the magic-power of the player;
	while X > 0:
		decrease X by 1;
		decrease the magic-power of the player by 1.


[Stuff to do with casting spells goes below.]
the magic consequences rules is a rulebook.

To decide which number is MagicPowerDamage:
	let X be the magic power of the player;
	increase X by magic theme bonus;
	if X > 6, decide on 6;
	decide on X.

To compute spell consequences of (Z - a thing):
	compute MagicDrain of Z;
	follow the magic consequences rules.

To compute MagicDrain of (Z - a thing):
	if the magic-power of the player > 0 and the trophy-mode of magic-trophy is 0:
		MagicPowerDown 1.


Definition: a tentacle monster is a tripper if the class of the player is "magical schoolgirl".

To say TripChanceFlav of (M - a tentacle monster):
	do nothing.

To decide which number is the tripping roll of (M - a tentacle monster):
	if there is a worn uncursed living belt of sturdiness, decide on -9999;
	decide on 9999.

To say MonsterTrippedFlav of (M - a tentacle monster):
	say "Roaring with unrestrained arousal, [NameDesc of M] picks you up off the ground with several strong tentacles!";
	repeat with H running through worn equippables:
		now H is in the location of the player;
		say "Your [H] is wrestled out of your hand and thrown to the corner of the room!".

Check taking equippable when the player is immobile:
	if the noun is not held, say "You try to reach it but it's too far away!" instead.


This is the magical schoolgirl cums then wins her fight orgasm resolution rule:
	let H be a random equippable in the location of the player;
	if there is a tentacle monster penetrating a body part and the class of the player is "magical schoolgirl" and H is an actually summonable clothing and the body soreness of the player < 10:
		now the fatigue of the player is 0;
		say "Your orgasm fills you with renewed energy! You feel like you could escape and keep fighting if you want. Do you want to? ";
		if the player is consenting:
			say "With a flick of your fingers, your [ShortDesc of H] comes flying back to your hand! You swerve it in an arc and the tentacles holding [if there is a tentacle monster penetrating a fuckhole]and filling [end if]you are sliced in two! You fall to the ground gracefully, landing on two feet.";
			now the stance of the player is 0;
			now H is worn by the player;
			repeat with M running through monsters in the location of the player:
				dislodge M;
			if the player is able to speak, say "[variable custom style]'[if the player is a nympho]That was fun, but I have to beat you up now, sorry[otherwise if the player is a pervert]You've had your fun, but now you'll pay the price for your sins[otherwise]How dare you make me... orgasm... on your... eww! You will pay with your life[end if]!'[roman type][line break]";
			if the magic-power of the player < 2 and H is zap ready:
				say "You feel your body filled with more magic energy!";
				MagicPowerUp (2 - the magic-power of the player).
The magical schoolgirl cums then wins her fight orgasm resolution rule is listed last in the orgasm resolution rules.

Part - Spells

A magic-spell is a kind of backdrop.
A magic-spell has a number called the outrageousness.
A magic-spell has a text called the incantation. [Understand the incantation property as describing a magic-spell.] [Unnecessary because we also set the text shortcut to this]

Definition: a magic-spell is reactive-only: decide yes. [Does it only work when used in front of someone who's listening?]

Table of Possible Incantations
phrase (text)	naughtiness (number)
with 50 blank rows


To say NewbieSpellFlav:
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've found a magic spell! Spells consume magic power, which is not particularly plentiful but you should hopefully acquire a bit of it over your adventure. Most spells require you to say the rude words while someone can hear (and understand) you.[roman type][line break][or][stopping]".

To compute learning of (S - a magic-spell):
	now S is everywhere;
	sort the Table of Possible Incantations in random order;
	choose row 1 from the Table of Possible Incantations;
	now the outrageousness of S is the naughtiness entry;
	now the incantation of S is the phrase entry;
	now the text-shortcut of S is the phrase entry;
	say "You have learned how to [MagicSpellEffect of S]! The magic incantation is 'I [incantation of S]'.[SpelloutrageousnessInfo of S]";
	blank out the whole row.

To say ExamineDesc of (S - a magic-spell):
	say "You know how to [MagicSpellEffect of S]! The magic incantation is 'I [incantation of S]'.[SpelloutrageousnessInfo of S]".

To say SpelloutrageousnessInfo of (S - a magic-spell):
	if debuginfo > 0, say "[input-style]outrageousness rating: [outrageousness of S]/20[roman type][line break]".

To say MagicSpellEffect of (S - a magic-spell):
	say "ERROR - missing effect description for [S]".

Definition: a magic-spell is uncastable rather than castable if the incantation of it is "".
Definition: a magic-spell is fetish appropriate: decide yes.

Spellcasting is an action applying to one thing.
Check Spellcasting:
	if the noun is uncastable, say "You don't know that spell." instead;
	if the player is in a predicament room, say "It seems like magic doesn't work here..." instead;
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
			if M is uninterested, now M is interested;
			if diaper quest is 0, compute disapproval of M;
			otherwise compute cringe disapproval of M.


A game universe initialisation rule:
	if diaper quest is 0:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "love having anal orgasms";
		now the naughtiness entry is 6;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "love cock";
		now the naughtiness entry is 7;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "spread my legs for anyone any time";
		now the naughtiness entry is 8;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "drink cum out of used condoms";
		now the naughtiness entry is 9;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "suck cock for cash";
		now the naughtiness entry is 10;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "fuck [GrossMates]";
		now the naughtiness entry is 11;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "let guys clean their cocks off in my mouth after they've finished in my asshole";
		now the naughtiness entry is 12;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "love drinking anal creampies";
		now the naughtiness entry is 13;
	if watersports fetish is 1:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "am a disgusting piss drinking urinal";
		now the naughtiness entry is 14;
	if interracial fetish is 1:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "am addicted to big black cock";
		now the naughtiness entry is 9;
	if bukkake fetish is 1:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "want to be covered in thick sticky man cream";
		now the naughtiness entry is 11;
	if weight gain fetish is 1:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "am a fat disgusting pig";
		now the naughtiness entry is 6;
	if pregnancy fetish > 0:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "can't wait to be knocked up";
		now the naughtiness entry is 5;
	if artificial enhancements fetish is 1:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "try to be the best fuck doll I can be";
		now the naughtiness entry is 7;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "want to have massive fake ass cheeks and even bigger cock pillow tits";
		now the naughtiness entry is 9;
	if ungape is 0 and diaper quest is 0:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "have assfucked so many cocks that my butthole won't close up any more";
		now the naughtiness entry is 10;
	if mythical creatures fetish is 1:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "am so loose I can take a horsecock";
		now the naughtiness entry is 11;
	if egg laying fetish is 1:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "love laying eggs from my butthole";
		now the naughtiness entry is 10;
	if diaper lover > 0:
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "love my wet nappies";
		now the naughtiness entry is 9;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "pee myself for fun";
		now the naughtiness entry is 10;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "need a hard spanking on my naughty bottom";
		now the naughtiness entry is 7;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "deserve to be punished for touching my no-no without permission";
		now the naughtiness entry is 8;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "need to be kept in super-thick Pampies";
		now the naughtiness entry is 7;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "am going tinkles in my diaper";
		now the naughtiness entry is 11;
		choose a blank row in the Table of Possible Incantations;
		now the phrase entry is "want my mommy";
		now the naughtiness entry is 5;
		if diaper messing >= 3:
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "love doing stinkies in my panties";
			now the naughtiness entry is 14;
			choose a blank row in the Table of Possible Incantations;
			now the phrase entry is "get turned on when I poop my panties";
			now the naughtiness entry is 16.


[
IDEAS FOR SPELLS:

Buffs: Stats, dodge,
Heal
Body size / slutty stats reduce


]


magic-mapping is a magic-spell.
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
	otherwise if the magic power of the player > 0:
		say "Your body shimmers and then disappears! A split second later, you have reappeared to the [D] in the [R].";
		repeat with M running through interested monsters in the location of the player:
			let F be the favour of M;
			bore M for 0 seconds;
			now the favour of M is F; [no favour change]
			now M is moved; [won't move again this turn]
		teleport to R;
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".


magic-inflating is a magic-spell.
Definition: magic-inflating is fetish appropriate if inflation fetish is 1.
To say MagicSpellEffect of (S - magic-inflating):
	say "inflate yourself until you're lighter than air".
Report Spellcasting magic-inflating when there is a reactive monster:
	if the weight of the player < -5 or the latex-transformation of the player > 6:
		say "Nothing happens, as you're already lighter than air!";
	otherwise if the magic power of the player > 0:
		say "Your breasts, belly and butt explode with size as your body is filled with air!";
		let N be 0;
		while N < 100 and the weight of the player > -6:
			increase N by 1; [infinite loop failsafe]
			BustInflate 1;
			if the total fill of belly <= belly limit - 2, Assfill 1 air;
			AssInflate 1;
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".


magic-smarts-timer is a number that varies.
magic-smarting is a magic-spell.
To say MagicSpellEffect of (S - magic-smarting):
	say "temporarily boost your intelligence".
Report Spellcasting magic-smarting when there is a reactive monster:
	if the magic power of the player > 0:
		say "The magic rushes to your brain, filling it with keen focus and expanded knowledge!";
		increase magic-smarts-timer by default-candy-duration;
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".

a time based rule (this is the magic smarts decay rule):
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
	if the magic power of the player > 0:
		say "The magic rushes to your legs, giving you additional reflexes and speed!";
		increase magic-speed-timer by default-candy-duration;
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".

a time based rule (this is the magic speed decay rule):
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
magic-strengthing is a magic-spell.
To say MagicSpellEffect of (S - magic-strengthing):
	say "temporarily boost your strength".
Report Spellcasting magic-strengthing when there is a reactive monster:
	if the magic power of the player > 0:
		say "The magic rushes to your arms, giving them additional energy and strength!";
		increase magic-strength-timer by default-candy-duration;
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".

a time based rule (this is the magic strength decay rule):
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
To say MagicSpellEffect of (S - magic-blind):
	say "temporarily blind every enemy in the room".
Report Spellcasting magic-blind when there is a reactive monster:
	if the magic power of the player > 0:
		let blindSuccess be 0;
		repeat with M running through unfriendly monsters in the location of the player:
			if the blind-status of M is 0:
				say "A dark aura surrounds [NameDesc of M][']s eyes. [big he of M][']s temporarily blinded!";
				now the blind-status of M is 3;
				now blindSuccess is 1;
		if blindSuccess is 0, say "Unfortunately it didn't work on [if the number of unfriendly monsters in the location of the player is 1][NameDesc of a random unfriendly monster in the location of the player][otherwise]anyone[end if]!";
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".

magic-poison is a magic-spell.
To say MagicSpellEffect of (S - magic-poison):
	say "poison every enemy in the room".
Report Spellcasting magic-poison when there is a reactive monster:
	if the magic power of the player > 0:
		let poisonSuccess be 0;
		repeat with M running through unfriendly monsters in the location of the player:
			if the poison-status of M is 0:
				say "A shining purple mist ripples across [NameDesc of M][']s body. [big he of M][']s been poisoned!";
				now the poison-status of M is 5;
				now poisonSuccess is 1;
		if poisonSuccess is 0, say "Unfortunately it didn't work on [if the number of unfriendly monsters in the location of the player is 1][NameDesc of a random unfriendly monster in the location of the player][otherwise]anyone[end if]!";
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".


magic-paralyze is a magic-spell.
To say MagicSpellEffect of (S - magic-paralyze):
	say "paralyze every enemy in the room".
Report Spellcasting magic-paralyze when there is a reactive monster:
	if the magic power of the player > 0:
		let paralyzeSuccess be 0;
		repeat with M running through unfriendly monsters in the location of the player:
			if the paralyze-status of M is 0:
				say "Ropes of golden light wrap around [NameDesc of M][']s body. [big he of M][']s been paralyzed!";
				now the paralyze-status of M is 5;
				now paralyzeSuccess is 1;
		if paralyzeSuccess is 0, say "Unfortunately it didn't work on [if the number of unfriendly monsters in the location of the player is 1][NameDesc of a random unfriendly monster in the location of the player][otherwise]anyone[end if]!";
	otherwise:
		say "Nothing happens. Perhaps you need more magical energy first.".























Magic Power ends here.

