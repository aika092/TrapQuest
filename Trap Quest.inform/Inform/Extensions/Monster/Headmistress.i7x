Headmistress by Monster begins here.

headmistress is a staff member. headmistress is guarding. headmistress is female. The leftover-type of headmistress is 130.

headmistress is in School08. The text-shortcut of headmistress is "hdm".

Figure of headmistress is the file "NPCs/School/headmistress1.png".
Figure of enslaved diapered headmistress is the file "NPCs/School/headmistress3.png".

To decide which figure-name is the pacified-image of (M - headmistress):
	if M is sex-enslaved, decide on figure of enslaved headmistress;
	if M is diaper-enslaved, decide on figure of enslaved diapered headmistress;
	decide on figure of Missing NPC.

To decide which figure-name is the monster-image of (M - headmistress):
	decide on figure of headmistress.

To say ShortDesc of (M - headmistress):
	say "[if lady fetish is 2]mister [end if]headmistress".

To say MediumDesc of (M - headmistress):
	say "[if lady fetish is 2]mister [end if]headmistress".

To say MonsterDesc of (M - headmistress):
	if M is sex-enslaved:
		if lady fetish is 2:
			say "[BigNameDesc of M][']s dress has been opened further at the front, including a big slit in the skirt section revealing [his of M] bright red chastity cage. A presumably new tattoo sits above [his of M] [sissy-penis], with the words 'Enter in Rear' and an arrow pointing toward his butt. His ass has been made more easily accessible with the addition of a very long ankle spreader bar, which keeps his feet over a metre apart from each other at all times. A tally has been started on his right inner thigh. Looks like he's been fucked at least five times already. One ear has been pierced and a large 'SLUT' tag added. His wrists are cuffed behind him, leaving him absolutely powerless to stop anyone using him as they please. His tongue is stuck out of his mouth with a lewd expression. You watch as he instinctively tries to draw it back into his mouth, but then his 'SLUT' tag flutters wildly as his earring gives him a painful electric shock. He whimpers and returns to sticking his tongue as far out of his mouth as he can.";
		otherwise:
			say "[BigNameDesc of M][']s dress has been opened further at the front, including a big slit in the skirt section right in front of her bare pussy. A presumably new tattoo sits above her slit, with the words 'Fuck Here' and an arrow pointing at her undefended fuckhole. Her entrance has been made even more easily accessible with the addition of a very long ankle spreader bar, which keeps her feet over a metre apart from each other at all times. A tally has been started on her right inner thigh. Looks like she's been fucked at least five times already. One ear has been pierced and a large 'SLUT' tag added. Her wrists are cuffed behind her, leaving her absolutely powerless to stop anyone using her as they please. Her tongue is stuck out of her mouth with a lewd expression. You watch as she instinctively tries to draw it back into her mouth, but then her 'SLUT' tag flutters wildly as her earring gives her a painful electric shock. She whimpers and returns to sticking her tongue as far out of her mouth as she can.";
	otherwise if M is diaper-enslaved:
		say "[BigNameDesc of M][']s red dress has been replaced by a heart-themed red onesie with cute pale frills at the shoulders. Matching pale red ribbons keep her jet black hair in pigtails and make her look a lot less fierce than she used to. Long red latex thigh-highs complete the adorable look. It's clear from the bulkiness between her legs that she's well padded under her new onesie. [one of]More curious, however, is the fact that she's keeping her feet over a metre apart for no clear reason. But then you[or]You[stopping] watch as she instinctively moves her feet a little closer together, but then her fists clench and her legs shudder wildly as her high heels give her painful electric shocks. She whimpers and returns to holding her feet as far apart as she can.";
	otherwise:
		say "This [man of M] looks almost ageless - [he of M]'s clearly an adult but you can't tell if [he of M]'s 20 or 40. [big his of M] very slim figure is complemented by [if lady fetish is 2]a perfectly sculpted chin and a thick, grabbable butt[otherwise]perfect D cup breasts and not insignificant hips[end if]. A tight red latex dress with a very deep V-neck clings tightly to [him of M], allowing you to appreciate all of [his of M] curves. The dress, although very provocative and not reaching below mid-thigh, somehow gives [him of M] an aura of extreme dominance. This sensation is further enhanced by [his of M] straight neat jet black hair and harsh make up which gives [his of M] face a rather... fierce appearance.".

To say MonsterComment of (M - headmistress):
	say "[variable custom style]It's like I can actually feel raw power coming from her. [if the bimbo of the player <= 10]I need to be careful[otherwise]I'd better do whatever she says[end if].[roman type][line break]".

To compute (M - a monster) stomping (N - headmistress):
	if M is in the location of the player, say "Before [he of N] can react, [NameDesc of N] has been pinned to the wall by [NameDesc of M][if diaper quest is 0], and [his of M] [manly-penis] slid into [his of N] asshole[end if]. [big he of N] shrieks [line break][speech style of N]'That fucking [ShortDesc of ex-princess] had one of these roaming [his of ex-princess] lands?!'[roman type][line break]but this turns into an undecipherable wail as [he of M] starts [if diaper quest is 0]cumming. [big his of N] belly stretches to contain all the [semen]. After [he of N] is full, [he of M] tosses [him of N] to the ground, where [he of N] promptly faints[otherwise]transforming[end if].";
	otherwise say "You hear a [man of N] screech [line break][speech style of N]'That fucking [ShortDesc of ex-princess] had one of these roaming [his of ex-princess] lands?!'[roman type][line break][if N is nearby]nearby, [otherwise]somewhere in the region, [end if] followed by a wail of shame.";
	if diaper quest is 1:
		now N is diaper-enslaved;
	otherwise:
		destroy N;
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N.

To say LeftoverDesc (N - 130):
	say "[BigNameDesc of headmistress]is on the ground here, unconscious. [big he of headmistress] has a [if pregnancy fetish is 1]pregnant looking[otherwise]fully stretched[end if] belly and [semen] slowly flowing out of [his of headmistress] [asshole].".

To set up (M - headmistress):
	reset M;
	now the monstersetup of M is 1;
	now M is in School08;
	now M is guarding;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - headmistress):
	decide on 12.

To say speech style of (M - headmistress):
	say "[first custom style]".

Definition: headmistress is dismissable: decide no.

Part - Motion

To compute monstermotion of (M - headmistress):
	unless M is in School08 and M is friendly, compute room leaving of M.

A later time based rule:
	if armband is worn and class-time < (lessonFrequency * -5):
		if headmistress is alive and headmistress is undefeated:
			if headmistress is not regional, regionally place headmistress;
			now headmistress is unleashed;
			now the boredom of headmistress is 0;
		if receptionist is alive and receptionist is undefeated and receptionist is not regional:
			now receptionist is guarding;
			now the boredom of receptionist is 0;
			if playerRegion is Dungeon:
				now receptionist is in Dungeon10;
			otherwise if playerRegion is Hotel:
				now receptionist is in Hotel40;
			otherwise:
				now receptionist is in School01.

To regionally place (M - headmistress):
	remove M from play;
	bore M for 0 seconds; [generally when we regionally place some we want them to be able to notice the player immediately the next time they walk past each other]
	now M is unleashed;
	now the health of M is the maxhealth of M;
	while M is not regional or M is in the location of the player or M is nearby:
		now M is in a random placed room.

Part - Perception

To compute nonstudent perception of (M - a headmistress):
	say "[speech style of M]'You! [if M is in the school]Where is your armband[otherwise]You think you can enrol in my school and then just decide to drop out halfway through[end if]?!'[roman type][line break][Big he of M] takes an aggressive stance.";
	anger M.

To compute student perception of (M - a headmistress):
	if the the armband-print of armband is "new recruit":
		say "[speech style of M]'Hmm, another newbie, is it? Allow me to introduce you to our proud institution. In this school we will help you understand the elegance of submission. You will rise to the top by learning how to be the perfect bottom. Our curriculum is staged to make sure you aren't exposed to anything too... disturbing... until you have proven yourself capable of accepting it.[paragraph break]'Now listen closely, the way this school works is as follows. You [bold type]attend a lesson[speech style of M] by entering the classroom that matches your student rank, which is indicated by the font of the writing on your armband. There is usually a [bold type]minor positive benefit[speech style of M] to attending any class, because, well, experience is the best teacher. Of course, there may be other side-effects depending on your choices. Students who perform well in a lesson can be [bold type]promoted to the next rank.[speech style of M] You will have to prove yourself if you want to raise your ranking and earn access to more of the school. Now, after each lesson, you will need to [bold type]go back through the portal in reception[speech style of M] and wait until your armband notifies you that your next lesson is about to begin. [bold type]You can't just wait in the school for your next lesson, [speech style of M]because time works a bit differently here.[paragraph break]'Now let me take a closer look at you... ";
		if the player is broken:
			say "Hmmm... your mind appears already too far gone for us to really have much fun with you, but if your owner still wants you to go through the advanced lessons, that's fine with me.'";
		otherwise if there is a worn tiara:
			say "We had one of your kind before and [he of ex-princess] didn't manage to fit in. I wonder if you'll prove similarly challenging.'";
		otherwise if mystical amulet is worn:
			say "I sense you have a large part to play in the destiny of this world. But whether that aligns with my own interests remains to be seen. I will be watching you closely.'";
		otherwise if the appearance of the player > 16 and diaper quest is 0:
			say "If your appearance is anything to go by, you're going to fly through the ranks.'";
		otherwise if the class of the player is schoolgirl or the class of the player is cheerleader:
			say "Heh, I appreciate your eagerness but [if diaper quest is 0]it's not that kind of school. Your teachers will be choosing your uniforms[otherwise]depending on your teachers, you may not get to stay like that for long[end if].'";
		otherwise if the cringe appearance of the player > 10:
			say "If your appearance is anything to go by, you're on the right track already.'";
		otherwise if the appearance of the player > 10:
			say "If your appearance is anything to go by, [if diaper quest is 0]you're on the right track already[otherwise]you have a lot to learn about what TRUE submission entails[end if].'";
		otherwise:
			say "Hmm. Your future is still shrouded in uncertainty. You still have a lot of power to decide your fate. I will be watching your progress with great interest.'";
		now the armband-title of armband is "";
		if diaper quest is 0:
			now the armband-print of armband is "slut in training";
			if earnings + 300 < starting-earnings: [Player can't just race through the game to the hotel warp portal to get the promotion]
				if the appearance of the player > 10 or the player is broken:
					now armband is emerald;
					update students;
					now the armband-print of armband is "promising provocateur";
				if the appearance of the player > 16 or the player is broken:
					now armband is ruby;
					update students;
					now the armband-print of armband is "natural born slut";
		otherwise:
			now the armband-print of armband is "submissive in training";
			if earnings + 300 < starting-earnings: [Player can't just race through the game to the hotel warp portal to get the promotion]
				if the cringe appearance of the player > 10 or the player is broken:
					now armband is emerald;
					update students;
					now the armband-print of armband is "promising peepot";
				if the cringe appearance of the player > 16 or the player is broken:
					now armband is ruby;
					update students;
					now the armband-print of armband is "natural born submissive";
		say "[roman type][line break][big he of M] waves a hand in your direction and the your armband slightly transforms! It now reads '[NameBimbo] the [armband-print of armband]' in letters that look like they're made out of [accessory-colour of armband].".

To say WhoQuestion of (M - a headmistress):
	say "[variable custom style]'Who are you?'[roman type][line break]".

To say WhoAnswer of (M - a headmistress):
	say "[speech style of M]'[one of]It is rather obvious that I am the headmistress of this school. [or][stopping]While it is not the focus of this institution, it would behoove you to learn not to ask stupid questions.'[roman type][line break]".

To say WhereAnswer of (M - a headmistress):
	say "[speech style of M]'[if the rank of the player <= 1]You are in the headmistress['] office, young miss. You can find your classes at the end of the hall on the right.'[otherwise]Ranks are earned, and not without effort. Do not forget that.'[end if][roman type][line break]".

To say EscapeAnswer of (M - a headmistress):
	say "[speech style of M]'Your instructors will let you know when you are ready for higher level curriculum.'[roman type][line break]".

To say StoryAnswer of (M - a headmistress):
	say "[speech style of M]'If you have time to ask questions, you have time to focus on your classwork.'[roman type][line break]".

To say AdviceAnswer of (M - a headmistress):
	say "[speech style of M]'Skipping classes will earn you a detention... or worse.'[roman type][line break]".

To compute teaching of (M - a headmistress):
	say "[speech style of M]'I have my [ShortDesc of M] duties to take care of. Ask a teacher if you would like a lesson.'[roman type][line break]".

Headmistress ends here.

