School Stuff by TQ Only Stuff begins here.


Definition: chess-lesson is lesson-appropriate: decide no.

To compute chess soiling:
	do nothing.


Part - Kissing Lesson


kissing-lesson is a lesson. The lesson-teacher of kissing-lesson is teacher-angela.

Definition: kissing-lesson is lesson-appropriate if face is not actually occupied.

To compute teaching of (L - kissing-lesson):
	allocate 40 seconds;
	now bigGameLoop is 2;
	let M be the lesson-teacher of L;
	say "[speech style of M]'Oral skillz 101.'[roman type][line break][BigNameDesc of M] holds [his of M] hands behind [his of M] back as [he of M] addresses you all.[line break][speech style of M]'[one of]Your teeth, your lips, your tongue... all are incredibly important toolz at your dizpozal[or]It zeemz zat you all ztill require more vork in zis department[stopping].'[roman type][line break][big he of M] licks [his of M] lips.[line break][speech style of M]'Yez... a complete examination iz required. Each of you vill take turnz to kizz me. Eizer you vill be leaving viz a promotion... or you vill be leaving viz a little upgrade...'[roman type][line break]";
	repeat with ST running through students in the location of the player:
		say "[speech style of M]'[student-name of ST], [one of]come here[or]you next[or]your turn[then at random].'[roman type][line break]";
		let STEffort be the dedication of ST;
		say "[BigNameDesc of ST] [one of]tenderly[or]gingerly[or]bravely[or]courageously[at random] walks up to [BigNameDesc of M] and then [one of]proceeds to lock lips with [him of M] in front of the whole class[or]takes [his of ST] turn kissing [him of M][stopping]. [if STEffort < 2]The kiss only lasts for a few seconds before [NameDesc of ST] pulls away[otherwise if STEffort is 2]The kiss looks rather passionate from where you're standing, but when [NameDesc of M] tries to grab [his of ST] buttocks, [he of ST] squeaks and pulls away[otherwise if STEffort is 3]The kiss lasts for quite some time, both of them enthusiastically holding each other's butts as they taste each other's saliva. You think you can even hear some moaning[otherwise]The kiss lasts a very long time, both of them humming loudly with pleasure as they feel each other all over, including [NameDesc of ST] letting [NameDesc of M] touch [his of ST] crotch[end if]. ";
		if a random number between 2 and 4 > STEffort:
			say "[BigNameDesc of M] [one of]frowns[or]sighs[or]clicks [his of M] tongue[in random order].[line break][speech style of M]'Not good enough for a promotion today, darling. Zo inztead I must give you a punishment... Okay, until the next time I zee you for clazz... [one of]you cannot hear people zpeak until you have firzt tazted their tongue[or]you can only experienze zexual pleazure vile kizzing anozer [man of ST][or]everyzing you eat vill tazte like my deliciouz zaliva[or]your mouth vill be in a permanent pouting [']O['][in random order].'[roman type][line break]And with a snap of [his of M] fingers, you know that the punishment has been sealed with magic. [BigNameDesc of ST] whimpers and returns to [his of ST] desk.";
		otherwise if ST is promotable:
			say "[BigNameDesc of M] [one of]licks [his of M] lips[or]sighs with delight[or]smiles coyly[in random order].[line break][speech style of M]'Oh yez, you clearly know vat you are doing... Fine, you may go.'[roman type][line break]";
			promote ST;
		otherwise:
			say "[BigNameDesc of M] spends a while thinking before speaking.[line break][speech style of M]'I do not zink you dezerve punishment... but I cannot grant you ze rank of emerald juzt yet. I vill leave you alone for today.'[roman type][line break]";
	let KissRating be (the lips of face) + (the oral sex addiction of the player / 2);
	say "[speech style of M]'Okay [NameBimbo], let'z zee vat you can do.[roman type][line break]You find yourself walking to the front until your face is inches from [teacher-name of M][']s.[big he of M] pouts and slightly opens [his of M] lips, revealing [his of M] waiting tongue. It looks like you could choose to make the first move - this would be rather embarrassing to do in front of all your classmates, but may well earn you brownie points with [teacher-name of M]. Do you make the first move?";
	let tonguedPerson be the player;
	if the player is consenting:
		increase KissRating by 1;
		say "You close your eyes and move your face forward until your lips touch, tilting your head slightly to allow them to lock. [teacher-name of M] moans with satisfaction. [severeHumiliateReflect] You could push your tongue into [his of M] mouth, and take control, or wait for [his of M] to push into yours. Do you want to attempt to assert dominance?";
		if the player is consenting:
			say "You begin to push your tongue inside [teacher-name of M][']s mouth, surprising [him of M]. [big he of M] blocks with [his of M] own tongue, and they slither on top of each other for a few seconds as you fight to enter each other's mouths. The feeling of [his of M] tongue on yours [if the player is a bit horny]arouses you further[otherwise]turns you on a little[end if]. Eventually ";
			if a random number between 1 and the delicateness of the player < 7:
				say "[teacher-name of M] gives way, and allows your tongue to slip beyond [his of M] teeth.";
				now tonguedPerson is M;
			otherwise:
				say "your bravery subsides and you relent, allowing your superior to explore the insides of your mouth.";
			passively stimulate face from M times 2;
			finally arouse the delayed arousal of the player;
			update arousal;
			DelicateDown 1;
		otherwise:
			say "You keep your tongue inside your own mouth, and after a moment, [teacher-name of M][']s tongue joins it, exploring the mouth as [he of M] takes the lead.";
	otherwise:
		say "[teacher-name of M] tuts at your hesitation and then grabs you by the back of your head, forcing your lips together in a seal, where [he of M] immediately forces [his of M] tongue into your mouth and towards your throat. With [his of M] tongue in your mouth, it definitely feels like [he of M] is in command.";
	let endN be a random number between 4 and 8;
	let N be 0;
	let player-groped-level be -1;
	while N < endN:
		increase N by 1;
		increase KissRating by 1;
		if tonguedPerson is the player:
			say "Would you like to try and push your tongue into [teacher-name of M][']s mouth?";
			if the player is consenting:
				say "Your tongues slither on top of each other for a few seconds as you fight to push [teacher-name of M][']s tongue back into [his of M] mouth. The feeling of [his of M] tongue on yours [if the player is a bit horny]arouses you further[otherwise]turns you on a little[end if]. ";
				if a random number between 1 and the delicateness of the player < a random number between 1 and 9:
					say "[teacher-name of M] gives way, and your tongues are now touching in [his of M] mouth.";
					now tonguedPerson is M;
				otherwise:
					say "[teacher-name of M] doesn't relent, and [his of M] tongue remains firmly inside your mouth. Your failed attempt at domination makes you feel a bit more submissive.";
					SilentlyDelicateUp 1;
				passively stimulate face from M;
				check for arousal change;
		otherwise:
			say "[teacher-name of M] [one of]uses [his of M] tongue to play with yours in [his of M] mouth[or]massages your tongue with [his of M] lips[or]lets you lick [his of M] lips[or]sucks your saliva off of your tongue[at random], ";
			if a random number between the delicateness of the player and 20 > a random number between 1 and 20:
				say "but then when [he of M] senses an opening, [he of M] manages to shove your tongue back into your mouth and take control!";
				now tonguedPerson is the player;
			otherwise:
				say "[one of]mainly allowing you to take[or]seemingly impressed at how long you are maintaining[or]perhaps enjoying the feeling of being in less[in random order] control.";
			passively stimulate face from M times 2;
			check for arousal change;
		if tonguedPerson is the player:
			increase player-groped-level by 1;
			say "[teacher-name of M] [if player-groped-level is 0]grabs your [AssDesc] with both hands, with some force. You think you can hear some snickering from behind you[otherwise if player-groped-level is 1]moves one hand to your [BreastDesc] and begins to grope you[otherwise if player-groped-level is 2]moves the hand that was kneading your [AssDesc] to your [genitals], and begins playing with you down there[otherwise]keeps stroking you down below[end if]. ";
			if player-groped-level >= 2:
				repeat with IST running through innocent students in the location of the player:
					FavourDown IST;
			say "Do you pull away and end the kiss? ";
			if the player is consenting:
				now N is 10;
				say "You wrestle free and step back.";
			otherwise:
				say "You feel humiliated that you've let [him of M] [one of][or]continue to [stopping]do this to you in front of your classmates! [strongHumiliateReflect]";
				passively stimulate face from M;
				if player-groped-level >= 0, passively stimulate hips from M;
				if player-groped-level >= 1, passively stimulate breasts from M;
				if player-groped-level >= 2:
					passively stimulate vagina from M;
					if vagina is orgasming:
						repeat with ST running through students in the location of the player:
							FavourDown ST;
						say "After you have finished squealing with pleasure into [teacher-name of M][']s mouth, [he of M] lets the kiss end.";
						OralSexAddictUp 1;
						now N is 9;
				check for arousal change;
				increase KissRating by 1;
		otherwise:
			say "[teacher-name of M] [if player-groped-level is -1]submits to your kiss, moaning enthusiastically[otherwise if player-groped-level is 0]lets you play with [his of M] tongue as [he of M] continues to knead your [AssDesc][otherwise if player-groped-level is 1]swirls [his of M] tongue with yours as [he of M] continues to fondle you[otherwise]submits to your oral probing and focuses on playing with your [genitals] and [BreastDesc][end if]. Do you pull away and end the kiss? ";
			if the player is consenting:
				now N is 10;
				say "You wrestle free and step back.";
			otherwise:
				say "Even though you don't feel as humiliated[one of] because you're in control[or][stopping], [his of M] touch continues to turn you on.";
				passively stimulate face from M;
				if player-groped-level >= 0, passively stimulate hips from M;
				if player-groped-level >= 1, passively stimulate breasts from M;
				if player-groped-level >= 2:
					passively stimulate vagina from M;
					if vagina is orgasming:
						repeat with ST running through students in the location of the player:
							FavourDown ST;
						say "After you have finished squealing with pleasure into [teacher-name of M][']s mouth, [he of M] lets the kiss end.";
						OralSexAddictUp 1;
						now N is 9;
				check for arousal change;
				increase KissRating by 1;
	if N < 10: [Teacher pulls away]
		say "Finally, [NameDesc of M] pulls away and lets go of you.";
		increase KissRating by 10;
	otherwise:
		say "[teacher-name of M] [one of]tuts[or]harrumphs[in random order] with mild disappointment.";
	say "[speech style of M]'[if KissRating < 3]That was abysmal[otherwise if KissRating < 5]That was rather poor[otherwise if KissRating < 7]I've had worse[otherwise if KissRating < 10]Not bad at all[otherwise]Marvellous[end if]. ";
	let RK be a random number between 6 and 10;
	if RK > KissRating:
		say "[if KissRating >= 5]But you can do[otherwise]You can do much[end if] better, I think. Especially with a little help...'[roman type][line break]";
		if a random number between 1 and (2 + artificial enhancements fetish) > the lips of face:
			say "[BigNameDesc of M] brings you forward for one more kiss. As your lips touch this time, you feel yours growing in size! By the time you've pulled away, they have changed from [LipDesc] to ";
			increase the lips of face by 1; [Not using LipsUp on purpose]
			say "[LipDesc]!";
			display lips cutscene;
		otherwise:
			say "You can't see anything else happen, but something inside your brain seems... [if the oral sex addiction of the player < 5]less resistant to the idea of using[otherwise]more eager to use[end if] your mouth for pleasure.";
			OralSexAddictUp 1;
	if RK - 2 <= KissRating:
		say "[if RK > KissRating][speech style of M]'Still[otherwise]Yes[end if], I think you've learned enough here.'[roman type][line break]";
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		if RK > KissRating:
			now the armband-title of armband is "Kara";
			now the armband-print of armband is "confident kisser";
		otherwise:
			now the armband-title of armband is "Kandi";
			now the armband-print of armband is "keen kisser";
		say ClothingDesc of armband;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[big he of M] ushers you back to your seat and then addresses the whole class.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]";
	now bigGameLoop is 0;
	conclude consenting.


Part - Seraphina

teacher-seraphina is an emerald-teacher.

The text-shortcut of teacher-seraphina is "teas".

Figure of seraphina is the file "NPCs/School/Teacher/teacher4.png".

To decide which figure-name is the monster-image of (M - teacher-seraphina):
	decide on figure of seraphina.

To say MonsterDesc of (M - teacher-seraphina):
	if lady fetish is 2, say "This short, wispy man has wavy black hair tied up in a neat bun. His steampunk style gothic corset and dress would be rather unique and eye-catching if it wasn't for the fact that all eyes are invariably drawn to the glittering chain connecting each of his nipples together. He holds what looks like a very old book in one hand, as well as a phallic hollow contraption of an unknown purpose.";
	otherwise say "This short, stocky lady has wavy black hair tied up in a neat bun. Her gothic corset and dress, and steampunk style would be rather unique and eye-catching if it wasn't for the fact that all eyes are invariably drawn to her ginormous K-cup cleavage which is spilling out of her very low cut neckline. She holds what looks like a very old book in one hand. As well as a phallic hollow contraption of an unknown purpose.".

The teacher-name of teacher-seraphina is "Seraphina".

Definition: teacher-seraphina is fetish appropriate if max breast size >= 8.

To say WhoAnswer of (M - teacher-seraphina):
	say "[speech style of M]'Can you not guess what [']assets['] I bring to the table?'[roman type][line break]".

To say WhereAnswer of (M - teacher-seraphina):
	say "[speech style of M]'[if the rank of the player <= 1]Exactly where you need to be.'[otherwise]Leave your ego at the door.'[end if][roman type][line break]".

To say AdviceAnswer of (M - teacher-seraphina):
	say "[speech style of M]'Just always remember - bigger is better. No exceptions!'[roman type][line break]".


tits-lesson is a lesson. The lesson-teacher of tits-lesson is teacher-seraphina.

To compute teaching of (L - tits-lesson):
	let M be the lesson-teacher of L;
	if lady fetish is 2, say "[speech style of M]'Nipples.'[roman type][line break][NameDesc of M] stands at the front of the room with his hands at his hips, his nipples chains waving back and forth in front of him as he breathes.[line break][speech style of M]'Sissies are better than women. Do you know why? Breasts. That's right. Women have it easy. Women are lazy. Sissies do not have it easy. Sissies work hard, and to beat women at their own game, sissies must make full use of what assets they have.'[roman type][line break]";
	otherwise say "[speech style of M]'Breasts.'[roman type][line break][NameDesc of M] stands at the front of the room with her hands at her hips, her giant chest gently heaving up and down in front of her as she breathes.[line break][speech style of M]'A woman's most important seductive tool, and a great symbol of her power. Why is it then, that so many of you fools do not spend your lives seeking new ways to enhance and empower your primary assets?'[roman type][line break]";
	allocate 35 seconds;
	if the player is top heavy or the largeness of breasts >= 12:
		if breasts is lewdly exposed or the number of worn actually dense top-placed low cut or higher nipple covering clothing is 0:
			if lady fetish is 2:
				say "[NameDesc of M] gestures at you. [line break][speech style of M]'This is what all women could look like. She is a woman who has truly strived for perfection, and I am proud to call her my superior.'[roman type][line break][NameDesc of M] strides over to you and then takes a step behind you, grabbing each of your breasts with one of [his of M] hands, squeezing them gently.[line break][speech style of M]'The texture, the shape, the sheer weight of these puppies screams [']power['], don't you think? I wouldn't even try to compete with this cutie for attention in a club or bar.'[roman type][line break]After a [if there is worn top-placed rigid nipple covering clothing]final big squeeze[otherwise]cheeky tweak of your nipples[end if], [big he of M] lets go.[line break][speech style of M]'There is nothing more that I can teach you. Try to leave some knowledge for the rest of us.'[roman type][line break]";
			otherwise:
				say "[NameDesc of M] gestures at you.[line break][speech style of M]'Now this is a [if the largeness of breasts > 5]woman who has truly strived for perfection, and I am proud to call her my equal.'[roman type][line break][NameDesc of M] strides over to you and then takes a step behind you, grabbing each of your large breasts with one of [his of M] hands, squeezing them gently.[line break][speech style of M]'The texture, the shape, the sheer weight of these puppies screams [']power['], don't you think? I wouldn't want to try and compete with this cutie for attention in a club or bar[otherwise]special case, there seems to be some special magic keeping these puppies small and disappointing.'[roman type][line break][NameDesc of M] strides over to you and then takes a step behind you, grabbing each of your nipples with one of [his of M] hands, squeezing them painfully.[line break][speech style of M]'Still, even itty bitties like this can be fun to play with, I think[end if].'[roman type][line break]After a [if there is worn top-placed rigid nipple covering clothing]final big squeeze[otherwise]cheeky tweak of your nipples[end if], [big he of M] lets go.[line break][speech style of M]'There is nothing more I need to teach you. You may proceed.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Juggz";
			now the armband-print of armband is "buxom beauty";
			say ClothingDesc of armband;
			let S be a random demotable nasty student in the location of the player;
			if S is student:
				say "[S] complains loudly.[line break][speech style of S]'This is bullshit! You can't promote a basic bitch like her just for looking like a slutty tramp!'[roman type][line break][M] flashes [him of S] a furious stare.[line break][speech style of M]'[NameBimbo] is the epitome of beauty! You don't deserve to be in my class. No, you don't even deserve to share a rank with these other students!'[roman type][line break]";
				demote S;
				say "[NameDesc of S] gasps in dismay.[line break][speech style of S]'Oh come on!'[roman type][line break]She scowls at you.[line break][speech style of S]'I'm not going to forgive you for this!'[roman type][line break]";
				HappinessDown S by 4;
			if the lewdly exposed outrage of breasts is too humiliating:
				say "You try to make it look like you're holding your breasts proudly as you walk out of the room.";
				try going south;
				say "[variable custom style]Gosh, that was so embarrassing! But I think I got away with pretending that I liked having my breasts on display. Now I should really put on some less revealing clothes![roman type][line break]";
			otherwise:
				say "You hold your breasts proudly as you walk out of the room.";
				try going south;
				say "[variable custom style]Hehe, having massive tits really does make life easy![roman type][line break]";
			allocate 12 seconds;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
		otherwise:
			say "[NameDesc of M] gestures at you.[line break][speech style of M]'Now this is a woman who has truly strived for perfection, but look at that clothing! There's nowhere near enough cleavage showing. It's almost like she is ashamed of the size of her massive titties. That just won't do!'[roman type][line break][big he of M] actually looks rather angry.[line break][variable custom style]Uh-oh...[roman type][line break][big he of M] opens the ancient-looking book that she is holding and turns it to a certain page. She begins reciting a chant in a very bizarre sounding language.[line break][speech style of M]'PUJ VLTU[']BE[']JAJ!'[roman type][line break]The book glows with dark energy which then shoots out and strikes you in the chest! You feel powerful magic surging through your veins.";
			MagicPowerUp 6;
			repeat with C running through worn actually breast covering clothing:
				say "Your [ShortDesc of C] disintegrates in a burst of black flame!";
				destroy C;
			if topless temporary fetish is 0:
				say "You suddenly feel very comfortable with having your [BreastDesc] on full display. In fact, the idea of wearing something that covers you up now feels just objectively... wrong. Your magnificent mammaries and proudly erect nipples are destined to be gazed upon! It would be wrong of you to deprive anyone of that wonderful privilege.";
				now topless temporary fetish is 20;
			say "[M] smirks.[line break][speech style of M]'Well I think that's enough excitement for one day! Hopefully you've all learned something about what it TRULY means to own a pair of proper boobs. [NameBimbo] will certainly have to learn [his of the player] lesson the practical way - TWENTY TIMES, in in fact. Anyway, until next time.'[roman type][line break][Big he of M] disbands the class.";
	otherwise if the breast-enhancement of nurse >= (a random number between 0 and 1) and the number of worn chest tattoos is 0 and breasts is showing cleavage:
		let S be random student in the location of the player;
		say "[big he of M] opens a desk drawer and retrieves several black marker pens.[line break][speech style of M]'Today we will be helping each other learn to be proud of displaying their [if lady fetish is 2]flat chests[otherwise]cleavage[end if]. Firstly, let's split into groups.'[roman type][line break][NameDesc of M] assigns people into pairs. You are partnered with [NameDesc of S].[line break][speech style of M]'You will each be writing a phrase on your partner's [if lady fetish is 2]cleavage[otherwise]chest[end if]. I want you to come up with something cheeky that will make the wearer's titty-meat nice and eye catching. Don't worry, it's not permanent.'[roman type][line break]Each pair is handed a pen. You are given the pen for your pair, so you go first. [if the player is a nympho]A naughty thought comes to your mind, and you write 'stick your dick here'[otherwise if the player is a pervert]After thinking for a few moments you write 'one for the wank bank'[otherwise]You struggle to think of anything inventive, and end up just writing 'hot stuff'[end if] on [NameDesc of S][']s cleavage.[line break]But then it's [his of S] turn. [big he of S] takes the pen off you and ";
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
		say "[M] makes you stand in a line so that [he of M] can inspect your titty graffiti. Eventually [he of M] reaches you and makes you puff our your chest as [he of M] reads the small black letters.";
		compute tits marker reaction of S;
		say "[big he of M] coughs loudly and then raises [his of M] voice.[line break][speech style of M]'Okay, let's raise the stakes a bit. I have a spell that can turn any ink into a permanent tattoo. Anyone who says they are willing to have their words become a permanent public declaration on bosom will graduate this class and become a ruby student. Anyone interested?'[roman type][line break]Do you volunteer to have the words '[tattoo-title of marker chest tattoo]' permanently inked on your chest? ";
		if the player is bimbo consenting:
			say "Everybody looks awkward and casts their eyes downward, but you cause the silence to be broken by a few awed gasps as you raise your hand.[line break][speech style of M]'Oh yes, I had a feeling about you.'[roman type][line break][NameDesc of M] grins and with a flourish of her spellbook, everybody's words disappear from their chest, except yours. You test your own ink with a finger and find that it indeed will not rub off or smudge at all. However, at least you can feel that some of the magic power that [NameDesc of M] used has remained in your veins.";
			MagicPowerUp 4;
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
			say "Everybody looks awkward and casts their eyes downward, and a long silence comes over the room. Eventually [NameDesc of M] speaks.[line break][speech style of M]'Disappointing.'[roman type][line break]With a flourish of her spellbook, everybody's words disappear from their chest. You can feel that a small amount of the magic power that [NameDesc of M] just used has remained in your veins.[line break][big he of M] sounds genuinely downcast.[line break][speech style of M]'You all need to work on your bravery for the next time we convene. Class dismissed.'[roman type][line break]";
			MagicPowerUp 1;
	otherwise:
		let S be a random promotable student in the location of the player;
		if student-abbi is in the location of the player, now S is student-abbi; [She's large breasted after all]
		if student-tiana is in the location of the player, now S is student-tiana; [She's super huge breasted after all]
		say "[NameDesc of M] makes you all stand and practice a few poses that are designed to emphasise your breasts, including pushing your shoulders back, squeezing your tits in between your arms, and bending over at the waist. Soon you are all tired and [he of M] looks satisfied.[line break][speech style of M]'Okay, that's enough for today. [if S is student][student-name of S], you have made brilliant progress since you first started coming to my classes. I think you deserve a promotion. For the rest of you, [end if]I'm going to assign you some optional [']homework[']. I've informed the nurse of our little problems here... and I do mean little. So the next time you go to visit [him of nurse], you can expect [him of nurse] to be giving each and everyone one of you a nice... enhancement. If you don't want it, then you'd better not go see [him of nurse] before the next time we meet.'[roman type][line break]With that, [NameDesc of M] packs up [his of M] things and begins to walk for the door.[line break][speech style of M]'Until next time, then!'[roman type][line break]";
		if S is student, promote S;
		now the breast-enhancement of nurse is 1.

To compute tits marker choice of (S - a student):
	say "thinks for a few moments [himself of S] before taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "photos welcome";
	otherwise if R is 2:
		now the tattoo-title of marker chest tattoo is "I love being topless";
	otherwise:
		now the tattoo-title of marker chest tattoo is "please stare at my tits";
	now the tattoo-outrage of marker chest tattoo is 8;
	say "[big he of S] writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a student):
	say "[speech style of lesson-teacher of tits-lesson]'Hmm, this is fine. Nothing special, but does the job. Not bad, [student-name of S].'[roman type][line break]".


To compute tits marker choice of (S - a ditzy student):
	say "umms to [himself of S] for a few moments [himself of S] before making a gleeful 'ooh!' sound and then taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "fuckballs";
	otherwise if R is 2:
		now the tattoo-title of marker chest tattoo is "fuck bags";
	otherwise:
		now the tattoo-title of marker chest tattoo is "cock pillows";
	now the tattoo-outrage of marker chest tattoo is 11;
	say "[big he of S] writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a ditzy student):
	say "[speech style of lesson-teacher of tits-lesson]'Hmm. A bit crude, but I guess it does the job. You'd certainly get more attention.'[roman type][line break]".


To compute tits marker choice of (S - a nasty student):
	say "doesn't hesitate before taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "ugly bitches need bigger boobs";
	otherwise if R is 2:
		now the tattoo-title of marker chest tattoo is "worthless whore with mediocre boobs";
	otherwise:
		now the tattoo-title of marker chest tattoo is "please look at my disgusting tits";
	now the tattoo-outrage of marker chest tattoo is 13;
	say "[big he of S] grins a wide, evil grin and then writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a nasty student):
	say "[speech style of lesson-teacher of tits-lesson]'No, no no! This is all wrong. Who would want such a horrible message written on their breasts?! Get it together, [student-name of S].'[roman type][line break]".


To compute tits marker choice of (S - a tryhard student):
	say "doesn't hesitate before taking the pen to your skin. ";
	let R be a random number between 1 and 2;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "it's hard not to look isn't it?";
	otherwise:
		now the tattoo-title of marker chest tattoo is "if you can read this you owe me a drink";
	now the tattoo-outrage of marker chest tattoo is 10;
	say "[big he of S] has a scheming grin as [he of S] writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a tryhard student):
	say "[speech style of lesson-teacher of tits-lesson]'Great idea, [student-name of S]! I love it. Attention grabbing without being too crass.'[roman type][line break]".




Part - Rochelle / Roger

teacher-rochelle is a ruby-teacher. teacher-rochelle is male.

Definition: teacher-rochelle is presenting as male if futanari fetish is 0.

The text-shortcut of teacher-rochelle is "tero".

Figure of rochelle is the file "NPCs/School/Teacher/teacher7a.png".
Figure of slave rochelle is the file "NPCs/School/Teacher/teacher7b.png".
Figure of roger is the file "NPCs/School/Teacher/teacher8a.png".
Figure of slave roger is the file "NPCs/School/Teacher/teacher8b.png".

To decide which figure-name is the monster-image of (M - teacher-rochelle):
	if lady fetish is 1 or futanari fetish is 1, decide on figure of rochelle;
	decide on figure of roger.

To decide which figure-name is the pacified-image of (M - teacher-rochelle):
	if lady fetish is 1 or futanari fetish is 1, decide on figure of slave rochelle;
	decide on figure of slave roger.

To decide which number is the girth of (M - teacher-rochelle):
	decide on 7.

To say LongDickDesc of (M - teacher-rochelle):
	say "huge thick [DickDesc of M]";

To say MonsterDesc of (M - teacher-rochelle):
	if M is pacified:
		if lady fetish is 1 or futanari fetish is 1, say "This poor big-dicked futa has a unique chastity cage locked around [his of M] loins. It has a strict tight belt to keep it in place and to keep [his of M] pussy blocked off, and a large clear plastic cage to contain [his of M] [LongDickDesc of M]. The exact tight fit of the cage seems to be preventing [him of M] from losing [his of M] erection. But even if [he of M] fucks someone, [he of M][']s not going to be able to feel a thing. [big he of M] is also wearing some new piercings - two nipples piercings and a belly button piercing - connected by a gold chain, completing the 'sex slave' look[unless playerRegion is school]. [big his of M] butt is a raw shade of red - evidence of a recent rough spanking session[end if].";
		otherwise say "The cuffed ankles, wrists cuffed behind [his of M] back and the ballgag tightly strapped in [his of M] mouth are hardly noticeable thanks to the two huge pink ribbons that now constitute this big-dicked [man of M][']s only clothing. One is aruond [his of M] neck, the other around the base of [his of M] [LongDickDesc of M], mostly covering it. It would appear that either due to magic or just the sheer emasculation of [his of M] new appearance, [he of M] can no longer get hard.";
	otherwise:
		say "Even if [his of M] armband didn't make it clear that this grinning [man of M] is a teacher, there's no avoiding noticing [his of M] [LongDickDesc of M] swinging from [his of M] crotch. Its 9.5 inch length and equally impressive girth must put it in the top 1% of [manly-penis]s.".

The teacher-name of teacher-rochelle is "Rochelle".

To uniquely set up (M - teacher-rochelle):
	if futanari fetish is 0, now the teacher-name of M is "Roger".

To say WhoAnswer of (M - teacher-rochelle):
	say "[speech style of M]'I'd have thought that was pretty obvious. I teach dumb [boy of the player]s like you how to properly service a [DickDesc of M].'[roman type][line break]".

To say WhereAnswer of (M - teacher-rochelle):
	say "[speech style of M]'[if the rank of the player <= 1]Somewhere people can be safe while learning how not to look like a helpless idiot in the bedroom.'[otherwise]All it takes is putting in more... [']dedication['] than your peers.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-rochelle):
	say "[speech style of M]'Things that only properly trained whores are allowed to see.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-rochelle):
	say "[speech style of M]'While the outside world still considers cock worship a [']not a real qualification['], we see things a bit differently here.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-rochelle):
	say "[speech style of M]'Get used to the taste of cum.'[roman type][line break]".

To compute teaching of (M - teacher-rochelle):
	say "[speech style of M]'Of course... Meet me in the hot tub after hours and I'll give you a good seeing to.'[roman type][line break]".

To say angry punishment insult of (M - teacher-rochelle):
	say "[speech style of M]'Fucking [bitch]! How dare a slut like you reject your own devoted teacher. I'll show you how to be a proper whore.'[roman type][line break]".

Definition: teacher-rochelle is willing to let go: decide yes.

To compute FriendlySexRelease of (M - teacher-rochelle):
	if M is willing to let go:
		say "[BigNameDesc of M] pulls out in a huff.";
		dislodge M;
		compute angry punishment of M;
		satisfy M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

To compute labour to (M - teacher-rochelle):
	if playerRegion is School:
		compute pregnancy clothing displacement;
		say "[PregFlav]A human head pushes its way out of your cunt, agonisingly slowly and painfully. Finally the head has passed through, and after a final push at the shoulders, the birthing is complete. You pick your child up off the floor and start to cradle it in your arms. [BigNameDesc of the father] appears almost as if on cue! [PregFlav of the father]Severing the umbilical cord, [he of M] pulls the baby from your hands, wraps it in a soft blanket and then carries it away.[line break][variable custom style][if the bimbo of the player < 8]That is definitely for the best.[otherwise if the bimbo of the player < 14]I guess I don't really have anywhere to raise a baby in here, anyway.[otherwise]Oh good, that means I can busy myself with finding a new stud to breed me again![end if][roman type][line break]";
	otherwise:
		say DefaultBirthScene.


The lesson-teacher of eating-lesson is teacher-rochelle.
practical-lesson is a lesson. The lesson-teacher of practical-lesson is teacher-rochelle.

To compute teaching of (L - practical-lesson):
	allocate 6 seconds;
	say "[BigNameDesc of lesson-teacher of L] gently strokes [his of lesson-teacher of L] [DickDesc of lesson-teacher of L], and you all watch as it slowly hardens, growing even larger in size.[line break][speech style of lesson-teacher of L]'[one of]I think that today we should have our very first practical session together[or]It's time for another practical session, I think[stopping]. With, of course, a chance for some of you to get promoted! The rules are simple: each of you need to get in line and one by one you need to pleasure me. The person that makes me cum will get promoted, as will the slut who I think acted the filthiest. But remember, no ass-to-vag, okay? That's unhealthy.'[roman type][line break]And with that [he of lesson-teacher of L] assorts you into a random order, which ends up having you at the front. You're going to have to go first, it would seem...";
	repeat with W running through worn wrist locking clothing:
		say "With a click of [his of lesson-teacher of L] fingers, your [ShortDesc of W] falls to the ground.";
		now W is in the location of the player;
		now W is unlocked;
	let cum-countdown be a random number between 30 and 40;
	let total-fuck-turns be 0;
	let stimulation-level be 0;
	let slobber-owner be the player;
	let pussy-count be 0;
	let ass-count be 0;
	let player-filthiness be 0;
	let victorious-student be the player;
	let student-filthiness be 0;
	let filthiest-student be a random student in the location of the player;
	now refactoryperiod is 0;
	while cum-countdown > 0:
		increase seconds by 9;
		now stimulation-level is 0;
		finally humiliate the delayed humiliation of the player;
		check for arousal change;
		while stimulation-level <= 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			if face is not actually occupied:
				if pussy-count is 0 and ass-count is 0 and slobber-owner is the player, set numerical response 1 to "use your mouth";
				otherwise set numerical response 1 to "use your mouth (you'll have to slurp up[if pussy-count > 1] [pussy-count] lots of vaginal juices[otherwise if pussy-count > 0] the taste of someone's pussy juice[end if][if pussy-count > 0 and ass-count > 0] and[end if][if ass-count > 1] [ass-count] lots of ass juices[otherwise if ass-count > 0] the taste of someone's butt[end if][if ass-count is 0 and pussy-count is 0] [NameDesc of slobber-owner][']s slobber[end if])";
			if the player is female and vagina is not actually occupied and the number of worn chastity cage is 0:
				if ass-count is 0, set numerical response 2 to "use your pussy";
				otherwise say "You aren't allowed to use your [vagina] while there's someone else's ass juices on [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L], as that would be unhealthy.";
			if asshole is not actually occupied, set numerical response 3 to "use your asshole";
			if the largeness of breasts > 5, set numerical response 4 to "use your breasts";
			set numerical response 0 to "just use your hand";
			compute multiple choice question;
			if player-numerical-response is 1:
				now the lesson-teacher of L is penetrating face;
				say "You [if the oral sex addiction of the player < 4]hesitantly[otherwise if the oral sex addiction of the player < 8]gracefully[otherwise]greedily[end if] take the [LongDickDesc of lesson-teacher of L] into your mouth. ";
				if the player is a deepthroater:
					say "You skilfully push the massive rod straight down your throat, making proud gagging sounds around it as you do. You move your head up and down, up and down, essentially fucking your own throat as you do. ";
					increase stimulation-level by 1;
				if player-filthiness < ass-count + pussy-count + stimulation-level:
					now player-filthiness is ass-count + pussy-count + stimulation-level;
					if student-filthiness > 0:
						say "By doing this, you've reduced [NameDesc of filthiest-student][']s chances of winning.";
						if student-filthiness < player-filthiness, HappinessDown filthiest-student by 3;
						otherwise HappinessDown filthiest-student;
				increase stimulation-level by (the oral sex addiction of the player + a random number between 2 and 4) / 3;
				if ass-count > 0:
					say "The taste of [if ass-count > 1][ass-count] loads of sweaty ass juice[otherwise]tangy ass sweat[end if] [if pussy-count > 1]combined with [pussy-count] helpings of slimy cunt butter [otherwise if pussy-count > 0]combined with the unmistakable taste and texture of pussy juice [end if]overwhelms your senses and makes you retch. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L]. Your cheeks burn with shame[if the player is shameless] and arousal[end if].";
				otherwise if pussy-count > 0:
					say "The taste of [if pussy-count > 1][pussy-count] loads of slippery girl-slime[otherwise]the thin coating of pussy juice[end if] fills your mouth. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L]. Your cheeks burn with shame[if the player is shameless] and arousal[end if].";
				otherwise if slobber-owner is a student:
					say "You can taste [NameDesc of slobber-owner][']s slobbery saliva all over the shaft. It's a bit humiliating to be slurping someone else's spit off of a [DickDesc of lesson-teacher of L]!";
					humiliate 50;
				humiliate (300 * ass-count) + (100 * pussy-count);
				OralSexAddictUp (1 + ass-count + (pussy-count / 2)) / 2;
				say "By the time [NameDesc of lesson-teacher of L] tells you to stop, the only thing coating [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] is your own saliva[unless pussy-count is 0 and ass-count is 0 and slobber-owner is the player]. Everything else is in your stomach and on your tongue[end if].";
				now pussy-count is 0;
				now ass-count is 0;
				now slobber-owner is the player;
				BlowCount;
			otherwise if player-numerical-response is 2:
				now the lesson-teacher of L is penetrating vagina;
				say "You [if the vaginal sex addiction of the player < 4]hesitantly[otherwise if the vaginal sex addiction of the player < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of lesson-teacher of L], before spreading yourself with two fingers and guiding [his of lesson-teacher of L] [LongDickDesc of lesson-teacher of L] into your [vagina]. ";
				increase stimulation-level by 5 - ((the openness of vagina + a random number between 1 and 4) / 3);
				if the vaginal sex addiction of the player > a random number between 4 and 7:
					say "You ride [him of lesson-teacher of L] for all you're worth, thrusting your hips back and forth as fast as you can while gripping [his of lesson-teacher of L] shoulders tightly.";
					increase stimulation-level by 2;
					ruin vagina times 2;
				otherwise:
					say "You ride [him of lesson-teacher of L] gently and passionately, softly kneading [his of lesson-teacher of L] chest with one hand as you do.";
					ruin vagina;
				humiliate 25;
				if pussy-count > 0, say "Your pussy juices mix in with the [if pussy-count is 1]stuff that's already there[otherwise]others[end if], thickening the film of girl-slime around [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L]";
				otherwise say "Your [vagina] slowly coats [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] in its juices.";
				increase pussy-count by 1;
				FuckCount;
			otherwise if player-numerical-response is 3:
				now the lesson-teacher of L is penetrating asshole;
				say "You [if the anal sex addiction of the player < 4]hesitantly[otherwise if the anal sex addiction of the player < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of lesson-teacher of L], before spreading yourself with two fingers and guiding [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] into your [asshole]. ";
				increase stimulation-level by 5 - ((the openness of asshole + a random number between 1 and 4) / 3);
				if the anal sex addiction of the player > a random number between 4 and 7:
					say "You ride [him of lesson-teacher of L] for all you're worth, bouncing on top of [him of lesson-teacher of L] wildly, the tip of [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] repeatedly bashing hard against the deepest recesses of your [asshole].";
					increase stimulation-level by 2;
					ruin asshole times 2;
				otherwise:
					say "You ride [him of lesson-teacher of L] delicately, using your hands to balance yourself around [his of lesson-teacher of L] loins and avoid accidentally falling and putting your full weight on [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] and your [asshole].";
					ruin asshole;
				humiliate 25;
				if ass-count > 0, say "Your ass sweat mixes in with the [if ass-count > 0 and pussy-count > 0]ass and pussy juice that's already there[otherwise if pussy-count > 1]recent helpings of pussy juice[otherwise if pussy-count > 0]pussy juice[otherwise if ass-count > 1][ass-count] traces already there[otherwise]small amounts that are already there from someone else[end if], to create an even nastier concoction for whoever next puts this [DickDesc of lesson-teacher of L] in their mouth.";
				otherwise say "Whoever next puts this [DickDesc of lesson-teacher of L] in their mouth is going to be able to taste your ass on it.";
				increase ass-count by 1;
				AnalCount;
			otherwise if player-numerical-response is 4:
				now the lesson-teacher of L is penetrating breasts;
				say "You [if the titfuck addiction of the player < 4]hesitantly[otherwise if the titfuck addiction of the player < 8]gingerly[otherwise]happily[end if] take the waiting [DickDesc of lesson-teacher of L] in between your [ShortDesc of breasts]. ";
				if the titfuck addiction of the player > a random number between 4 and 7:
					say "Your skill and comfort with masturbating a [DickDesc of lesson-teacher of L] with your breasts is made apparent as you use your hands to rub the thick shaft with an enthusiastically fast rhythm and high pressure. ";
					increase stimulation-level by 1;
				otherwise:
					say "You move your body up and down, gently stroking the shaft with your soft flesh. ";
				increase stimulation-level by (the largeness of breasts + a random number between 1 and 4) / 6;
				humiliate 25;
				stimulate breasts;
			otherwise:
				increase stimulation-level by 1;
				if a random number between 7 and 13 < the sex addiction of the player:
					say "You stroke [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] and head with both your hands, filling the room with a steady 'schlick schlick schlick' sound.";
					if the player is a pervert, increase stimulation-level by 1;
				otherwise:
					say "You slowly stroke [NameDesc of lesson-teacher of L][']s shaft with one hand.";
		decrease cum-countdown by stimulation-level;
		TimesSubmittedUp (lesson-teacher of L) by 1;[Each time you perform a sex act on him, it counts as one instance of submissive sex]
		if total-fuck-turns is 0:
			say "Getting to choose how you fuck [him of lesson-teacher of L] has made you feel more dominant!";
			SilentlyDelicateDown 1;
		increase total-fuck-turns by 1;
		if cum-countdown <= 0:
			say "[speech style of lesson-teacher of L]'Yes, yes, YES!!!'[roman type][line break][BigNameDesc of lesson-teacher of L] orgasms and [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] erupts!";
			if the lesson-teacher of L is penetrating an orifice:
				say "Your [variable a random orifice penetrated by the lesson-teacher of L] gets filled!";
				if the lesson-teacher of L is penetrating vagina, PussyFill the semen load of the lesson-teacher of L;
				if the lesson-teacher of L is penetrating asshole, AssFill the semen load of the lesson-teacher of L;
				if the lesson-teacher of L is penetrating face, StomachSemenUp the semen load of the lesson-teacher of L;
			if the lesson-teacher of L is penetrating breasts:
				say "Your [ShortDesc of breasts] get drenched in [semen]!";
				CumTitsUp the semen load of the lesson-teacher of L;
				increase the raw sensitivity of breasts by 1;
		otherwise:
			if the lesson-teacher of L is penetrating face and player-filthiness > 0:
				say "[speech style of lesson-teacher of L]'That's right, swallow it all you [one of]filthy pig[or]nasty cumdump[or]human vacuum cleaner[in random order]!'[roman type][line break][BigNameDesc of lesson-teacher of L] passionately degrades you between moans of approval.[line break][speech style of lesson-teacher of L]'Okay STOP! Next in line, get going, quickly!'[roman type][line break]";
			otherwise:
				say PracticalAssessment of the lesson-teacher of L to stimulation-level with cum-countdown;
		dislodge the lesson-teacher of L;
		repeat with M running through students in the location of the player:
			if cum-countdown > 0:
				now stimulation-level is 0;
				if a random number between 1 and (10 + ((ass-count + ass-count + pussy-count) * 2) - the practical dirtiness of M) is 1 and M is promotable:
					say "[BigNameDesc of M] [one of]moves [his of M] face up to[or]approaches[in random order] [NameDesc of lesson-teacher of L][']s crotch and takes [his of lesson-teacher of L] [LongDickDesc of lesson-teacher of L] into [his of M] mouth. [big he of M] [one of]audibly gags[or]chokes on the length[or]makes rather lewd glugging sounds[in random order] as [he of M] tries to get as much as possible of it into [his of M] [one of]tiny mouth[or]delicate throat[or]gullet[in random order], and [one of]slurp up[or]suck away[in random order] all the [if ass-count + pussy-count > 0]disgusting [end if]juices. After a short while of moving [his of M] head up an down, you hear [him of M] gulp as [he of M] swallows whatever is sloshing around in [his of M] mouth. [if ass-count + pussy-count > 0]After [he of M] pulls away, you see [him of M] wipe [his of M] tongue with disgust. [end if][big his of M] saliva still coats [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L].";
					if ass-count + pussy-count > student-filthiness:
						now filthiest-student is M;
						now student-filthiness is ass-count + ass-count + pussy-count;
					now ass-count is 0;
					now pussy-count is 0;
					now slobber-owner is M;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if ass-count is 0 and M is female and lady fetish < 2 and a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					say "[BigNameDesc of M] crouches above [NameDesc of lesson-teacher of L] before carefully lowering [his of M] spread pussy onto [NameDesc of lesson-teacher of L][']s [one of]waiting shaft[or]rock hard rod[or]thick [LongDickDesc of lesson-teacher of L][in random order]. [big he of M] [one of]audibly moans as [he of M] rocks back and forth[or]goes a bit red in the face as [he of M] repeatedly rides up and down the whole length[or]hardly moves at all before [he of M] mewls in a high pitched voice and loses control of [his of M] shuddering body as [he of M] cums hard. [big his of M] leaves her panting and collapsed on top of [NameDesc of lesson-teacher of L], that [LongDickDesc of lesson-teacher of L] still fully embedded inside of [him of M][or]tries to clench [his of M] vaginal muscles as [he of M] rides up and down, to make it tighter for [NameDesc of lesson-teacher of L][or]silently thrusts her hips back and forth, taking on the role of the obedient cowgirl[or]grinds down onto the [DickDesc of lesson-teacher of L] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher[or]quickly gets to bouncing up and down with a steady, smooth rhythm[in random order].";
					increase pussy-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					say "[BigNameDesc of M] crouches above [NameDesc of lesson-teacher of L] before [one of]carefully lowering[or]roughly impaling[or]slowly pushing[in random order] [his of M] [one of]tight little asshole[or]slightly open asshole[or]butthole[in random order] onto [NameDesc of lesson-teacher of L][']s [one of]massive beast[or]long hard shaft[or]waiting dong[in random order]. [big he of M] [one of]audibly whimpers as [he of M] moves [his of M] hips back and forth[or]holds [his of M] breath as [he of M] uses [his of M] thigh muscles to ride up and down the whole length[or]grinds up and down, forward and back for several seconds before suddenly wailing as a sudden anal orgasm wracks [his of M] entire body, causing [him of M] to collapse onto of [NameDesc of lesson-teacher of L], the still fully-hard [DickDesc of lesson-teacher of L] managing to slither its way out of [his of M] butthole with a loud slurp[or]tries to use [his of M] butt muscles to massage [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] in an almost sensual display[or]somehow makes very loud and wet slapping noises as [his of M] butt rapidly rises and falls on top of [NameDesc of lesson-teacher of L][or]grinds down onto the [DickDesc of lesson-teacher of L] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher with [his of M] tight butthole[or]fucks it at a good steady pace, using [his of M] arms and hands to help balance [himself of M] as [he of M] moves up and down[in random order].";
					increase ass-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise:
					say "[BigNameDesc of M] takes [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] in [if the practical dirtiness of M > 2]both of [his of M] hands[otherwise]one hand[end if] and [one of]gives it long, slow strokes[or]short fast strokes[or]skilful twisting strokes[or]delicate strokes with two fingers, focusing on the head[or]fast tight-gripped pumps[in random order].";
					increase stimulation-level by 1;
				decrease cum-countdown by stimulation-level;
				if cum-countdown <= 0 and M is not promotable, now cum-countdown is 1;
				if cum-countdown <= 0:
					say "[speech style of lesson-teacher of L]'Ugh, that's it, it's coming, COMING!!!'[roman type][line break][BigNameDesc of lesson-teacher of L] bucks [his of lesson-teacher of L] hips as [he of lesson-teacher of L] orgasms! ";
					now victorious-student is M;
				otherwise:
					say PracticalAssessment of the lesson-teacher of L to stimulation-level with cum-countdown;
	say "[if victorious-student is the player]You have[otherwise][BigNameDesc of victorious-student] has[end if] won! ";
	say "[BigNameDesc of lesson-teacher of L] stands up and adjusts [his of lesson-teacher of L] clothes.[line break][speech style of lesson-teacher of L]'Yes, yes, well done, you nasty slut.'[roman type][line break]";
	if victorious-student is the player:
		say "[big he of lesson-teacher of L] waves a hand in your direction.";
		now armband is pink diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Foxxxy";
		now the armband-print of armband is "first-class fuckdoll";
		say ClothingDesc of armband;
	otherwise:
		promote victorious-student;
	if player-filthiness > student-filthiness:
		if victorious-student is the player:
			say "[BigNameDesc of lesson-teacher of L] yawns, but it's unclear if this is because [he of lesson-teacher of L][']s bored or because [he of lesson-teacher of L] just came so hard.[line break][speech style of lesson-teacher of L]'[NameBimbo] was also the filthiest slut by far, so nobody else gets promoted today. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of lesson-teacher of L] 'hmm's as [he of lesson-teacher of L] thinks.[line break][speech style of lesson-teacher of L]'[NameBimbo] was the filthiest slut today, so [he of the player] gets promoted too.'[roman type][line break]";
			now armband is pink diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Foxxxy";
			now the armband-print of armband is "filthy facefucker";
			say ClothingDesc of armband;
	otherwise:
		if victorious-student is filthiest-student:
			say "[BigNameDesc of lesson-teacher of L] yawns, but it's unclear if this is because [he of lesson-teacher of L][']s bored or because [he of lesson-teacher of L] just came so hard.[line break][speech style of lesson-teacher of L]'[student-name of victorious-student] was also the filthiest slut by far, so nobody else gets promoted today. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of lesson-teacher of L] [']hmm[']s as [he of lesson-teacher of L] thinks.[line break][speech style of lesson-teacher of L]'[student-name of filthiest-student] was the filthiest slut today, so [he of the filthiest-student] gets promoted too.'[roman type][line break]";
			promote filthiest-student;
	update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[BigNameDesc of lesson-teacher of L] closes [his of lesson-teacher of L] eyes and lazily stretches [his of lesson-teacher of L] arms.[line break][speech style of lesson-teacher of L]'Yep, I'm done. Class dismissed!'[roman type][line break]".








Part - Swimming Lesson


swimming-lesson is a lesson. The lesson-teacher of swimming-lesson is teacher-hyacinthe.

Definition: swimming-lesson is lesson-appropriate if diaper quest is 0 and the number of alive lesson-appropriate students > 0. [There must be another student]

To decide which number is the swimming-strength of (M - a student):
	decide on the dedication of M.


To compute teaching of (L - swimming-lesson):
	allocate 40 seconds;
	[now bigGameLoop is 2;]
	let M be the lesson-teacher of L;
	say "[BigNameDesc of M] guides you all to the diving board next to the deep end of the swimming pool.";
	repeat with N running through monsters in School22: [Clear out the stand of unnecessary NPCs]
		now N is in School02;
	repeat with N running through monsters in School20: [Clear out the swimming pool of unnecessary NPCs]
		now N is in School02;
	repeat with N running through monsters in the location of M:
		now N is in School20;
	now School22 is discovered;
	now School20 is discovered;
	now School19 is discovered;
	now the player is in School20;
	let LST be the list of students in School20;
	say "[speech style of M]'I'm sure you've been wondering what we use this pool for. Well, it works very well as a test of will. [if the number of entries in LST > 0]Each of you has[otherwise]You have[end if] your promotion waiting for you, at the bottom of this pool.'[roman type][line break][BigNameDesc of M] produces a [if there is a student in the location of the player]set of weighted balls, each with one of your names on it, and launches them[otherwise]weighted ball and launches it[end if] into the pool, where it quickly disappears towards the bottom of the creamy goop.[line break][speech style of M]'There will be race from the far end of the swimming pool, the deep end, back to this end here. You don't HAVE to take part - nobody's forcing you to do anything in this school. There are two ways to get promoted. Firstly, everyone who gets in the pool, EXCEPT for the person who gets out FIRST and the person who gets out LAST, gets promoted. So you don't want to win the race, but you also don't want to lose. Secondly, everyone is allowed to take one weight out of the pool with them. You can't go back in once you get out. Whoever's name is on a weight that's not in the pool at the end of the race, wins. The end of the race is when there's nobody left in the pool. BUT there is a small incentive to be the first out: when the first person gets out, there'll be a fun... [']event['] that'll affect everyone who's still in the pool.'[roman type][line break]";
	let SM be a random off-stage fetish appropriate string monokini;
	if the class of the player is adventurer and SM is clothing:
		now SM is in the location of the player;
		say "[BigNameDesc of M] produces a set of super-slutty swimming outfits:[line break][FullExamineDesc of SM][speech style of M]'Did you know? In this world, wearing a swimming outfit massively increases your ability to swim. Crazy, but true. So, anyone who wants to change into one of these is welcome to. But, you should be aware, you won't be allowed to wear any other clothes, and they're cursed in a way that'll force you to wear it until your next lesson. So... who wants one?'[roman type][line break]Take a [ShortDesc of SM]? ";
		if the player is consenting:
			say "[if there is worn cursed clothing or there is worn locked clothing or there is worn glued clothing][BigNameDesc of M] helps you remove all your clothing. [otherwise if there is worn nudism-disabling removable clothing]You remove all your clothing. [end if]";
			repeat with C running through worn removable clothing:
				unless C is armband or C is bag of holding, now C is in the location of the player;
			summon SM uncursed;
			now SM is cursed;
			now the quest of SM is next-lesson-quest;
			say "You put on [NameDesc of SM].";
	say "[BigNameDesc of M] gets you to line up in front of the edge of the pool.[line break][speech style of M]'On your marks, get set, GO!'[roman type][line break]";
	let playerDistance be 0; [How far has the player travelled in the pool?]
	let playerWeight be 0; [What is the ID of the weight held by the player?]
	let LInPool be a list of people; [Who's currently in the pool?]
	let LCumBlinded be a list of people; [Who has dipped their head down under the cum and therefore can't see much any more?]
	let LOutOfPool be a list of people; [In order, who has left the pool?]
	let LWeights be the list of students in the location of the player; [List of weights with everyone's name on. Static]
	add yourself to LWeights;
	sort LWeights in random order;
	let NWeights be the number of entries in LWeights;
	repeat with ST running through LST:
		now lessonInt1 of ST is 0; [student's distance through the cum pool]
		now lessonInt2 of ST is 0; [ID of weight grabbed by the student]
	let semenAddictionCounter be 0; [Used to make semen addiction go up periodically]
	let poolCrazyEvent be 0; [When the first player gets out of the pool, this flags that a crazy event takes place.]
	let CPS be a random worn condom pinnable swimsuit; [Used as the target for the swimming condoms event]
	let raceOver be 0;
	while raceOver is 0:
		let LDivers be a list of people; [Who is trying to use the diving board this turn?]
		let LWeightDivers be a list of people; [Which people are about to dive for a weight?]
		if playerDistance is 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "lower yourself into the pool";
			set numerical response 2 to "dive into the pool from the diving board";
			set numerical response 3 to "wait";
			compute multiple choice question;
			if player-numerical-response is 1:
				say "You ease yourself into the pool, ensuring that your chin remains above the surface of the [semen].";
				now playerDistance is 1;
				add the player to LInPool;
				compute cum pool coating;
			otherwise if player-numerical-response is 2:
				add the player to LDivers;
			otherwise:
				say "You hold back for now.";
		otherwise if the player is listed in LInPool: [Player swimming block]
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set next numerical response to "swim towards the shallow end[one of] (once you go too far, you won't be able to pick up a new weight)[or][stopping]";
			if yourself is listed in LCumBlinded, set next numerical response to "wipe the cum from your eyes";
			if playerDistance < 5:
				say "[one of]Due to the slant at the bottom of the pool, you know that all the weights are at the bottom of the deepest few metres of the pool.[or][stopping]";
				set next numerical response to "dive for a weight";
			otherwise:
				say "[one of][bold type]You've now gone too far away from the deep end of the pool to have a chance to find a weight below you.[roman type][line break][or][stopping]";
			set next numerical response to "wait";
			compute multiple choice question;
			let CNR be the chosen numerical response;
			if the printed name of CNR matches the text "swim":
				let D be a random number between 1 and ((the dexterity of the player / 10) + (the number of worn swimming themed wearthing * 2));
				if D > 1 and playerWeight > 0, decrease D by 1;
				say "You make [if D <= 1]slow[otherwise if D is 2]decent[otherwise if D is 3]excellent[otherwise]rapid[end if] progress towards the shallow end[if playerWeight > 0], [one of]hampered by the heavy weight in your hand[or]slowed down by the weight[purely at random][end if].";
				increase playerDistance by D;
				if playerDistance >= 10, say "[bold type]You make it to the end of the pool![roman type][line break]";
			otherwise if the printed name of CNR matches the text "wipe":
				say "You spend some time clearing the thick goop from your eyes so you can see more clearly again.";
				remove yourself from LCumBlinded;
				now the semen coating of face is 8; [greater than 8 causes the cum blinded status icon]
			otherwise if the printed name of CNR matches the text "dive":
				add yourself to LWeightDivers;
		sort LST in random order;
		repeat with ST running through LST:
			if poolCrazyEvent is not 1: [When someone gets out of the pool for the first time, it triggers an event which makes everyone else lose their turn.]
				if the lessonInt1 of ST is 0: [they haven't jumped in yet]
					if a random number between 0 and 8 <= the dedication of ST: [They jump in]
						if a random number between 0 and 4 <= the dedication of ST: [They want to use the diving board]
							add ST to LDivers;
						otherwise:
							say "[BigNameDesc of ST] runs to the edge of the pool, and [one of]with only a moment's hesitation, [or]after a brief pause, [or]immediately [at random]jumps into the pool of [semen].";
							increase the lessonInt1 of ST by 1;
							add ST to LInPool;
				otherwise if ST is listed in LInPool: [they're in the pool already]
					if the lessonInt2 of ST is 0 and the lessonInt1 of ST < 4 and a random number between 0 and 5 <= the dedication of ST:
						add ST to LWeightDivers;
					otherwise if the lessonInt1 of ST >= 10: [Student considers getting out of the pool]
						if the number of entries in LOutOfPool > 0 or a random number between 0 and the dedication of ST is 0: [It's bad to be the first one out]
							say "[BigNameDesc of ST] heaves [himself of ST] out of the pool.";
							remove ST from LInPool;
							add ST to LOutOfPool;
							if ST is listed in LCumBlinded, remove ST from LCumBlinded;
							if poolCrazyEvent is 0, now poolCrazyEvent is 1;
						otherwise:
							say "[BigNameDesc of ST] [one of]is at the end of the pool but doesn't get out yet[or]hovers at the end of the pool, but doesn't get out yet[or]decides not to get out of the pool yet[then at random].";
					otherwise:
						if ST is listed in LCumBlinded and a random number between 0 and the dedication of ST is 0:
							say "[BigNameDesc of ST] stops to wipe some [semen] from [his of ST] eyes.";
							remove ST from LCumBlinded;
						otherwise:
							let SWIM be a random number between 1 and the swimming-strength of ST;
							if SWIM > 1 and the lessonInt2 of ST > 0, decrease SWIM by 1;
							say "[BigNameDesc of ST] swims towards the shallow end of the pool. [big he of ST] [if SWIM is 1][one of]doesn't get too far[or]only manages to progress by a couple of metres[or]makes poor progress[at random].[otherwise if SWIM is 2][one of]makes impressive progress[or]manages to travel a few metres[or]successfully makes decent progress[at random].[otherwise]makes incredible progress![end if]";
							increase the lessonInt1 of ST by SWIM;
							if the lessonInt1 of ST >= 10, say "[big he of ST] reaches the end of the pool.";
		[Now we handle all the people going for the diving board at the same time]
		let NDivers be the number of entries in LDivers;
		if NDivers > 1:
			let NList be NDivers;
			if the player is listed in LDivers:
				decrease NList by 1;
				repeat with PX running through LDivers:
					if PX is student:
						decrease NList by 1;
						say "[NameDesc of PX][if NList > 1], [otherwise if NList is 1] and [end if]";
				say " [if NDivers is 2]is[otherwise]are[end if] going for the diving board at the same time as you! Do you hold back? ";
				if the player is consenting, remove yourself from LDivers;
			otherwise:
				repeat with PX running through LDivers:
					decrease NList by 1;
					say "[NameDesc of PX][if NList > 1], [otherwise if NList is 1] and [end if]";
				say " are going for the diving board at the same time as each other!";
		let LActualDivers be a list of people; [We can't remove items from a list while iterating through it, or bad things happen with pointers, so the best way is to create a new list]
		repeat with PX running through LDivers:
			if PX is yourself:
				add PX to LActualDivers;
			otherwise:
				if a random number between 0 and 4 <= the dedication of PX, add PX to LActualDivers;
				otherwise say "[BigNameDesc of PX] [one of]hesitates[or]holds back[at random].";
		if the number of entries in LActualDivers > 1:
			if yourself is listed in LActualDivers:
				say "You sprint for the diving board, but ";
				let NStudentDivers be the number of entries in LActualDivers - 1;
				repeat with PX running through LActualDivers:
					if PX is student:
						decrease NStudentDivers by 1;
						say "[NameDesc of PX][if NStudentDivers > 1], [otherwise if NStudentDivers is 1] and [end if]";
				say " also [if the number of entries in LActualDivers is 2]tries[otherwise]try[end if] to dive off of the board at the same time! You [if the number of entries in LActualDivers is 2]all [end if]crash into each other and fall into the pool at the deep end, gaining no ground and getting completely submerged in the [semen]!";
				repeat with PX running through LActualDivers:
					add PX to LInPool, if absent;
					if PX is student:
						now the lessonInt1 of PX is 1;
						add PX to LCumBlinded;
						HappinessDown PX by 3;
					otherwise:
						now playerDistance is 1;
						add yourself to LCumBlinded;
						compute cum pool coating;
						compute cum pool face coating;
			otherwise:
				let NStudentDivers be the number of entries in LActualDivers;
				repeat with PX running through LActualDivers:
					decrease NStudentDivers by 1;
					say "[NameDesc of PX][if NStudentDivers > 1], [otherwise if NStudentDivers is 1] and [end if]";
				say " [if the number of entries in LActualDivers > 2]all [end if]try to dive off of the board at the same time! You cringe as they crash into each other and fall into the pool at the deep end together, gaining no ground and getting completely submerged in the [semen]!";
				repeat with PX running through LActualDivers:
					add PX to LInPool, if absent;
					now the lessonInt1 of PX is 1;
					add PX to LCumBlinded;
		otherwise if the number of entries in LActualDivers > 0:
			let PX be entry 1 in LActualDivers;
			if PX is yourself:
				say "You gracefully jump off of the diving board, managing to get about a third of the way across the length of the pool before plummeting into the warm [semen]. Your body is instantly coated with the [if the semen addiction of the player < 7]disgusting[otherwise if the semen addiction of the player < 14]goopy[otherwise]glorious[end if] stuff. As you sink through it, your hands manage to clasp around a weight!";
				now playerDistance is 4;
			otherwise:
				say "[BigNameDesc of PX] launches off of the diving board, gaining a huge amount of distance, before disappearing beneath the surface!";
				now the LessonInt1 of PX is 4;
			add PX to LWeightDivers;
			add PX to LInPool, if absent;
			if PX is the player, compute cum pool coating;
		repeat with ST running through LWeightDivers:
			if ST is listed in LActualDivers:
				if ST is yourself, say "You return to the surface, taking quick gasps of breath as you wipe the [semen] from your eyes in order to inspect the name on the weight.";
				otherwise say "[BigNameDesc of ST] comes back up quickly, [his of ST] face and hair now completely drenched in [semen]. [big he of ST] is holding a weight in [his of ST] hand.";
			otherwise:
				if ST is yourself:
					say "You flip your body downwards and [if the player is listed in LCumBlinded]once again [end if]submerge yourself in search of a weight. You quickly find one, returning to the surface to gasp for air and inspect your prize.";
				otherwise:
					say "[BigNameDesc of ST] dives for a weight! ";
					if ST is listed in LCumBlinded:
						say "[one of][big he of ST] has to spend some time wiping the [semen] away from [his of ST] eyes before [he of ST] can squint at the weight and try to read the name.[or][or][or][at random]";
					otherwise:
						say "[big he of ST] comes back up coughing and spluttering, [his of ST] face and hair now completely drenched in [semen].";
			add ST to LCumBlinded;
			if ST is the player, compute cum pool face coating;
			[This annoyingly complex block ensures that the diver picks up a weight that is not already held by another swimmer]
			if debugmode > 1:
				say "Complex bit starting now...";
				if the player is consenting, do nothing;
			if ST is the player:
				while playerWeight is 0:
					let playerWeight be a random number between 1 and NWeights;
					repeat with XST running through students in the location of ST:
						if the playerWeight is lessonInt2 of XST, now playerWeight is 0; [can't grab the same weight that someone else is already holding]
			otherwise:
				while lessonInt2 of ST is 0:
					now lessonInt2 of ST is a random number between 1 and NWeights;
					repeat with XST running through people in the location of ST:
						if XST is not ST:
							if XST is student:
								if the lessonInt2 of ST is lessonInt2 of XST, now the lessonInt2 of ST is 0; [can't grab the same weight that someone else is already holding]
							otherwise if XST is the player:
								if the lessonInt2 of ST is playerWeight, now the lessonInt2 of ST is 0; [can't grab the same weight that the player is already holding]
			let WeightNameEntry be playerWeight;
			if ST is student, now WeightNameEntry is lessonInt2 of ST;
			let WeightName be entry WeightNameEntry of LWeights;
			if the player is listed in LCumBlinded and ST is not the player, say "[one of]There's too much [semen] in your eyes for you to be able to see what name is on the weight at this distance[or]You can't see the name[stopping].";
			otherwise say "It has [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] name on it!";
			if ST is student and ((WeightName is not ST and a random number between 0 and 3 < the vindictiveness of ST) or (WeightName is yourself and ST is unfriendly)):
				say "[big he of ST] drops it back in!";
				now the lessonInt2 of ST is 0;
		if playerWeight > 0:
			let WeightName be entry playerWeight of LWeights;
			say "Drop the weight (with [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] name) back into the [semen] pool? ";
			if the player is consenting:
				say "You drop it back into the pool, freeing your hands.";
				if WeightName is student:
					if WeightName is listed in LCumBlinded, say "[BigNameDesc of WeightName] doesn't seem to notice that you've dropped [his of WeightName] weight, probably because of all the sticky [semen] plastered across [his of WeightName] eyes.";
					otherwise HappinessDown WeightName by 2; [If they can see, they're upset that you've dropped the weight back down]
				now playerWeight is 0;
		if poolCrazyEvent is not 1 and the player is listed in LInPool and playerDistance >= 10:
			say "Get out of the pool? [if the number of entries in LOutOfPool is 0]Remember, the first person out doesn't get automatically promoted, but will trigger some sort of crazy event for the other students in the pool. [end if]";
			if the player is consenting:
				remove yourself from LInPool;
				add yourself to LOutOfPool;
				say "You heave yourself out of the pool and begin wiping the [semen] from your eyes.";
				if yourself is listed in LCumBlinded, remove yourself from LCumBlinded;
				if poolCrazyEvent is 0, now poolCrazyEvent is 1;
		if poolCrazyEvent is 1: [The first person has gotten out of the pool. Something crazy happens.]
			let OutName be entry 1 of LOutOfPool;
			say "[bold type]As [if OutName is the player]you get[otherwise][NameDesc of OutName][bold type] gets[end if] out of the pool, the lights turn red and a loud klaxon starts blaring. Something is happening![roman type][line break]";
			if CPS is clothing and a random number between 1 and 5 > 2: [Swimming condoms]
				now poolCrazyEvent is 2;
				say "And then it happens: A sea of unused condoms, not in wrappers, rain from the ceiling. They land in the pool all over, and then begin swimming blindly around like leeches, filling up with [semen] from the pool as they move. ";
				if yourself is listed in LInPool and the number of entries in LInPool is 1: [Player is the only person in the pool]
					say "One quickly finds itself bumping into you, where it immediately latches onto your [ShortDesc of CPS]! You try to pull it off, but it's stuck there now, magically pinned in place![line break][variable custom style]Uh-oh...[roman type][line break]";
				otherwise:
					let CondomTarget be entry 1 of LInPool;
					if CondomTarget is yourself, now CondomTarget is entry 2 of LInPool;
					say "You watch as one bumps into [NameDesc of CondomTarget], and immediately latches onto [his of CondomTarget] outfit! [big he of CondomTarget] tries to pull it off, but it's stuck there, refusing to budge! [big he of CondomTarget] now has a used condom permanently attached to [his of CondomTarget] outfit!";
					if yourself is listed in LOutOfPool, HappinessDown CondomTarget;
				say "[bold type]It seems like from now on, [if yourself is listed in LInPool]you [end if][if yourself is listed in LInPool and the number of entries in LInPool > 1]and [end if][if the number of entries in LInPool > 2 or (the number of entries in LInPool > 1 and yourself is not listed in LInPool)]the other swimmers [otherwise if yourself is not listed in LInPool][NameDesc of entry 1 in LInPool][bold type] [end if]will have to evade swimming condoms or get covered in them![roman type][line break]";
			otherwise: [Sudden gape]
				now poolCrazyEvent is 3;
				if yourself is listed in LInPool:
					say "And then it happens. Suddenly your [if the player is female][vagina] and [asshole] are[otherwise][asshole] is[end if] forced open to an insane width, as if a magical invisible speculum was just opened up inside. A strong current of [semen] rushes inside, rapidly filling you to the brim![line break][variable custom style]What the fuck?![roman type][line break][if the number of entries in LInPool > 1]A brief look around tells you that the same thing has happened to the other [end if][if the number of entries in LInPool > 2]students too.[otherwise if the number of entries in LInPool > 1]student too.[end if]";
					if the player is female, PussyFill 20;
					increase the semen volume of belly by 25;
				otherwise:
					say "[if the number of entries in LInPool > 1]The students suddenly start[otherwise][NameDesc of entry 1 in LInPool] starts[end if] screaming. You can't really tell what's going on, but it's clear that something is happening to their bottom half.";
			if OutName is yourself:
				repeat with ST running through LInPool:
					HappinessDown ST;
		if poolCrazyEvent is 2:
			repeat with ST running through LInPool:
				if a random number between 1 and 2 is 1:
					if ST is yourself:
						say "A swimming condom connects with you and latches onto your [ShortDesc of CPS]![line break][variable custom style][one of]Shit![or]Not another one![or]I've got to get out of here![then at random][roman type][line break]";
						increase the used condoms of CPS by 1;
					otherwise:
						say "A swimming condom connects with [NameDesc of ST] and latches onto [his of ST] outfit!";
						if entry 1 in LOutOfPool is yourself, HappinessDown ST;
		if the player is listed in LInPool:
			decrease semenAddictionCounter by 1;
			if semenAddictionCounter <= 0:
				say "[one of]Your body can't help but react to the [semen] coating it. You shiver as you feel yourself becoming more accustomed to the feeling of being covered in [semen].[if the semen addiction of the player < 10][line break][variable custom style]No! I don't want to get used to this feeling! I've got to get out quickly![roman type][line break][end if][or]Your body continues to grow accustomed to the feeling of [semen].[stopping]";
				SemenAddictUp 1;
				now semenAddictionCounter is (a random number between 1 and 2) + (a random number between 0 and 2);
				if semenAddictionCounter > 3, now semenAddictionCounter is 3;
		if yourself is not listed in LOutOfPool: [List all the details of where everyone is]
			if the number of entries in LOutOfPool + the number of entries in LInPool < (the number of entries in LST + 1): [Some students haven't yet gone into the pool]
				say "[line break][bold type]Not yet in the pool:[roman type][line break]";
				if playerDistance is 0, say "You[line break]";
				repeat with ST running through LST:
					if ST is not listed in LInPool and ST is not listed in LOutOfPool, say "[BigNameDesc of ST][line break]";
			if the number of entries in LInPool > 0:
				let LPoolSection be a list of people;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance <= 4) or (ST is student and lessonInt1 of ST <= 4), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the deep end of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
				truncate LPoolSection to 0 entries;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance > 4 and playerDistance <= 7) or (ST is student and lessonInt1 of ST > 4 and lessonInt1 of ST <= 7), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the middle of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
				truncate LPoolSection to 0 entries;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance > 7) or (ST is student and lessonInt1 of ST > 7), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the shallow end of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
			if the number of entries in LOutOfPool > 0:
				say "[line break][bold type]Out of the pool:[roman type][line break]";
				repeat with ST running through LOutOfPool:
					say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
			say line break;
		if the number of entries in LOutOfPool > 0 and the number of entries in LInPool is 0, now raceOver is 1;
	let LWinners be a list of people;
	repeat with ST running through LOutOfPool:
		add ST to LWinners;
	let STFirstOut be entry 1 in LWinners;
	let STLastOut be entry (the number of entries in LWinners) in LWinners;
	remove STFirstOut from LWinners;
	if STFirstOut is not STLastOut, remove STLastOut from LWinners;
	repeat with PX running through monsters in the location of the player:
		now PX is in School22;
	now the player is in School22;
	say "[BigNameDesc of M] blows on a whistle.[line break][speech style of M]'Alright, that's the end of that! Good race! Let's see now... [BigNameDesc of STFirstOut][speech style of M] was the first out of the pool, and [BigNameDesc of STLastOut][speech style of M] was the last. So that means [if the number of entries in LWinners is 0]nobody gets[otherwise if the number of entries in LWinners is 1][NameDesc of entry 1 in LWinners][speech style of M] gets[otherwise][LWinners][speech style of M] get[end if] promoted for not coming first or last! And as for weights...'[roman type][line break][BigNameDesc of M] looks around for which weights have been brought of the pool.";
	repeat with ST running through LOutOfPool:
		let WeightID be playerWeight;
		if ST is student, now WeightID is lessonInt2 of ST;
		let WeightName be M;
		if WeightID > 0, now WeightName is entry WeightID of LWeights;
		say "[speech style of M]'[BigNameDesc of ST][speech style of M] [if WeightName is M]didn't bring anybody's[otherwise if WeightName is ST]brought [his of ST] own[otherwise]brought [NameDesc of WeightName][speech style of M][']s[end if] weight out of the pool with [him of ST][if WeightName is not M and WeightName is not listed in LOutOfPool]. [otherwise].'[line break][end if]";
		if WeightName is not M and WeightName is not listed in LOutOfPool:
			say "And to think, [NameDesc of WeightName][speech style of M] didn't even get in the pool[if WeightName is the player]!'[roman type][line break][otherwise]! [end if]";
			if WeightName is the player:
				repeat with ST2 running through students in the location of the player:
					if ST is ST2, HappinessDown ST;
					otherwise FavourDown ST2;
		unless WeightName is M:
			add WeightName to LWinners, if absent;
	say "[speech style of M]'So... [if the number of entries in LWinners is 0]nobody gets promoted! Oh well!'[otherwise if the number of entries in LWinners is 1]only [NameDesc of entry 1 in LWinners][speech style of M] gets promoted today!'[otherwise]I have some promotions to hand out!'[end if][roman type][line break]";
	repeat with ST running through LWinners:
		if ST is student, promote ST;
	if the player is listed in LWinners:
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		if the player is listed in LOutOfPool:
			now the armband-title of armband is "Porcelain";
			now the armband-print of armband is "cum-bath queen";
		otherwise:
			now the armband-title of armband is "";
			now the armband-print of armband is "dead weight";
		say ClothingDesc of armband;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[BigNameDesc of M] licks [his of M] lips with satisfaction.[line break][speech style of M]'Class dismissed!'[roman type][line break]".










Part - Kaylee / Karl

teacher-kaylee is a diamond-teacher. teacher-kaylee is male.

Definition: teacher-kaylee is presenting as male if futanari fetish is 0.

The text-shortcut of teacher-kaylee is "teka".

Figure of kaylee is the file "NPCs/School/Teacher/teacher10.jpg".
Figure of karl is the file "NPCs/School/Teacher/teacher11.jpg".

To decide which figure-name is the monster-image of (M - teacher-kaylee):
	if lady fetish is 1 or futanari fetish is 1, decide on figure of kaylee;
	decide on figure of karl.

To decide which number is the girth of (M - teacher-kaylee):
	decide on 3.

To say LongDickDesc of (M - teacher-kaylee):
	say "long uncut [manly-penis]".

To say MonsterDesc of (M - teacher-kaylee):
	if lady fetish is 1 or futanari fetish is 1, say "This may be the most perfect, beautiful, youthful, healthy, and sexy woman you've ever seen. [if the player is a pervert]Since[otherwise]You struggle to marry this with the fact that since[end if] [he of M][']s fully naked, you can see that [he of M] has a [LongDickDesc of M] swinging between [his of M] legs[if futanari fetish is 0] instead of a pussy[end if].";
	otherwise say "This naked man's impossibly perfect abs and shockingly impressive muscles [if the player is female or the player is a pervert]make you weak at the knees with sexual attraction every time you see [him of M].[otherwise]could attract even the straightest man.[line break][variable custom style]Wait, did I really just think that? I'm attracted to a dude?[roman type][line break][end if]".

The teacher-name of teacher-kaylee is "Kaylee".

To uniquely set up (M - teacher-kaylee):
	if futanari fetish is 0, now the teacher-name of M is "Karl".

To say WhoAnswer of (M - teacher-kaylee):
	say "[speech style of M]'I like to think of it as less of a [']lesson['] and more of an... initiation.'[roman type][line break]".

To say WhereAnswer of (M - teacher-kaylee):
	say "[speech style of M]'[if the rank of the player <= 1]If you haven't worked that out by now, then Azathot help you.'[otherwise]Stay loose and let it happen.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-kaylee):
	say "[speech style of M]'After you pass my initiation, you'll be allowed to join the VIPs in the school dungeon when we tort... I mean [']entertain['] the prisoner.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-kaylee):
	say "[speech style of M]'If you believe the slut in the dungeon, this whole place is a pocket dimension created by a single powerful entity as a safe and fun place for submissives to let off some steam. What a load of bullshit, haha!'[roman type][line break]".

To say AdviceAnswer of (M - teacher-kaylee):
	say "[speech style of M]'Don't believe in yourself. Believe in me! Believe in the teacher who believes in you. Oh did I say [']Believe in[']? Sorry, I meant [']Fuck['].'[roman type][line break]".

To compute teaching of (M - teacher-kaylee):
	say "[speech style of M]'By the time you get to me, hopefully you'll already know everything you need.'[roman type][line break]".


To compute labour to (M - teacher-kaylee):
	compute labour to teacher-rochelle. [It's identical]

ultimate-lesson is a lesson. The lesson-teacher of ultimate-lesson is teacher-kaylee.

ultimate-lesson has a number called lesson-completed.
ultimate-lesson has a number called lesson-vetos.

To compute teaching of (L - ultimate-lesson):
	let M be the lesson-teacher of L;
	now M is guarding; [so she doesn't go walkabout during the lesson]
	let LST be the list of students in the location of M;
	repeat with ST running through LST:
		now ST is guarding;
	say "[BigNameDesc of M] guides you [if the number of entries in LST is 1]and [student-name of entry 1 of LST] [otherwise if the number of entries in LST > 1]all [end if]to kneel down and puts a blindfold over your eyes.[line break][speech style of M]'Try to think of this as less of a lesson and more of an initiation into our inner circle. All you have to do is each obey all our commands and always [bold type]submit[speech style of M] and you'll earn your golden armband. You [if the number of entries in LST > 0]each [end if]get a single time you're allowed to say no. If [if the number of entries in LST > 0]anyone refuses[otherwise]you refuse[end if] to do something more than that, then you [if the number of entries in LST > 0]ALL [end if]fail.'[roman type][line break]You hear the steps of what sounds like about [if the number of entries in LST > 1]at least ten[otherwise][4 * (the number of entries in LST + 1)][end if] [if lady fetish is 1]women[otherwise]men[end if] entering the room, chuckling sadistically and cracking their joints in preparation.";
	now the lesson-completed of ultimate-lesson is 6;
	now the lesson-vetos of ultimate-lesson is 1;
	now the stance of the player is 1;
	repeat with U running through ultimate-fetish-objects:
		now the happened of U is 0;
	let N be 0;
	repeat with U running through ultimate-lesson-actors:
		now U is in DiamondLessonBlindfolded;
		increase N by 1;
		now the text-shortcut of U is the substituted form of "man[N]";
	now the player is in DiamondLessonBlindfolded;
	refresh windows.

To compute lesson veto:
	if the lesson-vetos of ultimate-lesson > 0:
		let M be a random ultimate-lesson-actor;
		let STN be the number of students in the location of the lesson-teacher of ultimate-lesson;
		decrease the lesson-vetos of ultimate-lesson by 1;
		if the lesson-vetos of ultimate-lesson > 0, say "[BigNameDesc of M] growls.[line break][speech style of M]'Fine. But you only have [if the lesson-vetos of ultimate-lesson > 1][lesson-vetos of ultimate-lesson] vetos[otherwise]one veto left[end if].'[roman type][line break]";
		otherwise say "[BigNameDesc of M] snarls.[line break][speech style of M]'That's your last one, cunt. The next time you disobey us, you [if STN > 1]and all your little slut friends [otherwise if STN is 1]and your slut friend [end if]will have failed your initiation.";
	otherwise:
		now the lesson-completed of ultimate-lesson is -1.


An ultimate-lesson-actor is a kind of monster. An ultimate-lesson-actor is male. There are 4 ultimate-lesson-actors.
To say ShortDesc of (M - an ultimate-lesson-actor):
	say "voice".
To say MediumDesc of (M - an ultimate-lesson-actor):
	say "[if lady fetish is 1]wo[end if]manly voice".
To say FuckerDesc of (M - an ultimate-lesson-actor):
	say "the [FuckingDesc of M]".
To say BigFuckerDesc of (M - an ultimate-lesson-actor):
	say "The [FuckingDesc of M]".
To say FuckingDesc of (M - an ultimate-lesson-actor):
	let B be a random body part penetrated by M;
	say "[one of]stranger[or]anonymous [man of M][or][man of M][at random][if B is body part] [one of]in[or]fucking[or]sliding in and out of[or]plowing[or]thrusting in and out of[as decreasingly likely outcomes] your [variable B][end if]".
To say MonsterDesc of (M - an ultimate-lesson-actor):
	say "Who knows what this [man of M] looks like. You know nothing about [him of M], other than [he of M] clearly is a high ranking member of this institution. You'll probably never find out who [he of M] is.".
To compute action (N - a number) of (M - an ultimate-lesson-actor):
	do nothing.
Figure of unseen actor is the file "NPCs/School/unseen1.jpg".
To decide which figure-name is the monster-image of (M - an ultimate-lesson-actor):
	decide on figure of unseen actor.
Definition: an ultimate-lesson-actor is human: decide yes.
Definition: an ultimate-lesson-actor is able to remove cursed plugs: decide yes. [Can the monster remove all plugs & gags?]
To set up sex length of (M - an ultimate-lesson-actor) in (B - a body part):
	set up sex length (a random number between 1 and 2) of M in B.
To compute sex resist punishment of (M - an ultimate-lesson-actor):
	now the lesson-completed of ultimate-lesson is -1.
To compute angry punishment of (M - an ultimate-lesson-actor):
	compute lesson veto.
To compute SelectionFailure of (M - an ultimate-lesson-actor):
	say "You feel a [LongDickDesc of M] shoved [one of]up against your torso[or]into your hand's grip[or]against your cheek[in random order] and moved around as [NameDesc of M] waits for an available hole.".
To say AnalDefloweringFlav of (M - an ultimate-lesson-actor):
	say "Suddenly you feel a hard [manly-penis] pushing against, and into your virgin [asshole]. You reflect on how disgraceful it is that you're losing your anal virginity to a [man of M] who you don't even know what [he of M] looks like, never mind what [his of M] name is...".
To say VaginalDefloweringFlav of (M - an ultimate-lesson-actor):
	say "A single tear is caught by your blindfold as [FuckerDesc of M][']s [DickDesc of M] pierces your hymen, removing your virginity forever. Shame bubbles up inside of you as [he of M] slides deeper and deeper into your [vagina], settling heavily in your core as [he of M] bottoms out. [BigFuckerDesc of M] slowly begins to thrust.[line break][variable custom style]I'll likely never find out the name of the [man of M] who took my virginity. The shame...[roman type][line break]".
To say NormalMouthPenetrationFlav of (M - an ultimate-lesson-actor):
	say "[BigFuckerDesc of M] pinches your nose, shoving [his of M] [DickDesc of M] in your mouth as soon as you try to breathe.".
To compute facial climax of (M - an ultimate-lesson-actor):
	TimesSubmittedUp M by 1;
	BlowCount;
	if M is wrapped:
		compute wrapped climax of M in face;
	otherwise: [Internal cumshot]
		compute deepthroat creampie of M;
	if M is interested and the rounds of sex left of M <= 0:[possibly allows for another round of sex]
		satisfy M.[dislodges him automatically]
To compute sudden objectification of (M - an ultimate-lesson-actor):
	do nothing.
To compute condom request choice of (M - an ultimate-lesson-actor):
	if total used condoms > 0:
		say AutomaticCondomFlav of M;
		now M is wrapped.
To say CondomPinFlav of (M - an ultimate-lesson-actor) on (C - a clothing):
	if M is awake, say "[BigNameDesc of M] ties the used condom to your [ShortDesc of C].";
	otherwise say "Completely of its own accord, the used condom suddenly zips from [NameDesc of M] and flies through the air until it hits your [ShortDesc of C].".
To compute labour to (M - an ultimate-lesson-actor):
	say DefaultBirthScene.

To compute tongue demand of (M - an ultimate-lesson-actor):
	say "[BigNameDesc of M] in front of you gives you an order.[line break][speech style of M]'Hold out your tongue.'[roman type][line break]Do you obey?";
	if the player is bimbo consenting:
		let P be a random off-stage tongue piercing;
		if a random number between 1 and (8 - (piercing-fetish * 6)) is 1 and P is actually summonable:
			summon P cursed;
			say "You suddenly scream in pain as [he of M] uses a red hot needle to give you a tongue piercing!!!";
			PainUp 1;
			say "[big he of M] chuckles with a booming voice.[line break][speech style of M]'Surprise, bitch!'[roman type][line break]";
		otherwise if a random number between 1 and (8 - (tattoo-fetish * 6)) is 1 and cum dumpster lip tattoo is actually summonable and there is a worn tattoo:
			summon cum dumpster lip tattoo;
			say "You suddenly scream in shock as somehow, a tattoo is magically applied to the inside of your lips! You can see what it looks like in your mind's eye.";
			try examining cum dumpster lip tattoo;
			say "[big he of M] chuckles with a booming voice.[line break][speech style of M]'What a perfect addition for a cum-chugging whore like you!'[roman type][line break]";
		otherwise if a random number between 1 and (8 - (artificial-fetish * 6)) is 1 and the lips of face < (2 + artificial enhancements fetish):
			say "[big he of M] takes this opportunity to inject the inside of each of your [LipDesc] with some kind of needle![line break][speech style of M]'Bigger cockpillows make a better cocksucker.'[roman type][line break][big he of M][']s not wrong - you can feel they've been pumped full of some kind of artificial plumper!";
			LipsUp 1;
		otherwise if watersports fetish is 1 and a random number between 1 and 3 is 1:
			say "[speech style of M]'Make sure you swallow every drop.'[roman type][line break]A hissing sound heralds a stream of hot [urine] landing directly into your open waiting mouth.";
			FacePiss from M;
		otherwise if a random number between 1 and 2 is 1:
			let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
			if ST is monster and a random number between 1 and 2 is 1:
				say "You hear [NameDesc of ST] yelp as [he of ST] is dragged towards you, and then [his of ST] asshole is pushed against your tongue. [NameDesc of M] barks an order at [him of ST].[line break][speech style of M]'Go on [student-name of ST], give [NameBimbo] what [he of the player] is asking for.'[roman type][line break][BigNameDesc of ST] mutters a muted apology as [he of ST] pushes out a fresh anal creampie onto your tongue. [BigNameDesc of M] laughs with a vindictive tone and then says just one word to you.";
			otherwise:
				say "You hear a satisfied grunt, and then ropes of salty [semen] splash onto your [if bukkake fetish is 1]face and [end if]tongue.";
				if bukkake fetish is 1, CumFaceUp 3;
			say "[speech style of M]'Swallow.'[roman type][line break]Do you obey?";
			if the player is bimbo consenting:
				say "You obediently swallow the load on your tongue.";
				StomachSemenUp 2;
			otherwise:
				say "You make a disgusted sound and spit it out onto the floor.";
				compute lesson veto;
		otherwise:
			say "[big he of M] spits in your mouth.[line break][speech style of M]'Swallow.'[roman type][line break]Do you obey?";
			if the player is bimbo consenting:
				say "You obediently swallow the stranger's glob of saliva. [strongHumiliateReflect]";
			otherwise:
				say "You make a disgusted sound and spit it out onto the floor.";
				compute lesson veto;
	otherwise:
		compute lesson veto.

To compute anal creampie expel demand of (M - an ultimate-lesson-actor):
	let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
	if ST is student and a random number between 1 and 2 is 1 and face is actually occupied:
		say "You hear a squeak from [NameDesc of ST] and then you feel [his of ST] lips pressed against your [asshole]. [BigNameDesc of M] that recently pulled out of your [asshole] gives you an order.[line break][speech style of M]'Feed [him of ST] my creampie.'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "You screw your eyes shut even tighter and let it rip, filling [NameDesc of ST][']s mouth with your anal load. You hear [him of M] [one of]moan submissively[or]mewl in complaint[at random] and then gulp it all down.";
			empty belly liquids;
		otherwise:
			compute lesson veto;
	otherwise:
		say "You feel something cold and hard pushed against your buttcheeks. [BigNameDesc of M] who recently pulled out of your [asshole] gives you an order.[line break][speech style of M]'Push it out now, slut.'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "You let it rip, filling whatever's behind you with your [if belly liquid types > 1]ass juices[otherwise]ass-cum[end if].";
			if face is not actually occupied:
				say "Moments later you find the vessel pressed against your lips.[line break][speech style of M]'Drink up now, you little cum-whore.'[roman type][line break]Do you obey?";
				if the player is bimbo consenting:
					say "You swallow it all down, gulp by gulp[if the semen taste addiction of the player > 14], and happily lick your [LipDesc] clean afterwards[otherwise if the semen taste addiction of the player < 8], grimacing at the taste and feel of your own ass-cum[end if].";
					StomachSemenUp (the semen volume of belly + 1) / 2;
					StomachUp (the total fluid fill of belly - the semen volume of belly) / 2;
					if the urine volume of belly > 0, UrineTasteAddictUp 1;
				otherwise:
					compute lesson veto;
			otherwise if ST is student:
				say "[speech style of M]'Drink up now, you little cum-whore.'[roman type][line break]You hear [NameDesc of ST] whimper as [he of ST] is made to gulp down your anal excretion.";
			empty belly liquids;
		otherwise:
			compute lesson veto.

To compute anal torture of (M - an ultimate-lesson-actor):
	let LST be the list of students in the location of the lesson-teacher of ultimate-lesson;
	if watersports fetish is 1 and the total squirtable fill of belly <= 30 and a random number between 1 and 5 > 3:
		say "A new [manly-penis] pushes its way into your [asshole]. ";
		now M is penetrating asshole;
		ruin asshole;
		say "[one of]You expect it to begin fucking you, but instead[or]Once again instead of a thrusting motion[stopping] you feel your belly begin to fill from the inside. [big he of M][']s using your asshole as [his of M] urinal! By the time [he of M] finishes and pulls out, you are feeling very full of [urine].";
		AssFill 12 with urine;
		dislodge M;
	otherwise if the number of entries in LST > 1 and face is not actually occupied:
		sort LST in random order;
		let ST1 be entry 1 of LST;
		let ST2 be entry 2 of LST;
		say "[speech style of M]'Human centipede time, bitches!'[roman type][line break]You squeak with surprise as [NameDesc of ST1][']s asshole is pressed against your [LipDesc], while at the same time you hear [NameDesc of ST2] mewl with hesitation as [his of ST2] mouth gets forced against your [asshole]. [if the number of entries in LST > 3]The others make similar noises as you are all arranged in a line, mouth-to-asshole.[otherwise if the number of entries in LST is 3][BigNameDesc of entry 3 of LST] makes a similar noise as [he of entry 3 of LST] is face-planted between [NameDesc of ST2][']s buttcheeks.[end if][line break][speech style of M]'Well don't just sit there, start licking!'[roman type][line break]You shiver with arousal as [NameDesc of ST2] begins to probe your [asshole] with [his of ST2] tongue. Do you do the same?";
		if the player is bimbo consenting:
			say "You push your tongue as deep into [NameDesc of ST1][']s chute as you dare, and the strong tangy flavours of [semen][if the urine volume of belly > 0], [urine][end if] and ass begin to make you feel a bit light headed. [severeHumiliateReflect]";
			if the semen volume of belly + the urine volume of belly > 0:
				say "Then, all of a sudden, you and the other students all begin squeaking in panic at the same time. Your tormentors have begun to tickle each of you at the ribs, and push on your bellies! There's nothing you can do in time to stop what happens next - each of you explodes, filling the mouth of the [boy of ST2] behind you with [semen][if the urine volume of belly > 0] and [urine][end if]. The room fills with the sound of squirting, swallowing and gagging.";
				StomachSemenUp (the semen volume of belly + 1) / 2;
				StomachUp (the total fluid fill of belly - the semen volume of belly) / 2;
				if the urine volume of belly > 0, UrineTasteAddictUp 1;
				empty belly liquids;
			otherwise:
				say "The entire experience is deeply [unless the player is a nympho]shameful but there's no escaping that the feeling of having your asshole tongued so fervently is rather [end if]pleasurable.";
				passively stimulate asshole;
		otherwise:
			say "You keep your tongue in your mouth, hoping they won't notice.";
			compute lesson veto;
	otherwise:
		say "You hear what sounds like some kind of power drill spinning up behind you![line break][speech style of M]'Spread your asshole wide, slut!'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "Your cheeks go red as you spread your own [asshole] for the [one of]unknown device. In the end it's just as bad as you expect[or]drilldo[stopping]. A massive spinning dong is mercilessly forced into your [asshole], where it continues spinning, overwhelming your senses and threatening to break your mind.";
			now flesh-johnson is penetrating asshole;
			now the size of flesh-johnson is the openness of asshole + 2;
			if the size of flesh-johnson > 10, now the size of flesh-johnson is 10;
			ruin asshole times (a random number between 2 and 3);
			dislodge flesh-johnson;
			if delayed fainting is 0, say "By the time the stranger removes the drilldo, you are panting like a dog and can hardly think.";
		otherwise:
			say "You don't like the sound of that noise! Your hands go to your [asshole], protecting it out of fear.";
			compute lesson veto.


An ultimate-fetish-object is a kind of object. An ultimate-fetish-object has a number called happened.
Definition: an ultimate-fetish-object is eligible if the happened of it is 0.

ultimate-fetish-fertility is an ultimate-fetish-object.
Definition: ultimate-fetish-fertility is eligible if the happened of it is 0 and the player is female and the pregnancy of the player is 0 and pregnancy fetish > 0 and the number of worn chastity cage is 0 and face is not actually occupied.
To execute (U - ultimate-fetish-fertility) for (M - a monster):
	increase the happened of U by 1;
	say "[BigNameDesc of M] whispers in your ear.[line break][speech style of M]'Open wide, slut. We're going to give you a little something that's going to make you hyper-fertile for the next few minutes. There's no way you're leaving this room without a new bun in your belly.'[roman type][line break]Do you open your mouth?";
	if the player is consenting:
		say "As soon as you open your [LipDesc] you feel two fingers pushing some sort of pill into your mouth. You swallow it obediently. Within seconds you can feel a deep throbbing coming from your womb. There's no doubt about it, you're currently hyper-fertile. You can almost feel your ovaries screaming out for as much baby batter as possible.";
		now forcedFertility is true;
	otherwise:
		say "You [unless there is a worn ringagged clothing]keep your mouth closed and [end if]shake your head.[line break][variable custom style]That's not happening![roman type][line break]";
		compute lesson veto.

ultimate-fetish-milking is an ultimate-fetish-object.
Definition: ultimate-fetish-milking is eligible if the milk volume of breasts > 2 and face is not actually occupied.
To execute (U - ultimate-fetish-milking) for (M - a monster):
	increase the happened of U by 1;
	say "Someone grabs hold of your [MediumDesc of breasts] and begins pumping the [milk] out of them. You can hear it being collected into what sounds like a large metal bucket.[line break][speech style of M]'What sound does a cow make, bitch?'[roman type][line break]Do you moo like a cow?";
	if the player is bimbo consenting:
		say "[variable custom style]'Mooooo!'[roman type][line break]Your face goes red with shame as you make your best impression of a cow. ";
		strongHumiliate;
		say "Soon your udders are empty of [milk]. You hear some liquid being poured and then ";
		let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
		if ST is student and a random number between 1 and 2 is 1:
			say "[NameDesc of ST] whimpering and gulping as [he of ST] is made to drink your fresh warm breast milk.";
		otherwise:
			say "a cup brought to your [LipDesc].[line break][speech style of M]'Come on Bessie, drink up. It's nice and fresh, and good for your health.'[roman type][line break]Do you drink your own breast milk?";
			if the player is consenting:
				strongHumiliate;
				say "Your face turns even redder as you allow the unknown [man of M] to feed you your own breast milk.";
				StomachUp 2;
				progress quest of milk-drinking-quest;
			otherwise:
				say "You [unless there is a worn ringagged clothing]clamp your mouth shut and [end if]shake your head.[line break][variable custom style]That's just too weird![roman type][line break]";
				compute lesson veto;
	otherwise:
		say "You [unless there is a worn ringagged clothing]keep your mouth closed and [end if]shake your head.[line break][variable custom style]I'm not a cow![roman type][line break]";
		compute lesson veto;
	MilkDown the milk volume of breasts.




A time based rule (this is the ultimate diamond lesson rule):
	if the player is in DiamondLessonBlindfolded:
		if lesson-completed of ultimate-lesson > 0:
			let LST be the list of students in the location of the lesson-teacher of ultimate-lesson;
			decrease the lesson-completed of ultimate-lesson by 1;
			let E be a random eligible ultimate-fetish-object;
			repeat with M running through ultimate-lesson-actors:
				if delayed fainting is 0 and the lesson-completed of ultimate-lesson >= 0:
					if M is penetrating a body part or a random number between 1 and 6 < the lesson-completed of ultimate-lesson: [Earlier turns are more likely to just be sex]
						compute attack of M;
					otherwise if E is ultimate-fetish-object and a random number between 1 and 8 is 1:
						execute E for M;
						now E is a random eligible ultimate-fetish-object;
					otherwise if face is not actually occupied and a random number between 1 and 10 > 7:
						compute tongue demand of M;
					otherwise if asshole is not actually occupied and a random number between 1 and 4 > 1:
						if the semen volume of belly > 0 and (a random number between 1 and 3 is 1 or the number of entries in LST < 2): [If there are enough students, the human centipede is more fun]
							compute anal creampie expel demand of M;
						otherwise:
							compute anal torture of M;
					otherwise:
						compute attack of M;
		if the lesson-completed of ultimate-lesson <= 0:
			compute conclusion of ultimate-lesson;
		otherwise if the remainder after dividing the lesson-completed of ultimate-lesson by 2 is 1:
			say "[one of]Surviving[or]Enduring[purely at random] [one of][or]another round of [stopping]this [one of]crazy[or]mega[or]giant[as decreasingly likely outcomes] [one of]gangbang[or]orgy[at random] has left you feeling stronger!";
			StrengthUp 1.

To compute conclusion of (L - ultimate-lesson):
	repeat with A running through ultimate-lesson-actors:
		dislodge A;
		remove A from play;
	let M be the lesson-teacher of L;
	now M is unleashed;
	now the location of M is discovered;
	repeat with T running through monsters in DiamondLessonBlindfolded:
		now T is in School01;
	repeat with T running through things in DiamondLessonBlindfolded:
		unless T is backdrop, now T is in the location of M;
	let LST be the list of students in the location of M;
	if lesson-completed of ultimate-lesson < 0:
		say "[speech style of M]'Disappointing.'[roman type][line break][BigNameDesc of M] claps [his of M] hands and the strangers all get up and begin to leave, muttering insults at you as they go. Then, your blindfold[if the number of entries in LST > 0]s are[otherwise] is[end if] ripped off.[line break][speech style of M]'[if the number of entries in LST > 0]Despite your best efforts, thanks to [NameBimbo], you all fail. I imagine you might have lost at least one friend today[otherwise]The other teachers thought you were ready. Clearly they were mistaken. I think you would do well to increase your tolerances before you return here[end if], [NameBimbo].'[roman type][line break]After one final look of derision, [NameDesc of M] leaves the room.";
		repeat with ST running through LST:
			HappinessDown ST by 5;
			now ST is unleashed;
	otherwise:
		say "[speech style of M]'That's enough!'[roman type][line break][BigNameDesc of M] claps [his of M] hands and the strangers all get up and begin to leave, whispering lewd insults at you as they go. Then, your blindfold[if the number of entries in LST > 0]s are[otherwise] is[end if] finally removed.";
		if the number of entries in LST > 0:
			say "[speech style of M]'Congratulations, sluts, you did it. You've become the epitome of modern fuckpuppets. I couldn't be prouder. Now, come kiss my cock and claim your reward.'[roman type][line break]";
			repeat with ST running through LST:
				now ST is unleashed;
				say "[BigNameDesc of ST] crawls over and [one of]respectfully[or]sloppily[or]happily[in random order] kisses [NameDesc of M][']s [manly-penis].";
				promote ST;
				if the current-rank of ST is 6, now the student-print of ST is "golden gangbang goddess";
		otherwise:
			say "[speech style of M]'Congratulations, [NameBimbo], you did it. You've become the epitome of a modern fuckpuppet. I couldn't be prouder. Now, come kiss my cock and claim your reward.'[roman type][line break]";
		say "You cross the room and kneel at [NameDesc of M][']s feet, looking up at [his of M] gentle smile.[line break][speech style of M]'Go ahead.'[roman type][line break]You plant your lips on [his of M] cockhead[if the player is feeling dominant], but without breaking eye contact with [him of M] at any time[otherwise] with eyes submissively lowered[end if].";
		now armband is solid gold;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "golden gangbang goddess";
		say ClothingDesc of armband;
		if ex-princess is caged:
			say "[BigNameDesc of M] continues to speak.[line break][speech style of M]'Now that you've proven your loyalty to our cause, I've got something special to show you. Come with me!'[roman type][line break][BigNameDesc of M] leads you down to the other end of the school.";
			repeat with N running through monsters in the location of the player:
				now N is in the location of ex-princess;
			reveal the school dungeon;
			teleport to the location of ex-princess;
			now the stance of the player is 0;
			say MonsterDesc of ex-princess;
			say "[BigNameDesc of M] leans against the cell's metal bars.[speech style of M]'This is the [ShortDesc of headmistress][']s favourite toy. And now that you're [if there is a student in the location of the player]all gold-star students[otherwise]a gold-star student[end if], [he of headmistress] has given you permission to play with [him of ex-princess] too. Just try not to break [him of ex-princess].'[roman type][line break]And with that, [NameDesc of M] leaves you behind.";
			compute mandatory room leaving of M.


Volume - STUDENTS

Part - AMICABLE STUDENTS


Book - Rosie

student-rosie is a amicable student.

The text-shortcut of student-rosie is "stro".

Figure of rosie is the file "NPCs/School/Student/student1.png".

To decide which figure-name is the monster-image of (M - student-rosie):
	decide on figure of rosie.

To say MonsterDesc of (M - student-rosie):
	say "This skinny brunette [if lady fetish is 2]is wearing[otherwise]has pert C-cup breasts pushed seductively together by[end if] a red front-tie crop top that is so skimpy it looks more like a handkerchief than a piece of clothing. [big his of M] matching red microshorts are similarly tiny[if the current-rank of M is 1], meaning that overall a lot of [his of M] skin is showing[otherwise]and are both unbuttoned and unzipped, making [his of M] overall appearance rather overtly sexual[end if].".

The max-rank of student-rosie is 2.

To update name of (M - student-rosie):
	if the current-rank of M is 1:
		now the student-name of M is "Rose";
		now the student-print of M is "friendly farmgirl";
	otherwise:
		now the student-name of M is "Rosie";
		now the student-print of M is "farmyard fuckdoll".

To decide which number is the starting difficulty of (M - student-rosie):
	decide on 8 + the current-rank of M.[She's farm tough!]

To say StoryAnswer of (M - student-rosie):
	say "[speech style of M]'I'm nothin['] but an honest, hard-workin['] farmer's [if lady fetish is 2]son[otherwise]daughter[end if]. Daddy's been strugglin['] to sell crops cuz everyone is goin['] to the shop that opened up down the road last spring. He's trying hard, but the lady that runs the shop wears skimpy clothes n['] flirts with all the customers, and I know the only way to save our farm is lettin['] the customers know I can make [']em horny too! All I need to do is overcome my shyness n['] learn everythin['] I can, then all them customers are gonna come runnin['] back. I know the best slut school in all of Bimbacia won't let me down!'[roman type][line break]".

To say AdviceAnswer of (M - student-rosie):
	say "[speech style of M]'Just do as you're told! I ain't never disobeyed a word a teacher said an['] it never hurt me none!'[roman type][line break]".

To compute teaching of (M - student-rosie):
	say "[speech style of M]'I'm here to learn, not sell my daddy's hard won farmin['] secrets!'[roman type][line break]".

Book - Tiana

student-tiana is a amicable student.

The text-shortcut of student-tiana is "stti".

Figure of tiana is the file "NPCs/School/Student/student2.png".

To decide which figure-name is the monster-image of (M - student-tiana):
	decide on figure of tiana.

To say MonsterDesc of (M - student-tiana):
	say "This chubby brunette has [if the largeness of breasts > 10]large[otherwise]massive[end if] J-cup breasts which are threatening to burst out of [his of M] plain white bra. [big his of M] red blouse [if the current-rank of M is 2]has a few top buttons undone allowing you to see most of this glorious shiny cleavage[otherwise]and is completely unbuttoned and pulled away, leaving all of [his of M] shiny cleavage on full display[end if]. [big his of M] babydoll pigtails and smiling red lips give [him of M] a friendly, non-threatening demeanour.".

Definition: student-tiana is fetish appropriate:
	if lady fetish is 2, decide no;
	decide yes.

The min-rank of student-tiana is 2.
The max-rank of student-tiana is 3.
The current-rank of student-tiana is 2.

To update name of (M - student-tiana):
	if the current-rank of M is 2:
		now the student-name of M is "Tiana";
		now the student-print of M is "buxom babe";
	otherwise:
		now the student-name of M is "Titania";
		now the student-print of M is "titanic titted tart".

To say StoryAnswer of (M - student-tiana):
	say "[speech style of M]'I first came here because my boobs were tiny and while I wanted a boob-job, I knew I would feel self-conscious once I got my new puppies. Slut School is helping me to feel braver and braver each day, meaning I feel daring enough to show off more and more of these massive puppies!'[roman type][line break]".

To say AdviceAnswer of (M - student-tiana):
	say "[speech style of M]'[one of]It's really hard to get around on your knees when you have tits as big as these puppies. Try to stay on your feet!'[or]You don't always have to wear a bra that fits. Sometimes it only matters that you're close enough.'[at random][roman type][line break]".


Book - Minnie

student-minnie is a amicable student.

The text-shortcut of student-minnie is "stmn".

Figure of minnie is the file "NPCs/School/Student/student23.png".

To decide which figure-name is the monster-image of (M - student-minnie):
	decide on figure of minnie.

To say MonsterDesc of (M - student-minnie):
	say "This tall leggy blonde is wearing, well, [he of M] might as well be wearing nothing at all! [big his of M] nipples are covered by tiny purple sequins pasties shaped like hearts and similar red hearts [if the current-rank of M is 3 and lady fetish is 2]barely cover his tiny [sissy-penis] and balls[otherwise if lady fetish is 2]don't even cover his crotch properly, leaving [his of M] tiny balls completely visible[otherwise if the current-rank of M is 3]barely cover her pussy[otherwise]don't even cover [his of M] pussy properly, obscuring her clit but leaving her labia fully visible[end if]. [big he of M] has sexy 3 inch red stiletto heels, a pierced belly, and a big friendly smile on [his of M] face. [big he of M] looks extremely comfortable with [his of M] striking appearance - from [his of M] posture and gait [if the current-rank of M is 3]you're almost concerned [he of M] has completely forgotten what [he of M][']s wearing[otherwise]it's very clear that [he of M] absolutely loves looking like this[end if]!".

The min-rank of student-minnie is 3.
The current-rank of student-minnie is 3.
The max-rank of student-minnie is 6.

To update name of (M - student-minnie):
	if the current-rank of M is 3:
		now the student-name of M is "Minnie";
	otherwise:
		now the student-name of M is "Mimi";
	now the student-print of M is "minimalist".

To say StoryAnswer of (M - student-minnie):
	say "[speech style of M]'Isn't it great here? You can be your true self without being weighed down by the rules of [']normal decent society[']. Once I found out they were not only happy with how I want to dress but also wanted to help me become even braver, I knew I wanted to stay here forever!'[roman type][line break]".

To say EscapeAnswer of (M - student-minnie):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's some cool tables and bowls that look like smart people could use them to turn stuff into other stuff! Does that make any sense?'[otherwise]A little birdie told me that what's further inside the school really helps you keep your head screwed on, but I don't really know what that means, to be honest.'[end if][roman type][line break]".

To say AdviceAnswer of (M - student-minnie):
	say "[speech style of M]'Embrace your inner exhibitionist and enjoy yourself!'[roman type][line break]".

To compute teaching of (M - student-minnie):
	say "[speech style of M]'Feeling comfortable in your own skin isn't something you need to be taught, it's just that you need to *unlearn* the idea that people should wear clothes!'[roman type][line break]".



Book - Christi Lynn

student-christi is a amicable student.

The text-shortcut of student-christi is "stch".

Figure of christi is the file "NPCs/School/Student/student31.jpg".

To decide which figure-name is the monster-image of (M - student-christi):
	decide on figure of christi.

To say MonsterDesc of (M - student-christi):
	say "This [sissy-girl]-next-door-looking blonde is wearing nothing [if lady fetish is 2]aside from a brightly coloured chastity cage[otherwise]at all[end if]. [big he of M] seems to be finding it absolutely hilarious that a thick, voluminous creampie is currently oozing out of [if lady fetish is 2]his recently-fucked asshole[otherwise]her shaved recently-fucked pussy[end if].".

The min-rank of student-christi is 5.
The current-rank of student-christi is 5.
The max-rank of student-christi is 6.
The student-name of student-christi is "Christi Lynn". Understand "Christi" as student-christi.
The student-print of student-christi is "creampie craver".


To say StoryAnswer of (M - student-christi):
	say "[speech style of M]'When I first came here, I had a crippling fear of getting [semen] [if bukkake fetish is 1]on me or [end if]in me. But look at me now! I can't get enough of this warm sticky feeling! In fact, I should go find a teacher to give me another helping before this one runs out. The hot tub tends to be the best place to [']accidentally['] bump into one...'[roman type][line break]".

To say EscapeAnswer of (M - student-christi):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Lots more sex, which means lots more creampies for you and me!!! Just be sure to share, okay?'[end if][roman type][line break]".

To say AdviceAnswer of (M - student-christi):
	say "[speech style of M]'The more you do something here, the more you'll grow to LOVE IT MORE THAN ANYTHING!!!'[roman type][line break]".

To compute teaching of (M - student-christi):
	say "[speech style of M]'If you want to keep cum inside you for as long as possible, [if pregnancy fetish is 1]perhaps to maximise your chances of getting pregnant, [end if]make sure to put some kind of toy inside you! If you're too loose and it's just instantly falling out, try doing it on your knees instead. And then put some panties over the top to keep it in.'[roman type][line break]".



Part - DITZY STUDENTS


Book - Stacey

student-stacey is a ditzy student.

The text-shortcut of student-stacey is "stst".

Figure of stacey is the file "NPCs/School/Student/student17.png".

To decide which figure-name is the monster-image of (M - student-stacey):
	decide on figure of stacey.

To say MonsterDesc of (M - student-stacey):
	say "This sexy [sissy-girl] has a wide-eyed doll-like face with overdone whorish makeup and long wavy platinum blonde hair that curls at the bottom where it reaches [his of M] butt. [big he of M] is wearing a denim crop top on [his of M] top half and frilly pink briefs over [his of M] bubble butt. [big he of M] has a rather vacant expression[if the current-rank of M > 1] and can't stop putting a finger or two in between [his of M] puffed out lips[end if][if artificial enhancements fetish is 1]. [big he of M] has square fake-nails on each finger, completing the 'artificial bimbo' look[end if].".

The max-rank of student-stacey is 3.

To update name of (M - student-stacey):
	if the current-rank of M is 1:
		now the student-name of M is "Stacey";
		now the student-print of M is "sexy simpleton";
	otherwise:
		if the current-rank of M is 2, now the student-name of M is "Starr";
		otherwise now the student-name of M is "Starburst";
		now the student-print of M is "stupid slut".

To say StoryAnswer of (M - student-stacey):
	say "[speech style of M]'My sugar daddy told me I need to go back to school to get smarterer. So I came here! They'll help me think good, right?'[roman type][line break]".

To say WhoAnswer of (M - student-stacey):
	say "[big he of M] checks [his of M] armband.[line break][speech style of M]'Oh yeah I remember now, it's [student-name of M]! *giggle*'[roman type][line break]".

To say WhereAnswer of (M - student-stacey):
	say "[speech style of M]'[if the rank of the player <= 1]We're back at school. This is where dumb girls like us end up!'[otherwise]Ooh, there are ranks? I just thought these arm-thingies were to help us remember our names!'[end if][roman type][line break]".

To say AdviceAnswer of (M - an student-stacey):
	say "[speech style of M]'[if the current-rank of M is 1]I've heard a rumour that the smarterest girls let guys stick it up their butt. But I'm a bit scared to try...'[otherwise]When you suck on a [manly-penis], if you do it for long enough then some [tasty] juice comes out! And the more of that you drink, the more smarterer you get! So I try to get as much of it as possible.'[end if][roman type][line break]".



Book - Bree

student-bree is a ditzy student.

The text-shortcut of student-bree is "stbr".

Figure of bree is the file "NPCs/School/Student/student24.png".

To decide which figure-name is the monster-image of (M - student-bree):
	decide on figure of bree.

To say MonsterDesc of (M - student-bree):
	say "This very well-tanned [man of M] looks very fake. [big his of M] long bleach blonde hair frames a fully made-up face with long fake eye-lashes and full, pouty dicksucking lips[if artificial enhancements fetish is 1] that have almost certainly had some cosmetic enhancement to become quite so thick and pillowy[end if]. [if the current-rank of M > 2][big his of M][otherwise][big he of M] looks slightly shy about the fact that [his of M][end if] [if lady fetish < 2]huge D cup boobs are completely bare, the heavily bronzed skin rendering [his of M] nipples almost completely camouflaged. [big his of M] only item of clothing is a[otherwise]bright yellow chastity cage is peeking out of the[end if] very skimpy pink thongkini covering [his of M] loins, which is decorated with a few lines of pearly beads, one of which has the large pearl letters 'S', 'E', 'X' and 'Y' hanging from it. [big his of M] face seems permanently fixed into a sexy pout, regardless of how [he of M] actually feels inside.".

The min-rank of student-bree is 3.
The current-rank of student-bree is 4.
The max-rank of student-bree is 5.

To update name of (M - student-bree):
	if the current-rank of M is 3:
		now the student-name of M is "Brenda";
	otherwise if the current-rank of M is 4:
		now the student-name of M is "Bree";
	otherwise:
		now the student-name of M is "Brandy";
	now the student-print of M is "blonde bimbo".

To say FirstResponse of (M - student-bree):
	say "[speech style of M]'Hello there, darling.'[roman type][line break]".

To say RepeatResponse of (M - student-bree):
	say "[speech style of M]'Hello again, darling.'[roman type][line break]".

To say WhoAnswer of (M - student-bree):
	say "[speech style of M]'My name's [student-name of M], darling.'[roman type][line break]".

To say WhereAnswer of (M - student-bree):
	say "[speech style of M]'[if the rank of the player <= 1]This is [slut school], darling, welcome!'[otherwise]Oh darling, can't you tell what gets all the praise and glory around these parts?'[end if][roman type][line break]".

To say EscapeAnswer of (M - student-bree):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Oh darling, there are so many [manly-penis]s to suck! And so little time!'[otherwise]Oh darling, I bet there are even more [manly-penis]s! And even bigger ones too!'[end if][roman type][line break]".

To say AdviceAnswer of (M - student-bree):
	say "[speech style of M]'Darling, you need to [if breasts are lewdly exposed]get those big ol['] titties of yours some more attention! And get a few more [manly-penis]s up in between them...'[otherwise if the largeness of breasts > 3]get your tits out! Why would anyone pay attention to the likes of you while my perfect bazookas are on display and yours aren't?'[otherwise if lady fetish is 2]take your shirt off! Guys love cumming on your tits, even if they aren't big!'[otherwise]get a real rack! Why would anyone pay attention to the likes of you while my perfect bazookas are on display and you don't even have any?'[end if][roman type][line break]".

To compute teaching of (M - student-bree):
	say "[speech style of M]'Oh darling, I'm as dumb as a doormat. The only thing I can teach is how to be air-headed!'[roman type][line break]".

To say StoryAnswer of (M - student-bree):
	say "[speech style of M]'Oh darling, how long do you have? My story begins with my first [manly-penis], it was Brian from maths class, [if TG fetish > 0]or wait, was *I* Brian? And then there was that thing involving that witch... and a curse... my memory is going all fuzzy... huh? What were we talking about?'[roman type][line break][otherwise]and as soon as I got my lips around that thick, juicy shaft of his I was completely addicted, oh [NameBimbo] darling it was just so incredibly dreamy, you have no idea, and the cum... oh the cum! Ahhhh...'[roman type][line break][BigNameDesc of M] seems to drift off into a daydream.[end if]".


Book - Pebbles

student-pebbles is a ditzy student.

The text-shortcut of student-pebbles is "stpe".

Figure of pebbles is the file "NPCs/School/Student/student29.jpg".

To decide which figure-name is the monster-image of (M - student-pebbles):
	decide on figure of pebbles.

To say MonsterDesc of (M - student-pebbles):
	say "This chubby brunette [man of M] has [if lady fetish is 2]a black chastity cage peeking out below his matching [otherwise][his of M] big sagging tits hanging over a[end if] tight black underbust corset. The only other things [he of M]'s wearing are a pink collar and pigtail scrunchies. [if the current-rank of M > 4][big he of M] seems to keep [his of M] tongue out of [his of M] mouth at all times, and keep [his of M] hands in a submissive [']puppy paw['] pose[otherwise]Every now and then [he of M] seems to suddenly remember [he of M][']s supposed to be acting like a puppy, and lolls [his of M] tongue out of [his of M] mouth, panting like a happy dog[end if].".

The min-rank of student-pebbles is 4.
The current-rank of student-pebbles is 5.
The max-rank of student-pebbles is 6.

To update name of (M - student-pebbles):
	now the student-name of M is "Pebbles";
	if weight gain fetish is 1, now the student-print of M is "chubby puppy";
	otherwise now the student-print of M is "obedient petgirl".

To say FirstResponse of (M - student-pebbles):
	say "[speech style of M]'Woof! Oooh! New human!'[roman type][line break]".

To say RepeatResponse of (M - student-pebbles):
	say "[speech style of M]'Woof! Woof! Hello again, human!'[roman type][line break]".

To say WhoAnswer of (M - student-pebbles):
	say "[speech style of M]'Uh... Oh no, I think I've forgotten again! I try not to talk like a human too much, because that makes me forget things. Woof!'[roman type][line break]".

To say WhereAnswer of (M - student-pebbles):
	say "[speech style of M]'[if the rank of the player <= 1]This is [slut school], darling, welcome!'[otherwise]Oh darling, can't you tell what gets all the praise and glory around these parts?'[end if][roman type][line break]".

To say EscapeAnswer of (M - student-pebbles):
	say "[speech style of M]'This is my territory! It's my job to protect it from intruders and make my humans happen. Rawr!'[roman type][line break]".

To say AdviceAnswer of (M - student-pebbles):
	say "[speech style of M]'Brains are bad, don't use your brain! Woof! Speaking is bad. Thoughts are bad. I speak like a dog to help not think hard. Arf!'[roman type][line break]".

To compute teaching of (M - student-pebbles):
	say "[speech style of M]'You can't teach an old dog something something. Arf!'[roman type][line break]".

To say StoryAnswer of (M - student-pebbles):
	say "[BigNameDesc of M][']s eyes go dark and sullen for a moment.[line break][speech style of M]'I was a bad person, and I gave my dog too much food. I was an awful owner. So now I'm being taught to think from the dog's perspective[if weight gain fetish is 1], and I'm made to eat as much food as I can manage[end if]. To become a good girl. A good girl... Who's a good girl? Am I a good girl? Woof woof!'[roman type][line break]".




Part - INNOCENT STUDENTS


Book - Winnie

student-winnie is a innocent student.

The text-shortcut of student-winnie is "stwi".

Figure of winnie is the file "NPCs/School/Student/student8.png".

To decide which figure-name is the monster-image of (M - student-winnie):
	decide on figure of winnie.

To say MonsterDesc of (M - student-winnie):
	say "This middle aged [man of M] is wearing denim daisy dukes and a short T-shirt that reads 'Whore In Training' in black letters. She looks [if the current-rank of M is 1]a little out of her comfort zone but still calm and collected[otherwise]a little bit anxious[end if].".

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


Book - Austin

student-austin is a innocent student.

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
	say "[speech style of M]'[if the rank of the player <= 1]This is a place to learn how to be less of a prude. That's why I've been sent here anyway.'[otherwise]Some of the other [sissy-girls] were saying you can't get to the top without sucking some [manly-penis]s. I'm hoping it doesn't come to that...'[end if][roman type][line break]".


Book - Nell

student-nell is a innocent student.


The text-shortcut of student-nell is "stnl".

Figure of nell is the file "NPCs/School/Student/student33a.jpg".
Figure of nellie is the file "NPCs/School/Student/student33b.jpg".
Figure of narcissa is the file "NPCs/School/Student/student33c.jpg".

To decide which figure-name is the monster-image of (M - student-nell):
	if the current-rank of M is 3, decide on figure of nell;
	if the current-rank of M is 4, decide on figure of nellie;
	decide on figure of narcissa.

To say MonsterDesc of (M - student-nell):
	say "This tall brunette is wearing [if the current-rank of M is 3]a black and pink one-piece negligee that covers very little skin, and the bra section is cut so low that [his of M] nipples would be slightly on display if [he of M] wasn't shyly covering them with [his of M] hands. [big he of M] doesn't seem ready to expose even a bit of [his of M] areolae to the world[otherwise if the current-rank of M is 4]nothing but a short red skirt and a fishnet top. [big he of M] still doesn't quite seem particularly comfortable in something so revealing, and so is still walking around with [his of M] hands over [his of M] chest, to prevent [his of M] nipples from being on display[otherwise]tall clear platform 'stripper' heels, sexy lace black briefs and a very sheer flimsy white halter-neck top. [big his of M] hands are by [his of M] side - it seems [he of M] has finally found the sexy outfit that leaves [his of M] feeling comfortable enough to not cover [his of M] nipples with [his of M] hands. In fact, [he of M] now looks rather proud[end if].".

The current-rank of student-nell is 3.
The max-rank of student-nell is 5.

To update name of (M - student-nell):
	if the current-rank of M is 3:
		now the student-name of M is "Nell";
		now the student-print of M is "nervous neighbour";
	otherwise if the current-rank of M is 4:
		now the student-print of M is "naughty girl-next-door";
		now the student-name of M is "Nellie";
	otherwise:
		now the student-print of M is "nasty girl-next-door";
		now the student-name of M is "Narcissa".

To say StoryAnswer of (M - student-nell):
	say "[speech style of M]'My neighbour and best friend is such a tool... [he of shopkeeper] only ever sees me as [']one of the guys['], just because I'm cool and act like a tomboy. But... I love [him of shopkeeper], and to capture [his of shopkeeper] attention and prove that I can be [his of shopkeeper] woman, I need to learn how to act and dress like the slutty girls do.'[roman type][line break]".

To say EscapeAnswer of (M - student-nell):
	say "[speech style of M]'I don't know. The rumour about the secret sex dungeon can't be true, surely?'[roman type][line break]".

To say AdviceAnswer of (M - student-nell):
	say "[speech style of M]'I really don't. This is not a normal day for me[if the current-rank of M is 5]! I really don't know if I have what it takes to make it through the final lesson[end if]...'[roman type][line break]".

To compute teaching of (M - student-nell):
	say "[speech style of M]'Not unless you need to be taught how to stay still and let ten guys cum all over your face. That's apparently the only thing I've managed to do correctly recently.'[roman type][line break]".



Book - Calamity

student-calamity is a innocent student.

Definition: student-calamity is fetish appropriate if bukkake fetish is 1.

The text-shortcut of student-calamity is "stcl".

Figure of calamity is the file "NPCs/School/Student/student30.jpg".

To decide which figure-name is the monster-image of (M - student-calamity):
	decide on figure of calamity.

To say MonsterDesc of (M - student-calamity):
	say "This busty blonde is covered from head to toe in a decent number of cum-shots. [big his of M] grimaced facial expression suggests that [he of M] can't really believe [he of M]'s allowed this to happen.".

The current-rank of student-calamity is 5.
The max-rank of student-calamity is 6.
The student-print of student-calamity is "cum canvas".
The student-name of student-calamity is "Calamity".

To say EscapeAnswer of (M - student-calamity):
	say "[speech style of M]'I've heard rumours there's some kind of secret sinister dungeon, where they keep rebels? To be honest, I think wanting to find out if that's true is the only thing that stopped me from quitting a long time ago.'[roman type][line break]".

To say AdviceAnswer of (M - student-calamity):
	say "[speech style of M]'I really don't. This is not a normal day for me[if the current-rank of M is 5]! I really don't know if I have what it takes to make it through the final lesson[end if]...'[roman type][line break]".

To compute teaching of (M - student-calamity):
	say "[speech style of M]'Not unless you need to be taught how to stay still and let ten guys cum all over your face. That's apparently the only thing I've managed to do correctly recently.'[roman type][line break]".


Part - NASTY STUDENTS

Book - Abbi

student-abbi is a nasty student.

The text-shortcut of student-abbi is "stab".

Figure of abbi is the file "NPCs/School/Student/student11.png".

To decide which figure-name is the monster-image of (M - student-abbi):
	decide on figure of abbi.

To say MonsterDesc of (M - student-abbi):
	say "This larger woman has light brown hair and is wearing a skimpy sexy schoolgirl outfit with matching tartan miniskirt and tie. [big his of M] giant J-cup breasts hang down in front of her like giant udders, her [if the current-rank of M > 2]sheer [end if]black top lewdly exposing 80% of [his of M] titty meat and hardly supporting the rest. [big he of M] doesn't look happy.".

The min-rank of student-abbi is 2.
The max-rank of student-abbi is 3.
The current-rank of student-abbi is 2.

Definition: student-abbi is fetish appropriate if lady fetish < 2.

To update name of (M - student-abbi):
	if the current-rank of M is 2:
		now the student-name of M is "Abriana";
		if weight gain fetish is 1, now the student-print of M is "chubby cowgirl";
		otherwise now the student-print of M is "curvy cowgirl";
	otherwise:
		now the student-name of M is "Abbi";
		if weight gain fetish is 1, now the student-print of M is "gluttonous moocow";
		otherwise now the student-print of M is "massive moocow".

To say FirstResponse of (M - student-abbi):
	say "[speech style of M]'Fuck off.'[roman type][line break]".

To say RepeatResponse of (M - student-abbi):
	say "[speech style of M]'What the fuck do you want?'[roman type][line break]".

To say StoryAnswer of (M - student-abbi):
	say "[speech style of M]'I made a bet with my boyfriend and lost, so I had to come here. I think you can tell what fetish he has.'[roman type][line break]".

To say WhereAnswer of (M - student-abbi):
	say "[speech style of M]'[if the rank of the player <= 1]Are you literally braindead?'[otherwise]Someone as stupid as you is going to have to guzzle a LOT of cum to make it anywhere in here.'[end if][roman type][line break]".



Book - Katya

student-katya is a nasty student.
[Katya is a real bitch from rank 1 - 3 and then suddenly turns into a submissive doll at rank 4.]
[TODO: her ruby promotion scene can involve her breaking from brat into Stepford wife]

Definition: student-katya is unfriendly rather than friendly if it is not pacified and the current-rank of it < 4.

The text-shortcut of student-katya is "stka".

Figure of katherine is the file "NPCs/School/Student/student13a.png".
Figure of kat is the file "NPCs/School/Student/student13b.png".
Figure of katya is the file "NPCs/School/Student/student13c.png".
Figure of kitty is the file "NPCs/School/Student/student13d.jpg".
Figure of cuntwarmer is the file "NPCs/School/Student/student13e.png".

To decide which figure-name is the monster-image of (M - student-katya):
	if the current-rank of M is 1:
		decide on figure of katherine;
	otherwise if the current-rank of M is 2:
		decide on figure of kat;
	otherwise if the current-rank of M is 3:
		decide on figure of katya;
	otherwise if the current-rank of M is 4:
		decide on figure of kitty;
	otherwise:
		decide on figure of cuntwarmer.

To say MonsterDesc of (M - student-katya):
	if lady fetish is 2:
		say "This platinum blonde man has the perfect sissy body shape[if the current-rank of M > 2 and artificial enhancements fetish is 1] including visibly silicone-enhanced asscheeks and a flawless nose job[end if], and he seems very comfortable in his own skin. [if the current-rank of M < 4]His face doesn't match [his of M] fuckdoll body though - he looks rather rebellious and level-headed, not the vacant sex-addled look you might expect[otherwise]His face now displays a much more vacant expression - one of submission and humility[end if]. [if the current-rank of M is 1]A white schoolgirl blouse clings to his svelte upper torso and his pink tartan miniskirt is so short you can see a peek of his skimpy panties when you're on your knees. He stands impeccably balanced on his tall black stiletto heels as if he was born in them[otherwise if the current-rank of M is 2]His long-sleeved white leather jacket is fully unbuttoned, exposing his tartan patterned bra. His tiny white microshorts hug his figure so tightly they almost look like they're painted on[otherwise if the current-rank of M is 3]He's wearing nothing except a pair of purple low-rise silk briefs and matching half-cup bra which leaves most of his body on display[otherwise if the current-rank of M is 4]He[']s [one of]now [or][stopping]wearing a sheer pink negligee over his svelte chest, so see-through it covers nothing. It matches his skimpy g-string which is so tiny that even his tiny [sissy-penis] is in danger of popping out when he isn't using his hands to hold it in. Through the negligee you can see that his nipples have been covered by crosses of black type that read 'FUCK ME!' in big white letters[otherwise]He is completely naked, aside from a tiny purple chastity cage, and has a completely vacant expression - it looks like he[']s struggling to think clearly[end if].";
	otherwise:
		say "This platinum blonde woman has the perfect bimbo body shape[if the current-rank of M > 2 and artificial enhancements fetish is 1] including visibly silicone-enhanced fuckballs and a flawless nose job[end if], and she seems very comfortable in her own skin. [if the current-rank of M < 4]Her face doesn't match her fuckdoll body though - she looks rather rebellious and level-headed, not the vacant sex-addled look you might expect[otherwise]Her face now displays a much more vacant expression - one of submission and humility[end if]. [if the current-rank of M is 1]A white schoolgirl blouse tightly stretches over her seemingly spherical C-cup tits, and her pink tartan miniskirt is so short you can see a peek of her skimpy panties when you're on your knees. She stands impeccably balanced on her tall black stiletto heels as if she was born in them[otherwise if the current-rank of M is 2]Her long-sleeved white leather jacket is fully unbuttoned, exposing her tartan patterned bra and round C-cup fuckballs. Her tiny white microshorts hug her figure so tightly they almost look like they're painted on[otherwise if the current-rank of M is 3]She[']s wearing nothing except a pair of purple low-rise silk briefs and matching half-cup bra which leaves most of her D-cup titty flesh on display[otherwise if the current-rank of M is 4]She[']s [one of]now [or][stopping]wearing a sheer pink negligee over her D-cup tits which is so see-through it covers nothing. It matches her skimpy g-string which is so tiny you can spy the edges of her pussy when she isn't covering it with [his of M] hands. Through the negligee you can see that her nipples have been covered by crosses of black type that read 'FUCK ME!' in big white letters[otherwise]She is completely naked and has a completely vacant expression - it looks like she[']s struggling to think clearly[end if].".

The max-rank of student-katya is 6.

To update name of (M - student-katya):
	if the current-rank of M is 1:
		now the student-name of M is "Katherine";
		now the student-print of M is "defiant diva";
	otherwise if the current-rank of M is 2:
		now the student-name of M is "Kat";
		now the student-print of M is "smug sister";
	otherwise if the current-rank of M is 3:
		now the student-name of M is "Katya";
		now the student-print of M is "contemptuous cunt";
	otherwise if the current-rank of M is 4:
		now the student-name of M is "Kitty";
		now the student-print of M is "domesticated doll";
		now the text-shortcut of M is "stki";
	otherwise:
		now the student-name of M is "Cuntwarmer";
		now the student-print of M is "brainless bimbo";
		now the text-shortcut of M is "stcu";
	if the current-rank of M < 4, now the text-shortcut of M is "stka".

[Once katya is "domesticated," she no longer tries to bully you]
To compute student perception of (M - student-katya):
	if the current-rank of M < 4:
		compute appearance assessment of M;
	otherwise:
		say "[big he of M] makes a face like [he of M][']s not happy with you, but then it seems like [his of M] new training gets the better of [him of M] and [he of M] looks at the ground submissively instead.";

To say FirstResponse of (M - student-katya):
	if lady fetish is 2:
		say "[if the current-rank of M < 4][big he of M] looks at you with pure disgust in [his of M] eyes.[line break][speech style of M]'Do I look like I want to talk to you?'[roman type][line break][otherwise if the current-rank of M is 4][big he of M] crosses [his of M] legs and curtseys politely.[line break][speech style of M]'Thank you for gracing me with your presence. Would you like me to present my clitty for inspection?'[roman type][line break]Before you can reply [he of M] has lifted up [his of M] microskirt and is pushing up [his of M] chastity cage with both hands.[line break][speech style of M]'My job is to keep my ass hot and ready at all times. [big please] watch me as I check its lubrication.'[roman type][line break]He shoves two fingers into his ass and begins to pump, until it seems like [he of M] might have forgotten you're even there![otherwise][line break][speech style of M]'Ooh, a friend! [big please], do you know where I can find more cock? I feel so empty and sad when there's no cock inside me!'[roman type][line break][end if]";
	otherwise:
		say "[if the current-rank of M < 4][big he of M] looks at you with pure disgust in [his of M] eyes.[line break][speech style of M]'Do I look like I want to talk to you?'[roman type][line break][otherwise if the current-rank of M is 4][big he of M] crosses [his of M] legs and curtseys politely.[line break][speech style of M]'Thank you for gracing me with your presence. Would you like me to present my [cunt] for inspection?'[roman type][line break]Before you can reply [he of M] has lifted [his of M] microskirt and is spreading [his of M] shaved pussy with both hands.[line break][speech style of M]'My job is to keep this hole hot and ready at all times. [big please] watch me as I check its lubrication.'[roman type][line break][big he of M] shoves two fingers inside [him of M]self and begins to pump, until it seems like [he of M] might have forgotten you're even there![otherwise][line break][speech style of M]'Ooh, a friend! [big please], do you know where I can find more cock? I feel so empty and sad when there's no cock inside me!'[roman type][line break][end if]".

To say WhoAnswer of (M - student-katya):
	say "[speech style of M]'[if the current-rank of M < 4]You are to address me as ['][student-name of M]['], should I allow you to talk to me,[otherwise][student-name of M]['] because the only important thing about me is my[end if] [if lady fetish is 2]asshole[otherwise][cunt][end if].'[roman type][line break]".

To say WhereAnswer of (M - student-katya):
	if the rank of the player is 1, say "[speech style of M]'[if the current-rank of M < 4]We're in a pathetic excuse for an institution that tries to turn people from dominant divas into worthless whimpering worms. But only if you're so weak that you can't resist their techniques[otherwise]It would take a very weird set of events for me to be a domesticated fuckdoll but for you to be rank one. How very unusual. Aika would be very interested to know how that happened. I, err, I mean, welcome to my favourite place, Slut School[end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]You've got to make it seem like you're falling for their tricks. But if you're not an idiot, you'll only be pretending[otherwise]Submit to the cock. Worship the cock. Serve the cock. And then if you're lucky, the school will reward you with more cock[end if].'[roman type][line break]".

To say EscapeAnswer of (M - student-katya):
	if the current-rank of M > the rank of the player, say "[speech style of M]'[if the current-rank of M < 4]Why would I discuss such things with a useless twerp like you?'[otherwise]There's loads of great new places where you can serve big yummy [manly-penis]. I can't wait until you can join me!'[end if][roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]I don't know yet, but I plan to be the first sane person here to find out[otherwise]I'm hoping there's even bigger and juicier [manly-penis]s to serve[end if].'[roman type][line break]".

To say AdviceAnswer of (M - student-katya):
	if lady fetish is 2, say "[speech style of M]'[if the current-rank of M < 4]Stay out of my way or you'll live to regret it[otherwise if the current-rank of M is 4]Open your eyes and realise that becoming a living breathing human cock sleeve is so much easier and more fulfilling than trying to think for yourself. And then do what I'm doing, and open your ass as well, so the next thick juicy [manly-penis] can impale you more speedily[otherwise]It's important to stay alive, because otherwise your ass won't be warm any more. And then men wouldn't be able to use it whenever they want. And that would be awful! Except it might mean more [manly-penis]s for me, I guess[end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]Stay out of my way or you'll live to regret it[otherwise if the current-rank of M is 4]Open your eyes and realise that becoming a living breathing human cock sleeve is so much easier and more fulfilling than trying to think for yourself. And then do what I'm doing, and open your [cunt] as well, so the next thick juicy [manly-penis] can impale you more speedily[otherwise]It's important to stay alive, because otherwise your [cunt] won't be warm any more. And then men wouldn't be able to use it whenever they want. And that would be awful! Except it might mean more [manly-penis]s for me, I guess[end if].'[roman type][line break]".

To say StoryAnswer of (M - student-katya):
	if lady fetish is 2, say "[speech style of M]'[if the current-rank of M < 4]My pathetic husband thought that just because I signed that pre-nup I would let him walk all over me. Imagine his disappointment when he found out I'd rather just spend his money and socialise at parties than waste all my days at home cooking and cleaning and sucking his gross dick! Have you ever SEEN a foreskin? It's disgusting. He thinks that by sending me here he can get me to 'learn my place' and become his little sissy wife and the perfect subservient fucktoy for him and his friends. But I'm going to use this as an opportunity to crush his spirit further - by proving I can have the body of a Goddess and the sex life of a horny spinster, but still wear the trousers in my marriage and order him around like the worthless dog he is[otherwise if the current-rank of M is 4]My husband sent me here to learn to how to be a proper fuckdoll for anyone who wishes to use me. I'm so lucky to be blessed with the privilege of serving his majestic cock whenever he desires. I must make sure to finger myself every few minutes to keep my pathetic asshole hot and wet at all times. Who knows when the next person will want to use me? A good cock sleeve must be permanently available for instant use[otherwise]My husband is the best! He must be coming to collect me soon. I can't wait until I can fill myself with his glorious [manly-penis], it's been so long! I'm hoping he'll bring his best friends so they can use me whenever they want, too! Ooh and maybe he'll take me to the factory he owns so I can serve the hundreds of cocks there whenever they go on break! It'll all be okay again once I'm stuffed to the brim with [manly-penis][end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]My pathetic husband thought that just because I'm as hot as a supermodel I would let him walk all over me. Imagine his disappointment when he found out I'd rather just spend his money and socialise at parties than waste all my days at home cooking and cleaning and sucking his tiny dick! He thinks that by sending me here he can get me to 'learn my place' and become his little housewife and the perfect little subservient fucktoy for him and his friends. But I'm going to use this as an opportunity to crush his spirit further - by proving I can have the body of a Goddess and the sex life of a horny spinster, but still wear the trousers in my marriage and order him around like the worthless dog he is[otherwise if the current-rank of M is 4]My husband sent me here to learn to how to be a proper fuckdoll for anyone who wishes to use me. I'm so lucky to be blessed with the privilege of serving his majestic cock whenever he desires. I must make sure to masturbate every few minutes to keep my pathetic [cunt] hot and wet at all times. Who knows when the next person will want to use me? A good cock sleeve must be permanently available for instant use[otherwise]My husband is the best! He must be coming to collect me soon. I can't wait until I can fill myself with his glorious [manly-penis], it's been so long! I'm hoping he'll bring his best friends so they can use me whenever they want, too! Ooh and maybe he'll take me to the factory he owns so I can serve the hundreds of cocks there whenever they go on break! It'll all be okay again once I'm stuffed to the brim with [manly-penis][end if].'[roman type][line break]".

To compute teaching of (M - student-katya):
	say "[speech style of M]'[if the current-rank of M < 4]I could, if I chose to associate with people this far beneath me[otherwise if the current-rank of M is 4]No, sorry. You have to learn who's in charge the hard way to truly understand your place[otherwise if lady fetish is 2]If you have a smaller penis than your partner, it's your duty to let him do whatever he wants with you. It's just the way of the world![otherwise]Let me teach you how to be a perfect cock-warmer. Step one: Have a [cunt]. Step two: Keep it full of [manly-penis] as much as possible. That's it, I've taught you all I know[end if].'[roman type][line break]".

To compute friendly drink of (M - student-katya):
	say "[speech style of M]'[if the current-rank of M < 4]Do I look like a fucking vending machine to you?'[otherwise]I'm sorry, but the only [tasty] thing I drink nowadays is dick juice. And if you want your own, you'll have to use those lips of yours to earn it yourself!'[end if][roman type][line break]".


Book - Darla

student-darla is a nasty student.

The text-shortcut of student-darla is "stda".

Figure of darla is the file "NPCs/School/Student/student14.png".

To decide which figure-name is the monster-image of (M - student-darla):
	decide on figure of darla.

To say MonsterDesc of (M - student-darla):
	say "This tall babe looks like the pinnacle of traditional western beauty. [big his of M] perfect skinny body is covered only by a lovely pink negligee with criss-crossing straps down the front which leave [if lady fetish is 2][his of M] toned belly on display, and the tiny bulge of his [sissy-penis] just shy of popping out[otherwise]most of [his of M] toned belly and C-cup breasts on show[end if]. [big he of M] is holding up [his of M] thick flowing locks of golden hair and looking at you with meanness in [his of M] eyes.".

The min-rank of student-darla is 2.
The max-rank of student-darla is 3.
The current-rank of student-darla is 2.

To update name of (M - student-darla):
	if the current-rank of M is 2:
		now the student-name of M is "Darla";
		now the student-print of M is "glamorous goddess";
	otherwise:
		now the student-name of M is "Darling";
		now the student-print of M is "dazzling diva".

To say StoryAnswer of (M - student-darla):
	say "[speech style of M]'I've come here to prove once and for all I am the perfect [if lady fetish is 2]woman, even if I have a penis. In fact, it's especially because I have a penis[otherwise]woman[end if]. I shall pass every test with flying colours and rise in the ranks faster than anyone ever has before[if the rank of the player < 4]. Whereas I imagine someone as pathetic as you will take quite some time - assuming you ever manage to rise the ranks at all[otherwise if the rank of the player > the current-rank of M]. Don't think I'll let you rub your rank in my face for long, you slutty bitch[end if]!'[roman type][line break]".


Book - Belinda

student-belinda is a nasty student.
student-belinda is in School14. [TODO: remove]

The text-shortcut of student-belinda is "stbe".

Figure of belinda is the file "NPCs/School/Student/student15a.png".
Figure of belle is the file "NPCs/School/Student/student15b.png".

To decide which figure-name is the monster-image of (M - student-belinda):
	if the current-rank of M is 1, decide on figure of belinda;
	otherwise decide on figure of belle.

To say MonsterDesc of (M - student-belinda):
	say "This skinny [man of M] has blonde pigtails and an unfriendly frown. [big he of M] is wearing a tight purple belly-exposing latex top with a cleavage window and purple latex pants[if the current-rank of M > 1]. [big he of M] has a tattoo that reads 'Daddy's Girl' on her left arm, and you could swear [his of M] top is a little more translucent than before[end if].".

The max-rank of student-belinda is 2.

To update name of (M - student-belinda):
	if the current-rank of M is 1:
		now the student-name of M is "Belinda";
		now the student-print of M is "rubber rebel";
	otherwise:
		now the student-name of M is "Belle";
		now the student-print of M is "lil monster".

To say StoryAnswer of (M - student-belinda):
	say "[speech style of M]'My boyfriend wants me to call him 'Daddy' [if the current-rank of M is 1]but I'm not too sure. Apparently this place is going to convince me it's fun to act like a bratty [sissy-girl]. We'll see...'[otherwise]and I'm training to be his bratty babygirl. I think I've got the attitude for this role already, hah!'[end if][roman type][line break]".


Book - Hiroko

student-hiroko is a nasty student.

The text-shortcut of student-hiroko is "sthi".

Figure of hiroko is the file "NPCs/School/Student/student25.png".

To decide which figure-name is the monster-image of (M - student-hiroko):
	decide on figure of hiroko.

To say MonsterDesc of (M - student-hiroko):
	say "This beautiful Asian [man of M] is wearing nothing but an outfit made out of thin black straps that cover absolutely nothing[if lady fetish is 2], not even the metal chastity cage between [his of M] legs[otherwise] but [his of M] pussy - [his of M] breasts are on full display[end if]. [big he of M] looks at you with unconcealed disgust.".

The current-rank of student-hiroko is 4.
The max-rank of student-hiroko is 6.

To update name of (M - student-hiroko):
	if the current-rank of M is 4:
		now the student-name of M is "Hiroko";
		now the student-print of M is "heavenly hostess";
	otherwise:
		now the student-name of M is "Hostess-sama";
		now the student-print of M is "heavenly harlot".

To say WhoAnswer of (M - student-hiroko):
	say "[speech style of M]'I'm the Queen Bee of these parts, bitch. Ugly worms like you aren't going to get very far while there are people like me around.'[roman type][line break]".

To say WhereAnswer of (M - student-hiroko):
	say "[speech style of M]'[if the rank of the player <= 1]A place where ugly bitches like you get turned into cute girls like me.'[otherwise]It's simple, you get promoted by being the hottest, most attractive woman here. Which means that you have no chance, haha.'[end if][roman type][line break]".

To say EscapeAnswer of (M - student-hiroko):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's a photo of you underneath the words [']NEVER GONNA MAKE IT HERE['] that we like to laugh at as we walk past!'[otherwise]I've heard there's a photo of me on the wall that people like to look at for inspiration.'[end if][roman type][line break]".

To say StoryAnswer of (M - student-hiroko):
	say "[speech style of M]'There's nobody out there who can look as perfect as me. I've come here to prove that [if the current-rank of M > 3]nobody can worship a [manly-penis] like I can[otherwise]compared to me you are all disgusting sluts with no class[end if].'[roman type][line break]".

To say AdviceAnswer of (M - student-hiroko):
	say "[speech style of M]'Give up while you still have a shred of dignity remaining. It won't last long.'[roman type][line break]".

To compute teaching of (M - student-hiroko):
	say "[speech style of M]'You can't teach looks. You're always going to be ugly, too bad.'[roman type][line break]".




Part - TRYHARD STUDENTS


Book - Misty

student-misty is a tryhard student.

The text-shortcut of student-misty is "stmi".

Figure of misty is the file "NPCs/School/Student/student4.png".

To decide which figure-name is the monster-image of (M - student-misty):
	decide on figure of misty.

To say MonsterDesc of (M - student-misty):
	if lady fetish is 2, say "This slim brunette is wearing a tiny white cotton vest and matching skirt that are both extremely thin and have been torn so they are now hardly large enough to be called clothes. [if the current-rank of M is 2][big his of M] genitals are almost visible under the fragile bottoms[otherwise if the current-rank of M is 3]He has poured a bit of water onto both items, meaning they have gone rather see-through, and you can clearly make out his cream-coloured chastity cage[otherwise]He is constantly re-soaking both items from [his of M] bottle of water, to make sure [his of M] clothes are extremely sheer and [his of M] naughty bits completely visible at all times[end if].";
	otherwise say "This slim brunette is wearing a tiny white cotton vest and matching skirt that are both extremely thin and have been torn so they are now hardly large enough to be called clothes. [if the current-rank of M is 2][big his of M] small A-cup breasts are almost visible under the fragile top[otherwise if the current-rank of M is 3][big he of M] has poured a bit of water onto both items, meaning they have gone rather see-through, and you can clearly make out [his of M] nipples[otherwise][big he of M] is constantly re-soaking both items from [his of M] bottle of water, to make sure [his of M] clothes are extremely sheer and [his of M] naughty bits completely visible at all times[end if].".

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


Book - Rain

student-rain is a tryhard student.

The text-shortcut of student-rain is "stra".

Figure of rain is the file "NPCs/School/Student/student26.png".

To decide which figure-name is the monster-image of (M - student-rain):
	decide on figure of rain.

To say MonsterDesc of (M - student-rain):
	if lady fetish is 2, say "This very short, petite sissy can't be older than 19. All he's wearing is a flimsy sheer gown made of very thin beige fabric. [if the current-rank of M is 3]Thanks to the very translucent nature of the item, his puffy nipples and lavender-coloured chastity cage are very visible[otherwise]His puffy nipples are very visible through the fabric and it is purposefully parted above his belly button, leaving [his of M] lavender-coloured chastity cage on full display[end if]. His facial expression is one of confidence and determination[if the current-rank of M >= 5]. His ass squelches loudly as he moves, suggesting it might have been very well used, and recently[end if].";
	otherwise say "This very short, petite woman can't be older than 19. All she's wearing is a flimsy sheer gown made of very thin beige fabric. [if the current-rank of M is 3]Thanks to the very translucent nature of the item, her small boobs and cute innie pussy are very visible[otherwise]Her small boobs are very visible through the fabric and it is purposefully parted above her belly button, to leave her pussy fully exposed[end if]. Her facial expression is one of confidence and determination[if the current-rank of M >= 5]. Her pussy squelches loudly as she moves, suggesting it might have been very well used, and recently[end if].".

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
	say "[speech style of M]'More people who you can [if lady fetish is 2]bend over for[otherwise if the current-rank of M > 3]spread your cunt for[otherwise]show off your cunt to[end if], of course!'[roman type][line break]".

To compute teaching of (M - student-rain):
	say "[speech style of M]'[if lady fetish < 2]This is a cunt. [end if]This is a butthole. This is a mouth. [if the current-rank of M > 4]They're the only important things about people like me and you[otherwise]It's important that people like you and me get very used to using them for their intended purposes[end if].'[roman type][line break]".


Book - Ferrari

student-ferrari is a tryhard student.

The text-shortcut of student-ferrari is "stfr".

Figure of ferrari is the file "NPCs/School/Student/student32.jpg".

To decide which figure-name is the monster-image of (M - student-ferrari):
	decide on figure of ferrari.

To say MonsterDesc of (M - student-ferrari):
	say "This short, petite [man of M] has luscious locks of perfect pitch-black hair which complement [his of M] arm-length black latex gloves and thigh-high black latex stockings. [if lady fetish is 2]He is wearing a custom black chastity cage with neon pink trim, which is completely visible through his super-skimpy[otherwise]Her A-cup breasts and shaved innie pussy are fully exposed through super-skimpy[end if] black crotchless latex panties and matching cupless bra, which are both decorated with pink bows. A matching black latex choker with a pink bow sits around [his of M] neck. [big his of M] facial expression is one of confidence and determination[if the current-rank of M <= 4]. [big he of M] is attempting to hold a sexy, provocative pose with one hand on her hip, but keeps adjusting [him of M]self, clearly uncertain if it looks right[end if].".

The min-rank of student-ferrari is 4.
The current-rank of student-ferrari is 5.
The max-rank of student-ferrari is 6.
The student-name of student-ferrari is "Ferrari".
The student-print of student-ferrari is "fetish fuckdoll".

To say StoryAnswer of (M - student-ferrari):
	say "[speech style of M]'I originally came here to prove to my curvy best friend that [if lady fetish is 2]sissies[otherwise]petite girls[end if] can get all the boys['] attention if they know how to act and dress. But now... I just feel like I can't leave until I know I'm the BEST fucktoy who's ever lived. So just make sure you don't get in my way.'[roman type][line break]".

To say WhereAnswer of (M - student-ferrari):
	say "[speech style of M]'Just stop worrying about whether other [sissy-girls] are judging you, and focus on what the BOYS will want you to look like.'[roman type][line break]".

To say EscapeAnswer of (M - student-ferrari):
	say "[speech style of M]'[if the current-rank of M < 6]I've heard that once you join the circle of trust, there's some incredible secrets you'll be told[otherwise]It's a disappointment really. Just some dumb prisoner princess who's of no use to me and my quest to be the best fuckdoll there ever was[end if].'[roman type][line break]".

To compute teaching of (M - student-ferrari):
	say "[speech style of M]'Wearing exposing, fetishy clothes is way more sexy than just being butt-naked. Although, that's still pretty sexy.'[roman type][line break]".




School Stuff ends here.
