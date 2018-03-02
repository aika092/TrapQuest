Chastity Cage by Bondage begins here.

A chastity cage is a kind of bondage. A chastity cage is usually unique. A chastity cage is usually sheer. There is 1 chastity cage. The printed name of chastity cage is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]chastity [if the player is male]cage[otherwise]belt[end if][clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of chastity cage is "cha". Chastity cage is usually crotch-assless. Chastity cage is usually crotch-intact. Understand "belt" as chastity cage.

Definition: a chastity cage (called C) is sissifying:
	decide yes.

To decide which number is the delicateness-influence of (C - a chastity cage):
	decide on 1.

To decide which number is the initial outrage of (C - a chastity cage):
	decide on 15.

[!<ClothingIsUrinationBlocking>+

Some things like chastity cages can allow urination and ejaculation through freely.

+!]
Definition: a chastity cage is urination blocking:
	decide no.

To decide which figure-name is clothing-image of (C - a chastity cage):
	if the player is male, decide on figure of male chastity cage;
	otherwise decide on figure of female chastity cage.

Figure of male chastity cage is the file "Items\Accessories\Chastity\chastitycage1.png".
Figure of female chastity cage is the file "Items\Accessories\Chastity\chastitycage2.png".

To say ClothingDesc of (C - a chastity cage):
	say "[if the player is male]A tight cage for your penis that stops you from getting an erection or stimulating your penis in any way.[otherwise]A chastity belt that completely prevents access to your [vagina]. The back straps go over each ass cheek, allowing full access to your [asshole].[end if]";
	if C is cursed, say "You can feel it slowly making you more and more aroused.";
	if the player is male, say "[variable custom style][if the bimbo of the player < 3][one of]Man, this is so bogus.[or]This is so uncomfortable.[or]Whoever made this game is pretty dumb. If I'm in a chastity cage I won't be able to have any sex![or]This sucks! This place is probably packed with hot girls I can fuck.[in random order][otherwise if the bimbo of the player < 6][one of]This is totally emasculating.[or]There's probably some porno around here if I get horny, but as long as I'm locked up like this it doesn't matter![or]I feel so girly wearing this.[or]Maybe it's a good thing I'm wearing this. I'd be so embarrassed if someone were fucking me and I got hard.[in random order][otherwise if the player is horny and the bimbo of the player < 10][one of]If I can't jack off, how am I supposed to sate myself?[or]At least there's a hole at the end so cum doesn't get trapped in there if I have an orgasm.[in random order][otherwise if the bimbo of the player < 9][one of]I'm honestly kind of glad I have this on. It would be so embarrassing if I got a boner in a place like this.[or]I'm not sure I want to take this off. What if I get a boner and someone sees it?[in random order][otherwise if the bimbo of the player < 12][one of]Only real men should be able to get erections, so I should keep this on.[or]Cocks are only useful for fucking sluts, it's a good thing I'm locked up.[or]I love [manly-penis]s, but only when they're used to fuck me.[in random order][otherwise][one of]I[']m a dirty slut, I don't deserve to get erections.[or]This would keep men from being bothered by my boy clitty when they fuck me![or]As long as I'm wearing this cage, it's like my [sissy-penis] doesn't even exist![in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][if the bimbo of the player < 3][one of]I'm having trouble understanding why the game would want me to wear this.[or]As long as I[']m wearing this chastity cage, nothing can touch my genitals.[or]I[']d rather it covered more than my crotch, but I can't really complain, I doubt anybody here can rip through solid metal.[in random order][otherwise if the bimbo of the player < 6][one of]Wearing this should make me relieved, but I just feel frustrated...[or]This isn't protecting me, it's just making me want sex![or]I know I shouldn't take this off, but...I want to.[in random order][otherwise if the bimbo of the player < 10][one of]It won[']t even touch my clit...[or]I thought I was supposed to have lots of sex. This is so dumb...[in random order][otherwise if the bimbo of the player < 13][one of]If it's against the rules to use my pussy, I should probably keep this on.[or]This is the game[']s way of telling me I don[']t deserve to get fucked in my pussy. It[']s probably right.[or]My asshole may be free when I wear this, but I can't touch myself when I[']m getting fucked![in random order][otherwise][one of]I[']m a dirty whore, I don't deserve to have my pussy fucked![or]More anal for me. Teehee![or]When this is on, I can[']t get double penetrated, and that[']s my favourite way to get fucked![or]If I find someone strong enough to pry this off, I[']ll probably find somebody with a big cock too![in random order][end if][roman type][line break]".

To say ShortDesc of (C - a chastity cage):
	say "chastity [if the player is male]cage[otherwise]belt[end if]".

To decide which number is the strength-influence of (C - a chastity cage):
	if C is cursed and the player is male, decide on (the arousal of the player - 2000) / 3000;
	decide on 0.

To compute periodic effect of (C - a chastity cage):
	if the player is male and the size of penis is 0:
		say "Your [ShortDesc of C] falls to the ground.";
		now C is in the location of the player.
	[if C is cursed:
		if the size of penis > min penis size and a random number between 1 and 250 is 1:
			PenisDown 1;
			say "You feel your cursed chastity cage [Shrink] your penis into a [ShortDesc of penis].";
		arouse seconds * 10.]

[!<TheChastityCagePussySlutRule>+

Decreases the chance of vaginal sex.

+!]
This is the chastity cage pussy slut rule:
	if there is a worn chastity cage, decrease the desirability of vagina by 5.
The chastity cage pussy slut rule is listed in the pussy slut eligibility rules.

[!<TheChastityCageBlocksMasturbationRule>+

Prevents masturbation.

+!]
This is the chastity cage blocks masturbation rule:
	if there is a worn chastity cage:
		if auto is 0, say "You can't get at your genitalia through your chastity cage!";
		rule fails.
The chastity cage blocks masturbation rule is listed last in the masturbation restriction rules.

Chapter - Wearability

chastity cage wearability rules is a rulebook. The wearability rules of chastity cage is usually chastity cage wearability rules.

This is the chastity cage already worn rule:
	repeat with O running through worn chastity cage:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The chastity cage already worn rule is listed in the chastity cage wearability rules.

This is the players in chastity can't wear vagina plugging clothes rule:
	if vagina is actually occupied and wearing-target is vagina plugging:
		if summoning is 0, say "You can't get the plug in past your chastity belt, and so can't wear these.";
		rule fails.
The players in chastity can't wear vagina plugging clothes rule is listed in the global wearability rules.

Chastity Cage ends here.

