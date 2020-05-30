Pocketbooks by Equippables begins here.

A pocketbook is a kind of equippable. A pocketbook is usually leather. A pocketbook is usually manly. A pocketbook is usually rare. Understand "pocket", "book" as pocketbook. The text-shortcut of a pocketbook is usually "pktb".

Figure of pocketbook is the file "Items/Accessories/Equippables/book1.jpg".

To decide which figure-name is the clothing-image of (C - a pocketbook):
	decide on figure of pocketbook.

Browsing is an action applying to one thing. Understand "skim [something]", "browse [something]" as browsing.

Check browsing:
	if player is in danger or the player is immobile, say "You're a bit busy!" instead;
	if the noun is recipe, say ExamineDesc of the noun instead;
	if the noun is not pocketbook, say "This verb is for reading pocketbooks." instead;
	if the intelligence of the player < 5, say "You try to, but you just can't focus long enough to read it!" instead;
	if the noun is not worn:
		try wearing the noun;
		if the noun is worn:
			compute extra turn;
			if the player is in danger or the player is immobile, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
		otherwise:
			say "You'll need to be holding that if you want to be able to read it." instead;
	allocate 6 seconds.

Definition: a pocketbook is fetish appropriate if diaper quest is 0.
Definition: a pocketbook is ingredient if it is not product.
Definition: a pocketbook is brown themed: decide yes.
Definition: a pocketbook is book themed: decide yes.

To say ShortDesc of (C - a pocketbook):
	say "pocketbook".

To decide which number is the bartering value of (T - a pocketbook) for (M - an aeromancer):
	decide on 5.

To decide which number is the crafting key of (C - a pocketbook):
	decide on 37.

Section 1 - Pocket Necronomicon

A pocket necronomicon is a kind of pocketbook. A pocket necronomicon is unique. The text-shortcut of pocket necronomicon is "pkn". There is 1 pocket necronomicon. Understand "book", "necro", "nomicon", "nomic" as pocket necronomicon.

Figure of necronomicon is the file "Items/Accessories/Equippables/necronomicon1.jpg".

To decide which figure-name is the clothing-image of (C - a pocket necronomicon):
	decide on figure of necronomicon.

Definition: a pocket necronomicon is fetish appropriate: decide yes.

To decide what number is the original price of (C - a pocket necronomicon):
	decide on 4.

To say ClothingDesc of (C - a pocket necronomicon):
	say "A small black pocket-sized book, with the rather ominous title of NECRONOMICON. In all capital letters, which does seem a bit melodramatic. You could try [bold type]browsing[roman type] it.".

To say ShortDesc of (C - a pocket necronomicon):
	say "necronomicon".
To say MediumDesc of (C - a pocket necronomicon):
	say "pocket necronomicon".

Carry out browsing pocket necronomicon:
	say "You consult the Necronomicon, though it's probably a bad idea.";
	if the player-class is cultist and the invokeskill of the player is 0:
		say "Your mind is opened to eldritch vistas by what you've read!";
		humiliate 2000;
		teach invoking;
	otherwise if the magic power of the player > 0:
		let S be a random uncastable fetish appropriate magic-spell;
		if S is magic-spell:
			say "Magic flows from your body, turning a black page in the book into the instructions for how to cast a new spell. Wow!";
			say NewbieMagicSpells;
			compute learning of S;
			compute spell consequences of the noun;
		otherwise:
			say "It seems you've learned every spell you can, as no new text appears.";
	otherwise:
		say "The book has no text on any of the pages. Perhaps if you had more magic power, it would reveal its secrets to you.".

To decide which number is the humiliation-influence of (C - a pocket necronomicon):
	let B be -1;
	increase B by the magic-modifier of C;
	decide on B.

Definition: a pocket necronomicon is magic themed: decide yes.

Section 2 - Book of Do Overs

[book of regrets can be found in the library]

A book of regrets is a kind of pocketbook. There is 1 book of regrets. The text-shortcut of book of regrets is "bdo". Understand "do over", "doover", "do-over", "do overs", "do-overs", "overs", "my top 100", "top 100", "100" as book of regrets.

To say ClothingDesc of (C - a book of regrets):
	say "A small white pocket book [if diaper lover >= 1]with a picture of a confused looking woman in a diaper on the cover. Another woman is standing over her, sternly brandishing a dirty pair of undies.[otherwise if bukkake fetish is 1]with a picture of a naked woman surrounded by men on the cover. She's mid shrug, and there's a strangely wistful look on her face, which is absolutely plastered with [semen].[otherwise]with a picture of an anxious looking maid on the cover. A broken vase is on the floor in front of her, and behind her you can see her stern faced employer, holding a coiled up rope.[end if] 'Me and my Top 100 Do-overs, by [NameBimbo]' is superimposed over her forehead in big, red capital letters. [line break][variable custom style][one of]Is that my name? But [or][stopping]I didn't write this![roman type][line break]".

To say ShortDesc of (C - a book of regrets):
	say "book of do-overs".

To decide which number is the price of (C - a book of regrets):
	decide on 5.

Carry out browsing book of regrets:[TODO: player says something like "I didn't write that, but it's accurate" to replace the lack of coloured text]
	say "You open up the book to a random page, and are [one of][or]once again [stopping]shocked to immediately find a passage in your handwriting, almost like a diary.[line break]";
	let R be a random number between 1 and 4;
	let P be 0;
	let D be a random worn diaper;
	if the player is incontinent and D is diaper and diaper messing >= 3 and asshole is not actually occupied and R is 1:
		say "'[one of]I can't believe I've let myself become this much of a baby. I never should've started wearing diapers! I didn't even mean to use them, they were just supposed to be a joke! But they were so hard to get off, so I thought what could the harm be? Then after that diaper was fully used (why let it go to waste?) and I changed myself, the toilet was so far away when I had to go that it only made sense to use my diaper! At this point I've forgotten what a pot - I mean toilet, feels like[or]I tried using my training potty today, I had the perfect plan! I sat on the potty with my favourite pink diaper on, all I had to do when I felt the slightest need to go is take it off! I waited, and waited, and waited, and I never felt the need to go! I finally decided to check it, and it was already soaking wet and filled to the brim! I went who knows how long without even realising I had soiled my diaper[or]Why do they make it so hard to stop using diapers! They're [italic type]so[roman type] much more convenient than using the potty, of course I started only going potty in them! But now that everyone sees me for the pathetic pottypants baby, I want to start using the potty again, but getting potty trained is so hard[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the diaper addiction of the player > 14]adult[end if]wording, but also because it perfectly represents how you've felt since you completely lost control of your bladder and bowels. Suddenly, the book begins to glow, and the words start erasing themselves from the page! You feel light-headed, and fall to your knees, your ass in the air, and begin grunting, before suddenly [if D is not total protection]feeling a warm glow from your diaper, as it miraculously repairs itself! Better yet, you can feel[otherwise]feeling[end if] your bladder and bowels again! They feel awfully full, that is until you feel them begin to empty into your diaper!";
		if D is not total protection, repair D;
		try kneeling;
		now rectum is 11;
		now the bladder of the player is 10;
		compute messing;
		now incontinence is 0;
	otherwise if the player is incontinent and D is diaper and R is 1:
		say "'[one of]I can't believe I've let myself become this much of a baby. I never should've started wearing diapers! I didn't even mean to use them, they were just supposed to be a joke! But they were so hard to get off, so I thought what could the harm be? Then after that diaper was fully used (why let it go to waste?) and I changed myself, the toilet was so far away when I had to go that it only made sense to use my diaper! At this point I've forgotten what a pot - I mean toilet, feels like[or]I tried using my training potty today, I had the perfect plan! I sat on the potty with my favourite pink diaper on, all I had to do when I felt the slightest need to go is take it off! I waited, and waited, and waited, and I never felt the need to go! I finally decided to check it, and it was already soaking wet! I went who knows how long without even realising I had soiled my diaper[or]Why do they make it so hard to stop using diapers! They're [italic type]so[roman type] much more convenient than using the potty, of course I started only going potty in them! But now that everyone sees me for the pathetic pottypants baby, I want to start using the potty again, but getting potty trained is so hard[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the diaper addiction of the player > 14]adult[end if]wording, but also because it perfectly represents how you've felt since you completely lost control of your bladder and bowels. Suddenly, the book begins to glow, and the words start erasing themselves from the page! You feel light-headed, and fall to your knees, before suddenly [if D is not total protection]feeling a warm glow from your diaper, as it miraculously repairs itself! Better yet, you can feel[otherwise]feeling[end if] your bladder again! It feels awfully full, until you feel it begin to empty into your diaper!";
		if D is not total protection, repair D;
		try kneeling;
		now the bladder of the player is 10;
		now delayed urination is 1;
		try urinating;
		now incontinence is 0;
	otherwise if the pregnancy of the player > 0 and R is 1:[Probably too vicious a penalty but that's what you get!]
		say "'[one of]My belly is getting way too big! Next time that [printed name of the father] wants to breed me with [his of the father] big, virile [manly-penis], I'm going to make [him of the father] wear a condom. UGH![or]I never should have let that [printed name of the father] stick [his of the father] yummy [manly-penis] in me and fertilize me with [his of the father] [semen]! I wish I wasn't pregnant![or]I can't believe that [printed name of the father] pumped me so full of virile sperm! Didn't he know this would happen if he stuck that yummy [manly-penis] in my pussy?[at random] I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if]wording, but also because it so accurately echoes the regret you've been holding in the pit of your stomach ever since you got pregnant. Suddenly, the book begins to glow, and the words start erasing themselves from the page! Dizziness passes through your body as your belly shrinks and definition drains from your muscles. You drop to your knees as an [if the total volume of vagina > 9]absolutely obscene[otherwise if the womb volume of vagina > 4]obscene[otherwise]huge[end if] amount of [semen] comes dribbling down your thighs.";
		try kneeling;
		now the father is the throne;
		let X be the womb volume of vagina + the semen volume of vagina;
		now the pregnancy of the player is 0;
		now the semen volume of vagina is 0;
		now the small egg count of vagina is 0;
		now the medium egg count of vagina is 0;
		now the large egg count of vagina is 0;
		WombEmpty the womb volume of vagina;
		now the semen volume of vagina is X;
		[if bukkake fetish is 1, CumThighsUp X - 1;
		otherwise SemenPuddleUp 1;]
		StrengthDown X / 10;
		DexDown X / 10;
	otherwise if R is 1 and the virgin of the player is 0 and the player is possessing a vagina and the openness of vagina > 5:
		say "'[one of]I just can't stop thinking about the way I lost my cherry. My tight little cumdump got ruined by that big, hard [manly-penis]! Now, it's like everybody wants to pin me down and [if pregnancy fetish is 1]breed my hot box[otherwise]come inside me[end if]! Life is so unfair[or]I can't believe I let anybody put their [manly-penis] in my fuckhole! Now whenever I get fucked, I have to think about my first time, and how huge that yummy [manly-penis] was[or]I can barely look at myself in the mirror ever since I lost my virginity! All I can think about is getting pounded into the floor by that heavenly [manly-penis]. Umm, hellooo, if I wanted to be treated like the worthless cumdumpster I am, I would ask[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if]wording, but also because it captures how you've always felt on the inside ever since you lost your purity. The words light up as the book emits a wave of energy, erasing themselves from the page as your [vagina] suddenly and very painfully begins tightening up.";
		PussyClose 5;
		if the noun is blessed and a random number between 1 and 3 is 1, decrease P by 2;
		ruin vagina times (the previous openness of vagina - the openness of vagina + P + 5);
	otherwise if R is 1 and the analvirgin of the player is 0 and the player is male and the openness of asshole > 5:
		say "'[one of]Ever since that first time, all I can think about is getting my prostate pounded by that huge [manly-penis]! Now, that's the only way I get any satisfaction at all! It's not my fault my hot fuckhole makes such a great cumdump[or]I still get tingles in my [asshole] whenever I think about my first time. I'd sit on anyone's hard cock and bounce on it until they came if I could just get a second chance! It's only fair I should get to choose who breeds my nasty fuckhole[or]It seems like every time I meet a real [man of shopkeeper], [he of shopkeeper] decides the best place for [his of shopkeeper] [manly-penis] is up my [sissy] ass! I know you can't get your virginity back, but my slutty boy hole is getting tired of all these thick creamy loads[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if]wording, but also because it captures how you've always felt on the inside ever since your first time getting fucked that way. The words light up as the book emits a wave of energy, erasing themselves from the page as your [asshole] suddenly and very painfully begins tightening up.";
		AssClose 5;
		if the noun is blessed and a random number between 1 and 3 is 1, decrease P by 2;
		ruin asshole times (the previous openness of asshole - the openness of asshole + P + 5);
	otherwise if the diaper addiction of the player > 6 and diaper lover >= 1 and R < 4:
		say "'[one of]I've reached the point where all I can think about when I'm horny is diapers! Panties, and even nudity, do nothing for me anymore, all I care about is wearing my precious pottypants. I find myself longing for people to rub my diaper so I can make my cummies in them more than I long to have real sex with them[or]I just came from soiling myself in front of mommy and her friends. While they all laughed at me all I cared about was rubbing my diaper as hard as possible, how could I not after something like that happened? Situations like this are the only thing that arouse me anymore[or]It's a good thing I'm able to get off from using my diapers, seeing as that's all I'm good for now. I doubt anyone would be interested in me now after seeing me cum in a soiled diaper while playing in a baby bouncer without a hint of shame. No matter how much I enjoy it though, deep down I just want another chance at having real sex[at random]. I want a do-over.' You cringe at what's written on the page, partly because of the [if the delicateness of the player > 14]adult[end if]wording, but also because it captures how you feel about your growing addiction to diapers. The words light up as you move to turn the page, erasing themselves as it suddenly feels less attractive to soil your diapers, even as you start to feel more like the adult baby you fantasize about being.";
		SilentlyDiaperAddictDown 4;
		if the noun is not blessed or a random number between 1 and 3 < 2, increase P by 1;
		IntDown P + 1;
	otherwise if the semen taste addiction of the player > 6 and R < 4:
		say "'[one of]Sometimes I wish there was more to life than sucking my man's fat monster until he comes. I know my place is on my knees, but it's getting out of hand! It's getting so hard to think when I'm not gargling a fresh load of yummy dick juice, and I KNOW it all started with that first blowjob[or]Whenever my lips are wrapped around a big hard cock, I know it's what I was always meant to do, but I can't focus on anything else! There used to be more to life than a delicious helping of yummy man stuff for breakfast lunch and dinner, but I can't remember what[or]Man cream is my favourite food, but sometimes I wish I didn't have to spend so much time every day draining every pair of aching balls I run into! Every time I do it it feels even better than last time, and sometimes I run out of room in my nasty jizz tank in the middle of the day[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if] wording, but also because it captures how you feel about your growing addiction to blowjobs. The words light up as you move to turn the page, erasing themselves as it suddenly gets a lot harder to think about sucking cocks. It's a lot harder to think about anything...";
		SemenTasteAddictDown 4;
		if the noun is not blessed or a random number between 1 and 3 < 2, increase P by 1;
		IntDown P + 1;
	otherwise if the sex addiction of the player > 6 and R < 4:
		say "'[one of]Whenever I look at a man, all I can think about is getting naked and bouncing on his big hard pants candy! I know I LOVE getting fucked senseless like the nasty whore I am, but sometimes I miss what it was like before[or]It's like my dirty cock warmer has a mind of its own sometimes. There is a time and place to get bent over a table and fucked full of [semen], but it's not all the time! If only I had a way to keep my slutty cumdump in line, like I did before[or]Milking a cock with my nasty fuckhole feels so good, and it's obviously the only thing I'm useful for. But, sometimes I think all this naughty sex I'm having is making me even more addicted to fun poundings! Not like I could stop now, but I know my boyfriend is going to get bored eventually[at random]. I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if] wording, but also because it captures how you feel about your growing addiction to sex. The words light up as you move to turn the page, erasing themselves as it suddenly gets a lot harder to think about getting fucked. It's a lot harder to think about anything...";
		SilentlySexAddictDown 4;
		if the noun is not blessed or a random number between 1 and 3 < 2, increase P by 1;
		IntDown P + 1;
	otherwise:[R is 4]
		say " It doesn't sound a thing like you, and it's actually pretty embarrassing to know someone might read this and think this is how you actually feel all the time.";
		humiliate 100.

To decide which number is the intelligence-influence of (C - a book of regrets):
	if C is cursed, decide on -2;
	decide on -1.

Section 3 - Book of Anal

A book of anal is a kind of pocketbook. There is 1 book of anal. The text-shortcut of book of anal is "bba". Understand "brandi", "brandi's", "big" as book of anal. A book of anal can be provoking, tolerance, enhancing, bookish (this is the temp-skill property).

To decide which number is the price of (C - a book of anal):
	decide on 3.

To decide which number is the initial outrage of (C - a book of anal):
	decide on 13.

To say ClothingDesc of (C - a book of anal):
	say "A paperback book with the words BRANDI'S BIG BOOK OF ANAL superimposed over a naked rear end.".

To say ShortDesc of (C - a book of anal):
	say "Book of Anal".
To say MediumDesc of (C - a book of anal):
	say "Brandi's Big Book of Anal".

To decide which number is the soreness-influence of (C - a book of anal):
	if C is tolerance, decide on 3 + (the flat intelligence of the player / 7);[more powerful the better your reading comprehension!]
	decide on 0.

Definition: a book of anal is anal sex themed: decide yes.

[!<TheBookOfAnalButtSlutRule>+

If it's in provoking mode, it increases the chances of anal sex.

+!]
This is the book of anal butt slut rule:
	if there is a worn provoking book of anal, increase the desirability of asshole by 10.
The book of anal butt slut rule is listed in the butt slut eligibility rules.

Carry out browsing book of anal:[If books are never made easier to get, this probably needs to be buffed.]
	say "You thumb through the book, which is full of incredibly graphic depictions of [one of]the eponymous Brandi[or]'Brandi'[or]a woman named Brandi[at random] engaged in anal sex.";
	let R be a random number between 1 and 7;
	if the player is horny and R >= 4 and the player is able to automatically masturbate:[TODO: automatic ass wank]
		say " [line break][variable custom style][if the bimbo of the player < 8 and the player is male]Nothing wrong with a quick wank...[otherwise if the bimbo of the player < 8]I-I can't believe I'm about to do this...[otherwise if the analvirgin of the player is 1]T-that was... H-he came right when... and... and... I have to get off. I have to get off RIGHT now.[otherwise if the bimbo of the player < 13]I can't help myself...[otherwise]Ugh, now I HAVE to masturbate! Maybe someone will find me and take over...[end if][roman type][line break]";
		now auto is 1;
		try masturbating;
		now auto is 0;
	otherwise if R < 4:
		if R is 1:
			say " You come to a page depicting a montage of Brandi getting pounded by at least 10 different cocks (and one very large dildo), captioned: [line break][second custom style]'Learn how I can handle 43 ass-fuckings in a row using this one weird tip! Lube companies will HATE you!'[roman type][line break]";
			say " The 'tip' is surprisingly detailed and hard to remember, but something about keeping the book in your hand is helping you remember what [bold type]you've learned about resisting soreness.[roman type]";
			now the noun is tolerance;
			arouse 300;
		if R is 2:
			say " You flip through the book until you encounter a page showing Brandi [']sitting['] on top of a male client. A long line of customers extends out behind her, covered up by some text. [line break][second custom style]'I dealt with SO many ungrateful boy-toys when I was getting into the business, I realised it just wasn't enough fun to destroy my asshole! Like everyone, I tried glitter first, but when that didn't work I came up with my very own technique that keeps [']em waiting and satisfied at the same time!'[roman type][line break]";
			say " The next page contains a surprising amount of text, and it's a bit hard to remember, but keeping this book in your hand to remind you makes you feel like [bold type]people will start treat you better after anal sex.[roman type]";
			now the noun is enhancing;
			arouse 300;
		if R is 3:
			say " You come to a page with Brandi bent over a table, smirking over her shoulder. There's a lot of text on the page, but somehow all you can think about is what it would be like to kneel down behind her and stick your tongue in her [asshole]. Eventually you manage to tear your eyes away, but the image stays firmly in the back of your mind as you read her tip. [line break][second custom style]'Some boys think they're too good for the backdoor, but that's no reason to let a big horny cock go to waste! It's as easy as visualising your cumdump as the most fun place for anybody to be! Keep that image in your head and people will be lining up for a turn in your ass!'[roman type][line break]";
			say "[bold type]As long as you have this book to keep that image fresh in your mind, your [asshole] will seem like a much better place to fuck![roman type]";
			now the noun is provoking;
			arouse 300;
	otherwise:
		if R is 6 and the sex addiction of the player < 12:[increase delicateness at low sex addiction]
			say " [line break][variable custom style][one of]That looks like it hurts. Will that happen to me?[or]I can't imagine how it would feel to take two [if the player is not possessing a vagina]at the same time[otherwise]in there at the same time[end if]. I know I couldn't stand it...[or]I don't ever want to take anything that big. I'd just cry if anyone made me do that...[or]She can't really enjoy that, can she? I know I couldn't, that's way too big...[or]He didn't even clean it first! I don't want anything to do with that![at random][roman type][line break][run paragraph on]";
			DelicateUp 1;
		otherwise if R is 7 and the anal sex addiction of the player < 10:
			say " [if the anal sex addiction of the player < 3 and the player is gendered male][line break][first custom style][one of]That actually looks pretty good for the one on the bottom...[or]Some of these shots make the guy look good too. Must be the angle or something.[at random][otherwise if the anal sex addiction of the player < 5][first custom style][one of]I guess it isn't all bad. I could see how some people might like it.[or]Not that I'd ever willingly let someone to that to me, but if I had to, that's the position I would pick.[at random][otherwise if the analvirgin of the player is 1][line break][variable custom style][one of]That actually seems like it would feel pretty good...[or]Is that really what anal is like? Wow...[or]I guess I can see why she would write a book about anal. It looks like she's having so much fun...[or]So that's why it feels better if he doesn't pull out. I'm learning so much...[or]Wow... it looks like she's really enjoying that.[at random][otherwise if the anal sex addiction of the player < 7][variable custom style][one of]I guess if he does it like that it would feel pretty great.[or]That did feel pretty good when it happened to me...[or]I guess it really did feel that good. I kind of want to do it even more now.[at random][otherwise][line break][second custom style][one of]I wish someone would fuck me like that...[or]It's great to read about someone getting enthusiastic about getting pounded![or]These dicks are so big... where did she find these guys? I want to meet them![at random][end if][roman type][line break]";
			AnalSexAddictUp 1;
		otherwise:[arousal]
			say " [if the bimbo of the player < 8 and the player is female][line break][first custom style][one of]I can't believe I'm actually getting turned on by this. I mean- it's disgusting![or]Why am I getting turned on by this trash...[or]I'm actually getting aroused looking at this filthy tripe. I can't believe this...[at random][otherwise if the bimbo of the player < 8][first custom style][one of]Man, I wish I could find the chick who made this so I could give her a piece of my DICK![or]THIS BOOK IS AWESOME! One thing is for sure, this Brandi chick knows porn![or]I really want to try some of this stuff. But where could I find a bitch who'd let me...[at random][otherwise if the bimbo of the player < 13][line break][variable custom style][one of]Why am I getting so turned on? It's not like any of this is happening to me...[or]This is kind of hot... really hot. What's happening to me?[or]Whoever Brandi is, she must have had a lot of fun making this. It's a lot of fun reading it...[at random][otherwise][line break][second custom style][one of]Teehee, I'm getting horny just reading it![or]This Brandi is kind of a prude. But I love watching her get fucked![or]This book is turning me on! I should ask for a copy to bring home.[at random][end if][roman type][line break]";
			arouse 350.

Section 4 - Notebook

[The notebook gameplay is a little too boring. Time to rework it for like the fourth time.]

A notebook is a kind of pocketbook. There is 1 notebook. A notebook is usually unique. A notebook is usually zap ready. A notebook is usually leather. The text-shortcut of notebook is "hfn".[ A notebook has a number called tear. ]A notebook has a number called charge. A notebook is usually intelligence-influencing. A notebook is usually projectile.

A study-buddy is a thing that varies. study-buddy is the throne.

Definition: a notebook is fetish appropriate if diaper quest is 0.

To say ClothingDesc of (W - a notebook):
	let X be the number of notebook-studied monsters;
	say "This hardcover book has your name embroidered on the front, with a blurb on the back that reads 'Paying attention in class? Fooling around with the girls? Showing the boys what you've been learning about in school? This book has your back! Thanks to state of the art magic or whatever, this book takes care of everything completely hands free, just for YOU!' [if X < 4]The paper is soft, almost damp. It would probably be tough to write on by hand[otherwise if X < 8]The pages are soft, almost damp. The words on the pages glow faintly, seeming to shift between English and some inscrutable ancient script.[otherwise if X < 12]The pages are soft, yet crisp, and you can feel warmth and energy when you brush it with your fingertips. The words on the pages glow faintly, shifting unpredictably between English and some inscrutable ancient script[otherwise]The pages are flexible, yet crisp, warm with energy as the glowing words shift rapidly between what appears to be English and some inscrutable ancient script[end if].".

To say ShortDesc of (W - a notebook):
	say "notebook".
To say MediumDesc of (W - a notebook):
	say "hands-free notebook".

Carry out browsing notebook:
	say "You open the book and inspect the intricate runes adorning the pages. You can't understand any of it.".

[
Two ways to empower the notebook:
Sex. Choose a monster and have sex with them. The book will research them and add to its damage.
Fighting. Choose a monster and fight them. The book will research them and add to its damage.
]

To compute attack of (W - a notebook) at (M - a monster):
	let I be the damage improvement of W;
	if M is notebook-studied:
		say "The [printed name of W] emits pink and red sparks as you thrust your hand at [NameDesc of M], channelling the energy into a [if I < 3]small[otherwise if I < 6]big[otherwise if I < 9]huge[otherwise]massive[end if], [one of]fizzling[or]crackling[or]sizzling[at random], [one of]dick[or]cock[or]penis[at random]-shaped magic missile!";
	otherwise:
		say "The pages of the [printed name of W] glow as you thrust your hand at [NameDesc of M], channelling the energy into a red, [one of]fizzling[or]crackling[or]sizzling[at random], [if I < 3]arrow-shaped[otherwise if I < 6]axe-shaped[otherwise]sword-shaped[end if] magic missile!".

[You can only study monsters you finish off with the book, or monsters you have sex with more than once.]
To compute studying (N - a number) of (M - a monster):
	let G be a random held notebook;
	let C be 3;
	if the class of the player is schoolgirl, decrease C by the number of worn scrunchies;
	if N is 0:[sex]
		if M is notebook-studied:
			say "A yellow bolt shoots out of the [printed name of G] disappears into [NameDesc of M][']s chest. [big his of M] expression changes slightly, and somehow you know [he of M] looks more favourably on you now.";
			FavourUp M by 1;
		if a random number between 0 and the times-submitted of M < C:
			say "The [printed name of G] shivers, as if a draft were passing through its pages. Looks like it wants to know more about [NameDesc of M]!";
		otherwise:
			say "The [printed name of G] falls open, filling several pages with detailed sketches of [NameDesc of M][']s genitals, which slowly meld with the inscrutable script that covers the rest of its pages. The book seems a lot stronger!";
			now M is notebook-studied;
	otherwise:[kill]
		if M is notebook-studied:
			if a random number between -2 and 4 > C:
				say "The [printed name of G] shivers, and you feel a rush of information moving up your body, straight toward your brain. You feel smarter!";
				IntUp 1;
			otherwise:
				repeat with X running through monsters in the location of the player:
					unless M is dying:
						now the scared of X is the difficulty of M;
						FavourDown X;
				say "The [printed name of G] shivers, emitting a blast of red light that covers everything in the room. [if the number of monsters in the location of the player < 2]It doesn't seem to do anything[otherwise]The [printed name of a random monster in the location of the player] seems affected by it[end if].";
		otherwise:
			say "The [printed name of G] falls open, filling a few with detailed sketches of [NameDesc of M], which slowly meld with the indecipherable script that covers the rest of its pages. The book seems a bit stronger!";
			now M is notebook-studied.

[Considering the player usually has to go three regions to get to the notebook, then run back, the item should be fairly powerful]
To decide which number is the damage improvement of (W - a notebook):
	let X be MagicPowerDamage;
	increase X by (2 + the number of notebook-studied monsters) / 3;
	if the noun is notebook-studied:
		increase X by 2;[if you're having a bad run, this can be a real life saver]
	increase X by the number of worn scrunchies;
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	if X < 0, decide on 0;
	decide on X.

Definition: a notebook is ingredient: decide no.
Definition: a notebook is product: decide yes.
Definition: a notebook is recipe specific: decide yes.

To decide which number is the alchemy key of (C - a notebook):
	decide on 22.

To decide which number is the crafting key of (C - a notebook):
	decide on 0.


To decide which text is the RecipeDesc of (C - a notebook):
	say "The recipe just says 'Place a pocketbook in the bowl'.".

This is the notebook specific recipe rule:
	let R be a random notebook;
	if R is fetish appropriate:
		now the Product in row 37 of the Table of Alchemy is 22;
		now the Recipe in row 37 of the Table of Alchemy is 1.
The notebook specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a notebook):
	now T is bland;
	if the noun is not pocketbook, now T is cursed.

Pocketbooks ends here.
