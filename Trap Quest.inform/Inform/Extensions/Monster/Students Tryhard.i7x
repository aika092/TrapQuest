Students Tryhard by Monster begins here.

A tryhard student is a kind of student. Understand "dedicated" as a tryhard student.

To say MediumDesc of (M - a tryhard student):
	say "dedicated [rank-colour of M] student [student-name of M]".

To decide which number is the dedication of (M - a tryhard student): [We can use this for various calculations to check which students do what]
	decide on a random number between 2 and 5.

To compute student perception of (M - a tryhard student):
	if the current-rank of M > the rank of the player:
		say "[big he of M] glances at your armband and turns away without acknowledging you[one of]. It doesn't look like [he of M] is going to engage you in conversation unless you start it.[or].[stopping]";
	otherwise if the current-rank of M < the rank of the player:
		say "[big his of M] eyes linger on your armband for a moment before flitting up to your face.";
	otherwise:
		compute appearance assessment of M.

To say LewdAppearanceAssessment of (M - a tryhard student):
	say "[BigNameDesc of M] [one of]clenches [his of M] fists[or]grinds [his of M] teeth[in random order].[line break][speech style of M]'[one of]You're making the rest of us look bad!'[or]If you look like that, the teachers won't pay all of their attention to me!'[in random order][roman type][line break]".

Part - Laci

student-laci is a tryhard student.

The text-shortcut of student-laci is "stla".

Figure of laci is the file "NPCs/School/Student/student3.png".

To decide which figure-name is the monster-image of (M - student-laci):
	decide on figure of laci.

To say MonsterDesc of (M - student-laci):
	say "This tall, dirty blonde [man of M] is wearing a skimpy sexy schoolgirl outfit with matching tartan [if the current-rank of M is 1]miniskirt and tie[otherwise]skirt and tie. What was once a miniskirt is now so short it's really nothing more than a belt[end if]. [big his of M] chunky black heels are polished to the nth degree. [big he of M] is constantly 'accidentally' dropping things and then bending over with completely unbent knees to expose as much of [his of M] bottom as possible to whoever might be looking [his of M] way[if the current-rank of M is 3]. Whenever [he of M] bends over [he of M] makes sure to first cross [his of M] feet, perhaps to make sure people know [he of M] is bending at the waist on purpose[end if].".

The max-rank of student-laci is 3.

To update name of (M - student-laci):
	if the current-rank of M is 1:
		now the student-name of M is "Laci";
		if diaper quest is 1, now the student-print of M is "proudly potty-trained";
		otherwise now the student-print of M is "upskirt understudy";
	otherwise:
		now the student-name of M is "Lala";
		now the student-print of M is "spankable schoolgirl".

To say FirstResponse of (M - student-laci):
	say "[speech style of M]'Hey there. [if diaper quest is 1]I don't need diapers at all, as you can see. It's difficult to reach a level of [maturity] where they'll let you wear big girl thongs like this.'[otherwise]Oops, can you see my panties?'[end if][roman type][line break]".

To say RepeatResponse of (M - student-laci):
	if diaper quest is 0, say FirstResponse of M;
	otherwise say "[speech style of M]'Hey there. [if there is a worn diaper]I see you're in diapers. Too bad you don't have the [maturity] to wear something like this.'[otherwise]I've still never had an accident. Are you jealous of my panties? You should be.'[end if][roman type][line break]".

To say StoryAnswer of (M - student-laci):
	say "[speech style of M]'[if diaper quest is 1]I've been sent here to prove my [maturity]. And as you can see, I am wearing sexy ADULT panties! You can see them, right??? No nappies here!'[otherwise if the current-rank of M is 1]My boyfriend has a fetish for upskirts so I'm here to train to be less shy in short skirts and always bend over at the waist. Am I doing it right?'[otherwise]My boyfriend is going to to nuts when he sees me waltzing around in tiny skirts like this! I'm going to get the prize for best girlfriend ever!'[end if][roman type][line break]".

To say WhereAnswer of (M - student-laci):
	say "[speech style of M]'[if the rank of the player <= 1]Um, dumb-head alert! Quit talking to me before the teachers think I'm an idiot too!'[otherwise]Practise makes perfect. Oops, I dropped my pen, teehee!'[end if][roman type][line break]".

Part - Candy

student-candy is a tryhard student.

The text-shortcut of student-candy is "stca".

Figure of rank 1 candy is the file "NPCs/School/Student/student5a.png".

To decide which figure-name is the monster-image of (M - student-candy):
	[if the current-rank of M >= 4, decide on figure of rank 4 candy;]
	if the current-rank of M is 3, decide on figure of rank 3 candy;
	if the current-rank of M is 2, decide on figure of rank 2 candy;
	decide on figure of rank 1 candy.

To say MonsterDesc of (M - student-candy):
	say "This tall blonde [man of M] is wearing a [if the current-rank of M is 1]purple cheerleader-style outfit with yellow trims, made out of a shirt that ends at [his of M] belly button, a thigh-length skirt[otherwise if the current-rank of M is 2]super skimpy purple outfit with yellow trims, made out of a tiny tube top and microskirt[otherwise]super skimpy purple microskirt and a matching chest-exposing cupless tube top[end if], thigh-high purple stockings and purple sneakers with yellow laces and soles. [big he of M] has a pair of fake pink cat ears in [his of M] rose coloured hair. [if the current-rank of M is 1][big his of M] expression exudes playfulness and confidence[otherwise][big he of M] looks a bit less certain about how awesome [he of M] looks than [he of M] used to[end if].";
	if diaper quest is 0, say "[if the current-rank of M is 2][big he of M] now has long fake purple nails on each finger, and is holding them out to the sides delicately, as if afraid of breaking one.[otherwise if the current-rank of M >= 3][big he of M] now has fingerless pink kitty mittens locked onto [his of M] hands, rendering [him of M] almost completely without manual dexterity. A collar connected to a pink leash is locked on [his of M] neck, and a long fake pink tail sways from [his of M] rear, almost certainly connected to a butt plug.[end if]";
	otherwise say "[if the current-rank of M is 2]The new shorter length of [his of M] skirt exposes the fact that [he of M][']s wearing a small pink diaper.[otherwise if the current-rank of M >= 3][big he of M] now has fingerless pink kitty mittens locked onto [his of M] hands, rendering [him of M] almost completely without manual dexterity. A collar connected to a pink leash is locked on [his of M] neck, and a long fake pink tail sways from [his of M] rear, almost certainly connected to a butt plug.[end if]".

The max-rank of student-candy is 3.

To update name of (M - student-candy):
	if the current-rank of M is 1:
		now the student-name of M is "Candace";
		now the student-print of M is "fancy feline";
		now the text-shortcut of M is "stca";
	otherwise if the current-rank of M is 2:
		now the student-name of M is "Candy";
		now the student-print of M is "pretty kitty";
		now the text-shortcut of M is "stca";
	otherwise:
		now the student-name of M is "Kandi";
		now the student-print of M is "prancing pussy";
		now the text-shortcut of M is "stka".

To say FirstResponse of (M - student-candy):
	if the class of the player is catgirl:
		if the current-rank of M >= the rank of the player:
			say "[big he of M] puts on [his of M] sweetest kitty cat voice.[line break][speech style of M]'You have a long way to go if you want to be as cute as I am, nyaa!'[roman type][line break]";
		otherwise:
			say "[big he of M] puts on [his of M] sweetest kitty cat voice.[line break][speech style of M]'Nyaa! You're cute, but just you wait, one day I'm going to be the cutest cat you've ever seen!'[roman type][line break]";
	otherwise:
		say "[big he of M] puts on [his of M] sweetest kitty cat voice.[line break][speech style of M]'Nyaa! Aren't I just the cutest cat you've ever seen?'[roman type][line break]";

To say RepeatResponse of (M - student-candy):
	say FirstResponse of M.

To say StoryAnswer of (M - student-candy):
	say "[speech style of M]'[if diaper quest is 1]I'm here to learn how to be an even better kitty for my owner! I'm good at following instructions. No actually, I'm the BEST at following instructions! My owner wants me to learn to pee on the ground like a normal kitty but unlearning toilet training is hard. So I'm seeing if this school can help me out.'[otherwise]My owner wants me to be his 24/7 live-in pet girl but I'm still learning how to properly [please] men. I think I've got the sexy kitty cat perfect already though. Miaow!'[end if][roman type][line break]".

To say DamageReaction (N - a number) of (M - student-candy):
	if N > (the maxhealth of M / 4) * 3:
		say "The [noun] easily takes the hit!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The [noun] flinches, taking the hit!";
	otherwise if N > (the maxhealth of M / 4):
		say "The [noun] takes the hit, staggering!";
	otherwise:
		say "The [noun] takes the hit, fighting to maintain [his of M] balance!";
	say "[speech style of M]'[one of]HISS!'[or]NROOWL!'[or]OW, F- I mean, NYOUCH![at random][roman type]".

Part - Default Conversation

To say WhoAnswer of (M - a tryhard student):
	say "[speech style of M]'My teacher says it is [student-name of M], so it's [student-name of M].'[roman type][line break]".

To say WhereAnswer of (M - a tryhard student):
	say "[speech style of M]'[if the rank of the player <= 1]God, how can you not even know where we are! Unless, wait, is that something the teachers will mark you up for?!'[otherwise]By FOCUSING ON YOUR STUDIES!'[end if][roman type][line break]".

To say EscapeAnswer of (M - a tryhard student):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]It's pretty cool, but I don't see why you should be allowed to know before you've earned the rank!'[otherwise]I know the answers, of course, but I'm... err... not allowed to tell you. Yeah...'[end if][roman type][line break]".

To say AdviceAnswer of (M - a tryhard student):
	say "[speech style of M]'[if diaper quest is 0][one of]You'll make a lot of friends if you're willing to suck a lot of [manly-penis][or]If you want to get ahead in life, you just need to suck a [manly-penis] or five[at random][otherwise]Sometimes the mature thing to do is admit that Daddy knows best[end if].'[roman type][line break]".

To compute teaching of (M - a tryhard student):
	say "[speech style of M]'I totally could, because I'm way better at this than you. But I'm technically not allowed, since I'm not a qualified teacher here.'[roman type][line break]".

To say detention chair tease of (M - a tryhard student):
	say "[speech style of M]'[one of]You really should try to get to class on time, you know.'[or]Is there something wrong with your ears? Did you not hear your armband warn you when class was starting?'[in random order][roman type][line break]".

Students Tryhard ends here.
