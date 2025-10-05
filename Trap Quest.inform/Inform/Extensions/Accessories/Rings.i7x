Rings by Accessories begins here.

A ring is a kind of accessory. The printed name of ring is usually "[TQlink of item described][item style][accessory-colour of the item described] ring[clothing-title-after]". The printed plural name of ring is usually "[TQlink of item described][item style][accessory-colour of the item described] rings[clothing-title-after]".

There are 25 rings.

Figure of sapphire ring is the file "Items/Accessories/Arm/ring1.png".
Figure of emerald ring is the file "Items/Accessories/Arm/ring2.png".
Figure of ruby ring is the file "Items/Accessories/Arm/ring3.png".
Figure of pink diamond ring is the file "Items/Accessories/Arm/ring4.png".
Figure of pure diamond ring is the file "Items/Accessories/Arm/ring5.png".
Figure of solid gold ring is the file "Items/Accessories/Arm/ring6.png".

To decide which text is the clarificationText of (F - Figure of sapphire ring):
	decide on the substituted form of "[JewelleryClarification]".
To decide which text is the clarificationText of (F - Figure of emerald ring):
	decide on the substituted form of "[JewelleryClarification]".
To decide which text is the clarificationText of (F - Figure of ruby ring):
	decide on the substituted form of "[JewelleryClarification]".
To decide which text is the clarificationText of (F - Figure of pink diamond ring):
	decide on the substituted form of "[JewelleryClarification]".
To decide which text is the clarificationText of (F - Figure of pure diamond ring):
	decide on the substituted form of "[JewelleryClarification]".
To decide which text is the clarificationText of (F - Figure of solid gold ring):
	decide on the substituted form of "[JewelleryClarification]".

To decide which figure-name is the examine-image of (R - a ring):
	if R is sapphire, decide on figure of sapphire ring;
	if R is emerald, decide on figure of emerald ring;
	if R is ruby, decide on figure of ruby ring;
	if R is pink diamond, decide on figure of pink diamond ring;
	if R is pure diamond, decide on figure of pure diamond ring;
	decide on figure of solid gold ring.

ring wearability rules is a rulebook. The wearability rules of rings is usually ring wearability rules.

This is the rings limited to eight rule:
	if the number of worn rings >= 8:
		if summoning is 0 and autowear is false, say "You are already wearing eight rings, and they are too small to fit on your thumbs.";
		rule fails.
The rings limited to eight rule is listed in the ring wearability rules.

To say ShortDesc of (C - a ring):
	say "[accessory-colour of C] ring".

The player has a number called comeuppance-stone-progress.[str]
The player has a number called brat-stone-progress.[dex]
The player has a number called fucktoy-stone-progress.[int]

The player has a number called glory-stone-progress.[str]
The player has a number called bondage-stone-progress.[dex]
The player has a number called piercing-stone-progress.[int]

[Wearing max size sex toy, max appearance score, next to a gloryhole, next to a summoning portal]
Definition: yourself is glory-stone-qualifying:
	if diaper quest is 1, decide no;
	if the saved appearance of the player >= 17, decide yes;
	if there is a gloryhole in the location of the player, decide yes;
	decide no.

Definition: yourself is piercing-stone-qualifying:
	if diaper quest is 1, decide no;
	repeat with P running through worn piercings:
		if the concealer of P is not clothing, decide yes;
	decide no.

[Piss them off as much as possible, and lure them at least 3 rooms away from their home.]
Definition: a monster (called M) is brat-stone-qualifying:
	if diaper quest is 1, decide no;
	if M is not in the location of the player, decide no;
	unless M is unfriendly, decide no;
	if M is gargoyle:
		if the distance of Mansion25 > 2 or the player is in the Woods, decide yes;
	if M is shopkeeper:
		if the distance of Dungeon41 > 2, decide yes;
	if M is witch:
		if the distance of Woods20 > 2, decide yes;
	if M is dominatrix:
		if the distance of Hotel37 > 2, decide yes;
	if M is nurse:
		if the distance of School11 > 2, decide yes;
	decide no.

A humility-stone is a kind of ring. A humility-stone is unique. A humility-stone is usually blessed. A humility-stone is usually wizardry. A humility-stone can be unchallenged, or challenged. A humility-stone is usually unchallenged.
Definition: a humility-stone is immune to change: decide yes.
Definition: a humility-stone is blessable: decide no.
Definition: a humility-stone is cursable: decide no.
Definition: a humility-stone is magic themed: decide yes.

To say StoneDesc of (C - a humility-stone):
	say "a Master of Humility.".

Check taking humility-stone:
	if the player is not an april 2025 top donator:
		say debugadvert;
		StatueRestore the noun instead.
Check wearing humility-stone:
	if the player is not an april 2025 top donator:
		say debugadvert;
		StatueRestore the noun instead.

Report taking off a humility-stone:
	say "After it's removed, [NameDesc of the noun] blurs and disappears. Maybe it returned where it came from?";
	try dropping the noun;
	if the player is an april 2025 top donator, StatueRestore the noun.

To StatueRestore (S - a thing):
	do nothing.

glory-stone is a humility-stone. glory-stone is unique. The printed name of glory-stone is "[TQlink of item described][item style][if the item described is worn]The Glory Stone[otherwise]solid gold ring[end if][clothing-condensed-after]". The text-shortcut of glory-stone is "obst". The accessory-colour of glory-stone is solid gold.

To say StoneDesc of (C - glory-stone):
	say "a Master of Glory.".

To StatueRestore (S - glory-stone):
	now S is off-stage.

Check taking glory-stone:
	if the player is not an april 2025 top donator, say debugadvert instead.

Report wearing glory-stone:
	say "Ripples of pain from your arm across every muscle in your body.[line break][first custom style]'[if glory-stone is challenged]Incredible. I did not think you could do it! [otherwise]Your acheivements are something to behold. [end if]I, The Glory Stone, acknowledge you.'[roman type][line break]";
	PainUp 1.

fucktoy-stone is a humility-stone. fucktoy-stone is unique. The printed name of fucktoy-stone is "[TQlink of item described][item style][if the item described is worn]The Fucktoy Stone[otherwise]sapphire ring[end if][clothing-condensed-after]". The text-shortcut of fucktoy-stone is "ftst". The accessory-colour of fucktoy-stone is sapphire.

Report going when the player is in Dungeon10:
	if diaper quest is 0 and fucktoy-stone-progress of the player > 0 and fucktoy-stone is not held:
		now fucktoy-stone is in Dungeon10.

To say StoneDesc of (C - fucktoy-stone):
	say "the Finest Fucktoy".

Report wearing fucktoy-stone:
	say "A wave of pleasure crashes up your arm, across your shoulder, and up your neck before slamming into your brain.[line break][second custom style]'[if fucktoy-stone is challenged]I guess you aren't as much of a loser as I thought. [otherwise]Wow, just pick me right up then, slut! [end if]I, The Fucktoy Stone, acknowledge you.'[roman type][line break]";
	Arouse 1000.

Check taking fucktoy-stone:
	if the player is not an april 2025 top donator, say debugadvert instead;
	if fucktoy-stone-progress of the player < 10:
		if fucktoy-stone is unchallenged:
			now fucktoy-stone is challenged;
			say "You try to wiggle the ring off the statue's finger, but it refuses to let go of the statue.[line break][second custom style][']Um, no thanks. You look like getting surrounded by cocks makes you pass out! Gangbangs should make you finish, not faint, loser! Loser! Loser loser loser~!['][roman type][line break]A smug voice sounds off in your head as you pull your hand away, and you get a distinct feeling it belongs to the ring itself." instead;
		otherwise:
			say "You try to wiggle the ring off the statue's finger, but it refuses to let go of the statue." instead.

To StatueRestore (S - fucktoy-stone):
	if the player is an april 2025 top donator, now S is in Dungeon10;
	otherwise now S is off-stage.

bondage-stone is a humility-stone. bondage-stone is unique. The printed name of bondage-stone is "[TQlink of item described][item style][if the item described is worn]The Bondage Stone[otherwise]pink diamond ring[end if][clothing-condensed-after]". The text-shortcut of bondage-stone is "bgst". The accessory-colour of bondage-stone is pink diamond.

To say StoneDesc of (C - bondage-stone):
	say "a Master of Bondage.".

To StatueRestore (S - bondage-stone):
	if the player is an april 2025 top donator, now S is in Mansion38;
	otherwise now S is off-stage.

Report going when the player is in Mansion38:
	if diaper quest is 0 and the player is an april 2025 top donator and bondage-stone-progress of the player > 0 and bondage-stone is not held:
		now bondage-stone is in Mansion38.

Check taking bondage-stone:
	if the player is not an april 2025 top donator, say debugadvert instead;
	if bondage-stone-progress of the player  < 10:
		if bondage-stone is unchallenged:
			now bondage-stone is challenged;
			say "You try to wiggle the ring off the statue's finger, but it's held fast by a layer of barely visible cobwebs. [line break][first custom style][']It's useless... Freeing me is like fighting a fairy with your arms tied... No, you couldn't defeat anything like that, right? Oh no... no, no, it's impossible.... Just... Ugh, leave me be...['][roman type][line break]A sullen voice sounds off in your head as you pull your hand away, and you get a distinct feeling it belongs to the ring itself!" instead;
		otherwise:
			say "You try to wiggle the ring off the statue's finger, but it's held fast by a layer of barely visible cobwebs." instead.

Report wearing bondage-stone:
	say "Tendrils of dull pain reach out from your arm, seizing every joint in your body.[line break][first custom style]'[if bondage-stone is challenged]You... you did it! [otherwise]You can truly fight with your arms tied behind your back. [end if]I, The Bondage Stone, acknowledge you.'[roman type][line break]";
	PainUp 1.

brat-stone is a humility-stone. brat-stone is unique. The printed name of brat-stone is "[TQlink of item described][item style][if the item described is worn]The Brat Stone[otherwise]ruby ring[end if][clothing-condensed-after]". The text-shortcut of brat-stone is "brst". The accessory-colour of brat-stone is ruby.

To say StoneDesc of (C - brat-stone):
	say "the Boldest Brat".

To StatueRestore (S - brat-stone):
	if the player is an april 2025 top donator, now S is in Woods10;
	otherwise now S is off-stage.

Report going when the player is in Woods10:
	if diaper quest is 0 and brat-stone-progress of the player > 0 and brat-stone is not held:
		now brat-stone is in Woods10;

Check taking brat-stone:
	if the player is not an april 2025 top donator, say debugadvert instead;
	if brat-stone-progress of the player < 10:
		if brat-stone is unchallenged:
			now brat-stone is challenged;
			say "You try to wiggle the ring off the statue's finger, but it slips away just when you think you've got a good grip! [line break][second custom style][']Ha, haha. You really want to wear me? Maybe if you... find someone lazy, someone who likes to sit in the same plane. Ha, haha, then piss them off. Lure them on a chase, oh this is good, THEN cum for them. After all that, just cum for them anyway! Ha, haha, you won't do it. You're too scared, ha, haha!['][roman type][line break]A reedy voice sounds off in your head as you pull your hand away, and you get a distinct feeling it belongs to the ring itself!" instead;
		otherwise:
			say "You try to wiggle the ring off the statue's finger, but it's lips away whenever you get a good grip." instead;

Report wearing brat-stone:
	say "A burst of pleasure blossoms out from your arm and settles into every joint in your body.[line break][second custom style]'[if brat-stone is challenged]I can't believe you actually wne through with it. [otherwise]Ha, haha, you're trouble, aren't you? [end if]I, The Brat Stone, acknowledge you.'[roman type][line break]";
	Arouse 1000.

piercing-stone is a humility-stone. piercing-stone is unique. The printed name of piercing-stone is "[TQlink of item described][item style][if the item described is worn]The Piercing Stone[otherwise]pure diamond ring[end if][clothing-condensed-after]". The text-shortcut of piercing-stone is "sbst". The accessory-colour of piercing-stone is pure diamond.

To say StoneDesc of (C - piercing-stone):
	say "a Master of Piercing.".

To StatueRestore (S - piercing-stone):
	if the player is an april 2025 top donator, now S is in School08;
	otherwise now S is off-stage.

Report wearing piercing-stone:
	say "An arrow of stinging pain shoots up your arm, across your back and up the nape of your neck, stabbing into your brain.[line break][first custom style]'[if piercing-stone is challenged]Hmph. It seems you CAN follow instructions. [otherwise]Hoh. Your skill is evident in your bearing. [end if]I, The Piercing Stone, acknowledge you.'[roman type][line break]";
	PainUp 1.

Report going when the player is in School08:
	if diaper quest is 0 and piercing-stone-progress of the player > 0 and fucktoy-stone is not held:
		now piercing-stone is in School08.

Check taking piercing-stone:
	if the player is not an april 2025 top donator, say debugadvert instead;
	if piercing-stone-progress of the player < 10:
		if piercing-stone is unchallenged:
			now piercing-stone is challenged;
			say "You try to wiggle the ring off the statue's finger, but it slips out of your grip just before you manage to remove it.[line break][first custom style][']Wear your piercings confidently and without hiding them. Defeat the enmy not at the best time, but at the worst, most inconvenient time. Wear your piercings proudly. Can you follow these clear intructions, or are you as utterly undisciplined, stupid, and impatient as you look?['][roman type][line break]A majestic voice sounds off in your head as you pull your hand away, and you get a distinct feeling it belongs to the ring itself!" instead;
		otherwise:
			say "You try to wiggle the ring off the statue's finger, but it slips out of your grip just before you manage to remove it." instead.

comeuppance-stone is a humility-stone. comeuppance-stone is unique. The printed name of comeuppance-stone is "[TQlink of item described][item style][if the item described is worn]The Comeuppance Stone[otherwise]emerald ring[end if][clothing-condensed-after]". The text-shortcut of comeuppance-stone is "cpst". The accessory-colour of comeuppance-stone is emerald.

To say StoneDesc of (C - a humility-stone):
	say "a Comeuppance Connoisseur.".

To StatueRestore (S - comeuppance-stone):
	if the player is not an april 2025 top donator or comeuppance-stone-progress of the player <= 0, now S is off-stage;
	otherwise now S is in HoleInWall.

Report going when the player is in the location of hole-in-wall:
	if diaper quest is 0 and comeuppance-stone-progress of the player > 0 and comeuppance-stone is not held:
		now comeuppance-stone is in HoleInWall.

Check taking comeuppance-stone:
	if the player is not an april 2025 top donator, say debugadvert instead;
	if comeuppance-stone-progress of the player < 10:
		if comeuppance-stone is unchallenged:
			now comeuppance-stone is challenged;
			say "You try to wiggle the ring off the statue's finger, but it stings you as if electrified![line break][second custom style][']Oh no no no~! I don't like delusional fingers you kno-oow~! You're a bottom, but you think you're a top! Show the truth to yourself and others, climb ontop, submissively stop, and cum right under the covers!['][roman type][line break]A musical voice sounds off in your head as you pull your hand away, and you get a distinct feeling it belongs to the ring itself!" instead;
		otherwise:
			say "You try to wiggle the ring off the statue's finger, but it stings you as if electrified!" instead.

Report wearing comeuppance-stone:
	say "A bloom of pleasure blooms out from your arm and settles into every muscle in your body.[line break][second custom style]'[if comeuppance-stone is challenged]You really DID learn your place, huh? [otherwise]You're addicted to getting taught a lesson, aren't ya? [end if]I, The Comeuppance Stone, acknowledge you.'[roman type][line break]";
	Arouse 1000.

Rings ends here.
