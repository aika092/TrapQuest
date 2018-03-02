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

The teacher-name of teacher-serenity is "serenity".

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
		say "[ST] [if R < -1]manages to walk perfectly, [one of]and even adds in a cheeky skip!  [or]adding a cheeky curtsey at the end. [purely at random][otherwise if R <= 0][one of]struts around almost as well as miss [teacher-name of M][or]seems to have no problems learning and perfecting the walk[purely at random]. [otherwise if R <= 2]wobbles [one of]as [he of ST] tries to practice the steps[or]once or twice[or]badly and has to frantically wave [his of ST] arms to steady [himself of ST][in random order]. [otherwise if R <= 3][one of]slips and falls onto [his of ST] bum!  Ouch[or]suddenly stumbles and has to grab a desk to avoid falling over[in random order]!  [otherwise]can hardly move!  [big he of ST] tries to take a single step forward and immediately slips up, clattering to the ground!  [end if]";
	say "[if X <= 0 and the heel skill of the player > 5]You show up the entire room by not only perfectly strutting around but also adding in some 360 degree twirls and ballet-like prances into the air. The other faces in the room are a mix of awe, envy and fury. [otherwise if X <= 0]You manage to do very well yourself. You make it around the room with an almost faultless performance, placing one foot precisely in front of the other each time, with no noticeable wobbles. You feel proud!  [otherwise if X is 1]You manage to do pretty well yourself. You make it around the room with only one or two minor wobbles. [otherwise if X is 2]You make it around the room successfully but not without several definitely noticeable wobbles as you do. During your worst wobble you could swear you hear one of the other students snicker from behind you. [otherwise if X is 3]It's a very wobbly journey but it does seem like you might make it all the way around the room without falling over. But then tragedy strikes!  It's like a rug is pulled out from underneath you as you suddenly go toppling to the ground and land on your [buttcheeks] with a thud. An array of chuckles from several of the other students greets your ears. [otherwise if X is 4]You only make it forward a few steps before you trip over yourself and clatter to the ground, landing on your [buttcheeks] with a thud. Nearly all the other students giggle as they witness your pathetic attempt.[otherwise]You try to put one foot exactly in front of the other just like miss [teacher-name of M] but as soon as you do you instantly lose your balance and end up on your [buttcheeks]!  The whole class points and laughs at your abject failure. [end if]";
	say "[M] calls for quiet. [line break][speech style of M]'Okay, that's enough practice for today. Now we will have a little competition between two of you, to see who's surest on their heels, and then the loser will get a little... forfeit. So, I need two daring volunteers from among you all. Who's up for it?'[roman type][line break]";
	let ST be a random student in the location of the player;
	say "[ST] stands up quickly.[line break][speech style of ST]'I'll do it!'[roman type][line break]It looks like you could choose to be the second challenger, if you wish. Do you want to volunteer?  [yesnolink]";
	if the player consents:
		let R be (a random number between 1 and 4) - the heel-skill of ST;
		say "You stand up and raise your hand [if the delicateness of the player > 11]nervously[otherwise if the delicateness of the player < 5]confidently[end if]. You feel several stares boring into the back of your head, but you keep your own gaze fixed firmly on the teacher. [big he of M] nods and smiles. [line break][speech style of M]'[one of]Fine, let's see what you've got[or]Let's hope you do better this time[stopping].'[roman type][line break]You are both taken to one end of the front of the room and then spun round several times until you are quite dizzy. You can hardly see straight, never mind walk!  And yet you are quickly given a command to go!  The girl who makes it the furthest across the room wins. You see that [ST] has already taken her first awkward step and so you quickly try to do the same. You feel so off-balance!  And yet you must win. You take another step. [if X > 1 and X > R]THUMP. That's it, you're already flat on your butt!  It's over!  You hear a few sniggers from other students. [line break][variable custom style]Why did I think this was a good idea?![otherwise if X > R]Step. Wobble. Step. Wobble. [ST] is increasing her lead!  You try to go faster and stagger even more, almost toppling over completely. In the end you are forced to watch as you are beaten by a good couple of feet to the other end of the room. [variable custom style]Darn![otherwise]Step. Wobble. Step. Wobble. [ST] is getting further ahead of you!  You focus as hard as you can and speed up. You catch her up!  Stumbling the last few feet, you half lean and half collapse onto the end wall moments before [ST]. [variable custom style]I've won![end if][roman type][line break]";
		if X > R:
			say "As [ST] whoops and celebrates, one of [M]'s heeled feet lightly presses down on your back, letting you know you're not allowed to stand back up. You keep your head bowed in shame and it's only a few moments before something hard smacks into your butt with a loud THWACK!";
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
			demote ST; [pointless as it's a sapphire course so people can't be demoted but as a reminder to other lessons, this is what should be here]
	otherwise:
		let ST2 be a random student in the location of the player;
		while ST is ST2:
			now ST2 is a random student in the location of the player;
		say "[speech style of ST2]'I'll try my best.'[roman type][line break][ST2] has risen to the challenge. You sit and watch as they are spun around until they are dizzy and then prance forward on their heels until eventually [if the heel-skill of ST2 > the heel-skill of ST][ST][otherwise][ST2][end if] falls. She is then held down with her butt high in the air as [M] delivers five harsh blows with a large wooden paddle. After her cries of pain and defeat have died down, class is dismissed and people begin to file out.";
		if the heel-skill of ST2 > the heel-skill of ST:
			promote ST2;
		otherwise:
			promote ST;
	now seconds is 65.



Part - Angela

teacher-angela is a sapphire-teacher.

The text-shortcut of teacher-angela is "tean".

Figure of angela is the file "NPCs/School/Teacher/teacher2.png".

To decide which figure-name is the monster-image of (M - teacher-angela):
	decide on figure of angela.

To say MonsterDesc of (M - teacher-angela):
	say "Clad in her tight red latex dress, this woman looks very elegant and proud. Her face is heavily but immaculately made up with deep red lips and very striking eyes. Her medium length brown hair sits stiffly on her shoulders and her hands tend to remain held confrontationally on her hips, encased in black rubber gloves.".

The teacher-name of teacher-angela is "angela".

make-up-lesson is a lesson. The lesson-teacher of make-up-lesson is teacher-angela.

To compute teaching of (L - make-up-lesson):
	let M be the lesson-teacher of L;
	let P be a random promotable student in the location of the player;
	if the make-up of face is 2 or P is nothing or the number of students in the location of the player is 1, now P is the player;
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
	otherwise:
		promote P;
		say "You watch as [his of P] sapphire ID card turns into an emerald one, and [he of P] is now '[student-name of P] the [student-print of P]'. [big he of P] grins widely and then prances out of the room.";
		compute room leaving of P;
		let ST be a random student in the location of the player;
		say "[speech style of M]'I vill allocate you into pairz and you vill practize ze art of make up on each ozzer.'[roman type][line break]You are each given a partner and assigned a table. A few moments later you are standing across a table from [ST], with two large make up kits on the table in front of you. With another magic flourish of the teacher's hands, suddenly you are all make up free. You are to go first, and you do your best to apply a delicate and dignified layer of foundation, blush and make up on [student-name of ST][']s face. You do a pretty good job, at least you think so!";
		now permanent makeup is 0;
		compute make-up-lesson-application of ST;
		say "[M] comes over to assess your handiwork. She looks at [ST][']s face first.[line break][speech style of M]'Not bad, not bad. A little boring but zis iz better zan going overboard.'[roman type][line break]Next she looks at your face.[line break][speech style of M]'[if the make-up of face >= 3]Bah!  This lookz like little child tried to create it. You have much to learn about eleganze, young mizz!'[otherwise if the make-up of face is 2]Zis is exzellent! Marvey-yeuh!  Bravo. If you can do zis to yourzelf for ze next time ve meet, I zink ve vill have anozzer graduate, yez?'[otherwise]Bah, zis is similarly boring. I zee zat you are both lacking in ze confidenze to graduate zis clazz any time zoon.'[end if][roman type][line break]She turns to face the whole class and claps her hands loudly.[line break][speech style of M]'Enough!  Clazz dizmizzed!'[roman type][line break]";
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



Teachers Sapphire ends here.

