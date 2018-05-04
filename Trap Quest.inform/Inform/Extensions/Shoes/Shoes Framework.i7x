Shoes Framework by Shoes begins here.

shoes is a kind of clothing. The soak-limit of a shoes is usually 7.

To say ShoeType of (S - a shoes):
	say "[if S is boots]boots[otherwise if S is heels]heels[otherwise]shoes[end if]".

To say ShortestDesc of (C - a shoes):
	say "pair of shoes".

To decide which number is the kick-bonus of (S - a shoes):
	decide on 0.

Definition: a shoes (called C) is ingredient:
	decide yes.

To decide which number is the crafting key of (C - a shoes):
	decide on 51.

heels is a kind of shoes. A heels have a number called heel-height. Understand "he" as heels.

Definition: a heels (called C) is fluid immune:
	decide yes.

Understand the heel-height property as describing a heels. Understand "heel", "inch" as heels. The printed plural name of heels is usually "[TQlink of item described][item style]pairs of heels[roman type]". The text-shortcut of heels is "he".

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
	let X be (the heel-height of C * 2) - 1;
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

[!<DecideWhichNumberIsTheAdultInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the adult-influence of (C - a heels):
	decide on the heel-height of C - 1.

To decide which number is the unique outrage of (C - a heels):
	decide on 0.

To decide which number is the unique cringe of (C - a shoes):
	decide on 0.

To decide which number is the hindrance-modifier of (C - a clothing):
	decide on 0.

To decide which number is the original price of (C - a shoes):
	decide on 2;

To decide which number is the original price of (C - a heels):
	decide on the heel-height of C + 1.

To decide which number is the kick-bonus of (S - a heels):
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
			decide on the strength of the player / 3.

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

To decide which figure-name is the clothing-image of (H - a shoes):
	decide on the figure of leather peep toe heels; [failsafe, should never happen]


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

To compute SelfExamineDesc of (C - a shoes):
	say "You have a [ShortDesc of C] on your feet.".

To say ShortDesc of (C - a shoes):
	say "pair of [if the outrage of C > 7]slutty [end if][UniqueShortDesc of C]".

To say UniqueShortDesc of (C - a shoes):
	say "shoes".

To say UniqueShortDesc of (C - a heels):
	say "heels".

To compute SelfExamineDesc of (H - a heels):
	if the player is upright:
		say "You are [if the player is ankle bound]somehow managing to hobble along with[otherwise if the strut of the player is 1]strutting around provocatively in your[otherwise if the hindrance of H < 2]walking around confidently in your[otherwise]managing to balance on a[end if] [ShortDesc of H]. ";
		if diaper quest is 0, say "[one of]Your [BreastDesc] [BreastBounceDesc] as you [if the player is ankle bound]mince in tiny steps[otherwise if the strut of the player is 1]strut[otherwise if the hindrance of H < 2]stride[otherwise]teeter[end if] through these [if the delicateness of the player  < 4]weird and disturbing places[otherwise]scary environs[end if]. [or][or][or][or][in random order]";
	otherwise:
		say "A [ShortDesc of H] are currently latched to your feet[if the player is ankle bound], and your ankles are bound close together making it difficult to crawl[end if]. ".

Report examining heels:
	if newbie tips is 1, say "Heels [if the number of worn heels is 0]would [end if]allow you to deal higher amounts of damage with your kicks.".

To set up heel length of (C - a heels):
	let P be 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	if a random number between 1 and 2 is 1, increase P by 1;
	now the heel-height of C is P.

To set up influence of (C - a shoes):
	set up random-based influence of C.

To restock (C - a shoes):
	let B be a random basic loot shoes;
	if B is shoes, now B is in Standard Item Pen.

This is the setup starting shoes rule:
	let C be a random shoes;
	repeat with N running from 1 to 5:
		restock C.
The setup starting shoes rule is listed in the setup starting items rules.

To say MonsterOfferRejectFlav of (M - a demoness) to (T - a heels):
	say "[speech style of M]'Do I look like I have any need for another pair of heels?'[roman type][line break]".

To decide which object is the unique-upgrade-target of (C - a heels):
	if diaper quest is 1, decide on a random off-stage mary janes;
	if there is a worn diaper, decide on a random off-stage baby booties.

To potentially transform (C - a heels):
	if C is upgradable:
		transform C;
	otherwise if the heel-height of C < 6:
		say "The heels of your [C] grow higher, turning them into ";
		increase the heel-height of C by 1;
		say "[C]!";
	otherwise:
		compute failed transform of C.

To compute (C - a heels) unique inheriting from (D - a heels):
	if the heel-height of D > the heel-height of C, now the heel-height of C is the heel-height of D.

Part - Wearability

Definition: a shoes (called C) is too outrageous: [Player will never refuse to wear shoes.]
	decide no.

shoes wearability rules is a rulebook. The wearability rules of shoes is usually shoes wearability rules.

This is the shoes already worn rule:
	repeat with S running through shoes worn by the player:
		if summoning is 0, say "You can't wear those because you are already wearing a [printed name of S]!";
		rule fails.
The shoes already worn rule is listed in the shoes wearability rules.

This is the knickers stuck shoes clash rule:
	repeat with C running through worn stuck shoes:
		if summoning is 0, say "You can't put these on because your [printed name of C] are stuck!";
		rule fails.
The knickers stuck shoes clash rule is listed in the knickers wearability rules.

This is the trousers stuck shoes clash rule:
	repeat with C running through worn stuck shoes:
		if summoning is 0, say "You can't put these on because your [printed name of C] are stuck!";
		rule fails.
The trousers stuck shoes clash rule is listed in the trousers wearability rules.

Report wearing shoes:
	if the noun is unsure and the noun is cursed, say "You finish slipping your [printed name of the noun] onto your [if there are worn stockings]stockings clad [end if]feet . As you take your first step you feel a pulse of warmth that runs from your toe tips to the back of your [feet]! The material of the [feet] shrinks to fit your feet [if the bimbo of the player < 6]firmly[otherwise if the bimbo of the player < 10]tightly[otherwise if the bimbo of the player < 15]deliciously[otherwise]enticingly[end if]. Lifting your foot tentatively, you can feel the sole of your [ShoeType of the noun] clinging to the bottom of your feet. These heels are cursed!"; [Crowdsourced from Anya Snowdrifter]
	otherwise say "[if the bimbo of the player > 12 and a random number between 1 and 2 is 1][line break][second custom style]These make my ass look great![roman type][line break][end if]";
	if the noun is queen of hearts heels:
		if the strutskill of the player is 0 and the player is not wobbling, say "These heels are so [if the bimbo of the player < 5]beautiful[otherwise][line break][second custom style]sexy[roman type][line break][end if], you feel like [bold type]strut[roman type]ting around in them!".

Check taking off worn shoes:
	if the player is dildo stuck and the noun is heels:
		if the dexterity of the player < 6:
			say "You try and bend over whilst on the dildo to take off your heels but you just aren't flexible enough!" instead;
		if the player is wrist bound:
			say "You try and bend over whilst on the dildo to take off your heels, but it's just impossible whilst your wrists are bound!" instead;
		if the largeness of belly > 6:
			say "You try and bend over whilst on the dildo to take off your heels but your [BellyDesc] is in the way!" instead;
		if the largeness of breasts > 15:
			say "You try and bend over whilst on the dildo to take off your heels but your [BreastDesc] are getting in the way!" instead;
	if the noun is cursed:
		say "Try as you might you cannot find a way to pull off your [printed name of the noun]!";
		if the noun is heels, say "[if the hindrance of the noun > 1]They are killing your ankles and toes![otherwise]The curse is bothersome but at least you've become used to walking in heels.[end if]"; 
		now the noun is sure instead; [Crowdsourced from Anya Snowdrifter]
	otherwise if the noun is glued:
		try tearing off the noun;
		if the noun is glued:
			do nothing instead.

Carry out taking off shoes while the player is dildo stuck:
	say "You awkwardly bend over, forcing even more of your weight onto the dildo.";
	repeat with T running through traps penetrating a fuckhole:
		if T is penetrating asshole, ruin asshole;
		otherwise ruin vagina.


Shoes Framework ends here.

