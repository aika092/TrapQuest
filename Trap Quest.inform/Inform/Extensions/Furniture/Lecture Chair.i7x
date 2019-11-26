Lecture Chair by Furniture begins here.


A lecture chair is a kind of furniture. A lecture chair is not portable. The printed name of lecture chair is "[TQlink of item described]lecture chair[TQxlink of item described][verb-desc of item described]". 1 lecture chair is in Hotel24. A lecture chair has a number called charge. The text-shortcut of a lecture chair is "lec".

To say ExamineDesc of (C - a lecture chair):
	say "A school-style chair with desk. Looks like it's bolted to the floor of the lecture hall.".

Figure of lecture chair is the file "Env/Hotel/lecturechair1.png".

To decide which figure-name is the examine-image of (C - a lecture chair):
	decide on figure of lecture chair.

To compute furniture resting on (C - a lecture chair):
	allocate 6 seconds;
	say "You sit down in a chair, and from seemingly nowhere are suddenly joined by a large group of women. Their business attire is somewhat at odds with their still obviously impressive figures. You're still trying to figure out where they came from when a woman enters wearing a smart white blouse and nothing but sheer black suspenders and stockings on her lower half. You suppose she must be the teacher.";
	let L be a random number between 1 and 3;
	if L is 1 and diaper quest is 0:
		cutshow Figure of Lecture 1 for C;
		say "[first custom style]'It seems like everyone is here, so we'll begin the development lecture.'[roman type][line break]The room lights dim and she starts her powerpoint slide-show, launching into a detailed presentation. It looks like they're using the game to carry out internal training exercises. You sit quietly, wondering whether you're allowed to be here and a little worried about what might happen if someone notices you. The somewhat, er, [italic type]distracting?[roman type] teacher runs through slide after slide. The [one of]soft light of the projector[or]projector's soft light[or]projector[or]reflected light of the slides[at random] throws tantalising swatches of colour across the [one of]eye-catching curves of her chest[or]generous bust[or]creamy mounds[or]raspberry-tipped melons[at random], which move and bounce and jiggle as she [one of]paces back and forth[or]struts and wiggles[or]wriggles and poses as she lectures[at random], gesturing at the screen from time to time. When she finally finishes and the lights come back to normal, you feel you have a much better understanding of how the game is working in the background: you feel a bit smarter!";
		IntUp 1;
	otherwise if L < 3:
		cutshow Figure of Lecture 1 for C;
		say "[first custom style]'It seems like everyone is here, so we'll begin with a summary of the recent results...'[roman type][line break]It looks like they're using the game to hold a meeting about some kind of strange testing Nintendolls is doing. You don't totally follow it without knowing what the actual testing was but you do feel a bit smarter for having heard it.";
		IntUp 1;
	otherwise if alcohol fetish is 1 and face is not actually occupied:
		say "[second custom style]'Hello everyone and welcome to this cocktail tasting class! Today we'll be learning about the different spirits in my favourite cocktail - the Long Island Iced Tea!'[roman type][line break]Before you can object, the woman has approached you and started to force-feed you a cold brown fizzy cocktail from a high ball glass. Your lecture chair seems to have trapped you in it, so you're powerless to resist![line break][second custom style]'Guess how many different spirits a Long Island Iced Tea has in it? That's right, five!'[roman type][line break]You are forced to gulp down mouthful after mouthful of the strong drink.[line break][second custom style]'Vodka, tequila, light rum, triple sec, gin, and a splash of cola! That should get the party started!'[roman type][line break]Finally the glass is empty, and the woman disappears as quickly as she appeared. You're left alone, feeling substantially worse for wear.";
		increase alcohol level;
		increase alcohol level;
		increase alcohol level;
	otherwise if the player is diaper focused or diaper quest is 1 or the player is an adult baby or (there is a worn diaper and a random number between 1 and 2 is 1):
		say "[second custom style]'Oh good, it looks like the entire nursery is here.'[roman type][line break][if the delicateness of the player < 12][line break][first custom style][one of]Nursery[or]Oh crap, this one again[stopping]?![roman type][line break][end if][one of]Confused, you look around[or]You once again look around[stopping] and see that the lecture chairs around you, and your own, have transformed into small pink plastic stools with a floral pattern. The other women's business attire has disappeared, having been replaced with short and frilly pink gingham outfits. Each other woman is also wearing a big white patterned diaper, clearly visible under their far too short hems. They all look attentive and excited. Turning your eyes back to the lecturer, her outfit has also transformed while you were not looking; she is now wearing a long, modest yellow floral dress, that you can easily imagine a friendly, loving teacher wearing to teach little kids.[line break][second custom style]'Can anyone tell me what time it is?'[roman type]  The teacher's high voice chirps cheerfully throughout the room.[line break][second custom style]'Story time!!!'[roman type]  All the other girls chant in unison in weirdly high pitched voices.[line break]";
		say "[second custom style]'That's right. Today's story is called [']The little girl that couldn't[']. Once upon a time, there was a little girl who needed the potty.'[roman type]  As the teacher speaks, you can feel your [if diaper messing >= 3]bowels and [end if]bladder suddenly churning, desperate to go. You try to wave your hands[if the player is able to speak][run paragraph on] and interrupt her story to be asked to be excused, but you find yourself voiceless and unable to make any sound other than a little squeak!  The[otherwise][run paragraph on], but the[end if] teacher just ignores you completely.[line break][second custom style]'She tried to get up to go to the potty, but her legs were too tired to get up.'[roman type]  [if the delicateness of the player < 14]As she says the words, you feel your legs go numb. You appear to be completely unable to move them at all![otherwise]Now that she's said that, you realise how tired you do feel, and decide to stay put.[end if][line break][second custom style]'She thought she could hold it in until she could get help, but she had failed her potty training and went in her diaper in front of all of her friends.'[roman type]  The teacher looks you straight in the eyes as she speaks the last sentence.[line break][if the diaper addiction of the player < 14 and the humiliation of the player < 35000][line break][variable custom style]'Nooo...'[roman type][line break]is all you can say as[otherwise]You sigh quietly with pleasure as[end if] your body begins to go to the toilet all on its own. ";
		if there is a worn total protection soilable knickers and asshole is not actually occupied and diaper messing >= 3:
			if diaper messing is 3:
				say "You begin to groan as a flow of squishy mush squeezes its way out of your bottom, accompanied by your bladder releasing itself at full blast. Your diaper is filled rapidly and noisily at both ends. ";
				reset rectum;
				now the bladder of the player is 0;
			otherwise:
				if rectum < 6, now rectum is 6;
				compute messing;
		otherwise:
			try urinating;
		say "The other [']students['] around you giggle and point, as you become the laughing stock of the nursery. ";
		if the humiliation of the player < 40000, say "[if the delicateness of the player < 5]You growl in frustration, and hold back tears.[otherwise if the delicateness of the player < 16]You can't help but burst into tears at such a bizarre and humiliating situation![otherwise]You can't help but giggle along with them - what a disgusting baby you are![end if]";
		if the delicateness of the player < 16, DelicateUp 2;
		humiliate 500;
		increase incontinence by 1;
		say "Slowly, the other girls and the teacher begin to fade into nothing, leaving you alone[if there is a monster in the location of the player] with the [list of monsters in the location of the player][end if][if there is a worn total protection diaper and diaper messing is 3]. You look down at your nappy, expecting to see a large, bulging filthy undergarment, but it's completely clean!  What the hell, did you imagine the whole thing?![otherwise] sitting in your soiled undergarment.[end if]";
	otherwise:
		say "[second custom style]'Like, it looks like everyone's here, so let's like get this started or something. I know you all probably felt, like, upset that your bosses sent you on this development training but I think you'll, like, all have a lot of fun!'[roman type] This feels sort of strange, and you can feel a mutinous air building among the other attendants. [line break][second custom style]'Okay so like, let's start!'[roman type][line break]The teacher pushes something on her remote, and suddenly the projected image switches to an array of swirling colours. The room suddenly goes quiet, and you feel your earlier worries easing. Yes, this... this is fine. [line break][second custom style]'Alright I can like, see I have your attention! You are like totally on this training because your boss thought you weren't being sensitive to the needs of his [manly-penis]! That's not right! But don't worry, just let your mind relax... Let this instructional video sink in and everything will be a-OK!  Your eyes are heavy, you can feel the lids drooping down, but that's okay, just let your eyes relax as you settle deeper into the comfy chairs, deeper into the chairs, feeling more and more relaxed...'[roman type][line break]";
		say "Your eyes get really heavy and you feel your jaw drop open as you comply with her request to relax. Her voice is so soothing and it's so warm in here, you can feel all your troubles drifting away, just washing out of you, like the tide coming in, and out, in, and out, clearing out tired and bad thoughts, and bringing in fresh and good new thoughts. You don't need to worry what the new thoughts are, you just feel them settling in, settling deep into your mind, way down deep at the bottom of your mental landscape. You kind of register that the projector is now flashing up images of kneeling women, of women with their heads bowed down in front of men gazing sternly at them, pictures of women with their eyes properly lowered, and for some reason you feel a tingle of excitement thrill through you. But the patterns of spiralling colours are so pretty, just swirling and tumbling in intricate patterns, patterns that are just a little confusing and tiring to follow. You find it's much easier when you just kind of let the light show relax you; let the images wash straight through your eyes and simply soak into your waiting and eager brain. You might even have dozed off, there, for a while, even though somehow you feel your eyes were open the whole time. How weird is that? You aren't sure how much time has passed when the projector suddenly snaps off. You can't quite remember what even just happened, exactly. As the other students file out, you see they're shrugging off their jackets, stripping out of their constrictive business suits. They seem much happier, smiling like lots of the tension and grumpiness they walked in with has just been washed away. You meet some of their eyes, and they're much less scary and threatening now, like they've loosened up. Some of them even smile back at you, in a vaguely empty sort of way...";
		SexAddictUp 1;
		SemenAddictUp 1;
		SemenTasteAddictUp 1;
		humiliate 500;
	now the charge of C is 450.


Lecture Chair ends here.

