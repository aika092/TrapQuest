Teachers Emerald by Monster begins here.

To say MediumDesc of (M - an emerald-teacher):
	say "emerald teacher [teacher-name of M]".



Part - Hannah

teacher-hannah is an emerald-teacher.

The text-shortcut of teacher-hannah is "teha".

Figure of DQ hannah is the file "NPCs/School/Teacher/teacher5a.png".
Figure of babslave hannah is the file "NPCs/School/Teacher/teacher5c.png".
Figure of Teacher Hannah Cutscene 1 is the file "Special/Cutscene/cutscene-hannah-bondage1.png".

To decide which figure-name is the monster-image of (M - teacher-hannah):
	decide on figure of Teacher Hannah.

To decide which figure-name is the pacified-image of (M - teacher-hannah):
	if M is diaper-enslaved, decide on figure of babslave hannah;
	decide on figure of missing NPC.

To say MonsterDesc of (M - teacher-hannah):
	if M is diaper-enslaved:
		say "This tall ginger-haired black woman has had her slinky blue dress swapped out for a super-short navy baby dress with a cute starry sky pattern, with matching colours of stockings and baby mittens. She is wearing a matching white diaper with blue stars. The pacifier gag she had been wielding is firmly locked in her mouth. She's on her knees in front of the wooden paddle she had previously been holding, with one mittened hand held up in front of her breasts. Whenever she lowers the hand, the paddle springs to life, rising up from the ground and slapping her on the breasts. And every time she tries to change position so that the paddle can't get to her breasts, it just starts spanking her butt! Oh dear...";
	otherwise:
		say "This tall ginger-haired black woman has a slinky blue dress that goes down to her knees. She's wielding a paddle in one hand and a [if diaper quest is 1]pacifier [otherwise]ball[end if]gag in the other. Her gaze and posture exude a great amount of confidence and strength.".

The teacher-name of teacher-hannah is "Hannah".

To say WhoAnswer of (M - teacher-hannah):
	say "[speech style of M]'Compliance.'[roman type][line break]".

To say WhereAnswer of (M - teacher-hannah):
	say "[speech style of M]'[if the rank of the player <= 1]A place for disobedient brats like yourself to learn a thing or two about following instructions.'[otherwise]Never question. Always obey.'[end if][roman type][line break]".

To say AdviceAnswer of (M - teacher-hannah):
	say "[speech style of M]'Following orders becomes easier once you truly accept that you are beneath us.'[roman type][line break]".



To say DefeatFlav of (M - teacher-hannah):
	say "[BigNameDesc of M] collapses, and [if M is in the school]is left sprawled on the floor. [big he of M] won't be getting up any time soon[otherwise][his of M] body disappears[end if].";
	if skeleton key is off-stage:
		now skeleton key is in the location of the player;
		say "A [skeleton key] drops out of [his of M] cleavage!";
		compute autotaking skeleton key.

pain-lesson is a lesson. The lesson-teacher of pain-lesson is teacher-hannah.

To compute teaching of (L - pain-lesson):
	let M be the lesson-teacher of L;
	say "[speech style of M]'Brats. That's what you all are - rebellious, mischievous minxes, every last one of you.'[roman type][line break][BigNameDesc of M] doesn't even look at the assembled class as she paces back and forth at the front, already ranting.[line break][speech style of M]'You think you're all so clever, so [if diaper quest is 1]grown up[otherwise]elegant[end if] and independent, but I know that deep inside each of you is a whimpering, submissive [if diaper quest is 1]little babygirl[otherwise]sex addict[end if] who is more than willing to obey any and all orders given to her. It's my job to force those inner submissive tendencies out into the open.'[roman type][line break][big he of M] pauses for dramatic effect.[line break][speech style of M]'So, what is the best way to turn a bold bitch into a wimpy wench? ";
	if the player is wrist bound or the player is ankle bound or portal gag is worn:
		if wrist collar bar is worn or portal gag is worn:
			let W be wrist collar bar;
			if W is not worn, now W is portal gag;
			say "Well [NameBimbo] found that out [if wrist collar bar is worn]last time we all gathered for this lesson[otherwise]recently[end if], didn't [he of the player]? And I'm glad to see that [he of the player] is still wearing [his of the player] bondage as instructed.'[roman type][line break][if W is locked][BigNameDesc of M] produces a key and slots it into the lock, allowing you to remove the [ShortDesc of W] whenever you like.[end if]";
			now W is unlocked;
			if portal-pants is worn, now portal-pants is unlocked;
			say "[speech style of M]'I guess it's only fair that I keep my end of the bargain and promote you, then.'[roman type][line break]";
		otherwise:
			say "Well [NameBimbo] here already knows how to show the world that [he of the player][']s a wimp. [big he of the player] is walking around with [his of the player] [if the player is wrist bound]wrists[end if][if the player is wrist bound and the player is ankle bound] and [end if][if the player is ankle bound]ankles[end if] bound! Bravo! I think it's only fair that I promote you for your exemplary dedication to servitude.";
		now armband is ruby;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "obedient submissive";
		say ClothingDesc of armband;
		say "[speech style of M]'Well, off you trot then!'[roman type][line break][BigNameDesc of M] ushers you out of the door.";
		try going south;
		say "[variable custom style]Boy, that sure went well![roman type][line break]";
		allocate 12 seconds;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise if diaper quest is 0 and clitoris piercing is eligible and (a random number between 1 and 3 > 1 or portal gag is not actually summonable):
		say "Well, today we'll be finding out the first step. Anyone who wants to be able to progress further in this class you must make a permanent change in order to prove your dedication.'[roman type][line break][big he of M] holds up a small, glittering metal object.[line break][speech style of M]'Personally, I think that every slut should have their clit pierced. It's not just a way to enhance the feelings, it's a symbol that constantly reminds you of your place in the world. And, of course, it means that everyone that sees it will know that you've gone through excruciating pain just to decorate yourself as a submissive.'[roman type][line break][big he of M] begins putting on hygienic latex gloves and produces a professional-looking sterilized piercing kit. Everyone in the room looks very nervous.[line break][speech style of M]'So, who's going to dedicate themselves to progress?'[roman type][line break]Do you let her give you a clitoris piercing? ";[possibly more indication here that everyone will follow you]
		if the player is bimbo consenting:
			let ST be a random tryhard student in the location of the player;
			if ST is nothing, now ST is a random student in the location of the player;
			let ST2 be a random demotable student in the location of the player;
			say "You [if the player is feeling dominant]confidently[otherwise]hesitantly[end if] rise to your feet and take a step forward. Then [NameDesc of ST] finds the courage to follow your example and follow you towards the front. One by one, all the other students join you until all of you have decided to do it. ";
			if ST2 is a student and ST2 is not ST:
				say "All of you, that is, except [NameDesc of ST2], who remains seated, teeth gritted, probably too scared of the prospect of imminent pain. [NameDesc of M][']s face sours.[line break][speech style of M]'Really, [student-name of ST2]? You can't even bring yourself to do it when every single one of your peers has taken the plunge? Maybe you're just not cut out for this rank at all.'[roman type][line break]";
				demote ST2;
				say "[NameDesc of ST2] gasps with indignation but [NameDesc of M] is remorseless and points towards the door.[line break][speech style of M]'Get out of my sight.'[roman type][line break]";
				HappinessDown ST2 by 2;
				try ST2 going south;
				say "As soon as [NameDesc of ST2] is gone, [NameDesc of M][']s expression turns back into a proud, almost loving smile.";
			otherwise:
				say "[BigNameDesc of M][']s expression turns into a proud, almost loving smile.";
			unless the player is broken:
				say "You feel real surging pride at having been the first to volunteer.";
				obsceneDignify;
			say "[speech style of M]'Well done, all of you! You won't regret making this commitment. And for you all to do it at the same time! How poetic. Well, [NameBimbo], as the first one to volunteer, I guess you're up first.'[roman type][line break]You are strapped down tightly on top of a desk to avoid any dangerous movement during the procedure. [NameDesc of M] pinches your most sensitive, delicate part between [his of M] fingers and holds it in place. You don't have to wait long before the searing hot needle appears in her hand and before you know it, the piercing is underway. Searing white hot pain shoots through you, and you can't help but wail [if diaper lover > 0]like a baby [end if] as it happens.";
			PainUp 3;
			say "And then it's all over, and you are sent to sit back down as the rest of the students each have their own loud intense episode. By the time they're all finished, your own pain has already dulled to a faint throb. But you still feel much more timid than you did five minutes ago. [BigNameDesc of M] beams at the room which is now full of pale faces, all hardly able to believe what they just consented to undergo.[line break][speech style of M]'Well done, all of you! I hope you'll remember this moment for the rest of time. This was the moment you truly began to accept your destiny and dedicate yourself to the pursuit of perfection. Bravo. Well, I think that's enough for now, don't you? Until next time!'[roman type][line break][BigNameDesc of M] waves cheerfully to you all and begins to leave.";
			summon normal clit piercing; [not cursed]
			allocate 80 seconds;
		otherwise:
			say "[if the player is feeling dominant]There's no way you're going to [']mark yourself as a submissive[']! You fold you arms and audibly huff. The other students seem to be influenced by you and in the end, nobody volunteers at all[otherwise]You look around but nobody is making any move to go forward, and you don't have the bravery to go through it alone[end if]. [BigNameDesc of M] frowns.[line break][speech style of M]'You do realise, by all being complete wusses that you've essentially proven my point? Bah. Well, we'll try again next time, and see if any of you have grown some kahunas. Now get out of my sight.'[roman type][line break]";
			allocate 12 seconds;
	otherwise if there is a worn clitoris piercing and clitoris lead is not worn and the number of cursed pussy covering clothing <= the number of cursed displacable pussy covering clothing:
		say "Well, let's try reminding them of the symbol of submission they've got permanently welded in between their thighs, hmm?'[roman type][line break]You shiver as you clench your thighs together, almost instinctively protecting your [ShortDesc of random worn clitoris piercing] from [him of M].[line break][speech style of M]'Today we're going to have a little competition, and the winner will get promoted. I need two volunteers, each with a pierced clit.'[roman type][line break]Do you volunteer? ";
		if the player is bimbo consenting:
			let ST be a random promotable student in the location of the player;
			if ST is nothing, now ST is a random student in the location of the player;
			let competition-success be 0;
			obsceneDignify;
			say "You [if the player is feeling submissive]hesitantly [end if]stand up and look around, feeling significant pride for having made the brave decision. [BigNameDesc of ST] has also risen to [his of ST] feet. It looks like you'll be competing with each other. [BigNameDesc of M] makes you come to the front and expose your cunts to the class.[line break][speech style of M]'Being a submissive doesn't mean you have to be a wimp.'[roman type][line break][big he of M] gets a length of chain about three feet long and connects one end to your clit piercing, and the other to [NameDesc of ST][']s. Your hands are each cuffed behind your backs and you look at each other nervously.[line break][speech style of M]'Okay girls, now show me how brave you are. Each take a step back.'[roman type][line break]You wince but do as you are told. The chain is brought completely taut which pulls your clits to their limits, stretching them tight and causing more than a little bit of pain. When [he of M] is satisfied that you're in the right positions [he of M] draws a line in chalk in front of each of your toes and then speaks again.[line break][speech style of M]'Hopefully the task is self-evident. The first person to take a step forward loses. May the most dedicated slut win!'[roman type][line break]Then [his of M] smile turns into a wide evil grin.[line break][speech style of M]'Oh and I almost forgot. The loser will have the privilege of keeping that chain forever as their own personal leash.'[roman type][line break]Your heart leaps as a feeling of [horror the bimbo of the player] washes over you. The stakes are higher than you realised.";
			PainUp 1;
			say "Seconds pass and the pain in your clit seems to steadily increase. Either that or your tolerance for the existing pain is gradually floundering. Give up and step forward? ";
			unless the player is consenting:
				say "You clench your fists behind your back and strengthen your resolve against the pain. Surely [NameDesc of ST] will cave first!";
				if ST is innocent student or a random number between 1 and 3 is 1:
					say "[ClitPiercingConcede of ST]";
					now competition-success is 1;
				otherwise:
					PainUp 2;
					say "Time ticks by as you both hold fast. The room is completely silent other than the occasional grunt of discomfort from you or your opponent. Give up and step forward? ";
					unless the player is consenting:
						say "You grind your teeth but don't give in. If [NameDesc of ST] is feeling as much pain as you then surely [he of ST] can't last any longer!";
						if ST is not tryhard student and a random number between 1 and 2 is 1:
							say "[ClitPiercingConcede of ST]";
							now competition-success is 1;
						otherwise:
							PainUp 4;
							say "You both pant and whine but neither of you will give in. The pain is now almost unbearable - your knees are shaking and your entire body begs for you to let it move forward. Give up and step forward? ";
							unless the player is consenting:
								say "You've come this far, you can't give in now that you've already suffered so much! You stare daggers at [NameDesc of ST] and don't move a muscle. You feel your mind warping as you let the pain wash through you - you've used so much willpower in this one encounter that you know you're not going to have much left to stay strong in future predicaments.";
								SilentlyDelicateUp 5;
								say "[ClitPiercingConcede of ST]";
								now competition-success is 1;
			fullscreencutshow figure of teacher hannah cutscene 2 for M;
			if competition-success is 1:
				say "Yes you won!!! You feel a little bad but you can't stop yourself from grinning from ear to ear. Sweat drips down your face, but it was worth it. [BigNameDesc of M] claps her hands.[line break][speech style of M]'Well done [NameBimbo]. Yes, you've definitely earned a promotion.'[roman type][line break]";
				now armband is ruby;
				say "You watch as the ID card inside your armband transforms!";
				now the armband-title of armband is "Princess";
				now the armband-print of armband is "properly pierced pet";
				say ClothingDesc of armband;
				say "[speech style of M]'As for you [student-name of ST], you're going to regret your lack of dedication.'[roman type][line break][BigNameDesc of M] snaps her fingers and the chain falls from your clit piercing but remains sealed to [NameDesc of ST][']s. [big he of ST] gives it a tug but it won't come off - it's clearly permanently fixed on! [big he of ST] wails loudly.[speech style of ST]'This is totally unfair! I hate this place! And I hate you, [NameBimbo]!'[roman type][line break]";
				HappinessDown ST by 6;
				now ST is clitLeaded;
				say "[BigNameDesc of ST] runs from the class.";
				try ST going south;
				say "[BigNameDesc of M] smirks.[line break][speech style of M]'[big he of M][']ll be back. And anyway that's enough for today. Class dismissed.'[roman type][line break]";
				update students; [an important line which makes boring old students disappear and new cool ones appear]
			otherwise:
				say "As you take the step back and the pain disappears, you feel relief wash over you. Sweat drips down your face and you are breathing heavily. [BigNameDesc of M] claps her hands.[line break][speech style of M]'Well done [student-name of ST]. Yes, you've definitely earned a promotion.'[roman type][line break]";
				promote ST;
				say "[speech style of M]'As for you [NameBimbo], you're going to regret your lack of dedication.'[roman type][line break][BigNameDesc of M] snaps her fingers and the chain falls from [NameDesc of ST][']s clit piercing but remains sealed to yours. You give it a tug but it won't come off - it's clearly permanently fixed on! Your clit throbs with renewed sensitivity, and you immediately can tell that if anyone was to grab hold of this chain, there'd just be no way you'd be able to fight back any more, or refuse their commands at all.";
				summon clitoris lead;
				say "[variable custom style]And I'm going to be wearing this forever?![roman type][line break][BigNameDesc of M] chuckles.[line break][speech style of M]'Well that's two girls who are much closer to being a proper submissive. A job well done if I say so myself. To be honest, that's all I can teach you now, I'll allow you to progress.'[roman type][line break]";
				now armband is ruby;
				say "You watch as the ID card inside your armband transforms!";
				now the armband-title of armband is "Princess";
				now the armband-print of armband is "properly pierced pet";
				say ClothingDesc of armband;
				say "[BigNameDesc of M] claps her hands to silence the background chatter.[line break][speech style of M]'Okay that's enough excitement for today. Class dismissed!'[roman type][line break]";
				update students; [an important line which makes boring old students disappear and new cool ones appear]
			allocate 60 seconds;
		otherwise:
			say "[if the player is feeling dominant]There's no way you're going to risk any more pain right now! You fold you arms and audibly huff. The other students seem to be influenced by you and in the end, nobody volunteers at all[otherwise]You look around but nobody is making any move to go forward, and you don't have the bravery to go through it alone[end if]. [BigNameDesc of M] frowns.[line break][speech style of M]'You do realise, by all being complete wusses that you've essentially proven my point? Bah. Well, we'll try again next time, and see if any of you have grown some kahunas. Now get out of my sight.'[roman type][line break]";
			allocate 12 seconds;
	otherwise if wrist collar bar is actually summonable or portal gag is actually summonable:
		allocate 12 seconds;
		if wrist collar bar is actually summonable and (portal gag is not actually summonable or a random number between 1 and 2 is 1):
			say "Well, I think we should try taking away someone's ability to use their wrists for a while, and see how they feel after that.'[roman type][line break][big his of M] eyes scan the room and then fall on you.[line break][speech style of M]'Yes, this will be perfect for you!'[roman type][line break][BigNameDesc of M] [if wrist collar bar is held]takes the [ShortDesc of wrist collar bar] from your possession[otherwise]produces a [ShortDesc of wrist collar bar] from underneath [his of M] desk and carries it over to you[end if]. [big he of M] makes you stand up and then uses it to strictly bind your wrists to your neck behind your back.[line break][speech style of M]'I imagine that wearing this around for a bit will give you a good idea of what submission is like! [bold type]Keep it on until next time we have this class [speech style of M] and I'll reward you with a promotion, okay?'[roman type][line break]You whine but nod - it's not like you've got much choice!";
			if diaper lover > 0, fullscreencutshow figure of teacher hannah cutscene 1 for M;
			summon wrist collar bar locked;
			say "You are surprised at how comfortable your arms are, forced to bend into this backwards position![line break][variable custom style]I must be getting more flexible![roman type][line break]";
			DexUp 1;
		otherwise:
			say "Well, I think we should try taking away someone's right to choose how their mouth is used, and see how they feel after that.'[roman type][line break][big his of M] eyes scan the room and then fall on you.[line break][speech style of M]'Yes, this will be perfect for you!'[roman type][line break][BigNameDesc of M] [if portal gag is held]takes the [ShortDesc of portal gag] from your possession[otherwise]produces a magical ballgag with a swirling portal where the ball should be, and carries it over to you[end if]. [big he of M] wraps the strap around your face and locks it into place, so there's now a magical portal fixed in your permanently open mouth! [BigNameDesc of M] holds up another identical portal, attached to similar leather straps.[line break][speech style of M]'Whoever holds this owns your mouth, now. Do you understand what happens when something is inserted here?'[roman type][line break]You whine but nod.[line break][speech style of M]'Now, who should I give it to...'[roman type][line break]";
			summon portal gag locked;
			let K be a random worn removable uncursed unglued unlocked knickers;
			if (portal-pants is actually summonable or (a random number between 1 and 2 is 1 and K is knickers and the number of worn crotch covering clothing is 1)) and (watersports fetish is 1 or watersports mechanics is 0): [Can't do this if player needs to pee but isn't into piss drinking]
				if K is knickers, now K is in the location of the player;
				say "A wicked grin flashes on [NameDesc of M][']s face.[line break][speech style of M]'Would you like it, [NameBimbo]?'[roman type][line break]Concern flashes through your brain - that seems too good to be true. And you quickly find out, yes it is. [BigNameDesc of M] [if K is knickers]removes your [ShortDesc of K] and [end if]straps the other half of the portal equipment over your crotch, so that your [if the player is male][ShortDesc of penis] is pushed through the portal and into your mouth[otherwise][vagina] is pressed through the portal right against your mouth and tongue[end if].[line break][speech style of M]'Yes, yes, this is perfect. I don't think you'll be able to stop yourself from keeping yourself nice and stimulated until we next see each other. How delightful[if watersports fetish is 1]! And if you find yourself needing the toilet before then... well, I imagine that might be quite fun too[end if].'[roman type][line break]";
				summon portal-pants locked;
			otherwise:
				let N be a random alive male teacher;
				if N is nothing or a random number between 1 and 3 is 1 or diaper quest is 1, now N is M;
				now portal-pants is in Holding Pen;
				now N is retaining portal-pants;
				say "[if N is M][BigNameDesc of M] pockets the device.[line break][speech style of M]'I think I'll keep it for myself.'[otherwise][BigNameDesc of M] twirls the device in [his of M] hand. I think I'll give it to Teacher [teacher-name of N]. Something tells me [he of N] will be able to find some good uses for your mouth! If you haven't met [him of M] yet, [he of M][']s the proud owner of a rather juicy [manly-penis], which pretty soon your mouth and tongue are likely to be well acquainted with, I should think!'[end if][roman type][line break]";
			say "You emit a muffled whine through the gag.[line break][speech style of M]'I imagine that wearing this around for a bit will give you a good idea of what submission is like! [bold type]Keep it on until next time we have this class [speech style of M]and I'll reward you with a promotion, okay?'[roman type][line break]As [NameDesc of M] dismisses the class, there's nothing you can do but groan and accept your new fate. There is a small silver lining - you can feel that the magic power of the portal gag has slightly rubbed off on you, adding to your own magic power reserves.";
			MagicPowerUp 2;
		increase class-time by 120; [There's a longer time period until the next class]
	otherwise:
		say "Well, actually all the things I wanted to suggest aren't possible right now. Oh well. I'll probably have more potential actions in a future version of the game.'[roman type][line break]";
		allocate 6 seconds.

To say ClitPiercingConcede of (M - a student):
	say "Moments later [NameDesc of M] breaks into tears as [he of M] gives up, stepping forward and releasing you both from the clitoral torment.".

To say ClitPiercingConcede of (M - a tryhard student):
	say "Moments later [NameDesc of M] gasps and collapses forward, releasing you both from the clitoral torment. [big he of M] pants heavily and you realise that [he of M] was holding [his of M] breath this entire time.[line break][speech style of M]'Too much... it was just too much...'[roman type][line break]".

To say ClitPiercingConcede of (M - an innocent student):
	say "Moments later [NameDesc of M] steps forward, releasing you both from the clitoral torment. [big he of M] shakes [his of M] arms in a panicked fashion.[line break][speech style of M]'No no no, this is just too crazy!'[roman type][line break]".


toy-lesson is a lesson. The lesson-teacher of toy-lesson is teacher-hannah.

To compute teaching of (L - toy-lesson):
	let M be the lesson-teacher of L;
	say "[speech style of M]'To turn in a brat into a proper submissive, they need to be constantly reminded that they are OWNED. Most of my colleagues focus on external... [']stimulation['] to deliver this message but I strongly believe that nothing makes someone feel more submissive than allowing themselves to be dominated... on the INSIDE.'[roman type][line break][BigNameDesc of M] pulls away a tablecloth to reveal an array of butt plugs lines up on a table, with wildly varying sizes.[line break][speech style of M]'When wearing a plug, a submissive has a constant intrusion in their most sensitive and private place, constantly making them think: [']I am owned. All of what I am, inside and out, has been claimed by my owners[if diaper quest >= 3]. Even my ability to use the toilet is not my own; I must remain here squirming with discomfort until I am allowed to go[end if].['] And the bigger the plug, the more powerful the effect.'[roman type][line break][big he of M] rubs her fingers together with unhidden greedy anticipation.";
	if asshole is actually occupied:
		let T be a random thing penetrating asshole;
		say "[speech style of M]'But first... I can sense that one of our group has been busy [']studying['] this [']curriculum['] in [his of the player] own time.'[roman type][line break][big he of M] walks up to you and pushes at your [asshole] with one hand, feeling the base of the solid [ShortDesc of T].[line break][speech style of M]'Just as I thought.'[roman type][line break][BigNameDesc of M] whispers in a seductive voice.[line break][speech style of M]'You already know who owns this hole, don't you, puppet?'[roman type][line break][strongHumiliateReflect]When [his of M] gaze meets yours, you can't help but gulp and nod.[line break][speech style of M]'Very good. Well, I think you're more than ready to move on then.'[roman type][line break]";
		now armband is ruby;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Bambi";
		now the armband-print of armband is "buttplug bandit";
		say ClothingDesc of armband;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
		say "[speech style of M]'Well, off you trot then!'[roman type][line break][BigNameDesc of M] ushers you out of the door.";
		try going south;
		allocate 6 seconds;
	otherwise:
		let LS be a list of people;
		let LP be a list of plugs;
		let LN be a list of numbers;
		repeat with ST running through people in the location of the player:
			unless ST is staff member:
				add ST to LS;
			let P be a random off-stage basic plug;
			if P is plug:
				only destroy P;
				now P is in the location of the player;
				add P to LP;
		sort LS in random order;
		sort LP in size order;
		say "On the table is [LP with indefinite articles].[line break][speech style of M]'Okay, let me explain today's game. Each of you will need to choose a plug and try and put it inside your cute tight bottoms. Everyone who successfully gets their plug in will get a certain number of copies of their name in this raffle box. ";
		let LPS be 0;
		repeat with P running through LP:
			if the size of P > LPS:
				now LPS is the size of P;
				say "A [PlugSize LPS] one gets you [LPS] [if LPS is 1]copy[otherwise]copies[end if]. ";
		let raffleWinners be (the number of entries in LP / 3) + 1;
		say "[if raffleWinners > 1]I'll pick [raffleWinners] names out of the hat, and all the winners[otherwise]The winner of the raffle pick[end if] will get promoted. Oh, and all these toys have been magically cursed to not let you remove them until you attend your next class. Hahaha. So, anyway, let's see... I'll let you come up and choose in a random order.'[roman type][line break][BigNameDesc of M] makes a show of closing [his of M] eyes and waving a pointing finger randomly across the classroom, before letting it stop and opening [his of M] eyes again.";
		sort LP in reverse size order;
		repeat with ST running through LS:
			if ST is yourself:
				say "[speech style of M]'[NameBimbo], you next. Do your best.'[roman type][line break]";
				let CP be nothing;
				repeat with P running through LP:
					assign link disambiguation ID to P;
				while CP is nothing:
					try looking;
					if the focus-window is g-present, display focus stuff;
					let CLTR be the chosen letter - 48;
					now CP is yourself;
					repeat with P running through LP:
						if the link-disambiguation-ID of P is CLTR:
							try examining P;
							say "Choose [P]?";
							if the player is consenting, now CP is P;
							otherwise now CP is nothing;
					[if the glulx replacement command exactly matches the text "look":
						now CP is nothing;
					otherwise if the glulx replacement command matches the text "pineapple":
						say "You bail from the lesson by saying the safe word.";
						now delayed fainting is 1;]
					if CP is yourself:
						say "Input not understood. Please enter a number that corresponds to one of the toys.";
						now CP is nothing;
				if delayed fainting is 1:
					do nothing;
				otherwise if the size of CP > the insertableGirthAcceptance of asshole:
					say "You try your best but it's just too big! You hang your head in shame as you put the [MediumDesc of CP] back onto the table. [BigNameDesc of M] shakes [his of M] head in disappointment.[line break][speech style of M]'I had higher expectations of you.'[roman type][line break]";
					add 0 to LN;
					if there is a worn tattoo and the number of worn crotch tattoo is 0:
						if the player is female or fast tg is 3:
							say "[BigNameDesc of M] touches the space above your [genitals] with a finger. [big his of M] finger is burning hot!";
							PainUp 1;
							summon measurement tattoo;
							say "[speech style of M]'Since you want to try and get such big things inside you, this should help you manage it.'[roman type][line break]When [he of M] removes [his of M] finger, you have a new tattoo!";
							try examining measurement tattoo;
							if the player is male, SexChange the player;
				otherwise:
					now CP is worn by the player;
					now CP is sure;
					now CP is identified;
					say "You relax your [asshole] as much as you can to try and push the plug inside of you. ";
					compute toyInsertion of CP into asshole;
					now CP is cursed;
					now the quest of CP is next-lesson-quest;
					remove CP from LP;
					add the size of CP to LN;
					say "[BigNameDesc of M] folds [his of M] arms with satisfaction.[line break][speech style of M]'Good job. You get [size of CP] [if size of CP is 1]entry[otherwise]entries[end if] in the raffle.'[roman type][line break]";
					unless the player is broken:
						say "Despite the perverse context, [NameDesc of M][']s praise significantly boosts your self-esteem.";
						obsceneDignify;
			otherwise:
				say "[speech style of M]'[student-name of ST], [one of]you're up[or]you're next[or]go ahead[then at random].'[roman type][line break]";
				let STD be (the dedication of ST + (a random number between 0 and 2)) * 2;
				let E be the number of entries in LP;
				let STP be entry E of LP;
				repeat with P running through LP:
					if the size of P <= STD:
						now STP is P;
						now STD is -1000; [prevents any smaller plugs being selected (because we've just chosen our plug)]
				say "[BigNameDesc of ST] walks up and after a brief hesitation chooses the [MediumDesc of STP]. [if ST is innocent student]After a few seconds of hesitation[otherwise if ST is ditzy student][big he of ST] giggles naughtily as[otherwise]Taking it in one hand[end if] [he of ST] [one of]bends over[or]squats[or]turns around[at random] and tries to push it into [his of ST] [one of]asshole[or]ass[or]butthole[at random]. ";
				if (a random number from 1 to 7) + (a random number from 1 to 7) <= the size of STP:
					say "[one of][big he of ST] manages to get it about halfway in before [he of ST] yelps in pain and lets go, causing it to fall to the floor[or]As soon as [he of ST] pushes the first half-inch inside [he of ST] realises [his of ST] mistake - there's no way it'll fit! With a dejected expression [he of ST] gives up and looks to return to [his of ST] desk[or][big he of ST] tries to ease it in but [his of ST] face reveals how much [he of ST][']s struggling. You watch as [he of ST] makes several attempts to overcome the sensations but ultimately fails, hanging [his of ST] head in shame[in random order]. [BigNameDesc of M] shakes [his of M] head.";
					add 0 to LN;
					if the size of STP < 5 and ST is demotable:
						say "[speech style of M]'Fucking disgraceful. You can't even manage that one?! You don't even deserve to be in this class. Go back to sapphire, you pathetic slut.'[roman type][line break][BigNameDesc of M] claps her hands.";
						demote ST;
						say "[speech style of M]'Now get the fuck out of my classroom.'[roman type][line break][BigNameDesc of ST] lets out a quiet [if ST is nasty student]growl[otherwise]sob[end if] before leaving.";
						compute mandatory room leaving of ST;
					otherwise:
						say "[speech style of M]'[one of]Aww, that's too bad[or]Tough luck, [student-name of ST][in random order]. That means you're definitely not getting promoted. [one of]Make sure to put it back on the table before you go back, there's a good [boy of ST][or]Remember to put it back on the table now[stopping].'[roman type][line break]";
				otherwise:
					say "[one of]With an audible slurp, the plug quickly slips inside [his of ST] greedy hole! [big he of ST] [if ST is ditzy student]grins widely[otherwise]blushes furiously and hides [his of ST] face[end if] as [he of ST] returns to [his of ST] desk[or][BigNameDesc of ST] makes several attempts to push the plug in but can't seem to get it all of the way. Then with one big gulp [he of ST] pushes really hard, and it finally squeezes its way inside. But then [NameDesc of ST] whimpers, clearly unable to handle the intense sensation! [he of ST] tries to pull it out again but now the curse has taken hold and it won't budge. [big he of ST] groans with desperation, still pulling in vain at the base of the [if the size of STP > 5]oversized [end if]toy as [he of ST] slowly waddles back to [his of ST] desk[or][big he of ST] takes it slow and carefully, and the plug slowly but surely takes its place inside its new home. [BigNameDesc of ST] walks proudly back to [his of ST] desk[or][big he of ST] goes with the 'ripping off a band-aid' approach and shoves the plug in with one quick motion. It works, but you can see the pain and regret on [his of ST] face as [he of ST] gingerly walks away[or][big he of ST] manages to get it in without much difficulty, and happily walks back to [his of ST] place[in random order].";
					say "[speech style of M]'[one of]Well done[or]Good job[or]Great job[or]Nice one[or][if the size of STP > 4]Impressive[otherwise]Fair enough[end if][in random order], [student-name of ST]. You've earned [size of STP] [if size of STP is 1]copy[otherwise]copies[end if] of your name in the raffle.'[roman type][line break]";
					remove STP from LP;
					add the size of STP to LN;
					destroy STP;
		if delayed fainting < 1:
			let winnersAnnounced be 0;
			let LS2 be a list of people;
			let LN2 be a list of numbers;
			say "After everyone has had their turn, ";
			while winnersAnnounced < raffleWinners:
				increase winnersAnnounced by 1;
				let TN be 0;
				let bingo be 0;
				repeat with N running through LN:
					increase TN by N;
				let RN be a random number between 1 and TN;
				let WST be the player;
				while the number of entries in LN > 0:
					decrease RN by entry 1 from LN;
					if RN > 0 or bingo is 1:
						add entry 1 from LN to LN2;
						remove entry 1 from LN;
						add entry 1 from LS to LS2;
						remove entry 1 from LS;
					otherwise:
						now WST is entry 1 of LS;
						remove entry 1 from LN;
						remove entry 1 from LS;
						now bingo is 1;
				while the number of entries in LN2 > 0: [move all names back from the backup list to the main list, but the winner has been removed]
					add entry 1 from LN2 to LN;
					remove entry 1 from LN2;
					add entry 1 from LS2 to LS;
					remove entry 1 from LS2;
				if armband is emerald or WST is student:
					say "[BigNameDesc of M] shuffles the pieces of paper in [his of M] raffle box and then picks one. [big he of M] looks up with a smile.[line break][speech style of M]'Congratulations [if WST is yourself][NameBimbo][otherwise][student-name of WST][end if]! [one of]You're a winner today[or]Lucky you[or]Your name's on this one[at random].'[roman type][line break]";
					if WST is yourself or WST is promotable student, say "[big he of M] snaps [his of M] fingers as [he of M] makes gesture towards [if WST is yourself]you[otherwise][him of WST][end if].";
					if WST is student:
						promote WST;
					otherwise:
						now armband is ruby;
						say "You watch as the ID card inside your armband transforms!";
						if diaper quest is 0:
							now the armband-title of armband is "Darling";
							now the armband-print of armband is "daring dong lover";
						otherwise:
							now the armband-title of armband is "Bambi";
							now the armband-print of armband is "brave buttplug bearer";
						say ClothingDesc of armband;
						update students; [an important line which makes boring old students disappear and new cool ones appear]
			say "[speech style of M]'Well, that's all she wrote for today! Until next time, brats.'[roman type][line break][BigNameDesc of M] announces the end of the class.";
			repeat with P running through plugs in the location of the player:
				unless P is worn, only destroy P;
		force allocate 30 seconds.

Definition: a text (called T) is toy-lesson-responsive:
	if T matches the text "ta", case insensitively or T matches the text "plug", case insensitively or T matches the text "we", case insensitively:
		repeat with P running through plugs in the location of the player:
			if T matches the text text-shortcut of P, decide yes;
	decide no.

Definition: a text (called T) is toy-lesson-examine-responsive:
	if T matches the text "examine" or T matches the text "look" or T matches the text "x", case insensitively or T matches the text "l", case insensitively:
		repeat with P running through plugs in the location of the player:
			if T matches the text text-shortcut of P, decide yes;
		repeat with P running through monsters in the location of the player:
			if T matches the text text-shortcut of P, decide yes;
	decide no.



Part - Bianca

teacher-bianca is an emerald-teacher.

The text-shortcut of teacher-bianca is "tebi".

Figure of bianca is the file "NPCs/School/Teacher/teacher3.png".

To decide which figure-name is the monster-image of (M - teacher-bianca):
	decide on figure of bianca.

To say MonsterDesc of (M - teacher-bianca):
	say "This tall slim-yet-curvy lady has long light brown hair. She's wearing all black. Her tight dress has a split section at the front of the skirt, the resulting gap rising high enough to fully expose her black panties. She seems completely comfortable with her appearance.".

The teacher-name of teacher-bianca is "Bianca".

To say WhoAnswer of (M - teacher-bianca):
	say "[speech style of M]'Fashion!'[roman type][line break]".

To say WhereAnswer of (M - teacher-bianca):
	say "[speech style of M]'[if the rank of the player <= 1]A safe place where you can learn to be a better you.'[otherwise]You just need to be brave!'[end if][roman type][line break]".

To say AdviceAnswer of (M - teacher-bianca):
	say "[speech style of M]'There should never be a reason you need to bend your knees.'[roman type][line break]".

dress-lesson is a lesson. The lesson-teacher of dress-lesson is teacher-bianca.

Definition: dress-lesson (called L) is lesson-appropriate:
	if the number of worn skirted clothing is not 1 and (there is a worn dress or there is worn trousers), decide no;
	if the player is not able to use their hands, decide no;
	decide yes.

To compute teaching of (L - dress-lesson):
	let M be the lesson-teacher of L;
	say "[speech style of M]'Today's lesson is on the proper purpose of skirts.'[roman type][line break][NameDesc of M] stands at the front of the room and motions at [his of M] own dress with [his of M] hands as [he of M] speaks.";
	let C be a random worn skirted clothing;
	if C is super-short clothing and the number of worn trousers is 0:
		say "[speech style of M]'You.'[roman type][line break][NameDesc of M] points a finger directly at you. You can't help but gulp.[line break][speech style of M]'That skirt is just so incredibly daring! Bravo! There's nothing more that I can teach you here.'[roman type][line break]";
		now armband is ruby;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "upskirt expert";
		say ClothingDesc of armband;
		say "You can't help but grin widely as you walk out of the room!";
		try going south;
		say "[variable custom style][if C is cursed and the humiliation of the player < HUMILIATION-DISGRACED]I guess it was good for me that [he of M] doesn't know I'm only wearing this thing because it's cursed...[otherwise]This is easy![end if][roman type][line break]";
		allocate 12 seconds;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise if C is hobble-skirted clothing:
		if hypno-curtsey-trigger > 0:
			say "[speech style of M]'You.'[roman type][line break][NameDesc of M] points a finger directly at you. You instinctively rise to your feet and perform a perfect curtsey, exposing [if there is worn total protection knickers]your underwear[otherwise]yourself[end if] to the room.[line break][speech style of M]'Aha, yes I see your new [']talent['] has taken its proper hold. In that case, there is nothing more I need to teach you.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Curiosity";
			now the armband-print of armband is "curtseying courtesan";
			say ClothingDesc of armband;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
			say "[if schoolNames is 1]You find yourself beaming proudly as your mind somehow rewires itself to adopt your new name. [end if][NameDesc of M] rolls her eyes.[line break][speech style of M]'Class dismissed!'[roman type][line break]";
		otherwise:
			say "[speech style of M]'You.'[roman type][line break][NameDesc of M] points a finger directly at you. You can't help but gulp.[line break][speech style of M]'That skirt is much too long! You can't use it for flashing your underwear properly at all! No, you'll have to keep using your hands to expose yourself. But we can't just trust you to do that now, can we? No, I think we need some kind of guarantee. Come up to the front now, [NameBimbo].'[roman type][line break]You sheepishly obey. As soon as you reach [him of M], [he of M] holds your head still between both [his of M] hands and stares directly into your eyes.[line break][speech style of M]'Do you know what a curtsey is, little one? Yes you do. Well I think you will feel a lot more like curtseying politely to people in the future, won't you?'[roman type][line break][big his of M] fierce gaze penetrates deep down into your soul and you feel some kind of magic entering your body through the connection. Your mind feels foggy and you feel something like a switch click in your brain.[line break][speech style of M]'Yes, I think you will.'[roman type][line break][M] lets go of you and the fog begins to clear. You notice that [NameDesc of M] looks very tired and is breathing rather heavily.[line break][speech style of M]'I'm afraid that's going to have to be the end of the class for today. Dismissed.'[roman type][line break][big he of M] makes for the door, as gracefully as [he of M] can.";
			MagicPowerUp 2;
			now hypno-curtsey-trigger is 1;
			allocate 12 seconds;
			compute mandatory room leaving of M;
	otherwise:
		allocate 24 seconds;
		if C is not clothing:
			let D be a random off-stage short clubbing dress;
			if D is not clothing, now D is a random short clubbing dress;
			say "[speech style of M]'Those of you without the necessary attire will wear what you are given.'[roman type][line break][NameDesc of M] hands you a [ShortDesc of D] and forces you to put it on.";
			repeat with O running through worn overdresses:
				now O is carried by the player;
			summon D cursed with quest;
			now the raw-magic-modifier of D is 0;
			now D is blandness;
			now C is D;
			refresh the clothing-focus-window;
		say "[speech style of M]'Let's begin. A skirt is a tool that we can use not only to keep our [if diaper quest is 1]underwear[otherwise]privates[end if] easily accessible at all times, but also it allows us to make them visible to onlookers at a moment's notice, should we so choose. Now, firstly everyone please stand up straight.'[roman type][line break]You all do so obediently.[line break][speech style of M]'Right now, your private area is hidden under your skirt. But what happens if you do this?'[roman type][line break][BigNameDesc of M] bends over at the waist, keeping her legs perfectly straight.[line break][speech style of M]'Come on everyone, give it a go!'[roman type][line break]As everyone mimics the teacher's actions, flashes of panties and bare bottoms become visible all over the room.[line break][speech style of M]'So you see, just by keeping your knees unbent and bending over, we can send signals to whomever we like. Now, who wants to be today's volunteer? If you do well, you might even get promoted.'[roman type][line break]";
		DexUp 1;
		say "Do you want to volunteer? ";
		if the player is bimbo consenting:
			say "You raise your hand and then at [NameDesc of M][']s signal, you walk to the front of the class. [big he of M] then brushes [his of M] hand over [his of M] desk, making several various pieces of chalk fall to the floor around you.[line break][speech style of M]'Oh no [NameBimbo], how clumsy of you! Pick all those up at once!'[roman type][line break]You understand what is required of you - you are supposed to make sure you always bend at the waist and not at the knees. ";
			if short skirts permanent fetish is 0 and (the player is proud or (the player is modest and the number of worn dense total protection knickers is 0)):
				say "You try your best, but as your back goes down and your butt becomes exposed to the class, you lose your nerve. This is too weird and embarrassing, to have all this attention on you as your [if the number of worn dense total protection knickers is 0]private parts become[otherwise]underwear becomes[end if] exposed! You can't bring yourself to go through with it, and end up bending your knees and quickly picking up the chalk the 'normal' way. Your cheeks flush red in shame, but you're not even sure if you feel most ashamed about the fact that you didn't manage to complete the task, or the fact that you almost did.[line break][speech style of M]'Very disappointing. Why volunteer when you're CLEARLY not ready to go through with this yet?! You need to loosen up, girl.'[roman type][line break][big he of M] shoves a hand up your skirt and grips a butt cheek, beginning to knead it like dough. You yelp in surprise [if the player is feeling dominant]and then grind your teeth with anger[otherwise]but don't dare move away from her[end if]. You feel a bizarre, almost magical warmth emitting from her hands, and then a weird shiver overcomes your entire body. After it's finished, you blink a couple of times and look down at your skirt, realising that you do indeed now feel strangely at home in your [ShortDesc of C]. The idea of wearing a normal skirt suddenly feels just... wrong. You look at [NameDesc of M] quizzically, and she just smirks back.[line break][speech style of M]Yes, I think that will do for now. Class dismissed!'[roman type][line break]";
				increase short skirts permanent fetish by 1;
			otherwise:
				say "You try your best, bending at the waist and exposing your butt to the class. You can feel the attention of every single person in the room on your exposed [if the number of worn dense total protection knickers is 0][player-crotch][otherwise][ShortDesc of random worn knickers][end if], [if the player is shameless]which makes you shiver with excitement[otherwise]and can't help but feel a little shiver of excitement alongside the shame[end if]. You reach the ground and begin to pick up a piece of chalk. Deciding to show off your skills, you reach far to the left and right to try and pick up all the chalk in a single flourish. ";
				humiliate MODERATE-HUMILIATION;
				if a random number between 3 and 12 > the dexterity of the player:
					say "You think you're going to manage it, but suddenly you feel unsteady and begin to topple. You try to react to this in time by putting some of your weight on your hands, but with your locked knees this goes badly and just sends you further off balance. You stumble and then fall to the ground, landing on your face with your butt high in the air, still exposed to all your classmates behind you. They all burst out laughing and you turn redder than ever!";
					try kneeling;
					PainUp 1;
					say "[speech style of M]'Yes yes, very funny. At least [he of the player] tried [his of the player] best!'[roman type][line break][M] pats you on the top of your head.[line break][speech style of M]'Still, this just goes to show all of you how much can go wrong if you haven't practised enough! You want to look refined and [if diaper quest is 1]grown up[otherwise]sexy[end if], not idiotic and clumsy! Anyway I think the pain and humiliation that [NameBimbo] is feeling after that fall is enough of a punishment, don't you? Class dismissed.'[roman type][line break]You groan inwardly as you pull yourself up onto all fours. That did not go as planned...";
				otherwise:
					say "With an impressive display of balance you gather it all in your hands and then raise yourself back upright. You place the chalk into [NameDesc of M][']s hand with a proud smile.[line break][speech style of M]'Very good indeed. Most impressive. I don't think we could ask for anything better than that from a [accessory-colour of armband] student.'[roman type][line break]";
					now armband is ruby;
					say "You watch as the ID card inside your armband transforms!";
					now the armband-title of armband is "Felicity";
					now the armband-print of armband is "flexible fox";
					say ClothingDesc of armband;
					update students; [an important line which makes boring old students disappear and new cool ones appear]
					say "[if schoolNames is 1]You find yourself beaming proudly as your mind somehow rewires itself to adopt your new name. [end if][NameDesc of M] rolls her eyes.[line break][speech style of M]'Class dismissed!'[roman type][line break]";
		otherwise:
			let P be a random promotable student in the location of the player;
			if P is nothing, now P is a random student in the location of the player;
			say "[BigNameDesc of P] raises [his of P] hand and then at [NameDesc of M][']s signal, walks to the front of the class. [BigNameDesc of M] then brushes [his of M] hand over [his of M] desk, making several various pieces of chalk fall to the floor around [NameDesc of P].[line break][speech style of M]'Oh no [student-name of P], how clumsy of you! Pick all those up at once!'[roman type][line break][BigNameDesc of P] makes sure to keep [his of P] knees locked unbent as [he of P] bends over and picks up the chalk, exposing what's under [his of P] skirt to the class as [he of P] does. [BigNameDesc of M] is visibly impressed, and claps [his of M] hands.[line break][speech style of M]'Outstanding! The rest of you should ensure to learn from [his of P] example.'[roman type][line break]";
			promote P;
			say "You watch as [his of P] emerald ID card turns into a ruby one, and [he of P] is now '[student-name of P] the [student-print of P]'. [big he of P] grins widely and then prances out of the room.";
			compute mandatory room leaving of P;
			say "[BigNameDesc of M] rolls her eyes.[line break][speech style of M]'That'll do for now. Class dismissed!'[roman type][line break]".



Teachers Emerald ends here.
