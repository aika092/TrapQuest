Sex Toy Framework by Sex Toys begins here.

[Something you can put into a lower orifice]

Definition: A thing is insertable:
	if it is sex toy, decide yes;
	if it is squirt dildo, decide yes;
	if it is clothing:
		if it is ass plugging or it is vagina plugging, decide yes;
	decide no.

Definition: a sex toy (called S) is actually summonable:
	if S is on-stage, decide no;
	if S is part of something, decide no;
	if the size of S is 0, decide no;
	if asshole is actually occupied, decide no;
	decide yes.

Definition: a sex toy (called S) is vaginally summonable:
	if S is on-stage, decide no;
	if S is part of something, decide no;
	if the size of S is 0, decide no;
	if vagina is actually occupied, decide no;
	decide yes.

A sex toy is a kind of clothing. Understand "sex toys" as sex toy.
A sex toy is usually plastic.
A sex toy has a number called size. The size of a sex toy is usually 0.
A thing is usually not disembodied. A sex toy is usually disembodied.
A sex toy has a number called toy-charge.

Definition: a thing (called T) is embodied:
	if T is disembodied, decide no;
	decide yes.

Definition: a sex toy (called C) is too boring:
	decide no.

Definition: a sex toy (called C) is untransformable:
	decide yes.

To decide which number is the original price of (C - a sex toy):
	decide on 2.

To assign size (X - a number) to (C - a sex toy):
	if X > 10, now X is 10;
	now the size of C is X.

To sizeUp (C - a sex toy) by (X - a number):
	while X > 0 and the size of C < 10:
		increase the size of C by 1.

To uniquely set up (C - a sex toy):
	if a random number between 1 and 3 is 1:
		let R be a random number between 1 and 6;
		if R is 1, now C is refreshment;
		if R is 2, now C is rejuvenation;
		if R is 3, now C is endurance;
		if R is 4, now C is suppression;
		if R is 5:
			if C is plug, now C is dressup;
			otherwise now C is temptation;
			if diaper quest is 1, now C is bed wetting;
		if R is 6:
			if C is plug, now C is stumbling;
			otherwise now C is dominance;
		if the size of C is 0:
			now the size of C is a random number between 1 and 10;
	if C is plug:
		if the size of C is 0, now the size of C is a random number between 1 and 10;
		if C is blandness and the size of C < 4 and a random number between 1 and 4 is 1, now C is expansion.

To compute periodic effect of (C - an expansion clothing):
	increase the toy-charge of C by 1;
	if the size of C < 10 and the toy-charge of C > 40:
		now the toy-charge of C is 0;
		increase the size of C by 1;
		let F be a random fuckhole penetrated by C;
		if the size of C > the openness of F, Ruin F;
		say "Your [ShortDesc of C] drastically increases in size![if the size of C > the openness of F] You feel your [variable F] stretching painfully to accommodate the enlarged intruder[otherwise] You feel the [clothing-material of C] pressing much tighter against the inside of your [variable F][end if].";
		if the player is male and the size of penis < the size of C, PenisUp 1.[expansion clothing will slowly increase penis size for male players]
		
To compute periodic effect of (C - a rejuvenation clothing):
	increase the toy-charge of C by 1;
	if the toy-charge of C > 40:
		now the toy-charge of C is 0;
		let F be a random fuckhole penetrated by C;
		let L be a random number between 1 and 3;
		if C is cursed, let N be 3;
		otherwise let N be 2;
		if the player is male, increase N by 1;
		if L > 1 and watersports fetish is 1 and F is asshole:
			say "Your [ShortDesc of C] pulses as warm, frothy liquid streams into your [variable F].";
			AssFill N urine;
			if C is blessed, heal asshole times 2;
			otherwise heal asshole times 1;
		otherwise if L > 3:
			say "Your [ShortDesc of C] pulses as cool liquid streams into your [variable F].";
			AssFill N water;
			if C is blessed, heal asshole times 2;
			otherwise heal asshole times 1;
		otherwise:
			say "Your [ShortDesc of C] pulses as several spurts of warm [semen] shoot into your [variable F], which tingles as the soreness seems to melt away.";
			if F is asshole, AssFill N;
			otherwise PussyFill N;
			if C is blessed, heal F times N;
			otherwise heal F times N - 1.

To restock (C - a sex toy):
	let B be a random basic loot sex toy;
	if B is sex toy, now B is in Standard Item Pen.

To say ShortDesc of (C - a sex toy):
	say "sex toy".

To decide which number is the grip of (I - a thing):
	decide on 999. [This should never happen]

To decide which number is the grip of (I - an insertable thing):
	if I is cursed, decide on 999; [cursed things don't fall out]
	if I is part of something, decide on 999;
	if I is clothing and I is not sex toy, decide on 999; [clothing doesn't just fall out]
	let X be 0;
	if I is penetrating vagina:
		if the player is pussy protected, decide on 999; [clothing holds it in]
		decrease X by the openness of vagina;
		if there is a lubricant covering vagina, decrease X by 5;
	if I is penetrating asshole:
		if the player is ass protected, decide on 999; [clothing holds it in]
		increase X by 2;
		decrease X by the openness of asshole / 2;
		if there is a lubricant covering asshole, decrease X by 5;
	if I is plug, increase X by the girth of I * 3;
	otherwise increase X by the girth of I;
	decide on X.
		
To decide which number is the girth of (I - a thing):
	decide on 1.
	
To decide which number is the girth of (I - a sex toy):
	decide on the size of I.

To decide which number is the girth of (I - a clothing):
	decide on the plug size of I.

To decide which number is the girth of (I - a monster):
	decide on 3. [Normal penis girth]

A time based rule (this is the sex toys slipping out rule):
	repeat with I running through insertable things penetrating a fuckhole:
		compute gripping of I.

To compute gripping of (I - an insertable thing):
	let G be the grip of I;
	let R be a random number between 0 and G * G * 3;
	if the player is upright:
		if I is penetrating asshole and the player is not ass protected and G < 10 and R is 0 or G <= 0:
			if G <= 0:
				say "The [printed name of I] slips right back out of your [asshole] and drops to the ground.";
			otherwise if G is 1:
				say "The [printed name of I] quickly drops out of your [asshole] and onto the ground.";
			otherwise if G < 4:
				say "The [printed name of I] starts sliding out of your [asshole] and before you can stop it, it comes completely out and falls to the ground.";
			otherwise if G < 6:
				say "Your [asshole] relaxes for a moment, causing the [printed name of I] to start to slide out. This makes you clench your [asshole] in surprise, which ends up pushing the whole thing out!  It falls and drops to the floor.";
			otherwise if G < 8:
				say "Your [asshole] momentarily spasms with the [if the girth of I > 6]intense size[otherwise]stimulation[end if] of your [printed name of I]. This causes it to move a bit inside you and the next thing you know it has travelled out of your [asshole] completely and dropped to the floor.";
			otherwise:
				say "You find yourself momentarily paralysed by the intense feelings coming from your [printed name of I] as it starts slowly worming its way out of your [asshole] of its own accord. Your instinct is to push it back in but the feeling of it forcing your sphincter open renders you completely unable to move until it finishes its journey, exits your [asshole] with a loud 'PLOP' and drops to the ground[if the openness of asshole > 6], leaving your very empty feeling [asshole] gaping[end if].";
			[Flavour and soreness]	
			if G < 4:
				say "[if the bimbo of the player < 7][line break][first custom style]'Hmm, well I guess there's no way something that small is going to stay inside my [asshole] for very long.'[otherwise if the bimbo of the player < 14][line break][variable custom style]'Oops, I guess this one is too small for my [asshole]!'[otherwise][line break][second custom style]'Aww, no, it fell out!  I need to find a bigger one that can properly fill my greedy [asshole] and keep it stretched and open!'[end if][roman type][line break]";
			otherwise if G < 8 or the player is not horny or the player is unable to orgasm so soon:
				ruin asshole;
				say "[if the bimbo of the player < 7][line break][first custom style]'Holy shit, that felt pretty intense!'[otherwise if the bimbo of the player < 14][line break][variable custom style]'I can't believe how good that made my [asshole] feel!'[otherwise][line break][second custom style]'MM, I love that feeling!'[end if][roman type][line break]";
			otherwise:
				anally orgasm shamefully;
			now I is not penetrating asshole;
			now I is in the location of the player;
		otherwise if I is penetrating vagina and the player is not pussy protected and G < 10 and R is 0 or G <= 0:
			if G <= 0:
				say "The [printed name of I] slips right back out of your [vagina] and drops to the ground.";
			otherwise if G is 1:
				say "The [printed name of I] quickly drops out of your [vagina] and onto the ground.";
			otherwise if G < 4:
				say "The [printed name of I] starts sliding out of your [vagina] and before you can stop it, it comes completely out and falls to the ground.";
			otherwise if G < 6:
				say "Your [vagina] relaxes for a moment, causing the [printed name of I] to start to slide out. This makes you clench your [vagina] surprise, which ends up pushing the whole thing out!  It falls and drops to the floor.";
			otherwise if G < 8:
				say "Your [vagina] momentarily spasms with the [if the girth of I > 6]intense size[otherwise]stimulation[end if] of your [printed name of I]. This causes it to move a bit inside you and the next thing you know it has travelled out of your [vagina] completely and dropped to the floor.";
			otherwise:
				say "You find yourself momentarily paralysed by the intense feelings coming from your [printed name of I] as it starts slowly worming its way out of your [vagina] of its own accord. Your instinct is to push it back in but the feeling of it forcing your sphincter open renders you completely unable to move until it finishes its journey, exits your [vagina] with a loud 'PLOP' and drops to the ground[if the openness of vagina > 6], leaving your very empty feeling [vagina] gaping[end if].";
			[Flavour and soreness]	
			if G < 4:
				say "[if the bimbo of the player < 7][line break][first custom style]'Hmm, well I guess there's no way something that small is going to stay inside my [vagina] for very long.'[otherwise if the bimbo of the player < 14][line break][variable custom style]'Oops, I guess this one is too small for my [vagina]!'[otherwise][line break][second custom style]'Aww, no, it fell out!  I need to find a bigger one that can properly fill my greedy [vagina] and keep it stretched and open!'[end if][roman type][line break]";
			otherwise if G < 8 or the player is not horny or the player is unable to orgasm so soon:
				ruin vagina;
				say "[if the bimbo of the player < 7][line break][first custom style]'Holy shit, that felt pretty intense!'[otherwise if the bimbo of the player < 14][line break][variable custom style]'I can't believe how good that made my [vagina] feel!'[otherwise][line break][second custom style]'MM, I love that feeling!'[end if][roman type][line break]";
			otherwise:
				vaginally orgasm shamefully;
			now I is not penetrating vagina;
			now I is in the location of the player;
	if I is penetrating asshole and a random number between 0 and 105 - ((the girth of I - the openness of asshole) * 10) is 0:
		if diaper quest is 1:
			say "The [printed name of I] [one of]stimulates[or]rubs against the inside of[or]puts pressure on[in random order] your [asshole][if the player is a bit horny], making you even more aroused[end if]!";
			arouse 250;
		otherwise:
			let open be the openness of asshole;
			say "The [printed name of I] is keeping your [asshole] [one of]stretched[or]gaped[or]open[at random][if the soreness of asshole > 5] and sore[end if]. [one of]Not only is it stopping your [asshole] from recovering from its soreness, but it's getting even more sore. [or][stopping]";
			ruin asshole;
			if the openness of asshole > open, say "You feel permanently more loose.";
	if I is penetrating vagina and a random number between 0 and 105 - ((the girth of I - the openness of vagina) * 10) is 0:
		if diaper quest is 1:
			say "The [printed name of I] [one of]stimulates[or]rubs against the inside of[or]puts pressure on[in random order] your [vagina][if the player is a bit horny], making you even more aroused[end if]!";
			arouse 250;
		otherwise:
			let open be the openness of vagina;
			say "The [printed name of I] is keeping your [vagina] [one of]stretched[or]gaped[or]open[at random][if the soreness of asshole > 5] and sore[end if]. [one of]Not only is it stopping your [vagina] from recovering from its soreness, but it's getting even more sore. [or][stopping]";
			ruin vagina;
			if the openness of vagina > open, say "You feel permanently more loose.".

To decide which number is the bartering value of (T - a sex toy) for (M - a mannequin):
	unless M  is retaining a sex toy, decide on 3;
	decide on 1 + (the size of T - the size of a random sex toy retained by M).

Include Plugging by Actions.

Check taking off sex toy:
	try unplugging the noun instead.

To compute toyInsertion of (S - a thing) into (F - a fuckhole):
	compute insertionRuin of S into F;
	now S is penetrating F.

To compute insertionRuin of (S - a thing) into (F - a fuckhole):
	if the girth of S > the openness of F - 4:
		say "The [printed name of S] [if the girth of S > the openness of F + 1]is so large compared to the openness of your [variable F] that it makes you a bit sore just putting[otherwise]stimulates you as you put[end if] it in.";
		ruin F;
		if the girth of S > the openness of F + 1, ruin F;
	otherwise if the girth of S > the openness of F - 2:
		say "Oof!  You definitely felt that as you pushed it inside.";
	otherwise:
		say "Your [variable F] is loose enough to let the [printed name of S] slip in easily.".

Chapter 1 - Dongs

[Dongs can be used for masturbation but don't stay inside unless cursed or blocked from leaving by underwear. I wanted to call them dildos but the code argued with squirt dildos.]

A dong is a kind of sex toy. Understand "dildo" as dong.

To decide which number is the masturbation-bonus of (C - a sex toy):
	decide on 1.


Chapter 2 - Plugs

[Plugs are really good at staying in - see grip.]

A plug is a kind of sex toy. A basic plug is a kind of plug. The printed name of plug is usually "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][PlugSize size of item described] butt plug[ownership-desc][clothing-title-after][TQxlink of item described][verb-desc of item described]". The size of plug is usually 4. There are 5 basic plugs. Understand "butt" as plug. Understand "small" as plug when the size of item described < 3. Understand "medium", "sized" as plug when the size of item described < 5 and the size of item described > 2. Understand "large" as plug when the size of item described < 7 and the size of item described > 4. Understand "huge" as plug when the size of item described < 9 and the size of item described > 6. Understand "monstrous" as plug when the size of item described > 8. The text-shortcut of a plug is "plu".

A tail plug is a kind of plug.

A balancing tail plug is a kind of tail plug.

To say PlugSize (N - a number):
	say "[if N < 3]small[otherwise if N < 5]medium sized[otherwise if N < 7]large[otherwise if N < 9]huge[otherwise]monstrous[end if]".

A plug is usually ass plugging.

Figure of small plug is the file "Items\Accessories\Toys\plug1.png".
Figure of medium plug is the file "Items\Accessories\Toys\plug2.png".
Figure of large plug is the file "Items\Accessories\Toys\plug3.png".
Figure of huge plug is the file "Items\Accessories\Toys\plug4.png".
Figure of monstrous plug is the file "Items\Accessories\Toys\plug5.png".

To decide which figure-name is the clothing-image of (P - a plug):
	if the size of P < 3:
		decide on the figure of small plug;
	otherwise if the size of P < 5:
		decide on the figure of medium plug;
	otherwise if the size of P < 7:
		decide on the figure of large plug;
	otherwise if the size of P < 9:
		decide on the figure of huge plug;
	otherwise:
		decide on the figure of monstrous plug.

To say UniquePlugDesc of (P - a plug):
	if the size of P < 3:
		say "This small pink butt plug has a narrow shaft and is probably meant for beginners. ";
	otherwise if the size of P < 5:
		say "This silver metal butt plug has a flared base and decent sized bulb to prevent it from going all the way in or from slipping out easily and a jewel on the base to decorate your [asshole]. ";
	otherwise if the size of P < 7:
		say "This black butt plug is has a flared base and quite a large round bulb to prevent it from going all the way in or from slipping out easily. The girth of bulb makes it clear that it is not for use by beginners but by someone that is used to having their [asshole] stretched. ";
	otherwise if the size of P < 9:
		say "This blue-green butt plug is absolutely massive. The widest part of the plug is much much larger than any human [manly-penis] could ever hope to be, and there is no chance it would ever fall out of an [asshole] on its own. It's shaped like a fish, and you have absolutely no idea why. ";
	otherwise:
		say "This dark brown translucent butt plug is a ridiculously comical size. Anyone managing to fit this inside them would have their hole kept open wider than a 2 litre bottle. ".

To say ClothingDesc of (P - a plug):
	say "[UniquePlugDesc of P]";
	say "[if P is penetrating asshole]It is currently nice and snug within your [asshole][otherwise if P is penetrating vagina]You've currently got this plug inside your [vagina][otherwise if the girth of P < openness of asshole - 3]Your experienced [asshole] can easy take a plug of this size[otherwise if the girth of P < openness of asshole]Your [asshole] shouldn't have any major problems taking a plug of this size[otherwise if the girth of P < openness of asshole + 2]This plug would definitely stretch your [asshole] to new limits[otherwise]There's almost definitely no way that you could get this inside your [asshole][end if].".

To decide which number is the bartering value of (T - a plug) for (M - a wrestler):
	decide on the girth of T / 3.

To say MonsterOfferRejectFlav of (M - a wrestler) to (T - a plug):
	say "[speech style of M]'Pff, that's not big enough for me, it'd fall right out!'[roman type][line break]".

To say MonsterOfferAcceptFlav of (M - a wrestler) to (T - a plug):
	say "[speech style of M]'Ooh, fine, you've tempted me.'[roman type][line break][BigNameDesc of M] unzips the crotch of her latex outfit, and with a lewd, shameless face, works the plug into her asshole, before zipping her outfit back up. [line break][speech style of M]'Tada!'[roman type][line break]".

Definition: a plug (called C) is untransformable:
	if C is plentiful, decide no;
	decide yes.

To decide which object is the potential-upgrade-target of (C - a plug):
	unless C is unique, decide on a random off-stage anal beads;
	decide on nothing.


Section 1 Tail Plug

This is the remove inappropriate tail plugs rule:
	repeat with B running through tail plugs:
		now B is in Holding Pen.
The remove inappropriate tail plugs rule is listed in the diaper quest fix rules.

Report kneeling while there is a worn balancing tail plug:
	if seconds > 0 and the player is in danger and the standing capability of the player > 0:
		say "With catlike reflexes, you immediately try to spring back to your feet!";
		now delayed stand is 0;
		try standing.

This is the knickers tail plug clash rule:
	if wearing-target is total protection:
		repeat with O running through worn tail plugs:
			if summoning is 0, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The knickers tail plug clash rule is listed in the knickers wearability rules.

This is the trousers tail plug clash rule:
	if wearing-target is total protection:
		repeat with O running through worn tail plugs:
			if summoning is 0, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The trousers tail plug clash rule is listed in the trousers wearability rules.

This is the overdress tail plug clash rule:
	if wearing-target is total protection:
		repeat with O running through worn tail plugs:
			if summoning is 0, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The overdress tail plug clash rule is listed in the overdress wearability rules.

Check replacing:
	if there is a worn tail plug:
		unless the noun is crotch-assless or the noun is skirted, say "You can't replace any clothing while you are wearing the [random worn tail plug]!" instead.

To decide which object is the concealer of (C - a tail plug):
	repeat with O running through worn actually dense bottom-layer-concealing unskirted clothing: [Tail plug not concealed by skirts.]
		decide on O;
	decide on nothing.

To say CurrentlyVisibleFlav of (C - a tail plug):
	let S be a random worn actually dense potentially asshole covering clothing;
	say "It is currently visible to anyone who looks at you[if S is clothing], since the tail is creeping out from under your [printed name of S][end if].".

Sex Toy Framework ends here.

