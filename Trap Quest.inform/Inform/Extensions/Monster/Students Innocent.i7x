Students Innocent by Monster begins here.

An innocent student is a kind of student. Understand "nervous" as an innocent student.

To say MediumDesc of (M - an innocent student):
	say "nervous [rank-colour of item described] student [student-name of item described]".

To decide which number is the dedication of (M - an innocent student): [We can use this for various calculations to check which students do what]
	decide on a random number between 0 and 3.

To decide which number is the vindictiveness of (M - an innocent student): [We can use this for various calculations to check which students do what]
	decide on a random number between 0 and 1.

To decide which number is the heel-skill of (M - an innocent student):
	decide on 0.

To compute student perception of (M - an innocent student):
	if the appearance of the player < 12 and the cringe appearance of the player < 15:
		say "It doesn't look like [he of M] is going to engage you in conversation unless you start it.";
	otherwise:
		say "[speech style of M]'[one of]You look so... just too... ugh! And[or]You know[or]That's too far! And[or]I hate how[cycling] you're making me look bad in comparison!'[roman type][line break]";
		FavourDown M.

Part - Hailey

student-hailey is an innocent student.

The text-shortcut of student-hailey is "stha".

Figure of hailey is the file "NPCs/School/Student/student7.png".

To decide which figure-name is the monster-image of (M - student-hailey):
	decide on figure of hailey.

To say MonsterDesc of (M - student-hailey):
	say "This skinny brunette is wearing white short shorts and a pink bra. [if the current-rank of M is 1]You can tell the colour of [his of M] bra because the navy top covering it is rather sheer in parts. [end if][big his of M] smile looks [if the current-rank of M is 1]very warm and genuine[otherwise]a little forced[end if].".

The max-rank of student-hailey is 2.

To update name of (M - student-hailey):
	if the current-rank of M is 1:
		now the student-name of M is "Hailey";
		now the student-print of M is "new girl";
	otherwise:
		now the student-name of M is "Harley";
		now the student-print of M is "babydoll in training".

To say StoryAnswer of (M - student-hailey):
	say "[speech style of M]'I asked my boyfriend what would make him happy and he said he wanted me to try out this place, so here I am. [if the current-rank of M is 1]I'll do[otherwise]I'm doing[end if] my best...'[roman type][line break]".

Part - Winnie

student-winnie is a tq-only innocent student.

The text-shortcut of student-winnie is "stwi".

Figure of winnie is the file "NPCs/School/Student/student8.png".

To decide which figure-name is the monster-image of (M - student-winnie):
	decide on figure of winnie.

To say MonsterDesc of (M - student-winnie):
	say "This middle aged [man of M] is wearing denim daisy dukes and a short T-shirt that reads 'Whore In Training' in black letters. [big he of M] looks [if the current-rank of M is 1]a little out of [his of M] comfort zone but still calm and collected[otherwise]a little bit anxious[end if].".

The max-rank of student-winnie is 2.

To update name of (M - student-winnie):
	now the student-print of M is "whore in training";
	if the current-rank of M is 1:
		now the student-name of M is "Winona";
	otherwise:
		now the student-name of M is "Winnie".

To say StoryAnswer of (M - student-winnie):
	say "[speech style of M]'My husband and I have always role played situations where he's my pimp and I'm his dirty hooker. But now we thought, why not try it for real? But if I'm going to do this, I want to do it in a safe controlled environment first. So that's why I'm here.'[roman type][line break]".

To say WhereAnswer of (M - student-winnie):
	say "[speech style of M]'[if the rank of the player <= 1]We're in Slut School, obviously! Not for the faint-hearted, that's for sure. I hope I'm daring enough to go through with this...'[otherwise]I imagine the sluttier we act, the more brownie points we'll earn with the professors.'[end if][roman type][line break]".

To decide which number is the heel-skill of (M - student-winnie):
	decide on -2.

To decide which number is the dedication of (M - student-winnie): [We can use this for various calculations to check which students do what]
	decide on 3.

Part - Austin

student-austin is a tq-only innocent student.

The text-shortcut of student-austin is "stau".

Figure of austin is the file "NPCs/School/Student/student10.png".

To decide which figure-name is the monster-image of (M - student-austin):
	decide on figure of austin.

To say MonsterDesc of (M - student-austin):
	say "This long ginger-haired beauty has gorgeous [if the current-rank of M is 1]big eyes[otherwise]long lashes[end if] and alluring red lips. A pink latex dress clings tightly to [his of M] form. [big he of M] looks [if the current-rank of M is 1]rather innocent and shy[otherwise]uptight and apprehensive[end if].".

The max-rank of student-austin is 2.

To update name of (M - student-austin):
	now the student-print of M is "latex lover";
	if the current-rank of M is 1:
		now the student-name of M is "Austin";[Selkie: is a boy's name]
	otherwise:
		now the student-name of M is "Australia".[Selkie: blinks]

To say StoryAnswer of (M - student-austin):
	say "[speech style of M]'I'm a latex fashion model but my agent says I'm too shy in front of a camera to properly make it big. He suggested I come here to learn how to [']loosen up[']...'[roman type][line break]".

To say WhereAnswer of (M - student-austin):
	say "[speech style of M]'[if the rank of the player <= 1]This is a place to learn how to be less of a prude. That's why I've been sent here anyway.'[otherwise]Some of the other girls were saying you can't get to the top without sucking some [manly-penis]s. I'm hoping it doesn't come to that...'[end if][roman type][line break]".




Part - Rachel

student-rachel is a dq-only innocent student.

The text-shortcut of student-rachel is "strs".

Figure of rachel 1 is the file "NPCs/School/Student/student28a.jpg".
Figure of rachel 2 is the file "NPCs/School/Student/student28b.jpg".
Figure of rachel 3 is the file "NPCs/School/Student/student28c.jpg".

To decide which figure-name is the monster-image of (M - student-rachel):
	if the current-rank of M >= 4:
		decide on figure of rachel 3;
	otherwise if the current-rank of M is 3:
		decide on figure of rachel 2;
	otherwise:
		decide on figure of rachel 1.

To say MonsterDesc of (M - student-rachel):
	if the current-rank of M <= 2:
		say "This [man of M] is in [his of M] late twenties or early thirties. [big he of M] is wearing a smart white blouse and red skirt. [big his of M] brunette hair is kept short and neat. [big he of M] looks like a respectable businesswoman... or at least [he of M] would, if it wasn't for the huge double-diaper [he of M]'s sporting under [his of M] skirt. [big he of M] keeps pulling up [his of M] skirt to look at the already-damp padding underneath, and then blushing furiously, as if [he of M] couldn't really believe it was there until [he of M] checked again with [his of M] own two eyes.";
	otherwise if the current-rank of M is 3:
		say "This [man of M] is in [his of M] late twenties or early thirties. [big he of M] was wearing a smart white blouse but that has been replaced by a pink tighter-fitting one that exposes the curvature of [his of M] boobs. [big his of M] smart red skirt has been replaced by a very short purple miniskirt that can't do anything to hide the massive double-diaper that [he of M]'s got on underneath, which if anything is even thicker than before. [big his of M] short brunette hair has been put in little pigtails. [big he of M] still constantly blushes wherever [he of M] goes.";
	otherwise:
		say "This [man of M] is in [his of M] late twenties or early thirties. [big his of M] tight pink blouse have been replaced by a tight pink crop top that doesn't cover [his of M] belly button and reads 'BABYGIRL' on the front in large white letters. [big his of M] short purple miniskirt has been replaced by an even shorter pink microskirt which means that over two thirds of [his of M] thick double diaper are on show, even as [he of M] tries to pull down on the tiny microskirt to get it to stretch as far as it can. [big he of M] seems so embarrassed that [he of M]'s moments away from tears at all times. It's crazy to think that just a short while ago this was [man of M] was a respected young professional.";

The current-rank of student-rachel is 2.
The max-rank of student-rachel is 4.

To update name of (M - student-rachel):
	if the current-rank of M < 3:
		now the student-name of M is "Rachel";
		now the student-print of M is "blushing businesswoman";
	otherwise if the current-rank of M is 3:
		now the student-name of M is "Ray";
		now the student-print of M is "shining secretary";
	otherwise:
		now the student-name of M is "Ray-Ray";
		now the student-print of M is "bright babygirl";

To say WhoAnswer of (M - student-rachel):
	say "[speech style of M]'My name is [student-name of M] Sunshine. I know, how appropriate...'[roman type][line break]".

To say StoryAnswer of (M - student-rachel):
	say "[speech style of M]'My boss... Mr Blair... knows I will do anything he says, because if I get fired, I lose the rights to the incredible mansion my aunt left me in her will. So he's getting me to wear diapers and dress more baby-like and I'm not allowed to change myself and... it's quickly becoming too much! Hopefully here they can teach me some techniques on how to [please] him without going too far...'[roman type][line break]".

To say WhereAnswer of (M - student-rachel):
	say "[speech style of M]'[if the rank of the player <= 1]Something we all need to learn... how to sometimes swallow your pride for the greater good.'[otherwise]Swallow your pride... and whatever food and drink Master tells you to...'[end if][roman type][line break]".

To say AdviceAnswer of (M - student-rachel):
	say "[speech style of M]'Whatever they tell you to do, you've just got to say [']Yes Mister['] and then get on with it! If you can bring yourself to...'[roman type][line break]".

To say EscapeAnswer of (M - student-rachel):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's nothing I care about. It seems like this entire place is just designed to make you feel like a big baby.'[otherwise]Probably loads more nasty things designed to make us feel even more like submissive babygirls...'[end if][roman type][line break]".

To compute teaching of (M - student-rachel):
	say "[speech style of M]'No, sorry, I'm not any good at this yet. I'm the one who needs extra help...'[roman type][line break]".


Part - Default Conversation

To say WhoAnswer of (M - an innocent student):
	say "[speech style of M]'My name is [student-name of M][if the current-rank of M > the min-rank of M], or so I've been told. I didn't realise I was going to have to change my name[end if]...'[roman type][line break]".

To say WhereAnswer of (M - an innocent student):
	say "[speech style of M]'[if the rank of the player <= 1]We're in some kind of special school. To get good at making other people happy.'[otherwise]I dunno, some of the things they want us to do are pretty crazy. Surely there's another way?'[end if][roman type][line break]".

To say EscapeAnswer of (M - an innocent student):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's a few more rooms, like a junk room, and a sewing room, and I think that's about all I've seen so far.'[otherwise]I've not got any better an idea than you, I'm afraid! I'm looking forward to finding out though.'[end if][roman type][line break]".

To say AdviceAnswer of (M - an innocent student):
	say "[speech style of M]'I was kind of hoping you'd have advice for me!'[roman type][line break]".

To compute teaching of (M - an innocent student):
	say "[speech style of M]'Ha ha, no, I'm not a teacher!'[roman type][line break]".


Students Innocent ends here.

