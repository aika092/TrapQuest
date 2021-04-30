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

Definition: student-laci is dark skinned: decide yes.

The text-shortcut of student-laci is "stla".

Figure of rank 1 laci is the file "NPCs/School/Student/student3a.png".

To decide which figure-name is the monster-image of (M - student-laci):
	if the current-rank of M >= 5, decide on figure of rank 5 laci;
	if the current-rank of M is 4, decide on figure of rank 4 laci;
	if the current-rank of M is 3, decide on figure of rank 3 laci;
	if the current-rank of M is 2, decide on figure of rank 2 laci;
	decide on figure of rank 1 laci.

To say MonsterDesc of (M - student-laci):
	say "This tall dark skinned red-headed [man of M] is wearing a skimpy sexy schoolgirl outfit with matching tartan miniskirt and tie. [big his of M] chunky black heels are polished to the nth degree. [big he of M] is constantly 'accidentally' dropping things and then bending over with completely unbent knees to expose as much of [his of M] bottom as possible to whoever might be looking [his of M] way[if the current-rank of M >= 3]. Whenever [he of M] bends over [he of M] makes sure to first cross [his of M] feet, perhaps to make sure people know [he of M] is bending at the waist on purpose[end if]. ";
	if diaper quest is 0, say "[if the current-rank of M is 1][big he of M] is wearing plain white briefs[otherwise if the current-rank of M is 2][big he of M] is no longer wearing any underwear. You can see almost everything, if it wasn't for [his of M] thick thighs and buttocks squooshed together[otherwise if the current-rank of M is 3][big he of M] is no longer wearing any underwear, and is pulling at [his of M] thick thighs and buttocks a bit to enable you to see [his of M] pussy[otherwise if the current-rank of M is 4][big he of M] is no longer wearing any underwear, and is pulling both of [his of M] thick thighs and buttocks apart to enable you to see [his of M] pussy and asshole[otherwise][big he of M] is no longer wearing any underwear, and is pulling both of [his of M] thick thighs and buttocks apart to enable you to see the jewelled buttplug and vibrator currently occupying [his of M] pussy and asshole[end if].";
	otherwise say "[if the current-rank of M is 1][big he of M] is wearing plain white briefs[otherwise if the current-rank of M is 2][big his of M] white briefs have been replaced by a small purple patterned diaper[otherwise if the current-rank of M is 3][big he of M] is now wearing a thick white diaper[otherwise if the current-rank of M is 4][big he of M] is now wearing a thick white diaper, and spanks [himself of M] each time [he of M] bends over[otherwise][big he of M] is now wearing a thick white diaper, and gleefully rubs [his of M] pussy and asshole through [his of M] padding each time [he of M] bends over[end if].".

To say ClitLeadDesc of (M - student-laci):
	say "A long golden chain with a leash handle at the end trails on the ground, clearly permanently connected to [his of M] pierced clitoris. ".

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

Book - Misty

student-misty is a tryhard student.

The text-shortcut of student-misty is "stmi".


Figure of rank 1 misty is the file "NPCs/School/Student/student4a.png".

To decide which figure-name is the monster-image of (M - student-misty):
	if the current-rank of M >= 5, decide on figure of rank 5 misty;
	if the current-rank of M is 4, decide on figure of rank 4 misty;
	if the current-rank of M is 3, decide on figure of rank 3 misty;
	if the current-rank of M is 2, decide on figure of rank 2 misty;
	decide on figure of rank 1 misty.

To say MonsterDesc of (M - student-misty):
	if the current-rank of M is 1:
		say "This slim brunette is wearing a tiny white cotton vest and matching panties. [if diaper quest is 0 and lady fetish is not 2]You can see [his of M] clit piercing poking through. [end if][big he of M] is holding a bottle of water, [if diaper quest is 0]in a somewhat suggestive manner[otherwise]and seems to be trying to remember to take a sip every few seconds[end if].";
	otherwise if diaper quest is 1:
		say "This slim brunette is wearing a tiny white cotton vest and a thick white diaper. [if the current-rank of M is 2][big he of M] is holding a bottle of water, and seems to be trying to remember to take a sip every few seconds[otherwise if the current-rank of M is 3][big his of M] shirt has now been soaked wet with water and turned see-through, and [he of M] seems to be trying to remember to pour a bit of water into [his of M] ever-expanding padding every few seconds[otherwise if the current-rank of M is 4][big his of M] shirt and diaper have now been completely saturated with water, causing the shirt to go see-through and the diaper to have expanded to an insanely massive size. [big he of M] holds onto [his of M] empty water bottle with pride[otherwise][big his of M] shirt and diaper have now been completely saturated with [urine], causing the shirt to go see-through and the diaper to have expanded to an insanely massive size. [big he of M] holds onto [his of M] water bottle full of [urine] with pride. Something tells you it's not [his of M] urine in the bottle[end if].";
	otherwise if the current-rank of M < 4 and M is clitLeaded:
		say "This slim brunette is wearing a tiny white cotton vest which has been soaked with water, and is now see-through. [big his of M] panties have been removed entirely to make space for [his of M] new clit lead.";
	otherwise:
		say "This slim brunette is wearing a tiny white cotton vest[if the current-rank of M <  4] and matching panties[end if]. [if the current-rank of M < 5][big his of M] vest has been soaked with water, and is now see-through. [end if][if the current-rank of M is 3][big his of M] panties have received similar treatment, and [his of M] genitals can be clearly seen through them. [end if][if the current-rank of M >= 4][big his of M] panties have been removed entirely. [end if][if the current-rank of M >= 5][big his of M] hair, face and vest are soaked with [semen], which has turned [his of M] vest see-through. [big his of M] bottle also has an impressive serving of [semen] stored inside it[end if].".

A diaper quest fix rule:
	if watersports fetish is 0, now the max-rank of student-misty is 4.

To update name of (M - student-misty):
	if the current-rank of M is 1:
		now the student-name of M is "Missy";
		if diaper quest is 0, now the student-print of M is "tight topped trollop";
		otherwise now the student-print of M is "thirsty trollop";
	otherwise if the current-rank of M is 2:
		now the student-name of M is "Misty";
		if diaper quest is 0, now the student-print of M is "technically-not-topless tart";
		otherwise now the student-print of M is "thirsty tinkler";
	otherwise if the current-rank of M is 3:
		now the student-name of M is "Minxie";
		now the student-print of M is "wet wench";
	otherwise if diaper quest is 0:
		now the student-name of M is "Minx";
		if the current-rank of M is 4, now the student-print of M is "sheer shirted slut";
		otherwise now the student-print of M is "cum-covered cunt";
	otherwise if the current-rank of M is 4 or watersports fetish is 0:
		now the student-name of M is "Minx";
		now the student-print of M is "saturated sagger";
	otherwise:
		now the student-name of M is "M";
		now the student-print of M is "human toilet".

To say WhereAnswer of (M - student-misty):
	say "[speech style of M]'[if the rank of the player <= 1]This is an... exotic skills academy. But surely you know this already?'[otherwise]You've got to be willing to try anything once. And then twice. And then three times...'[end if][roman type][line break]".

To say StoryAnswer of (M - student-misty):
	if diaper quest is 0, say "[speech style of M]'There's a lot of money in winning wet T-shirt contests in my home town. With the skills and techniques [if the current-rank of M is 2]I'll learn here, I'll have the courage to sign up and wear daring enough clothing to win[otherwise if the current-rank of M is 3]I'm learning here, I'll have no trouble showing off my practically bare tits to the crowd and raking in the dosh[otherwise]I've learned here, I think I'm going to do much better than just rake in all that prize money. I reckon a glamour model scout will notice me in no time, and after I suck [his of shopkeeper] [manly-penis] a few times I'm sure I can convince [him of shopkeeper] to offer me a lucrative contract[end if]!'[roman type][line break]";
	otherwise say "[speech style of M]'I caught my boyfriend reading some weird stories. He explained he finds it hot when [men of M] are desperate to go to the toilet and then sometimes end up wetting themselves. So I thought I'd come here to learn more about how to turn his fantasy into a reality. What can I say, I'm a dedicated [boy of M]friend...'[roman type][line break]".

To compute friendly drink of (M - a student-misty):
	if the current-rank of M >= 4:
		say "[speech style of M]'I'm all out. Find your own drink.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Bah. I guess you can have a sip from my water bottle. But only a little mind you, I need the rest [if the current-rank of M is 2 or diaper quest is 1]for... reasons[otherwise]to, erm, well, keep myself looking so sexy[end if].'[roman type][line break]";
		say "You take a sip and feel much better!";
		StomachUp 2.

Part - Candy

student-candy is a tryhard student.

The text-shortcut of student-candy is "stca".

Figure of rank 1 candy is the file "NPCs/School/Student/student5a.png".

To decide which figure-name is the monster-image of (M - student-candy):
	if the current-rank of M >= 4, decide on figure of rank 4 candy;
	if the current-rank of M is 3, decide on figure of rank 3 candy;
	if the current-rank of M is 2, decide on figure of rank 2 candy;
	decide on figure of rank 1 candy.

To say MonsterDesc of (M - student-candy):
	say "This tall blonde [man of M] is wearing a [if the current-rank of M is 1]purple cheerleader-style outfit with yellow trims, made out of a shirt that ends at [his of M] belly button, a thigh-length skirt[otherwise if the current-rank of M is 2]super skimpy purple outfit with yellow trims, made out of a tiny tube top and microskirt[otherwise]super skimpy purple microskirt and a matching chest-exposing cupless tube top[end if], thigh-high purple stockings and purple sneakers with yellow laces and soles. [big he of M] has a pair of fake pink cat ears in [his of M] rose coloured hair. [if the current-rank of M is 1][big his of M] expression exudes playfulness and confidence[otherwise][big he of M] looks a bit less certain about how awesome [he of M] looks than [he of M] used to[end if].";
	if diaper quest is 0, say "[if the current-rank of M is 2][big he of M] now has long fake purple nails on each finger, and is holding them out to the sides delicately, as if afraid of breaking one.[otherwise if the current-rank of M >= 3][big he of M] now has fingerless pink kitty mittens locked onto [his of M] hands, rendering [him of M] almost completely without manual dexterity. A collar connected to a pink leash is locked on [his of M] neck, and a long fake pink tail sways from [his of M] rear, almost certainly connected to a butt plug.[end if]";
	otherwise say "[if the current-rank of M >= 4][big he of M] is kept in a thick and completely uncovered double-diaper. [end if][if the current-rank of M is 2]The new shorter length of [his of M] skirt exposes the fact that [he of M][']s wearing a small pink diaper.[otherwise if the current-rank of M >= 3][big he of M] now has fingerless pink kitty mittens locked onto [his of M] hands, rendering [him of M] almost completely without manual dexterity. A collar connected to a pink leash is locked on [his of M] neck, and a long fake pink tail sways from [his of M] rear, almost certainly connected to a butt plug.[end if]";
	if the current-rank of M >= 4, say "A pink cat's paw-print is permanently inked onto [his of M] left arm, branding [him of M] as a cat-slave[if diaper quest is 1]. Even worse, the words 'Kitty Litter' have been tattooed in pink letters on [his of M] lower back, just above the waistband of [his of M] diaper[end if].".

To say ClitLeadDesc of (M - student-candy):
	say "[big his of M] pierced nipples are permanently connected to [his of M] pierced clitoris by two long dangling gold chains. ".

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
		say DamageReactHealthy of M;
	otherwise if N > (the maxhealth of M / 4) * 2:
		say DamageReactDamaged of M;
	otherwise if N > (the maxhealth of M / 4):
		say DamageReactTired of M;
	otherwise:
		say DamageReactWeak of M;
	say "[speech style of M]'[one of]OW, F- I mean, NYOUCH[or]HISS[or]NROOWL[then at random]!'[roman type][line break]".

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
