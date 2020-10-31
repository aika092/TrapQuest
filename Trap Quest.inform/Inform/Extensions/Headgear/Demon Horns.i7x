Demon Horns by Headgear begins here.

demon horns is a headgear. demon horns is velvet. demon horns is blondeness-negative. demon horns is brightness-negative. demon horns is redness-negative. demon horns is heel-skill-influencing.

demon horns has a number called blackfire. The blackfire of demon horns is 0.

The printed name of demon horns is "[clothing-title-before]demon horns[clothing-title-after]". The text-shortcut of demon horns is "dh".

Figure of demon horns 1 is the file "Items/Accessories/Head/demonhorns1.png".
Figure of demon horns 2 is the file "Items/Accessories/Head/demonhorns2.png".

To decide which figure-name is the clothing-image of (C - demon horns):
	if soulstone is worn, decide on figure of demon horns 2;
	decide on figure of demon horns 1.

To say ClothingDesc of (H - demon horns):
	if soulstone is worn and H is worn, say "A pair of very real horns protrude from either side of your head, [if H is cursed]curling slightly away from your face[otherwise if H is bland]curling away from your face and into a loose spiral above your ears[otherwise]curling away from your face and into a tight spiral above your ears[end if].";
	otherwise say "A pair of red, felt horns protruding from your head. Luckily they're only attached to a headband.".

To say ShortDesc of (H - demon horns):
	say "[if soulstone is worn]demon horns[otherwise]fake demon horns[end if]".

To compute SelfExamineDesc of (H - demon horns):
	say "You [if soulstone is worn]have a pair of horns protruding from your head.[otherwise]are wearing a headband with a pair of horns.".

Definition: demon horns is cult garb: decide yes.

To decide which number is the heel-skill-influence of (H - demon horns):
	decide on 7.

Definition: demon horns is strut enabling: decide yes.

To decide which number is the intelligence-influence of (H - demon horns):
	let S be 1;
	increase S by the magic-modifier of H;
	if the player is craving souls, decrease S by 3;
	unless H is cursed, increase S by 1;
	if H is blessed, increase S by 2;
	decide on S.

Definition: demon horns is demonic: decide yes.
Definition: demon horns is red themed:
	if soulstone is worn, decide no;
	decide yes.
Definition: demon horns is black themed:
	if soulstone is worn, decide yes;
	decide no.

Chapter - Class Outfit

Definition: demon horns (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if soulstone is worn and C is wearing-target, decide yes;
	if wearing-target is soulstone, decide yes;
	decide no.

Definition: demon horns is removable:
	if soulstone is worn, decide no;
	decide yes.

demon-summoned is a number that varies.
To compute unique recycling of (C - demon horns):
	now demon-summoned is 0.

To compute class outfit of (H - demon horns):
	let O be a random off-stage dildo heels;
	let D be a random off-stage blazing dress;
	let P be a random off-stage demon tail plug;
	if O is actually summonable:
		say "[bold type]You feel a rush of power as your body raises several inches higher all of a sudden and a pair of dildo heels appear on your feet. They make you feel simply amazing![roman type][line break]";
		summon O;
		now O is kicking;
		now the raw-magic-modifier of O is 4;
	otherwise if D is actually summonable or (D is blazing dress and demon-summoned is 0):
		PinkWardrobeUnclash D;
		say "[bold type]A red dress suddenly appears on your body! You feel it infuse you with fire![roman type][line break]";
		summon D uncursed;
		now demon-summoned is 1;
	otherwise if P is actually summonable:
		PinkWardrobeUnclash P;
		say "[bold type]You feel your [asshole] suddenly being invaded by a foreign object! Looking around you see a long, snake-like red tail hanging down between your legs.[roman type][line break]";
		summon P cursed;
		now the size of P is the openness of asshole.

To compute succubus transformation:
	let K be soulstone;
	repeat with B running through worn headgear:
		say "Your new horns tear off your [ShortDesc of B]!";
		now B is in pink wardrobe;
	repeat with C running through worn neck covering clothing:
		say " The [ShortDesc of K] shatters your [ShortDesc of C]!";
		now C is in pink wardrobe;
	summon demon horns;
	summon K;
	if K is worn and demon horns is worn, now demon horns is biological;
	now the soul addiction of the player is 1.

cold souly is a number that varies.
To decide which number is cold souly limit:
	decide on 300 - (the soul addiction of the player * 10).[290 to 100]

Definition: yourself is craving souls:
	if the class of the player is succubus:
		if cold souly > cold souly limit, decide yes;
	decide no.

To compute succubus hunger:
	increase cold souly by time-seconds;
	if cold souly > cold souly limit:
		if cold souly - time-seconds <= cold souly limit:
			say "[bold type]Your stomach rumbles as you begin to desperately crave [one of]souls[or]another soul[stopping]. [roman type]Until you consume a soul, your strength will be reduced and your magic power will slowly drain away.";
		otherwise:
			let C be cold souly / cold souly limit;
			if cold souly > cold souly limit * C and (cold souly - time-seconds) <= cold souly limit * C:
				if C < 3:[punishments 1 and 2]
					say "[bold type]You feel your power wasting away as you starve yourself of souls. [roman type]";
					MagicPowerDown 1;
				otherwise if C < 4:
					say "[bold type]Hunger pangs assault your mind as your power continues wasting away. You need souls![roman type]";
					MagicPowerDown 2;
					IntDown 2;
				otherwise:
					say "[bold type]You terrible pangs of hunger assault your mind and body as your power continues wasting away. You need souls, NOW![roman type]";
					BodyRuin 3;
					MagicPowerDown 3;
					IntDown 3.

soul-consume-quest is a headgear-clothing-quest.
To uniquely set up (C - demon horns):
	now the quest of C is soul-consume-quest.

To say QuestFlav of (Q - soul-consume-quest):
	say "You sense that it wants you to seduce someone and suck out their soul.";

To say QuestTitle of (Q - soul-consume-quest):
	say " (soul consumption quest)".

To say QuestPersistFlav of (Q - soul-consume-quest) on (C - a clothing):
	if C is unremovable, say "[unless C is blessed]Your [MediumDesc of C] wiggle and grow further out of your skin, [otherwise]Your [MediumDesc of C] wiggle, growing harder and[end if][if C is cursed]curling toward the back of your head and[otherwise if C is bland]coiling around the sides of your head and[end if] ";
	otherwise say "[if C is cursed]The magic sealing your [MediumDesc of C] is lifted! It rewards your efforts by[otherwise if C is bland and Q is headgear-clothing-quest]You sense a blessing being laid upon your [MediumDesc of C]! It rewards your continued efforts by[otherwise]Your [MediumDesc of C] rewards your continued efforts by[end if] "

[The reward is always the healing, never jewelery.]
To compute generic first time class reward of (Q - soul-consume-quest) on (C - a clothing):
	compute generic class reward of Q on C.

To compute generic second time class reward of (Q - soul-consume-quest) on (C - a clothing):
	compute generic class reward of Q on C.

Demon Horns ends here.
