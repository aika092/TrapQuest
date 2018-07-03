Teachers Sapphire by Monster begins here.

A sapphire-teacher is a kind of teacher. 

The printed name of sapphire-teacher is "[if item described is in the location of the player][TQlink of item described][end if][input-style]sapphire teacher [teacher-name of item described][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".


Part - Serenity

teacher-serenity is a sapphire-teacher.

The text-shortcut of teacher-serenity is "tese".

Figure of serenity is the file "NPCs/School/Teacher/teacher1.png".

To decide which figure-name is the monster-image of (M - teacher-serenity):
	decide on figure of serenity.

To say MonsterDesc of (M - teacher-serenity):
	say "This tall stick figure of a woman has red hair and a serious face. Her tight pink latex dress [if diaper quest is 1]makes her look very adult and in-charge[otherwise]is ever so slightly translucent, allowing you to just about make out her nipples[end if]. Her general demeanour is one of purpose and impatience.".

The teacher-name of teacher-serenity is "Serenity".

heel-lesson is a lesson. The lesson-teacher of heel-lesson is teacher-serenity.

To compute teaching of (L - heel-lesson):[TODO - deal with edge case where there aren't enough students left to run a full class]
	let M be the lesson-teacher of L;
	let H be a random worn heels;
	if H is nothing:
		now H is a random off-stage court heels;
		if H is nothing, now H is a random court heels;
		now the heel-height of H is 4;
		now H is bland;
		now H is blandness;
		now the raw-magic-modifier of H is 0;
	let X be the hindrance of H;
	say "[speech style of M]'Today's lesson will be on wearing high heels. Is everyone wearing their own pair of high heels?'[roman type][line break][M] speaks quickly and efficiently as if [he of M] is under a strict time limit. A couple of students [if the number of worn heels is 0]including yourself [end if]are not wearing heels and so [he of M] provides spare pairs - 4 inch hot pink court heels - where necessary.[line break][speech style of M]'Okay now follow my lead: put your hands out to the side like a delicate lady and step, then step, then step, always putting one foot directly in front of the other.'[roman type][line break]You join the other students in doing your best to mimic [his of M] perfect walk.";
	repeat with ST running through students in the location of the player:
		let R be (a random number between 0 and 2) - the heel-skill of ST;
		say "[BigNameDesc of ST] [if R < -1]manages to walk perfectly, [one of]and even adds in a cheeky skip!  [or]adding a cheeky curtsey at the end. [purely at random][otherwise if R <= 0][one of]struts around almost as well as miss [teacher-name of M][or]seems to have no problems learning and perfecting the walk[purely at random]. [otherwise if R <= 2]wobbles [one of]as [he of ST] tries to practice the steps[or]once or twice[or]badly and has to frantically wave [his of ST] arms to steady [himself of ST][in random order]. [otherwise if R <= 3][one of]slips and falls onto [his of ST] bum!  Ouch[or]suddenly stumbles and has to grab a desk to avoid falling over[in random order]!  [otherwise]can hardly move!  [big he of ST] tries to take a single step forward and immediately slips up, clattering to the ground!  [end if]";
	say "[if X <= 0 and the heel skill of the player > 5]You show up the entire room by not only perfectly strutting around but also adding in some 360 degree twirls and ballet-like prances into the air. The other faces in the room are a mix of awe, envy and fury. [otherwise if X <= 0]You manage to do very well yourself. You make it around the room with an almost faultless performance, placing one foot precisely in front of the other each time, with no noticeable wobbles. You feel proud!  [otherwise if X is 1]You manage to do pretty well yourself. You make it around the room with only one or two minor wobbles. [otherwise if X is 2]You make it around the room successfully but not without several definitely noticeable wobbles as you do. During your worst wobble you could swear you hear one of the other students snicker from behind you. [otherwise if X is 3]It's a very wobbly journey but it does seem like you might make it all the way around the room without falling over. But then tragedy strikes!  It's like a rug is pulled out from underneath you as you suddenly go toppling to the ground and land on your [buttcheeks] with a thud. An array of chuckles from several of the other students greets your ears. [otherwise if X is 4]You only make it forward a few steps before you trip over yourself and clatter to the ground, landing on your [buttcheeks] with a thud. Nearly all the other students giggle as they witness your pathetic attempt.[otherwise]You try to put one foot exactly in front of the other just like miss [teacher-name of M] but as soon as you do you instantly lose your balance and end up on your [buttcheeks]!  The whole class points and laughs at your abject failure. [end if]";
	say "[M] calls for quiet. [line break][speech style of M]'Okay, that's enough practice for today. Now we will have a little competition between two of you, to see who's surest on their heels, and then the loser will get a little... forfeit. So, I need two daring volunteers from among you all. Who's up for it?'[roman type][line break]";
	let ST be a random student in the location of the player;
	say "[ST] stands up quickly.[line break][speech style of ST]'I'll do it!'[roman type][line break]It looks like you could choose to be the second challenger, if you wish. Do you want to volunteer?  [yesnolink]";
	if the player consents:
		let R be (a random number between 1 and 4) - the heel-skill of ST;
		say "You stand up and raise your hand [if the delicateness of the player > 11]nervously[otherwise if the delicateness of the player < 5]confidently[end if]. You feel several stares boring into the back of your head, but you keep your own gaze fixed firmly on the teacher. [big he of M] nods and smiles. [line break][speech style of M]'[one of]Fine, let's see what you've got[or]Let's hope you do better this time[stopping].'[roman type][line break]You are both taken to one end of the front of the room and then spun round several times until you are quite dizzy. You can hardly see straight, never mind walk!  And yet you are quickly given a command to go!  The girl who makes it the furthest across the room wins. You see that [NameDesc of ST] has already taken her first awkward step and so you quickly try to do the same. You feel so off-balance!  And yet you must win. You take another step. [if X > 1 and X > R]THUMP. That's it, you're already flat on your butt!  It's over!  You hear a few sniggers from other students. [line break][variable custom style]Why did I think this was a good idea?![otherwise if X > R]Step. Wobble. Step. Wobble. [BigNameDesc of ST] is increasing her lead!  You try to go faster and stagger even more, almost toppling over completely. In the end you are forced to watch as you are beaten by a good couple of feet to the other end of the room. [variable custom style]Darn![otherwise]Step. Wobble. Step. Wobble. [BigNameDesc of ST] is getting further ahead of you!  You focus as hard as you can and speed up. You catch her up!  Stumbling the last few feet, you half lean and half collapse onto the end wall moments before [BigNameDesc of ST]. [variable custom style]I've won![end if][roman type][line break]";
		if X > R:
			say "As [NameDesc of ST] whoops and celebrates, one of [NameDesc of M][']s heeled feet lightly presses down on your back, letting you know you're not allowed to stand back up. You keep your head bowed in shame and it's only a few moments before something hard smacks into your butt with a loud THWACK!";
			DelicateUp 1;
			say "THWACK![line break]THWACK![line break][speech style of M]'This is how we treat losers in this class!  We'll beat overconfidence out of you one series of paddling at a time!'[roman type][line break]THWACK![line break]THWACK![line break][M] removes [his of M] heel from your back and you think you hear a little sadistic chuckle escape [his of M] lips as [he of M] turns around, having finished with you.";
			DelicateUp 1;
			say "Your [if the delicateness of the player < 9]heavy breathing[otherwise]sobbing[end if] is the only audible sound as the others silently filter out of the room.";
			promote ST;
		otherwise:
			now armband is emerald;
			say "[speech style of M]'Congratulations, [NameBimbo], I think you've learned enough from me. I think it's time for you to move on... and to get a new name.'[roman type][line break][M] touches your armband and the ID card inside transforms!";
			now the armband-title of armband is "Precious";
			now the armband-print of armband is "prancing [if diaper quest is 1]princess[otherwise]paramour[end if]";
			say ClothingDesc of armband;
			say "You are so distracted with examining your new armband that you almost don't even notice that [ST] is being kept in a kneeling position, and the teacher is spanking [him of ST] with a large wooden paddle. By the time you're properly paying attention the show is over leaving the poor girl's sobbing as the only audible sound as the others silently file out of the room.";
			update students; [an important line which makes boring old students disappear and new cool ones appear]
			demote ST; [pointless as it's a sapphire course so people can't be demoted but as a reminder to other lessons, this is what should be here]
	otherwise if the number of students in the location of the player > 1:
		let ST2 be a random student in the location of the player;
		while ST is ST2:
			now ST2 is a random student in the location of the player;
		say "[speech style of ST2]'I'll try my best.'[roman type][line break][BigNameDesc of ST2] has risen to the challenge. You sit and watch as they are spun around until they are dizzy and then prance forward on their heels until eventually [if the heel-skill of ST2 > the heel-skill of ST][NameDesc of ST][otherwise][NameDesc of ST2][end if] falls. She is then held down with her butt high in the air as [NameDesc of M] delivers five harsh blows with a large wooden paddle. After her cries of pain and defeat have died down, class is dismissed and people begin to file out.";
		if the heel-skill of ST2 > the heel-skill of ST:
			promote ST2;
		otherwise:
			promote ST;
	otherwise:
		say "[speech style of M]'Well I guess without two volunteers there will be no test today. Class dismissed.'[roman type][line break]";
	now seconds is 65.



Part - Angela

teacher-angela is a sapphire-teacher.

The text-shortcut of teacher-angela is "tean".

Figure of angela is the file "NPCs/School/Teacher/teacher2.png".

To decide which figure-name is the monster-image of (M - teacher-angela):
	decide on figure of angela.

To say MonsterDesc of (M - teacher-angela):
	say "Clad in her tight red latex dress, this woman looks very elegant and proud. Her face is heavily but immaculately made up with deep red lips and very striking eyes. Her medium length brown hair sits stiffly on her shoulders and her hands tend to remain held confrontationally on her hips, encased in black rubber gloves.".

The teacher-name of teacher-angela is "Angela".

make-up-lesson is a lesson. The lesson-teacher of make-up-lesson is teacher-angela.

To compute teaching of (L - make-up-lesson):
	let M be the lesson-teacher of L;
	let P be a random promotable student in the location of the player;
	if the make-up of face is 2 or permanent makeup is 1 or P is nothing or the number of students in the location of the player is 1, now P is the player;
	say "[speech style of M]'It iz time for ze regularly scheduled make up lezzon.'[roman type][line break][M] paces up and down at the front as she addresses you all.[line break][speech style of M]'Az per uzual, ze student who haz come to clazz viz ze most beautiful vizage vill increaze her rank. You.'[roman type][line break]She turns to face the class and points her finger directly at [if P is the player]you[otherwise][P][end if].[line break][speech style of M]'Go.'[roman type][line break]";
	if P is the player:
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Belle";
		now the armband-print of armband is "bold beauty";
		say ClothingDesc of armband;
		say "In a bit of a surprised daze, you walk out of the room.";
		try going south;
		say "[variable custom style]Huh, that was easy.[roman type][line break]";
		now seconds is 12;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise:
		promote P;
		say "You watch as [his of P] sapphire ID card turns into an emerald one, and [he of P] is now '[student-name of P] the [student-print of P]'. [big he of P] grins widely and then prances out of the room.";
		compute room leaving of P;
		let ST be a random student in the location of the player;
		say "[speech style of M]'I vill allocate you into pairz and you vill practize ze art of make up on each ozzer.'[roman type][line break]You are each given a partner and assigned a table. A few moments later you are standing across a table from [ST], with two large make up kits on the table in front of you. With another magic flourish of the teacher's hands, suddenly you are all make up free. You are to go first, and you do your best to apply a delicate and dignified layer of foundation, blush and make up on [student-name of ST][']s face. You do a pretty good job, at least you think so!";
		now permanent makeup is 0;
		compute make-up-lesson-application of ST;
		say "[M] comes over to assess your handiwork. She looks at [ST][']s face first.[line break][speech style of M]'Not bad, not bad. A little boring but zis iz better zan going overboard.'[roman type][line break]Next she looks at your face.[line break][speech style of M]'[if the make-up of face >= 3]Bah! This lookz like little child tried to create it. You have much to learn about eleganze, young mizz!'[otherwise if the make-up of face is 2]Zis is exzellent! Marvey-yeuh!  Bravo. If you can do zis to yourzelf for ze next time ve meet, I zink ve vill have anozzer graduate, yez?'[otherwise]Bah, zis is similarly boring. I zee zat you are both lacking in ze confidenze to graduate zis clazz any time zoon.'[end if][roman type][line break]She turns to face the whole class and claps her hands loudly.[line break][speech style of M]'Enough!  Clazz dizmizzed!'[roman type][line break]";
		now seconds is 40.

To compute make-up-lesson-application of (M - a student):
	say "When it's [his of M] job to return the favour, [he of M] tries to copy you pretty much stroke for stroke, leaving you with a similar faint and mild paintjob.";
	now the make-up of face is 1.

To compute make-up-lesson-application of (M - a nasty student):
	say "When it's [his of M] job to return the favour, [he of M] grins vindictively and applies various brushes in wild and messy ways until you look completely ridiculous. [big he of M] snickers, just to make sure you know it was on purpose.";
	now the make-up of face is 3.

To compute make-up-lesson-application of (M - a tryhard student):
	say "When it's [his of M] job to return the favour, [he of M] frowns and focuses before getting to work with a variety of brushes, with evident accuracy and skill. Finally [he of M] finishes your new heavy and vibrant look with a nod and harrumph of satisfaction.";
	now the make-up of face is 2.

To compute make-up-lesson-application of (M - an innocent student):
	say "When it's [his of M] job to return the favour, [he of M] looks very uncertain. [big he of M] ends up hardly applying anything at all, probably too nervous that [he of M] would accidentally make you look ridiculous!";
	now the make-up of face is 0.

To say WhoAnswer of (M - a teacher-angela):
	say "[speech style of M]'I should clearly be teaching you not to azk ztupid queztionz!'[roman type][line break]".

To say WhereAnswer of (M - a teacher-angela):
	say "[speech style of M]'[if the rank of the player is 1]Geez, you're pretty far gone, aren't you.'[otherwise]Rankz are earned, and not without effort. It iz important you realise zat.'[end if][roman type][line break]".

To say EscapeAnswer of (M - a teacher-angela):
	say "[speech style of M]'Vouldn't you like to know?'[roman type][line break]".

To say StoryAnswer of (M - a teacher-angela):
	say "[speech style of M]'Thiz inztitution haz been around longer than any of its memberz, zat iz for zure. Itz originz are ztill zurrounded in myztery.'[roman type][line break]".

To say AdviceAnswer of (M - a teacher-angela):
	say "[speech style of M]'Do not take off your armband.'[roman type][line break]".

To compute teaching of (M - a teacher-angela):
	say "[speech style of M]'Is zat zupposed to be zome kind of joke?'[roman type][line break]".


Part - Bianca

teacher-bianca is a sapphire-teacher.

The text-shortcut of teacher-bianca is "tebi".

Figure of bianca is the file "NPCs/School/Teacher/teacher3.png".

To decide which figure-name is the monster-image of (M - teacher-bianca):
	decide on figure of bianca.

To say MonsterDesc of (M - teacher-bianca):
	say "This tall curvy lady has long red and black hair. Her tight latex dress has a red-on-black polka dot pattern. A curved section at the bottom of the front of the skirt is missing, the resulting gap rising high enough to fully expose her black panties. She seems completely comfortable with her appearance.".

The teacher-name of teacher-bianca is "Bianca".

To say WhoAnswer of (M - teacher-bianca):
	say "[speech style of M]'Fashion!'[roman type][line break]".

To say WhereAnswer of (M - teacher-bianca):
	say "[speech style of M]'[if the rank of the player is 1]A safe place where you can learn to be a better you.'[otherwise]You just need to be brave!'[end if][roman type][line break]".

To say AdviceAnswer of (M - teacher-bianca):
	say "[speech style of M]'There should never be a reason you need to bend your knees.'[roman type][line break]".

dress-lesson is a lesson. The lesson-teacher of dress-lesson is teacher-bianca.

Definition: dress-lesson (called L) is appropriate:
	if the number of worn skirted clothing is not 1 and (there is a worn dress or there is worn trousers), decide no;
	if the player is not able to use their hands, decide no;
	if there is worn knee-length or longer clothing and hypno-curtsey-trigger is 1, decide no;
	if the lesson-teacher of L is alive, decide yes;
	decide no.

To compute teaching of (L - dress-lesson):
	let M be the lesson-teacher of L;
	say "[speech style of M]'Today's lesson is on the proper purpose of skirts.'[roman type][line break][NameDesc of M] stands at the front of the room and motions at [his of M] own dress with [his of M] hands as [he of M] speaks.";
	let C be a random worn skirted clothing;
	if C is super-short clothing and the number of worn trousers is 0:
		say "[speech style of M]'You.'[roman type][line break][NameDesc of M] points a finger directly at you. You can't help but gulp.[line break][speech style of M]'That skirt is just so incredibly daring! Bravo! There's nothing more that I can teach you here.'[roman type][line break]";
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "upskirt expert";
		say ClothingDesc of armband;
		say "You can't help but grin widely as you walk out of the room!";
		try going south;
		say "[variable custom style][if C is cursed and the humiliation of the player < HUMILIATION-DISGRACED]I guess it was good for me that she doesn't know I'm only wearing this thing because it's cursed...[otherwise]This is easy![end if][roman type][line break]";
		now seconds is 12;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise if C is knee-length or longer clothing:
		say "[speech style of M]'You.'[roman type][line break][NameDesc of M] points a finger directly at you. You can't help but gulp.[line break][speech style of M]'That skirt is much too long! You can't use it for flashing your underwear properly at all! No, you'll have to keep using your hands to expose yourself. But we can't just trust you to do that now, can we? No, I think we need some kind of guarantee. Come up to the front now, [NameBimbo].'[roman type][line break]You sheepishly obey. As soon as you reach her, she holds your head still between both her hands and stares directly into your eyes.[line break][speech style of M]'Do you know what a curtsey is, little one? Yes you do. Well I think you will feel a lot more like curtseying politely to people in the future, won't you?'[roman type][line break]Her fierce gaze penetrates deep down into your soul and leaves you feeling very weak all over. Your mind feels foggy and you feel something like a switch click in your brain.[line break][speech style of M]'Yes, I think you will.'[roman type][line break][M] lets go of you and the fog begins to clear. You realise that [NameDesc of M] looks very tired and is breathing rather heavily.[line break][speech style of M]'I'm afraid that's going to have to be the end of the class for today. Dismissed.'[roman type][line break][big he of M] makes for the door, as gracefully as she can.";
		now hypno-curtsey-trigger is 1;
	otherwise:
		if C is not clothing:
			let D be a random off-stage short clubbing dress;
			if D is not clothing, now D is a random short clubbing dress;
			say "[speech style of M]'Those of you without the necessary attire will wear what you are given.'[roman type][line break][NameDesc of M] hands you a [ShortDesc of D] and forces you to put it on.";
			summon D cursed;
			now the raw-magic-modifier of D is 0;
			now D is blandness;
			now C is D;
		say "[speech style of M]'Let's begin. A skirt is a tool that we can use not only to keep our [if diaper quest is 1]underwear[otherwise]privates[end if] easily accessible at all times, but also it allows us to make them visible to onlookers at a moment's notice, should we so choose. Now, firstly everyone please stand up straight.'[roman type][line break]You all do so obediently.[line break][speech style of M]'Right now, your private area is hidden under your skirt. But what happens if you do this?'[roman type][line break][BigNameDesc of M] bends over at the waist, keeping her legs perfectly straight.[line break][speech style of M]'Come on everyone, give it a go!'[roman type][line break]As everyone mimics the teacher's actions, flashes of panties and bare bottoms become visible all over the room.[line break][speech style of M]'So you see, just by keeping your knees unbent and bending over, we can send signals to whomever we like. Now, who wants to be today's volunteer? If you do well, you might even get promoted.'[roman type][line break]Do you want to volunteer? [yesnolink]";
		if the player consents:
			say "You raise your hand and then at [NameDesc of M][']s signal, you walk to the front of the class. [big he of M] then brushes [his of M] hand over [his of M] desk, making several various pieces of chalk fall to the floor around you.[line break][speech style of M]'Oh no [NameBimbo], how clumsy of you! Pick all those up at once!'[roman type][line break]You understand what is required of you - you are supposed to make sure you always bend at the waist and not at the knees. ";
			if short skirts permanent fetish is 0 and (the player is proud or (the player is not disgraced and the number of worn dense total protection knickers is 0)):
				say "You try your best, but as your back goes down and your butt becomes exposed to the class, you lose your nerve. This is too weird and embarrassing, to have all this attention on you as your [if the number of worn dense total protection knickers is 0]private parts become[otherwise]underwear becomes[end if] exposed! You can't bring yourself to go through with it, and end up bending your knees and quickly picking up the chalk the 'normal' way. Your cheeks flush red in shame, but you're not even sure if you feel most ashamed about the fact that you didn't manage to complete the task, or the fact that you almost did.[line break][speech style of M]'Very disappointing. Why volunteer when you're CLEARLY not ready to go through with this yet?! You need to loosen up, girl.'[roman type][line break][big he of M] shoves a hand up your skirt and grips a butt cheek, beginning to knead it like dough. You yelp in surprise [if the player is feeling dominant]and then grind your teeth with anger[otherwise]but don't dare move away from her[end if]. You feel a bizarre, almost magical warmth emitting from her hands, and then a weird shiver overcomes your entire body. After it's finished, you blink a couple of times and look down at your skirt, realising that you do indeed now feel strangely at home in your [ShortDesc of C]. The idea of wearing a normal skirt suddenly feels just... wrong. You look at [NameDesc of M] quizzically, and she just smirks back.[line break][speech style of M]Yes, I think that will do for now. Class dismissed!'[roman type][line break]";
				increase short skirts permanent fetish by 1;
			otherwise:
				say "You try your best, bending at the waist and exposing your butt to the class. You can feel the attention of every single person in the room on your exposed [if the number of worn dense total protection knickers is 0][player-crotch][otherwise][ShortDesc of random worn knickers][end if], [if the player is shameless]which makes you shiver with excitement[otherwise]and can't help but feel a little shiver of excitement alongside the shame[end if]. You reach the ground and begin to pick up a piece of chalk. Deciding to show off your skills, you reach far to the left and right to try and pick up all the chalk in a single flourish. ";
				humiliate MODERATE-HUMILIATION;
				if a random number between 3 and 12 > the dexterity of the player:
					say "You think you're going to manage it, but suddenly you feel unsteady and begin to topple. You try to react to this in time by putting some of your weight on your hands, but with your locked knees this goes badly and just sends you further off balance. You stumble and then fall to the ground, landing on your face with your butt high in the air, still exposed to all your classmates behind you. They all burst out laughing and you turn redder than ever!";
					try kneeling;
					DelicateUp 1;
					say "[speech style of M]'Yes yes, very funny. At least she tried her best!'[roman type][line break][M] pats you on the top of your head.[line break][speech style of M]'Still, this just goes to show all of you how much can go wrong if you haven't practised enough! You want to look refined and [if diaper quest is 1]grown up[otherwise]sexy[end if], not idiotic and clumsy! Anyway I think the pain and humiliation that [NameBimbo] is feeling after that fall is enough of a punishment, don't you? Class dismissed.'[roman type][line break]You groan inwardly as you pull yourself up onto all fours. That did not go as planned...";
				otherwise:
					say "With an impressive display of balance you gather it all in your hands and then raise yourself back upright. You place the chalk into [NameDesc of M][']s hand with a proud smile.[line break][speech style of M]'Very good indeed. Most impressive. I don't think we could ask for anything better than that from a [accessory-colour of armband] student.'[roman type][line break]";
					now armband is emerald;
					say "You watch as the ID card inside your armband transforms!";
					now the armband-title of armband is "Felicity";
					now the armband-print of armband is "flexible fox";
					say ClothingDesc of armband;
					update students; [an important line which makes boring old students disappear and new cool ones appear]
					say "You find yourself beaming proudly as your mind somehow rewires itself to adopt your new name. [NameDesc of M] rolls her eyes.[line break][speech style of M]'Class dismissed!'[roman type][line break]".
		



Teachers Sapphire ends here.

