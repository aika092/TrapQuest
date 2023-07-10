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
		say "[BigNameDesc of M] has had the fabric of [his of M] dress removed, leaving [him of M] with little more than a belt, and [his of M] top pulled down beneath [his of M] breasts. [big his of M] exposed nipples are tortured by connected nipple clamps, which [he of M] can't remove because [his of M] wrists are bound behind [his of M] back. [big his of M] [if lady fetish is 2]caged [DickDesc of M][otherwise]pussy[end if] is kept constantly stimulated by a vibrating wand, strapped to one thigh. A ballgag sits in [his of M] mouth and a nose hook makes sure [he of M] looks much uglier than before. [big his of M] chunky heels have been further elongated to make them more difficult to constantly stand on, and locked on with padlocks. A nose hook and ballgag completes the humiliating look.";
	otherwise if M is diaper-enslaved:
		say "[BigNameDesc of M][']s comfortable chunky heels have been replaced by an ingeniously evil combination of rollerskates and ankle spreader bar. [big he of M] has to constantly wave [his of M] arms to remain even vaguely balanced! An ironic fate considering [his of M] previous pride in [his of M] balance in heels. Meanwhile, [his of M] top and skirt have been replaced by a yellow babydoll leotard and a very thick diaper, and a pacifier on a string around [his of M] neck, completing the diaper-slave look.";
	otherwise:
		say "This tall tanned stick figure of a [man of M] has ginger hair and a serious face. [big his of M] tight yellow sleeveless top and flowing dress [if diaper quest is 1]and matching tall chunky heels make [his of M] look very adult and in-charge[otherwise]matches [his of M] tall chunky heels[end if]. [big his of M] general demeanour is one of purpose and impatience.".

The teacher-name of teacher-serenity is "Serenity".

To say EnslavedDominationFlav of (M - teacher-serenity):
	say "You grab hold of [NameDesc of M][']s nipple chain and yank it downwards, forcing [him of M] into a bent over position. ";
	if the player is possessing a penis and the number of worn pussy covering actually unavoidable clothing is 0:
		if penis is penis-erect or penis is erect-at-will:
			say "Holding your [if penis is penis-erect]erect[otherwise]rapidly hardening[end if] [ShortDesc of penis] in one hand, you guide it into [his of M] well-lubricated snatch, and thrust away until you bring yourself to a well-earned climax.";
			orgasm quietly;
			check virginity with M;
		otherwise:
			say "Holding your [player-penis] up against [his of M] well-lubricated snatch, you are dismayed to find that you can't seem to get hard right now. Slightly disheartened, you settle for teasing [him of M] by rubbing the tip up and down [his of M] slit until [he of M][']s practically begging to be railed, and then backing away while laughing mockingly.";
	otherwise:
		say "Pressing a button on [his of M] wand vibe sets it temporarily to maximum speed. You watch with a sly smile as [he of M] squeaks first with shock and then with trepidation and then finally with intense euphoria as a full-body orgasm sends [him of M] clattering to the ground in a pile of sweat and [if M is female]girl[end if]cum. The vibrator is still going at maximum power and won't return back down to its usual setting for a few minutes. [big he of M] just writhes around on the ground, unable to speak, move, or think.";
		now the sleep of M is 120.

To decide which number is the EnslavedDominationThreshold of (M - teacher-serenity):
	decide on 12000.

heel-lesson is a lesson. The lesson-teacher of heel-lesson is teacher-serenity.

To decide which number is the min-students of (L - heel-lesson):
	decide on 2.

To compute teaching of (L - heel-lesson):
	allocate 65 seconds;
	let M be the lesson-teacher of L;
	let H be a random worn shoes;
	let PH be a random pvc court heels;
	say "[speech style of M]'Today's lesson will be on wearing high heels.'[roman type][line break][BigNameDesc of M] speaks quickly and efficiently as if [he of M] is under a strict time limit. As [he of M] speaks, [he of M] clicks [his of M] fingers. In a flash, everyone is wearing an identical pair of 4 inch pink pvc court heels!";
	if PH is not worn:
		if H is clothing, WardrobeVanish H;
		summon PH uncursed;
	otherwise:
		if the heel-height of PH is not 4, say "You feel your heels magically changing height to be the same as everyone else's.";
	now the heel-height of PH is 4;
	let X be the hindrance of PH;
	say "[speech style of M]'Okay, now follow my lead: put your hands out to the side like a delicate lady and step, then step, then step, always putting one foot directly in front of the other.'[roman type][line break]You join the other students in doing your best to mimic [his of M] perfect walk.";
	refresh the clothing-focus-window;
	repeat with ST running through students in the location of the player:
		let R be (a random number between 1 and 3) - the heel-skill of ST;
		say "[BigNameDesc of ST] [if R < -1]manages to walk perfectly, [one of]and even adds in a cheeky skip! [or]adding a cheeky curtsey at the end. [purely at random][otherwise if R <= 0][one of]struts around almost as well as miss [teacher-name of M][or]seems to have no problems learning and perfecting the walk[purely at random]. [otherwise if R is 1]wobbles [one of]as [he of ST] tries to practise the steps[or]once or twice[or]only a little as [he of ST] tries [his of ST] best to copy [teacher-name of M][in random order]. [otherwise if R is 2][one of]wobbles dangerously and very nearly falls over[or]has to frantically wave [his of ST] arms to steady [himself of ST] as [he of ST] almost topples over[in random order]! [otherwise if R is 3][one of]slips and falls onto [his of ST] bum! Ouch[or]suddenly stumbles and has to grab a desk to avoid falling over[in random order]! [otherwise]can hardly move! [big he of ST] tries to take a single step forward and immediately slips up, clattering to the ground. [end if]";
	say "[if X <= 0 and the heel skill of the player > 5]You show up the entire room by not only perfectly strutting around but also adding in some 360 degree twirls and ballet-like prances into the air. The other faces in the room are a mix of awe, envy and fury. [otherwise if X <= 0]You manage to do very well yourself. You make it around the room with an almost faultless performance, placing one foot precisely in front of the other each time, with no noticeable wobbles. You feel proud! [otherwise if X is 1]You manage to do pretty well yourself. You make it around the room with only one or two minor wobbles. [otherwise if X is 2]You make it around the room successfully but not without several definitely noticeable wobbles as you do. During your worst wobble you could swear you hear one of the other students snicker from behind you. [otherwise if X is 3]It's a very wobbly journey but it does seem like you might make it all the way around the room without falling over. But then tragedy strikes! It's like a rug is pulled out from underneath you as you suddenly go toppling to the ground and land on your [buttcheeks] with a thud. An array of chuckles from several of the other students greets your ears. [otherwise if X is 4]You only make it forward a few steps before you trip over yourself and clatter to the ground, landing on your [buttcheeks] with a thud. Nearly all the other students giggle as they witness your pathetic attempt.[otherwise]You try to put one foot exactly in front of the other just like miss [teacher-name of M] but as soon as you do you instantly lose your balance and end up on your [buttcheeks]! The whole class points and laughs at your abject failure. [end if]";
	HeelUp 1;
	say "[BigNameDesc of M] calls for quiet.[line break][speech style of M]'Okay, that's enough practise for today. Now we will have a little competition between two of you, to see who's surest on their heels. The winner will get promoted, and the loser will have to wear their shoes for a little longer. So, I need two daring volunteers from among you all. Who's up for it?'[roman type][line break]";
	let ST be a random student in the location of the player;
	say "[BigNameDesc of ST] stands up quickly.[line break][speech style of ST]'I'll do it!'[roman type][line break]It looks like you could choose to be the second challenger, if you wish. Do you want to volunteer? ";
	if the player is bimbo consenting:
		let R be (a random number between 1 and 5) - the heel-skill of ST;
		say "You stand up and raise your hand [if the delicateness of the player > 11]nervously[otherwise if the delicateness of the player < 5]confidently[end if]. You feel several stares boring into the back of your head, but you keep your own gaze fixed firmly on the teacher. [big he of M] nods and smiles.[line break][speech style of M]'[one of]Fine, let's see what you've got[or]Let's hope you do better this time[stopping].'[roman type][line break]You are both taken to one end of the front of the room and then spun round several times until you are quite dizzy. You can hardly see straight, never mind walk! And yet you are quickly given a command to go! The girl who makes it the furthest across the room wins. You see that [NameDesc of ST] has already taken [his of ST] first awkward step and so you quickly try to do the same. You feel so off-balance! And yet you must win. You take another step. [if X > 1 and X > R]THUMP. That's it, you're already flat on your butt! It's over! You hear a few sniggers from other students.[line break][variable custom style]Why did I think this was a good idea?![otherwise if X > R]Step. Wobble. Step. Wobble. [BigNameDesc of ST] is increasing [his of ST] lead! You try to go faster and stagger even more, almost toppling over completely. In the end you are forced to watch as you are beaten by a good couple of feet to the other end of the room. [variable custom style]Darn![otherwise]Step. Wobble. Step. Wobble. [BigNameDesc of ST] is getting further ahead of you! You focus as hard as you can and speed up. You catch [him of ST] up! Stumbling the last few feet, you half lean and half collapse onto the end wall moments before [BigNameDesc of ST].[line break][variable custom style]I've won![end if][roman type][line break]";
		if X > R:
			say "[speech style of M]'Well well, [NameBimbo], you clearly need some more practise in these heels, don't you.'[roman type][line break]As [NameDesc of ST] whoops and celebrates, [NameDesc of M] waves [his of M] hand, and [bold type]you feel a curse taking hold of your heels![roman type][line break]";
			now PH is cursed;
			compute summoned quest of PH;
			promote ST;
		otherwise:
			now armband is emerald;
			say "[speech style of M]'Congratulations, [NameBimbo], I think you've learned enough from me. I think it's time for you to move on[if schoolNames is 1]... and to get a new name[end if].'[roman type][line break][BigNameDesc of M] touches your armband and the ID card inside transforms!";
			now the armband-title of armband is "Precious";
			now the armband-print of armband is "prancing [if diaper quest is 1]princess[otherwise]paramour[end if]";
			say ClothingDesc of armband;
			say "You are so distracted with examining your new armband that you almost don't even notice that [NameDesc of M] is using magic to place a curse on [NameDesc of ST][']s heels, preventing [him of ST] from removing them. By the time you're properly paying attention, it's been done, leaving the poor [boy of ST] whining with frustration as [he of ST] tries to join the others who are silently filing out of the room, struggling to stay upright on [his of ST] new semi-permanent high heels.";
			HappinessDown ST by 3;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
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

Definition: roulette-lesson is lesson-appropriate:
	if (alcohol fetish is 1 or lactation fetish is 1 or diaper quest is 1) and the player is able to drink, decide yes;
	decide no.

To decide which number is the min-students of (L - roulette-lesson):
	decide on 2.

Figure of roulette is the file "Special/Cutscene/cutscene-serenity-roulette1.jpg".

To compute teaching of (L - roulette-lesson):
	now bigGameLoop is 3;
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
					if entry (STN + 1) of LS is not 1 and a random number between 1 and 2 is 1:
						let STU be entry STN of LST;
						FavourDown STU; [If you put water in, 50% of the students that didn't put water in are unimpressed.]
	say "[BigNameDesc of M] gathers up all the canisters, before producing one more.[line break][speech style of M]'Okay, now I want everyone to spit in this one!'[roman type][line break][big he of M] demonstrates by letting a big glob of saliva run from [his of M] tongue into the canister. Several students grimace or make disgusted sounds, but nobody refuses, and less than a minute later there are [number of people in the location of the player] different helpings of spit all mixed up in the canister.[line break][speech style of M]'And now for the cherry on top...'[roman type][line break][BigNameDesc of M] [if diaper quest is 1]takes out a little pink vial and pours a dose of magenta liquid into the canister, before sealing it shut like the others.[line break][speech style of M]'Just a little concoction the nurse so kindly let me borrow. Whoever drinks it will become COMPLETELY incontinent for a short while. How fun! [otherwise]turns [his of M] back to the class and lowers the canister to under [his of M] pussy, and the whole class watches in mortified silence as [he of M] audibly rubs and squelches [himself of M] until what sounds like several drops of [his of M] juices have joined the saliva in the canister. Then [he of M] seals it shut like the others.[line break][speech style of M]'[end if]Now THIS is a real forfeit drink! Let me explain. Two of you are going to play a little game of Russian Roulette with this!'[roman type][line break]";
	say "[BigNameDesc of M] produces two pink devices that look like miniature leaf blowers or watering cans, and sets them on the table. They each have a base with a circular slot which one of the canisters would fit into, and a long hollow spout that is narrow enough for you to get your mouth around.[line break][speech style of M]'You will take it in turns to load a canister into your SwallowMatic4000, put the nozzle in your mouth and pull the trigger. The contents of the canister will be forcefully squirted to the back of your throat where you'll be forced to swallow. You will keep going until one of you chickens out, or one of you gets the forfeit shot. The other one gets promoted. So, I need two daring volunteers from among you all. Who's up for it?'[roman type][line break]";
	let ST be a random student in the location of the player;
	truncate LST to 0 entries;
	add ST to LST;
	say "[BigNameDesc of ST] stands up quickly.[line break][speech style of ST]'I'll do it!'[roman type][line break]It looks like you could choose to be the second challenger, if you wish. Do you want to volunteer? ";
	if the player is bimbo consenting:
		add yourself to LST;
		say "You stand up and raise your hand [if the delicateness of the player > 11]nervously[otherwise if the delicateness of the player < 5]confidently[end if]. You feel several stares boring into the back of your head, but you keep your own gaze fixed firmly on the teacher. [big he of M] nods and smiles.[line break][speech style of M]'[one of]Fine. Good luck[or]Better luck this time[stopping]!'[roman type][line break]You are both taken to one end of the front of the room. You feel proud of being brave enough to put yourself out there.";
		now temporaryYesNoBackground is figure of roulette;
	otherwise:
		while ST is entry 1 in LST and the number of students in the location of the player > 1:
			let ST be a random student in the location of the player;
		add ST to LST, if absent;
		say "You remain seated while [NameDesc of ST] rises to the occasion. You feel proud of your sensible decision to remain out of this perverse gamble.";
		cutshow figure of roulette;
	dignify 1000;
	if the number of entries in LST is 2:
		sort LST in random order;
		sort LS in random order;
		let N be 1;
		while 0 is listed in LS and the number of entries in LST is 2:
			let P be entry N in LST;
			let chickenedOut be 0;
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
					say "You take a canister at random. You put your mouth around the nozzle and push the canister down! ";
					if CD is 0:
						remove yourself from LST;
						say "Something slimy and wrong floods your mouth. You immediately know you're drinking the combined spit of your classmates and [NameDesc of M][']s special sauce. It feels so wrong! [if diaper quest is 1]You feel a twinge behind your bladder. [end if][strongHumiliateReflect]";
						if diaper quest is 1:
							increase temporary-bladder-incontinence by a random number between 3 and 5;
							TasteGrossOut 2;
						otherwise:
							TasteGrossOut 5;
						repeat with TST running through innocent students in the location of the player:
							if TST is not listed in LST, FavourDown TST; [innocent students that are watching are disgusted]
					otherwise if entry CD in LD matches the text "alcohol":
						say "Strong vodka burns your mouth as it is shot down your throat![line break][variable custom style]Shit![roman type][line break]";
						if alcohol-level <= 3, increase alcohol level; [Can't allow it to compute drunken adventure in the middle of a lesson]
						StomachUp 1;
					otherwise if entry CD in LD matches the text "milk":
						say "You are forced to swallow a huge gulp of breast milk![line break][variable custom style]Eww![roman type][line break]";
						StomachMilkUp 1;
					otherwise:
						say "Water shoots to the back of your throat![line break][variable custom style]Phew![roman type][line break]";
						StomachUp 1;
				otherwise:
					remove yourself from LST;
					now chickenedOut is 1;
					repeat with TST running through students in the location of the player:
						if TST is listed in LST:
							HappinessUp TST;
						otherwise if TST is tryhard student:
							FavourDown TST; [tryhard students that are watching are unimpressed with your lack of dedication]
			otherwise:
				let STD be the dedication of P;
				if STD > 3, now STD is 3; [nobody takes the forfeit shot on its own]
				let CDRisk be 4 - the number of entries in LS;
				if STD > CDRisk:
					say "[BigNameDesc of P] takes a canister and shoots it into [his of P] mouth! ";
					if CD is 0:
						say "You watch [him of P] gag as something clear runs out of [his of P] nose and the sides of [his of P] mouth. You immediately know that [he of P] got the forfeit drink[if yourself is listed in LST]! You're safe[end if]!";
						remove P from LST;
						if yourself is listed in LST:
							HappinessDown P by 2;
							repeat with TST running through unfriendly students in the location of the player:
								if TST is not P:
									HappinessDown TST;
									say "Clearly [he of TST] was hoping that you'd be the one who lost.";
					otherwise if entry CD in LD matches the text "alcohol":
						say "[big he of P] chokes and splutters and shakes [his of P] head rapidly to recover. That must have been vodka!";
					otherwise if entry CD in LD matches the text "milk":
						say "[big he of P] shudders and you see a trickle of white seeping out the corners of [his of P] mouth. That must have been breast milk.";
					otherwise:
						say "[big he of P] coughs once. Hmm, must have just been water.";
				otherwise:
					say "[BigNameDesc of P] takes a step back and shakes [his of P] head. [big he of P] is too scared to take another shot!";
					remove P from LST;
					now chickenedOut is 1;
			if chickenedOut is 0, truncate LS to (number of entries in LS - 1) entries;
		say "[BigNameDesc of M] [if 0 is listed in LS]tilts [his of M] head to one side.[line break][speech style of M]'Hmm, fair enough, up to you[otherwise]doubles over laughing.[line break][speech style of M]'Too bad, too bad! What a lovely drink, hmm? I bet you enjoyed that[end if].'[roman type][line break]";
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
	otherwise:
		say "With only one volunteer, the roulette game can't go ahead.";
	now temporaryYesNoBackground is figure of small image;
	now bigGameLoop is 0;
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
			say "[BigNameDesc of M][']s make up has gone from [']refined goddess['] to [']naughty kid who found [his of M] mother's make up set[']. And yet, even though [his of M] dignified dress and underwear has been replaced with nothing but baby mittens, a bib and a rather giant diaper, [his of M] face is one of empty-headed bliss. [big his of M] bright pink bib reads 'Mittens, Sins, and Diaper Pins'.";
		say "It would also appear that it's now impossible for [him of M] to stand up straight - [he of M][']s stuck in that same 90 degrees bent over position that [he of M] used to love so much - but it feels like it has very different implications now[if M is diaper-enslaved and diaper messing >= 3]. It looks like [he of M][']s constantly trying to mess [himself of M][end if].";
	otherwise:
		say "Clad in [his of M] tight purple latex dress, this [man of M] looks very elegant, provocative and proud. [big his of M] face is immaculately made up with deep red lips and very striking eyes. [big his of M] medium length brown hair sits stiffly on [his of M] shoulders and [he of M] tends to lean forward over [his of M] students,to give them an eyeful of both [his of M] expertly made up face[if lady fetish < 2] and impressive cleavage, left visible thanks to the low cut of [his of M] dress[end if].".

The teacher-name of teacher-angela is "Angela".

To say WhoAnswer of (M - teacher-angela):
	say "[speech style of M]'I should clearly be teaching you not to azk ztupid queztionz!'[roman type][line break]".

To say WhereAnswer of (M - teacher-angela):
	say "[speech style of M]'[if the rank of the player <= 1]Geez, you're pretty far gone, aren't you.'[otherwise]Rankz are earned, and not without effort. It iz important you realize zat.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-angela):
	say "[speech style of M]'Vouldn't you like to know?'[roman type][line break]".

To say StoryAnswer of (M - teacher-angela):
	say "[speech style of M]'Thiz inztitution haz been around longer than any of its memberz, zat iz for zure. Itz originz are ztill zurrounded in myztery.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-angela):
	say "[speech style of M]'Do not take off your armband.'[roman type][line break]".

To compute teaching of (M - teacher-angela):
	say "[speech style of M]'Is zat zupposed to be zome kind of joke?'[roman type][line break]".

To say EnslavedDominationFlav of (M - teacher-angela):
	say "You snap your fingers in front of [NameDesc of M][']s face. [big he of M] doesn't even seem to register you at all. It seems like nobody's home.".
To decide which number is the EnslavedDominationThreshold of (M - teacher-angela):
	decide on 20000.

make-up-lesson is a lesson. The lesson-teacher of make-up-lesson is teacher-angela.

To decide which number is the min-students of (L - make-up-lesson):
	decide on 0.

To compute teaching of (L - make-up-lesson):
	let M be the lesson-teacher of L;
	let P be a random student in the location of the player;
	if P is nothing:
		if the make-up of face >= 3 or permanent makeup is 1, now P is the player;
		say "[speech style of M]'You are my only student at the moment, hmm?'[roman type][line break][BigNameDesc of M] looks at you.[line break]";
		if P is the player:
			say "[speech style of M]'Zizz face is acceptable. Go.'[roman type][line break]";
		otherwise:
			allocate 6 seconds;
			say "[speech style of M]'Zizz face needs more work.'[roman type][line break]";
	otherwise:
		if the make-up of face >= 2 or permanent makeup is 1, now P is the player;
		say "[speech style of M]'It iz time for ze regularly scheduled make up lezzon.'[roman type][line break][BigNameDesc of M] paces up and down at the front as [he of M] addresses you all.[line break][speech style of M]'Az per uzual, ze student who haz come to clazz viz ze most beautiful vizage vill increaze her rank. You.'[roman type][line break][big he of M] turns to face the class and points [his of M] finger directly at [YouDesc of P].[line break][speech style of M]'Go.'[roman type][line break]";
	if P is the player:
		allocate 12 seconds;
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Martha";
		now the armband-print of armband is "made up madame";
		say ClothingDesc of armband;
		repeat with STTH running through tryhard students in the location of the player:
			HappinessDown STTH;
		say "In a bit of a surprised daze, you walk out of the room.";
		try going south;
		say "[variable custom style]Huh, that was easy.[roman type][line break]";
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise if P is student:
		allocate 40 seconds;
		promote P;
		say "You watch as [his of P] sapphire ID card turns into an emerald one, and [he of P] is now '[student-name of P] the [student-print of P]'. [big he of P] grins widely and then prances out of the room.";
		compute mandatory room leaving of P;
		if there is a held make up kit and the make-up of face < 1:
			say "[BigNameDesc of M] turns to you.[line break][speech style of M]'Vat is zis? Vy are you ztill holding zis, razer zan uzing it?!'[roman type][line break][big he of M] holds up your make up kit.[line break][speech style of M]'If you von't put it on your lipz, how about here?!'[roman type][line break]";
			let T be i-suck tattoo;
			if i-suck tattoo is not worn:
				say "[BigNameDesc of M] writes 'I suck' on your arm with red lipstick!";
			otherwise if diaper quest is 1 and dumb baby tattoo is not worn:
				say "[BigNameDesc of M] writes 'dumb baby' on your leg with red lipstick!";
				now T is dumb baby tattoo;
			otherwise if loser tattoo is not worn:
				say "[BigNameDesc of M] writes 'loser' on your neck with red lipstick!";
				now T is loser tattoo;
			otherwise if diaper messing >= 3 and mushbutt tattoo is not worn:
				say "[BigNameDesc of M] writes 'mushbutt' on your chest with red lipstick!";
				now T is mushbutt tattoo;
			otherwise if diaper messing >= 3 and stinker tattoo is not worn:
				say "[BigNameDesc of M] writes 'stinker' on your arm with red lipstick!";
				now T is stinker tattoo;
			otherwise if diaper quest is 0 and whore-mouth tattoo is not worn:
				say "[BigNameDesc of M] writes 'WHORE' on your face with red lipstick!";
				now T is whore-mouth tattoo;
			otherwise:
				say "[BigNameDesc of M] writes 'I suck' on your arm with red lipstick!";
			try examining T;
			say "[speech style of M]'You must chooze. I can make the lipztick permanent, or...'[roman type][line break][big he of M] lets an unspoken threat dangle in the air.[paragraph break]Ask [him of M] to make the make up permanent?";
			if the player is consenting:
				if T is not worn:
					say "[BigNameDesc of M] smiles a wide, severe smile, and waves [his of M] hands. You feel some magic passing from [his of M] fingertips into your skin. You immediately know that the lipstick is now permanent. But also, you do feel somewhat magical yourself.[line break][speech style of M]'Zis vas ze right choice. Now remember to use zis before our next lesson.'[roman type][line break][BigNameDesc of M] returns your make up kit.";
					summon T;
					MagicPowerUp 1;
				otherwise:
					say "[BigNameDesc of M] smiles a wide, severe smile, and waves [his of M] hands... but then nothing happens. [big he of M] frowns.[line break][speech style of M]'You are already covered in too many ztupid tattooz! I cannot do zis to you.'[roman type][line break]";
			otherwise:
				say "[BigNameDesc of M] frowns at your reluctance.[line break][speech style of M]'Useless bitch.'[roman type][line break][big he of M] flicks you painfully on your forehead.";
				PainUp 10;
				IntDown 1;
				say "It feels slightly harder to think.";
		otherwise:
			say "[BigNameDesc of M] shows you all a few tricks for making your make up extra-glamorous.";
			if the skillCooldown of the player > 0 and the makeupskill of the player is 0, say "Unfortunately, you've recently learned a skill and need to wait a while before learning another one.";
			otherwise teach makeupskill;
			[say "[speech style of M]'You vill now practize ze art of make up on yourzelves. If you vant to be promoted at ze ztart of ze next clazz, zen be bold!'[roman type][line break]You are each given a make up kit and a mirror.";
			reset multiple choice questions;
			let MU be the make-up of face;
			repeat with N running from MU to 3:
				if N is MU, set numerical response N to "Don't add any make up";
				otherwise set numerical response N to the substituted form of "[if N is 1]Add a light touch of make up[otherwise if N is 2]Add a provocative amount of make up[otherwise if diaper quest is 0]Paint yourself like a whore[otherwise]Paint yourself in over-the-top make up[end if]";
			compute multiple choice question;
			FaceUp player-numerical-response - MU;
			say "[if the make-up of face is MU]You do nothing. Your[otherwise]You get to work, and when you are finished your[end if] face [MakeUpDesc].";
			if player-numerical-response is 3:
				repeat with ST running through innocent students in the location of the player:
					FavourDown ST;
			otherwise if the make-up of face < 2:
				repeat with ST running through tryhard students in the location of the player:
					FavourDown ST;
				if the make-up of face is 0:
					repeat with ST running through ditzy students in the location of the player:
						FavourDown ST;
			say "[BigNameDesc of M] comes over to assess everyone's handiwork. [big he of M] raises [his of M] eyebrows when [he of M] looks at yours.";
			if the make-up of face < 3 and the chosen numerical response matches the text "any":
				say "[speech style of M]'No change?! Zis won't do. Not in my clazz!'[roman type][line break]";
				if lipstick collar is actually summonable:
					summon lipstick collar locked;
					say "[BigNameDesc of M] produces a collar with a pair of lips at the front, and locks it around your neck![line break][speech style of M]'Zis will teach you not to refuse my teaching!'[roman type][line break]";
			otherwise:
				say "[speech style of M]'[if the make-up of face >= 3]Bah! This lookz like little child tried to create it. Although I zuppoze I did inztruct you to be bold, hmm?'[otherwise if the make-up of face is 2]Zis is exzellent! Marvey-yeuh! Bravo. But iz it bold enough? Hmm.'[otherwise]Bah, zis iz boring. Perhaps you are lacking in ze confidenze to graduate zis clazz any time zoon.'[end if][roman type][line break]";]
	if P is not the player:
		let MP be a random off-stage make up kit;
		if MP is a thing and the number of held make up kit is 0:
			say "[BigNameDesc of M] hands [if P is student]each of [end if]you a small make up kit.[line break][speech style of M]'For you to practize viz at home.'[roman type][line break]";
			now MP is carried by the player;
			now focused-thing is MP;
		say "[big he of M] [if P is student]turns to face the whole class and [end if]claps [his of M] hands loudly.[line break][speech style of M]'Enough! Clazz dizmizzed!'[roman type][line break]".

[To compute make-up-lesson-application of (M - a student):
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
	FaceDown 3.]

patience-lesson is a lesson. The lesson-teacher of patience-lesson is teacher-angela.

To decide which number is the min-students of (L - patience-lesson):
	decide on 2.

Definition: patience-lesson is lesson-appropriate:
	if diaper lover is 0, decide no;
	if face is actually occupied, decide no;
	if locked-toilets is true, decide no;
	let K be a random worn knickers;
	if K is dry clean clothing:
		if diaper messing >= 3:
			if rectum is 0, decide no;
			if K is not soilable, decide no;
			if asshole is actually occupied or there is ass covering actually unavoidable clothing, decide no;
		otherwise:
			if there is pee covering actually unavoidable clothing, decide no;
		decide yes;
	decide no.

To compute teaching of (L - patience-lesson):
	let M be the lesson-teacher of L;
	let P be a random student in the location of the player;
	say "[speech style of M]'Today[']z lezzon is in patienze... and also... zenzibility.'[roman type][line break]As [NameDesc of M] addresses you all, [he of M] places a mug of coffee down in front of each of you.[line break][speech style of M]'Drink.'[roman type][line break][big he of M] instructs the class calmly, but with such cold authority and presence, that you each start unquestioningly sipping your new beverage.[line break][speech style of M]'Zere comez a point, ven you must admit zat you are not as big and strong and perfect as you might dream. Failing to recognize this moment is a key failing of zapphire ranked ztudentz, and one vich I vill be condizioning avay.'[roman type][paragraph break]As you finish your warm drink, [if diaper messing >= 3]your belly gurgles loudly... And you can hear that everyone else's belly is doing the same[otherwise]you feel a desperate need to go to the toilet... And judging by the panicked squeaks and clenched shut legs around you, it would appear that everyone else feels the same thing you do[end if].[line break][variable custom style]Uh-oh...[roman type][paragraph break][BigNameDesc of M] smirks knowingly.[line break][speech style of M]'You may leave zis room to uze ze toilet vhenever you like. But if you do zo, you vill not pazz ze clazz. To paz ze clazz, you muzt ztay in zis clazzroom for... five minutez.'[roman type][line break][big he of M] places a large egg timer on the front desk, and the sand starts trickling.[line break][speech style of M]'HOWEVER. If you zoil yourzelf in zis room, rather zan uzing ze toilet, zen you vill have proven yourzelf to have a zeriouz caze of hubriz. You vill ztill be promoted to emerald rank, but ze headmistrezz and I vill arrange for... [']zpecial meazures['] for the rest of your stay here, to enzure zat your hubriz doez not go unpunished.'[roman type][line break]That sounds ominous...";
	let TM be 5; [minutes]
	if diaper messing >= 3:
		now suppository is 4;
		if rectum < 4, now rectum is 4;
	otherwise:
		now the bladder of the player is bladder-risky-level;
	while TM > 0:
		say "[bold type]There are about [TM] minute[if TM is not 1]s[end if] left of the lesson.[roman type][line break]";
		decrease TM by 1;
		repeat with ST running through students in the location of the player:
			if the dedication of ST <= a random number between -1 and 1:
				say "[speech style of ST]'[one of]F-fuck!'[or]Hnnng!'[or]No...'[or]Aaah!'[in random order][roman type][line break][BigNameDesc of ST] exclaims as [he of ST] leaps up and sprints from the room[one of], desperate to avoid an accident[or][stopping].";
				now ST is in School10;
		if diaper messing >= 3, say "[one of]Your stomach gurgles loudly, and you can feel the pressure building[or]Your belly cramps painfully[or]The pressure mounting in your rectum is now seriously painful[or]You feel something trying to push its way out, and you do your best to hold the exit closed[or]You feel your body absolutely desperate to push. It would feel so good, so relieving, if you'd just let go[cycling]...";
		otherwise say "[one of]You can feel the pressure building inside your very full bladder[or]Your bladder cramps painfully[or]The pressure mounting in your bladder is now seriously painful[or]You feel the urine pressing strongly against that barrier in your urethra, desperately begging for release[or]You feel your body absolutely desperate to let it out. It would feel so good, so relieving, if you'd just let go[cycling]...";
		reset multiple choice questions;
		set numerical response 1 to "Run for the toilet!";
		set numerical response 2 to "Hold onto your [if diaper messing >= 3]poop[otherwise]pee[end if]!";
		set numerical response 3 to "Dig extra-deep (guaranteed success, but harms long-term continence...)";
		compute multiple choice question;
		if player-numerical-response is 1:
			if the player is able to speak, say "[variable custom style]'[if the player is feeling dominant]Screw this[otherwise]I'm sorry, I can't[end if]!'[roman type][line break]You bolt out of the door and to the toilets, doing an awkward potty-dance wobble as you go.";
			teleport to School10;
			compute toilet use;
			now TM is -100;
		otherwise if player-numerical-response is 3:
			say "You clench your legs together and dig deep!";
			if diaper messing >= 3, RectumIncontinenceUp 1;
			otherwise BladderIncontinenceUp 1;
		otherwise:
			if diaper messing >= 3:
				if the player is rectum incontinent:
					say "With an ashamed squeak, you realise that you can't hold on! You stand up to run for the toilet, but all that does is provide everyone with an unobstructed view of you messing yourself![if the player is able to speak][line break][variable custom style]'No... Don't watch!'[roman type][line break][end if]But there's nothing you can do to stop everyone staying as you soil yourself in front of them.";
					compute messing;
					now TM is -10;
				otherwise:
					let hold-strength be (a random number between 9 and 11) + (a random number between 1 and 3);
					let I be hold-strength - (rectum-incontinence of the player + suppository);
					if debuginfo > 0, say "[input-style]Mess self-control check: 2d3+8 ([hold-strength]) - bowel incontinence ([rectum-incontinence of the player]) - laxative effects ([suppository]) = [I + 0] | ([rectum].5) rectum volume[roman type][line break]";
					if rectum < I:
						say "You manage to hold on for now! Phew!";
						increase suppository by 1;
					otherwise:
						say "With an ashamed squeak, you realise that you can't hold on! You stand up to run for the toilet, but all that does is provide everyone with an unobstructed view of you messing yourself![if the player is able to speak][line break][variable custom style]'No... Don't watch!'[roman type][line break][end if]But there's nothing you can do to stop everyone staying as you soil yourself in front of them.";
						compute messing;
						now TM is -10;
			otherwise:
				check full wetting;
				if delayed urination is 0:
					say "You manage to hold on for now! Phew!";
					increase the bladder of the player by a random number between 1 and 2;
				otherwise:
					say "With an ashamed squeak, you realise that you can't hold on! You stand up to run for the toilet, but all that does is provide everyone with an unobstructed view of you wetting yourself![if the player is able to speak][line break][variable custom style]'No... Don't watch!'[roman type][line break][end if]But there's nothing you can do to stop everyone staying as you soil yourself in front of them.";
					compute pee protected urination;
					now TM is -10;
	if TM > -100:
		if TM is -10, say "[BigNameDesc of M]'s eyes have narrowed, but you can also see that [he of M] is smiling.[line break][speech style of M]'Hubriz.'[roman type][line break]";
		say "[BigNameDesc of M] snaps [his of M] fingers.";
		repeat with ST running through students in the location of the player:
			promote ST;
		now armband is emerald;
		if TM is -10:
			now the armband-title of armband is "Toni";
			now the armband-print of armband is "toilet troubled";
		otherwise:
			now the armband-title of armband is "Patty";
			now the armband-print of armband is "patient potty user";
		say "Your armband transforms!";
		say ClothingDesc of armband;
		update students;
		if TM is -10:
			say "As you study your new [']title['], [NameDesc of M] walks over to you, and flicks you on the head.";
			now the implant of pledge-lesson-toilet is 1;
			execute pledge-lesson-toilet;
			say "[variable custom style]I can't use the toilet any more?! But... But... Then... How will I... Oh god...[roman type][paragraph break]";
		say "[BigNameDesc of M] claps [his of M] hands.[line break][speech style of M]'Clazz dizmizzed!'[roman type][line break]";
		if nurse is alive and nurse is undefeated:
			let D be a random worn messed knickers;
			if D is clothing and D is not diaper:
				now nurse is in the location of the player;
				say "[speech style of M]'Oh nurse!'[roman type][line break][BigNameDesc of M] calls loudly down the hall.[paragraph break][BigNameDesc of nurse] arrives from the south.";
				check guaranteed perception of nurse.


Teachers Sapphire ends here.
