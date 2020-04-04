Teachers Sapphire by Monster begins here.

To say MediumDesc of (M - a sapphire-teacher):
	say "sapphire teacher [teacher-name of M]".

Part - Serenity

teacher-serenity is a sapphire-teacher.

The text-shortcut of teacher-serenity is "tese".

Figure of serenity is the file "NPCs/School/Teacher/teacher1.png".
Figure of enslaved diapered serenity is the file "NPCs/School/Teacher/teacher1c.png".

To decide which figure-name is the monster-image of (M - teacher-serenity):
	decide on figure of serenity.

To decide which figure-name is the pacified-image of (M - teacher-serenity):
	if M is sex-enslaved, decide on figure of enslaved serenity;
	decide on figure of enslaved diapered serenity.

To say MonsterDesc of (M - teacher-serenity):
	if M is sex-enslaved:
		say "[BigNameDesc of M] has had the fabric of [his of M] dress removed, leaving [him of M] with little more than a belt, and [his of M] top pulled down beneath [his of M] breasts. [big his of M] exposed nipples are tortured by connected nipple clamps, which [he of M] can't remove because [his of M] wrists are bound behind [his of M] back. [big his of M] [if lady fetish is 2]caged [sissy-penis][otherwise]pussy[end if] is kept constantly stimulated by a vibrating wand, strapped to one thigh. A ballgag sits in [his of M] mouth and a nose hook makes sure [he of M] looks much uglier than before. [big his of M] chunky heels have been further elongated to make them more difficult to constantly stand on, and locked on with padlocks. A nose hook and ballgag completes the humiliating look.";
	otherwise if M is diaper-enslaved:
		say "[BigNameDesc of M][']s comfortable chunky heels have been replaced by an ingeniously evil combination of rollerskates and ankle spreader bar. [big he of M] has to constantly wave [his of M] arms to remain even vaguely balanced! An ironic fate considering [his of M] previous pride in [his of M] balance in heels. Meanwhile, [his of M] top and skirt have been replaced by a yellow babydoll leotard and a very thick diaper, and a pacifier on a string around [his of M] neck, completing the diaper-slave look.";
	otherwise:
		say "This tall tanned stick figure of a [man of M] has ginger hair and a serious face. [big his of M] tight yellow sleeveless top and flowing dress [if diaper quest is 1]and matching tall chunky heels make [his of M] look very adult and in-charge[otherwise]matches [his of M] tall chunky heels[end if]. [big his of M] general demeanour is one of purpose and impatience.".

The teacher-name of teacher-serenity is "Serenity".

To say EnslavedDominationFlav of (M - teacher-serenity):
	say "You grab hold of [NameDesc of M][']s nipple chain and yank it downwards, forcing [him of M] into a bent over position. ";
	if the size of penis > 0 and the number of worn cursed undisplacable clothing is 0:
		if penis is penis-erect or penis is erect-at-will:
			say "Holding your [if penis is penis-erect]erect[otherwise]rapidly hardening[end if] [ShortDesc of penis] in one hand, you guide it into [his of M] well-lubricated snatch, and thrust away until you bring yourself to a well-earned climax.";
			orgasm quietly;
			check virginity with M;
		otherwise:
			say "Holding your [player-penis] up against [his of M] well-lubricated snatch, you are dismayed to find that you can't seem to get hard right now. Slightly disheartened, you settle for teasing [him of M] by rubbing the tip up and down [his of M] slit until [he of M][']s practically begging to be railed, and then backing away while laughing mockingly.";
	otherwise:
		say "Pressing a button on [his of M] wand vibe sets it temporarily to maximum speed. You watch with a sly smile as [he of M] squeaks first with shock and then with trepidation and then finally with intense euphoria as a full-body orgasm sends [his of M] clattering to the ground in a pile of sweat and [boy of M]cum. The vibrator is still going at maximum power and won't return back down to its usual setting for a few minutes. [big he of M] just writhes around on the ground, unable to speak, move or think.";
		now the sleep of M is 120.

To decide which number is the EnslavedDominationThreshold of (M - teacher-serenity):
	decide on 7.

heel-lesson is a lesson. The lesson-teacher of heel-lesson is teacher-serenity.

To compute teaching of (L - heel-lesson):[TODO - deal with edge case where there aren't enough students left to run a full class]
	allocate 65 seconds;
	let M be the lesson-teacher of L;
	let H be a random worn heels;
	if H is nothing:
		now H is a random off-stage court heels;
		if H is nothing, now H is a random court heels;
		blandify H;
		now the heel-height of H is 4;
	let X be the hindrance of H;
	say "[speech style of M]'Today's lesson will be on wearing high heels. Is everyone wearing their own pair of high heels?'[roman type][line break][BigNameDesc of M] speaks quickly and efficiently as if [he of M] is under a strict time limit. A couple of students [if the number of worn heels is 0]including yourself [end if]are not wearing heels and so [he of M] provides spare pairs - 4 inch hot pink court heels - where necessary.[line break][speech style of M]'Okay now follow my lead: put your hands out to the side like a delicate lady and step, then step, then step, always putting one foot directly in front of the other.'[roman type][line break]You join the other students in doing your best to mimic [his of M] perfect walk.";
	refresh the clothing-focus-window;
	repeat with ST running through students in the location of the player:
		let R be (a random number between 1 and 3) - the heel-skill of ST;
		say "[BigNameDesc of ST] [if R < -1]manages to walk perfectly, [one of]and even adds in a cheeky skip! [or]adding a cheeky curtsey at the end. [purely at random][otherwise if R <= 0][one of]struts around almost as well as miss [teacher-name of M][or]seems to have no problems learning and perfecting the walk[purely at random]. [otherwise if R is 1]wobbles [one of]as [he of ST] tries to practice the steps[or]once or twice[or]only a little as [he of ST] tries [his of ST] best to copy [teacher-name of M][in random order]. [otherwise if R is 2][one of]wobbles dangerously and very nearly falls over[or]has to frantically wave [his of ST] arms to steady [himself of ST] as [he of ST] almost topples over[in random order]! [otherwise if R is 3][one of]slips and falls onto [his of ST] bum! Ouch[or]suddenly stumbles and has to grab a desk to avoid falling over[in random order]! [otherwise]can hardly move! [big he of ST] tries to take a single step forward and immediately slips up, clattering to the ground. [end if]";
	say "[if X <= 0 and the heel skill of the player > 5]You show up the entire room by not only perfectly strutting around but also adding in some 360 degree twirls and ballet-like prances into the air. The other faces in the room are a mix of awe, envy and fury. [otherwise if X <= 0]You manage to do very well yourself. You make it around the room with an almost faultless performance, placing one foot precisely in front of the other each time, with no noticeable wobbles. You feel proud! [otherwise if X is 1]You manage to do pretty well yourself. You make it around the room with only one or two minor wobbles. [otherwise if X is 2]You make it around the room successfully but not without several definitely noticeable wobbles as you do. During your worst wobble you could swear you hear one of the other students snicker from behind you. [otherwise if X is 3]It's a very wobbly journey but it does seem like you might make it all the way around the room without falling over. But then tragedy strikes! It's like a rug is pulled out from underneath you as you suddenly go toppling to the ground and land on your [buttcheeks] with a thud. An array of chuckles from several of the other students greets your ears. [otherwise if X is 4]You only make it forward a few steps before you trip over yourself and clatter to the ground, landing on your [buttcheeks] with a thud. Nearly all the other students giggle as they witness your pathetic attempt.[otherwise]You try to put one foot exactly in front of the other just like miss [teacher-name of M] but as soon as you do you instantly lose your balance and end up on your [buttcheeks]! The whole class points and laughs at your abject failure. [end if]";
	HeelUp 1;
	say "[BigNameDesc of M] calls for quiet. [line break][speech style of M]'Okay, that's enough practice for today. Now we will have a little competition between two of you, to see who's surest on their heels, and then the loser will get a little... forfeit. So, I need two daring volunteers from among you all. Who's up for it?'[roman type][line break]";
	let ST be a random student in the location of the player;
	say "[BigNameDesc of ST] stands up quickly.[line break][speech style of ST]'I'll do it!'[roman type][line break]It looks like you could choose to be the second challenger, if you wish. Do you want to volunteer? ";
	if the player is bimbo consenting:
		let R be (a random number between 1 and 5) - the heel-skill of ST;
		say "You stand up and raise your hand [if the delicateness of the player > 11]nervously[otherwise if the delicateness of the player < 5]confidently[end if]. You feel several stares boring into the back of your head, but you keep your own gaze fixed firmly on the teacher. [big he of M] nods and smiles. [line break][speech style of M]'[one of]Fine, let's see what you've got[or]Let's hope you do better this time[stopping].'[roman type][line break]You are both taken to one end of the front of the room and then spun round several times until you are quite dizzy. You can hardly see straight, never mind walk! And yet you are quickly given a command to go! The girl who makes it the furthest across the room wins. You see that [NameDesc of ST] has already taken [his of ST] first awkward step and so you quickly try to do the same. You feel so off-balance! And yet you must win. You take another step. [if X > 1 and X > R]THUMP. That's it, you're already flat on your butt! It's over! You hear a few sniggers from other students. [line break][variable custom style]Why did I think this was a good idea?![otherwise if X > R]Step. Wobble. Step. Wobble. [BigNameDesc of ST] is increasing [his of ST] lead! You try to go faster and stagger even more, almost toppling over completely. In the end you are forced to watch as you are beaten by a good couple of feet to the other end of the room. [variable custom style]Darn![otherwise]Step. Wobble. Step. Wobble. [BigNameDesc of ST] is getting further ahead of you! You focus as hard as you can and speed up. You catch [him of ST] up! Stumbling the last few feet, you half lean and half collapse onto the end wall moments before [BigNameDesc of ST]. [variable custom style]I've won![end if][roman type][line break]";
		if X > R:
			say "As [NameDesc of ST] whoops and celebrates, one of [NameDesc of M][']s heeled feet lightly presses down on your back, letting you know you're not allowed to stand back up. You keep your head bowed in shame and it's only a few moments before something hard smacks into your butt with a loud THWACK!";
			PainUp 1;
			say "THWACK![line break]THWACK![line break][speech style of M]'This is how we treat losers in this class! We'll beat overconfidence out of you one series of paddling at a time!'[roman type][line break]THWACK![line break]THWACK![line break][M] removes [his of M] heel from your back and you think you hear a little sadistic chuckle escape [his of M] lips as [he of M] turns around, having finished with you.";
			PainUp 1;
			say "Your [if the delicateness of the player < 9]heavy breathing[otherwise]sobbing[end if] is the only audible sound as the others silently filter out of the room.";
			BodyRuin 5;
			promote ST;
		otherwise:
			now armband is emerald;
			say "[speech style of M]'Congratulations, [NameBimbo], I think you've learned enough from me. I think it's time for you to move on[if schoolNames is 1]... and to get a new name[end if].'[roman type][line break][BigNameDesc of M] touches your armband and the ID card inside transforms!";
			now the armband-title of armband is "Precious";
			now the armband-print of armband is "prancing [if diaper quest is 1]princess[otherwise]paramour[end if]";
			say ClothingDesc of armband;
			say "You are so distracted with examining your new armband that you almost don't even notice that [NameDesc of ST] is being kept in a kneeling position, and the teacher is spanking [him of ST] with a large wooden paddle. By the time you're properly paying attention the show is over leaving the poor [boy of ST][']s sobbing the only audible sound as the others silently file out of the room.";
			HappinessDown ST by 5;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
			demote ST; [pointless as it's a sapphire course so people can't be demoted but as a reminder to other lessons, this is what should be here]
	otherwise if the number of students in the location of the player > 1:
		let ST2 be a random student in the location of the player;
		while ST is ST2:
			now ST2 is a random student in the location of the player;
		say "[speech style of ST2]'I'll try my best.'[roman type][line break][BigNameDesc of ST2] has risen to the challenge. You sit and watch as they are spun around until they are dizzy and then prance forward on their heels until eventually [if the heel-skill of ST2 > the heel-skill of ST][NameDesc of ST][otherwise][NameDesc of ST2][end if] falls. [if the heel-skill of ST2 > the heel-skill of ST][big he of ST][otherwise][big he of ST2][end if] is then held down with [if the heel-skill of ST2 > the heel-skill of ST][his of ST][otherwise][his of ST2][end if] butt high in the air as [NameDesc of M] delivers five harsh blows with a large wooden paddle. After [if the heel-skill of ST2 > the heel-skill of ST][his of ST][otherwise][his of ST2][end if] cries of pain and defeat have died down, class is dismissed and people begin to file out.";
		if the heel-skill of ST2 > the heel-skill of ST:
			promote ST2;
		otherwise:
			promote ST;
	otherwise:
		say "[speech style of M]'Well I guess without two volunteers there will be no test today. Class dismissed.'[roman type][line break]".

roulette-lesson is a lesson. The lesson-teacher of roulette-lesson is teacher-serenity.

Definition: roulette-lesson is lesson-appropriate if (alcohol fetish is 1 or lactation fetish is 1 or diaper quest is 1) and the player is able to drink.

To compute teaching of (L - roulette-lesson):
	allocate 65 seconds;
	let M be the lesson-teacher of L;
	let LD be {"water"}; [list of types of drink]
	if lactation fetish is 1 or diaper quest is 1, add "milk" to LD;
	if alcohol fetish is 1, add "alcohol" to LD;
	let LS be {0}; [list of shots]
	say "[speech style of M]'Today's lesson will be on courage, dedication and constitution.'[roman type][line break][BigNameDesc of M] gestures towards your desks. Each of you have an opaque canister about the size of a shot glass in front of you. ";
	say "At the desk at the front, there are [number of entries in LD] clear jugs of liquid, labelled 'water'[if the number of entries in LD is 3], 'breast milk' and 'vodka'[otherwise if lactation fetish is 1 or diaper quest is 1]and 'breast milk'[otherwise]and 'vodka'[end if] respectively.[line break][speech style of M]'One at a time, I want you to come up to the front and add a liquid of your choice to the canister.'[roman type][line break]";
	let LST be the list of students in the location of the player;
	sort LST in random order;
	add yourself to LST;
	repeat with ST running through LST:
		say "[BigNameDesc of M] calls [YouDesc of ST] to the front. ";
		if ST is student:
			let V be the vindictiveness of ST;
			let LSA be 1;
			if V > a random number between 1 and 2:
				now LSA is the number of entries in LD;
			otherwise if V > 0:
				now LSA is 2;
			if LSA is 1:
				say "[BigNameDesc of ST] adds water to [his of ST] canister.";
			otherwise:
				let T be entry LSA of LD;
				if T matches the text "milk", say "[BigNameDesc of ST] adds breast milk to [his of ST] canister.";
				otherwise say "[BigNameDesc of ST] adds alcohol to [his of ST] canister.";
			add LSA to LS;
		otherwise:
			say "What do you add to your canister?";
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			repeat with D running through LD:
				set next numerical response to D;
			compute multiple choice question;
			add player-numerical-response to LS;
			say "You fill your canister with [entry player-numerical-response of LD].";
			if player-numerical-response is 1:
				repeat with STN running from 1 to (the number of entries in LST - 1):
					if entry (STN + 1) of LS is not 1:
						let STU be entry STN of LST;
						FavourDown STU; [If you put water in, all the students that didn't put water in are unimpressed.]
	say "[BigNameDesc of M] gathers up all the canisters, before producing one more.[line break][speech style of M]'Okay, now I want everyone to spit in this one!'[roman type][line break][big he of M] demonstrates by letting a big glob of saliva run from [his of M] tongue into the canister. Several students grimace or make disgusted sounds, but nobody refuses, and less than a minute later there are [number of people in the location of the player] different helpings of spit all mixed up in the canister.[line break][speech style of M]'And now for the cherry on top...'[roman type][line break][BigNameDesc of M] [if diaper quest is 1]takes out a little pink vial and pours a dose of magenta liquid into the canister, before sealing it shut like the others.[line break][speech style of M]'Just a little concoction the nurse so kindly let me borrow. Whoever drinks it will, um, find themselves needing to get to the toilet a little more urgently from now on. [otherwise]turns [his of M] back to the class and lowers the canister to under [his of M] pussy, and the whole class watches in mortified silence as [he of M] audibly rubs and squelches [himself of M] until what sounds like several drops of [his of M] juices have joined the saliva in the canister. Then [he of M] seals it shut like the others.[line break][speech style of M]'[end if]Now this is a real forfeit drink! Let me explain. Two of you are going to play a little game of Russian Roulette with this!'[roman type][line break]";
	say "[BigNameDesc of M] produces what looks like a sort-of pump action water pistol with a gap missing which exactly matches the size and shape of the canisters.[line break][speech style of M]'You will take it in turns to load a canister into here, put the nozzle in your mouth and pull the trigger. The contents of the canister will be forcefully squirted to the back of your throat where you'll be forced to swallow. You will keep going until one of you chickens out, or one of you gets the forfeit shot. So, I need two daring volunteers from among you all. Who's up for it?'[roman type][line break]";
	let ST be a random student in the location of the player;
	truncate LST to 0 entries;
	add ST to LST;
	say "[BigNameDesc of ST] stands up quickly.[line break][speech style of ST]'I'll do it!'[roman type][line break]It looks like you could choose to be the second challenger, if you wish. Do you want to volunteer? ";
	if the player is bimbo consenting:
		add yourself to LST;
		say "You stand up and raise your hand [if the delicateness of the player > 11]nervously[otherwise if the delicateness of the player < 5]confidently[end if]. You feel several stares boring into the back of your head, but you keep your own gaze fixed firmly on the teacher. [big he of M] nods and smiles.[line break][speech style of M]'[one of]Fine. Good luck[or]Better luck this time[stopping]!'[roman type][line break]You are both taken to one end of the front of the room. You feel proud of being brave enough to put yourself out there.";
		dignify 1000;
	otherwise:
		while ST is entry 1 in LST and the number of students in the location of the player > 1:
			let ST be a random student in the location of the player;
		add ST to LST;
		say "You remain seated while [NameDesc of ST] rises to the occasion. You feel proud of your sensible decision to remain out of this perverse gamble.";
		dignify 1000;
	sort LST in random order;
	sort LS in random order;
	let N be 1;
	while 0 is listed in LS and the number of entries in LST is 2:
		let P be entry N in LST;
		increase N by 1;
		if N > 2, now N is 1;
		let CD be entry (number of entries in LS) of LS;
		if P is yourself:
			let E be the number of entries in LD;
			repeat with EN running from 1 to E:
				let ENN be 0;
				repeat with SN running through LS:
					if SN is EN, increase ENN by 1;
				say "There [if ENN is 1]is 1 shot[otherwise]are [ENN] shots[end if] of [entry EN of LD] left. ";
			say "The forfeit shot is still remaining. Do you keep playing? (If you choose no you won't get promoted).";
			if the player is bimbo consenting:
				say "You take a canister at random and point it to the back of your throat. Closing your eyes, you squeeze the trigger! ";
				if CD is 0:
					say "Something slimy and wrong floods your mouth. You immediately know you're drinking the combined spit of your classmates and [NameDesc of M][']s special sauce. It feels so wrong! [if diaper quest is 1]You feel a twinge behind your bladder. [end if][moderateHumiliateReflect]";
					if diaper quest is 1, increase incontinence by 1;
					otherwise SexAddictUp 1;
				otherwise if entry CD in LD matches the text "alcohol":
					say "Strong vodka burns your mouth as it is shot down your throat![line break][variable custom style]Shit![roman type][line break]";
					if alcohol-level <= 3, increase alcohol level; [Can't allow it to compute drunken adventure in the middle of a lesson]
				otherwise if entry CD in LD matches the text "milk":
					say "You are forced to swallow a huge gulp of breast milk![line break][variable custom style]Eww![roman type][line break]";
					MilkTasteAddictUp 1;
				otherwise:
					say "Water shoots to the back of your throat![line break][variable custom style]Phew![roman type][line break]";
				StomachUp 1;
			otherwise:
				remove yourself from LST;
		otherwise:
			let STD be the dedication of P;
			let CDRisk be 3 - the number of entries in LS;
			if STD >= CDRisk:
				say "[BigNameDesc of P] takes a canister and shoots it into [his of P] mouth! ";
				if CD is 0:
					say "You watch [him of P] gag as something clear runs out of [his of P] nose and the sides of [his of P] mouth. You immediately know that [he of P] got the forfeit drink[if yourself is listed in LST]! You're safe[end if]!";
					if yourself is listed in LST, HappinessDown P by 2;
				otherwise if entry CD in LD matches the text "alcohol":
					say "[big he of P] chokes and splutters and shakes [his of P] head rapidly to recover. That must have been vodka!";
				otherwise if entry CD in LD matches the text "milk":
					say "[big he of P] shudders and you see a trickle of white seeping out the corners of [his of P] mouth. That must have been breast milk.";
				otherwise:
					say "[big he of P] coughs once. Hmm, must have just been water.";
			otherwise:
				say "[BigNameDesc of P] takes a step back and shakes [his of P] head. [big he of P] is too scared to take another shot!";
				remove P from LST;
		truncate LS to (number of entries in LS - 1) entries;
	say "[BigNameDesc of M] [if the number of entries in LST is 2]doubles over laughing.[line break][speech style of M]'Too bad, too bad! What a lovely drink, hmm? I bet you enjoyed that! But hey, at least you earned yourself a promotion[otherwise]tilts [his of M] head to one side.[line break][speech style of M]'Hmm, fair enough, up to you[end if].'[roman type][line break]";
	repeat with P running through LST:
		if P is yourself:
			now armband is emerald;
			say "[speech style of M]'Congratulations, [NameBimbo].'[roman type][line break][BigNameDesc of M] touches your armband and the ID card inside transforms!";
			now the armband-title of armband is "Darya";
			now the armband-print of armband is "daredevil";
			say ClothingDesc of armband;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
		otherwise:
			say "[speech style of M]'Congratulations, [student-name of P].'[roman type][line break]";
			promote P;
	say "[speech style of M]'Well I guess that's my fun over with for today. Class dismissed.'[roman type][line break]".

Part - Angela

teacher-angela is a sapphire-teacher.

The text-shortcut of teacher-angela is "tean".

Figure of angela is the file "NPCs/School/Teacher/teacher2.png".
Figure of enslaved diapered angela is the file "NPCs/School/Teacher/teacher2c.png".

To decide which figure-name is the monster-image of (M - teacher-angela):
	decide on figure of angela.

To decide which figure-name is the pacified-image of (M - teacher-angela):
	if M is sex-enslaved, decide on figure of enslaved angela;
	decide on figure of enslaved diapered angela.

To say MonsterDesc of (M - teacher-angela):
	if M is defeated:
		if M is sex-enslaved:
			say "[BigNameDesc of M][']s face looks a lot less special with no make up except for some cheap pink lipstick to match [his of M] slutty pink stockings. All the rest of [his of M] clothes have gone. Each stocking has the controls to a wired vibrator clipped to the top, one going to the [if lady fetish is 2]vibrating chastity cage around [his of M] [manly-penis][otherwise]vibe in [his of M] pussy[end if], and the other to the vibe in [his of M] ass. Given the orgasm-addled, vacant expression on [his of M] face, it's difficult to tell if [he of M] is somehow unable or just unwilling to remove the vibrators or turn them off.";
		otherwise if M is diaper-enslaved:
			say "[BigNameDesc of M][']s make up has gone from [']refined goddess['] to [']naughty kid who found [his of M] mother's make up set[']. And yet, even though [his of M] dignified dress and underwear has been replaced with nothing but baby mittens, a bib and a rather giant diaper, [his of M] face is one of empty-headed bliss. [big his of M] bright pink bib reads 'Mittens, Sins and Diaper Pins'.";
		say "It would also appear that it's now impossible for [his of M] to stand up straight - [he of M][']s stuck in that same 90 degrees bent over position that [he of M] used to love so much - but it feels like it has very different implications now[if M is diaper-enslaved and diaper messing >= 3]. It looks like [he of M][']s constantly trying to mess [himself of M][end if].";
	otherwise:
		say "Clad in [his of M] tight purple latex dress, this [man of M] looks very elegant, provocative and proud. [big his of M] face is immaculately made up with deep red lips and very striking eyes. [big his of M] medium length brown hair sits stiffly on [his of M] shoulders and [he of M] tends to lean forward over [his of M] students,to give them an eyeful of both [his of M] expertly made up face[if lady fetish < 2] and impressive cleavage, left visible thanks to the low cut of [his of M] dress[end if].".

The teacher-name of teacher-angela is "Angela".

To say WhoAnswer of (M - teacher-angela):
	say "[speech style of M]'I should clearly be teaching you not to azk ztupid queztionz!'[roman type][line break]".

To say WhereAnswer of (M - teacher-angela):
	say "[speech style of M]'[if the rank of the player <= 1]Geez, you're pretty far gone, aren't you.'[otherwise]Rankz are earned, and not without effort. It iz important you realise zat.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-angela):
	say "[speech style of M]'Vouldn't you like to know?'[roman type][line break]".

To say StoryAnswer of (M - teacher-angela):
	say "[speech style of M]'Thiz inztitution haz been around longer than any of its memberz, zat iz for zure. Itz originz are ztill zurrounded in myztery.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-angela):
	say "[speech style of M]'Do not take off your armband.'[roman type][line break]".

To compute teaching of (M - teacher-angela):
	say "[speech style of M]'Is zat zupposed to be zome kind of joke?'[roman type][line break]".

To say EnslavedDominationFlav of (M - teacher-angela):
	say "You snap your finges in front of [NameDesc of M][']s face. [big he of M] doesn't even seem to register you at all. It seems like nobody's home.".
To decide which number is the EnslavedDominationThreshold of (M - teacher-angela):
	decide on 15.

make-up-lesson is a lesson. The lesson-teacher of make-up-lesson is teacher-angela.

To compute teaching of (L - make-up-lesson):
	let M be the lesson-teacher of L;
	let P be a random promotable student in the location of the player;
	if the make-up of face is 2 or permanent makeup is 1 or (the make-up of face is 1 and a random number between 1 and the number of promotable students in the location of the player is 1) or P is nothing or the number of students in the location of the player <= 1, now P is the player;
	say "[speech style of M]'It iz time for ze regularly scheduled make up lezzon.'[roman type][line break][BigNameDesc of M] paces up and down at the front as [he of M] addresses you all.[line break][speech style of M]'Az per uzual, ze student who haz come to clazz viz ze most beautiful vizage vill increaze her rank. You.'[roman type][line break][big he of M] turns to face the class and points [his of M] finger directly at [if P is the player]you[otherwise][NameDesc of P][end if].[line break][speech style of M]'Go.'[roman type][line break]";
	if P is the player:
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Belle";
		now the armband-print of armband is "bold beauty";
		say ClothingDesc of armband;
		repeat with STTH running through tryhard students in the location of the player:
			HappinessDown STTH;
		say "In a bit of a surprised daze, you walk out of the room.";
		try going south;
		say "[variable custom style]Huh, that was easy.[roman type][line break]";
		allocate 12 seconds;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise:
		promote P;
		say "You watch as [his of P] sapphire ID card turns into an emerald one, and [he of P] is now '[student-name of P] the [student-print of P]'. [big he of P] grins widely and then prances out of the room.";
		compute mandatory room leaving of P;
		let ST be a random student in the location of the player;
		say "[speech style of M]'I vill allocate you into pairz and you vill practize ze art of make up on each ozzer.'[roman type][line break]You are each given a partner and assigned a table. A few moments later you are standing across a table from [NameDesc of ST], with two large make up kits on the table in front of you. With another magic flourish of the teacher's hands, suddenly you are all make up free. You are to go first, and you do your best to apply a delicate and dignified layer of foundation, blush and make up on [NameDesc of ST][']s face. You do a pretty good job, at least you think so!";
		now permanent makeup is 0;
		compute make-up-lesson-application of ST;
		say "[BigNameDesc of M] comes over to assess your handiwork. [big he of M] looks at [NameDesc of ST][']s face first.[line break][speech style of M]'Not bad, not bad. A little boring but zis iz better zan going overboard.'[roman type][line break]Next [he of M] looks at your face.[line break][speech style of M]'[if the make-up of face >= 3]Bah! This lookz like little child tried to create it. You have much to learn about eleganze, young mizz!'[otherwise if the make-up of face is 2]Zis is exzellent! Marvey-yeuh! Bravo. If you can do zis to yourzelf for ze next time ve meet, I zink ve vill have anozzer graduate, yez?'[otherwise]Bah, zis is similarly boring. I zee zat you are both lacking in ze confidenze to graduate zis clazz any time zoon.'[end if][roman type][line break]";
		let MP be a random off-stage make up kit;
		if MP is a thing:
			say "[BigNameDesc of M] hands each of you a small make up kit.[line break][speech style of M]'For you to practiz viz at home.'[roman type][line break]";
			now MP is carried by the player;
			now focused-thing is MP;
		say "[big he of M] turns to face the whole class and claps [his of M] hands loudly.[line break][speech style of M]'Enough! Clazz dizmizzed!'[roman type][line break]";
		allocate 40 seconds.

To compute make-up-lesson-application of (M - a student):
	say "When it's [his of M] job to return the favour, [he of M] tries to copy you pretty much stroke for stroke, leaving you with a similar faint and mild paintjob.";
	if the make-up of face < 1, FaceUp 1 - the make-up of face;
	otherwise FaceDown the make-up of face - 1.

To compute make-up-lesson-application of (M - a nasty student):
	say "When it's [his of M] job to return the favour, [he of M] grins vindictively and applies various brushes in wild and messy ways until you look completely ridiculous. [big he of M] snickers, just to make sure you know it was on purpose.";
	FaceUp 3.

To compute make-up-lesson-application of (M - a tryhard student):
	say "When it's [his of M] job to return the favour, [he of M] frowns and focuses before getting to work with a variety of brushes, with evident accuracy and skill. Finally [he of M] finishes your new heavy and vibrant look with a nod and harrumph of satisfaction.";
	if the make-up of face < 2, FaceUp 2 - the make-up of face;
	otherwise FaceDown the make-up of face - 2.

To compute make-up-lesson-application of (M - an innocent student):
	say "When it's [his of M] job to return the favour, [he of M] looks very uncertain. [big he of M] ends up hardly applying anything at all, probably too nervous that [he of M] would accidentally make you look ridiculous!";
	FaceDown 3.

Teachers Sapphire ends here.
