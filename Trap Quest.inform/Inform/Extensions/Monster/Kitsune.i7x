Kitsune by Monster begins here.

kitsune is a monster. kitsune is intelligent. kitsune has a number called vanish timer. The vanish timer of kitsune is -1. kitsune has a number called times-revealed. kitsune has a number called special-gifted. kitsune has a monster called target-disguise.

Understand "vampiress", "seductive" as kitsune when the target-disguise of the item described is vampiress. Understand "cultist", "acolyte", "ardent" as kitsune when the target-disguise of the item described is acolyte.

Definition: kitsune is mansion dwelling: decide yes.

Figure of kitsune is the file "NPCs/Mansion/Kitsune/kitsune1.jpg".
Figure of kitsune interact 1 is the file "NPCs/Mansion/Kitsune/kitsune2.jpg".
Figure of kitsune interact 2 is the file "NPCs/Mansion/Kitsune/kitsune3.jpg".
Figure of kitsune interact 3 is the file "NPCs/Mansion/Kitsune/kitsune4.jpg".
Figure of kitsune interact 4 is the file "NPCs/Mansion/Kitsune/kitsune5.jpg".

To decide which figure-name is the monster-image of (M - kitsune):
	if target-disguise of M is not M:
		if the target-disguise of M is a thing, decide on examine-image of target-disguise of M;
	decide on figure of kitsune.

To say ShortDesc of (M - kitsune):
	say "[if target-disguise of M is not M][ShortDesc of target-disguise of M][otherwise]kitsune[end if]".

To say MediumDesc of (M - kitsune):
	say "[if target-disguise of M is not M][MediumDesc of target-disguise of M][otherwise]kitsune[end if]".

To say MonsterDesc of (M - kitsune):
	if the target-disguise of M is M:
		say "A quite unusual [man of M] stands before you. You could almost convince yourself [he of M] was a perfectly ordinary human, if not for the bushy tails playfully dancing behind [him of M]. [big he of M] wears a red and gold two-piece kimono that exposes [his of M] midriff, and [his of M] face is concealed by a large fox themed mask. [big he of M] seems to only be bothered to keep one eye on you, as though you barely interest or threaten [him of M].";
	otherwise if the target-disguise of M is monster:
		say MonsterDesc of target-disguise of M;
	otherwise:
		say "Kitsune failing to disguise properly, please report bug.".

To set up (M - kitsune):
	now the monstersetup of M is 1;
	now the difficulty of M is 12;
	now the health of M is the maxhealth of M;
	set up disguise of M.

To set up disguise of (M - kitsune):
	let R be a random number between 1 and 2;
	if R is 1:
		now the target-disguise of M is vampiress;
	otherwise:
		now the target-disguise of M is a random acolyte;
	now the text-shortcut of M is the text-shortcut of the target-disguise of M;

To reveal disguise of (M - kitsune):
	if M is in the location of the player, say "Standing in place of [NameDesc of M] is now a ";
	now the target-disguise of M is M;
	now the text-shortcut of M is "kt";
	if M is in the location of the player, say "[M]!".

This is the spawn initial kitsune rule:
	if kitsune is off-stage:
		set up kitsune;
		summon kitsune in the mansion.
The spawn initial kitsune rule is listed in the setting up mansion monsters rules.

To compute unique unsimulated periodic effect of (M - kitsune):
	if the vanish timer of M is 0:
		if M is in the location of the player, say "[BigNameDesc of M] vanishes in a puff of pink smoke!";
		regionally place M;
		bore M;
		set up disguise of M;
	decrease the vanish timer of M by 1.

Part 1 - Perception

Definition: kitsune is objectifying the player: decide no.
Definition: kitsune is babifying the player: decide no.
Definition: kitsune is normally annoyed: decide yes. [Kitsune never drops to unfriendly levels of favour]

To compute perception of (M - kitsune):
	now M is interested;
	if the target-disguise of M is M:
		say "Well hello there. Have anything for me?";
		alwayscutshow figure of kitsune interact 2 for M;
	otherwise:
		bore M.


Part 2 - Combat

Section 1 - Damage

To decide which number is the damage modifier of (M - kitsune):
	decide on (attack-damage * -1).

[The kitsune doesn't actually fight no matter what happens, if you attack her while she's out of disguise she'll just laugh at you and disappear. Attacking her in disguise is how you actually trigger her to be interactible.]
To compute failed damage of (M - kitsune):
	if M is uninterested and the target-disguise of M is not M:
		compute KitsuneReveal of M;
	otherwise:
		say "The kitsune suddenly vanishes in a puff of pink smoke and laughter!";
		cutshow figure of kitsune interact 4 for M;
		bore M;
		regionally place M;
		now the vanish timer of M is -1;
		set up disguise of M.



Part 3 - Conversation

Section 1 - Greeting

To compute KitsuneReveal of (M - kitsune):
	say "[BigNameDesc of M] suddenly shimmers and disappears in a puff of pink smoke![line break][speech style of M]'[if the times-revealed of M is 0]Oh my, you saw through my disguise! I'm so impressed, stranger! Say, you look like an adventurer of wealth and taste. If you come across anything particularly shiny and impressive in your quest, I'd be very interested. I might just have some... interesting items that could be of use to you.'[otherwise]Ah, hello again! My offer still stands, your shiny things for my favour, and valuable rewards!'[end if][roman type][line break]";
	now M is interested;
	reveal disguise of M;
	increase the times-revealed of M by 1;
	now the vanish timer of M is 10;
	FavourUp M by 1. [the kitsune likes playing hide and seek with you]

To say FirstResponse of (M - kitsune):
	if the target-disguise of M is M:
		say "[speech style of M]'Hey there. Feeling lucky?'[roman type][line break]";
		alwayscutshow figure of kitsune interact 2 for M;
	otherwise:
		compute KitsuneReveal of M.

To say RepeatResponse of (M - kitsune):
	if the target-disguise of M is M:
		say "[speech style of M]'How do you feel about changing your luck?'[roman type][line break]";
		alwayscutshow figure of kitsune interact 2 for M;
	otherwise:
		compute KitsuneReveal of M.


Section 2 - Questioning

To say WhereAnswer of (M - kitsune):
	say "[speech style of M]'[one of]Well wherever I keep myself is my store, so that is where I would say you are.'[or]A rotted old house. It's pretty dangerous, unless of course you're a master of illusions. Like me.'[at random][roman type][line break]";
	alwayscutshow figure of kitsune interact 1 for M.

To say WhoAnswer of (M - kitsune):
	say "[speech style of M]'[one of]Oh my, have I not introduced myself? They call me Kongiku.'[or]I am just a poor bored spirit looking for something interesting to while away the time.'[at random][roman type][line break]";
	alwayscutshow figure of kitsune interact 1 for M.

To say StoryAnswer of (M - kitsune):
	say "[speech style of M]'[one of]I used to watch over a magical sword, but I got in a spot of trouble and found myself banished here. [or]A hideous altar witch got very cross with me and trapped me here. [or]I had a property disagreement with some old friends and they had me banished. Can you believe that? [at random]But it's not all bad, sometimes I run into interesting people like you.'[roman type][line break]";
	alwayscutshow figure of kitsune interact 1 for M.

To say EscapeAnswer of (M - kitsune):
	say "[speech style of M]'If I knew that, I wouldn't still be here talking to you.'[roman type][line break]";
	alwayscutshow figure of kitsune interact 1 for M.

To say AdviceAnswer of (M - kitsune):
	say "[speech style of M]'I've got some special toys I might be willing to part with for frequent customers.'[roman type][line break]";
	alwayscutshow figure of kitsune interact 2 for M.


Part 4 - Trading

To decide which number is the bartering value of (T - a thing) for (M - kitsune):
	if T is plentiful accessory and M is intelligent, decide on the price of T / 2;
	if T is a mystical amulet, decide on 20;
	if T is gem-strapon, decide on 15;
	decide on 0.

To say MonsterOfferRejectFlav of (M - kitsune) to (T - a thing):
	say "[speech style of M]'Hmm, no, I'm just not feeling it with that.'[roman type][line break]";
	alwayscutshow figure of kitsune interact 1 for M.

To say MonsterOfferAcceptFlav of (M - kitsune) to (T - a thing):
	say "[speech style of M]'Yes, that works for me!'[roman type][line break]".

To say OfferThanksFlav of (M - kitsune) for (T - a thing):
	say "[speech style of M]'Now, what do I have for you this time, hmm?'[roman type][line break]";
	alwayscutshow figure of kitsune interact 3 for M.

To compute offer reward of (M - kitsune) for (T - a thing):
	if M is intelligent, FavourUp M by the bartering value of T for M;
	if the favour of M > 8 and the special-gifted of M is 0:
		say "[speech style of M]'How about something special this time? I know, these are cute!'[roman type][line break]";
		now fox ears is in the location of M;
		say "A headband with a pair of fox ears on it appears on the ground!";
		now the special-gifted of M is 1;
		compute autotaking fox ears;
	otherwise if the favour of M > 13 and the special-gifted of M is 1:
		say "[speech style of M]'Hmm, something else interesting. How about these sandals, only slightly used?'[roman type][line break]";
		let D be a random sandals;
		now D is in the location of M;
		say "A pair of wooden sandals appears on the ground!";
		now the special-gifted of M is 2;
		compute autotaking D;
	otherwise if the favour of M > 18 and the special-gifted of M is 2:
		say "[speech style of M]'You could use some class. Have this!'[roman type][line break]";
		let D be a random illusory kimono;
		now D is in the location of M;
		say "A strange, shimmering kimono appears on the ground!";
		now the special-gifted of M is 3;
		compute autotaking D;
	otherwise if the favour of M > 23 and the special-gifted of M is 3:
		say "[speech style of M]'Okay, now this is my best little present. Enjoy!'[roman type][line break]";
		let D be a random midnight tanto;
		now D is in the location of M;
		say "A midnight black knife appears on the ground!";
		now the special-gifted of M is 4;
		compute autotaking D;
	otherwise: [If the player has no smoke bombs, they get a smoke bomb. Otherwise they get the skeleton key. Otherwise they get more smoke bombs. Otherwise they get a random item.]
		say "[speech style of M]'How about... this?'[roman type][line break]";
		let I be a random off-stage smoke bomb;
		if skeleton key is off-stage and (there is a held smoke bomb or I is nothing), now I is skeleton key;
		if I is nothing, now I is a random thing in Standard Item Pen;
		if I is clothing:
			let Z be a random number from 5 to 8;
			while the price of I < Z:
				if a random number from 1 to 4 > 1:
					let I be a random clothing in Standard Item Pen;
					decrease Z by 1;
				otherwise:
					now Z is -1;
		if I is accessory:
			if a random number from 1 to 3 is 1:
				now I is ruby;
			otherwise if a random number from 1 to 3 is 1:
				now I is emerald;
			otherwise:
				now I is sapphire;
		if I is plentiful accessory, set shortcut of I;
		if I is a bra:
			while the size of I < the largeness of breasts + 2 and I is not training bra:
				if extreme proportions fetish is 1 and the size of I < 15, increase the size of I by 1;
				if extreme proportions fetish is 0 and the size of I < 10, increase the size of I by 1;
				if a random number between 1 and 5 > 2, break;
			if the size of I > max breast size and max breast size >= min size of I, now the size of I is max breast size;
		now I is in the location of M;
		say "A [printed name of I] appears on the ground!";
		compute autotaking I;
		unless I is smoke bomb or I is skeleton key, restock I.


Kitsune ends here.

