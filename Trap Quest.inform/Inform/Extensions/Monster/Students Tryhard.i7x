Students Tryhard by Monster begins here.

A tryhard student is a kind of student. Understand "dedicated" as a tryhard student.

To say MediumDesc of (M - a tryhard student):
	say "dedicated [rank-colour of item described] student [student-name of item described]".

To decide which number is the dedication of (M - a tryhard student): [We can use this for various calculations to check which students do what]
	decide on a random number between 2 and 5.

Part - Laci

student-laci is a tryhard student.

The text-shortcut of student-laci is "stla".

Figure of laci is the file "NPCs/School/Student/student3.png".

To decide which figure-name is the monster-image of (M - student-laci):
	decide on figure of laci.

To say MonsterDesc of (M - student-laci):
	say "This tall dirty blonde [man of M] is wearing a skimpy sexy schoolgirl outfit with matching tartan [if the current-rank of M is 1]miniskirt and tie[otherwise]skirt and tie. What was once a miniskirt is now so short it's really nothing more than a belt[end if]. [big his of M] chunky black heels are polished to the nth degree. [big he of M] is constantly 'accidentally' dropping things and then bending over with completely unbent knees to expose as much of [his of M] bottom as possible to whoever might be looking [his of M] way[if the current-rank of M is 3]. Whenever [he of M] bends over [he of M] makes sure to first cross her feet, perhaps to make sure people know [he of M] is bending at the waist on purpose[end if].".

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
	say "[speech style of M]'[if the rank of the player <= 1]Um, dumb-head alert! Quit talking to me before the teachers think I'm an idiot too!'[otherwise]Practice makes perfect. Oops, I dropped my pen, tee-hee!'[end if][roman type][line break]".

Part - Misty

student-misty is a tq-only tryhard student.

The text-shortcut of student-misty is "stmi".

Figure of misty is the file "NPCs/School/Student/student4.png".

To decide which figure-name is the monster-image of (M - student-misty):
	decide on figure of misty.

To say MonsterDesc of (M - student-misty):
	say "This slim brunette is wearing a tiny white cotton vest and matching skirt that are both extremely thin and have been torn so they are now hardly large enough to be called clothes. [if the current-rank of M is 2][big his of M] small A-cup breasts are almost visible under the fragile top[otherwise if the current-rank of M is 3][big he of M] has poured a bit of water onto both items, meaning they have gone rather see-through, and you can clearly make out [his of M] nipples[otherwise][big he of M] is constantly re-soaking both items from [his of M] bottle of water, to make sure [his of M] clothes are extremely sheer and [his of M] naughty bits completely visible at all times[end if].".

The min-rank of student-misty is 2.
The max-rank of student-misty is 4.
The current-rank of student-misty is 2.

To update name of (M - student-misty):
	if the current-rank of M is 2:
		now the student-name of M is "Missy";
		now the student-print of M is "tight topped trollop";
	otherwise if the current-rank of M is 3:
		now the student-name of M is "Misty";
		now the student-print of M is "technically-not-topless tart";
	otherwise:
		now the student-name of M is "Minxie";
		now the student-print of M is "sheer shirted slut";

To say WhereAnswer of (M - student-misty):
	say "[speech style of M]'[if the rank of the player <= 1]This is an... exotic skills college. But surely you know this already?'[otherwise]You've got to be willing to try anything once. And then twice. And then three times...'[end if][roman type][line break]".

To say StoryAnswer of (M - student-misty):
	say "[speech style of M]'There's a lot of money in winning wet T-shirt contests in my home town. With the skills and techniques [if the current-rank of M is 2]I'll learn here, I'll be brave enough to sign up and wear daring enough clothing to win[otherwise if the current-rank of M is 3]I'm learning here, I'll have no trouble showing off my practically bare tits to the crowd and raking in the dosh[otherwise]I've learned here, I think I'm going to do much better than just rake in all that prize money. I reckon a glamour model scout will notice me in no time, and after I suck his [manly-penis] a few times I'm sure I can convince him to offer me a lucrative contract[end if]!'[roman type][line break]".

To compute friendly drink of (M - a student-misty):
	if the current-rank of M is 4:
		say "[speech style of M]'No way, I need all this water to keep my clothes wet! Find your own drink.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Bah. I guess you can have a sip from my water bottle. But only a little mind you, I need the rest [if the current-rank of M is 2]for... reasons[otherwise]to, erm, well, keep myself looking so sexy[end if].'[roman type][line break]";
		say "You take a sip and feel much better!";
		StomachUp 2.

Part - Candy

student-candy is a tryhard student.

The text-shortcut of student-candy is "stca".

Figure of student-candy is the file "NPCs/School/Student/student5.png".

To decide which figure-name is the monster-image of (M - student-candy):
	decide on figure of student-candy.

To say MonsterDesc of (M - student-candy):
	say "This tall blonde [man of M] is wearing a super skimpy pink kitty themed outfit made out of a tiny tube top and even tinier microskirt. [big he of M] has a tattoo of a tiger on [his of M] leg and a black-and-white braid in [his of M] hair. [if the current-rank of M > 1]A sequins necklace in the style of a paw print hangs above [his of M] chest. [end if][big his of M] make up is rather heavily done[if diaper quest is 1] but still looks very grown-up[end if]. [big his of M] expression exudes focus and confidence.".

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
	say "[speech style of M]'[if diaper quest is 1]I'm here to learn how to be an even better kitty for my owner! I'm good at following instructions. No actually, I'm the BEST at following instructions! My owner wants me to learn to pee on the ground like a normal kitty but unlearning toilet training is hard. So I'm seeing if this school can help me out.'[otherwise]My owner wants me to be his 24/7 live-in pet [boy of the player] but I'm still learning how to properly [please] men. I think I've got the sexy kitty cat perfect already though. Miaow!'[end if][roman type][line break]".

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


Part - Rain

student-rain is a tq-only tryhard student.

The text-shortcut of student-rain is "stra".

Figure of rain is the file "NPCs/School/Student/student26.png".

To decide which figure-name is the monster-image of (M - student-rain):
	decide on figure of rain.

To say MonsterDesc of (M - student-rain):
	say "This very short, petite [man of M] can't be older than 19. All [he of M]'s wearing is a flimsy sheer gown made of very thin beige fabric. [if the current-rank of M is 3]Thanks to the very translucent nature of the item, [his of M] small boobs and cute innie pussy are very visible[otherwise][big his of M] small boobs are very visible through the fabric and it is purposefully parting above [his of M] belly button, to leave [his of M] pussy fully exposed[end if]. [big his of M] facial expression is one of confidence and determination[if the current-rank of M >= 5]. [big his of M] pussy squelches loudly as [he of M] moves, suggesting it might have been very well used, and recently[end if].".

The min-rank of student-rain is 3.
The current-rank of student-rain is 3.
The max-rank of student-rain is 6.

To update name of (M - student-rain):
	if the current-rank of M is 3:
		now the student-name of M is "Rain";
		now the student-print of M is "racy runt";
	otherwise:
		now the student-name of M is "Rainbow";
		now the student-print of M is "raunchy runt".

To say StoryAnswer of (M - student-rain):
	say "[speech style of M]'[if the current-rank of M is 3]I'm learning to be a slut for my boyfriend. I only do it for him, you know? Not because it's my thing myself. But I'm *very* good at doing anything I set my mind to[otherwise]Did you know that until recently I didn't even crave cock? How dumb was that?! Haha! Now I can't get enough[end if]!'[roman type][line break][one of][big his of M] eyes fall to the junction of your own legs, and [he of M] looks thoughtful.[or]You notice [he of M]'s eyeing the area of your own groin with a speculative look.[at random]".

To say WhereAnswer of (M - student-rain):
	say "[speech style of M]'You've got to be proud of [if the current-rank of M > 3]how much you love[otherwise]your skill with a[end if] [manly-penis]! And then others will be proud of you!'[roman type][line break]".

To say EscapeAnswer of (M - student-rain):
	say "[speech style of M]'More people who you can [if the current-rank of M > 3]spread your cunt for[otherwise]show off your cunt to[end if], of course!'[roman type][line break]".

To compute teaching of (M - student-rain):
	say "[speech style of M]'This is a cunt. This is a butthole. This is a mouth. [if the current-rank of M > 4]They're the only important things about people like me and you[otherwise]It's important that people like you and me get very used to using them for their intended purposes[end if].'[roman type][line break]".


Part - Default Conversation

To compute student perception of (M - a tryhard student):
	if the current-rank of M > the rank of the player:
		say "[big he of M] glances at your armband and turns away without acknowledging you[one of]. It doesn't look like [he of M] is going to engage you in conversation unless you start it.[or].[stopping]";
	otherwise:
		compute appearance assessment of M.

To compute appearance assessment of (M - a tryhard student):
	if the class of the player is schoolgirl:
		say "[big he of M] looks you up and down and [his of M] face seems to light up.";
	otherwise if the current-rank of M < the rank of the player:
		say "[big his of M] eyes linger on your armband for a moment before flitting up to your face.";
	otherwise:
		say "[big he of M] glances at your armband before speaking.";
	say "[line break][speech style of M]'[one of]Hello! Do you want to share notes?[or]Hi! Any advice for an eager student?'[or]Hello. Plan on staying long? I think we might be able to share notes.'[at random][roman type][line break]";

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

