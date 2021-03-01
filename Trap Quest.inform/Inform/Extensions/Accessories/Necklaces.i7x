Necklaces by Accessories begins here.

A necklace is a kind of accessory. The printed name of necklace is usually "[TQlink of item described][item style][accessory-colour of the item described] necklace[clothing-title-after]".

A neckwear is a kind of clothing. A neckwear is neck covering. A neckwear is metal. A neckwear is manly. [Necklaces can now be worn in addition to other neckwear items]

Definition: a neckwear is transformation-protected: decide yes.
Definition: a neckwear is nudism-enabling: decide yes.

There are 6 necklaces.

Figure of sapphire necklace is the file "Items/Accessories/Neck/necklace1.png".
Figure of emerald necklace is the file "Items/Accessories/Neck/necklace2.png".
Figure of ruby necklace is the file "Items/Accessories/Neck/necklace3.png".
Figure of pink diamond necklace is the file "Items/Accessories/Neck/necklace4.png".
Figure of pure diamond necklace is the file "Items/Accessories/Neck/necklace5.png".
Figure of solid gold necklace is the file "Items/Accessories/Neck/necklace6.png".

To decide which figure-name is the examine-image of (R - a necklace):
	if R is sapphire, decide on figure of sapphire necklace;
	if R is emerald, decide on figure of emerald necklace;
	if R is ruby, decide on figure of ruby necklace;
	if R is pink diamond, decide on figure of pink diamond necklace;
	if R is pure diamond, decide on figure of pure diamond necklace;
	decide on figure of solid gold necklace.

To say ShortDesc of (C - a necklace):
	say "[accessory-colour of C] necklace".

neckwear wearability rules is a rulebook. The wearability rules of neckwear is usually neckwear wearability rules.

This is the neckwear already worn rule:
	repeat with O running through worn neck covering clothing:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The neckwear already worn rule is listed in the neckwear wearability rules.

necklace wearability rules is a rulebook. The wearability rules of necklace is usually necklace wearability rules.

This is the necklace already worn rule:
	repeat with O running through worn necklaces:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The necklace already worn rule is listed in the necklace wearability rules.

A submissive collar is a kind of neckwear. A submissive collar is transformation-rare. A submissive collar is womanly.
Definition: a submissive collar is same-type:
	if theme-share-target is submissive collar, decide yes;
	decide no.
To decide which number is the initial outrage of (C - a submissive collar):
	decide on 8.
To decide which number is the bartering value of (T - a submissive collar) for (M - hellhound):
	decide on 3.

anchor collar is a neckwear. anchor collar is rare.

The printed name of anchor collar is "[clothing-title-before]anchor collar[clothing-title-after]". The text-shortcut of anchor collar is "ancc".

To decide which number is the initial outrage of (C - anchor collar):
	decide on 2.

To set up influence of (C - anchor collar):
	now C is strength-influencing.

Figure of anchor collar is the file "Items/Accessories/Neck/anchor1.png".

To decide which figure-name is clothing-image of (C - anchor collar):
	decide on figure of anchor collar.

To say ClothingDesc of (C - anchor collar):
	say "This shiny golden collar has a golden ornament in the shape of an anchor dangling from it.".
To say ShortDesc of (C - anchor collar):
	say "anchor collar".

Definition: anchor collar is yellow themed: decide yes.
Definition: anchor collar is swimming themed: decide yes.

catbell is a neckwear. catbell is unique. catbell is leather.

Definition: catbell is class-relevant:
	if the class of the player is catgirl, decide yes;
	decide no.

Understand "bell", "cat", "collar" as catbell.

The printed name of catbell is "[clothing-title-before]cat collar[clothing-title-after]". The text-shortcut of catbell is "ca".

To decide which number is the initial outrage of (C - catbell):
	decide on 6.
To decide which number is the initial cringe of (C - catbell):
	decide on 10.
To decide which number is the stealth-influence of (C - catbell):
	decide on -8.

To compute class set up of (C - catbell):
	now C is speed.

To set up influence of (C - catbell):
	set up taste-based influence of C.

Figure of catbell is the file "Items/Accessories/Neck/catbell1.png".

To decide which figure-name is clothing-image of (C - catbell):
	decide on figure of catbell.

To say ClothingDesc of (C - catbell):
	say "This thin black leather collar has pink frills and a small jingly bell[if C is worn] that jingles as you move[end if]. It [if C is worn]makes[otherwise]would make[end if] enough noise to help unfriendly monsters keep chasing you.".
To say ShortDesc of (C - catbell):
	say "catbell".

Definition: catbell is cat themed: decide yes.
Definition: catbell is bow themed: decide yes.
Definition: catbell is black themed: decide yes.
Definition: catbell is bell themed: decide yes.

cowbell is a neckwear. cowbell is unique. cowbell can be clanking.

Understand "bell" as cowbell.

The printed name of cowbell is "[clothing-title-before]cowbell[clothing-title-after]". The text-shortcut of cowbell is "cob".

Definition: cowbell is class-relevant:
	if the class of the player is cowgirl, decide yes;
	decide no.

To decide which number is the initial outrage of (C - cowbell):
	decide on 6.
To decide which number is the stealth-influence of (C - cowbell):
	decide on -12.

To say ClassSummonFlav of (C - cowbell):
	say "You feel a coldness on your chest. You look down to see that [if cowbell is held]the cowbell has reappeared[otherwise]a cowbell has appeared[end if]!".

To set up influence of (C - cowbell):
	set up taste-based influence of C.

Figure of cowbell is the file "Items/Accessories/Neck/cowbell1.png".

To decide which figure-name is clothing-image of (C - cowbell):
	decide on figure of cowbell.

To say ClothingDesc of (C - cowbell):
	say "This large metal bell is connected to a white collar by a pink ribbon. When worn, this bell makes lots of noise and makes it much easier for monsters to notice you and find you. You realise that [bold type]walking and resisting[roman type] will probably create a lot of noise whereas [bold type]crawling and submitting[roman type] will make it much more likely that you can avoid the bell ringing. However you can also sense that it has the magic ability to prevent the wearer from rapidly gaining fatigue when their breasts are too full of milk.".
To say ShortDesc of (C - cowbell):
	say "cowbell".

Definition: a cowbell is cow themed: decide yes.
Definition: a cowbell is white themed: decide yes.
Definition: a cowbell is brown themed: decide yes.
Definition: a cowbell is bell themed: decide yes.

To compute clank:
	if cowbell is worn:
		say "[one of][or]Your [cowbell] clanks loudly.[or]You are unable to prevent your [cowbell] from making a huge racket![or][bold type]The loud clanking of your [ShortDesc of cowbell] is likely to attract others to your location![roman type][line break][or]You softly curse at the noise your cowbell is making.[or]You wish you could stop your cowbell's ringing.[as decreasingly likely outcomes]";
		now cowbell is clanking.

cowbelled is a humiliating situation.
Definition: cowbelled (called A) is applicable:
	if the player is not disgraced and cowbell is clanking, decide yes;
	decide no.
To reflect on (A - cowbelled):
	say "[first custom style][one of]I can't believe I have a bell around my neck like an actual cow, heralding my arrival and guiding people to my location...[or]I've got to get rid of this bell, it's making it impossible to get around places without everyone following me![or]My cowbell is still clanking away... how embarrassing![stopping][roman type][line break]".

Carry out going when cowbell is worn:
	if the player is upright or a random number between 1 and 5 is 1, compute clank.

Report resisting when cowbell is worn:
	compute clank.

Report submitting when cowbell is worn:
	if a random number between 1 and 3 is 1, compute clank.

Report begging when cowbell is worn:
	if a random number between 1 and 3 is 1, compute clank.

Report jumping when cowbell is worn:
	compute clank.

An all later time based rule (this is the cowbell stops clanking rule):
	now cowbell is not clanking.

mystical amulet is neckwear. mystical amulet is manly. mystical amulet is unique. mystical amulet is metal. mystical amulet is in Dungeon36. Printed name of mystical amulet is "[clothing-title-before]mystical amulet[clothing-title-after]". The text-shortcut of mystical amulet is "mys".

Check taking mystical amulet:
	if there is an alive caged dungeon boss in Dungeon36 and the noun is in Dungeon36:
		say "It is out of reach inside the cage!" instead.

Report wearing mystical amulet:
	say "[variable custom style]Wow, I feel great![roman type][line break]".

To decide which number is the initial outrage of (C - mystical amulet):
	decide on 0.

Definition: mystical amulet is yellow themed: decide yes.

Figure of mystical amulet is the file "Items/Accessories/Neck/amulet1.png".

To decide which figure-name is clothing-image of (C - mystical amulet):
	decide on figure of mystical amulet.

To say ClothingDesc of (C - mystical amulet):
	say "This amulet has a golden scarab and a large ruby gem. [if C is worn]You can feel pulses of power flowing into your chest.[otherwise]It has a chain, to be worn around the neck.[end if]".

To say ShortDesc of (C - mystical amulet):
	say "mystical amulet".

To decide which number is the strength-influence of (C - mystical amulet):
	decide on 1.

To decide which number is the dexterity-influence of (C - mystical amulet):
	decide on 1.

To decide which number is the intelligence-influence of (C - mystical amulet):
	decide on 1.

To decide which number is the bimbo-influence of (C - mystical amulet):
	decide on -1.

Definition: mystical amulet is immune to change: decide yes.

necktie is a neckwear. The printed name of necktie is "[clothing-title-before]necktie[clothing-title-after]". Understand "tie" as necktie. The text-shortcut of necktie is "nt". necktie is unique. necktie is cotton.

Definition: necktie is class-relevant:
	if the class of the player is schoolgirl and the player is not pigtailed, decide yes;
	decide no.

To compute class set up of (C - necktie):
	if diaper quest is 1, now C is maturity;
	otherwise now C is confidence.

To decide which number is the initial outrage of (C - necktie):
	decide on 3.

To decide which number is the initial cringe of (C - necktie):
	decide on 3.

To set up influence of (C - necktie):
	set up taste-based influence of C.

Figure of necktie is the file "Items/Accessories/Neck/necktie1.png".

To decide which figure-name is clothing-image of (C - necktie):
	decide on figure of necktie.

To say ClothingDesc of (C - necktie):
	say "A tiny apricot tartan necktie, the perfect completion to any slutty schoolgirl outfit.".

To say ShortDesc of (C - necktie):
	say "tiny apricot tartan necktie".

Definition: necktie is tartan themed: decide yes.
Definition: necktie is pink themed: decide yes.


soulstone is a neckwear. Printed name of soulstone is "[clothing-title-before]soulstone[clothing-title-after]". The text-shortcut of soulstone is "so". Understand "swirling", "gem", "amulet", "soul", "stone" as soulstone. soulstone can be soul-embedded or not soul-embedded. soulstone is soul-embedded.

Figure of soulstone is the file "Items/Accessories/Neck/soulstone1.png".
Figure of embedded soulstone is the file "Items/Accessories/Neck/soulstone2.png".

To decide which figure-name is clothing-image of (C - soulstone):
	if the player is soulless, decide on figure of embedded soulstone;
	decide on figure of soulstone.

To say ClothingDesc of (C - soulstone):
	say "A swirling gem [if the player is soulless]pressed into your chest just above your cleavage[otherwise]on an amulet around your neck[end if].";

To say ShortDesc of (C - soulstone):
	say "swirling gem".

Definition: soulstone (called S) is removable:
	if S is not soul-embedded, decide yes;
	decide no.
Definition: soulstone is demonic: decide yes.
Definition: soulstone is orange themed: decide yes.
Definition: soulstone is grey themed:
	if the player is not soulless, decide yes;
	decide no.

Report wearing soulstone:
	if the player is soulless:
		if auto is 0, say "The soulstone shivers as it merges into your skin.";
		now soulstone is soul-embedded.

To decide which number is the initial outrage of (C - soulstone):
	decide on 1.


A stethoscope is a kind of neckwear. The printed name of stethoscope is "[clothing-title-before]stethoscope[clothing-title-after]".

A stethoscope is unique.

Understand "steth", "stetho" as a stethoscope. The text-shortcut of stethoscope is "ste".

To decide which number is the initial outrage of (C - a stethoscope):
	decide on 0.

To say ShortDesc of (C - a stethoscope):
	say "stethoscope".

Report wearing stethoscope:
	say "You put the stethoscope around your neck. You realise you could probably use this to try and detect traps. Maybe even some of those [one of]boxes[or]crates[or]containers[purely at random] you weren't sure about before?".

To decide which number is the intelligence-influence of (C - a stethoscope):
	let I be 2;
	if C is cursed, decrease I by 5;
	increase I by the magic-modifier of C;
	decide on I.

Check taking off a stethoscope:
	if saved-flat-intelligence < the intelligence-influence of the noun + 1, say "As you try to take [the noun] off, you feel consciousness slipping from you. You decide to leave it on..." instead.

[To uniquely set up (C - a stethoscope):
	do nothing. redundant]

Part 1 - Doctor Stethoscope

A doctor stethoscope is a kind of stethoscope. There is 1 doctor stethoscope.

Figure of stethoscope 1 is the file "Items/Accessories/Neck/stethoscope1.png".

To decide which figure-name is clothing-image of (C - a doctor stethoscope):
	decide on figure of stethoscope 1.

To say ClothingDesc of (C - a doctor stethoscope):
	say "You can wear this around your neck. If you do, you will be more reliable when searching crates for traps.".

Definition: a doctor stethoscope is transformation-protected:
	if diaper quest is 1, decide yes;
	decide no.
Definition: a doctor stethoscope is product: decide yes.
Definition: a doctor stethoscope is yellow themed: decide yes.
Definition: a doctor stethoscope is black themed: decide yes.

To decide which number is the alchemy key of (W - a doctor stethoscope):
	decide on 16.

To decide which object is the unique-upgrade-target of (C - a doctor stethoscope):
	decide on a random cock stethoscope.

Report wearing a doctor stethoscope: [When you craft with the wrong recipe, it becomes the lewd form immediately.]
	if the noun is cursed and the noun is upgradable, potentially transform the noun.

Part 2 - Cock Stethoscope

A cock stethoscope is a kind of stethoscope. There is 1 cock stethoscope.

Figure of stethoscope 2 is the file "Items/Accessories/Neck/stethoscope2.png".

To decide which figure-name is clothing-image of (C - a cock stethoscope):
	decide on figure of stethoscope 2.

To decide which number is the initial outrage of (C - a cock stethoscope):
	decide on 7.

Definition: a cock stethoscope is penis themed: decide yes.

To say ShortDesc of (C - a cock stethoscope):
	say "cock stethoscope".

To say ClothingDesc of (C - a cock stethoscope):
	say "A normal doctor's stethoscope but with cocks for your ears and at the sensor end. You can wear this around your neck. If you do, you will be more reliable when searching crates for traps.".


vampiric cape is a neckwear. vampiric cape is unique. Printed name of vampiric cape is "[clothing-title-before]vampiric cape[clothing-title-after]". The text-shortcut of vampiric cape is "vc".

Definition: vampiric cape is class-relevant:
	if the class of the player is vampire spawn, decide yes;
	decide no.

To say ClassSummonFlav of (C - vampiric cape):
	say "A long black cape suddenly appears on your back! You feel it making you quicker and more nimble!".

Figure of vampiric cape is the file "Items/Accessories/Neck/vampiriccape1.png".

To decide which figure-name is clothing-image of (C - vampiric cape):
	decide on figure of vampiric cape.

To say ClothingDesc of (C - vampiric cape):
	say "A black cape with a red inner lining[if C is worn]. It drapes down your back and sways with your every move[end if].".

To say ShortDesc of (C - vampiric cape):
	say "vampiric cape".

To decide which number is the initial outrage of (C - vampiric cape):
	decide on 1.

To decide which number is the dexterity-influence of (C - vampiric cape):
	let X be 2;
	increase X by the magic-modifier of C;
	decide on X.

Definition: vampiric cape is black themed: decide yes.
Definition: vampiric cape is red themed: decide yes.


Necklaces ends here.
