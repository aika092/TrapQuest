Teachers Pink Diamond by Monster begins here.

To say MediumDesc of (M - a pink-diamond-teacher):
	say "pink diamond teacher [teacher-name of M]".

Part - Pink Diamond Teacher Hyacinthe

teacher-hyacinthe is a pink-diamond-teacher.

The text-shortcut of teacher-hyacinthe is "tehy".

Figure of hyacinthe is the file "NPCs/School/Teacher/teacher9a.png".
Figure of sex enslaved hyacinthe is the file "NPCs/School/Teacher/teacher9b.png".
Figure of diaper enslaved hyacinthe is the file "NPCs/School/Teacher/teacher9c.png".

To decide which figure-name is the pacified-image of (M - teacher-hyacinthe):
	if M is diaper-enslaved, decide on figure of diaper enslaved hyacinthe;
	decide on figure of sex enslaved hyacinthe.

To decide which figure-name is the monster-image of (M - teacher-hyacinthe):
	decide on figure of hyacinthe.

To say MonsterDesc of (M - teacher-hyacinthe):
	if M is diaper-enslaved:
		say "[teacher-name of M][']s dark red bodycon dress has been swapped out for a bright red onesie patterned with love-hearts, complete with a thick diaper. Matching baby booties adorn [his of M] feet. A red collar around [his of M] neck, a red pacifier in [his of M] mouth, and a pair of cuffs keeping [his of M] arms bound behind [his of M] back completely remove any sense of threat or power. [big he of M] looks absolutely furious at [his of M] new assignment as baby slave and would no doubt go on a murderous rampage if [he of M] ever managed to escape.";
	otherwise if M is sex-enslaved:
		say "[teacher-name of M][']s dark red bodycon dress has been entirely removed - all that remains is the fur sections at the collar and wrists which have been connected by short chains, turning them into strict wrist-collar bondage which keeps [his of M] hands by [his of M] shoulders at all times. Matching furry cuffs keep [his of M] ankles close together, locked into baby pink platform boots - definitely not [his of M] style. The red marks on [his of M] bare backside are evidence of frequent and recent spankings. A spider gag keeps [his of M] mouth permanently open. [big his of M] breasts, pussy and ass are all completely exposed. [big he of M] looks absolutely furious at [his of M] new assignment as a slave and would no doubt go on a murderous rampage if [he of M] ever managed to escape.";
	otherwise:
		say "This tall hourglass-shaped [man of M] is wearing a dark red short bodycon dress with white fur lining at the collar. [big he of M] also has matching red elbow-length gloves, with more matching fur at the wrists. [big his of M] short red chunky heels, perfect posture, elegant gait and welcoming smile give [him of M] an aura of dignity, grace and power. If the headmistress is the captain of this vessel, you get the sense that this [man of M] is [his of headmistress] First Mate.".

The teacher-name of teacher-hyacinthe is "Hyacinthe".

To say WhoAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'Oh what a lovely question, thank you for asking. I like to think that I help people let out who they truly are deep inside, and feel proud about it rather than ashamed.'[roman type][line break]".

To say WhereAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'[if the rank of the player <= 1]Somewhere you can feel completely safe. Welcome to your new home!'[otherwise]Oh darling, I can tell you're on the right track already! A burning desire to improve yourself and reach the next rung on the ladder is the most important quality you can have.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'Oh honey, I would love to let you skip ahead and find out that sort of thing already, but it wouldn't be fair on the other students now, would it? But if you put your mind to it I just know that you'll be able to find out for yourself in no time.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-hyacinthe):
	say "[speech style of M]'Our beloved headmistress keeps this place going, as a safe haven from the outside world, where everyone is completely free to become exactly who they were born to be.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'What's important is that you become PROUD of yourself for what you really are. If you try to fight it, nobody will be happy. But if you embrace your true self, then we can all have a lot of fun. That's the lesson you need to not just listen to, but wholly understand.'[roman type][line break]".

To compute teaching of (M - teacher-hyacinthe):
	say "[speech style of M]'[if the rank of the player < 4]Oh sweetie, one day soon I'm sure you'll be ready for my lessons, but as of right now I'm afraid you haven't progressed enough to be able to handle what awaits you in the pink diamond classroom[otherwise if the rank of the player is 4]Yes dear, that's why I'm here[otherwise]I'm afraid I've taught you all that I can. You're ready for what lies ahead[end if].'[roman type][line break]".

hypno-lesson is a lesson. The lesson-teacher of hypno-lesson is teacher-hyacinthe.
hypno-lesson has a number called traitor-hypno.

Definition: hypno-lesson (called L) is lesson-appropriate:
	if chess-lesson is appropriate, decide no; [Chess lesson is way better at the moment]
	decide yes.
To decide which number is the min-students of (L - hypno-lesson):
	decide on 0.

To compute teaching of (L - hypno-lesson):
	allocate 6 seconds;
	let M be lesson-teacher of L;
	let STN be the number of students in the location of the player;
	let ST be a random student in the location of the player;
	let hypno-strength be 5 - (the magic-power of the player / 5);
	if hypno-strength < 1, now hypno-strength is 1;
	if hypno-strength >= 5, now hypno-strength is 9999;
	say "[BigNameDesc of M] sits on the ground, legs crossed. Several candles surround the edges of the room, providing the only light. [if STN > 1]The other students are also sitting cross-legged, in a semi-circle in front of [him of M]. [big he of M] beckons you to come join them[otherwise if STN is 1][BigNameDesc of ST] is sitting to [his of M] left, also cross-legged. You are beckoned to come sit to [NameDesc of M][']s right[otherwise][big he of M] beckons you to come sit with [him of M][end if].[line break][speech style of M]'Today is about learning to let your inhibitions go, through... [']breathing exercises[']. Come, sit with me, close your eyes, and listen to my voice.'[roman type][line break]The air in the room is heavy, and this, combined with your closed eyes and [NameDesc of M][']s hypnotic humming, quickly takes you into a deep trance. You feel real magic power surging from [NameDesc of M] into your body and soul.[paragraph break]";
	MagicPowerUp 1;
	say "[first custom style]'Help your friends.'[line break]'Your friends need your help.'[line break]'Encourage your friends.'[line break]'Your friends need a little push.'[line break]'Support your friends.'[line break]'Your friends need to be better.'[line break][second custom style][big he of ST]'s not slutty enough.[line break][first custom style]'Help your friends be sexy.'[line break]'Help your friends get sex.'[line break]'Help your friends choose sex.'[second custom style]Help my friends choose submission.[line break][first custom style]'Help your friends have fun.'[line break]'Being submissive is fun.'[line break]'Your friends trust you.'[line break]'Trust your friends to be submissive.'[line break][second custom style]It's not betraying their trust...[line break][first custom style]'Betray them if you must.'[line break][second custom style]They trust me to support them.[line break][first custom style]'You support them to be the best them.'[line break][second custom style]I support them to be the best them.[line break][first custom style]'Then betray them to support them.'[line break][second custom style]I...[roman type][paragraph break]";
	say "[if hypno-strength is 9999]As someone with hardly any magic power, you can feel that the hypnotism is threatening to completely overpower you. If you don't fight against it, you'll never be able to prevent yourself from betraying your friends ever again[otherwise if hypno-strength >= 3]As someone with not much magic power, the hypnotism is likely going to stick for a long time. You probably won't be able to shake it off until it has triggered 3 or 4 times[otherwise if hypno-strength is 2]As someone with a decent amount of magic power, the hypnotism is likely going to stick for only a short amount of time. You probably will be able to shake it off after it has triggered a couple of times[otherwise]Thanks to all your magic power, the hypnotism is unlikely to stick for long. You'll probably be able to shake it off after the first time it triggers[end if].";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set numerical response 1 to "Fight against the hypnosis (You imagine you probably won't get promoted but also the hypnosis won't work.)";
	set numerical response 2 to "Allow the hypnosis to take hold (You'll be forced to 'betray your friends' [if hypno-strength is 9999]forever[otherwise]until you can shake off the hypnosis[end if].)";
	compute multiple choice question;
	if player-numerical-response is 1:
		say "[second custom style]I won't betray my friends.[roman type][paragraph break]You open your eyes to find that [NameDesc of M] is staring directly at you, smiling gently, but with something cold in [his of M] eyes.[line break][speech style of M]'Disappointing. You still need help letting go of your inhibitions.'[roman type][line break]";
		if there is a worn tattoo and demongirl tattoo is actually summonable:
			say "[BigNameDesc of M] flicks [his of M] wrist, and you yelp as you feel a [demongirl tattoo] appear on your shoulder!";
			summon demongirl tattoo;
			try examining demongirl tattoo;
	otherwise:
		say "[second custom style]I... betray my friends.[roman type][paragraph break]You open your eyes to find that [NameDesc of M] is staring directly at you, smiling gently, but with something cold in [his of M] eyes.[line break][speech style of M]'Oh yes [NameBimbo], you've passed with flying colours.'[roman type][line break]";
		now the traitor-hypno of L is hypno-strength;
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Scarlet";
		now the armband-print of armband is "scandal";
		say ExamineDesc of armband;
	repeat with S running through students in the location of the player:
		say "[BigNameDesc of M] turns to [NameDesc of S].";
		if S is promotable:
			say "[speech style of M]'You've done well today, [student-name of S].'[roman type][line break]";
			promote S;
		otherwise if S is demotable and armband is pure diamond:
			say "[big he of S] looks terrified.[line break][speech style of S]'No, this is wrong, this is so wrong[one of]! I won't wanna... I can't remember what, but I know it's bad[or][stopping]!'[roman type][line break][big he of S] looks at you.[line break][speech style of S]'What have you let [him of M] do to you?!'[roman type][line break]";
			FavourDown S by 3;
			say "[BigNameDesc of M] looks furious.[line break][speech style of M]'You clearly do not deserve to be here yet, you useless tramp.[roman type][line break]";
			demote S;
		otherwise:
			say "[speech style of M]'There's still too much [one of]hesitance[or]reluctance[or]rebellion[then at random] in you, [student-name of S]. Maybe next time.'[roman type][line break]";
	if armband is pure diamond, update students. [an important line which makes boring old students disappear and new cool ones appear]

enema-tag-lesson is a lesson. The lesson-teacher of enema-tag-lesson is teacher-hyacinthe.
Definition: enema-tag-lesson is lesson-appropriate:
	if diaper quest is 1 and the player is not a february 2021 diaper donator, decide no;
	if diaper quest is 0 and the player is not a february 2021 top donator, decide no;
	repeat with C running through worn clothing:
		if C is penetrating asshole and (C is glued or C is cursed or C is locked), decide no;
	[if diaper quest is 0 and (a2m fetish < 2 or watersports fetish is 0), decide no;]
	if the number of alive lesson-appropriate students < 2, decide no;
	decide yes.

To compute teaching of (L - enema-tag-lesson):
	let M be the lesson-teacher of L;
	let ULA be a random ultimate-lesson-actor;
	let LQ be semen;
	set up gym lesson of M;
	say "You all obediently follow [NameDesc of M] to the gym. A racetrack lines the outside and a large sign has been put up at the side that reads 'ENEMA RUN 2021'. [one of]Uh-oh[or]Here we go again[stopping].[line break][speech style of M]'Welcome to the latest version of the classic Enema Run.'[roman type][line break]";
	if diaper quest is 1:
		now LQ is water;
		let D be plain-massive-diaper;
		let K be a random worn knickers;
		if K is clothing:
			now K is in the location of the player;
		only destroy D;
		summon D uncursed;
		say "You are all given very bulky white diapers to wear, giving you each a bit of a waddle. Not really the ideal type of clothing for sprinting. ";
	repeat with C running through worn clothing:
		if C is penetrating asshole:
			say "Your [C] is removed.";
			now C is carried by the player;
			dislodge C;
	if watersports fetish is 1, now LQ is urine;
	AssFill 20 with LQ;
	now the fatigue of the player is 0; [Needed for balance]
	let distancePerLap be 10;
	let lapsToWin be 5;
	now the stance of the player is 0;
	say "You are made to bend over and enema kits are used to slowly but surely fill your bellies with [LQ]. Your bellies start to visibly expand until you all look nine months pregnant. [one of]While the enemas are going in, [NameDesc of M] gives a briefing. [big he of M] points to a [man of shopkeeper] wearing a full black zentai bodysuit that covers even [his of shopkeeper] face.[line break][speech style of M]'The rules are as follows. In order to get a promotion, all you have to do is make it [lapsToWin] times around this racetrack. But that [man of shopkeeper] there has been instructed to hunt down and hump the student who [bold type]most recently expelled their enema[speech style of M] and [bold type]has not yet refilled their belly to the brim[if diaper quest is 1] or is not wearing a clean diaper[end if]. [speech style of M]Moreover, [he of shopkeeper][']s allowed to run through the middle of the track, so there's no escaping [him of shopkeeper] for too long. What this means is that it's very dangerous to try and run the race without a full belly[if diaper quest is 1] and a diaper[end if]. You'll find enema refilling kits at the finish line, so you can decide to have a [']pit stop['] at the end of any lap you choose. You are not allowed to run backwards, so either stop at the line or don't, it's up to you! You can also abandon the race at any time by stepping off of the track, but then you won't be promoted[if a2m fetish is 2 and watersports fetish is 1]. Also, as long as there's at least one winner, the first person to abandon gets a punishment[end if].'[roman type][line break][or][stopping]You are all led to the starting line and then with a bang the race begins.";
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	let LST be the list of people in the location of the player; [turn order]
	repeat with ST running through students in the location of the player:
		now the lessonInt1 of ST is 0; [distance travelled]
		now the lessonInt2 of ST is 0; [times humped]
		now the student-diaper-state of ST is 0; [enema situation]
	let playerDistance be 0; [player distance travelled]
	let LSZ be a list of people; [zentai target stack]
	let latestZentaiTarget be M; [who was the zentai man targeting on his last turn]
	let punishmentTarget be M; [who abandoned first]
	let LSP be a list of people; [people to promote]
	let LSS be a list of people; [people skipping a turn to 'refuel']
	let LSE be a list of people; [people skipping a turn to expel]
	let zentaiDistance be -999; [distance from zentaiMan to target; -999 is special case where he is standing in middle of field]
	let M1 be 0; [player enema pressure]
	while the number of entries in LST > 1:
		repeat with ST running through LST:
			let LSZE be the number of entries in LSZ;
			if ST is yourself: [display info]
				say "[line break]SUMMARY:[line break]";
				repeat with RNR running through LST:
					if RNR is a student:
						let lapD be the remainder after dividing lessonInt1 of RNR by distancePerLap;
						say "[BigNameDesc of RNR] is [(lapD * 100) / distancePerLap]% of the way through lap [1 + (lessonInt1 of RNR / distancePerLap)]. [big he of RNR] [if the student-diaper-state of RNR is 0]has a full belly[otherwise if diaper quest is 0]has an empty belly[otherwise if diaper messing >= 3]has a full messy [his of RNR] diaper[otherwise]has a full diaper[end if].[roman type][line break]";
					otherwise if RNR is yourself:
						let lapD be the remainder after dividing playerDistance by distancePerLap;
						say "[input-style]You[roman type] are [(lapD * 100) / distancePerLap]% of the way through lap [1 + (playerDistance / distancePerLap)]. You [if the total squirtable fill of belly > 0]have a full belly[otherwise if diaper quest is 0]have an empty belly[otherwise if diaper messing >= 3]have a full messy [his of RNR] diaper[otherwise]have a full diaper[end if][if the player is very tired][bold type]. You are very tired[otherwise if the player is tired][bold type]. You are tired[end if].[roman type][line break]";
				say line break;
			if ST is M: [zentai man's turn]
				if LSZE > 0:
					if zentaiDistance > 0, decrease zentaiDistance by 1; [hunting someone down]
					let TGT be entry LSZE in LSZ;
					if TGT is not latestZentaiTarget:
						if zentaiDistance >= -1 or zentaiDistance <= -999: [humping not started]
							say "[bold type]The [man of shopkeeper] in black turns to focus on [YouDesc of TGT]![roman type][line break]";
							if zentaiDistance >= 1: [chasing another racer]
								now zentaiDistance is a random number between 1 and 2;
							otherwise if zentaiDistance <= -999: [standing in the middle]
								now zentaiDistance is 1;
							otherwise:
								let pos1 be playerDistance;
								let pos2 be playerDistance;
								if latestZentaiTarget is not yourself, now pos1 is lessonInt1 of latestZentaiTarget;
								if TGT is not yourself, now pos2 is lessonInt1 of TGT;
								now pos1 is the remainder after dividing pos1 by distancePerLap;
								now pos2 is the remainder after dividing pos2 by distancePerLap;
								let pos1 be pos1 - pos2;
								if pos1 < 0, now pos1 is pos1 * -1;
								now zentaiDistance is the square root of pos1;
							if TGT is yourself and latestZentaiTarget is student, HappinessUp latestZentaiTarget by 1;
							now latestZentaiTarget is TGT;
						otherwise: [humping already started so will be finished]
							now TGT is latestZentaiTarget;
					if zentaiDistance >= -1:
						say "[bold type]The [man of shopkeeper] in black sprints across the grass towards [YouDesc of TGT]! [roman type][one of]Because [he of shopkeeper][']s allowed to go across the centre of the field, there's no way to stop [him of shopkeeper] gaining on [if TGT is yourself]you[otherwise][him of TGT][end if]! [or][stopping][big he of shopkeeper] [if zentaiDistance <= 0][bold type]is in catching range[otherwise if zentaiDistance is 1]will be in catching range in [bold type]one turn[otherwise]will be in catching range in [zentaiDistance] turns[end if].[roman type][line break]";
						if zentaiDistance is 0, say "[big he of shopkeeper] hasn't managed to catch [if TGT is yourself]you[otherwise][him of TGT][end if] yet.";
					if zentaiDistance <= -1: [humping]
						if zentaiDistance is -1: [start of humping]
							say "[bold type]The [man of shopkeeper] in black [if TGT is listed in LSS]grabs [YouDesc of TGT] [bold type]from behind[otherwise]tackles [YouDesc of TGT] [bold type]to the ground[end if]! [roman type]";
							if TGT is listed in LSS:
								remove TGT from LSS;
								say "The enema nozzle is yanked out of [if TGT is yourself]your[otherwise][student-name of TGT][']s[end if] butthole. ";
								if diaper quest is 1:
									say "[big he of shopkeeper] forces [YouDesc of TGT] back into [if TGT is yourself]your[otherwise][his of TGT][end if] soiled diaper! ";
									now plain-massive-diaper is worn by the player;
									force immediate clothing-focus redraw;
									zero focus stuff;
									display focus stuff;
							if diaper quest is 0:
								say "[big his of shopkeeper] erect [manly-penis] springs free from the crotch region of [his of shopkeeper] zentai and within moments is pressing against [if TGT is yourself]your[otherwise][student-name of TGT][']s[end if] asshole... and then it's shoved inside![line break][speech style of TGT]'[one of]Aaahn!'[or]Fuuuuckkkk!'[or]Haaaaaah!'[or]Eeeeeee!'[in random order][roman type][line break]The [man of shopkeeper] in black begins ass-fucking [YouDesc of TGT] for all [he of shopkeeper][']s worth.";
							otherwise:
								say "[big he of shopkeeper] starts humping away at the [if diaper messing >= 3]filth-filled[otherwise]soggy[end if] seat of [if TGT is yourself]your[otherwise][student-name of TGT][']s[end if] padding, making nasty squelchy sounds as [he of shopkeeper] bashes repeatedly against [if TGT is yourself]your[otherwise][student-name of TGT][']s[end if] [if TGT is yourself][player-crotch][otherwise]crotch[end if]!";
						otherwise:
							if diaper quest is 1, say "[bold type]The [man of shopkeeper] in black continues to hump and squelch against [if TGT is yourself]your[otherwise][student-name of TGT][']s[end if] soiled diaper![roman type][line break]";
							otherwise say "[bold type]The [man of shopkeeper] in black continues to rapidly thrust in and out of [if TGT is yourself]your[otherwise][student-name of TGT][']s[end if] asshole![roman type][line break]";
						decrease zentaiDistance by 1;
						if TGT is yourself:
							if diaper quest is 0:
								now ULA is penetrating asshole;
								ruin asshole;
								dislodge ULA;
							otherwise:
								ruin vagina;
							update arousal;
							if refractoryperiod > 0 or zentaiDistance < ( -3 - diaper quest):
								if refractoryperiod > 0, say severeHumiliateReflect;
								if diaper quest is 0 and zentaiDistance < -3:
									say "The [man of shopkeeper] in black grunts from behind [his of shopkeeper] mask as [he of shopkeeper] orgasms! [big he of shopkeeper] pulls out as [he of shopkeeper] ejaculates.";
									UnannouncedSquirt semen on thighs by (the semen load of ULA);
								say "[bold type]The [man of shopkeeper] in black seems satisfied by this, and turns away from you.[roman type][line break]";
								remove yourself from LSZ;
								now zentaiDistance is 0;
						otherwise:
							increase lessonInt2 of TGT by 1;
							if zentaiDistance < a random number between -2 and -3:
								say "[speech style of TGT]'Nooo! I'm cumming!'[roman type][line break][BigNameDesc of TGT] announces in shame as [he of TGT] shudders and screams in climax. After [he of shopkeeper] has left [him of TGT] exhausted and panting, the [man of shopkeeper] in black leaves [student-name of TGT] alone to recover.";
								remove TGT from LSZ;
								now zentaiDistance is 0;
				otherwise if zentaiDistance is not -999:
					now zentaiDistance is -999;
					say "[bold type]The [man of shopkeeper] in black returns to the middle of the racetrack.[roman type][line break]";
					now latestZentaiTarget is M;
				otherwise:
					say "[bold type]The [man of shopkeeper] in black stands patiently, right in the middle of the racetrack.[roman type][line break]";
			otherwise if ST is listed in LSS:
				remove ST from LSS;
				if ST is listed in LSZ, remove ST from LSZ;
				if ST is student:
					now the student-diaper-state of ST is 0;
					say "[BigNameDesc of ST] finishes filling [himself of ST] up with a new [variable LQ] enema.";
				otherwise:
					FatigueDown the buckle threshold of the player / 4;
					AssFill 20 with LQ;
					say "Your belly is once again bulging obscenely as you finish filling your [asshole] up with more [LQ], and you have regained a bit of your energy.";
					if plain-massive-diaper is in the location of the player:
						if diaper messing >= 6:
							let SD be a random off-stage soiled-diaper;
							if SD is soiled-diaper:
								now SD is in the location of the player;
								DiaperPrint SD from plain-massive-diaper;
						clean plain-massive-diaper;
						now plain-massive-diaper is worn by the player;
						force immediate clothing-focus redraw;
						zero focus stuff;
						display focus stuff;
			otherwise:
				if ST is not listed in LSE:
					let D1 be 0; [distance travelled this turn]
					let zentai-targeted be false; [is the zentai man chasing them]
					let zentaied be false; [is the zentai man humping them]
					if ST is latestZentaiTarget and LSZE > 0 and ST is listed in LSZ:
						now zentai-targeted is true;
						if zentaiDistance <= -1 and zentaiDistance > -999, now zentaied is true;
					let raceAbandoning be false; [have they decided to abandon?]
					let pitstopping be false; [have they decided to pitstop?]
					let bellyFill be the total squirtable fill of belly;
					if ST is student:
						if the student-diaper-state of ST is 0, now bellyFill is 30;
						otherwise now bellyFill is 0;
					let previousD be playerDistance;
					if ST is student, now previousD is lessonInt1 of ST;
					let D2 be previousD; [distance travelled after this turn]
					let nextLapDistance be distancePerLap; [exact distance at which the next lap will be complete]
					while nextLapDistance < previousD:
						increase nextLapDistance by distancePerLap;
					if ST is yourself:
						if (diaper quest is 1 and diaper messing < 3) or the number of entries in LSZ is 0:
							if the remainder after dividing playerDistance by distancePerLap is 0, now temporaryYesNoBackground is Figure of enema tag 1 finish line;
							otherwise now temporaryYesNoBackground is Figure of enema tag 1;
						otherwise if zentaiDistance >= 0 or zentaiDistance is -999:
							if the remainder after dividing playerDistance by distancePerLap is 0, now temporaryYesNoBackground is Figure of enema tag 2 finish line;
							otherwise now temporaryYesNoBackground is Figure of enema tag 2;
						otherwise:
							if the remainder after dividing playerDistance by distancePerLap is 0, now temporaryYesNoBackground is Figure of enema tag 3 finish line;
							otherwise now temporaryYesNoBackground is Figure of enema tag 3;
					if zentaied is true:
						if ST is yourself:
							reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
							set numerical response 1 to "endure the humping";
							set numerical response 2 to "abandon the race";
							compute multiple choice question;
							if player-numerical-response is 2, now raceAbandoning is true;
						otherwise:
							if the lessonInt2 of ST > the dedication of ST + a random number between 2 and 3, now raceAbandoning is true;
					otherwise:
						if ST is yourself:
							say "How fast do you run, on a scale from 0 to 9[one of]? [bold type](choosing 0 will allow you to choose to retire, expel your enema, or just stand still)[roman type][line break][or]?[stopping]";
							let CL be 10;
							if the map-window is g-present:
								clear the map-window;
								render YesNoBackground;
							while CL < 0 or CL > 9:
								now CL is the chosen letter - 48;
								if CL < 0 or CL > 9, say "Input not understood - please press a number.";
							let D be (the flat dexterity of the player * CL) / (a random number between 7 and 11); [9 on average]
							if CL > 0:
								if the player is very tired and D > 1:
									now D is D / 2;
									say "Being exhausted massively hinders your speed. ";
								otherwise if the player is tired and D > 1:
									now D is (D * 2) / 3;
									say "Your fatigue significantly hinders your speed. ";
								if the total squirtable fill of belly > 0 and D > 1:
									decrease D by 1;
									say "Your big sloshing [LQ]-filled belly slightly hinders your speed. ";
								if D < 1, now D is 1;
								now D1 is the square root of D;
								increase playerDistance by D1;
								FatigueUp CL * 10;
							otherwise:
								now D1 is 0;
							now D2 is playerDistance;
						otherwise:
							now D1 is a random number between 3 and 4;
							if the student-diaper-state of ST is 0, decrease D1 by a random number between 1 and 2;
							if the dedication of ST <= a random number between -2 and 0, now D1 is 0;
							increase the lessonInt1 of ST by D1;
							now D2 is lessonInt1 of ST;
						if zentai-targeted is true and zentaiDistance is 0 and a random number between 1 and 4 > D1, now zentaiDistance is -1; [zentai man catches and starts humping on his turn]
						if D1 > 0:
							say "[if ST is yourself]You manage[otherwise][BigNameDesc of ST] manages[end if] to run about [(D1 * 100) / distancePerLap]% of the lap.";
						otherwise:
							if ST is yourself:
								reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
								set numerical response 1 to "just stay still for now";
								set numerical response 2 to "abandon the race";
								if the total squirtable fill of belly > 0, set numerical response 3 to "expel your enema";
								compute multiple choice question;
								if player-numerical-response is 2:
									now raceAbandoning is true;
								otherwise if player-numerical-response is 3:
									add yourself to LSE;
								otherwise:
									say "You just stand still for now, and gather your energy.";
							otherwise:
								let DED be the dedication of ST;
								if the lessonInt2 of ST > DED:
									now raceAbandoning is true;
								otherwise if DED <= 0:
									add ST to LSE;
								otherwise:
									say "[BigNameDesc of ST] stays still[if lessonInt1 of ST > 0] and catches [his of ST] breath[end if].";
					if raceAbandoning is false and zentaied is false and previousD <= nextLapDistance and D2 >= nextLapDistance and nextLapDistance < (distancePerLap * lapsToWin) and bellyFill is 0:
						if D2 > nextLapDistance:
							if ST is yourself:
								say "Stop at the finish line to replenish your enema[if diaper quest is 1] and change your diaper[end if]?";
								if the player is consenting:
									now playerDistance is nextLapDistance;
									now pitstopping is true;
							otherwise:
								if the dedication of ST > the lessonInt1 of ST - nextLapDistance:
									now the lessonInt1 of ST is nextLapDistance;
									now pitstopping is true;
						otherwise:
							if ST is yourself:
								say "Replenish your enema[if diaper quest is 1] and change your diaper[end if]?";
								if the player is consenting:
									now pitstopping is true;
							otherwise:
								if zentaiDistance > 1 or LSZE is 0 or ST is not listed in LSZ, now pitstopping is true;
					if pitstopping is true:
						if ST is yourself, say "You [if diaper quest is 1]remove your diaper, [end if]get on your knees and push an enema nozzle into your [asshole], and relax your colon as you feel it begin to fill up.";
						otherwise say "[BigNameDesc of M] [if diaper quest is 1]removes [his of ST] diaper, and [end if]begins giving [himself of ST] a new enema.";
						add ST to LSS;
						if plain-massive-diaper is worn:
							now plain-massive-diaper is in the location of the player;
							force immediate clothing-focus redraw;
							zero focus stuff;
							display focus stuff;
					if D2 >= distancePerLap * lapsToWin:
						if ST is yourself, say "You make it to the finish line![line break][variable custom style]Huzzah![roman type][line break]You proudly step off of the track.";
						otherwise say "[BigNameDesc of ST] [bold type]makes it to the finish line![roman type] [big he of ST][']s done it, and is now safe! [big he of ST] joins [NameDesc of M] at the sidelines.";
						remove ST from LST;
						add ST to LSP;
						if ST is listed in LSZ, remove ST from LSZ;
					otherwise if raceAbandoning is true:
						say "[speech style of ST]'[one of]I concede[or]I quit[or]Let me out[or]No more[or]Screw this[in random order]!'[roman type][line break]";
						if ST is yourself, say "You [if zentaied is true]pound the ground with your hand, tapping out in submission[otherwise]turn to the side and run off the track[end if], ";
						otherwise say "[BigNameDesc of ST] [if zentaied is true]taps on the ground with [his of ST] hand[otherwise]runs off the side of the track[end if], ";
						say "[one of]quitting the race early[or]conceding the race[or]returning to safety but losing the opportunity for promotion[in random order].";
						remove ST from LST;
						if ST is listed in LSZ, remove ST from LSZ;
				if ST is listed in LST: [need to check they haven't left the race immediately above]
					if ST is listed in LSE: [enema expelled]
						if ST is yourself:
							say "[bold type]You release your hold on the massive pressure and the [if diaper quest is 1 and diaper messing >= 3]messy enema[otherwise][LQ][end if] rockets out of your behind, [roman type]making the most unsavoury noises as it does. [moderateHumiliateReflect]";
							if plain-massive-diaper is worn:
								UrineSoakUp plain-massive-diaper by the soak-limit of plain-massive-diaper - the total-soak of plain-massive-diaper;
								if diaper messing >= 3, MessUp plain-massive-diaper by 20;
								force immediate clothing-focus redraw;
							empty belly;
							now M1 is 0;
						otherwise:
							if diaper quest is 1, say "[BigNameDesc of ST][bold type][']s diaper explodes outwards with a loud wet noise as [he of ST] loses control and expels [his of ST] [variable LQ] enema into [his of ST] padding![roman type][line break]";
							otherwise say "[BigNameDesc of ST] [bold type][one of]squeals[or]exclaims in surprise[or]mewls with shame[or]groans with despair[in random order] as [his of ST] [one of]backdoor explodes[or]sphincter gives up[or]asshole opens[in random order] and the [variable LQ] enema comes [one of]gushing[or]shooting[at random] out.[roman type][line break]";
							now the student-diaper-state of ST is 3;
						remove ST from LSE;
						add ST to LSZ;
					otherwise: [enema held]
						if ST is yourself:
							if the total squirtable fill of belly > 0:
								if M1 >= a random number between 6 and 8:
									say "You can't hold your enema in any longer! [bold type]You fall yo your knees as you feel the floodgates begin to open.[roman type][line break]";
									add yourself to LSE;
								otherwise if M1 > 3:
									say "You grit your teeth and hold [one of]your butthole tight[or]the enema[or]the [LQ] in[purely at random]. The painful cramps [one of]bring tears to your eyes[or]get worse and worse[stopping]!";
									if incontinence > 0 and the player is getting lucky:
										say "[one of]But you're proud of how well you're[or]You're amazed that you're still[stopping] managing to hold it all in[one of]. Your sphincter control must not be as bad as you thought![or].[stopping]";
										decrease incontinence by 1;
									PainUp 1;
								otherwise if M1 is 3:
									say "[bold type]Your belly begins to cramp. Holding the enema in for any longer will hurt.[line break][newbie style](To expel it, you must stand still for a turn.)[roman type][line break]";
								increase M1 by 1;
						otherwise:
							if the student-diaper-state of ST is 0 and the dedication of ST <= a random number between -1 and 0:
								say "[BigNameDesc of ST] [bold type]drops to [his of ST] knees, clutching [his of ST] belly in pain![roman type][line break]";
								add ST to LSE;
			if ST is yourself:
				if refractoryperiod > 0:
					decrease refractoryperiod by 1;
					now aroused-turns is 0; [The player can keep gaining arousal after orgasms. But then some of it will rather quickly drop off after sex ends, if she successfully orgasmed.]
				FatigueDown a random number between 30 and 60;
				refresh the graphics-window; [So that the fatigue bar updates]
	say "[paragraph break]And with that, the race is over.[paragraph break]";
	say "[speech style of M]'What a great race! Let's see... we have [if the number of entries in LSP is 1]just one winner[otherwise][number of entries in LSP] winners[end if] this time.'[roman type][line break]";
	repeat with ST running through LSP:
		if ST is yourself:
			now armband is pure diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Emilia";
			now the armband-print of armband is "enema expert";
			say ClothingDesc of armband;
		otherwise:
			promote ST;
	if the number of entries in LSP > 0:
		if (diaper quest is 0 and a2m fetish >= 2 and watersports fetish is 1 and punishmentTarget is not M) or (diaper quest is 1 and diaper messing >= 6):
			say "[BigNameDesc of M] turns to [YouDesc of punishmentTarget].[line break][speech style of M]'And now, the punishment for the biggest loser.'[roman type][line break][BigNameDesc of M] makes [if punishmentTarget is you]you[otherwise][student-name of punishmentTarget][end if] lie down on the ground, and then gets ";
			let E be the number of entries in LSP;
			repeat with ST running through LSP:
				say "[if ST is student][student-name of ST][otherwise]you[end if][if E is 2] and[otherwise if E > 2],[end if] ";
				decrease E by 1;
			say "to squat over [his of punishmentTarget] face.";
			repeat with ST running through LSP:
				say "[speech style of M]'[if ST is student][student-name of ST][otherwise][NameBimbo][end if], you [if E is 0]first[otherwise]next[end if].'[roman type][line break]";
				if diaper quest is 1:
					say "[BigYouDesc of ST] [if ST is student]lowers [his of ST][otherwise]lower your[end if] [if diaper messing >= 3]filthy[otherwise]soaking wet[end if] nappy onto [if punishmentTarget is student][NameDesc of ST][']s[otherwise]your[end if] face, engulging it, making [if punishmentTarget is student][him of punishmentTarget][otherwise]you[end if] retch and gag [one of]as [if punishmentTarget is student][he of punishmentTarget] struggles[otherwise]you struggle[end if] to breathe[or]some more[stopping].";
					if punishmentTarget is yourself, DiaperAddictUp 1;
				otherwise:
					say "[BigYouDesc of ST] [if ST is student]lowers [his of ST][otherwise]lower your[end if] asshole onto [if punishmentTarget is student][NameDesc of ST][']s[otherwise]your[end if] mouth and push, forcing [if punishmentTarget is student][him of punishmentTarget][otherwise]you[end if] to take the full blast into [his of ST] mouth.[line break][one of][variable custom style]Yuck![roman type][line break][or][speech style of punishmentTarget]'Blllrrrrg!'[roman type][line break][if punishmentTarget is student]It spews out of [his of punishmentTarget] nose as [his of punishmentTarget] mouth overflows.[end if][stopping]";
					if punishmentTarget is yourself:
						now ST is penetrating face;
						FaceFill LQ by 4;
						dislodge ST;
				if ST is yourself:
					if plain-massive-diaper is worn:
						UrineSoakUp plain-massive-diaper by the soak-limit of plain-massive-diaper - the total-soak of plain-massive-diaper;
						if diaper messing >= 3, MessUp plain-massive-diaper by 20;
					empty belly;
					HappinessDown punishmentTarget by 3;
				increase E by 1;
		if yourself is listed in LSP, update students; [an important line which makes boring old students disappear and new cool ones appear]
	DexUp 2;
	say "[speech style of M]'All right, we're all done here. What fun! Class dismissed.'[roman type][line break]";
	now bigGameLoop is 0;
	now temporaryYesNoBackground is figure of small image;
	conclude consenting.


pledge-lesson is a lesson. pledge-lesson can be abandoned.
Definition: pledge-lesson is lesson-appropriate:
	if diaper quest is 1 or pledge-lesson is not abandoned, decide yes;
	decide no.
To decide which number is the min-students of (L - pledge-lesson):
	decide on 0.

A pledge-lesson-object is a kind of object. A pledge-lesson-object has a number called implant.
Definition: a pledge-lesson-object is eligible:
	if the implant of it is 0, decide yes;
	decide no.
To execute (E - a pledge-lesson-object):
	say "BUG - lesson object with no function.".

Figure of pledge Lesson Toilet User Cutscene is the file "Special/Cutscene/cutscene-toilet-curse1.jpg".
Figure of pledge Lesson Toilet Player Cutscene is the file "Special/Cutscene/cutscene-toilet-curse2.jpg".

pledge-lesson-toilet is a pledge-lesson-object.
Definition: pledge-lesson-toilet is eligible:
	if the implant of it is 0 and diaper lover > 0, decide yes;
	decide no.
To execute (E - pledge-lesson-toilet):
	say "[second custom style]I'll never use the big [boy of the player] potty again. If I ever try to use a toilet, I will be dragged down into the punishment realm.[roman type][line break]A large white rune in the air flies down into your chest, right where your heart is. You can feel its magic begin to take hold...";
	now toiletJustUsed is false.

An all later time based rule (this is the toilet punishment rule):
	if the implant of pledge-lesson-toilet is 1 and toiletJustUsed is true:
		compute toilet predicament punishment;
		now toiletJustUsed is false.

To compute toilet predicament punishment:
	if diaper messing >= 3:
		say "Suddenly, the magic curse you got from [NameDesc of lesson-teacher of pledge-lesson] activates! Demonic hands shoot out of the floor and drag you down through the floor, to underneath the toilet. Before you know what's happened, you're on your knees in the thickest diaper you've ever seen, with legs and mittened hands bound behind you by ropes, a ballgag in your mouth, and some kind of tubing stuck down the back of your diaper.";
		unless plain-massive-diaper is worn:
			only destroy plain-massive-diaper;
			repeat with K running through worn knickers:
				silently transform K into plain-massive-diaper;
			unless plain-massive-diaper is worn, summon plain-massive-diaper cursed with silent quest;
		unless rubber mittens is worn:
			repeat with E running through worn hand ready equippables:
				now E is in the location of the player;
			summon rubber mittens cursed with silent quest;
		unless there is a worn gag or face is actually occupied:
			let G be a random small ballgag;
			summon G locked;
		let friend be fancied-friend;
		say "A monitor appears in front of you, showing a public bathroom stall. And then[one of], to your surprise,[or][stopping] your [RelationDesc of friend] [MediumDesc of friend] walks in, with a grimace on [his of friend] face and a bulging belly. [one of][line break][variable custom style]Wait, what? Is this real life? Are they stalking [him of friend] or something?[roman type][line break][or][stopping][big he of friend] groans as [he of friend] [if friend is presenting as female]drops [his of friend] panties from under [his of friend] skirt[otherwise]pulls down [his of friend] jeans[end if] and sits on the can.[line break][first custom style]'Nnghhh, why did I try the bean dip?!'[roman type][line break]You can hear [him of friend] mutter to [himself of friend] as [he of friend] quickly begins to let rip. It's disgustingly loud.[paragraph break]";
		appropriate-cutscene-display Figure of pledge Lesson Toilet User Cutscene;
		say "[one of]You're trying to make sense of all of this as you feel a flow of something hot and slimy on your backside.[line break][variable custom style]No, surely not...![roman type][line break][or]Once again you feel that flow of hot slimy stuff on your backside.[stopping]";
		appropriate-cutscene-display Figure of pledge Lesson Toilet Player Cutscene;
		say "Yep - [MediumDesc of friend][']s super nasty episode is being funnelled directly into your own [plain-massive-diaper]. You wiggle and squirm but the ropes hold you tight, so there's nothing you can do but watch with [horror the diaper addiction of the player] as [he of friend] continues to unload [his of friend] belly and load your padding. The awful smell quickly fills your room, leaving you gagging.[paragraph break]What feels like several minutes pass before [MediumDesc of friend] finally finishes indirectly messing your diaper, with a final ungraceful [italic type]BLART[roman type]. The curse's demonic hands return, quickly undoing your bonds and carrying you back to the [location of the player], but leaving you with an overfilled messy [ShortDesc of plain-massive-diaper][if rubber mittens is worn], [rubber mittens][end if][if there is a worn ballgag] and [ShortDesc of random worn ballgag][end if] as a souvenir.";
		MessSet plain-massive-diaper to 36;
		now the foreign-mess of plain-massive-diaper is 36;
		say "[variable custom style][one of]Oh god... is that really going to happen every time I try to use a toilet from now on?![or]I think maybe I need to stick to diapers[if the diaper addiction of the player < 15]. This is just too gross[end if]...[stopping][roman type][line break]";
	otherwise:
		say "Suddenly, the magic curse you got from [NameDesc of lesson-teacher of pledge-lesson] activates! You feel like your bladder is much weaker than before. Uh-oh...";
		increase incontinence by 2.

pledge-lesson-magic is a pledge-lesson-object.
Definition: pledge-lesson-magic is eligible:
	if diaper quest is 0 and the player is not possessing a vagina and tg fetish is 0, decide no;
	if the implant of it is 0, decide yes;
	decide no.
To execute (E - pledge-lesson-magic):
	say "[second custom style][if diaper quest is 1]Using magic is for grown-ups. Whenever I try to use magic, my body reminds me of how much I need to use my diaper instead[otherwise if the player is possessing a vagina]Using magic is for pussies. Whenever I use magic, my cunt will become more and more desperate for cock[otherwise]Using magic is for pussies. Whenever I use magic, I will become more and more desperate to get a pussy that I can use to serve cock[end if].[roman type][line break]Two smaller white runes in the air fly down into your arms. You can feel their magic begin to work their way towards your shoulders...".
A magic consequences rule (this is the pledge-lesson magic consequence rule):
	if the implant of pledge-lesson-magic is 1:
		if diaper quest is 0:
			say "The magic ripples through your arms, activating the curse you got from [NameDesc of lesson-teacher of pledge-lesson]. ";
			VaginalSexAddictUp 1;
		otherwise:
			say "The magic ripples through your arms, activating the curse you got from [NameDesc of lesson-teacher of pledge-lesson]. Your bladder [if diaper lover > 3]and bowels explode[otherwise]explodes[end if] [if the bladder of the player >= 12]to inhuman levels of fullness[otherwise]with contents until completely full[end if]!";
			increase the bladder of the player by 12;
			if diaper lover >= 3:
				increase rectum by 15;
				increase suppository by 1.

pledge-lesson-resist is a pledge-lesson-object.
Definition: pledge-lesson-resist is eligible:
	if diaper quest is 0, decide yes;
	decide no.
To execute (E - pledge-lesson-resist):
	say "[second custom style]Only a dumb useless slut resists the will of [his of the player] masters. Whenever I [bold type]resist[second custom style] from now on, I will become more and more brainless and stupid.[roman type][line break]A large circular white rune approaches your neck and begins to phase inside you...".

pledge-lesson-panties is a pledge-lesson-object.
Definition: pledge-lesson-panties is eligible:
	if no-panties-fetish is 0, decide yes;
	decide no.
To execute (E - pledge-lesson-panties):
	say "[second custom style]Naughty little minxes like me don't wear normal underwear. From now on, wearing anything except [if diaper lover > 0]diapers [end if][if diaper lover > 0 and diaper quest is 0]and [end if][if diaper quest is 0]crotchless panties [end if]will give me a massive headache.[roman type][line break]A large X-shaped white rune approaches your [AssDesc] and begins to phase inside you...".

pledge-lesson-spit is a pledge-lesson-object.
Definition: pledge-lesson-spit is eligible:
	if diaper quest is 0, decide yes;
	decide no.
To execute (E - pledge-lesson-spit):
	say "[second custom style]Only prudes spit! From now on, if I spit out any mouthfuls, I become desperately thirsty and exhausted.[roman type][line break]A large spherical white rune approaches your [LipDesc] and begins to phase inside you...".

pledge-lesson-mess is a pledge-lesson-object.
Definition: pledge-lesson-mess is eligible:
	if the implant of it is 0 and diaper messing >= 3, decide yes;
	decide no.
To execute (E - pledge-lesson-mess):
	say "[second custom style]When my body tells me to go poo, I should do as I'm told and do a number two![roman type][line break]A large circular white rune approaches your bottom and begins to phase inside you...".

pledge-lesson-yes is a pledge-lesson-object.
To execute (E - pledge-lesson-yes):
	say "[second custom style]A good [boy of the player] should always say yes! When 'yes' is the option that a good obedient [if diaper quest is 1]baby[otherwise]slut[end if] would make, I will never choose no![roman type][line break]A large white rune shaped a bit like a 'Y' approaches your forehead and begins to settle...".

To compute teaching of (L - pledge-lesson):
	now pledge-lesson is abandoned;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	let M be the lesson-teacher of L;
	let LST be the list of students in the location of M;
	say "[BigNameDesc of M] guides you [if the number of entries in LST is 1]and [student-name of entry 1 of LST] [otherwise if the number of entries in LST > 1]all [end if]to kneel down[if the number of entries in LST > 0] in a circle[end if]. With a flourish of [his of M] arms, [NameDesc of M] fills the room with countless floating magic runes, in an unknown language, all glowing a brilliant white.[line break][speech style of M]'Try to think of this as less of a lesson and more of an initiation into our inner circle. All you have to do is remain still and allow me to conduct the [']celebrations['][if the number of entries in LST > 0]. If any of you get up and try to leave, you ALL fail[end if][if diaper quest is 0]. Furthermore, [bold type]this is your only chance to partake in this lesson[speech style of M] - if any of you interrupt it, then the alternate ceremony that you all will have to attend will be much, much more... physical[end if].'[roman type][line break]";
	let ULO be the list of eligible pledge-lesson-objects;
	sort ULO in random order;
	let lessonResists be 1;
	let lessonImplants be 0;
	let maxLessonImplants be a random number between 2 and 3;
	while the number of entries in ULO > 0 and lessonImplants < maxLessonImplants:
		say "[BigNameDesc of M] [one of]begins to sing with a sweet innocent voice. The words are not in a language you've ever heard before, but somehow you can understand the words[or]continues to sing in the foreign language you can somehow understand[or]sings [his of M] magic spell, the meaning forming in your head[stopping].";
		let E be entry 1 in ULO;
		execute E;
		remove E from ULO;
		if lessonImplants is 0, say "You understand that [NameDesc of M] is laying a curse on you, and it's pretty clear what the consequences of that will be if [he of M] is successful. You could [bold type]stand up and leave[roman type], [bold type]resist the curse[roman type] or [bold type]allow it to happen[roman type]. If you spend your energy resisting this curse, you probably won't have the mental strength to resist the next ones.";
		otherwise say "[if lessonResists > 0]Since you haven't resisted a curse yet, you're still able to resist this one, if you choose[otherwise]Since you've already resisted a curse, you can't resist any more[end if].";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "Stand up and leave";
		set numerical response 2 to "Accept the curse";
		if lessonResists > 0, set numerical response 3 to "Resist the curse (you can only do this once)";
		compute multiple choice question;
		if player-numerical-response is 1:
			say "You rip yourself free of the trance and stand up to leave. [BigNameDesc of M] frowns.[line break][speech style of M]'Disappointing. [if the number of entries in LST > 0]Despite your best efforts, thanks to [NameBimbo], you all fail. I imagine you might have lost at least one friend today[otherwise]The other teachers thought you were ready. Clearly they were mistaken. I think you would do well to increase your tolerances before you return here[end if], [NameBimbo].'[roman type][line break]After one final look of derision, [NameDesc of M] leaves the room.";
			repeat with ST running through LST:
				HappinessDown ST by 4;
			now maxLessonImplants is 0; [This is how we indicate that the player left]
		otherwise if player-numerical-response is 3:
			decrease lessonResists by 1;
			say "You scrunch up your eyes and reject the curse. You feel like you've successfully resisted it[if lessonImplants < maxLessonImplants]! But you mind tires and you realise that you won't be able to do that again any time soon[end if].";
		otherwise:
			say "You feel the magic power from the curse settling inside you.";
			MagicPowerUp 1;
			increase lessonImplants by 1;
			now the implant of E is 1;
			say "The curse ebbs and eddies in your body, spreading out to your extremities through your veins. It feels a part of you, now.";
	if maxLessonImplants > 0:
		if diaper quest is 1, now the armband-print of armband is "golden babygirl"; [needs to go before gold ceremony completion]
		otherwise now the armband-print of armband is "golden girl";
		say "[speech style of M]'That's enough!'[roman type][line break][BigNameDesc of M] claps [his of M] hands and you open your eyes.";
		compute gold ceremony completion of M;
		now armband is solid gold;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		say ClothingDesc of armband;
		compute princess reveal of M;
	now bigGameLoop is 0;
	conclude consenting.

To compute gold ceremony completion of (M - a monster):
	let LST be the list of students in the location of M;
	if the number of entries in LST > 0:
		if diaper quest is 1:
			say "[speech style of M]'Congratulations, babies, you did it. You've become perfect diaper lovers. I couldn't be prouder. Now, come kiss my padding and claim your reward.'[roman type][line break]";
			repeat with ST running through LST:
				now ST is unleashed;
				now the student-print of ST is the armband-print of armband;
				say "[BigNameDesc of ST] crawls over and [one of]respectfully[or]lovingly[or]happily[in random order] [one of]kisses[or]nuzzles [his of ST] nose into[or]rubs [his of ST] face in[at random] [NameDesc of M][']s soggy diaper.";
				promote ST;
		otherwise:
			say "[speech style of M]'Congratulations, sluts, you did it. You've become the epitome of modern fuckpuppets. I couldn't be prouder. Now, come kiss my [if M is male]cock[otherwise]clit[end if] and claim your reward.'[roman type][line break]";
			repeat with ST running through LST:
				now ST is unleashed;
				now the student-print of ST is the armband-print of armband;
				say "[BigNameDesc of ST] crawls over and [one of]respectfully[or]sloppily[or]happily[in random order] kisses [NameDesc of M][']s [if M is male][manly-penis][otherwise]clitoris[end if].";
				promote ST;
	otherwise:
		if diaper quest is 1, say "[speech style of M]'Congratulations, [NameBimbo], you did it. You've become the perfect diaper lover. I couldn't be prouder. Now, come kiss my padding and claim your reward.'[roman type][line break]";
		otherwise say "[speech style of M]'Congratulations, [NameBimbo], you did it. You've become the epitome of a modern fuckpuppet. I couldn't be prouder. Now, come kiss my cock and claim your reward.'[roman type][line break]";
	if diaper quest is 1, say "You cross the room and kneel at [NameDesc of M][']s feet, looking up at [his of M] gentle smile.[line break][speech style of M]'Go ahead.'[roman type][line break]You plant your lips on the outside of [his of M] soaked diaper[if the player is feeling dominant], but without breaking eye contact with [him of M] at any time[otherwise]with eyes submissively lowered[end if].";
	otherwise say "You cross the room and kneel at [NameDesc of M][']s feet, looking up at [his of M] gentle smile.[line break][speech style of M]'Go ahead.'[roman type][line break]You plant your lips on [his of M] [if M is male]cockhead[otherwise]clitoris[end if][if the player is feeling dominant], but without breaking eye contact with [him of M] at any time[otherwise] with eyes submissively lowered[end if].";

To compute princess reveal of (M - a monster):
	if ex-princess is caged:
		say "[BigNameDesc of M] continues to speak.[line break][speech style of M]'Now that you've proven your loyalty to our cause, I've got something special to show you. Come with me!'[roman type][line break][BigNameDesc of M] leads you down to the other end of the school.";
		repeat with N running through monsters in the location of the player:
			now N is in the location of ex-princess;
		reveal the school dungeon;
		teleport to the location of ex-princess;
		now the stance of the player is 0;
		say MonsterDesc of ex-princess;
		if diaper quest is 0, say "[BigNameDesc of M] leans against the cell's metal bars.[speech style of M]'This is my favourite toy. And now that you're [if there is a student in the location of the player]all gold-star students[otherwise]a gold-star student[end if], I'm giving you permission to play with [him of ex-princess] too. Just try not to break [him of ex-princess].'[roman type][line break]And with that, [NameDesc of M] leaves you behind.";
		otherwise say "[BigNameDesc of M] leans against the cell wall.[speech style of M]'The diaper pail you saw outside leads into this chamber. In there is the [ShortDesc of headmistress][']s favourite toy. And now that you're [if there is a student in the location of the player]all gold-star students[otherwise]a gold-star student[end if], [he of headmistress] has given you permission to play with [him of ex-princess] too. Just try not to break [him of ex-princess].'[roman type][line break]And with that, [NameDesc of M] leaves you behind.";
		compute mandatory room leaving of M.


Teachers Pink Diamond ends here.
