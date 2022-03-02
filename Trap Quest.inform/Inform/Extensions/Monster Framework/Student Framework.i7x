Student Framework by Monster Framework begins here.

A student is a kind of monster. A student is intelligent. A student is usually female. A student has a number called timesBullied. A student has a number called teacher-obedience. A student can be unexpelled or expelled. A student is usually unexpelled.

To decide which number is the aggro limit of (M - a student): [The number at which they turn unfriendly]
	decide on 10.

A student has a number called lessonInt1. [Can be used to track various things in a lesson]
A student has a number called lessonInt2. [Can be used to track various things in a lesson]
A student can be kissPunished. [Used in kissing lesson to track punishments]
A student can be clitLeaded. [Do they have a clit lead permanently attached to their clit piercing?]
A student can be cumCovered. [Are they covered in cum from the swimming lesson?]
A student has a number called student-diaper-state.
[
1: Double diapered
2+: Messy
]
Definition: a student is messy:
	if diaper quest is 1 and the student-diaper-state of it >= 2 and diaper messing >= 3, decide yes;
	decide no.
Definition: a student is just messing: decide no.
To LessonReset (M - a student):
	now the lessonInt1 of M is 0;
	now the lessonInt2 of M is 0;
	now M is not cumCovered;
	now the student-diaper-state of M is 0.

Definition: a student is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
Definition: a student is controlling: decide no. [Will they grab onto subduing clothing e.g. a clitoris lead?]

To say ShortDesc of (M - a student):
	say student-name of M.
To say MediumDesc of (M - a student):
	say "[rank-colour of M] student [student-name of M]".

To decide which number is the starting difficulty of (M - a student):
	decide on 6 + the current-rank of M.

Definition: a student is blocker: decide no.

To say FullMonsterDesc of (M - a student):
	say ImageDesc of M;
	say MonsterDesc of M;
	say StudentDesc of M.

To say MonsterDesc of (M - a student):
	say "This student seems to be missing [his of M] description!".

To say StudentDesc of (M - a student):
	say "[if student-diaper-state of M > 0][DiaperStateDesc of M][end if][if M is kissPunished][KissPunishDesc of M][end if][if M is clitLeaded][ClitLeadDesc of M][end if][if M is cumCovered][CumCoveredDesc of M][end if][big he of M] is wearing an armband which says '[student-name of M] the [student-print of M]' in large [rank-colour of M] letters.".

To say DiaperStateDesc of (M - a student):
	say "[big he of M] is wearing an abnormally massive white diaper[if M is messy]. The diaper is bloated and discoloured brown, which is clear evidence that [he of M] has made the most massive of messes inside it[end if]. ".

To say KissPunishDesc of (M - a student):
	say "[big his of M] lips have been permanently swollen as punishment for under-performing in the kissing lesson. ".

To say ClitLeadDesc of (M - a student):
	say "A thin silver chain dangling from [his of M] groin confirms that [he of M] is still wearing [his of M] new permanent clitoris lead piercing. ".

To say CumCoveredDesc of (M - a student):
	say "[big he of M] is covered in [semen] from head to toe. ".

To set up (M - a student):
	reset M;
	now the monstersetup of M is 1;
	while M is in School01 or M is in School33 or M is in School34 or M is in School35 or M is off-stage:
		now M is in a random placed academic room;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	if the current-rank of M < the min-rank of M, now the current-rank of M is the min-rank of M;
	update name of M.

To regionally place (M - a student):
	now neighbour finder is the location of the player;
	while M is not in the school or M is in the location of the player or M is nearby:
		now M is in a random schoolplaced room.

Definition: a student is human: decide yes.

Definition: a student is uniquely unfriendly: decide no.

To say NameDesc of (M - a student):
	say "[input-style][student-name of M][roman type]".
To say BigNameDesc of (M - a student):
	say "[input-style][student-name of M][roman type]".
To say FuckerDesc of (M - a student):
	say "[student-name of M]".
To say BigFuckerDesc of (M - a student):
	say "[student-name of M]".

Part - Rank, Name and Print

A student has a number called current-rank. The current-rank of a student is usually 1.
A student has a number called min-rank. The min-rank of a student is usually 1.
A student has a number called max-rank. The max-rank of a student is usually 6.

Definition: a student (called M) is rank1:
	if the current-rank of M is 1, decide yes;
	decide no.
Definition: a student (called M) is rank2:
	if the current-rank of M is 2, decide yes;
	decide no.
Definition: a student (called M) is rank3:
	if the current-rank of M is 3, decide yes;
	decide no.
Definition: a student (called M) is rank4:
	if the current-rank of M is 4, decide yes;
	decide no.
Definition: a student (called M) is rank5:
	if the current-rank of M is 5, decide yes;
	decide no.
Definition: a student (called M) is same-rank:
	if current-rank of M is the rank of the player, decide yes;
	decide no.
Definition: a student (called M) is rank-relevant:
	if max-rank of M > the rank of the player, decide yes;
	decide no.

A student has a text called student-name. The student-name of a student is usually "Anonymous".
A student has a text called student-print. The student-print of a student is usually "student".

Understand the student-name property as describing a student.

To say rank-colour of (M - a student):
	say rank-colour of the current-rank of M.

Definition: a student (called M) is demotable:
	if the min-rank of M < the current-rank of M:
		repeat with ST running through alive students:
			if ST is not M and the current-rank of ST is the current-rank of M, decide yes; [There must be at least 1 student of each rank. So we can't demote this person unless they're not the only one left.]
	decide no.

Definition: a student (called M) is promotable:
	if the current-rank of M is 5, decide yes; [everyone can become solid gold from pure diamond]
	if the max-rank of M > the current-rank of M:
		repeat with ST running through alive students:
			if ST is not M and the current-rank of ST is the current-rank of M, decide yes; [There must be at least 1 student of each rank. So we can't promote this person unless they're not the only one left.]
	decide no.

To update name of (M - a student):
	do nothing.

To silently promote (M - a student):
	if M is promotable:
		increase the current-rank of M by 1;
		update name of M.

To silently demote (M - a student):
	if M is demotable:
		decrease the current-rank of M by 1;
		update name of M.

To promote (M - a student):
	if M is promotable:
		say "[BigNameDesc of M][']s armband transforms and [he of M] becomes ";
		silently promote M;
		say "[NameDesc of M]!".

To demote (M - a student):
	if M is demotable:
		say "[BigNameDesc of M][']s armband transforms and [he of M] becomes ";
		silently demote M;
		say "[NameDesc of M]!".

Definition: a student (called M) is lesson-appropriate:
	if the current-rank of M is 1 and armband is sapphire, decide yes;
	if the current-rank of M is 2 and armband is emerald, decide yes;
	if the current-rank of M is 3 and armband is ruby, decide yes;
	if the current-rank of M is 4 and armband is pink diamond, decide yes;
	if the current-rank of M is 5 and armband is pure diamond, decide yes;
	decide no.

To update background colour of (M - a student):
	if the current-rank of M is 2:
		now the backgroundColour of M is 5294200; [emerald]
	otherwise if the current-rank of M is 3:
		now the backgroundColour of M is 14684511; [ruby]
	otherwise if the current-rank of M is 4:
		now the backgroundColour of M is 16440029; [pale pink]
	otherwise if the current-rank of M is 5:
		now the backgroundColour of M is 16447741; [pale silver]
	otherwise if the current-rank of M is 6:
		now the backgroundColour of M is 16766720; [gold]
	otherwise:
		now the backgroundColour of M is 1004218. [sapphire]

Part - Updating Students

school-earnings-latest is a number that varies. [let's track how long it's been since the player last stepped into the school]

To optimise students: [happens just before class starts]
	let RK be the rank of the player;
	while RK > 1:
		let LST be a list of people;
		let LSTP be a list of people;
		repeat with ST running through alive students:
			if the current-rank of ST is RK:
				if the max-rank of ST > RK, add ST to LST; [needs to be able to promote once]
				otherwise destroy ST; [has reached max promotion]
			if the current-rank of ST is RK - 1:
				if the max-rank of ST > RK, add ST to LSTP; [needs to be able to promote twice]
				otherwise destroy ST; [irrelevant forever]
		if the number of entries in LSTP > 0, sort LSTP in random order;
		let E be 5 - the number of entries in LST;
		while E < 5:
			increase E by 1;
			if the number of entries in LSTP > 0:
				let ST be entry 1 in LSTP;
				remove ST from LSTP;
				silently promote ST;
			otherwise:
				let M be a random off-stage unexpelled fetish appropriate rank-relevant same-rank student;
				if M is student, set up M;
		decrease RK by 1;


To update students: [happens after the player is promoted]
	force clothing-focus redraw; [armband has changed colour]
	if the rank of the player is 1:
		set up rank one students;
	if the rank of the player is 2:
		set up rank two students;
	if the rank of the player is 3:
		set up rank three students;
	if the rank of the player is 4:
		set up rank four students;
	if the rank of the player is 5:
		set up rank five students;
	let LT be the list of alive undefeated teachers;
	sort LT in random order;
	repeat with M running through LT: [permanently remove one now-irrelevant teacher from the zone]
		if M is not in the location of the player:
			if M is sapphire-teacher or (M is emerald-teacher and the rank of the player > 2) or (M is ruby-teacher and the rank of the player > 3):
				destroy M;
				break.

Part - Stats

To decide which number is the heel-skill of (M - a student):
	decide on 1.

To decide which number is the dedication of (M - a student): [We can use this for various calculations to check which students do what]
	decide on a random number between 1 and 3.

To decide which number is the unique vindictiveness of (M - a student): [We can use this for various calculations to check which students do what]
	decide on a random number between 1 and 2.

To decide which number is the vindictiveness of (M - a student): [Angry students are even more vindictive.]
	let F be 0;
	if M is unfriendly, now F is the aggro limit of M - the favour of M;
	decide on the unique vindictiveness of M + F.


Part - Motion

To compute monstermotion of (M - a student):
	if playerRegion is not school:
		say "BUG: [BigNameDesc of M] has followed the player out of the school. Please report along with a detailed description of your what happened in most recent visit to the school. Region: [playerRegion]; Location: [location of M]; Player location: [location of the player].";
		now M is in School01;
	otherwise if M is in a predicament room:
		do nothing;
	otherwise if M is guarding: [send them to their classroom if they are in a boring state]
		let R be School32;
		if the current-rank of M is 1:
			now R is School14;
		otherwise if the current-rank of M is 2:
			now R is School18;
		otherwise if the current-rank of M is 3:
			now R is School29;
		otherwise if the current-rank of M is 4:
			now R is School30;
		if the location of M is not R, now M is in R;
	otherwise if a random number between 1 and 4 is 1 or (M is in School35 and a random number between 1 and 5 > 2) or (the player is at least partially immobile and (a random number between 1 and 2 is 1 or there is a teacher in the location of M)):
		compute room leaving of M.

To compute (M - a student) seeking (D - a direction):
	if M is in a predicament room or M is friendly: [Friendly students don't stalk the player]
		compute monstermotion of M;
	otherwise:
		blockable move M to D;
		compute monstermotion reactions of M.

To compute room leaving of (M - a student): [This CANNOT be replaced with a function that potentially doesn't make them leave the room, for any NPC. Some while loops rely on this to eventually succeed or the game will freeze.]
	if M is in School11:
		blockable move M to north;
	otherwise:
		now neighbour finder is the location of M;
		let LA be the list of N-viable directions;
		let LD be a list of directions;
		repeat with A running through LA: [The student can only go where their armband allows]
			if neighbour finder is an academic room: [It should always be, but just in case...]
				let P be the room A from the location of M;
				unless the entry-rank of P > the entry-rank of neighbour finder and the entry-rank of P > the current-rank of M, add A to LD;
			otherwise:
				add A to LD;
		sort LD in random order;
		let LDE be the number of entries in LD;
		let A be entry 1 in LD;
		let P be the room A from the location of M;
		if a random number between 1 and LDE is 1 and P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			blockable move M to A;
			compute monstermotion reactions of M;
		otherwise if a random number between 1 and LDE is 1 and P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			blockable move M to A;
			compute monstermotion reactions of M.

To compute fleeing of (M - a student):
	if the player is in danger or the health of M < the maxhealth of M:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and the room A from the location of M is unbossed and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A;
		otherwise if A is a random N-viable direction and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A;
		repeat with N running through staff members in the location of M: [Students alert teachers if they have been hurt.]
			now N is interested;
			unless M is in the location of the player:
				distract M;
				calm M;
				now the scared of M is 0;
	otherwise:
		distract M;
		now the scared of M is 0;
		calm M.

Part - Perception

To compute perception of (M - a student):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if detention chair is grabbing the player:
		compute detention chair tease of M;
	otherwise if armband is worn:
		unless there is an active assembly:
			if M is friendly:
				compute student perception of M;
			otherwise:
				let SM be a random undefeated staff member in the location of the player;
				if SM is monster:
					say "[BigNameDesc of M] looks like [he of M] wants to say something, but then glances at [NameDesc of SM] and decides against it. [big he of M] settles for ignoring you for now.";
					bore M;
				otherwise:
					compute bully perception of M;
	otherwise:
		compute nonstudent perception of M.

To decide which number is the outrage tolerance of (M - a student): [What number of outrage they are unimpressed and lose favour.]
	decide on 4 + (the current-rank of M * 2).

To decide which number is the cringe tolerance of (M - a student):
	decide on the outrage tolerance of M.

To say DisapprovalFlav of (M - a student):
	say "[BigNameDesc of M] [one of]looks shocked[or]makes a disgusted face[or]almost chokes[in random order].[line break][speech style of M]'[one of]What the fuck is wrong with you?!'[or]Get away from me, you messed up weirdo!'[or]That's just too far!'[or]What do you think you're doing?!'[in random order][roman type][line break]".

To say CringeDisapprovalFlav of (M - a student):
	say DisapprovalFlav of M.

To compute student perception of (M - a student):
	if gloryhole is grabbing the player and (the current-rank of M < 3 or (gloryhole is penetrating face and the current-rank of M < 5)):
		say LewdTrapReactFlav of M;
	otherwise:
		compute appearance assessment of M.

To compute appearance assessment of (M - a student):
	if diaper quest is 1 and the saved cringe appearance of the player >= the saved appearance of the player:
		if there is currently at least partially visible messed knickers:
			say MessyBabAppearanceAssessment of M;
			if M is normally acquaintance, FavourDown M by 2;
			distract M;
		otherwise if the saved cringe appearance of the player - 4 > the cringe tolerance of M:
			say FarGoneBabAppearanceAssessment of M;
			if M is normally acquaintance, FavourDown M by 2;
			distract M;
		otherwise if the saved cringe appearance of the player > the cringe tolerance of M:
			say BabAppearanceAssessment of M;
			if M is normally acquaintance, FavourDown M;
			if M is unfriendly, distract M;
		otherwise if the player is top-wardrobe-malfunctioning:
			compute dq nip slip reaction of M;
	otherwise:
		if the saved appearance of the player - 4 > the outrage tolerance of M:
			say FarGoneAppearanceAssessment of M;
			if M is normally acquaintance, FavourDown M by 2;
			distract M;
		otherwise if the saved appearance of the player > the outrage tolerance of M:
			if M is nasty student and diaper quest is 0, compute grope of M;
			otherwise say LewdAppearanceAssessment of M;
			if M is normally acquaintance, FavourDown M;
			if M is unfriendly, distract M;
		otherwise if the player is top-wardrobe-malfunctioning:
			compute tq nip slip reaction of M;
		otherwise if M is tryhard student and M is groping:
			compute grope of M.

To say FarGoneAppearanceAssessment of (M - a student):
	say "[BigNameDesc of M] looks you up and down.[line break][speech style of M]'[one of]Is that seriously what you think you should look like when you come to class?'[or]Oh my god, I need mental preparation before looking at a getup as outrageous as that! My poor eyes!'[or]Holy cow, do you know how nasty you look right now?! Stay the fuck away from me!'[in random order][roman type][line break]".

To say LewdAppearanceAssessment of (M - a student):
	say "[BigNameDesc of M] looks you up and down.[line break][speech style of M]'[one of]Someone's trying a bit too hard to impress the teachers.'[or]Ugh. [big please] don't tell me you're proud of the way you look.'[or]Isn't that a bit too far? I wouldn't want to be seen dead like that.'[in random order][roman type][line break]".

To say MessyBabAppearanceAssessment of (M - a student):
	say "[BigNameDesc of M] looks at the state of your soiled undergarments.[line break][speech style of M]'[one of]Oh my god, YUCK!'[or]Oh my god, I need mental preparation before breathing anywhere near you! My poor nose!'[or]Did you really shit yourself?! Stay the fuck away from me!'[in random order][roman type][line break]".

To say FarGoneBabAppearanceAssessment of (M - a student):
	say "[BigNameDesc of M] looks you up and down.[line break][speech style of M]'[one of]Is that seriously what you think you should look like when you come to class?'[or]Oh my god, I need mental preparation before looking at a getup as outrageous as that! My poor eyes!'[or]Holy cow, do you know how extreme your outfit is right now?! Stay the fuck away from me!'[in random order][roman type][line break]".

To say BabAppearanceAssessment of (M - a student):
	say "[BigNameDesc of M] looks you up and down.[line break][speech style of M]'[one of]Someone's trying a bit too hard to impress the teachers.'[or]Ugh. [big please] don't tell me you're proud of the way you look.'[or]Isn't that a bit too far? None of the rest of us'd wanna be seen dead like that!'[in random order][roman type][line break]".

To say BreastsGropeFlav of (M - a nasty student):
	say "[speech style of M]'[one of]You've only just arrived and you're already exposing yourself like a cheap whore.'[or]Whoops, my hands must have slipped...'[or]You're nothing but a piece of meat. Remember that.'[stopping][roman type][line break]".

To say BreastsGropeFlav of (M - a tryhard student):
	say "[speech style of M]'[one of]Just as I suspected, they're really soft too. I'm jealous.'[or]I just had to check if they were real. You can feel mine too, if you like.'[in random order][roman type][line break]".

To say AssholeGropeFlav of (M - a nasty student):
	say "[speech style of M]'[one of]Surprise, [bitch][or]Look alive, slut[in random order]!'[roman type][line break]".

To say AssholeGropeFlav of (M - a tryhard student):
	say "[speech style of M]'[one of]Teacher said that this is how I should try to greet people from now on. [or][stopping]Hello.'[roman type][line break]".

To say VaginaGropeFlav of (M - a nasty student):
	say "[speech style of M]'If you act like a cumdumpster, I'm going to treat you like a cumdumpster!'[roman type][line break]".

To say VaginaGropeFlav of (M - a tryhard student):
	say "[speech style of M]'[if vagina is lewdly exposed]You're so brave, to have this completely on display[otherwise if vagina is at least partially lewdly exposed]You look so sexy like this. I can even partially see your [cunt][otherwise]I can't wait for our next class. I'm all wet down there. Are you wet too, I wonder[end if].'[roman type][line break]".

To compute face grope of (M - a nasty student):
	say "[BigNameDesc of M] [if face is actually occupied]grabs you by the ear and pulls sharply[otherwise]sticks two fingers in your mouth, hooking your cheek[end if].[line break][speech style of M]'Watch where you're looking, slut. I am not your friend.'[roman type][line break]".

To compute face grope of (M - a tryhard student):
	say "[BigNameDesc of M] [if face is actually occupied]licks you on the cheek[otherwise]presses against you and pushes [his of M] tongue into your mouth, tasting you[end if], before taking a step back and beaming.[line break][speech style of M]'Hi.'[roman type][line break]".

To say ThighsGropeFlav of (M - a nasty student):
	say "[speech style of M]'[one of]You're not even hot. Who did you blow to get let in here, slut?'[or]You look like a whore, and you feel like a whore... I wonder what that makes you?'[or]What is it about this ugly, whorish body that makes the [ShortDesc of headmistress] take such an interest in you?'[in random order][roman type][line break]".

To say ThighsGropeFlav of (M - a tryhard student):
	say "[speech style of M]'[one of]I'm so jealous of your legs...'[or]How do you manage to look so sexy without looking too slutty? I must know your secret!'[in random order][roman type][line break]".

To say AssGropeFlav of (M - a nasty student):
	say "[speech style of M]'[one of]With a fat slutty ass like this, no wonder you're looking to learn to become a whore.'[or]Fuckmeat. But not even top quality fuckmeat, just mid-shelf dime-a-dozen fuckmeat.'[or]What's up, fuckmeat?'[stopping][roman type][line break]".

To say AssGropeFlav of (M - a tryhard student):
	say "[speech style of M]'[one of]Ooh, nice and perky.'[or]Hey there sweet-cheeks.'[cycling][roman type][line break]".

To compute nonstudent perception of (M - a student):
	say "[speech style of M]'[one of]What the hell[or]Oh my god[or]Erm[or]Wait a second[or]Hold on a minute[or]OMFG[in random order], where is your armband?!'[roman type][line break][BigNameDesc of M] starts to run away!";
	anger M;
	now the scared of M is 100.

To compute (M - a student) reacting to armband replacement:
	if M is in the location of the player, say ArmbandCalming of M;
	calm M.

To say ArmbandCalming of (M - a student):
	if the health of M >= the maxhealth of M:
		if M is unfriendly, say "[BigNameDesc of M] calms down.";
		now the scared of M is 0.

To say SatisfiedFlav of (M - a student):
	if M is in the location of the player and M is not dying, say "[BigNameDesc of M] seems satisfied, and loses interest.[if M is friendly][line break][speech style of M]'Okay, we're cool now. Just don't you dare piss me off again.'[roman type][line break]".

To say SatisfiedFlav of (M - a nasty student):
	if M is in the location of the player and M is not dying, say "[BigNameDesc of M] seems satisfied, and loses interest.[line break][speech style of M]'What a [one of]wimp[or]loser[or][if the player is gendered male]faggot[otherwise]pathetic little [boy of the player][end if][in random order].'[roman type][line break]".

To FavourUp (M - a student) by (N - a number):
	RespectUp M by N.

To RespectUp (M - a student) by (N - a number): [This is the same mechanically as favour but with different flavour]
	if N > 0 and M is alive:
		increase the favour of M by N;
		say "You can tell that [NameDesc of M] [one of]is impressed with you[or]has [if M is not acquaintance]regained some[otherwise]gained[end if] respect for you[or]is happy with what [he of M] sees[or]approves[in random order].".

To FavourDown (M - a student) by (N - a number):
	RespectDown M by N.

To RespectDown (M - a student) by (N - a number): [This is the same mechanically as favour but with different flavour]
	if latest-top-malfunction is not 0 and M is reactive, now latest-top-malfunction is earnings; [If an intelligent interested NPC has lost favour with the player for whatever reason that probably means they would have seen a nip slip if one existed. So we'll say one didn't exist.]
	if the class of the player is cheerleader and a random number between 1 and 2 is 1, decrease N by 1;
	if N > 0 and M is alive:
		decrease the favour of M by N;
		say "You can tell that [NameDesc of M] [if M is amicable student][one of]is feeling sorry for you[or]is pitying you[in random order][otherwise if M is friendly][one of]is unimpressed with you[or]has lost respect for you[or]is disgusted by what [he of M] sees[in random order][otherwise][one of]is utterly appalled by what [he of M] sees[or]has lost all respect for you[or]is deeply disgusted by you[in random order][end if].".

To HappinessUp (M - a student):
	HappinessUp M by 1.

To HappinessUp (M - a student) by (N - a number): [This is the same mechanically as favour but with different flavour]
	if N > 0 and M is alive:
		increase the favour of M by N;
		say "You can tell that [NameDesc of M] is [if M is not acquaintance][one of]pleased by that[or]trying to hide a smile[in random order][otherwise][one of]smiling about that[or]happy with you[in random order][end if].".

To HappinessDown (M - a student):
	HappinessDown M by 1.

To HappinessDown (M - a student) by (N - a number): [This is the same mechanically as favour but with different flavour]
	if the class of the player is cheerleader and a random number between 1 and 2 is 1, decrease N by 1;
	if N > 0 and M is alive:
		decrease the favour of M by N;
		say "You can tell that [NameDesc of M] is [if M is amicable student][one of]a little disappointed[or]a tad vexed[in random order][otherwise if M is friendly][one of]not happy[or]irritated[or]frustrated[in random order][otherwise][one of]pissed off[or]furious[or]angry[in random order] with you[end if].".

To CheerUp (M - a student):
	CheerUp M by 1.

To CheerUp (M - a student) by (N - a number): [This is the same mechanically as favour but with different flavour. Mainly for when the student pulls pranks or similar]
	if N > 0 and M is alive:
		increase the favour of M by N;
		say "You can tell that [NameDesc of M] [if M is not acquaintance][one of]is feeling a bit better now[or]has cheered up a little bit[in random order][otherwise][one of]is even happier now[or]is feeling cheerful, thanks to that[in random order][end if].".

To FavourDown (M - a student) by (N - a number) with consequences:
	if M is alive:
		let P be 0;
		if M is unfriendly, now P is 1;
		decrease the favour of M by N;
		if P is 0 and M is unfriendly: [monster was friendly but now is unfriendly]
			distract M.

To say BecomesAggressive of (M - a student):
	compute bully perception of M.

To compute combatProvoked of (M - a student):
	HappinessDown M;
	now M is unleashed.

To compute toilet reaction of (M - a student):
	if the current-rank of M is 2:
		say "[BigNameDesc of M] politely looks away.";
	otherwise:
		if the current-rank of M is 1, RespectDown M by 1;
		otherwise say "[BigNameDesc of M] stares directly at you, smirking.";
		say strongHumiliateReflect.

To say NastyTrapReactFlav of (M - a student):
	if the current-rank of M >= 3:
		say "[BigNameDesc of M] [one of]cringes[or]makes a pitying sound[at random].[line break][speech style of M]'[one of]Rather you than me.'[or]I wondered if that might happen.'[or]That's just how things are around here.'[in random order][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] [one of]makes a disgusted sound[or]almost chokes in surprise[or]grimaces[at random].[line break][speech style of M]'[one of]Yuck.'[or]How could you let that happen to you? Do you have no shame?'[or]Oh my lord! What a disgrace.'[in random order][roman type][line break]";
		FavourDown M with consequences.

To check attack of (M - a student):
	if the player is not in a predicament room:
		let ST be a random friendly staff member in the location of the player;
		if ST is monster and the number of interested unfriendly staff members in the location of the player is 0, say "[BigNameDesc of M] wants to attack you, but [he of M] is waiting until [NameDesc of ST] [if ST is interested]loses interest and [end if]leaves the room...";
		otherwise check default attack of M.

Part - Protection

To compute (M - a student) protecting against (X - a monster):
	unless X is nurse:
		say "[speech style of M]'[if X is staff member]Eek! [NameBimbo] is fighting the teachers!'[otherwise][one of]Eek! I'm telling a teacher[or]Stay there, I'm getting a teacher[at random]!'[end if][roman type][line break][BigNameDesc of M] turns to run away.";
		now the scared of M is 100;
		anger M.

dq-student-flee is a diaper punishment. the priority of dq-student-flee is 5.

To compute punishment of (P - dq-student-flee):
	now the scared of current-monster is 100;
	compute fleeing of current-monster.

Definition: dq-student-flee is appropriate:
	if current-monster is student and armband is not worn, decide yes;
	decide no.

The student priority attack rules is a rulebook. The priority attack rules of a student is usually the student priority attack rules.

This is the student obeys teacher rule:
	let N be current-monster;
	let S be a random undefeated awake unfriendly staff member in the location of the player;
	if S is nothing, now S is a random undefeated awake staff member in the location of the player;
	if S is monster:
		if the teacher-obedience of N is 1:
			rule succeeds;
		otherwise if the health of N < the maxhealth of N:
			if S is friendly, say "[BigNameDesc of S] yells angrily.[line break][speech style of S]'NO FIGHTING! BOTH OF YOU DOWN ON THE GROUND, NOW!'[roman type][line break]";
			repeat with M running through staff members in the location of the player:
				anger M;
				now M is interested;
				now the boredom of M is 0;
			repeat with M running through awake unfriendly interested students in the location of the player:
				now the teacher-obedience of M is 1;
				say "[BigNameDesc of M] [one of]obediently[or]instantly[or]silently[or]immediately[in random order] drops to the ground, and lying face down, assumes [one of]a submissive position with [his of N] hands behind [his of N] head, like a prisoner[or]the position[stopping].";
			rule succeeds;
	otherwise if the teacher-obedience of N is 1:
		now the teacher-obedience of N is 0.
The student obeys teacher rule is listed in the student priority attack rules.

To compute striking success effect of (M - a student) on (B - a body part):
	let N be a random staff member in the location of M;
	if N is a monster:
		if N is uninterested, check guaranteed perception of N;
		if N is interested and the health of M >= the maxhealth of M, now the health of M is the maxhealth of M - 1; [This is how we flag to the game that the staff member has witnessed the fight and can demand that it stops]

To say AllyDamageFlav of (X - a student) on (M - a monster):
	say "[BigNameDesc of X] slaps [NameDesc of M] as hard as [he of X] can!".

Part - Bullying

[This is where we input flavour for all the other bullying students in the crowd.]
To compute crowd jeering of (M - a student):
	let LST be the list of unfriendly students in the location of M;
	remove M from LST;
	repeat with ST running through LST:
		compute jeering of ST.

To compute jeering of (M - a student):
	say "[BigNameDesc of M] [one of]points and laughs[or]doubles over with laughter[or]cackles vindictively at your suffering[or]jeers[in random order]!".

To compute crowd boredom of (M - a student):
	let LST be the list of unfriendly students in the location of M;
	remove M from LST;
	repeat with ST running through LST:
		bore ST.

To compute crowd satisfaction of (M - a student):
	let LST be the list of unfriendly students in the location of M;
	remove M from LST;
	repeat with ST running through LST:
		satisfy ST.

To compute group bullying of (M - a student):
	let LST be the list of alive unfriendly students;
	repeat with ST running through LST:
		now ST is in the location of the player;
		now ST is interested;
	remove M from LST;
	now current-monster is M;
	say "[BigNameDesc of M] whistles loudly. You look around to see that ";
	let E be the number of entries in LST;
	repeat with ST running through LST:
		say "[NameDesc of ST][if E > 2], [otherwise if E is 2] and [end if]";
	now Neighbour Finder is the location of the player;
	say "[if E is 1]is[otherwise]are[end if] blocking the [if the number of N-viable directions > 1]exits[otherwise]exit[end if] to the room. Uh-oh.[paragraph break]Your bullies circle in on you, easily overpowering you and wrenching your hands behind your back.";
	if student-bully-swimming-pool is appropriate and bukkake fetish is 1: [Swimming pool dunk]
		compute punishment of student-bully-swimming-pool;
	otherwise if student-bully-wedgie is appropriate and M is not in School10: [Wedgie]
		repeat with ST running through LST:
			now ST is in School19;
		compute punishment of student-bully-wedgie;
	otherwise: [Swirlie]
		repeat with ST running through LST:
			now ST is in School10;
		compute punishment of student-bully-swirlie;

[Called when a student beats a player in combat.]
This is the bullying rule:
	increase the timesBullied of current-monster by 1;
	if the player is in School17: [Food Hall]
		compute food hall bullying of current-monster;
	otherwise if the player is in School10: [Toilets]
		compute punishment of student-bully-swirlie;
	otherwise if the player is in School19 and student-bully-wedgie is appropriate: [Changing Room]
		compute punishment of student-bully-wedgie;
	otherwise if the player is in School20 and student-bully-swimming-pool is appropriate: [Swimming Pool]
		compute punishment of student-bully-swimming-pool;
	otherwise if the number of alive unfriendly students > 2:
		compute group bullying of current-monster;
	otherwise:
		compute default bullying of current-monster;
	rule succeeds.
The unique punishment rule of a student is usually the bullying rule.

student-bully-food-hall is a diaper punishment. The priority of student-bully-food-hall is 5.
Definition: student-bully-food-hall is appropriate:
	if current-monster is student and the player is in School17, decide yes;
	decide no.
To compute punishment of (P - student-bully-food-hall):
	compute food hall bullying of current-monster.

student-bully-toilet-key is a diaper punishment. The priority of student-bully-toilet-key is 5.
Definition: student-bully-toilet-key is appropriate:
	if current-monster is student and academy-toilet-key is held, decide yes;
	decide no.
To compute punishment of (P - student-bully-toilet-key):
	say "[speech style of current-monster]'I'm taking this, and you're NEVER having it back!'[roman type][line break][BigNameDesc of current-monster] takes the key for the toilets!";
	now academy-toilet-key is carried by current-monster;
	satisfy current-monster.

student-bully-swimming-pool is a diaper punishment. The priority of student-bully-swimming-pool is 4.
Definition: student-bully-swimming-pool is appropriate:
	if current-monster is student and the player is not at least partially immobile and the player is not flying and the rank of the player >= the entry-rank of School20 and the current-rank of current-monster >= the entry-rank of School20 and the semen coating of thighs < 9 and the number of staff member in School20 is 0, decide yes;
	decide no.
To compute punishment of (P - student-bully-swimming-pool):
	if the location of the player is not School20:
		repeat with ST running through students in the location of the player:
			if ST is interested and ST is not current-monster and ST is unfriendly, now ST is in School20;
		drag to School20 by current-monster;
	say "[speech style of current-monster]'[one of]Watch your step, [bitch][or]You stink - you could use a wash[in random order]!'[roman type][line break][BigNameDesc of current-monster] shoves you into the pool!";
	compute crowd jeering of current-monster;
	if diaper quest is 0:
		compute TQ swimmingpool swimming at 4 with 1;
	otherwise:
		compute DQ swimmingpool swimming at 4 with 1;
	compute crowd satisfaction of current-monster;
	satisfy current-monster.

Check going when the player is in School20:
	let M be a random alive unfriendly student;
	if M is student, now current-monster is M;
	if number of alive unfriendly students > (a random number between 2 and 3) and the number of friendly monsters in the location of the player is 0 and student-bully-swimming-pool is appropriate:
		allocate 6 seconds;
		now M is in School20;
		say "[bold type]Suddenly, [NameDesc of M] [bold type]appears, blocking the way![roman type][line break]";
		compute group bullying of M instead;
		do nothing instead. [failsafe]

student-bully-wedgie is a diaper punishment. The priority of student-bully-wedgie is 1.
Definition: student-bully-wedgie is appropriate:
	if current-monster is student and the player is not at least partially immobile and the player is not flying and the rank of the player >= the entry-rank of School19 and the current-rank of current-monster >= the entry-rank of School19 and there is an off-stage ass hook and there is worn displacable knickers, decide yes;
	decide no.
To compute punishment of (P - student-bully-wedgie):
	repeat with M running through staff members in School19:
		compute room leaving of M;
	if the location of the player is not School19, drag to School19 by current-monster;
	let K be a random worn knickers;
	say "[speech style of current-monster]'[one of]Up we go[or]This is where you belong[stopping]!'[roman type][line break][if the number of unfriendly students in the location of the player > 1]The bullies lift[otherwise][BigNameDesc of current-monster] lifts[end if] you up by your [ShortDesc of K], pinning the back onto one of the changing room hooks!";
	let A be a random off-stage ass hook;
	now A is in the location of the player;
	now A is revealed;
	now A is grabbing the player;
	now the wedgie-target of A is K;
	now the stance of the player is 0;
	compute crowd jeering of current-monster;
	PainUp 1;
	compute crowd satisfaction of current-monster;
	satisfy current-monster;
	say "It looks like you'll need to [bold type]jump[roman type] and try and rip your underwear, or [bold type]wait[roman type] for someone to rescue you.";
	let M be a random unfriendly student in the location of the player;
	if M is student, say "[BigNameDesc of M] puts [his of M] hands on [his of M] hips and smirks up at you.[line break][speech style of M]'You better pray your panties hold, [bitch]. If they snap before I leave, I'm going to blame you.'[roman type][line break]".

Check going when the player is in School19:
	let M be a random alive unfriendly student;
	if M is student, now current-monster is M;
	if number of alive unfriendly students > (a random number between 2 and 3) and the number of friendly monsters in the location of the player is 0 and student-bully-wedgie is appropriate:
		allocate 6 seconds;
		now M is in School19;
		say "[bold type]Suddenly, [NameDesc of M] [bold type]appears, blocking the way![roman type][line break]";
		compute group bullying of M instead;
		do nothing instead. [failsafe]

student-bully-swirlie is a diaper punishment. The priority of student-bully-swirlie is 3.
Definition: student-bully-swirlie is appropriate:
	if current-monster is not student, decide no;
	if locked-toilets is true, decide no;
	if there is worn wet knickers or the location of the player is toilets, decide yes;
	decide no.
To compute punishment of (P - student-bully-swirlie):
	repeat with M running through staff members in School10:
		compute room leaving of M;
	if the location of the player is not toilets, drag to School10 by current-monster;
	let K be a random worn knickers;
	say "[speech style of current-monster]'[if there is worn wet knickers][one of]Dumb baby! This is where you're supposed to go potty, not in your pants[or]Why are your [ShortDesc of K] wet? Don't you know you're supposed to piss in here?'[or]You're such a pathetic baby you couldn't make it to this toilet without wetting your [ShortDesc of K]!'[in random order][otherwise if the number of unfriendly students in the location of the player > 1]Let's play a fun little game, [bitch]. If you want us to treat you with respect... first you have to kiss the toilet like you love it.'[otherwise if diaper focus > 0]Oh yes, let's take a good look at big [boy of the player] potty, the one you probably can't even make it to in time!'[otherwise][one of]Trying to get a good look at the toilet? How about an even closer one!'[or]Seeing you here gives me an idea...'[in random order][end if][roman type][line break]";
	compute swirlie of current-monster.

Check going when the player is in School10:
	let M be a random alive unfriendly student;
	if M is student, now current-monster is M;
	if number of alive unfriendly students > (a random number between 2 and 3) and the number of friendly monsters in the location of the player is 0:
		allocate 6 seconds;
		now M is in School10;
		say "[bold type]Suddenly, [NameDesc of M] [bold type]appears, blocking the way![roman type][line break]";
		compute group bullying of M instead;
		do nothing instead. [failsafe]

To compute swirlie of (M - a monster):
	say "[BigNameDesc of M] grabs you by the head and dunks your face into the toilet water, and then flushes the water around you. It's deeply humiliating!";
	severeHumiliate;
	compute crowd jeering of M;
	let ST be a random unfriendly nasty student in the location of M;
	if ST is student and ST is not M:
		if watersports fetish is 1:
			say "[BigNameDesc of ST] takes the opportunity to squat above the toilet and urinate, pissing straight down onto your hair and the back of your neck. The toilet water quickly gets mixed with [his of ST] [urine], and still [NameDesc of M] holds your face in it.";
			let N be the largeness of hair - (the semen coating of hair + the urine coating of hair + the water-drench of hair);
			if N < 1, now N is 1;
			AnnouncedSquirt urine on hair by N;
			severeHumiliate;
			compute addictive tasting of urine;
		otherwise:
			say "[BigNameDesc of ST] takes the opportunity to kick you right in the [genitals]. Tears appear in your eyes and are immediately washed away by the toilet water.";
			PainUp 2;
		satisfy ST;
		compute room leaving of ST;
	let swirlieResisting be 0;
	if the player is not feeling submissive:
		say "Do you want to resist? ";
		if the player is reverse bimbo consenting, now swirlieResisting is 1;
	if swirlieResisting is 1:
		say "You buck and thrash and refuse to go down without a fight, screaming bubbles of anger into the swirling water. After a couple of seconds, [NameDesc of M] loses [his of M] grip and is forced to let you go.[line break][speech style of M]'[one of]Fucking [bitch]. I guess you haven't learned your lesson yet[or]Fucking idiot, you're supposed to keep your head under for the whole thing. That's it. I'm still mad at you. We'll do this again soon[in random order].'[roman type][line break]";
		bore M;
		compute crowd boredom of M;
	otherwise:
		say "You hold your breath and let your limbs hang limp and allow [him of M] to finish the flush cycle. Afterwards [he of M] wrenches you up by your [MediumDesc of hair] and throws you to the ground.[line break][speech style of M]'[one of]I guess you've learned your lesson. For now[or]Yeah. That's what I thought[or]It seems like you know love getting swirlies, huh? You didn't even fight back[cycling].'[roman type][line break]";
		now the stance of the player is 1;
		DelicateUp 1;
		compute crowd satisfaction of M;
		satisfy M.

student-bully is a diaper punishment. The priority of student-bully is 1.
Definition: student-bully is appropriate:
	if current-monster is student, decide yes;
	decide no.
To compute punishment of (P - student-bully):
	compute default bullying of current-monster;
	satisfy current-monster.

To compute bully perception of (M - a student):
	now current-monster is M; [failsafe]
	anger M;
	if the player is upright:
		if the player is in School20 and student-bully-swimming-pool is appropriate:
			compute punishment of student-bully-swimming-pool;
		otherwise:
			if the timesBullied of M is 0, say FirstTimeBullyDemandFlav of M;
			otherwise say RepeatBullyDemandFlav of M;
			say "Do you get on your knees? ";
			if the player is bimbo consenting:
				now auto is 1;
				try kneeling;
				now auto is 0;
			otherwise if a random number between 1 and the favour of M > 4 or there is an undefeated staff member in the location of the player:
				say "[BigNameDesc of M] seems to consider [his of M] options for a moment, and then decides not to start a fight.[line break][speech style of M]'[one of]You better watch out. I'm coming for you[or]Get out of my face before I lose my temper[or]This isn't the right moment[or]Watch your back, [bitch][in random order].'[roman type][line break]Looks like [he of M][']s leaving you alone, for now.";
				distract M;
	otherwise:
		if the timesBullied of M is 0, say FirstTimeBullyFlav of M;
		otherwise say RepeatBullyFlav of M;
	if M is interested:
		if the player is prone:
			follow the bullying rule;
		otherwise:
			say BullyCombatFlav of M.

To say FirstTimeBullyDemandFlav of (M - a student):
	say "[speech style of M]'[one of]Oh it's you. I'm so fucking angry with you. You know what, I think I want you on your knees, [bitch], to get what's coming to you.'[or]I've been looking for you, [bitch]. It's time for revenge. Get on your knees.'[or]I'm going to show you why it was a bad idea to make an enemy of me. Get on your knees.'[in random order][roman type][line break]".

To say FirstTimeBullyFlav of (M - a student):
	say "[speech style of M]'[one of]Oh good, you're on your knees already. That makes it easy for me to give you what you've had coming for a while now.'[or]Oh good, on your knees, begging for forgiveness without me even having to ask. That's a good step in the right direction. This is the next.'[or]Well, well, well, look who's come crawling along, looking for forgiveness. Let me see, how should I thank you properly?'[in random order][roman type][line break]".

To say RepeatBullyDemandFlav of (M - a student):
	say "[speech style of M]'[one of]Hmph, you're still around? I'll teach you to show your face around here again. Knees. Now.'[or]I'm still mad with you. Clearly you still haven't learned how to win friends and influence people. Get on your knees.'[or]Show me how much you want to earn my friendship back, [NameBimbo]. Beg for my forgiveness.'[in random order][roman type][line break]".

To say RepeatBullyFlav of (M - a student):
	say "[speech style of M]'[one of]Well since you're already on your knees, I guess you know I haven't forgiven you yet.'[or]I'm still mad with you.'[or][NameBimbo] the traitor. Seeking forgiveness, hmm?'[in random order][roman type][line break]".

To say BullyCombatFlav of (M - a student):
	say "[speech style of M]'[one of]I guess you really want to fight.'[or]Oops, looks like you pissed me off.'[or]Now I'm mad. Come on then.'[at random][roman type][line break]".

a bully-action is a kind of object.
Definition: a bully-action is eligible: decide yes.
To execute (A - a bully-action):
	do nothing.

To compute default bullying of (M - a student):
	now current-monster is M;
	let A be a random eligible bully-action;
	if A is nothing or there is a staff member in the location of M:
		compute angry punishment of M;
	otherwise:
		execute A;
	satisfy M.

bully-plug is a bully-action.
Definition: bully-plug is eligible:
	if there is an embodied thing penetrating asshole and (the player is not possessing a vagina or there is an embodied thing penetrating vagina), decide no;
	if asshole is exposed and the current-rank of current-monster > 1, decide yes;
	decide no.
To execute (A - bully-plug):
	let P be a random thing penetrating asshole;
	if P is clothing and (the player is not possessing a vagina or there is an embodied thing penetrating vagina):
		say "[speech style of current-monster]'Why do you have that in your ass? It obviously doesn't fit you, tryhard [bitch].'[roman type][line break][BigNameDesc of current-monster] smacks your ass, making sure [his of current-monster] palm connects with [NameDesc of P] so you feel it all the way inside your [asshole].";
	otherwise:
		now P is a random off-stage plentiful dong;
		let F be asshole;
		if the player is possessing a vagina and vagina is exposed and the number of embodied things penetrating vagina is 0:
			if a random number between 1 and 3 > 1 or there is an embodied thing penetrating asshole, now F is vagina;
		let pN be the openness of F - size of P;
		say "[speech style of current-monster]'You look like you need something hard to work on for a little while.'[roman type][line break][BigNameDesc of current-monster] pulls out a [ShortDesc of P], and then takes a small tube of some kind of glue and coats the shaft. [big he of current-monster] [if pN < 0]laughs cruelly at your whimper of pain as [he of current-monster] roughly forces it into your [variable F][otherwise if pN < 3]slams it into your [variable F][end if] and harshly swats your ass. [big his of current-monster] palm makes full contact with the bottom of the [ShortDesc of P], making you feel it all the way inside.";
		if F is vagina, summon P uncursed vaginally;
		otherwise summon P uncursed;
		gluify P;
	ruin asshole times 2.

bully-piss is a bully-action.
Definition: bully-piss is eligible:
	if watersports fetish is 1 and the current-rank of current-monster > 2, decide yes;
	decide no.
To execute (A - bully-piss):
	say "[BigNameDesc of current-monster] [if current-monster is female]pulls apart [his of current-monster] pussy lips[otherwise]holds [his of current-monster] [DickDesc of current-monster] steady[end if], and a moment later a jet of [urine] is heading straight for your face.";
	FacePiss from current-monster.

bully-forcefeed is a bully-action.
Definition: bully-forcefeed is eligible:
	if face is actually occupied, decide no;
	decide yes.
To execute (A - bully-forcefeed):
	say "[speech style of current-monster]'Open wide, [bitch]!'[roman type][line break][BigNameDesc of current-monster] holds your nose until you have to open your mouth, and then forces [run paragraph on]";
	if the current-rank of current-monster > a random number between 2 and 3:
		say "you to drink a glowing pink potion.";
		if diaper lover >= 0:
			increase digestion-timer by 300;
			say "You can feel that your body is now digesting food and drink twice as fast as before![line break][variable custom style]Uh-oh...[roman type][line break]";
		if the lips of face < max lip size:
			BustUp 1;
			HipUp 1;
			LipsUp 1;
			say "Your lips grow in size and become [LipDesc]![line break][variable custom style]Eek![roman type][line break]";
	otherwise:
		say "a candy corn into your mouth! You're forced to swallow it.";
		compute CandyCornEat.

bully-rimjob is a bully-action.
Definition: bully-rimjob is eligible:
	if a2m fetish > 0 and face is not actually occupied and the current-rank of current-monster > 2, decide yes;
	decide no.
To execute (A - bully-rimjob):
	say "[BigNameDesc of current-monster] pulls apart [his of current-monster] ass cheeks, and pushes [his of current-monster] asshole against your mouth.[line break][speech style of current-monster]'Lick it.'[roman type][line break]Do you obey?";
	if the player is bimbo consenting:
		say "It's humiliating, but you acquiesce and stick your tongue inside, sampling the bitter tastes of [his of current-monster] backdoor. [strongHumiliateReflect]";
		HappinessUp current-monster;
		if a2m fetish > 1 and the current-rank of current-monster > a random number between 2 and 5:
			say "[BigNameDesc of current-monster] grunts and sighs as all of a sudden [he of current-monster] pushes out a big creamy helping of [semen] from [his of current-monster] [asshole] into your mouth! Yuck!";
			FaceFill semen by 6;
	otherwise:
		say "[BigNameDesc of current-monster] settles for rubbing [his of current-monster] asshole over your nose and lips.";
	say "[speech style of current-monster]'Nasty bitch, you like that, don't you?'[roman type][line break]";

bully-confiscate is a bully-action.
Definition: bully-confiscate is eligible:
	if diaper quest is 1 and current-monster is able to confiscate, decide yes;
	decide no.
To execute (A - bully-confiscate):
	compute punishment of confiscate.

bully-donate is a bully-action.
Definition: bully-donate is eligible:
	if diaper quest is 1 and current-monster is able to donate babywear, decide yes;
	decide no.
To execute (A - bully-donate):
	compute punishment of donate babywear.

bully-gloryhole is a bully-action.
Definition: bully-gloryhole is eligible:
	if the rank of the player >= 3 and gloryhole is in School19 and face is not actually occupied, decide yes;
	decide no.
To execute (A - bully-gloryhole):
	compute gloryhole lesson of current-monster.

bully-schoolgirl is a bully-action.
Definition: bully-schoolgirl is eligible:
	if there is a worn schoolgirl outfit:
		if diaper quest is 0 and minimalist schoolgirl outfit is off-stage, decide yes;
		if diaper quest is 1 and gingham schoolgirl outfit is off-stage, decide yes;
	decide no.
To execute (A - bully-schoolgirl):
	let C be a random worn schoolgirl outfit;
	say "[BigNameDesc of current-monster] scoffs.[line break][speech style of current-monster]'You think that outfit is appropriate for a [boy of the player] like you? I don't think so.'[roman type][line break][big he of current-monster] rips off your [ShortDesc of C]!";
	destroy C;
	if diaper quest is 0, now C is minimalist schoolgirl outfit;
	otherwise now C is gingham schoolgirl outfit;
	say "[speech style of current-monster]'You should wear something like this!'[roman type][line break][big he of current-monster] forces you to wear a [MediumDesc of C]!";
	summon C uncursed;
	say "And [he of current-monster][']s not finished with you yet! [big he of current-monster] takes the collar of [NameDesc of C] and coats the inside with a tube of glue. Now it's stuck to you - you won't be able to remove it until you can peel away the glued collar!";
	gluify C.


bully-lock-heels is a bully-action.
Definition: bully-lock-heels is eligible:
	if bondage protection is 2 or there is worn shoes or ballet heels is on-stage, decide no;
	if there is an off-stage specific-key, decide yes;
	decide no.
To execute (A - bully-lock-heels):
	summon ballet heels uncursed;
	say "[BigNameDesc of current-monster] makes you wear a [ballet heels]!";
	let K be a random off-stage specific-key;
	compute current-monster locking ballet heels with K.

bully-lock-gag is a bully-action.
Definition: bully-lock-gag is eligible:
	if bondage protection is 2 or face is actually occupied, decide no;
	if there is an off-stage specific-key, decide yes;
	decide no.
To execute (A - bully-lock-gag):
	let G be lip gag;
	if diaper quest is 1:
		say "[speech style of current-monster]'A dumb baby like you needs one of these!'[roman type][line break]";
		now G is yellow-pacifier;
	otherwise:
		say "[speech style of current-monster]'You should smile more!'[roman type][line break]";
	summon G uncursed;
	say "[BigNameDesc of current-monster] makes you wear a [G][if G is pacifier] that has been threaded onto a bondage strap[end if]!";
	let K be a random off-stage specific-key;
	compute current-monster locking G with K.

bully-sharpie is a bully-action.
Definition: bully-sharpie is eligible:
	if the number of worn tattoos is 0 or marker chest tattoo is worn or there is worn not-top-displacable actually breast covering clothing, decide no;
	decide yes.
To execute (A - bully-sharpie):
	let C be a random worn actually breast covering clothing;
	say "[BigNameDesc of current-monster] takes out a permanent marker, [if C is clothing]pulls up your [ShortDesc of C], [end if]and writes something on your chest!";
	summon marker chest tattoo;
	if weight gain fetish is 1 and current-monster is nasty student:
		now the tattoo-title of marker chest tattoo is "DISGUSTING FAT UGLY PIG";
		now the tattoo-outrage of marker chest tattoo is 14;
	otherwise:
		now the tattoo-title of marker chest tattoo is the substituted form of "[if diaper lover > 0 or lactation fetish is 1]Mommy's Milkers[otherwise]I HAVE NO TITS[end if]";
		now the tattoo-outrage of marker chest tattoo is 7;
	say "[speech style of current-monster]'There you go, now you look like the trashy [if diaper quest is 0]whore[otherwise]submissive[end if] you're destined to be!'[roman type][line break]".

To say angry punishment insult of (M - a student):
	say "[speech style of M]'Your outfit is fucking ugly.'[roman type][line break]".

To say angry punishment accessory confiscation of (M - a student):
	say "[speech style of M]'[one of]Give me your lunch money, [bitch][or]Haha, YOINK[cycling]!'[roman type][line break]".

To say angry punishment clothing destruction of (M - a student) on (C - a clothing):
	say "[speech style of M]'Trust me, you're going to look way hotter like this!'[roman type][line break]".

To compute food hall bullying of (M - a student):
	say "[speech style of M]'[one of]I'm thirsty, [bitch], which means you're going to get some soda for me[or]Come over here, [bitch]. You'll be my drink dispenser today[or]I'm thirsty. You know what to do, [bitch][then at random]!'[roman type][line break][BigNameDesc of M] drags you over to the [drink-machine] by your [MediumDesc of hair] and places [his of M] paper cup under the nozzle. [big he of M] tugs sharply on your [ShortDesc of hair] and you wince with pain.";
	compute sybian sitting;
	compute crowd jeering of M;
	say "[BigNameDesc of M] takes the cup and [one of]takes a long gleeful gulp[or]sips it delicately as if it contains a fine nectar[in random order].[line break][speech style of M]'[one of]Ah, the sweet taste of karma[or]This tastes so much better when my clit isn't sore from sitting on that thing[or]Delicious. Good [boy of the player][in random order].'[roman type][line break]";
	compute crowd boredom of M;
	satisfy M.

Part - Pranks

To compute unique interaction of (M - a ditzy student):
	let F be the aggro limit of M - the favour of M; [gets larger the more she is angry with the player]
	let R be a random number between 1 and 20;
	if debuginfo > 0, say "[input-style][MediumDesc of M] prank check: [student-name of M] anger ([F]) | ([R].5) d20[roman type][line break]";
	if F > R:
		compute default prank of M.

a prank-action is a kind of object.
Definition: a prank-action is eligible: decide yes.
To execute (A - a prank-action):
	say "BUG - chosen prank action has no execution function.".

To compute default prank of (M - a student):
	now current-monster is M;
	let A be a random eligible prank-action;
	if A is nothing or there is a staff member in the location of M:
		if debuginfo > 0, say "[input-style]Prank action fails ([if there is a staff member in the location of M]nearby staff member[otherwise]no eligible prank action could be found[end if]!)[roman type][line break]";
	otherwise:
		execute A;
		CheerUp M.

prank-wedgie is a prank-action.
Definition: prank-wedgie is eligible:
	let K be a random worn knickers;
	if K is undies or K is bikini bottoms:
		repeat with C running through worn crotch covering clothing:
			if C is not K and C is not trousers, decide no; [everything except trousers prevents wedgies]
		decide yes;
	decide no.
To execute (A - prank-wedgie):
	let K be a random worn knickers;
	say "[speech style of current-monster]'WEDGIE!!!'[roman type][line break][BigNameDesc of current-monster] has taken advantage of a moment you weren't looking to sneak behind you and tug at the back of your [ShortDesc of K]. They ride up into your buttcrack. ";
	if the damage of K >= a random number between 0 and the armour of K:
		say "[big he of current-monster] pulls so hard at the [clothing-material of K] that it rips in two! Your [K] are destroyed.";
		destroy K;
		say "[speech style of current-monster]'Whoopsie, haha, I don't know my own strength!'[roman type][line break]";
	otherwise:
		say "It damages the [clothing-material of K], and it really hurts!";
		PainUp 1;
		damage K.

prank-kancho is a prank-action.
Definition: prank-kancho is eligible:
	if there is rigid ass covering clothing, decide no;
	if there is an embodied thing penetrating asshole, decide no;
	decide yes.
To execute (P - prank-kancho):
	let C be a random top level ass protection clothing;
	let A be a random thing penetrating asshole;
	say "[speech style of current-monster]'KANCHO!!!'[roman type][line break][BigNameDesc of current-monster] has taken advantage of a moment you weren't looking to sneak behind you and prod the index and middle fingers of each hand against your [asshole] as quickly and powerfully as [he of current-monster] can. ";
	if A is a thing:
		say "[big his of current-monster] fingertips thump into [NameDesc of A], sending a powerful jolt deep inside you!";
		ruin asshole;
		if A is not currently at least partially visible, say "[speech style of current-monster]'Whoa, you've got a [ShortDesc of A] in your ass? Slut alert, haha!'[roman type][line break]";
	otherwise if C is a clothing:
		say "[big his of current-monster] fingertips jam into your sphincter through the [clothing-material of C] of your [ShortDesc of C], triggering a sharp but short-lived pain in your backside.";
		PainUp 1;
	otherwise:
		say "With no barrier between [his of current-monster] fingers and your [asshole], they shoot right up inside you, with serious strength and speed. The sensation is both painful and intense!";
		PainUp 1;
		now current-monster is penetrating asshole;
		ruin asshole;
		dislodge current-monster;
		say "[BigNameDesc of current-monster] quickly removes [his of current-monster] fingers from your [asshole], cackling to [himself of current-monster].[line break][speech style of current-monster]'Gotcha good, didn't I?'[roman type][line break]".

prank-photo is a prank-action.
Definition: prank-photo is eligible:
	let A be 0;
	if diaper quest is 0, now A is the appearance of the player;
	otherwise now A is the cringe appearance of the player;
	if A > 5 and A < 20 - the favour of current-monster, decide yes;
	decide no.
To execute (P - prank-photo):
	let A be the appearance of the player;
	say "Suddenly, [current-monster] puts [his of current-monster] arm over your shoulder.[line break][speech style of current-monster]'Say cheese!'[roman type][line break][BigNameDesc of current-monster] has taken a quick photograph of you both with [his of current-monster] smartphone.[line break][if the player is modest][variable custom style]What?! No, not while I look like this![line break][end if][speech style of current-monster]'I just couldn't resist taking a selfie with you when you look so [if diaper quest is 1]cute[otherwise if A < 10]cute and slutty[otherwise]utterly whorish[end if] like this!'[roman type][line break]Before you can object, [NameDesc of current-monster] has uploaded the photo of you both somewhere.[line break][variable custom style]Wait, was that to the REAL Internet? How many people will see it?![line break][speech style of current-monster]'I bet this one gets lots of upvotes!'[roman type][line break][BigNameDesc of current-monster] giggles happily.";
	let T be "in a selfie with your fellow student [student-name of current-monster]";
	if diaper quest is 1 and the appearance of the player < the cringe appearance of the player, now A is the cringe appearance of the player;
	compute digital reputation damage T strength (A) quality (a random number between 1 and 2).

prank-condom is a prank-action.
Definition: prank-condom is eligible:
	if condom fetish is 1 and the current-rank of current-monster > 1 and there is worn condom pinnable currently uncovered clothing, decide yes;
	decide no.
To execute (A - prank-condom):
	let C be a random worn condom pinnable currently uncovered clothing;
	let N be the current-rank of current-monster - 1;
	say "[speech style of current-monster]'Gotcha!'[roman type][line break][BigNameDesc of current-monster] has taken advantage of a moment you weren't looking to sneak up to you and pin [if N is 1]a used condom[otherwise][N] used condoms[end if] to your [ShortDesc of C][one of]! Due to the rules of this weird universe, it now can't be removed without biting it, which will cause you to get a mouthful of the [semen] inside...[or].[stopping]";
	increase the used condoms of C by N.

Part - Damage

To compute damage reaction of (M - a student):
	if M is friendly:
		say "[big he of M] [if M is asleep]wakes up, [end if]screams, and turns to run away!";
		now the scared of M is 100;
		anger M;
		repeat with N running through staff members in the location of M:
			now N is interested;
			compute N protecting against M;
	otherwise:
		say "[big he of M] screams [if M is uninterested]in fury[otherwise]even louder[end if]!";
	now the sleep of M is 0.

Definition: a student is automatically banishable: decide yes. [Will this NPC automatically resolve their disappearance rather than giving the player options on what to do?]
To say BanishFleeFlav of (M - a student):
	say "[speech style of M]'This school sucks! I'm never coming back!'[roman type][line break][BigNameDesc of M] sprints for the exit!".
To compute banishment of (M - a student):
	let N be a random staff member in the location of the player;
	if N is monster and armband is held:
		say "[BigNameDesc of N] growls with anger.[line break][speech style of N]'You've lost us [one of]a[or]another[stopping] student, [bitch]!'[roman type][line break][NameDesc of N] mutters some words under [his of N] breath. Suddenly your [armband] fizzles into thin air!";
		now armband is in Holding Pen.

Part - Conversation

Definition: a student is fluff-question-appropriate:
	if the player is in a predicament room, decide no;
	decide yes.

To say FirstResponse of (M - a student):
	say "[speech style of M]'Hello.'[roman type][line break]".

To say RepeatResponse of (M - a student):
	say "[speech style of M]'Hello again.'[roman type][line break]".

To say WhoQuestion of (M - a student):
	say "[variable custom style]'What's your name?'[roman type][line break]".

To say WhereQuestion of (M - a student):
	say "[variable custom style]'[if the rank of the player <= 1]Where [one of]are we?'[or]am I?'[at random][otherwise]What's the best way to increase my rank?'[end if][roman type][line break]".

To say EscapeQuestion of (M - a student):
	say "[variable custom style]'What stuff is there to find deeper in the school?'[roman type][line break]".

To say AdviceQuestion of (M - a student):
	say "[variable custom style]'Any advice for an eager student?'[roman type][line break]".

To say WhoAnswer of (M - a student):
	say "[speech style of M]'My name is [student-name of M], at least until a teacher changes it!'[roman type][line break]".

To say WhereAnswer of (M - a student):
	say "[speech style of M]'[if the rank of the player <= 1]We're in [slut school].'[otherwise]The better you are at being a good girl, the higher rank you'll be able to reach.'[end if][roman type][line break]".

To say StoryAnswer of (M - a student):
	say "[speech style of M]'I came to this school to learn to be a better [if diaper quest is 1]girl[otherwise]slut[end if]. What more do you need to know?'[roman type][line break]".

To say EscapeAnswer of (M - a student):
	say "[speech style of M]'Nicer, cosier rooms, that's for sure. And maybe even some cool items.'[roman type][line break]".

To say AdviceAnswer of (M - a student):
	say "[speech style of M]'You should try and pace yourself. Trying to jump in the deep end before you're ready probably won't go well.'[roman type][line break]".

To compute teaching of (M - a student):
	say "[speech style of M]'Err, that's what the teachers are here for...'[roman type][line break]".

To say DismissalRequestVixen of (M - a student):
	say "'[if the player is a nympho and diaper quest is 0]Look! Over there! Those students are having unauthorised sex[otherwise if the player is a nympho]Look! Over there! That student is going in [his of a random student] nappy[otherwise if the intelligence of the player < 6]Look, over there! A distraction[otherwise]Didn't you hear? There's a fight going on over there[end if]!'".

To say DismissalResponseVixen of (M - a student):
	say "[speech style of M]'[if M is interested]Haha, pull the other one.'[otherwise]OMG! I'll be right there!'[end if][roman type][line break]".

To decide which number is the DismissalPowerToilet of (M - a student):
	if the rank of the player <= 1, decide on 100;
	decide on 2.

To say DismissalResponseToilet of (M - a student):
	say "[speech style of M]'[if M is interested]Nu-uh. If you're going to go, you're going to have to let me watch[otherwise if diaper quest is 0]Bo-oring. Fine[otherwise]Fine. But you should really think about using diapers, it'll make the teachers more happy with you[end if].'[roman type][line break]".

To say ToiletReactionFlav of (M - a student):
	if diaper quest is 0:
		say "[BigNameDesc of M] touches [himself of M] as [he of M] watches.[line break][speech style of M]'[one of]I don't know why I find this so hot, but I do. What's wrong with me[or]Are you getting off on the fact that I'm watching you[or]Do you know how hot you look right now[in random order]?'[roman type][line break][moderateHumiliateReflect]";
	otherwise if the diaper-duration of headmistress > 0:
		say "[BigNameDesc of M] frowns.[line break][speech style of M]'In the future, I'll rat you out to a teacher, probably.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] [one of]pouts[or]whines quietly[or]harrumphs[then at random].[line break][speech style of M]'[one of]How come you can make it so easily and I'm still struggling?'[or]I was sure you weren't going to make in time.'[or][big he of the player] made it. Drat.'[then at random][roman type][line break]";
		HappinessDown M.

To decide which number is the DismissalPowerBursting of (M - a student):
	decide on 2.

To say DismissalResponseBursting of (M - a student):
	if there is a worn diaper:
		say "[speech style of M]'[if M is interested]Ooh, goody! I can't wait to watch your face as you wet your nappy in front of me[otherwise]Fair enough[end if].'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[if M is interested]Uh-oh, [NameBimbo][']s gonna wet [himself of the player]! Come and see[otherwise]Don't let the teachers catch you having an accident[end if]!'[roman type][line break]".

To uniquely destroy (M - a student):
	now most-recent-furious is M.

[This is the object used for the team predicament where the student is bound behind the player]

quiz-partner is a clothing. quiz-partner is unique. quiz-partner has a person called the bound-target.
quiz-partner is crotch-intact. [This flags that it covers the pussy and ass]
Definition: quiz-partner is layer-concealing: decide no. [It doesn't prevent things layered underneath it from being seen]
Definition: quiz-partner is removable: decide no.
Definition: quiz-partner is fluid vulnerable: decide no.
Definition: quiz-partner is live: decide yes.
Definition: quiz-partner is nudism-enabling: decide yes.
The printed name of quiz-partner is "[if bound-target of item described is student][student-name of (bound-target of item described)][otherwise]ERROR: no target for quiz-partner clothing item[end if]". The text-shortcut of quiz-partner is "qzp".

To decide which figure-name is clothing-image of (C - quiz-partner):
	if diaper quest is 0 and the player is in Predicament01 and the questionFails of team-quiz-predicament < 2, decide on figure of quiz predicament room;
	decide on figure of quiz predicament.

To say ClothingDesc of (C - quiz-partner):
	let ST be the bound-target of C;
	if ST is a student:
		if diaper quest is 0, say "[BigNameDesc of ST] has [his of ST] tongue piercing tightly attached to your [if the player is possessing a scrotum]testicle cuffs[otherwise if the player is possessing a vagina]clit piercing[end if]. This means that you can't stand up and [he of ST] has to follow you around wherever you go.";
		otherwise say "[BigNameDesc of ST] has [his of ST] collar connected to your ankles with a short length of rope that runs through D-rings in your thigh bindings, which means [his of ST] face presses into the seat of your diaper with every crawling movement you make.".

To say MuchTooHumiliatingFlav of (C - quiz-partner):
	say "I can't let myself be seen like this!".

To decide which number is the initial outrage of (C - quiz-partner):
	decide on 20.

To compute SelfExamineDesc of (C - quiz-partner):
	say ClothingDesc of C.

To say ShortDesc of (C - quiz-partner):
	let ST be the bound-target of C;
	if ST is a student, say "[student-name of ST]";
	otherwise say "BUGGED STUDENT".

To say NameDesc of (C - quiz-partner):
	say ShortDesc of C.
To say BigNameDesc of (C - quiz-partner):
	say ShortDesc of C.

To say MediumDesc of (C - quiz-partner):
	let ST be the bound-target of C;
	if ST is a student, say "student called [student-name of ST] bound [if diaper quest is 0]attached to your [asshole][otherwise]face-first into your diaper[end if]";
	otherwise say "BUGGED STUDENT".

To compute squirt declarations into (C - quiz-partner):
	let ST be the bound-target of C;
	say "You emit a pained whine as your floodgates open, and you begin powerfully expelling pints of [if watersports fetish is 1]murky[otherwise]creamy[end if] sludge from your [asshole], right into [NameDesc of ST][']s face, onto [his of ST] tongue and into [his of ST] mouth.".

To SilentSquirt (L - a liquid-object) On (C - quiz-partner) by (N - a number):
	if C is unsoaked:
		let ST be the bound-target of C;
		say "[one of]There's literally nothing [he of ST] can do about it other than cough and splutter as you paint [him of ST] with the [if watersports fetish is 1]butt juices[otherwise]asscum[end if][or][BigNameDesc of ST] coughs and splutters as [he of ST] is forced to take the nasty liquid into [his of ST] mouth[stopping].";
		let R be the location of ST;
		now ST is in the location of the player; [so that the happiness flavour comes through]
		HappinessDown ST by 2;
		now ST is in R;
		now C is soaked;
	PuddleUp L by N / 2;

Check standing when quiz-partner is worn:
	say "That's not practical while [quiz-partner] is bound to you." instead.

To compute quiz partner messing:
	let ST be the bound-target of quiz-partner;
	if diaper messing < 7 or (rectum >= 30 and asshole is not actually occupied), say "You emit a pained whine as your floodgates open, and you begin depositing what feels like a gallon of [if diaper messing >= 7]spicy curry aftermath[otherwise][urine][end if] on top of [NameDesc of ST][']s face.[line break][speech style of ST]'Nooo you Bit-GLMPH!'[roman type][line break][big his of ST] exclamation is cut off by the seat of your diaper expanding and engulfing [his of ST] face, forcing [him of ST] to desperately breathe what oxygen [he of ST] can through the soiled fabric.[line break][variable custom style]'I'm sorry [student-name of ST], I'm so sorry!'[roman type][line break]You beg [NameDesc of ST] for forgiveness as you [if rectum >= 30 and asshole is not actually occupied]loudly fill your padding right on top of[otherwise]continue to add to the soggy padding covering[end if] [his of ST] eyes, nose and mouth.";
	otherwise say "You emit a pained whine as you deposit several more chunks of mess on top of [NameDesc of ST][']s face. [big he of ST] wails through the disgusting soiled padding still engulfing [his of ST] face, still only able to breathe what oxygen [he of ST] can get through the fouled fabric.[line break][variable custom style]'I'm really really sorry!'[roman type][line break]You continue to profusely apologise as you empty your bowels directly on top of [his of ST] nostrils and face.";
	let D be a random worn diaper;
	if rectum >= 30 and asshole is not actually occupied:
		MessUp D by 30;
		now rectum is 1;
	UrineSoakUp D by the bladder of the player;
	now the bladder of the player is 0;
	HappinessDown ST by 5.

To compute school periodic effect of (C - quiz-partner):
	force clothing-focus redraw; [because the image can change]
	[cutshow (clothing-image of C) for C;]
	if the player is not in a predicament room or the player is in Predicament20:
		let ST be the bound-target of quiz-partner;
		say "Now that you have reached the final room, the bondage unlocks and [NameDesc of ST] releases [himself of ST]. [big he of ST] quickly runs away from you, through the portal, without saying a word.";
		only destroy quiz-partner;
		distract ST.

To say CurrentlyVisibleFlav of (C - quiz-partner):
	say "".

Student Framework ends here.
