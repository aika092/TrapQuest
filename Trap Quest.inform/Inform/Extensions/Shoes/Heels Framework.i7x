Heels Framework by Shoes begins here.

heels is a kind of shoes. A heels have a number called heel-height.

To say ShoeType of (S - a heels):
	say "heels".

To say ShoeType of (S - a boots):
	say "boots".

Definition: a heels is fluid immune: decide yes.

Understand the heel-height property as describing a heels when disambiguation-ID-count is 1. Understand "heel", "inch" as heels. The printed plural name of heels is usually "[TQlink of item described][item style]pairs of heels[roman type]". The text-shortcut of heels is "he".

stiletto heels is a kind of heels. boots is a kind of heels. platform heels is a kind of heels.
Understand "boot", "boots" as boots.

To decide which number is the initial cringe of (C - a shoes):
	let X be 0;
	if C is latex, decrease X by 2;
	if C is pvc, decrease X by 1;
	if C is cotton, increase X by 2;
	if C is glass, increase X by 2;
	increase X by the unique cringe of C;
	if X < 0, decide on 0;
	if X > 20, decide on 20;
	decide on X.

To decide which number is the initial outrage of (C - a heels):
	let X be (the heel-height of C * 2) - 5;
	if C is leather, decrease X by 1;
	if C is pvc, increase X by 1;
	if C is glass, increase X by 2;
	if C is latex, increase X by 2;
	if C is cotton, decrease X by 1;
	increase X by the unique outrage of C;
	if X < 0, decide on 0;
	if X > 20, decide on 20;
	decide on X.

To decide which number is the initial cringe of (C - a heels):
	let X be 0;
	decrease X by the heel-height of C - 1;
	increase X by the hindrance of C;
	if C is latex, decrease X by 2;
	if C is cotton, increase X by 1;
	increase X by the unique cringe of C;
	if X < 0, decide on 0;
	if X > 20, decide on 20;
	decide on X.

To decide which number is the adult-influence of (C - a heels):
	decide on the heel-height of C - 1.

To decide which number is the unique outrage of (C - a heels):
	decide on 0.


To decide which number is the original price of (C - a heels):
	decide on the heel-height of C + 1.

To decide which number is the kick-bonus of (S - a heels):
	if S is blessed, decide on the heel-height of S + 1;
	decide on the heel-height of S.

To decide which number is the damage modifier of (H - a heels):
	[Double damage on crit with heels]
	if attack-type is 3:
		[Normal heels have a 1 in 6 chance. Queen of Hearts heels have a 1 in 3 chance. Cursed heels have a 1 in 10 chance.]
		let R be a random number between 1 and 6;
		if H is queen of hearts heels, now R is a random number between 1 and 3;
		if H is cursed, now R is a random number between 1 and 10;
		if R is 1:
			now critical is 1;
			decide on combat bonus.

To decide which number is the hindrance of (C - a heels):
	let X be 0;
	[Heel height vs heel skill]
	if the heel-height of C >= 2:
		if the heel skill of the player < 1, increase X by 1;
	if the heel-height of C >= 3:
		if the heel skill of the player < 3, increase X by 1;
	if the heel-height of C >= 4:
		if the heel skill of the player < 5, increase X by 1;
	if the heel-height of C >= 5:
		if the heel skill of the player < 7, increase X by 1;
	if the heel-height of C >= 6:
		if the heel skill of the player < 9, increase X by 1;
	otherwise if the heel-height of C > 6:
		increase X by 1;
		if the heel skill of the player < 10, increase X by 1;
	[Some heels are always more/less (usually less) difficult to walk in, and some other clothing affects the hindrance of heels.]
	repeat with H running through clothing worn by the player:
		increase X by the hindrance-modifier of H;
	[Magic effects often impact on hindrance]
	decrease X by the magic-modifier of C;
	if X < 0, now X is 0;
	decide on X.

To say SteadinessDesc of (C - a heels):
	if C is worn by the player and the player is upright:
		if the hindrance of C is 0:
			say "You feel completely balanced.";
		otherwise if the hindrance of C is 1:
			say "You feel only slightly off balance.";
		otherwise if the hindrance of C is 2:
			say "You feel a bit off balance.";
		otherwise if the hindrance of C is 3:
			say "You feel quite a bit off balance.";
		otherwise if the hindrance of C < 6:
			say "You feel very off balance.";
		otherwise:
			say "You feel extremely off balance.";
		if the slipperiness of the location of the player > 0 and the hindrance of C > 0:
			say "The slipperiness of the floor certainly isn't helping!".

To say UniqueShortDesc of (C - a heels):
	say "heels".

To compute SelfExamineDesc of (H - a heels):
	if the player is upright:
		say "You are [if the player is ankle bound]somehow managing to hobble along with[otherwise if the strut of the player is 1]strutting around provocatively in your[otherwise if the hindrance of H < 2]walking around confidently in your[otherwise]managing to balance on a[end if] [ShortDesc of H]. ";
		if diaper quest is 0, say "[one of]Your [BreastDesc] [BreastBounceDesc] as you [if the player is ankle bound]mince in tiny steps[otherwise if the strut of the player is 1]strut[otherwise if the hindrance of H < 2]stride[otherwise]teeter[end if] through these [if the delicateness of the player < 4]weird and disturbing places[otherwise]scary environs[end if]. [or][or][or][or][in random order]";
	otherwise:
		say "A [ShortDesc of H] are currently latched to your feet[if the player is ankle bound], and your ankles are bound close together making it difficult to crawl[end if]. ".

Report examining heels:
	if newbie tips is 1, say "[one of][newbie style]Heels [if the number of worn heels is 0]would [end if]allow you to deal higher amounts of damage with your kicks, but [bold type]you'll tire much faster from walking around, [newbie style]especially at first, when your experience at walking in heels is at its lowest.[roman type][line break][or][stopping]".

To set up heel length of (C - a heels):
	let P be 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	now the heel-height of C is P.

To say MonsterOfferRejectFlav of (M - a demoness) to (T - a heels):
	say "[speech style of M]'Do I look like I have any need for another pair of heels?'[roman type][line break]".

To decide which object is the unique-upgrade-target of (C - a heels):
	if diaper quest is 1 and the heel-height of C < 2, decide on a random off-stage mary janes;
	if there is a worn diaper, decide on a random off-stage baby booties;
	if (there are worn stockings or diaper quest is 0) and the heel-height of C < (2 + diaper quest), decide on a random off-stage white rollerskates.

To potentially transform (C - a heels):
	if C is upgradable:
		transform C;
	otherwise if diaper quest is 1 and the heel-height of C > 1:
		say "The heels of your [ShortDesc of C] shrink, turning them into ";
		decrease the heel-height of C by 1;
		say "[C]!";
	otherwise if diaper quest is 0 and the heel-height of C < 6:
		say "The heels of your [ShortDesc of C] grow higher, turning them into ";
		increase the heel-height of C by 1;
		say "[C]!";
	otherwise:
		compute failed transform of C.

To compute (C - a heels) unique inheriting from (D - a heels):
	if the heel-height of D > the heel-height of C, now the heel-height of C is the heel-height of D.

To compute (C - a shoes) unique inheriting from (D - a heels):
	if the quest of D is heel-walking-quest, now the quest of C is kicking-quest. [We can't have the heel walking quest if they are no longer heels]


Heels Framework ends here.
