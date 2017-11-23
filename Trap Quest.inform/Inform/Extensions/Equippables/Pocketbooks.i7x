Pocketbooks by Equippables begins here.

A pocketbook is a kind of equippable. A pocketbook is usually leather. A pocketbook is usually manly. A pocketbook is usually rare. Understand "pocket", "book" as pocketbook. The text-shortcut of a pocketbook is usually "pb".

Browsing is an action applying to one thing. Understand "skim [something]", "browse [something]" as browsing.

Check browsing:
	if there is a dangerous monster in the location of the player, say "You'll have to deal with the [printed name of a random dangerous monster in the location of the player] first!" instead;
	if the noun is recipe, try examining the noun instead;
	if the intelligence of the player < a random number between 2 and 6, say "You try to, but you just can't focus long enough to read it!" instead;
	if the noun is not worn:
		try wearing the noun;
		if the noun is worn:
			compute extra turn;
			if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
		otherwise:
			say "You'll need to be holding that if you want to be able to read it." instead.
Report browsing:
	now seconds is 6.

Definition: a pocketbook (called C) is ingredient:
	if C is product, decide no;
	decide yes.

To say ShortDesc of (C - a pocketbook):
	say "pocketbook".

To decide which number is the bartering value of (T - a pocketbook) for (M - an aeromancer):
	decide on 5.

To decide which number is the crafting key of (C - a pocketbook):
	decide on 37.

Section 1 - Pocket Necronomicon

A pocket necronomicon is a kind of pocketbook. A pocket necronomicon is usually unique. The printed name of pocket necronomicon is "[TQlink of item described]pocket necronomicon[shortcut-desc][TQxlink of item described][verb-desc of item described]".   The text-shortcut of pocket necronomicon is "pkn". There is 1 pocket necronomicon. Understand "book", "necro", "nomicon", "nomic" as pocket necronomicon.

To decide what number is the original price of (C - a pocket necronomicon):
	decide on 4.

To say ClothingDesc of (C - a pocket necronomicon):
	say "A small black pocket-sized book, with the rather ominous title of NECRONOMICON. In all capital letters, which does seem a bit melodramatic. You could try [bold type]browsing[roman type] it.". 

To say ShortDesc of (C - a pocket necronomicon):
	say "NECRONOMICON". 

Carry out browsing pocket necronomicon:
	say "You consult the Necronomicon, though it[']s probably a bad idea.[line break]";
	if the player-class is cultist and the invokeskill of the player is 0:
		say "Your mind is opened to eldritch vistas by what you[']ve read!";
		humiliate 200;
		teach invoking;
	otherwise:
		let R be a random number between 1 and 8;
		humiliate 350;
 		if R is 1 and the mercyskill of the player is 0:
 			say "You find the secrets of submission to those of strength!";
 			teach begging for mercy;
 		otherwise if R is 2 and the throatskill of the player is 0:
 			say "You find a diagram demonstrating how to take a tentacle down the throat comfortably!";
 			teach deepthroating;
 		otherwise if R is 3 and the strutskill of the player is 0:
 			say "You... find some advice on walking in heels. This book really DOES have everything!";
 			teach strutting;
 		otherwise if R is 4 and the breastskill of the player is 0:
 			say "You find a depiction of the fighting style of a strange, bulbous creature. You think you might be able to apply it to yourself!";
 			teach titjobs;
 		otherwise if R is 5 and the identifyskill of the player is 0:
 			say "You find a listing of terrible and cursed artefacts and their properties!";
 			teach identifying;
 		otherwise if R is 6 and the bellyskill of the player is 0:
 			say "You see a diagram of cultists, heavy with the spawn of the old ones. They seem to be standing a particular way, perhaps it is more comfortable?";
 			teach belly management;
 		otherwise if R is 7 and the relaxskill of the player is 0:
 			say "You see an artwork depicting a cultist spreading her fuckholes one hand as she guides two giant cocks inside with the other.  You think you can understand how she's able to take them without it hurting.";
 			teach relaxing;
		otherwise if R is 8 and the fuckskill of the player is 0:
			say "You find a depiction of a cultist shape-shifting into some huge creature. The others seem to keep worshipping it.";
			teach fuckskill;
 		otherwise:
			say "You feel your mind slipping away into madness at the revelations of the book!".

To decide which number is the humiliation-influence of (C - a pocket necronomicon):
	let B be -1;
	increase B by the magic-modifier of C;
	decide on B.

Section 2 - Book of Do Overs

[book of regrets can be found in the library]

A book of regrets is a kind of pocketbook. There is 1 book of regrets. The printed name of book of regrets is "[TQlink of item described]book of do-overs[shortcut-desc][TQxlink of item described][verb-desc of item described]".   The text-shortcut of book of regrets is "bdo". Understand "do over", "doover", "do-over", "do overs", "do-overs", "overs", "my top 100", "top 100", "100" as book of regrets.

To say ClothingDesc of (C - a book of regrets):
	say "A small white pocket book [if diaper lover >= 1]with a picture of a confused looking woman in a diaper on the cover. Another woman is standing over her, sternly brandishing a dirty pair of undies.[otherwise if bukkake fetish is  1]with a picture of a naked woman surrounded by men on the cover. She's mid shrug, and there's a strangely wistful look on her face, which is absolutely plastered with [semen].[otherwise]with a picture of an anxious looking maid on the cover. A broken vase is on the floor in front of her, and behind her you can see her stern faced employer, holding a coiled up rope.[end if] 'Me and my Top 100 Do-overs, by [NameBimbo]' is superimposed over her forehead in big, red capital letters. [variable custom style][one of]Is that my name? But [or][stopping]I didn't write this![roman type]". 
	
To say ShortDesc of (C - a book of regrets):
	say "Me and my Top 100 Do-overs". 

To decide which number is the price of (C - a book of regrets):
	decide on 5.

Carry out browsing book of regrets:
	say "You open up the book to a random page, and are [one of][or]once again [stopping]shocked to immediately find a passage in your handwriting, almost like a diary.[line break]";
	let R be a random number between 1 and 4;
	let P be 0;
	let D be a random worn diaper;
	if the incontinence of the player > 5 and D is diaper and diaper lover >= 4 and R is 1:
		say "'[one of]I can't believe I've let myself become this much of a baby. I never should've started wearing diapers! I didn't even mean to use them, they were just supposed to be a joke! But they were so hard to get off, so I thought what could the harm be? Then after that diaper was fully used (why let it go to waste?) and I changed myself, the toilet was so far away when I had to go that it only made sense to use my diaper! At this point I've forgotten what a pot - I mean toilet, feels like[or]I tried using my training potty today, I had the perfect plan! I sat on the potty with my favourite pink diaper on, all I had to do when I felt the slightest need to go is take it off! I waited, and waited, and waited, and I never felt the need to go! I finally decided to check it, and it was already soaking wet and filled to the brim! I went who knows how long without even realizing I had soiled my diaper[or]Why do they make it so hard to stop using diapers! They're [italic type]so[roman type] much more convenient than using the potty, of course I started only going potty in them! But now that everyone sees me for the [second custom style]pathetic pottypants baby[roman type], I want to start using the potty again, but getting potty trained is so hard[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the diaper addiction of the player > 14][second custom style]adult[roman type] [end if]wording, but also because it perfectly represents how you've felt since you completely lost control of your bladder and bowels. Suddenly, the book begins to glow, and the words start erasing themselves from the page! You feel light-headed, and fall to your knees, your ass in the air, and begin grunting, before suddenly [if D is not total protection]feeling a warm glow from your diaper, as it miraculously repairs itself! Better yet, you can feel[otherwise]feeling[end if] your bladder and bowels again! They feel awfully full, that is until you feel them begin to empty into your diaper![line break]";
		if D is not total protection, repair D;
		try kneeling;
		now rectum is 11;
		now the bladder of the player is 10;
		compute messing;
		now incontinence is 0;
	otherwise if the incontinence of the player > 5 and D is diaper and R is 1:
		say "'[one of]I can't believe I've let myself become this much of a baby. I never should've started wearing diapers! I didn't even mean to use them, they were just supposed to be a joke! But they were so hard to get off, so I thought what could the harm be? Then after that diaper was fully used (why let it go to waste?) and I changed myself, the toilet was so far away when I had to go that it only made sense to use my diaper! At this point I've forgotten what a pot - I mean toilet, feels like[or]I tried using my training potty today, I had the perfect plan! I sat on the potty with my favorite pink diaper on, all I had to do when I felt the slightest need to go is take it off! I waited, and waited, and waited, and I never felt the need to go! I finally decided to check it, and it was already soaking wet! I went who knows how long without even realizing I had soiled my diaper[or]Why do they make it so hard to stop using diapers! They're [italic type]so[roman type] much more convenient than using the potty, of course I started only going potty in them! But now that everyone sees me for the [second custom style]pathetic pottypants baby[roman type], I want to start using the potty again, but getting potty trained is so hard[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the diaper addiction of the player > 14][second custom style]adult[roman type] [end if]wording, but also because it perfectly represents how you've felt since you completely lost control of your bladder and bowels. Suddenly, the book begins to glow, and the words start erasing themselves from the page! You feel light-headed, and fall to your knees, before suddenly [if D is not total protection]feeling a warm glow from your diaper, as it miraculously repairs itself! Better yet, you can feel[otherwise]feeling[end if] your bladder again! It feels awfully full, until you feel it begin to empty into your diaper![line break]";
		if D is not total protection, repair D;
		try kneeling;
		now the bladder of the player is 10;
		now delayed urination is 1;
		try urinating;
		now incontinence is 0;
	otherwise if the pregnancy of the player > 0 and R is 1:[Probably too vicious a penalty but that's what you get!]
		say "'[one of]My belly is getting way too big! Next time that [printed name of the father] wants to breed me with [his of the father] big, [second custom style]virile[roman type] [manly-penis], I[']m going to make [him of the father] wear a condom. UGH![or]I never should have let that [printed name of the father] stick [his of the father] [second custom style]yummy[roman type] [manly-penis] in me and fertilize me with [his of the father] [semen]! I wish I wasn[']t pregnant![or]I can[']t believe that [printed name of the father] pumped me so full of [second custom style]virile[roman type] sperm! Didn[']t he know this would happen if he stuck that [second custom style]yummy[roman type] [manly-penis] in my pussy?[at random] I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14][second custom style]prudish[roman type] [end if]wording, but also because it so accurately echoes the regret you've been holding in the pit of your stomach ever since you got pregnant. Suddenly, the book begins to glow, and the words start erasing themselves from the page! Dizziness passes through your body as your belly shrinks and definition drains from your muscles. You drop to your knees as an [if the semen volume of vagina > 9]absolutely obscene[otherwise if the semen volume of vagina > 4]obscene[otherwise]huge[end if] amount of [semen] comes dribbling down your thighs.[line break]";
		try kneeling;
 		now the father is the throne;
 		let X be the semen volume of vagina;
 		now the pregnancy of the player is 0;
 		now the semen volume of vagina is 1;
 		WombSquirt 1;
		if bukkake fetish is 1, CumThighsUp X - 1;
		otherwise SemenPuddleUp 1;
 		StrengthDown X / 3;
 		DexDown X / 3;
	otherwise if R is 1 and the virgin of the player is 0 and the player is female and the openness of vagina > 5:
		say "'[one of]I just can't stop thinking about the way I lost my cherry. My tight little [second custom style]cumdump[roman type] got ruined by that big, hard [manly-penis]! Now, it's like everybody wants to pin me down and [if pregnancy fetish is 1]breed my hot box[otherwise]come inside me[end if]! Life is so unfair[or]I can't believe I let anybody put their [manly-penis] in my [second custom style]fuckhole[roman type]! Now whenever I get fucked, I have to think about my first time, and how huge that [second custom style]yummy[roman type] [manly-penis] was[or]I can barely look at myself in the mirror ever since I lost my virginity! All I can think about is getting pounded into the floor by that heavenly [manly-penis]. Umm, hellooo, if I wanted to be treated like the [second custom style]worthless cumdumpster I am[roman type], I would ask[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14][second custom style]prudish[roman type] [end if]wording, but also because it captures how you've always felt on the inside ever since you lost your purity. The words light up as the book emits a wave of energy, erasing themselves from the page as your [vagina] suddenly and very painfully begins tightening up.[line break]";
		PussyClose 5;
		if the noun is blessed and a random number between 1 and 3 is 1, decrease P by 2;
		PussyRuin (the previous openness of vagina - the openness of vagina + P + 5);
	otherwise if R is 1 and the analvirgin of the player is 0 and the player is male and the openness of asshole > 5:
		say "'[one of]Ever since that first time, all I can think about is getting my prostate pounded by that huge [manly-penis]! Now, that's the only way I get any satisfaction at all! It's not my fault my [second custom style]hot fuckhole[roman type] makes such a great cumdump[or]I still get tingles in my [asshole] whenever I think about my first time. I[']d sit on anyone's [second custom style]hard[roman type] cock and bounce on it until they came if I could just get a second chance! It's only fair I should get to choose who breeds my [second custom style]nasty fuckhole[roman type][or]It seems like every time I meet a real man, he decides the best place for his [manly-penis] is up my sissy ass! I know you can[']t get your virginity back, but my [second custom style]slutty boy hole[roman type] is getting tired of all these thick [second custom style]creamy[roman type] loads[roman type][at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14][second custom style]prudish[roman type] [end if]wording, but also because it captures how you've always felt on the inside ever since your first time getting fucked that way. The words light up as the book emits a wave of energy, erasing themselves from the page as your [asshole] suddenly and very painfully begins tightening up.[line break]";
		AssClose 5;
		if the noun is blessed and a random number between 1 and 3 is 1, decrease P by 2;
		AssRuin (the previous openness of asshole - the openness of asshole + P + 5);
	otherwise if the diaper addiction of the player > 1 and diaper lover >= 1 and R < 4:
		say "'[one of]I've reached the point where all I can think about when I'm horny is diapers! Panties, and even nudity, do nothing for me anymore, all I care about is wearing my precious pottypants. I find myself longing for people to rub my diaper so I can make my [second custom style]cummies[roman type] in them more than I long to have real sex with them[or]I just came from soiling myself in front of [second custom style]mommy[roman type] and her friends. While they all laughed at me all I cared about was rubbing my diaper as hard as possible, how could I not after something like that happened? Situations like this are the only thing that arouse me anymore[or]It's a good thing I'm able to get off from using my diapers, seeing as that's all I'm good for now. I doubt anyone would be interested in me now after seeing me cum in a soiled diaper while playing in a baby bouncer without a hint of shame. No matter how much I enjoy it though, deep down I just want another chance at having real sex[at random]. I want a do-over.' You cringe at what's written on the page, partly because of the [if the diaper addiction of the player > 14][second custom style]adult[roman type] [end if]wording, but also because it captures how you feel about your growing addiction to diapers. The words light up as you move to turn the page, erasing themselves as it suddenly feels less attractive to soil your diapers, even as you start to feel more like the adult baby you fantasize about being.[line break]";
		DiaperAddictDown 1;
		if the noun is not blessed or a random number between 1 and 3 < 2, increase P by 1;
		IntDown P + 1;
	otherwise if the semen addiction of the player > 0 and R < 4:
		say "'[one of]Sometimes I wish there was more to life than sucking my man's [second custom style]fat monster[roman type] until he comes. I know my place is on my knees, but it's getting out of hand! It's getting so hard to think when I'm not gargling a fresh load of [second custom style]yummy dick juice[roman type], and I KNOW it all started with that first blowjob[or]Whenever my lips are wrapped around a big [second custom style]hard[roman type] cock, I know it's what I was always meant to do, but I can't focus on anything else! There used to be more to life than a [second custom style]delicious[roman type] helping of yummy [second custom style]man stuff[roman type] for breakfast lunch and dinner, but I can[']t remember what[or][second custom style]Man cream[roman type] is my favourite food, but sometimes I wish I didn[']t have to spend so much time every day draining every pair of aching balls I run into! Every time I do it it feels even better than last time, and sometimes I run out of room in my [second custom style]jizz tank[roman type] in the middle of the day[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14][second custom style]prudish[roman type] [end if]wording, but also because it captures how you feel about your growing addiction to blowjobs. The words light up as you move to turn the page, erasing themselves as it suddenly gets a lot harder to think about sucking cocks. It's a lot harder to think about anything...[line break]";
 		SemenAddictDown 1;
		if the noun is not blessed or a random number between 1 and 3 < 2, increase P by 1;
		IntDown P + 1;
	otherwise if the sex addiction of the player > 0 and R < 4:
		say "'[one of]Whenever I look at a man, all I can think about is getting naked and bouncing on his big hard [second custom style]pants candy[roman type]! I know I LOVE getting fucked senseless like the [second custom style]nasty[roman type] whore I am, but sometimes I miss what it was like before[or]It's like my [second custom style]dirty cock warmer[roman type] has a mind of its own sometimes. There is a time and place to get bent over a table and fucked full of [semen], but it's not all the time! If only I had a way to keep my [second custom style]slutty cumdump[roman type] in line, like I did before[or]Milking a cock with my [second custom style]nasty[roman type] fuckhole feels so good, and it's obviously the only thing I'm useful for. But, sometimes I think all this naughty sex I'm having is making me even more addicted to [second custom style]fun[roman type] poundings! Not like I could stop now, but I know my boyfriend is going to get bored eventually[at random]. I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14][second custom style]prudish[roman type] [end if]wording, but also because it captures how you feel about your growing addiction to sex. The words light up as you move to turn the page, erasing themselves as it suddenly gets a lot harder to think about getting fucked. It's a lot harder to think about anything...[line break]";
		SexAddictDown 1;
		if the noun is not blessed or a random number between 1 and 3 < 2, increase P by 1;
		IntDown P + 1;
	otherwise:[R is 4]
		say " It doesn't sound a thing like you, and it's actually pretty embarrassing to know someone might read this and think this is how you actually feel all the time.";
		humiliate 100.

To decide which number is the intelligence-influence of (C - a book of regrets):
	if C is cursed, decide on -3;
	decide on -1.

Section 3 - Book of Anal

A book of anal is a kind of pocketbook. There is 1 book of anal. The printed name of book of anal is "[TQlink of item described]Brandi's Big Book of Anal[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of book of anal is "bba". Understand "brandi", "brandi's", "big" as book of anal. A book of anal can be provoking, tolerance, enhancing, bookish (this is the temp-skill property).

To decide which number is the price of (C - a book of anal):
	decide on 3.

To say ClothingDesc of (C - a book of anal):
	say "A paperback book with the words BRANDI'S BIG BOOK OF ANAL superimposed over a naked rear end.".

To say ShortDesc of (C - a book of anal):
	say "BRANDI'S BIG BOOK OF ANAL".

To decide which number is the soreness-influence of (C - a book of anal):
	if C is tolerance, decide on 3 + (the intelligence of the player /  7);[more powerful the better your reading comprehension!]
	decide on 0.

[!<TheBookOfAnalButtSlutRule>+

If it's in provoking mode, it increases the chances of anal sex.

+!]
This is the book of anal butt slut rule:
	if there is a worn provoking book of anal, increase the desirability of asshole by 10.
The book of anal butt slut rule is listed in the butt slut eligibility rules.


Carry out browsing book of anal:[If books are never made easier to get, this probably needs to be buffed.]
	say "You thumb through the book, which is full of incredibly graphic depictions of [one of]the eponymous Brandi[or]'Brandi'[or]a woman named Brandi[at random] engaged in anal sex.";
	let R be a random number between 1 and 7;
	now auto is 1;[must be set before checking whether or not the player is able.]
	if the player is horny and R >= 4 and the player is able to masturbate:
		say " [variable custom style][if the bimbo of the player < 8 and the player is male]Nothing wrong with a quick wank...[otherwise if the bimbo of the player < 8]I-I can't believe I[']m about to do this...[otherwise if the analvirgin of the player is 1]T-that was...H-he came right when...and...and...I have to get off. I have to get off RIGHT now.[otherwise if the bimbo of the player < 13]I can't help myself....[otherwise]Ugh, now I HAVE to masturbate! Maybe someone will find me and take over...[end if][roman type][line break]";	
		try masturbating;
	otherwise if R < 4:
		if R is 1:
			say " You come to a page depicting a montage of Brandi getting pounded by at least 10 different cocks (and one very large dildo), captioned: [second custom style]'Learn how I can handle 43 ass-fuckings in a row using this one weird tip! Lube companies will HATE you!'[roman type]";
			say " The 'tip' is surprisingly detailed and hard to remember, but something about keeping the book in your hand is helping you remember [bold type]what you've learned about resisting soreness.[roman type]";
			now the noun is tolerance;
			arouse 300;
		if R is 2:
			say " You flip through the book until you encounter a page showing Brandi [']sitting['] on top of a male client. A long line of customers extends out behind her, covered up by some text. [second custom style]'I dealt with SO many ungrateful boy-toys when I was getting into the business, I realized it just wasn[']t enough fun to destroy my asshole! Like everyone, I tried glitter first, but when that didn[']t work I came up with my very own technique that keeps [']em waiting and satisfied at the same time!'[roman type]";
			say " The next page contains a surprising amount of text, and it's a bit hard to remember, but keeping this book in your hand to remind you makes you feel like [bold type]you can apply what you've read to make people treat you better after anal sex.[roman type]";
			now the noun is enhancing;
			arouse 300;
		if R is 3:
			say " You come to a page with Brandi bent over a table, smirking over her shoulder. There's a lot of text on the page, but somehow all you can think about is what it would be like to kneel down behind her and stick your tongue in her [asshole]. Eventually you manage to tear your eyes away, but the image stays firmly in the back of your mind as you read her tip. [second custom style]'Some boys think they're too good for the backdoor, but that's no reason to let a big horny cock go to waste! It's as easy as visualizing your cumdump as the most fun place for anybody to be! Keep that image in your head and people will be lining up for a turn in your ass!'[roman type][line break]";
			say "As long as you have this book to keep that image fresh in your mind, [bold type]your [asshole] will seem like a much better place to fuck![roman type]";
			now the noun is provoking;
			arouse 300;
	otherwise:
		if R is 6 and the sex addiction of the player < 12:[increase delicateness at low sex addiction]
			say " [variable custom style][one of]That looks like it hurts. Will that happen to me?[or]I can[']t imagine how it would feel to take two [if the player is male]at the same time[otherwise]in there at the same time[end if]. I know I couldn't stand it...[or]I don't ever want to take anything that big. I[']d just cry if anyone made me do that...[or]She can't really enjoy that, can she? I know I couldn[']t, that[']s way too big....[or]He didn't even clean it first! I don't want anything to do with that![at random][roman type][run paragraph on]";
			DelicateUp 1;
		otherwise if R is 7 and the anal sex addiction of the player < 10:
			say " [if the sex addiction of the player < 7 and the player is male][first custom style][one of]That actually looks pretty good for the one on the bottom...[or]Some of these shots make the guy look good too. Must be the angle or something.[at random][otherwise if the sex addiction of the player < 8][first custom style][one of]I guess it isn't all bad. I could see how some people might like it.[or]Not that I'd ever willingly let someone to that to me, but if I had to, that's the position I would pick.[at random][otherwise if the analvirgin of the player is 1][variable custom style][one of]That actually seems like it would feel pretty good...[or]Is that really what anal is like? Wow...[or]I guess I can see why she would write a book about anal. It looks like she's having so much fun...[or]So that[']s why it feels better if he doesn[']t pull out. I[']m learning so much...[or]Wow...it looks like she[']s really enjoying that.[at random][otherwise if the sex addiction of the player < 13][variable custom style][one of]I guess if he does it like that it would feel pretty great.[or]That did feel pretty good when it happened to me...[or]I guess it really did feel that good. I kind of want to do it even more now.[at random][otherwise][second custom style][one of]I wish someone would fuck me like that...[or]It's great to read about someone getting enthusiastic about getting pounded![or]These dicks are so big...where did she find these guys? I want to meet them![at random][end if][roman type]";
			AnalSexAddictUp 1;
		otherwise:[arousal]
			say " [if the bimbo of the player < 8 and the player is female][first custom style][one of]I can't believe I'm actually getting turned on by this. I mean- it's disgusting![or]Why am I getting turned on by this trash...[or]I'm actually getting aroused looking at this filthy tripe. I can't believe this...[at random][otherwise if the bimbo of the player < 8][first custom style][one of]Man, I wish I could find the chick who made this so I could give her a piece of my DICK![or]THIS BOOK IS AWESOME! One thing is for sure, this Brandi chick knows porn![or]I really want to try some of this stuff. But where could I find a bitch who'd let me...[at random][otherwise if the bimbo of the player < 13][variable custom style][one of]Why am I getting so turned on? It's not like any of this is happening to me...[or]This is kind of hot...really hot. What[']s happening to me?[or]Whoever Brandi is, she must have had a lot of fun making this. It's a lot of fun reading it...[at random][otherwise][second custom style][one of]Teehee, I'm getting horny just reading it![or]This Brandi is kind of a prude. But I love watching her get fucked![or]This book is turning me on! I should ask for a copy to bring home.[at random][end if][roman type]";
			arouse 350;
	now auto is 0.

Section 4 - Notebook

A notebook is a kind of pocketbook. There is 1 notebook. A notebook is usually unique. A notebook is usually slap ready. A notebook is usually leather. The printed name of notebook is usually "[TQlink of item described][clothing-title-before]hands-free notebook[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of notebook is "hfn". A notebook has a number called tear. A notebook has a number called charge. A notebook is usually intelligence-influencing. A notebook is usually projectile.

A study-buddy is a thing that varies. study-buddy is the throne.

To say ClothingDesc of (W - a notebook):
	say "This hardcover book has your name embroidered on the front, with a blurb on the back that reads 'Paying attention in class? Fooling around with the girls? Showing the boys what you've been learning about in school? This book has your back! Thanks to state of the art magic or whatever, this book takes care of everything completely hands free, just for YOU!' [if the charge of W is 0]The paper is soft, almost damp. It would probably be tough to write on by hand[otherwise if the charge of W < 3]The pages are soft, almost damp. The words on the pages glow faintly, seeming to shift between English and some inscrutable ancient script.[otherwise if the charge of W < 5]The pages are soft, yet crisp, and you can feel warmth and energy when you brush it with your fingertips. The words on the pages glow faintly, shifting unpredictably between English and some inscrutable ancient script[otherwise]The pages are flexible, yet crisp, warm with energy as the glowing words shift rapidly between what appears to be English and some inscrutable ancient script[end if].".

To say ShortDesc of (W - a notebook):
	say "notebook".

[Two ways to empower the notebook:
Crafting. Craft anything while holding the book, which will increase its charge by 1 or  2 depending on your class. Chance of repairing a damaged book.
Sex. Choose a monster and have lots of sex with them, making them your "study buddy," which will empower the book based on times-fucked. Far stronger than crafting, but damages the book the more it's used. ;)]

Check browsing notebook:
	say "You open the book and inspect the intricate runes adorning the pages. You can't understand any of it." instead.
	
To compute studying:
	let G be a random held notebook;
	say "The [printed name of G] falls open, filling its pages with intricate sketches as it siphons off the last of the energy from the bowl. [if the charge of G > 5]It doesn't look any stronger, really.[otherwise]It looks a lot stronger![end if]";	
	increase the charge of G by 1;
	if the number of worn scrunchies is 2, increase the charge of G by 1;
	if the player is a schoolgirl and a random number between 1 and 3 is 1:[only the schoolgirl can repair the book.]
		if the tear of G > 0:
			decrease the tear of G by 1;
	if the charge of G > 5 and the player is not a schoolgirl, now the charge of G is 5;
	if the charge of G > 10, now the charge of G is 10.

To compute attack of (W - a notebook) at (M - a monster):
	if M is study-buddy and the damage improvement of W > 6:
		say "The [printed name of W] emits pink and red sparks as you thrust your hand at the [M], channelling the energy into a [if the damage improvement of W < 9]huge[otherwise]massive[end if] [if the tear of W < 1][otherwise if the tear of W < 3]fizzling [otherwise if the tear of W < 5]crackling [otherwise]red, crackling [end if][one of]dick[or]penis[at random]-shaped magic missile!";
	otherwise:
		say "The pages of the [printed name of W] glow as you thrust your hand at the [M], channelling the energy into a [if the tear of W < 1][otherwise if the tear of W < 3]fizzling [otherwise if the tear of W < 5]crackling [otherwise]red, crackling [end if] [if the damage improvement of W < 3]arrow-shaped[otherwise if the damage improvement of W < 5]axe-shaped[otherwise]sword-shaped[end if] magic missile!".

To compute attack effect of (W - a notebook):[the effect of tear is going to be the biggest decider here. To utilize the overpowered effect you will have to travel back and forth to the dungeon to repair your book.]
	if attack-type is 1 and the noun is study-buddy:
		let D be a random number between the times-fucked of the noun and (the times-fucked of the noun * 2);[the stronger the attack the higher the risk]
		if W is cursed, increase D by 3;
		unless the player is a schoolgirl, increase D by 2;
		if D + (the tear of W * 2) > 20 and the tear of W > 0:
			say "The book emits a sharp crack and sends a whizzing orb of energy careening into your chest. The wind is instantly knocked out of you and you collapse, shivering uncontrollably.";
			FatigueUp 25;
			now the stance of the player is 1;[TODO: remember what effect was supposed to be here]
		otherwise if D > 5 and a random number between 1 and the charge of W + 2 is 1:
			say "[one of]The force of the attack partially singes the pages of the book![or][or][cycling]";
			increase the tear of W by 1;
	now study-buddy is the noun;
	if debugmode > 0, say "Now study buddy is [printed name of study-buddy]".

To decide which number is the damage improvement of (W - a notebook):
	let X be 0;
	increase X by the charge of W;
	if study-buddy is the noun:[This occurs during the "slap X" function so it's ok to use the noun, as well as the best way to apply the buff without modifying your opponent quite a bit]
		increase X by the times-fucked of the noun;
		if W is cursed, now X is X / 2;
	if W is cursed, decrease X by 2;
	if W is blessed, increase X by 1;
	decide on X.

Definition: a notebook (called C) is product:
	decide yes.
	
To decide which number is the alchemy key of (C - a notebook):
	decide on 22.

To decide which number is the crafting key of (C - a notebook):
	decide on 0.

Definition: a notebook (called C) is recipe specific:
	decide yes.

This is the notebook specific recipe rule:
	let R be a random recipe for notebook;
	if R is appropriate:
		now the Product in row 37 of the Table of Alchemy is 22;
		now the Recipe in row 37 of the Table of Alchemy is 1.
The notebook specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a notebook):
	now T is bland;
	if the noun is not pocketbook, now T is cursed.


Pocketbooks ends here.
