Pocketbooks by Equippables begins here.

A pocketbook is a kind of equippable. A pocketbook is usually leather. A pocketbook is usually manly. A pocketbook is usually rare. Understand "pocket", "book" as pocketbook. The text-shortcut of a pocketbook is usually "pktb". A pocketbook is usually projectile. A pocketbook is usually zap ready.

Figure of pocketbook is the file "Items/Accessories/Equippables/book1.png".

To decide which figure-name is the clothing-image of (C - a pocketbook):
	decide on figure of pocketbook.

Definition: a pocketbook is shop-eligible:
	if it is product, decide no;
	if it is fetish appropriate, decide yes;
	decide no.

To decide which number is the original price of (C - a pocketbook):
	decide on 4.

Browsing is an action applying to one thing. Understand "skim [something]", "browse [something]" as browsing.

To say ClothingDesc of (C - a pocketbook):
	say UniqueClothingDesc of C;
	say "As with all pocketbooks, you can [bold type]wield[roman type] it to enable you to [bold type]zap[roman type] enemies with its magic attack, and / or [bold type]browse[roman type] it.".


Check browsing:
	if the player is in danger or the player is immobile, say "You're a bit busy!" instead;
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

Definition: a pocketbook is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.
Definition: a pocketbook is ingredient:
	if it is not product, decide yes;
	decide no.
Definition: a pocketbook is brown themed: decide yes.
Definition: a pocketbook is book themed: decide yes.

To say ShortDesc of (C - a pocketbook):
	say "pocketbook".

To decide which number is the bartering value of (T - a pocketbook) for (M - an aeromancer):
	decide on 5.

To decide which number is the crafting key of (C - a pocketbook):
	decide on 37.

To compute attack of (W - a pocketbook) at (M - a monster):
	let I be the zap damage improvement of W;
	say "The pages of the [printed name of W] glow as you thrust your hand at [NameDesc of M], channelling the energy into a red, [one of]fizzling[or]crackling[or]sizzling[at random], [if I < 3]arrow-shaped[otherwise if I < 6]axe-shaped[otherwise]sword-shaped[end if] magic missile!".

To decide which number is the zap damage improvement of (W - a pocketbook):
	let X be MagicPowerDamage - 1;
	increase X by the number of worn scrunchies;
	if there is a worn pigtail-scrunchie, increase X by 2;
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	if X < 0, decide on 0;
	decide on X.

Section 1 - Pocket Necronomicon

A pocket necronomicon is a kind of pocketbook. A pocket necronomicon is unique. The text-shortcut of pocket necronomicon is "pkn". There is 1 pocket necronomicon. Understand "book", "necro", "nomicon", "nomic" as pocket necronomicon.

Figure of necronomicon is the file "Items/Accessories/Equippables/book2.png".

To decide which figure-name is the clothing-image of (C - a pocket necronomicon):
	decide on figure of necronomicon.

Definition: a pocket necronomicon is fetish appropriate: decide yes.
Definition: a pocket necronomicon is shop-eligible: decide no.

To say UniqueClothingDesc of (C - a pocket necronomicon):
	say "A small black pocket-sized book, with the rather ominous title of NECRONOMICON down the spine. In all capital letters, which does seem a bit melodramatic.".

To say ShortDesc of (C - a pocket necronomicon):
	say "necronomicon".
To say MediumDesc of (C - a pocket necronomicon):
	say "pocket necronomicon".

Carry out browsing pocket necronomicon:
	say "You consult the Necronomicon, though it's probably a bad idea.";
	if the player-class is cultist and the invokeskill of the player is 0:
		say "Your mind is opened to eldritch vistas by what you've read!";
		teach invoking;
		if the player is not broken:
			say "You feel somewhat less of a person.";
			humiliate 2500;
	otherwise if the magic power of the player > 0:
		let S be a random uncastable fetish appropriate magic-spell;
		if S is magic-spell:
			say "Magic flows from your body, turning a black page in the book into the instructions for how to cast a new spell. Wow!";
			say NewbieMagicSpells;
			compute learning of S;
			compute spell consequences of the noun;
			if the player is not broken:
				say "You feel somewhat less of a person.";
				humiliate 2500;
		otherwise:
			say "It seems you've learned every spell you can, as no new text appears.";
	otherwise:
		say "The book has no text on any of the pages. Perhaps if you had more magic power, it would reveal its secrets to you.".

To compute attack of (W - pocket necronomicon) at (M - a monster):
	let I be the zap damage improvement of W;
	say "The pages of the [printed name of W] glow as you thrust your hand at [NameDesc of M], channelling the energy into a black, [one of]fizzling[or]crackling[or]sizzling[at random], [if I < 3]tentacle-shaped[otherwise if I < 6]tooth-shaped[otherwise]claw-shaped[end if] magic missile!";
	if the player is getting unlucky:
		if W is cursed or the player is getting unlucky:
			say "[bold type]Suddenly, the pocketbook is surrounded by a dark glow! [roman type]";
			if a random number between 1 and 2 is egg laying fetish:
				repeat with N running from 1 to 3:
					let M be a random off-stage facehugger;
					if M is monster:
						summon M in playerRegion;
						if M is nonexistent and M is on-stage, set up M;
						now M is in the location of the player;
			let NF be the number of uninterested facehuggers in the location of the player;
			if NF > 0:
				say "[if NF > 1][NF] gross-looking alien creatures have[otherwise]A gross-looking alien creature has[end if] appeared near your feet! Uh-oh...";
			otherwise:
				let T be a random drawable demonic tattoo;
				if T is tattoo and there is a worn tattoo and a random number between 1 and 2 is 1:
					summon T;
					say "A new tattoo sears itself onto your skin!";
					try examining T;
				otherwise:
					let C be a random worn breast covering blandness clothing;
					if C is nothing, now C is a random worn skirted blandness clothing;
					if C is nothing, now C is a random worn crotch covering blandness clothing;
					if C is clothing:
						say "Your [ShortDesc of C] is surrounded by a spooky green hue. It [if C is not cursed]now feels cursed and [end if][one of]almost feels... possessed...[or]has become possessed by a ghost![stopping]";
						now C is possession;
						if C is not cursed:
							now C is cursed;
							compute summoned quest of C;
					otherwise:
						let C be a random worn magic-enhanceable clothing;
						if C is clothing:
							decrease the raw-magic-modifier of C by 1;
							say "Your [ShortDesc of C] weakens, becoming a [C]!";
						otherwise:
							say "You feel weaker.";
							StrengthDown 1.

To decide which number is the humiliation-influence of (C - a pocket necronomicon):
	let B be -1;
	increase B by the magic-modifier of C;
	decide on B.

Definition: a pocket necronomicon is magic themed: decide yes.

Section 2 - Book of Do Overs

The book of regrets is a pocketbook. The text-shortcut of book of regrets is "bdo". Understand "do over", "doover", "do-over", "do overs", "do-overs", "overs", "my top 100", "top 100", "100" as book of regrets.

Figure of book of diaper regrets is the file "Items/Accessories/Equippables/book3a.png".
Figure of book of bukkake regrets is the file "Items/Accessories/Equippables/book3b.png".
Figure of book of regrets is the file "Items/Accessories/Equippables/book3c.png".

To decide which number is the charisma-influence of (C - book of regrets):
	decide on 1.

To decide which figure-name is the clothing-image of (C - book of regrets):
	if diaper lover >= 1, decide on figure of book of diaper regrets;
	if bukkake fetish is 1, decide on figure of book of bukkake regrets;
	decide on figure of book of regrets.

To say UniqueClothingDesc of (C - book of regrets):
	say "A small white pocket book [if diaper lover >= 1]with a picture of a confused looking woman in a diaper on the cover. Another woman is standing over her, sternly brandishing a dirty pair of undies.[otherwise if bukkake fetish is 1]with a picture of a naked woman surrounded by men on the cover. She's mid shrug, and there's a strangely wistful look on her face, which is absolutely plastered with [semen].[otherwise]with a picture of an anxious looking maid on the cover. A broken vase is on the floor in front of her, and behind her you can see her stern faced employer, holding a coiled up rope.[end if] 'Me and my Top 100 Do-overs, by [NameBimbo]' is superimposed over her forehead in big, red capital letters.[line break][variable custom style][one of]Is that my name? But [or][stopping]I didn't write this![roman type][paragraph break]You can sense that the [ShortDesc of C] is powered by your perversion - the higher your [if diaper quest is 1]orgasm[otherwise]sex[end if] addiction, the more damage it will deal in combat.".

To say ShortDesc of (C - book of regrets):
	say "book of do-overs".

Carry out browsing book of regrets:[TODO: player says something like "I didn't write that, but it's accurate" to replace the lack of coloured text]
	if the noun is cursed:
		say "You leaf through the book, but you can feel the book's curse somehow preventing you from focusing on any of the words.";
	otherwise if the skillCooldown of the player > 0:
		say "You leaf through the book, but you don't have the mental energy to take any of it in.";
	otherwise:
		now player-numerical-response is 0;
		say "You open up the book to a random page, and are [one of][or]once again [stopping]shocked to immediately find a passage in your handwriting, almost like a diary.[line break]";
		reset multiple choice questions;
		if (the raw-bladder-incontinence of the player > 1 or the raw-rectum-incontinence of the player > 1) and (diaper messing < 3 or asshole is not actually occupied) and there is a worn diaper, set next numerical response to "Read the page about your [if the player is not incontinent]growing [end if]incontinence.";
		if the pregnancy of the player > 0, set next numerical response to "Read the page about your pregnancy.";
		if the real openness of vagina > 1 and ungape is 0, set next numerical response to "Read the page about your loose vagina.";
		if the real openness of asshole > 1 and ungape is 0, set next numerical response to "Read the page about your loose asshole.";
		if the raw diaper addiction of the player > 4, set next numerical response to "Read the page about your growing addiction to diapers.";
		if the raw sex addiction of the player > 6, set next numerical response to "Read the page about your growing addiction to orgasms.";
		if the humiliation of the player >= 8000 and the player is not broken, set next numerical response to "Read the page about your lowered self-esteem.";
		set numerical response 0 to "Don't read any particular page.";
		if entry 1 in numerical-responses is not "":
			compute multiple choice question;
		if player-numerical-response is not 0:
			let T be chosen numerical response;
			if T matches the text "incontinence":
				let D be a random worn diaper;
				if D is not total protection, repair D;
				now auto is 1;
				if diaper messing >= 3:
					say "'[one of]I can't believe I've let myself become this much of a baby. I never should've started wearing diapers! I didn't even mean to use them, they were just supposed to be a joke! But they were so hard to get off, so I thought what could the harm be? Then after that diaper was fully used (why let it go to waste?) and I changed myself, the toilet was so far away when I had to go that it only made sense to use my diaper! At this point I've forgotten what a pot - I mean toilet, feels like[or]I tried using my training potty today, I had the perfect plan! I sat on the potty with my favourite pink diaper on, all I had to do when I felt the slightest need to go is take it off! I waited, and waited, and waited, and I never felt the need to go! I finally decided to check it, and it was already soaking wet and filled to the brim! I went who knows how long without even realising I had soiled my diaper[or]Why do they make it so hard to stop using diapers! They're [italic type]so[roman type] much more convenient than using the potty, of course I started only going potty in them! But now that everyone sees me for the pathetic pottypants baby, I want to start using the potty again, but getting potty trained is so hard[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the diaper addiction of the player > 14]adult[end if]wording, but also because it perfectly represents how you've felt since you completely lost control of your bladder and bowels. Suddenly, the book begins to glow, and the words start erasing themselves from the page! You feel light-headed, and fall to your knees, your ass in the air, and begin grunting, before suddenly [if D is not total protection]feeling a warm glow from your diaper, as it miraculously repairs itself! Better yet, you can feel[otherwise]feeling[end if] your bladder and bowels again! They feel awfully full, that is until you feel them begin to empty into your diaper!";
					try kneeling;
					now rectum is 8;
					now the bladder of the player is 10;
					compute messing;
				otherwise:
					say "'[one of]I can't believe I've let myself become this much of a baby. I never should've started wearing diapers! I didn't even mean to use them, they were just supposed to be a joke! But they were so hard to get off, so I thought what could the harm be? Then after that diaper was fully used (why let it go to waste?) and I changed myself, the toilet was so far away when I had to go that it only made sense to use my diaper! At this point I've forgotten what a pot - I mean toilet, feels like[or]I tried using my training potty today, I had the perfect plan! I sat on the potty with my favourite pink diaper on, all I had to do when I felt the slightest need to go is take it off! I waited, and waited, and waited, and I never felt the need to go! I finally decided to check it, and it was already soaking wet! I went who knows how long without even realising I had soiled my diaper[or]Why do they make it so hard to stop using diapers! They're [italic type]so[roman type] much more convenient than using the potty, of course I started only going potty in them! But now that everyone sees me for the pathetic pottypants baby, I want to start using the potty again, but getting potty trained is so hard[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the diaper addiction of the player > 14]adult[end if]wording, but also because it perfectly represents how you've felt since you completely lost control of your bladder and bowels. Suddenly, the book begins to glow, and the words start erasing themselves from the page! You feel light-headed, and fall to your knees, before suddenly [if D is not total protection]feeling a warm glow from your diaper, as it miraculously repairs itself! Better yet, you can feel[otherwise]feeling[end if] your bladder again! It feels awfully full, until you feel it begin to empty into your diaper!";
					try kneeling;
					now the bladder of the player is 10;
					now delayed urination is 1;
					try urinating;
				now the raw-bladder-incontinence of the player is 0;
				now the raw-rectum-incontinence of the player is 0;
				now auto is 0;
			otherwise if T matches the text "pregnancy":
				say "'[one of]My belly is getting way too big! Next time that [printed name of the father] wants to breed me with [his of the father] big, virile [manly-penis], I'm going to make [him of the father] wear a condom. UGH![or]I never should have let that [printed name of the father] stick [his of the father] yummy [manly-penis] in me and fertilise me with [his of the father] [semen]! I wish I wasn't pregnant![or]I can't believe that [printed name of the father] pumped me so full of virile sperm! Didn't he know this would happen if he stuck that yummy [manly-penis] in my pussy?[at random] I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if]wording, but also because it so accurately echoes the regret you've been holding in the pit of your stomach ever since you got pregnant. Suddenly, the book begins to glow, and the words start erasing themselves from the page! An [if the total volume of vagina > 9]absolutely obscene[otherwise if the womb volume of vagina > 4]obscene[otherwise]huge[end if] amount of [semen] comes dribbling down your thighs.";
				now auto is 1;
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
				if the semen volume of vagina < 7, now the semen volume of vagina is 7; [to guarantee expulsion event]
				now auto is 0;
			otherwise if T matches the text "vagina":
				say "'[one of]I just can't stop thinking about the way I lost my cherry. My tight little cumdump got ruined by that big, hard [manly-penis]! Now, it's like everybody wants to pin me down and [if pregnancy fetish is 1]breed my hot box[otherwise]come inside me[end if]! Life is so unfair[or]I can't believe I let anybody put their [manly-penis] in my fuckhole! Now whenever I get fucked, I have to think about my first time, and how huge that yummy [manly-penis] was[or]I can barely look at myself in the mirror ever since I lost my virginity! All I can think about is getting pounded into the floor by that heavenly [manly-penis]. Umm, hellooo, if I wanted to be treated like the worthless cumdumpster I am, I would ask[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if]wording, but also because it captures how you've always felt on the inside ever since you lost your purity. The words light up as the book emits a wave of energy, erasing themselves from the page as your [vagina] suddenly and very painfully begins tightening up.";
				PussyClose 5;
				PainUp 10;
			otherwise if T matches the text "asshole":
				say "'[one of]Ever since that first time, all I can think about is getting my [if the player is sexed male]prostate[otherwise][asshole][end if] pounded by that huge [manly-penis]! Now, that's the only way I get any satisfaction at all! It's not my fault my hot fuckhole makes such a great cumdump[or]I still get tingles in my [asshole] whenever I think about my first time. I'd sit on anyone's hard cock and bounce on it until they came if I could just get a second chance! It's only fair I should get to choose who breeds my nasty fuckhole[or]It seems like every time I meet a real [man of shopkeeper], [he of shopkeeper] decides the best place for [his of shopkeeper] [manly-penis] is up my [sissy] ass! I know you can't get your virginity back, but my slutty boy hole is getting tired of all these thick creamy loads[at random]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if]wording, but also because it captures how you've always felt on the inside ever since your first time getting fucked that way. The words light up as the book emits a wave of energy, erasing themselves from the page as your [asshole] suddenly and very painfully begins tightening up.";
				AssClose 5;
				PainUp 10;
			otherwise if T matches the text "diaper":
				say "'[one of]I've reached the point where all I can think about when I'm horny is diapers! Panties, and even nudity, do nothing for me anymore, all I care about is wearing my precious pottypants. I find myself longing for people to rub my diaper so I can make my cummies in them more than I long to have real sex with them[or]I just came from soiling myself in front of Mommy and her friends. While they all laughed at me all I cared about was rubbing my diaper as hard as possible, how could I not after something like that happened? Situations like this are the only thing that arouse me anymore[or]It's a good thing I'm able to get off from using my diapers, seeing as that's all I'm good for now. I doubt anyone would be interested in me now after seeing me cum in a soiled diaper while playing in a baby bouncer without a hint of shame. No matter how much I enjoy it though, deep down I just want another chance at having real sex[at random]. I want a do-over.' You cringe at what's written on the page, partly because of the [if the delicateness of the player > 14]adult[end if]wording, but also because it captures how you feel about your growing addiction to diapers. The words light up as you move to turn the page, erasing themselves as it suddenly feels less attractive to soil your diapers, even as you start to feel more like the adult baby you fantasise about being.";
				SilentlyDiaperAddictDown 4;
			otherwise if T matches the text "orgasm":
				if diaper quest is 0, say "'[one of]Whenever I look at a [man of shopkeeper], all I can think about is getting naked and bouncing on his big hard pants candy! I know I LOVE getting fucked senseless like the nasty whore I am, but sometimes I miss what it was like before[or]It's like my dirty cock warmer has a mind of its own sometimes. There is a time and place to get bent over a table and fucked full of [semen], but it's not all the time! If only I had a way to keep my slutty cumdump in line, like I did before[or]Milking a cock with my nasty fuckhole feels so good, and it's obviously the only thing I'm useful for. But, sometimes I think all this naughty sex I'm having is making me even more addicted to fun poundings! Not like I could stop now, but I know my [boy of shopkeeper]friend is going to get bored eventually[in random order]. I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player >= 14]prudish[end if] wording, but also because it captures how you feel about your growing addiction to sex. The words light up as you move to turn the page, erasing themselves as it suddenly gets a lot harder to think about getting fucked. It's a lot harder to think about anything...";
				otherwise say "'[one of]It's like my dirty little no-no has a mind of its own sometimes. I don't want to be bad, but I can't stop thinking naughty thoughts! If only I had a way to keep my libido in line, like I did before[or]Touching my no-no feels so good. But, sometimes I think all this naughty fun I'm having is making me even more addicted to it! Not like I could stop now, but I know my [daddy of shopkeeper] isn't going to be impressed[at random]. I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player >= 14]prudish[end if] wording, but also because it captures how you feel about your growing addiction to orgasms. The words light up as you move to turn the page, erasing themselves as it suddenly gets a lot harder to think about masturbation.";
				SilentlySexAddictDown 4;
			otherwise if T matches the text "esteem":
				say "'After everything I've allowed myself to do, it's become difficult to consider myself deserving of any respect. At this rate, I'll soon forget that I'm not just an object for other people to toy with and abuse. I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player >= 14]lame[end if] wording, but also because it captures how you feel about your growing addiction to orgasms. The words light up as you move to turn the page, erasing themselves as it suddenly feels a lot easier to bring yourself to advocate for yourself.";
				Dignify 8000;
			say "That took a lot of concentration! You feel like you're going to need to wait a while before you can focus on learning anything new.";
			now the skillCooldown of the player is 1000;
			now the noun is cursed;
			say "The book is surrounded by a dark glow! Uh-oh, it has become cursed...";
			compute summoned quest of the noun;
		otherwise:
			say "You don't find any particular page that would be useful or meaningful to read right now.".

	[currently removed]
	[say "'[one of]Sometimes I wish there was more to life than sucking my [man of shopkeeper]'s fat monster until [he of shopkeeper] comes. I know my place is on my knees, but it's getting out of hand! It's getting so hard to think when I'm not gargling a fresh load of yummy dick juice, and I KNOW it all started with that first blowjob[or]Whenever my lips are wrapped around a big hard cock, I know it's what I was always meant to do, but I can't focus on anything else! There used to be more to life than a delicious helping of yummy man stuff for breakfast lunch and dinner, but I can't remember what[or]Man cream is my favourite food, but sometimes I wish I didn't have to spend so much time every day draining every [if shopkeeper is a balls-haver]pair of aching balls[otherwise]aching [DickDesc of shopkeeper][end if] I run into! Every time I do it it feels even better than last time, and sometimes I run out of room in my nasty jizz tank in the middle of the day[in random order]! I want a do-over.' You cringe at what's written on the page, partly because of the [if the bimbo of the player > 14]prudish[end if] wording, but also because it captures how you feel about your growing addiction to blowjobs. The words light up as you move to turn the page, erasing themselves as it suddenly gets a lot harder to think about sucking cocks. It's a lot harder to think about anything...";
	SemenTasteAddictDown 4;]


To compute attack of (W - book of regrets) at (M - a monster):
	let I be the zap damage improvement of W;
	say "The pages of the [printed name of W] glow as you thrust your hand at [NameDesc of M], channelling the energy into a black, [one of]fizzling[or]crackling[or]sizzling[at random], [if I < 3]small[otherwise if I < 6]large[otherwise]massive[end if] [manly-penis]-shaped magic missile!".

To decide which number is the intelligence-influence of (C - book of regrets):
	if C is cursed, decide on -2;
	decide on -1.

To decide which number is the zap damage improvement of (W - book of regrets):
	let X be MagicPowerDamage - 1;
	increase X by the sex addiction of the player / 5;
	increase X by the number of worn scrunchies;
	if there is a worn pigtail-scrunchie, increase X by 2;
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	if X < 0, decide on 0;
	decide on X.

Section 3 - Book of Anal

The book of anal is a pocketbook. The text-shortcut of book of anal is "bba". Understand "brandi", "brandi's", "big" as book of anal. book of anal can be provoking, tolerance, enhancing, anal-enhanced, anal-expired (this is the temp-skill property).

Figure of book of anal is the file "Items/Accessories/Equippables/book4.png".

To decide which figure-name is the clothing-image of (C - book of anal):
	decide on figure of book of anal.

Definition: book of anal is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To decide which number is the original price of (C - book of anal):
	decide on 3.

To decide which number is the initial outrage of (C - book of anal):
	decide on 13.

To say UniqueClothingDesc of (C - book of anal):
	say "A paperback book with the words BRANDI'S BIG BOOK OF ANAL superimposed over a naked rear end. You can sense that it [if C is anal-enhanced]currently has more powerful attacks than normal, thanks to your recent anal action[otherwise if C is anal-expired]is no longer extra-powerful. Perhaps you should [bold type]browse[roman type] it and find a page that will help you enjoy some more anal action, and empower it again[otherwise]might become extra-powerful if you engage in some anal intercourse while wielding it[end if].".

To say ShortDesc of (C - book of anal):
	say "Book of Anal".
To say MediumDesc of (C - book of anal):
	say "Brandi's Big Book of Anal".

To decide which number is the soreness-influence of (C - book of anal):
	if C is tolerance, decide on 3 + (saved-flat-intelligence / 7); [the effect is more powerful, the better your reading comprehension!]
	decide on 0.

Definition: book of anal is anal sex themed: decide yes.


[!<TheBookOfAnalButtSlutRule>+

If it's in provoking mode, it increases the chances of anal sex.

+!]
This is the book of anal butt slut rule:
	if book of anal is worn and book of anal is provoking, increase the desirability of asshole by 25.
The book of anal butt slut rule is listed in the butt slut eligibility rules.

Carry out browsing book of anal:
	say "You thumb through the book, which is full of incredibly graphic depictions of [one of]a woman named Brandi[or]the eponymous Brandi[or]'Brandi'[stopping] engaged in anal sex. ";
	if the player is horny:
		say "[bold type]You're too horny to be able to focus on anything other than the extremely erotic anal imagery.[roman type][line break]";
		if the buttskill of the player is 0:
			say "On some of the pages, she's inserting three or four fingers, or even her whole fist, into her own asshole, and seems to be enjoying it.";
			teach buttskill;
		now auto is 1;
		if the player is able to automatically masturbate and the player is able to anally masturbate:
			now automaticAsswank is true;
			say "[line break][variable custom style][if the bimbo of the player < 8 and the player is gendered male]Nothing wrong with a quick wank...[otherwise if the bimbo of the player < 8]I-I can't believe I'm about to do this...[otherwise if the analvirgin of the player is 1]T-that was... H-he came right when... and... and... I have to get off. I have to get off RIGHT now.[otherwise if the bimbo of the player < 13]I can't help myself...[otherwise]Ugh, now I HAVE to masturbate! Maybe someone will find me and take over...[end if][roman type][line break]";
			try masturbating;
			now automaticAsswank is false;
		now auto is 0;
	otherwise:
		reset multiple choice questions;
		set numerical response 1 to "Find a page focused on Brandi taking huge cocks.";
		set numerical response 2 to "Find a page focused on Brandi's techniques for pleasing [men of shopkeeper] during anal sex.";
		set numerical response 3 to "Find a page focused on Brandi attracting men with her asshole.";
		set numerical response 0 to "Don't read any specific page[if the noun is anal-enhanced] (RECOMMENDED because the book is currently enhancing your attacks!)[end if].";
		compute multiple choice question;
		if player-numerical-response is 1:
			say "You come to a page depicting a montage of Brandi getting pounded by at least 10 different cocks (and one very large dildo), captioned:[line break][second custom style]'Learn how I can handle 43 ass-fuckings in a row using this one weird tip! Lube companies will HATE you!'[roman type][line break]";
			say "The 'tip' is surprisingly detailed and hard to remember, but something about keeping the book in your hand is helping you remember what [bold type]you've learned about resisting soreness.[roman type][line break]";
			now the noun is tolerance;
		if player-numerical-response is 2:
			say "You flip through the book until you encounter a page showing Brandi [']sitting['] on top of a male client. A long line of customers extends out behind her, covered up by some text.[line break][second custom style]'I dealt with SO many ungrateful boy-toys when I was getting into the business, I realised it just wasn't enough fun to destroy my asshole! Like everyone, I tried glitter first, but when that didn't work I came up with my very own technique that keeps [']em waiting and satisfied at the same time!'[roman type][line break]";
			say " The next page contains a surprising amount of text, and it's a bit hard to remember, but keeping this book in your hand to remind you makes you feel like [bold type]people will start treat you better after anal sex.[roman type][line break]";
			now the noun is enhancing;
		if player-numerical-response is 3:
			say "You come to a page with Brandi bent over a table, smirking over her shoulder. There's a lot of text on the page, but somehow all you can think about is what it would be like to kneel down behind her and stick your tongue in her [asshole]. Eventually you manage to tear your eyes away, but the image stays firmly in the back of your mind as you read her tip.[line break][second custom style]'Some boys think they're too good for the backdoor, but that's no reason to let a big horny cock go to waste! It's as easy as visualising your cumdump as the most fun place for anybody to be! Keep that image in your head and people will be lining up for a turn in your ass!'[roman type][line break]";
			say "[bold type]As long as you have this book to keep that image fresh in your mind, your [asshole] will seem like a much better place to fuck![roman type][line break]";
			now the noun is provoking;
		arouse 300;
	[otherwise:
		if R is 6 and the sex addiction of the player < 12:
			say "[line break][variable custom style][one of]That looks like it hurts. Will that happen to me?[or]I can't imagine how it would feel to take two [if the player is not possessing a vagina]at the same time[otherwise]in there at the same time[end if]. I know I couldn't stand it...[or]I don't ever want to take anything that big. I'd just cry if anyone made me do that...[or]She can't really enjoy that, can she? I know I couldn't, that's way too big...[or]He didn't even clean it first! I don't want anything to do with that![at random][roman type][line break][run paragraph on]";
			DelicateUp 1;
		otherwise if R is 7 and the anal sex addiction of the player < 10:
			say " [if the anal sex addiction of the player < 3 and the player is gendered male][line break][first custom style][one of]That actually looks pretty good for the one on the bottom...[or]Some of these shots make the guy look good too. Must be the angle or something.[at random][otherwise if the anal sex addiction of the player < 5][first custom style][one of]I guess it isn't all bad. I could see how some people might like it.[or]Not that I'd ever willingly let someone to that to me, but if I had to, that's the position I would pick.[at random][otherwise if the analvirgin of the player is 1][line break][variable custom style][one of]That actually seems like it would feel pretty good...[or]Is that really what anal is like? Wow...[or]I guess I can see why she would write a book about anal. It looks like she's having so much fun...[or]So that's why it feels better if he doesn't pull out. I'm learning so much...[or]Wow... it looks like she's really enjoying that.[at random][otherwise if the anal sex addiction of the player < 7][variable custom style][one of]I guess if he does it like that it would feel pretty great.[or]That did feel pretty good when it happened to me...[or]I guess it really did feel that good. I kind of want to do it even more now.[at random][otherwise][line break][second custom style][one of]I wish someone would fuck me like that...[or]It's great to read about someone getting enthusiastic about getting pounded![or]These dicks are so big... where did she find these guys? I want to meet them![at random][end if][roman type][line break]";
			AnalSexAddictUp 1;
		otherwise:
			say " [if the bimbo of the player < 8 and the player is gendered female][line break][first custom style][one of]I can't believe I'm actually getting turned on by this. I mean- it's disgusting![or]Why am I getting turned on by this trash...[or]I'm actually getting aroused looking at this filthy tripe. I can't believe this...[at random][otherwise if the bimbo of the player < 8][first custom style][one of]Man, I wish I could find the chick who made this so I could give her a piece of my DICK![or]THIS BOOK IS AWESOME! One thing is for sure, this Brandi chick knows porn![or]I really want to try some of this stuff. But where could I find a bitch who'd let me...[at random][otherwise if the bimbo of the player < 13][line break][variable custom style][one of]Why am I getting so turned on? It's not like any of this is happening to me...[or]This is kind of hot... really hot. What's happening to me?[or]Whoever Brandi is, she must have had a lot of fun making this. It's a lot of fun reading it...[at random][otherwise][line break][second custom style][one of]Teehee, I'm getting horny just reading it![or]This Brandi is kind of a prude. But I love watching her get fucked![or]This book is turning me on! I should ask for a copy to bring home.[at random][end if][roman type][line break]";
			arouse 350.]

To compute attack of (W - book of anal) at (M - a monster):
	let I be the zap damage improvement of W;
	say "The pages of the [printed name of W] glow as you thrust your hand at [NameDesc of M], channelling the energy into a black, [one of]fizzling[or]crackling[or]sizzling[at random], [if I < 3]small[otherwise if I < 6]large[otherwise]massive[end if] butt-plug-shaped magic missile!";
	if W is anal-enhanced and the number of live things penetrating asshole is 0 and the player is getting unlucky:
		say "[bold type][BigNameDesc of W] [bold type]stops glowing. You sense that it is no longer enhancing your attacks.";
		now W is anal-expired.

To decide which number is the zap damage improvement of (W - book of anal):
	let X be MagicPowerDamage - 1;
	if W is anal-enhanced, increase X by 3;
	increase X by the number of worn scrunchies;
	if there is a worn pigtail-scrunchie, increase X by 2;
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	if X < 0, decide on 0;
	decide on X.

To compute periodic effect of (W - book of anal):
	if W is not anal-enhanced and there is a live thing penetrating asshole and the player is getting lucky:
		say "[bold type][BigNameDesc of W] [bold type]shines brightly. [roman type]You sense that it has become empowered from your anal activity! [GotLuckyFlav]";
		now W is anal-enhanced.


Section 4 - Notebook

notebook is a pocketbook. notebook is unique. notebook is zap ready. notebook is leather. The text-shortcut of notebook is "hfn".[ notebook has a number called tear. ]notebook has a number called charge. notebook is intelligence-influencing.

Figure of notebook is the file "Items/Accessories/Equippables/book5.png".

To decide which figure-name is the clothing-image of (C - notebook):
	decide on figure of notebook.

study-buddy is a thing that varies. study-buddy is the throne.

Definition: notebook is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To say UniqueClothingDesc of (W - notebook):
	let X be the number of notebook-studied monsters;
	say "This hardcover book has the words [']SEX NOTE['] embroidered on the front, with a blurb on the back that reads 'Paying attention in class? Fooling around with the girls? Showing the boys what you've been learning about in school? This book has your back! Thanks to state of the art magic or whatever, this book takes care of everything completely hands free, just for YOU!' [if X < 4]The paper is soft, almost damp. It would probably be tough to write on by hand[otherwise if X < 8]The pages are soft, almost damp. The words on the pages glow faintly, seeming to shift between English and some inscrutable ancient script.[otherwise if X < 12]The pages are soft, yet crisp, and you can feel warmth and energy when you brush it with your fingertips. The words on the pages glow faintly, shifting unpredictably between English and some inscrutable ancient script[otherwise]The pages are flexible, yet crisp, warm with energy as the glowing words shift rapidly between what appears to be English and some inscrutable ancient script[end if].".

To say ShortDesc of (W - notebook):
	say "notebook".
To say MediumDesc of (W - notebook):
	say "hands-free notebook".

Carry out browsing notebook:
	say "You open the book and inspect the intricate runes adorning the pages. You can't understand any of it.".

[
Two ways to empower the notebook:
Sex. Choose a monster and have sex with them. The book will research them and add to its damage.
Fighting. Choose a monster and fight them. The book will research them and add to its damage.
]

To compute attack of (W - notebook) at (M - a monster):
	let I be the zap damage improvement of W;
	if M is notebook-studied:
		say "The [printed name of W] emits pink and red sparks as you thrust your hand at [NameDesc of M], channelling the energy into a [if I < 3]small[otherwise if I < 6]big[otherwise if I < 9]huge[otherwise]massive[end if], [one of]fizzling[or]crackling[or]sizzling[at random], [one of]dick[or]cock[or]penis[at random]-shaped magic missile!";
	otherwise:
		say "The pages of the [printed name of W] glow as you thrust your hand at [NameDesc of M], channelling the energy into a red, [one of]fizzling[or]crackling[or]sizzling[at random], [if I < 3]arrow-shaped[otherwise if I < 6]axe-shaped[otherwise]sword-shaped[end if] magic missile!".

[Considering the player usually has to go three regions to get to the notebook, then run back, the item should be fairly powerful]
To decide which number is the zap damage improvement of (W - notebook):
	let X be MagicPowerDamage;
	increase X by (2 + the number of notebook-studied monsters) / 3;
	if the noun is notebook-studied monster, increase X by 3;[if you're having a bad run, this can be a real life saver]
	increase X by the number of worn scrunchies;
	if there is a worn pigtail-scrunchie, increase X by 2;
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	if X < 0, decide on 0;
	decide on X.

[You can only study monsters you finish off with the book, or monsters you have sex with more than once.]
To compute studying (N - a number) of (M - a monster):
	let C be 3;
	if the class of the player is schoolgirl, decrease C by the number of worn scrunchies;
	if N is 0:[sex]
		if M is notebook-studied:
			say "A yellow bolt shoots out of the [printed name of notebook] and disappears into [NameDesc of M][']s chest. [big his of M] expression changes slightly, and somehow you know [he of M] looks more favourably on you now.";
			FavourUp M by 1;
		if a random number between 0 and the times-submitted of M < C:
			say "The [printed name of notebook] shivers, as if a draft were passing through its pages. Looks like it wants to know more about [NameDesc of M]!";
		otherwise:
			say "The [printed name of notebook] falls open, filling several pages with detailed sketches of [NameDesc of M][']s genitals, which slowly meld with the inscrutable script that covers the rest of its pages. The book seems a lot stronger!";
			now M is notebook-studied;
	otherwise:[kill]
		if M is notebook-studied:
			if a random number between -2 and 4 > C:
				say "The [printed name of notebook] shivers, and you feel a rush of information moving up your body, straight toward your brain. You feel [smarter]!";
				IntUp 1;
			otherwise:
				repeat with X running through monsters in the location of the player:
					unless M is dying:
						now the scared of X is the difficulty of M;
						FavourDown X;
				say "The [printed name of notebook] shivers, emitting a blast of red light that covers everything in the room. [if the number of monsters in the location of the player < 2]It doesn't seem to do anything[otherwise]The [printed name of a random monster in the location of the player] seems affected by it[end if].";
		otherwise:
			say "The [printed name of notebook] falls open, filling a few with detailed sketches of [NameDesc of M], which slowly meld with the indecipherable script that covers the rest of its pages. The book seems a bit stronger!";
			now M is notebook-studied.

Definition: notebook is ingredient: decide no.
Definition: notebook is product: decide yes.
Definition: notebook is recipe specific: decide yes.

To decide which number is the alchemy key of (C - notebook):
	decide on 22.

To decide which number is the crafting key of (C - notebook):
	decide on 0.

To decide which text is the RecipeDesc of (C - notebook):
	decide on "The recipe just says 'Place a pocketbook in the bowl'.".

This is the notebook specific recipe rule:
	if notebook is fetish appropriate:
		now the Product in row 37 of the Table of Alchemy is 22;
		now the Recipe in row 37 of the Table of Alchemy is 1.
The notebook specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - notebook):
	now T is bland;
	if the noun is pocket necronomicon, now T is blessed;
	if the noun is not pocketbook, now T is cursed.

Pocketbooks ends here.
