Teachers Emerald by Monster begins here.

The printed name of emerald-teacher is "[if item described is in the location of the player][TQlink of item described][end if][input-style]emerald teacher [teacher-name of item described][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".


Part - Seraphina

teacher-seraphina is an emerald-teacher. teacher-seraphina is tq-only.

The text-shortcut of teacher-seraphina is "teas".

Figure of seraphina is the file "NPCs/School/Teacher/teacher4.png".

To decide which figure-name is the monster-image of (M - teacher-seraphina):
	decide on figure of seraphina.

To say MonsterDesc of (M - teacher-seraphina):
	say "This short, stocky lady has wavy black hair tied up in a neat bun. Her gothic corset and dress, and steampunk style would be rather unique and eye-catching if it wasn't for the fact that all eyes are invariably drawn to her ginormous K-cup cleavage which is spilling out of her very low cut neckline. She holds what looks like a very old book in one hand. As well as a phallic hollow contraption of an unknown purpose.".

The teacher-name of teacher-seraphina is "Seraphina".

Definition: teacher-seraphina (called M) is fetish appropriate:
	if diaper quest is 1, decide no;
	if max breast size < 9, decide no;
	decide yes.
	
To say WhoAnswer of (M - teacher-seraphina):
	say "[speech style of M]'Can you not guess what [']assets['] I bring to the table?'[roman type][line break]".

To say WhereAnswer of (M - teacher-seraphina):
	say "[speech style of M]'[if the rank of the player is 1]Exactly where you need to be.'[otherwise]Leave your ego at the door.'[end if][roman type][line break]".

To say AdviceAnswer of (M - teacher-seraphina):
	say "[speech style of M]'Just always remember - bigger is better. No exceptions!'[roman type][line break]".


tits-lesson is a lesson. The lesson-teacher of tits-lesson is teacher-seraphina.

To compute teaching of (L - tits-lesson):
	let M be the lesson-teacher of L;
	say "[speech style of M]'Breasts.'[roman type][line break][NameDesc of M] stands at the front of the room with her hands at her hips, her giant chest gently heaving up and down in front of her as she breathes.[line break][speech style of M]'A woman's most important seductive tool, and a great symbol of her power. Why is it then, that so many of you fools do not spend your lives seeking new ways to enhance and empower your primary assets?'[roman type][line break]";
	now seconds is 35;
	if the player is top heavy or the largeness of breasts > 14:
		if breasts is lewdly exposed or the number of worn actually dense top-placed low cut or higher nipple covering clothing is 0:
			say "[NameDesc of M] gestures at you.[line break][speech style of M]'Now this is a woman who has truly strived for perfection, and I am proud to call her my equal.'[roman type][line break][NameDesc of M] strides over to you and then takes a step behind you, grabbing each of your large breasts with one of [his of M] hands, squeezing them gently.[line break][speech style of M]'The texture, the shape, the sheer weight of these puppies screams [']power['], don't you think? I wouldn't want to try and compete with this cutie for attention in a club or bar.'[roman type][line break]After a [if there is worn top-placed rigid nipple covering clothing]final big squeeze[otherwise]cheeky tweak of your nipples[end if], [big he of M] lets go.[line break][speech style of M]'There is nothing more I need to teach you. You may proceed.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Juggz";
			now the armband-print of armband is "buxom beauty";
			say ClothingDesc of armband;
			let S be a random demotable nasty student in the location of the player;
			if S is student:
				say "[S] complains loudly.[line break][speech style of S]'This is bullshit! You can't promote a basic bitch like her just for looking like a slutty tramp!'[roman type][line break][M] flashes her a furious stare.[line break][speech style of M]'[NameBimbo] is the epitome of beauty! You don't deserve to be in my class. No, you don't even deserve to share a rank with these other students!'[roman type][line break]";
				demote S;
				say "[NameDesc of S] gasps in dismay.[line break][speech style of S]'Oh come on!'[roman type][line break]She scowls at you.[line break][speech style of S]'I'm not going to forgive you for this!'[roman type][line break]";
			if the lewdly exposed outrage of breasts is too humiliating:
				say "You try to make it look like you're holding your breasts proudly as you walk out of the room.";
				try going south;
				say "[variable custom style]Gosh, that was so embarrassing! But I think I got away with pretending that I liked having my breasts on display. Now I should really put on some less revealing clothes![roman type][line break]";
			otherwise:
				say "You hold your breasts proudly as you walk out of the room.";
				try going south;
				say "[variable custom style]Hehe, having massive tits really does make life easy![roman type][line break]";
			now seconds is 12;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
		otherwise:
			say "[NameDesc of M] gestures at you.[line break][speech style of M]'Now this is a woman who has truly strived for perfection, but look at that clothing! There's nowhere near enough cleavage showing. It's almost like she is ashamed of the size of her massive titties. That just won't do!'[roman type][line break][big he of M] actually looks rather angry.[line break][variable custom style]Uh-oh...[roman type][line break][big he of M] opens the ancient-looking book that she is holding and turns it to a certain page. She begins reciting a chant in a very bizarre sounding language.[line break][speech style of M]'PUJ VLTU[']BE[']JAJ!'[roman type][line break]The book glows with dark energy which then shoots out and strikes you in the chest!";
			repeat with C running through worn actually breast covering clothing:
				say "Your [ShortDesc of C] disintegrates in a burst of black flame!";
				destroy C;
			if topless permanent fetish is 0:
				say "You suddenly feel very comfortable with having your [BreastDesc] on full display. In fact, the idea of wearing something that covers you up now feels just objectively... wrong. Your magnificent mammaries and proudly erect nipples are destined to be gazed upon! It would be wrong of you to deprive anyone of that wonderful privilege.";
				now topless permanent fetish is 1;
			say "[M] smirks.[line break][speech style of M]'Well I think that's enough excitement for one day! Hopefully you've all learned something about what it TRULY means to own a pair of proper boobs. Until next time.'[roman type][line break][Big he of M] disbands the class.";
	otherwise if the breast-enhancement of nurse > 0 and the number of worn chest tattoos is 0 and breasts is showing cleavage:
		let S be random student in the location of the player;
		say "[big he of M] opens a desk drawer and retrieves several black marker pens.[line break][speech style of M]'Today we will be helping each other learn to be proud of displaying their cleavage. Firstly, let's split into groups.'[roman type][line break][NameDesc of M] assigns people into pairs. You are partnered with [printed name of S].[line break][speech style of M]'You will each be writing a phrase on your partner's cleavage. I want you to come up with something cheeky that will make the wearer's titty-meat nice and eye catching. Don't worry, it's not permanent.'[roman type][line break]Each pair is handed a pen. You are given the pen for your pair, so you go first. [if the player is a nympho]A naughty thought comes to your mind, and you write 'stick your dick here'[otherwise if the player is a pervert]After thinking for a few moments you write 'one for the wank bank'[otherwise]You struggle to think of anything inventive, and end up just writing 'hot stuff'[end if] on [NameDesc of S][']s cleavage.[line break]But then it's her turn. She takes the pen off you and ";
		compute tits marker choice of S;
		if the initial outrage of marker chest tattoo - 2 is too humiliating:
			say "[variable custom style]There's just NO WAY I could let myself be seen like this outside of this room, surely?![roman type][line break]";
		otherwise if the initial outrage of marker chest tattoo is too humiliating:
			say "[variable custom style]Oh come on! Surely this is too far?![roman type][line break]";
		otherwise if the initial outrage of marker chest tattoo + 2 is too humiliating:
			say "[variable custom style]Oh gosh, am I really considering walking around with this written on my cleavage? What will people think?![roman type][line break]";
		otherwise if the initial outrage of marker chest tattoo is too boring:
			say "[variable custom style]Pfft, boring! I could have come up with something way better.[roman type][line break]";
		otherwise:
			say "[variable custom style]I guess this isn't too bad.[roman type][line break]";
		say "[M] makes you stand in a line so that [he of M] can inspect your titty graffiti. Eventually [he of M] reaches you and makes you puff our your chest as she reads the small black letters.";
		compute tits marker reaction of S;
		say "[big he of M] coughs loudly and then raises [his of M] voice.[line break][speech style of M]'Okay, let's raise the stakes a bit. I have a spell that can turn any ink into a permanent tattoo. Anyone who says they are willing to have their words become a permanent public declaration on bosom will graduate this class and become a ruby student. Anyone interested?'[roman type][line break]Do you volunteer to have the words '[tattoo-text of marker chest tattoo]' permanently inked on your chest? [yesnolink]";
		if the player consents:
			say "Everybody looks awkward and casts their eyes downward, but you cause the silence to be broken by a few awed gasps as you raise your hand.[line break][speech style of M]'Oh yes, I had a feeling about you.'[roman type][line break][NameDesc of M] grins and with a flourish of her spellbook, everybody's words disappear from their chest, except yours. You test your own ink with a finger and find that it indeed will not rub off or smudge at all.";
			now marker chest tattoo is worn by the player;
			try examining marker chest tattoo;
			say "[speech style of M]'What a brave girl you are! Well, as promised, here you go.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Coco";
			now the armband-print of armband is "compliant canvas";
			say ClothingDesc of armband;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
			say "[M] folds [his of M] arms, looking very pleased with [himself of M].[line break][speech style of M]'All right, class dismissed.'[roman type][line break]";
		otherwise:
			say "Everybody looks awkward and casts their eyes downward, and a long silence comes over the room. Eventually [M] speaks.[line break][speech style of M]'Disappointing.'[roman type][line break]With a flourish of her spellbook, everybody's words disappear from their chest. [big he of M] sounds genuinely downcast.[line break][speech style of M]'You all need to work on your bravery for the next time we convene. Class dismissed.'[roman type][line break]";
	otherwise:
		let S be a random promotable student in the location of the player;
		if student-rachel is in the location of the player, now S is student-rachel;
		say "[NameDesc of M] makes you all stand and practice a few poses that are designed to emphasise your breasts, including pushing your shoulders back, squeezing your tits in between your arms, and bending over at the waist. Soon you are all tired and [he of M] looks satisfied.[line break][speech style of M]'Okay, that's enough for today. [if S is student][NameDesc of S], you have made brilliant progress since you first started coming to my classes. I think you deserve a promotion. For the rest of you, [end if]I'm going to assign you some optional [']homework[']. I've informed the nurse of our little problems here... and I do mean little. So the next time you go to visit her, you can expect her to be giving each and everyone one of you a nice... enhancement. If you don't want it, then you'd better not go see her before the next time we meet.'[roman type][line break]With that, [NameDesc of M] packs up her things and begins to walk for the door.[line break][speech style of M]'Until next time, then!'[roman type][line break]";
		if S is student, promote S;
		now the breast-enhancement of nurse is 1.

To compute tits marker choice of (S - a student):
	say "thinks for a few moments [himself of S] before taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-text of marker chest tattoo is "photos welcome";
	otherwise if R is 2:
		now the tattoo-text of marker chest tattoo is "I love being topless";
	otherwise:
		now the tattoo-text of marker chest tattoo is "please stare at my tits";
	now the tattoo-outrage of marker chest tattoo is 8;
	say "[big he of S] writes '[tattoo-text of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a student):
	say "[speech style of lesson-teacher of tits-lesson]'Hmm, this is fine. Nothing special, but does the job. Not bad, [NameDesc of S].'[roman type][line break]".
	

To compute tits marker choice of (S - a ditzy student):
	say "umms to [himself of S] for a few moments [himself of S] before making a gleeful 'ooh!' sound and then taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-text of marker chest tattoo is "fuckballs";
	otherwise if R is 2:
		now the tattoo-text of marker chest tattoo is "fuck bags";
	otherwise:
		now the tattoo-text of marker chest tattoo is "cock pillows";
	now the tattoo-outrage of marker chest tattoo is 11;
	say "[big he of S] writes '[tattoo-text of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a ditzy student):
	say "[speech style of lesson-teacher of tits-lesson]'Hmm. A bit crude, but I guess it does the job. You'd certainly get more attention.'[roman type][line break]".


To compute tits marker choice of (S - a nasty student):
	say "doesn't hesitate before taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-text of marker chest tattoo is "ugly bitches need bigger boobs";
	otherwise if R is 2:
		now the tattoo-text of marker chest tattoo is "worthless whore with mediocre boobs";
	otherwise:
		now the tattoo-text of marker chest tattoo is "please look at my disgusting tits";
	now the tattoo-outrage of marker chest tattoo is 13;
	say "[big he of S] grins a wide, evil grin and then writes '[tattoo-text of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a nasty student):
	say "[speech style of lesson-teacher of tits-lesson]'No, no no! This is all wrong. Who would want such a horrible message written on their breasts?! Get it together, [NameDesc of S].'[roman type][line break]".
	

To compute tits marker choice of (S - a tryhard student):
	say "doesn't hesitate before taking the pen to your skin. ";
	let R be a random number between 1 and 2;
	if R is 1:
		now the tattoo-text of marker chest tattoo is "it's hard not to look, isn't it?";
	otherwise:
		now the tattoo-text of marker chest tattoo is "if you can read this, you owe me a drink";
	now the tattoo-outrage of marker chest tattoo is 13;
	say "[big he of S] grins a wide, evil grin and then writes '[tattoo-text of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a tryhard student):
	say "[speech style of lesson-teacher of tits-lesson]'Great idea, [NameDesc of S]! I love it. Attention grabbing without being too crass.'[roman type][line break]".
	


Part - Hannah

teacher-hannah is an emerald-teacher.

The text-shortcut of teacher-hannah is "teha".

Figure of hannah is the file "NPCs/School/Teacher/teacher5.png".

To decide which figure-name is the monster-image of (M - teacher-hannah):
	decide on figure of hannah.

To say MonsterDesc of (M - teacher-hannah):
	say "This talk thin woman has straight dark brown hair and is wearing a tight black latex dress that goes down to her knees. If it wasn't for the shiny, fetishy nature of her dress, you wouldn't then there was anything unusual about her at all. However having said that, her gaze and posture does seem to exude a great amount of confidence and strength.".

The teacher-name of teacher-hannah is "Hannah".

To say WhoAnswer of (M - teacher-hannah):
	say "[speech style of M]'Compliance.'[roman type][line break]".

To say WhereAnswer of (M - teacher-hannah):
	say "[speech style of M]'[if the rank of the player is 1]A place for disobedient brats like yourself to learn a thing or two about following instructions.'[otherwise]Never question. Always obey.'[end if][roman type][line break]".

To say AdviceAnswer of (M - teacher-hannah):
	say "[speech style of M]'Following orders becomes easier once you truly accept that you are beneath us.'[roman type][line break]".

To compute unique death of (M - teacher-hannah):
	if wrist collar bar is in-play:
		let K be a random off-stage skeleton key;
		if K is skeleton key:
			say "[BigNameDesc of M] silently slumps to the ground, dead. The only thing of value on [his of M] body appears to be a [K]!";
			now K is in the location of the player;
			compute autotaking K.

pain-lesson is a lesson. The lesson-teacher of pain-lesson is teacher-hannah.

To compute teaching of (L - pain-lesson):
	let M be the lesson-teacher of L;
	say "[speech style of M]'Brats. That's what you all are - rebellious, mischievous minxes, every last one of you.'[roman type][line break][NameDesc of M] doesn't even look at the assembled class as she paces back and forth at the front, already ranting.[line break][speech style of M]'You think you're all so clever, so [if diaper quest is 1]grown up[otherwise]elegant[end if] and independent, but I know that deep inside each of you is a whimpering, submissive [if diaper quest is 1]little babygirl[otherwise]sex addict[end if] who is more than willing to obey any and all orders given to her. It's my job to force those inner submissive tendencies out into the open.'[roman type][line break][big he of M] pauses for dramatic effect.[line break][speech style of M]'So, what is the best way to turn a bold bitch into a wimpy wench? ";
	if wrist collar bar is worn:
		say "Well [NameBimbo] found that out last time we all gathered for this lesson, didn't she? And I'm glad to see that she is still wearing her bondage as instructed.'[roman type][line break][BigNameDesc of M] produces a key and slots it into the lock, freeing you from the bondage of your [ShortDesc of wrist collar bar].";
		only destroy wrist collar bar;
		say "[speech style of M]'I guess it's only fair that I keep my end of the bargain and promote you, then.'[roman type][line break]";
		now armband is ruby;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "obedient submissive";
		say ClothingDesc of armband;
		say "[speech style of M]'Well, off you trot then!'[roman type][line break][BigNameDesc of M] ushers you out of the door.";
		try going south;
		say "[variable custom style]Boy, that sure went well![roman type][line break]";
		now seconds is 12;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise if diaper quest is 0 and clitoris piercing is eligible:
		say "Well, today we'll be finding out the first step. Anyone who wants to be able to progress further in this class you must make a permanent change in order to prove your dedication.'[roman type][line break][big he of M] holds up a small, glittering metal object.[line break][speech style of M]'Personally, I think that every slut should have their clit pierced. It's not just a way to enhance the feelings, it's a symbol that constantly reminds you of your place in the world. And, of course, it means that everyone that sees it will know that you've gone through excruciating pain just to decorate yourself as a submissive.'[roman type][line break][big he of M] begins putting on hygienic latex gloves and produces a professional-looking sterilized piercing kit. Everyone in the room looks very nervous.[line break][speech style of M]'So, who's going to dedicate themselves to progress?'[roman type][line break]Do you let her give you a clitoris piercing? [yesnolink]";
		if the player consents:
			let ST be a random tryhard student in the location of the player;
			if ST is nothing, now ST is a random student in the location of the player;
			let ST2 be a random demotable student in the location of the player;
			say "You [if the player is feeling dominant]confidently[otherwise]hesitantly[end if] rise to your feet and take a step forward. Then [NameDesc of ST] finds the courage to follow your example and follow you towards the front. One by one, all the other students join you until all of you have decided to do it. ";
			if ST2 is a student and ST2 is not ST:
				say "All of you, that is, except [NameDesc of ST2], who remains seated, teeth gritted, probably too scared of the prospect of imminent pain. [NameDesc of M][']s face sours when [he of M] sees this.[line break][speech style of M]'Really, [student-name of ST2]? You can't even bring yourself to do it when every single one of your peers has taken the plunge? Maybe you're just not cut out for this rank at all.'[roman type][line break]";
				demote ST2;
				say "[NameDesc of ST2] gasps with indignation but [NameDesc of M] is remorseless and points towards the door.[line break][speech style of M]'Get out of my sight.'[roman type][line break]";
				try ST2 going south;
				say "As soon as [NameDesc of ST2] is gone, [NameDesc of M][']s expression turns back into a proud, almost loving smile.";
			otherwise:
				say "Upon seeing this, [NameDesc of M][']s expression turns into a proud, almost loving smile.";
			say "[speech style of M]'Well done, all of you! You won't regret making this commitment. And for you all to do it at the same time! How poetic. Well, [NameBimbo], as the first one to volunteer, I guess you're up first.'[roman type][line break]You are strapped down tightly on top of a desk to avoid any dangerous movement during the procedure. A gloved hand pinches your most sensitive, delicate part and holds it in place. You don't have to wait long before the searing hot needle appears in her hand and before you know it, the piercing is underway. Searing white hot pain shoots through you, and you can't help but wail [if diaper lover > 0]like a baby [end if] as it happens.";
			DelicateUp 3;
			say "And then it's all over, and you are sent to sit back down as the rest of the students each have their own loud intense episode. By the time they're all finished, your own pain has already dulled to a faint throb. But you still feel much more timid than you did five minutes ago. [BigNameDesc of M] beams at the room which is now full of pale faces, all hardly able to believe what they just consented to undergo.[line break][speech style of M]'Well done, all of you! I hope you'll remember this moment for the rest of time. This was the moment you truly began to accept your destiny and dedicate yourself to the pursuit of perfection. Bravo. Well, I think that's enough for now, don't you? Until next time!'[roman type][line break][BigNameDesc of M] waves cheerfully to you all and begins to leave.";
			summon normal clit piercing; [not cursed]
			now seconds is 80;
		otherwise:
			say "[if the player is feeling dominant]There's no way you're going to [']mark yourself as a submissive[']! You fold you arms and audibly huff. The other students seem to be influenced by you and in the end, nobody volunteers at all[otherwise]You look around but nobody is making any move to go forward, and you don't have the bravery to go through it alone[end if]. [BigNameDesc of M] frowns.[line break][speech style of M]'You do realise, by all being complete wusses that you've essentially proven my point? Bah. Well, we'll try again next time, and see if any of you have grown some kahunas. Now get out of my sight.'[roman type][line break]";
			now seconds is 12;
	otherwise if there is a worn clitoris piercing and clitoris lead is not worn and the number of pussy covering clothing is the number of displacable pussy covering clothing:
		say "Well, let's try reminding them of the symbol of submission they've got permanently welded in between their thighs, hmm?'[roman type][line break]You shiver as you clench your thighs together, almost instinctively protecting your [ShortDesc of random worn clitoris piercing] from [him of M].[line break][speech style of M]'Today we're going to have a little competition, and the winner will get promoted. I need two volunteers, each with a pierced clit.'[roman type][line break]Do you volunteer? [yesnolink]";
		if the player consents:
			let ST be a random promotable student in the location of the player;
			if ST is nothing, now ST is a random student in the location of the player;
			let competition-success be 0;
			say "You [if the player is feeling submissive]hesitantly [end if]stand up and look around. [BigNameDesc of ST] has also risen to [his of ST] feet. It looks like you'll be competing with each other. [BigNameDesc of M] makes you come to the front and expose your cunts to the class.[line break][speech style of M]'Being a submissive doesn't mean you have to be a wimp.'[roman type][line break]She gets a length of chain about three feet long and connects one end to your clit piercing, and the other to [NameDesc of ST][']s. Your hands are each cuffed behind your backs. You and [NameDesc of ST] look at each other nervously.[line break][speech style of M]'Okay girls, now show me how brave you are. Each take a step back.'[roman type][line break]You wince but do as you are told. The chain is brought completely taut which pulls your clits to their limits, stretching them tight and causing more than a little bit of pain. When [he of M] is satisfied that you're in the right positions [he of M] draws a line in chalk in front of each of your toes and then speaks again.[line break][speech style of M]'Hopefully the task is self-evident. The first person to take a step forward loses. May the most dedicated slut win!'[roman type][line break]Then [his of M] smile turns into a wide evil grin.[line break][speech style of M]'Oh and I almost forgot. The loser will have the privilege of keeping that chain forever as their own personal leash.'[roman type][line break]Your heart leaps as a feeling of [horror the bimbo of the player] washes over you. The stakes are higher than you realised.";
			say "Seconds pass and the pain in your clit seems to steadily increase. Either that or your tolerance for the existing pain is gradually floundering.";
			DelicateUp 1;
			say "Give up and step forward? [yesnolink]";
			unless the player consents:
				say "You clench your fists behind your back and strengthen your resolve. Surely [NameDesc of ST] will cave first!";
				if ST is innocent student or a random number between 1 and 3 is 1:
					say "[ClitPiercingConcede of ST]";
					now competition-success is 1;
				otherwise:
					say "Time ticks by as you both hold fast. The room is completely silent other than the occasional grunt of discomfort from you or your opponent.";
					DelicateUp 1;
					say "Give up and step forward? [yesnolink]";
					unless the player consents:
						say "You grind your teeth but don't give in. If [NameDesc of ST] is feeling as much pain as you then surely [he of ST] can't last any longer!";
						if ST is not tryhard student and a random number between 1 and 2 is 1:
							say "[ClitPiercingConcede of ST]";
							now competition-success is 1;
						otherwise:
							say "You both pant and whine but neither of you will give in. The pain is now almost unbearable - your knees are shaking and your entire body begs for you to let it move forward.";
							DelicateUp 2;
							say "Give up and step forward? [yesnolink]";
							unless the player consents:
								say "You've come this far, you can't give in now that you've already suffered so much! You stare daggers at [NameDesc of ST] and don't move a muscle. You feel your mind warping as you let the pain wash through you - you've used so much willpower in this one encounter that you know you're not going to have much left to stay strong in future predicaments.";
								DelicateUp 5;
								say "[ClitPiercingConcede of ST]";
								now competition-success is 1;
			if image cutscenes is 1, display figure of teacher hannah cutscene 2;
			if competition-success is 1:
				say "Yes you won!!! You feel a little bad but you can't stop yourself from grinning from ear to ear. Sweat drips down your face, but it was worth it. [BigNameDesc of M] claps her hands.[line break][speech style of M]'Well done [NameBimbo]. Yes, you've definitely earned a promotion.'[roman type][line break]";
				now armband is ruby;
				say "You watch as the ID card inside your armband transforms!";
				now the armband-title of armband is "Princess";
				now the armband-print of armband is "properly pierced pet";
				say ClothingDesc of armband;
				say "[speech style of M]'As for you [student-name of ST], you're going to regret your lack of dedication.'[roman type][line break][BigNameDesc of M] snaps her fingers and the chain falls from your clit piercing but remains sealed to [NameDesc of ST][']s. [big he of ST] gives it a tug but it won't come off - it's clearly permanently fixed on! [big he of ST] wails loudly.[speech style of ST]'This is totally unfair! I hate this place! I'm never coming back!'[roman type][line break][BigNameDesc of ST] runs from the class, presumably never to be seen again.";
				destroy ST;
				say "[BigNameDesc of M] harrumphs.[line break][speech style of M]'Good riddance. And anyway that's enough for today. Class dismissed.'[roman type][line break]";
				update students; [an important line which makes boring old students disappear and new cool ones appear]
			otherwise:
				say "As you take the step back and the pain disappears, you feel relief wash over you. Sweat drips down your face and you are breathing heavily. [BigNameDesc of M] claps her hands.[line break][speech style of M]'Well done [student-name of ST]. Yes, you've definitely earned a promotion.'[roman type][line break]";
				promote ST;
				say "[speech style of M]'As for you [NameBimbo], you're going to regret your lack of dedication.'[roman type][line break][BigNameDesc of M] snaps her fingers and the chain falls from [NameDesc of ST][']s clit piercing but remains sealed to yours. You give it a tug but it won't come off - it's clearly permanently fixed on! Your clit throbs with renewed sensitivity, and you immediately can tell that if anyone was to grab hold of this chain, there'd just be no way you'd be able to fight back any more, or refuse their commands at all.";
				summon clitoris lead;
				say "[variable custom style]And I'm going to be wearing this forever?![roman type][line break][BigNameDesc of M] chuckles.[line break][speech style of M]'Well that's two girls who are much closer to being a proper submissive. A job well done if I say so myself. Until next time, class!'[roman type][line break]";
			now seconds is 60;
		otherwise:
			say "[if the player is feeling dominant]There's no way you're going to risk any more pain right now! You fold you arms and audibly huff. The other students seem to be influenced by you and in the end, nobody volunteers at all[otherwise]You look around but nobody is making any move to go forward, and you don't have the bravery to go through it alone[end if]. [BigNameDesc of M] frowns.[line break][speech style of M]'You do realise, by all being complete wusses that you've essentially proven my point? Bah. Well, we'll try again next time, and see if any of you have grown some kahunas. Now get out of my sight.'[roman type][line break]";
			now seconds is 12;
	otherwise if wrist collar bar is actually summonable:
		say "Well, I think we should try taking away someone's ability to use their wrists for a while, and see how they feel after that.'[roman type][line break][big his of M] eyes scan the room and then fall on you.[line break][speech style of M]'Yes, this will be perfect for you!'[roman type][line break][BigNameDesc of M] [if wrist collar bar is held]takes the [ShortDesc of wrist collar bar] from your possession[otherwise]produces a [ShortDesc of wrist collar bar] from underneath [his of M] desk and carries it over to you. [big he of M] makes you stand up and then uses it to strictly bind your wrists to your neck behind your back.[line break][speech style of M]'I imagine that wearing this around for a bit will give you a good idea of what submission is like! Keep it on until next time we have this class and I'll reward you with a promotion, okay?'[roman type][line break]You whine but nod - it's not like you've got much choice!";
		if image cutscenes is 1, display figure of teacher hannah cutscene 1;
		summon wrist collar bar locked;
	otherwise:
		say "Well, actually all the things I wanted to suggest aren't possible right now. Oh well. I'll probably have more potential actions in a future version of the game.'[roman type][line break]";
		now seconds is 6.

To say ClitPiercingConcede of (M - a student):
	say "Moments later [NameDesc of M] breaks into tears as [he of M] gives up, stepping forward and releasing you both from the clitoral torment.".

To say ClitPiercingConcede of (M - a tryhard student):
	say "Moments later [NameDesc of M] gasps and collapses forward, releasing you both from the clitoral torment. [big he of M] pants heavily and you realise that [he of M] was holding [his of M] breath this entire time.[line break][speech style of M]'Too much... it was just too much...'[roman type][line break]".

To say ClitPiercingConcede of (M - an innocent student):
	say "Moments later [NameDesc of M] steps forward, releasing you both from the clitoral torment. [big he of M] shakes [his of M] arms in a panicked fashion.[line break][speech style of M]'No no no, this is just too crazy!'[roman type][line break]".




Teachers Emerald ends here.
