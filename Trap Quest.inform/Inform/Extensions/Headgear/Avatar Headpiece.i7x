Avatar Headpiece by Headgear begins here.

avatar-headpiece is a headgear. avatar-headpiece is metal. avatar-headpiece is purity. avatar-headpiece is redness-positive. avatar-headpiece is hair growing. avatar-headpiece is womanly. Understand "tiara", "gold", "golden", "headdress", "horns", "hood" as avatar-headpiece.

The printed name of avatar-headpiece is usually "[clothing-title-before]avatar headpiece[clothing-title-after]". The text-shortcut of avatar-headpiece is "avh".

To decide which figure-name is the clothing-image of (C - avatar-headpiece):
	decide on figure of gold-tiara.

[Like a "sphinx headdress"]
To say ClothingDesc of (H - avatar-headpiece):
	say "This elaborate crown is made up of a solid gold tiara attached to a hood that [if H is worn]would cover[otherwise]covers[end if] the top of your head, back of your neck, and some of your shoulders. The tiara is decorated with a large, red gemstone in the center and two holes on either side of it, [if the class of the player is avatar]which are currently occupied by two horns that suddenly grew out of your forehead, locking the tiara in place.[otherwise]which makes the whole thing seem a bit incomplete.[end if]";
	if the blackfire of H > 0 and H is worn:
		let F be the blackfire of H;
		say "The crown is projecting a shroud of black flames that surrounds your [if F is 1]hands[otherwise if F is 2 or F is 4]whole body[otherwise if F is 3]whole body, especially your hands[end if]";

To say ShortDesc of (H - avatar-headpiece):
	say "golden crown".

Definition: avatar-headpiece is gem themed: decide yes.
[Definition: avatar-headpiece is demonic: decide yes.]

Definition: avatar-headpiece is removable:
	if the player is soulless, decide yes;[Player can get rid of it at any time by losing their virginity]
	decide no.

avatar-headpiece has a number called blackfire.



Chapter - Class Outfit

[1 - slap bonus, 2 - knee and kick bonus, 3 - better slap bonus, 4 - better everything bonus]
To compute class outfit of (H - avatar-headpiece):
	if the humiliation of the player > HUMILIATION-PROUD and the blackfire of H is 0:
		say "You feel a weak pressure in your chest as your master's presence shifts around inside you. Something, somewhere seems to click, and a wave of pleasure passes through your body as two ominous clouds of burning motes appear around your hands.  You hear the voice of your master inside your head.[line break][first custom style]'Did that feel good, [NameBimbo]? Now that your vessel has begun to adapt, my power is starting to manifest. You and I will only grow more powerful from here.'[roman type][line break]";
		Arouse 500;
		now the blackfire of H is 1;
	otherwise if the humiliation of the player > HUMILIATION-MODEST and the blackfire of H is 1:
		say "You feel a moderate pressure in your chest as your master's presence shifts around inside you. Something, somewhere seems to click, and waves of pleasure pass through you as the cloud of burning motes expands, encompassing your whole body! Your master's voice booms inside your head.[line break][first custom style]'That is the pleasure of power, [NameBimbo]. The stronger I become the better you will feel!'[roman type][line break]";
		Arouse 750;
		now the blackfire of H is 2;
	otherwise if the humiliation of the player > HUMILIATION-DISGRACED and the blackfire of H is 2:
		say "You feel a strong, almost rhythmic pressure in your chest as your master's presence shifts around inside you. Something, somewhere seems to click, and you can't help but gasp as waves of pleasure suddenly radiate out from your core. You hear your master's voice booming inside your head as the motes around your hands seem to grow even hotter.[line break][first custom style]'Enjoy yourself, [NameBimbo]. My power is almost fully manifest. Soon, [NameBimbo]... soon.'[roman type][line break]";
		Arouse 1000;
		now the blackfire of H is 3;
	otherwise if the humiliation of the player > HUMILIATION-BROKEN and the blackfire of H is 3:
		say "You feel a strong, strangely rhythmic pressure in your chest, and your knees nearly buckle as something inside you finally shifts. Your master's voice booms in your head as the cloud of motes around you grows even stronger.[line break][first custom style]'Even I felt that one. Your vessel has completely adapted, [NameBimbo], and my full power is manifest. [if the humiliation of the player > HUMILIATION-BROKEN]Of course, you probably aren't in any state to care...'[otherwise]Of course, I still haven't entered you fully. That will come soon enough...'[end if][roman type][line break]";
		Arouse 1500;
		now the blackfire of H is 4;
	otherwise:
		say "You feel a tiny pressure in your chest as your master's presence shifts around inside you.";
		ModerateHumiliate;

avatar-summoned is a number that varies.
To compute unique recycling of (C - avatar-headpiece):
	now avatar-summoned is 0.
To compute predicament resolution of (C - avatar-headpiece):
	now avatar-summoned is 0.

soul-harvest-quest is a headgear-clothing-quest.
To uniquely set up (C - avatar-headpiece):
	now the quest of C is soul-harvest-quest.

To say QuestFlav of (Q - soul-harvest-quest):
	say "You sense it wants you to defeat someone and take their soul.".

To say QuestTitle of (Q - soul-harvest-quest):
	say " (soul harvesting quest)".

soul-harvest-quest has a number called soul-counter.
soul-harvest-quest has a number called completion-count.

To progress quest of (Q - a soul-harvest-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase the soul-counter of Q by 1;
			let S be the soul-counter of Q;
			if S > the completion-count of Q or S >= 6:
				now the soul-counter of Q is 0;
				compute quest completion of Q on C;
			otherwise:
				say QuestProgressFlav of Q on C.
				

To compute persistent reward of (Q - a soul-harvest-quest) on (C - a clothing):
	increase the completion-count of Q by 1;
	if the completion-count of Q is 1:
		compute generic first time class reward of Q on C;
	otherwise:
		compute generic class reward of Q on C.

To say QuestProgressFlav of (Q - a soul-harvest-quest) on (C - a clothing):
	let S be the soul-counter of Q;
	let T be the completion-count of Q;
	while completion-count of Q > 5 and S + 6 < T:[Once we reach 6 completions, loop]
		decrease T by 6;
	let N be T - S + 1;
	if N < 0, now N is 1;[This generally shouldn't happen, but just in case.]
	say "[line break][first custom style]'[one of]That isn't enough, [NameBimbo][or]You could have done that hours ago. Stop wasting time, [NameBimbo][or]They were barely resisting! You don't deserve anything yet[or]I want more, [NameBimbo][in random order]. Find me [N] more [if N is 1]soul[otherwise]souls[end if].'[roman type][line break]The voice of your master reveberates as the newly released soul is sucked into your [ShortDesc of C].";

To say QuestPersistFlav of (Q - a soul-harvest-quest) on (C - a clothing):
	say "The voice of your master sounds off in your head[if C is cursed] as the magic sealing your [MediumDesc of C] is lifted[otherwise if C is bland and Q is soul-harvest-quest] as a blessing is laid upon your [MediumDesc of C][end if]! ".

To compute generic first time class reward of (Q - a soul-harvest-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is pink diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "[line break][first custom style]'Take this, [NameBimbo]. Its a gift.'[roman type][line break]A [MediumDesc of D] materialises [if D is worn]straight onto your finger[otherwise]right in front of you[end if] as the newly released soul is sucked into your [ShortDesc of C].";
		unless D is worn, compute autotaking D;
	otherwise:
		say "[line break][first custom style]'Absorb this soul, [NameBimbo]! Its a gift.'[roman type][line break]The newly released soul is suddenly sucked into your body, erasing your fatigue and filling you with power!";
		now the fatigue of the player is 0;
		MagicPowerUp 1.[same as the reward for succubus taking a soul, minus int]

To compute generic class reward of (Q - a soul-harvest-quest) on (C - a clothing):
	say "[line break][first custom style]'[one of]Ok, [NameBimbo]. I suppose you deserve something nice.'[or]Good girl, [NameBimbo]. Keep working hard, and you'll get more gifts like this.'[or]I suppose I'm satisfied. Now be a good girl and accept this reward, [NameBimbo].'[in random order][roman type][line break]";
	let D be a random off-stage ring;
	if D is ring and the completion-count of Q < 2:[its a second time class reward, essentially]
		now D is ruby;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "A [MediumDesc of D] materialises [if D is worn]straight onto your finger[otherwise]right in front of you[end if] as the newly released soul is sucked into your [ShortDesc of C].";
		unless D is worn, compute autotaking D;
	otherwise:
		say "The newly released soul is suddenly sucked into your body, erasing your fatigue and filling you with power!";
		now the fatigue of the player is 0;
		MagicPowerUp 1.

To compute virginity-loss of (C - avatar-headpiece):
	now C is not purity;
	say "You hear a sharp *snap* as your horns simultaneously break and fall off.[line break][first custom style]'You SLUT! Nobody's going to want their soul harvested by some used up whore like you!'[roman type][line break]The voice of your master echoes inside your head as [his of shopkeeper] presence abruptly shifts out of you.[line break][first custom style]'My only choice is to turn you into an altar girl. Don't worry, all you have to do is fuck a couple demons. It should come naturally for a dirty slut like you.'[roman type][line break]Your [ShortDesc of C] trembles as the two holes close up, and the hood disintegrates into ash, leaving only the golden tiara sitting on your head.";
	now C is cursed;
	now the quest of C is demon-slut-quest;
	transform C into gold-tiara;
	compute class outfit of gold-tiara.

Avatar Headpiece ends here.