Status by Player Description begins here.

[!<SayStatusDesc>+

New version removes mental stats

+!]
[To say StatusDesc:
	say "[WeightDesc][if there are worn heels or the heel skill of the player > 1][HeelSkillDesc][end if][HumiliationDesc][DelicatenessDesc][if the sex addiction of the player > 1][SexAddictionDesc][end if][if the soul addiction of the player > 1][SoulAddictionDesc][end if][EarningsDesc][ChildrenDesc]".]
To say StatusDesc:
	say "[WeightDesc][if there are worn heels or the heel skill of the player > 1][HeelSkillDesc][end if][if the soul addiction of the player > 1 and the class of the player is succubus][SoulAddictionDesc][end if][EarningsDesc][SexStatsDesc][ChildrenDesc]".

To say WeightDesc:
	let W be the weight of the player;
	let S be the strength of the player;
	if W > 0:
		if the latex-transformation of the player > 5:
			say "Your latex body is extremely light and this is lucky as you feel quite powerless without muscles beneath your 'skin'. You seem to be able to move your limbs with pure force of will but there is no real strength behind your movement. ";
		otherwise if W >= 25:
			say "You are extremely heavy, [if S > 18]but your muscles can just about handle it. [otherwise if S > 14]and your leg muscles are struggling to carry you around. [otherwise]and your leg muscles are having huge amounts of difficulty dealing with your extra baggage. [end if]";
		otherwise if W >= 20:
			say "You are quite heavy, [if S > 18]but your strong leg muscles are managing just fine. [otherwise if S > 14]but your muscles can just about handle it. [otherwise if S > 7]and your leg muscles are struggling to carry you around. [otherwise]and your poor leg muscles are having huge amounts of difficulty dealing with your extra baggage. [end if]";
		otherwise if W >= 14:
			say "You are a bit weighty, [if S > 14]but your strong leg muscles are managing just fine. [otherwise if S > 9]but your muscles can just about handle it. [otherwise if S > 6]and your leg muscles are struggling to carry you around. [otherwise]and your poor weak leg muscles are having huge amounts of difficulty dealing with your extra baggage. [end if]";
		otherwise if W >= 8:
			say "You are an average normal weight, [if S > 12]but your strong leg muscles are managing just fine. [otherwise if S > 8]but your muscles can just about handle it. [otherwise if S > 5]and your leg muscles are struggling to carry you around. [otherwise]and your poor weak leg muscles are having huge amounts of difficulty dealing with your extra baggage. [end if]";
		otherwise:
			say "You are very light for a normal person, [if S > 9]and your strong leg muscles are managing just fine. [otherwise if S > 4]and your muscles can handle it fine. [otherwise]but your poor weak leg muscles are having huge amounts of difficulty dealing with any weight at all. [end if]";
	otherwise:
		say "You feel [if W > -7]almost [end if]weightless! ";
	say InventoryWeightDesc.

To say SoulAddictionDesc:
	let C be cold souly / cold souly limit;
	let S be the soul addiction of the player;
	if the player is craving souls:
		if C < 3:
			say "You feel a dull, aching void inside you that can only be filled with more souls!";
		otherwise if C < 5:
			say "You feel an awful, aching void inside you that can only be filled with more souls!";
		otherwise:
			say "You feel a terrible, throbbing void inside you that can only be filled with more souls!";
	otherwise:
		if S > 8:
			say "No matter how many souls you consume, it barely takes the edge off the aching hunger inside you. You can't wait for your next feast.";
		otherwise if S > 5:
			say "No matter how many souls you consume, you still feel an aching hunger inside you at all times. You only feel better when you're actively sucking a soul from someone's body.";
		otherwise if S > 2:
			say "For now, you are satisfied, but a shadow of your hunger for souls always seems to hang over you. No matter how many you consume, you always want more.";
		otherwise:
			say "You feel an odd emptiness inside of you that you instinctively sense can only be filled with the souls of others.".

To say EarningsDesc:
	let E be (10000 - earnings) / 60;
	[Round to nearest minute]
	if E > 10:
		[Round down to nearest 5 minutes]
		now E is E / 5;
		now E is E * 5;
	if earnings < 0, now earnings is 0;
	if E > 5:
		if the intelligence of the player > 6, say "You feel like you've been in this game for about [E] minutes.";
		otherwise say "You have no idea how long you've been in the game for.".

To say ChildrenDesc:
	if the children of the player > 0:
		say "You have given birth to [the children of the player] [if the children of the player is 1]child[otherwise]children[end if].".

The player has a number called lick-count.[total cunnilingus/anilingus/foot worship count from player]
The player has a number called blow-count.[total blowjobs from player]
The player has a number called anal-count.[total player did butt stuff]
The player has a number called fuck-count.[number of times the player got fucked vaginally]
The player has a number called sports-count.[total golden showers the player received]

To FuckCount:
	increase the fuck-count of the player by 1.

To AnalCount:
	increase the anal-count of the player by 1.

To SportsCount:
	increase the sports-count of the player by 1.

To LickCount:
	increase the lick-count of the player by 1.

To BlowCount:
	increase the blow-count of the player by 1;
	let T be a random thing penetrating face;
	if T is a thing, check oral virginity loss with T.

To say SexStatsDesc:
	if the blow-count of the player > 0:
		let B be the blow-count of the player;
		if B * 2 > saved-flat-intelligence, say "You have given more blowjobs than you can count.";
		otherwise say "You have given [the blow-count of the player] blowjob[if B > 1]s[end if]. ";
	if the fuck-count of the player > 0:
		let F be the fuck-count of the player;
		if F * 2 > saved-flat-intelligence, say "Your pussy has been fucked more times than you can count.";
		otherwise say "You've had your pussy fucked [F] time[if F > 1]s[end if].";
	if the anal-count of the player > 0:
		let A be the anal-count of the player;
		if A * 2 > saved-flat-intelligence, say "Your ass has been fucked more times than you can count.";
		otherwise say "You've had your ass fucked [A] time[if A > 1]s[end if].";
	if the dominated-count of the player > 0:
		let D be the dominated-count of the player;
		if D > saved-flat-intelligence, say "You've had dominant sex more times than you can count.";
		otherwise say "You've had dominant sex [D] time[if D > 1]s[end if].";
	if the submission-count of the player > 0:
		let S be the submission-count of the player;
		if S > saved-flat-intelligence, say "You've had submissive sex more times than you can count.";
		otherwise say "You've had submissive sex [S] time[if S > 1]s[end if].".

[!<SayDiaperDisciplineDesc>+

Let the player know who has currently ordered them to stay in a diaper.

+!]
To say DiaperDisciplineDesc:
	repeat with M running through alive monsters:
		say "[if the diaper-duration of M > 0][BigNameDesc of M] has ordered you to stay in diapers. [end if]".

Status ends here.
