Swords by Equippables begins here.

A sword is a kind of equippable. A sword is usually slap ready. A sword is usually metal. A sword is usually unique. Understand "sword" as sword. The text-shortcut of a sword is "sw". [There should only ever be one sword in the game universe at a time]

To say ShortDesc of (S - a sword):
	say "sword".

To say ClothingDesc of (S - a sword):
	say "A metal blade, perfect for cutting things.".

Definition: a sword is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Definition: a sword is immune to change: decide yes.

Check pulling a sword:
	try taking the noun instead.

Check taking a sword:
	if there is a worn hand ready clothing:
		say "You try to pick up [NameDesc of the noun], but the hilt resists your touch. Maybe you need an open hand?";
		check clutch replacement instead.

Report taking a sword:
	if the noun is carried:
		try wearing the noun;
		if the noun is carried:
			now the noun is in the location of the player;
			say "Unable to properly wield it, you are forced to let [NameDesc of the noun] drop back to the ground.".


Report taking off a sword:
	say "As you have no way to safely hold [NameDesc of the noun], you are forced to drop it to the ground.";
	try dropping the noun.

To decide which number is the bartering value of (S - a sword) for (M - a gladiator):
	if S is dildo sword, decide on 0;
	decide on 10.

To compute offer reward of (M - a gladiator) for (T - a sword):
	let S be a random off-stage chainmail skirt;
	if S is a thing and M is ally and Dungeon13 is placed:
		only destroy S;
		now S is in Dungeon13;
		now the raw-magic-modifier of S is 1;
		now S is blessed;
		now S is confidence;
		now S is dexterity-influencing;
		say "[speech style of M]'A find such as this deserves a substantial reward. Go to the [location of S], and check the top shelf, hidden right at the back left hand side. There you will find an enchanted skirt that will protect you on your travels.'[roman type][line break]";
	otherwise:
		compute standard offer reward of M for T.

Section 0 - Sword In The Stone

which-sword is a thing. which-sword is in Woods26. The printed name of which-sword is "[TQlink of item described]sword in the stone[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of which-sword is "sw". Understand "sword", "stone", "in the stone" as which-sword.

Figure of sword is the file "Items/Accessories/Equippables/sword1.jpg".

To decide which figure-name is examine-image of (C - which-sword):
	decide on figure of sword.

To say ShortDesc of (S - which-sword):
	say "sword".

To say ExamineDesc of (S - which-sword):
	say "A sword stuck in a stone, just like in the fairy tales you've heard. If you [bold type]take[roman type] it out, perhaps your destiny will become clear."

Definition: which-sword is immune to change: decide yes.

Check taking which-sword:
	if the player is wrist bound behind, say "You can't pull out the sword while your hands are stuck behind your back." instead;
	if there is a worn hand ready clothing:
		say "You try, but the hilt resists your touch. Maybe you need an open hand?" instead;
		check clutch replacement instead.

Definition: an equippable is destiny-appropriate: decide no.
Definition: an equippable is destiny-prioritised: decide no.

Report taking which-sword:
	let S be dildo sword;
	if diaper quest is 1, now S is rattle;
	let R be a random fetish appropriate destiny-prioritised equippable;
	if R is nothing, now R is a random fetish appropriate destiny-appropriate equippable;
	if R is not nothing, now S is R;
	say "You're surprised by how easily the [ShortDesc of which-sword] slips out of the stone! ";
	now S is worn by the player;
	now S is identified;
	now S is sure;
	destroy which-sword;
	compute sword destiny of S.

To compute sword destiny of (S - an equippable):
	try examining S.

Section 1 - Sword of purity

sword-of-purity is a sword. sword-of-purity is purity.

The printed name of sword-of-purity is "[clothing-title-before]sword of purity[clothing-title-after]". Understand "of purity", "purity" as sword-of-purity.

To say ClothingDesc of (S - sword-of-purity):
	say "A gleaming silver sword, instilled with the power of purity. Holy energy emanates from the blade, as if the sword itself were comprised of pure, holy power. [bold type]The power seems to become stronger the more different parts of your body are exposed. [roman type][if S is worn]Just holding it in your hand makes you feel incredibly powerful, but no matter the angle, the light reflecting off the blade seems to cast a spotlight on your [vagina], as if to remind enemies where the power comes from... and how to defeat it.[otherwise]It's clearly quite powerful, but something tells you that if you ever lose while wielding this sword...[end if]";
	if S is worn:
		say "Your current body part exposure status is:[line break]";
		repeat with BP running through body parts:
			if (BP is scrotum or BP is penis) and the player is not possessing a penis:
				say "";
			otherwise if BP is vagina and the player is not possessing a vagina:
				say "";
			otherwise if BP is at least partially exposed:
				say "[BP]: [bold type]exposed[roman type][line break]";
			otherwise:
				say "[BP]: [if BP is breasts and there is a worn warrior chestpiece][bold type]sexified by chestpiece[otherwise]not exposed[end if][roman type][line break]".

To say ShortDesc of (S - sword-of-purity):
	say "gleaming silver sword".

Figure of purity sword is the file "Items/Accessories/Equippables/sword3.png".
Figure of purity sword cutscene is the file "Special/Cutscene/cutscene-sword1.jpg".

To decide which figure-name is clothing-image of (C - sword-of-purity):
	decide on figure of purity sword.

To decide which number is the initial outrage of (C - sword-of-purity):
	decide on 0.
Definition: sword-of-purity is grey themed: decide yes.
Definition: sword-of-purity is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Definition: sword-of-purity is destiny-appropriate:
	if the class of the player is succubus, decide no;
	if the player is possessing a vagina and the vaginalvirgin of the player is 1, decide yes;
	if the player is ready for event TG, decide yes;
	decide no.
Definition: sword-of-purity is destiny-prioritised:
	if the class of the player is succubus, decide no;
	if the player is ready for common event TG, decide yes;
	if the player is not possessing a vagina or the vaginalvirgin of the player is 0, decide no;
	if background-pure is 1 or flower hairclip is worn or the class of the player is virgin warrior or the class of the player is "princess", decide yes;
	decide no.

[!<TheSwordOfPurityPussySlutRule>+

Equipping the sword-of-purity makes vaginal sex much more likely.

+!]
This is the sword-of-purity pussy slut rule:
	if sword-of-purity is worn, increase the desirability of vagina by 13.
The sword-of-purity pussy slut rule is listed in the pussy slut eligibility rules.

To decide which number is the slap damage improvement of (W - sword-of-purity):
	let X be the number of at least partially exposed body parts - 5; [for a maximum of +4 (or +5 for a futa)]
	if vagina is not at least partially exposed and current cameltoe > 0, increase X by 1; [close enough]
	if there is a worn warrior chestpiece and breasts is not at least partially exposed, increase X by 1; [close enough]
	if gown-of-purity is worn, increase X by 1;
	if there is a worn tiara, increase X by 1;
	increase X by the magic-modifier of W;
	decide on X.

To decide which number is the vaginal-sex-addiction-influence of (W - sword-of-purity):
	decide on 2.

To compute attack of (W - sword-of-purity) at (M - a monster):
	say "[if the slap damage improvement of W <= 1][one of]You slash at [NameDesc of M] with your [ShortDesc of W].[or]You scratch [NameDesc of M] with the tip of your [ShortDesc of W].[at random][otherwise][one of]You can hear a holy orchestra in the background as you fiercely slash at [NameDesc of M] with your [ShortDesc of W].[or]You leave a trail of golden light as you slice [NameDesc of M] with your [ShortDesc of W].[at random][end if]".

To compute attack effect of (W - sword-of-purity):
	do nothing.

To compute sword destiny of (S - sword-of-purity):
	try examining S;
	say "You have been deemed pure and worthy! You feel its power flowing through you. You should try using your [bold type]slap[roman type] attack on enemies!";
	if the player is sexed male and tg fetish >= 1:
		say DefaultSexchangeFlav;
		SexChange the player;
	now virginity-valued is 1;
	virginreward;
	if the class of the player is "princess" and the player is possessing a vagina: [no multi-class allowed]
		say "[bold type]You resolve to yourself that there is no way you are going to let this creepy game take away your virginity.[roman type][line break]";
		let O be a random worn overdress;
		if O is overdress:
			if O is not virgin princess outfit, transform O into virgin princess outfit;
		otherwise:
			PinkWardrobeUnclash virgin princess outfit;
			summon virgin princess outfit uncursed;
		let H be a random worn headgear;
		now the quest of H is virginity-retention-quest;
		say "You can sense that your [MediumDesc of H] now wants you to remain a vaginal virgin!";
	if the class of the player is "fairy godmother" and the number of worn unremovable dress is 0:
		say "[bold type]You feel a deep longing to remain a pregnant virgin for as long as possible.[roman type][line break]";
		let H be a random worn headgear;
		now the quest of H is virginity-retention-quest;
		transform H into flower hairclip;
		say QuestFlav of H;
		let O be a random worn overdress;
		if O is overdress:
			if O is not sheer-chest-garb, transform O into sheer-chest-garb;
		otherwise:
			unclash class summon sheer-chest-garb;
		compute class outfit of flower hairclip;
	follow the player class rules; [update class]
	if the class of the player is virgin warrior and the class of the player is not princess and the class of the player is not faerie and the class of the player is not priestess:
		let K be a random worn knickers;
		if K is not unremovable knickers:
			if K is a thing, WardrobeVanish K;
			summon white-g-string cursed;
			now the quest of white-g-string is vaginal-virginity-quest;
			say "A tiny tight and sheer white g-string appears over your [vagina]! You sense that it wants you to lose your vaginal virginity.";
		appropriate-cutscene-display figure of purity sword cutscene with priority 3.

[Check taking sword-of-purity:
	if the player is sexed male and tg fetish is 0:
		say "BUG - the sword-of-purity shouldn't have spawned with your fetish options. Please report this to Aika!" instead;
	otherwise if diaper focus is 1 and the player is diapered and the noun is in Woods26:
		let R be a random rattle;
		summon R cursed;
		say "As you pull the sword free, it turns into a [ShortDesc of R], stuck to your hand![line break][variable custom style][if the bimbo of the player < 7]You can't be serious...[otherwise if the bimbo of the player < 14]Hmm, this actually feels like it could so some real damage![otherwise]Ooh, this is much more appropriate for a diapered baby like me![end if][roman type][line break]";
		only destroy the noun instead;
		do nothing instead;
	otherwise if the vaginalvirgin of the player is 0 and the player is possessing a vagina:
		let R be a random dildo sword;
		summon R cursed;
		say "As your hands close around the hilt, it turns into a [ShortDesc of R], which sticks to your hand![line break][variable custom style][if the bimbo of the player < 7]You can't be serious...[otherwise if the bimbo of the player < 14]Hmm, there must be a way to give this some power...[otherwise]Ooh, I can't wait to shove this massive thing inside my greedy cunt![end if][roman type][line break]";
		only destroy the noun instead;
		do nothing instead;
	otherwise if flower hairclip is not actually summonable and flower hairclip is not worn:
		allocate 2 seconds;
		say "You can't get it to budge![if there is worn headgear][line break]You feel your [ShortDesc of random worn headgear] slightly shudder.[end if]" instead;
	if the player-class is succubus, say "The sword heats up to almost searing at your touch! Clearly it wants nothing to do with you." instead;]

Report wearing sword-of-purity:
	if the noun is cursed:
		say "Your grip tightens involuntarily as your fingers close around the handle. The sword must be cursed!";
	otherwise if the player-class is succubus:
		say "The sword heats to almost absurd levels in your grasp! You are badly burned as you desperately drop it!";
		BodyRuin 2;
		DelicateUp 1;
		try silently dropping a random worn sword-of-purity;
	otherwise:
		say "Pure energy courses through your arm as your finger close around the handle. You can hear the singing of a holy orchestra as a golden spotlight lowers down from above, settling over your [vagina].".

To compute virginity-loss of (H - sword-of-purity):
	now the raw-magic-modifier of H is 0;
	now H is cursed;
	now the quest of H is show-and-tell-quest;
	transform H into dildo sword.

To curse (B - sword-of-purity):
	if B is not blessed:
		compute virginity-loss of B;
	otherwise:
		now B is bland.

Section 2 - Dildo Sword

dildo sword is a sword. dildo sword is unique. dildo sword is plastic. dildo sword has a number called dildo girth. The dildo girth of dildo sword is 5. dildo sword has a number called the decay-tracker. The text-shortcut of dildo sword is "ds".
The printed name of dildo sword is "[clothing-title-before]dildo sword[clothing-title-after]".

Definition: dildo sword is penis themed: decide yes.
Definition: dildo sword is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Figure of dildo sword is the file "Items/Accessories/Equippables/sword2.png".

To decide which figure-name is clothing-image of (C - dildo sword):
	decide on figure of dildo sword.

To say ClothingDesc of (S - dildo sword):
	say "[if S is worn]You are wielding[otherwise]This is[end if] [if the girth of S < 7]a large[otherwise if the girth of S < 9]a giant[otherwise]an absolutely massive[end if] floppy dildo[if the raw-magic-modifier of S is 0], which is currently absolutely useless for real combat! But you wonder what would happen if you put it inside of you...[otherwise], which has some slight power in combat thanks to its magic glow.[end if][line break][variable custom style][if the vaginalvirgin of the player is 0 and the player is possessing a vagina]It serves as a permanent reminder of the shameful way I lost my cherry.[otherwise if the raw-magic-modifier of S <= 0]I could barely win a cat-fight using a weapon like this![otherwise]A weapon that gains its power from fucking me. How appropriate.[end if][roman type][line break]".

To decide which number is the initial outrage of (C - dildo sword):
	decide on 13.

To decide which number is the slap damage improvement of (W - dildo sword):
	let X be -1;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - dildo sword) at (M - a monster):
	say "The floppy [W] makes a [if the magic-modifier of W > 3]powerful thud[otherwise]loud slapping sound[end if] as it hits [NameDesc of M].".

Definition: dildo sword is insertable: decide yes.

To decide which number is the girth of (S - dildo sword):
	decide on the dildo girth of S.

To compute periodic effect of (D - dildo sword):
	if the raw-magic-modifier of D > 0:
		increase the decay-tracker of D by 1;
		if the decay-tracker of D > 20:
			say "[BigNameDesc of D] loses some of its magic charge.";
			now the decay-tracker of D is 0;
			decrease the raw-magic-modifier of D by 1;
	otherwise:
		now the decay-tracker of D is 0.

Report plugging something with dildo sword:
	if the raw-magic-modifier of the second noun < 5:
		let N be 5 - the raw-magic-modifier of the second noun;
		let F be a random fuckhole penetrated by the second noun;
		say "[bold type]As the dildo bottoms out inside of you, ";
		let R be a random number between 1 and 3;
		if R is 1 and F is fuckhole:
			say "it grows, trying to stretch you even further.[roman type] Your [variable F] [if the openness of F < 10]is forced to gape even further[otherwise]relaxes, easily accepting the largest size that the dildo sword can grow to[end if]. ";
			now the dildo girth of the second noun is the openness of F + 2;
			if the dildo girth of the second noun > 10, now the dildo girth of the second noun is 10;
			ruin F;
		otherwise if R is 2:
			say "you feel a strange pressure inside of you, which you quickly realise is the dildo sword filling you with [if inflation fetish is 1 and F is asshole]air[otherwise]some kind of magic serum[end if]![roman type] Before you know it, your [if inflation fetish is 1]belly is[otherwise]hips are[end if] rumbling and growing...";
			if inflation fetish is 1, Assfill N * 2 air;
			otherwise HipUp (N + 1) / 2;
		otherwise if F is fuckhole:
			say "it starts wriggling around, stimulating your insides all the way from the deepest point inside to your entrance![roman type] [if N is 5]The tentacle-like movement is extremely powerful and fast, causing your whole body to shudder. It lasts for several seconds! [otherwise if N > 2]It lasts for a few seconds, enough to make you weak at the knees. [otherwise]It only lasts for a couple of seconds but it still felt intense. [end if]You can't help but become [if the player is a bit horny]further [end if]aroused.";
			stimulate F from the second noun times N;
			finally arouse;
			ruin F;
	say "[if the second noun is cursed]Since you can't let go of the handle,[otherwise]Since the large dildo is so heavy, it can't stay inside on its own and[end if] you are forced to pull it back out. [if the raw-magic-modifier of the second noun < 5]As it comes out, you find that it is glistening with newly recharged magic power![end if]";
	now the raw-magic-modifier of the second noun is 5;
	dislodge the second noun.

To compute attack effect of (H - dildo sword):
	if the raw-magic-modifier of H > 0 and attack-type is 1:
		say "[bold type]The glow of your [H][bold type] [if the raw-magic-modifier of H <= 1]disappears[otherwise]fades[end if].[roman type][line break]";
		decrease the raw-magic-modifier of H by 1.

Carry out taking dildo sword:
	now the noun is identified.

To compute sword destiny of (S - dildo sword):
	say "As it does, it transforms into a [printed name of S]!";
	try examining S;
	say "You have clearly not been deemed worthy of a proper weapon. Unless, perhaps, there is a trick to increasing this sword's power?";
	curse S.

Section 3 - Blade of Womanhood

[gladiator-sword weighs more or less based on the player's "honour". Running away will make the sword progressively heavier until the player can't even stand up.]

gladiator-sword is a sword. gladiator-sword is unique. gladiator-sword has a number called burden.

The printed name of gladiator-sword is "[clothing-title-before]blade of womanhood[clothing-title-after]". The text-shortcut of gladiator-sword is "blw". Understand "blade", "of womanhood", "womanhood" as gladiator-sword.

Definition: gladiator-sword is fetish appropriate:
	if max breast size > 9 and the largeness of breasts > 4, decide yes;
	decide no.

Definition: gladiator-sword is destiny-appropriate:
	if breasts is lewdly exposed, decide yes;
	decide no.
Definition: gladiator-sword is destiny-prioritised:
	if gladiatorcurse < 0, decide yes;
	decide no.

To decide which figure-name is clothing-image of (C - gladiator-sword):
	decide on figure of purity sword.

Definition: gladiator-sword is grey themed: decide yes.

To decide which number is the heaviness of (S - gladiator-sword):
	if S is worn, decide on the burden of S * 5;
	otherwise decide on the burden of S * 3.

To say ClothingDesc of (S - gladiator-sword):
	say "A giant, dull-edged sword made of pure iron. Just swinging its weight around [if the burden of S < the strength of the player / 2]should take an enormous amount of strength, but somehow you have no trouble lifting it[otherwise if the burden of S > the strength of the player * 2]feels impossible[otherwise]takes a massive amount of strength[end if]. [if S is worn and S is unremovable]A magical chain is attached to the hilt, securely tethering it to your arm. There is a glowing message engraved on the hilt[otherwise]The hilt is engraved with a short message[end if]: 'Wield with honour.'[line break][variable custom style]A sword that punishes the wielder for running from a fight. [if S is worn and S is unremovable]And I think to make the magical chain go away, I need to attack enemies with it.[otherwise if the player is feeling dominant]Fine by me![otherwise if the player is feeling submissive]Uh-oh... Well at least getting on my knees and submitting doesn't count as running away, I think.[otherwise]That rather reduces my number of options...[end if][roman type][line break]".

To say ShortDesc of (S - gladiator-sword):
	say "blade".
To say MediumDesc of (S - gladiator-sword):
	say "giant dull-edged sword".

Definition: gladiator-sword (called C) is removable:
	if the burden of C <= 0 or the burden of C + 10 <= the strength of the player, decide yes;
	decide no.

To compute attack effect of (C - gladiator-sword):[The gladiator-sword becomes lighter the more you use it in combat. Don't be cowardly!]
	if attack-type is 1, BurdenDown C by 1.

To compute attack of (W - gladiator-sword) at (M - a monster):
	say "You [one of]slash at [NameDesc of M] with[or]scratch [NameDesc of M] with the tip of[at random] your [W].".

To decide which number is the slap damage improvement of (W - gladiator-sword):
	let X be 2;
	increase X by the magic-modifier of W;
	if the largeness of breasts > 15 or the largeness of breasts >= max breast size, increase X by 2;
	decide on X.

Check taking gladiator-sword:
	if gladiatorcurse >= 0:[finishing the gladiator quest makes you worthy]
		if the player is sexed male and the largeness of breasts < max breast size and the largeness of breasts < 10, say "The sword resists your touch. Maybe it doesn't consider your [ShortDesc of breasts] womanly enough." instead;
		let C be the concealer of breasts;
		if C is clothing, say "The sword resists your touch. Maybe you're not worthy with your breasts hidden behind your [ShortDesc of C]?" instead.

To compute sword destiny of (C - gladiator-sword):
	try examining C;
	say "You feel a swell of pride inside of you as you lift the weightless blade over your head! You should try using your [bold type]slap[roman type] attack on enemies!".

Report taking gladiator-sword:
	try wearing the noun.

Report wearing gladiator-sword:
	if the noun is unremovable, say "[bold type]A magic chain appears, binding [NameDesc of the noun] to your wrist![line break][variable custom style]I'm being punished... I won't be able to remove the sword until I've used it in battle some more.[roman type][line break]".

To BurdenUp (C - gladiator-sword) by (N - a number):
	increase the burden of C by N;
	if the burden of C > 0 and the burden of C + 10 > the strength of the player and the burden of C + 10 - N <= the strength of the player, say "[bold type]A magic chain appears, binding [NameDesc of C] to your wrist![line break][variable custom style]I'm being punished... I won't be able to remove the sword until I've used it in battle some more.[roman type][line break]";
	follow the reset overburdened rule.
To BurdenDown (C - gladiator-sword) by (N - a number):
	if the burden of C > 0:
		decrease the burden of C by N;
		if the burden of C < 0, now the burden of C is 0;
		if the burden of C is 0 or (the burden of C + 10 <= the strength of the player and the burden of C + 10 + N > the strength of the player), say "[bold type]The magic chain binding [NameDesc of C] to your wrist disappears![roman type] You can now remove it whenever you like.";
		follow the reset overburdened rule.

To compute survival reward of (C - gladiator-sword):
	say "The [MediumDesc of C] suddenly gains several pounds of extra weight, significantly weighing you down.";
	BurdenUp C by 5.

To compute periodic effect of (C - gladiator-sword):
	if breasts is not lewdly exposed:
		say "Reacting to your [BreastDesc] no longer being exposed, [NameDesc of C] becomes red hot, causing serious pain to the palm of your hand!";
		if C is unremovable:
			PainUp 55;
			say "The magic chain temporarily eventually retracts, but only after your hand has been tortured by magical burning pain for several seconds. ";
		otherwise:
			PainUp 15;
		say "You are forced to immediately drop it to the ground.";
		now C is in the location of the player.

To compute school periodic effect of (C - gladiator-sword):
	compute periodic effect of C.

This is the gladiator sword wants puppies to breathe rule:
	if gladiator-sword is worn and wearing-target is not fully exposing and wearing-target is not chestless:
		if summoning is 0 and autowear is false, say "Your sword arm actively prevents you from putting on your [ShortDesc of wearing-target]! Looks like your [ShortDesc of gladiator-sword] wants your chest to stay uncovered!";
		rule fails.
The gladiator sword wants puppies to breathe rule is listed in the bra wearability rules.
The gladiator sword wants puppies to breathe rule is listed in the corset wearability rules.
The gladiator sword wants puppies to breathe rule is listed in the underdress wearability rules.
The gladiator sword wants puppies to breathe rule is listed in the overdress wearability rules.

Section 4 - Demon Broadsword

[The more you attack with the demon broadsword the hornier it will get. Let its arousal reach 7 and it will transform into a giant dildo that likes to fuck you every so often.]

demon broadsword is a sword. demon broadsword has a number called arousal. demon broadsword can be dildoed. demon broadsword is not dildoed. demon broadsword has a number called dildo girth. The dildo girth of demon broadsword is 5.

The printed name of demon broadsword is "[clothing-title-before][if the item described is dildoed]Demon Lord's 'Broadsword'[otherwise]Demon Lord's Living Broadsword[ArousalDesc of item described][end if][clothing-title-after]". The text-shortcut of demon broadsword is "dlb". Understand "lord's", "lords", "living", "broad", "lord" as demon broadsword.

Definition: demon broadsword is destiny-appropriate:
	if the player is feeling dominant, decide yes;
	decide no.
Definition: demon broadsword is destiny-prioritised:
	if demon lord is alive or demon lord is bossdefeated or the class of the player is worshipper, decide yes;
	decide no.
Definition: demon broadsword is live: decide yes.
Definition: demon broadsword is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Figure of demon broadsword is the file "Items/Accessories/Equippables/sword4.png".
Figure of demon penis sword is the file "Items/Accessories/Equippables/sword5.png".

To decide which figure-name is clothing-image of (C - demon broadsword):
	if C is dildoed, decide on figure of demon penis sword;
	otherwise decide on figure of demon broadsword.

To decide which number is the girth of (S - demon broadsword):
	decide on the dildo girth of S.

To say ClothingDesc of (S - demon broadsword):
	if S is dildoed:
		say "What was once a sword hilt is now a leather handle attached to an onyx portal. A giant red [manly-penis] is poking through it, fully erect and emanating unholy energy[if demon lord is not alive]. Maybe if you let it cool down enough, it'll turn back into a real sword?[otherwise].[end if]";
	otherwise:
		say "A giant, gem encrusted sword with a jagged cutting edge. [if S is worn]The hilt is made of special treated leather, which makes it feel like your hand is wrapped around a hard [manly-penis][otherwise]The hilt is made of a special treated leather, always warm to the touch[end if].".

To say ShortDesc of (S - demon broadsword):
	if S is dildoed:
		say "giant red [manly-penis] sword";
	otherwise:
		say "giant gem encrusted sword".

Definition: demon broadsword is demonic: decide yes.
Definition: demon broadsword is red themed: decide yes.
Definition: demon broadsword is gem themed:
	if it is not dildoed, decide yes;
	decide no.
Definition: demon broadsword is penis themed:
	if it is dildoed, decide yes;
	decide no.

To say ArousalDesc of (S - demon broadsword):
	if the arousal of S > 5:
		say " (dangerously aroused)";
	otherwise if the arousal of S > 2:
		say " (aroused)".

To decide which number is the initial outrage of (C - demon broadsword):
	if C is dildoed, decide on 8;
	decide on 1.

To compute attack of (W - demon broadsword) at (M - a monster):
	if W is dildoed:
		say "The stiff [W] makes a [if the arousal of W > 5]satisfying thud[otherwise]loud slapping sound[end if] as it hits [NameDesc of M].";
	otherwise:
		say "[BigNameDesc of W] shrieks as it slices through the air, towards [NameDesc of M]!".

To compute attack effect of (W - demon broadsword):
	if attack-type is 1:
		if W is not dildoed and the arousal of W < 7:
			increase the arousal of W by a random number between 1 and 2;
			say "The hilt pulses, hardening in your hand as you pull back from your attack[one of]! It's almost like it's getting excited by having somebody swing it around[or][stopping]!";
			if the bimbo of the player < 13 and the relevant sex addiction of the player < 15:
				if a random number between 1 and 2 is 1, say "[first custom style][one of]Ugh. That's disgusting.[or]Ohh... this feels disturbingly like holding an actual, stiffening penis.[or]Stop that, you disgusting sword! I'm not doing this for your pleasure! What sort of pervert makes a hilt that looks like a penis?[or]Dammit! The more I use this, the more it feels like an actual penis.[or]Good grief! I hope my friends can't see this penis-hilt, and think I'm enjoying groping it![then at random][roman type]";
			otherwise:
				if a random number between 1 and 2 is 1, say "[second custom style][one of]Ohh, actually, that's kind of nice to squeeze![or]I wish this was a real [penis] I was holding[or]Yeah, baby, get thicker, maybe I'll find another use for you.[or]I love the way it feels, swelling up while I grip it![or][if tg fetish >= 1]I wonder if this is what they do with the left-over penises? This might be some former player's penis, teehee![otherwise]I wonder if this penis actually belongs to somebody. Maybe if I return it, the owner will fuck me as a reward![end if][or]I [if tg fetish >= 1]wonder if my penis[otherwise]hope every penis[end if] might one day be used like this.[or]I wouldn't mind using the handle for something else if I win this fight![then at random][roman type]";
		otherwise if W is not dildoed:
			compute demon punishment of W;
		otherwise:
			increase the arousal of W by a random number between 1 and 2;
			if a random number between 1 and 2 is 1, say "[one of]The [printed name of W] flexes. It's definitely getting excited by having you swing it around like a weapon![or][or][cycling]".

To decide which number is the slap damage improvement of (W - demon broadsword):
	if W is dildoed:
		if demon lord is alive, decide on the favour of demon lord;
		decide on the arousal of W / 3;
	otherwise:
		decide on 2 + (the arousal of W / 3).[This damage sounds really good, but remember that some late-game enemies have upwards of 70 health, and you need to be careful about how much you use this weapon to fight.]

Definition: demon broadsword is facefucker: decide yes. [Can it make the player gag]

To compute periodic effect of (H - demon broadsword):
	if the arousal of H > 0 and demon lord is not in the location of the player:
		let N be 24;
		if the class of the player is priestess, decrease N by 10;
		if a random number between 1 and N is 1 and H is not dildoed:
			decrease the arousal of H by 1;
			say "Your [H] seems to calm down a bit.";
		otherwise if H is dildoed and (a random number between the arousal of H and (N + 10)) >= N + 10:
			if face is not actually occupied:
				let S be (the strength of the player / 2) - ((the oral sex addiction of the player + the thirst of the player) * 2);
				now H is penetrating face;
				say "The [printed name of H] suddenly jams itself down your throat, throatfucking you aggressively [if S > the arousal of H]until you force it out of your mouth[otherwise if S >= the arousal of H]until you muster the strength to wrench it out of your mouth[otherwise if the semen taste addiction of the player > the arousal of H]as you half-heartedly try to tug it out of your mouth[otherwise]as you desperately try to wrench it out of your mouth[end if].";
				if S < the arousal of H:
					say "It's far stronger than you are, and you're forced to endure being its cocksleeve until it finally fires a massive load straight down your throat!";
					StomachSemenUp the arousal of H;
					decrease the arousal of H by 8;
				otherwise:
					say "Its red surface glistens with a mixture of your spit and its own masculine juices, causing your head to swim as you breathe in its incredibly potent masculine musk.";
					SlowSemenTasteAddictUp 1;
					Arouse 200 + (the semen taste addiction of the player * 10);
					decrease the arousal of H by 2;
				FatigueUp 30 - S;[the lower S is, the more fatigued you get]
				now demon lord is penetrating face;
				instantThroat demon lord;
				BlowCount;
				now demon lord is not penetrating face;
				dislodge H;
			otherwise:
				if bukkake fetish is 1:
					say "The [printed name of H] stiffens, blasting your face with several hot ropes of [semen]. Your head swims as you breathe in its masculine musk.";
					CumFaceUp 4;
				otherwise:
					say "The [printed name of H] bends back and strikes you in the face, disorienting you and [if the player is gendered male]emasculating[otherwise]dehumanising[end if] you with its display of male power. You shiver as the pulsating length hovers above your head, causing your head to swim with its incredibly potent masculine musk.";
					if a random number between 1 and 3 is 1, PainUp 10;
					otherwise SlowSemenTasteAddictUp 1;
					Arouse 200 + (the semen taste addiction of the player * 10) + (the arousal of H * 10);
				decrease the arousal of H by 2;
		if H is dildoed and the arousal of H < 4 and demon lord is not alive:
			now H is not dildoed;
			now H is metal;
			if H is cursed, now H is bland;
			say "It has calmed down enough that it transforms back into a real sword!".

Check taking demon broadsword:
	if the class of the player is priestess, say "The sword shrinks away from your touch. Somehow." instead.

Report wearing demon broadsword:
	compute sword destiny of the noun;

To compute sword destiny of (S - demon broadsword):
	say "It emits a piercing shriek as it slices through the air!";
	try examining S;
	let DW be S;
	repeat with D running through worn demonic wearthings:
		if D is not S, now DW is D;
	if the player is a sissy or the class of the player is princess or the class of the player is royal slave or demon lord is alive or DW is not S:
		say "[if DW is not S]Reacting strongly to your [DW], it[otherwise]It[end if] shivers visibly as your fingers close around the hilt![line break]";
		compute demon punishment of S;
	otherwise:
		say "You feel a swell of overwhelming power[if S is not worn][one of]! You should [bold type]wield[roman type] it, and then try using your [bold type]slap[roman type] attack on enemies[or][stopping][end if]!".

To compute demon punishment of (S - demon broadsword):
	if bukkake fetish is 1 and a random number between 1 and 5 < 4:
		say "[bold type]The [printed name of S] transforms into a giant red [manly-penis].[roman type] You splutter as it immediately douses your body in several gallons of [semen]!";
		CumFaceUp 30;
	otherwise:
		say "[bold type]The [printed name of S] transforms into a giant red [manly-penis]![roman type] It immediately slaps you across the face, making your head swim as you breathe in its incredibly potent masculine musk.";
		OralSexAddictUp 1;
		IntDown 1;
		Arouse 200 + (the semen taste addiction of the player * 10) + (the arousal of S * 10);
	now the arousal of S is 10;
	now S is dildoed;
	now S is biological;
	now S is cursed. [There's purposefully no quest - it'll return to uncursed when it calms down]

Section 5 - Giant Rattle

rattle is an equippable. rattle is slap ready. rattle is plastic.

Definition: rattle is immune to change: decide yes.
Definition: rattle is fetish appropriate:
	if diaper lover > 0, decide yes;
	decide no.
Definition: rattle is destiny-prioritised:
	if the bladder-incontinence of the player > 3, decide yes;
	decide no.
Definition: rattle is destiny-appropriate:
	if the player is diapered, decide yes;
	decide no.

Definition: rattle is baby themed: decide yes.
Definition: rattle is yellow themed: decide yes.
Definition: rattle is blue themed: decide yes.
Definition: rattle is swimming themed: decide yes.

The printed name of rattle is "[clothing-title-before]giant rattle[clothing-title-after]". The text-shortcut of rattle is "rat". Understand "giant" as rattle.

Figure of rattle is the file "Items/Accessories/Equippables/rattle1.png".

To decide which figure-name is clothing-image of (C - rattle):
	decide on figure of rattle.

To say ClothingDesc of (C - rattle):
	say "An extremely large plastic rattle, with baby blue and yellow colours, and a rubber duck pattern. Its hard exterior, size and weight make it a wield-able weapon.".
To say ShortDesc of (C - rattle):
	say "large rattle".
To say MediumDesc of (C - rattle):
	say "large plastic rattle".

To decide which number is the initial outrage of (C - rattle):
	if diaper quest is 1, decide on 0;
	decide on 4.
To decide which number is the initial cringe of (C - rattle):
	decide on 8.

To decide which number is the slap damage improvement of (W - rattle):
	let X be 1;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - rattle) at (M - a monster):
	say "The [W] rattles as it hits [NameDesc of M] with a loud smack.".

To compute attack effect of (W - rattle):
	if the raw-magic-modifier of W > -2 and attack-type is 1:
		say "Your [W] glows black for a moment, and loses some of its power!";
		decrease the raw-magic-modifier of W by 1.

To compute sword destiny of (C - rattle):
	now C is cursed;
	say "As soon as it's removed, it transforms into a [C]!";
	try examining C;
	say "Your grip tightens involuntarily as your fingers close around the handle.[line break][variable custom style]I guess the decision's been made for me then, it's my weapon of choice for now...[roman type][line break]";
	compute summoned quest of C.

Report taking rattle:
	try wearing the noun;
	if the noun is cursed and the noun is worn, say "Your grip tightens involuntarily as your fingers close around the handle.[line break][variable custom style]I guess the decision's been made for me then, it's my weapon of choice for now...[roman type][line break]".

Section 6 - Sissy Slut's Longsword

[gets stronger whenever you have a prostate orgasm]

sissy-sword is a sword. sissy-sword has a number called charge.

The printed name of sissy-sword is "[clothing-title-before][if the item described is not held and the item described is in Woods26]sword in the stone[otherwise]sissy slut's longsword[end if][clothing-title-after]". The text-shortcut of sissy-sword is "ssl". Understand "sissy", "slut", "slut's", "longsword", "long" as sissy-sword.

Figure of sissy-sword is the file "Items/Accessories/Equippables/sword6.png".
To decide which figure-name is clothing-image of (C - sissy-sword):
	decide on figure of sissy-sword.

Definition: sissy-sword is sissifying: decide yes.
Definition: sissy-sword is destiny-prioritised:
	if the player is a sissy, decide yes;
	decide no.
Definition: sissy-sword is destiny-appropriate:
	if the player is gendered male and event tg < 3, decide yes;
	decide no.

To compute sword destiny of (S - sissy-sword):
	say "You excitedly pull up on your new longsword, only to find that it's not quite as [']long['] as you were hoping for.";
	now S is cursed;
	try examining S.

To decide which number is the delicateness-influence of (C - a sissy-sword):
	let X be 0;
	decrease X by the magic-modifier of C;
	if C is blessed, decide on X;
	if C is cursed, decide on X + 3;
	decide on X + 2.

To compute periodical effect of (S - sissy-sword):
	if the charge of S > 0 and the player is not live fucked:[Your sword won't lose charge while you're having sex]
		decrease the charge of S by 2;
		if the charge of S > 0, say "[one of]Your [ShortDesc of S] grows slightly cooler[or][or][or][or][cycling]";
		otherwise say "The [ShortDesc of S] cools off completely.".

To say ClothingDesc of (S - a sissy-sword):[I always use pink, so I described it as blue. It can always be changed]
	let C be the number of worn chastity bond + the number of worn clothing penetrating asshole;
	say "A sword that's really more of a dagger. The blade is four inches long, with [if the charge of S > 50]a powder blue[otherwise if the charge of S > 25]a light blue[otherwise if C <= 0]an angry red[otherwise]a dark, crystalline blue[end if] gemstone set into the hilt, which is [if the charge of S > 50]rather warm[otherwise if the charge of S > 0]slightly warm[otherwise]strangely cool[end if] to the touch. [unless C > 0]For some reason, it seems like it doesn't accept you.[line break][variable custom style]For some reason, I can sense that it wants me to either wear a chastity cage or... *gulp*... something in my butt...[roman type][line break][end if]".

To decide which number is the slap damage improvement of (W - sissy-sword):
	let X be the number of worn chastity bond + the number of worn ass plugging clothing;
	if X is 0, decide on -3;
	increase X by the magic-modifier of W;
	if the player is a sissy, increase X by 1;
	if the charge of W > 50, increase X by 2;
	if the charge of W > 0, increase X by 1;
	increase X by (the semen volume of belly + 3) / 4;[can get strong quickly, but is high risk]
	decide on X.

To compute attack of (W - sissy-sword) at (M - a monster):
	say "You [one of]lean close to[or]get in close to[or]get very close to[or]get very close to[at random] [NameDesc of M] and [one of]swipe at [him of M] with your[or]poke [him of M] with your[or]slash [him of M] with your[at random] [ShortDesc of W].".

This is the sissy-swords butt slut rule:
	if sissy-sword is worn, increase the desirability of asshole by 10.
The sissy-swords butt slut rule is listed in the butt slut eligibility rules.

This is the sissy-swords resolution rule:
	if sissy-sword is worn and the player is gendered male and (there is a worn chastity bond or asshole is actually occupied):
		say "Your [ShortDesc of sissy-sword] emits a burst of warmth as the gemstone in the hilt turns a shade of bright blue.";
		increase the charge of sissy-sword by a random number between 60 and 70.
The sissy-swords resolution rule is listed in the orgasm resolution rules.

Section 7 - Sword of the Void

voidblade is a sword.

The printed name of voidblade is "[clothing-title-before]voidblade[clothing-title-after]". The text-shortcut of voidblade is "vdb". Understand "void", "blade" as voidblade.

To say ClothingDesc of (S - voidblade):
	say "The blade of this sword seems to be made of pure darkness, with a swirling sea of pink motes floating in it. When you look at it, you somehow think of the [great ones], and you know its power comes from surrendering that which does not venerate them.".

To compute attack of (W - voidblade) at (M - a monster):
	say "The [printed name of W] seems to slice through reality itself as it arcs towards [NameDesc of M]!".

To compute attack effect of (W - voidblade):
	say "As you swing the blade, you cannot help but gaze into the swirling black and pink void it leaves in its wake. You feel like a tiny portion of your sense of self is being sucked into it.";
	humiliate 10.

To decide which number is the slap damage improvement of (W - voidblade):
	let X be 0;
	increase X by the magic-modifier of W;
	increase X by the humiliation of the player / 7000;
	decide on X.

Definition: voidblade is cult garb: decide yes.
Definition: voidblade is magic themed: decide yes.
Definition: voidblade is black themed: decide yes.

Swords ends here.
