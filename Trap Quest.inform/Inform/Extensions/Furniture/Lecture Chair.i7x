Lecture Chair by Furniture begins here.

A lecture chair is a kind of furniture. A lecture chair is not portable. The printed name of lecture chair is "[TQlink of item described]lecture chair[TQxlink of item described][verb-desc of item described]". 1 lecture chair is in Hotel24. A lecture chair has a number called charge. The text-shortcut of a lecture chair is "lec".

A lecture chair has a truth state called schoolgirl-scene-1. A lecture chair has a truth state called schoolgirl-scene-2.

To say ExamineDesc of (C - a lecture chair):
	say "A school-style chair with desk. Looks like it's bolted to the floor of the lecture hall.".

Figure of lecture chair is the file "Env/Hotel/lecturechair1.png".

To decide which figure-name is the examine-image of (C - a lecture chair):
	decide on figure of lecture chair.

To compute furniture resting on (C - a lecture chair):
	allocate 6 seconds;
	say "You sit down in a chair, and from seemingly nowhere are suddenly joined by a large group of women. Their business attire is somewhat at odds with their still obviously impressive figures. You're still trying to figure out where they came from when a woman enters wearing a smart white blouse and nothing but sheer black suspenders and stockings on her lower half. You suppose she must be the teacher.";
	if diaper quest is 0 and the class of the player is schoolgirl:
		if schoolgirl-scene-1 of C is false and bukkake fetish is 1 and the number of worn blue scrunchies is 1 and the player is not getting lucky:
			say "[second custom style]'Hello everyone and welcome to this facial taking class! I see you're well-dressed for the event.'[roman type][line break]When you try to move your hands, you find that your wrists have been bolted down onto your lecture desk with strong metal cuffs![line break][variable custom style]What the hell?! Where did they come from?![paragraph break][second custom style]'As a member of the Slutty Schoolgirl Cosplay Society, it's important to learn to become accustomed to the feeling of having your face and hair painted with countless thick, hot ropes of cum.'[roman type][line break]Again, seemingly from nowhere, three [men of male-m] with large, hard [manly-penis]s advance towards each desk. The other women sitting at the lecture chairs seem completely comfortable with this progression of events, and smile at the men that now surround them.[line break][second custom style]'Let's give thanks to all our volunteers for donating their time and semen to this most important of lessons.'[roman type][line break]There's a murmur of assent from the other seated women, as the standing [men of male-m] begin pumping their [manly-penis]s rapidly while holding them towards your faces.[paragraph break][if the semen addiction of the player < 7]There's barely time to object before ropes and ropes of [semen] are blasting[otherwise if the semen addiction of the player < 14]You close your eyes and hold your breath as ropes and ropes of [semen] blast[otherwise]You bite your lip with poorly hidden arousal as ropes and ropes of [semen] blast[end if] you in the face, almost gluing your eyes shut with their weight and volume!";
			cutshow Figure of Lecture 2 for C;
			AnnouncedSquirt semen on face by 25;
			say "Finally the [men of male-m][']s balls are all empty, and the teacher, the other students, these [']volunteers['], and your metal wrist bondage all disappear as quickly as they appeared. You're left alone on the lecture chair, feeling substantially more sticky and degraded.";
			now schoolgirl-scene-1 of C is true;
		otherwise if schoolgirl-scene-1 of C is false and the number of worn blue scrunchies is 1 and the player is not getting lucky:
			say "[second custom style]'Hello everyone and welcome to this cosplay class! I see you're well-dressed for the event.'[roman type][line break]When you try to move your hands, you find that your wrists have been bolted down onto your lecture desk with strong metal cuffs![line break][variable custom style]What the hell?! Where did they come from?![paragraph break][second custom style]'As a member of the Slutty Schoolgirl Cosplay Society, it's important to always be pushing ourselves to look as provocative and erotic as possible. At first we were thinking of giving you all pigtails, but then we realised that we could go one step further.'[roman type][line break]Strapped down by your wrists, there's nothing you can do to stop her taking your scrunchie, and replacing it with two helium baloons! This is humiliating enough... But then she shows you a mirror and you can see what is written on each - the left one says 'FUCK', and the right one says 'DOLL'![line break][variable custom style]Oh my god![roman type][line break]";
			let H be a random worn blue scrunchie;
			let HB be a random pair of helium balloons;
			silently transform H into HB;
			cutshow Figure of Lecture 3 for C;
			say "The woman and the other [']students['] dressed as slutty schoolgirls disappear as quickly as they appeared. You're left alone, feeling substantially more self-conscious about your appearance than before.";
			now schoolgirl-scene-1 of C is true;
		[otherwise if schoolgirl-scene-2 of C is false and (the number of worn blue scrunchies is 2 or there is a worn pigtail-scrunchie) and the player is not getting lucky:
			say "[second custom style]'Hello everyone and welcome to this cosplay class! I see you're well-dressed for the event.'[roman type][line break]When you try to move your hands, you find that your wrists have been bolted down onto your lecture desk with strong metal cuffs![line break][variable custom style]What the hell?! Where did they come from?![paragraph break][second custom style]'As a member of the Slutty Schoolgirl Cosplay Society, it's important to always be pushing ourselves to look as provocative and erotic as possible. At first we were thinking of giving you all pigtails, but then we realised that we could go one step further.'[roman type][line break]Strapped down by your wrists, there's nothing you can do to stop her taking your scrunchie, and replacing it with two helium baloons! This is humiliating enough... But then she shows you a mirror and you can see what is written on each - the left one says 'FUCK', and the right one says 'DOLL'![line break][variable custom style]Oh my god![roman type][line break]";
			let H be a random worn blue scrunchie;
			silently transform H into pair of helium balloons;
			say "The woman and the other [']students['] dressed as slutty schoolgirls disappear as quickly as they appeared. You're left alone, feeling substantially more self-conscious about your appearance than before.";
			now schoolgirl-scene-2 of C is true;]
		otherwise:
			cutshow Figure of Lecture 1 for C;
			say "[first custom style]'Hello everyone and welcome to this cram session. It seems like everyone is here, so we'll begin with a look at the previous year's exam paper...'[roman type][line break]It looks like you've somehow found yourself studying for some kind of mathematics exam. You don't really follow any of the complex stuff they're talking about, but you do feel a bit [smarter] for having heard it.";
			IntUp 1;
	otherwise if diaper quest is 1 and matron is undefeated and matron is not permanently banished and the times-met of matron > 0 and ((the class of the player is schoolgirl and the number of worn pink scrunchie is 0) or (the number of worn headgear is 0 and the number of scrunchies in Holding Pen is 0)):
		now matron is in the location of the player;
		interest matron;
		calm matron;
		say "Suddenly, before you have even realised what's happened, your arms have been bound to the back of the chair with rope! You swivel your head in shock to find [NameDesc of matron] standing there behind you, a cunning smile on [his of matron] face.[line break][speech style of matron]'It's time to get ready for school, [honey of matron]! And I have just the outfit to make sure that you're the perfect [']teacher[']s pet['].'[roman type][line break]";
		PinkWardrobeUnclash nursery smock;
		PinkWardrobeUnclash blue-massive-diaper;
		PinkWardrobeUnclash bunny socks;
		summon nursery smock cursed;
		now the quest of nursery smock is skill-quest;
		summon blue-massive-diaper cursed;
		now the quest of blue-massive-diaper is skill-quest;
		now blue-massive-diaper is audible squelches;
		summon bunny socks cursed;
		now bunny socks is bed wetting;
		now the quest of bunny socks is skill-quest;
		say "Twelve or so seconds of noisy clothes rustling later, and [NameDesc of matron] has you dressed quite differently than before! You have a humiliationg [blue-massive-diaper] that's being only partially covered by your outrageously embarrassing [nursery smock], and a childish [bunny socks] on your legs.[line break][variable custom style][if the player is able to speak]'Oh my god!'[otherwise]Oh my god![end if][roman type][line break]";
		cutshow Figure of Lecture 2 for matron;
		say "And then, to complete the look, [NameDesc of matron] busies [himself of matron] tying your hair into pigtails with beautiful pinky-purple scrunchies.[line break][speech style of matron]'One and... Two!'[roman type][line break]";
		repeat with P running through pink scrunchies:
			summon P cursed with quest;
		say "[speech style of matron]'Now you look perfect for going and learn and play all day!'[roman type][line break][BigNameDesc of matron] sings as [he of matron] unties your binds.";
	otherwise:
		let L be a random number between 1 and 3;
		if L is 1 and diaper quest is 0:
			cutshow Figure of Lecture 1 for C;
			say "[first custom style]'It seems like everyone is here, so we'll begin the development lecture.'[roman type][line break]The room lights dim and she starts her PowerPoint slide-show, launching into a detailed presentation. It looks like they're using the game to carry out internal training exercises. You sit quietly, wondering whether you're allowed to be here and a little worried about what might happen if someone notices you. The somewhat, er, [italic type]distracting?[roman type] teacher runs through slide after slide. The [one of]soft light of the projector[or]projector's soft light[or]projector[or]reflected light of the slides[at random] throws tantalising swatches of colour across the [one of]eye-catching curves of her chest[or]generous bust[or]creamy mounds[or]raspberry-tipped melons[at random], which move and bounce and jiggle as she [one of]paces back and forth[or]struts and wiggles[or]wriggles and poses as she lectures[at random], gesturing at the screen from time to time. When she finally finishes and the lights come back to normal, you feel you have a much better understanding of how the game is working in the background: you feel a bit [smarter]!";
			IntUp 1;
		otherwise if L < 3:
			cutshow Figure of Lecture 1 for C;
			say "[first custom style]'It seems like everyone is here, so we'll begin with a summary of the recent results...'[roman type][line break]It looks like they're using the game to hold a meeting about some kind of strange testing Nintendolls is doing. You don't totally follow it without knowing what the actual testing was but you do feel a bit [smarter] for having heard it.";
			IntUp 1;
		otherwise if alcohol fetish is 1 and face is not actually occupied:
			say "[second custom style]'Hello everyone and welcome to this cocktail tasting class! Today we'll be learning about the different spirits in my favourite cocktail - the Long Island Iced Tea!'[roman type][line break]Before you can object, the woman has approached you and started to force-feed you a cold brown fizzy cocktail from a high ball glass. Your lecture chair seems to have trapped you in it, so you're powerless to resist![line break][second custom style]'Guess how many different spirits a Long Island Iced Tea has in it? That's right, five!'[roman type][line break]You are forced to gulp down mouthful after mouthful of the strong drink.[line break][second custom style]'Vodka, tequila, light rum, triple sec, gin, and a splash of cola! That should get the party started!'[roman type][line break]Finally the glass is empty, and the woman disappears as quickly as she appeared. You're left alone, feeling substantially worse for wear.";
			StomachUp 1;
			increase alcohol level;
			increase alcohol level;
			increase alcohol level;
		otherwise if the player is diaper focused or diaper quest is 1 or the player is an adult baby or (there is a worn diaper and a random number between 1 and 2 is 1):
			say "[second custom style]'Oh good, it looks like the entire nursery is here.'[roman type][line break][if the delicateness of the player < 12][line break][first custom style][one of]Nursery[or]Oh crap, this one again[stopping]?![roman type][line break][end if][one of]Confused, you look around[or]You once again look around[stopping] and see that the lecture chairs around you, and your own, have transformed into small pink plastic stools with a floral pattern. The other women's business attire has disappeared, having been replaced with short and frilly pink gingham outfits. Each other woman is also wearing a big white patterned diaper, clearly visible under their far too short hems. They all look attentive and excited. Turning your eyes back to the lecturer, her outfit has also transformed while you were not looking; she is now wearing a long, modest yellow floral dress, that you can easily imagine a friendly, loving teacher wearing to teach little kids.[line break][second custom style]'Can anyone tell me what time it is?'[roman type][line break]The teacher's high voice chirps cheerfully throughout the room.[line break][second custom style]'Story time!!!'[roman type][line break]All the other girls chant in unison in weirdly high pitched voices.[line break]";
			say "[second custom style]'That's right. Today's story is called [']The little girl that couldn't[']. Once upon a time, there was a little girl who needed the potty.'[roman type][line break]As the teacher speaks, you can feel your [if diaper messing >= 3]bowels and [end if]bladder suddenly churning, desperate to go. You try to wave your hands[if the player is able to speak][run paragraph on] and interrupt her story to be asked to be excused, but you find yourself voiceless and unable to make any sound other than a little squeak! The[otherwise][run paragraph on], but the[end if] teacher just ignores you completely.[line break][second custom style]'She tried to get up to go to the potty, but her legs were too tired to get up.'[roman type][line break][if the delicateness of the player < 14]As she says the words, you feel your legs go numb. You appear to be completely unable to move them at all![otherwise]Now that she's said that, you realise how tired you do feel, and decide to stay put.[end if][line break][second custom style]'She thought she could hold it in until she could get help, but she had failed her potty training and went in her diaper in front of all of her friends.'[roman type][line break]The teacher looks you straight in the eyes as she speaks the last sentence.[line break][if the diaper addiction of the player < 14 and the humiliation of the player < 35000][line break][variable custom style]'Nooo...'[roman type][line break]is all you can say as[otherwise]You sigh quietly with pleasure as[end if] your body begins to go to the toilet all on its own. ";
			if there is a worn total protection soilable knickers and asshole is not actually occupied and diaper messing >= 3:
				if diaper messing is 3:
					say "You begin to groan as a flow of squishy mush squeezes its way out of your bottom, accompanied by your bladder releasing itself at full blast. Your diaper is filled rapidly and noisily at both ends. ";
					reset rectum after messing;
					now the bladder of the player is 0;
				otherwise:
					if rectum < 6, now rectum is 6;
					compute partial messing;
			otherwise:
				now delayed urination is 2;
				if the bladder of the player is 0, now the bladder of the player is 2;
				try urinating;
			say "The other [']students['] around you giggle and point, as you become the laughing stock of the nursery. ";
			if the player is not broken, say "[if the delicateness of the player < 5]You growl in frustration, and hold back tears.[otherwise if the delicateness of the player < 16]You can't help but burst into tears at such a bizarre and humiliating situation![otherwise]You can't help but giggle along with them - what a disgusting baby you are![end if]";
			if the delicateness of the player < 16, DelicateUp 2;
			obsceneHumiliate;
			say "Slowly, the other girls and the teacher begin to fade into nothing, leaving you alone[if there is a monster in the location of the player] with the [list of monsters in the location of the player][end if][if there is a worn total protection diaper and diaper messing is 3]. You look down at your nappy, expecting to see a large, bulging filthy undergarment, but it's completely clean! What the hell, did you imagine the whole thing?![otherwise] sitting in your bulging undergarment.[end if]";
			if there is a worn total protection soilable knickers and asshole is not actually occupied and diaper messing >= 3, RectumIncontinenceUp 2;
			otherwise BladderIncontinenceUp 2;
		otherwise:
			say "[second custom style]'Like, it looks like everyone's here, so let's like get this started or something. I know you all probably felt, like, upset that your bosses sent you on this development training but I think you'll, like, all have a lot of fun!'[roman type][line break]This feels sort of strange, and you can feel a mutinous air building among the other attendants.[line break][second custom style]'Okay so like, let's start!'[roman type][line break]The teacher pushes something on her remote, and suddenly the projected image switches to an array of swirling colours. The room suddenly goes quiet, and you feel your earlier worries easing. Yes, this... this is fine.[line break][second custom style]'Alright I can like, see I have your attention! You are like totally on this training because your boss thought you weren't being sensitive to the needs of his [manly-penis]! That's not right! But don't worry, just let your mind relax... Let this instructional video sink in and everything will be a-OK! Your eyes are heavy, you can feel the lids drooping down, but that's okay, just let your eyes relax as you settle deeper into the comfy chairs, deeper into the chairs, feeling more and more relaxed...'[roman type][line break]";
			say "Your eyes get really heavy and you feel your jaw drop open as you comply with her request to relax. Her voice is so soothing and it's so warm in here, you can feel all your troubles drifting away, just washing out of you, like the tide coming in, and out, in, and out, clearing out tired and bad thoughts, and bringing in fresh and good new thoughts. You don't need to worry what the new thoughts are, you just feel them settling in, settling deep into your mind, way down deep at the bottom of your mental landscape. You kind of register that the projector is now flashing up images of kneeling women, of women with their heads bowed down in front of men gazing sternly at them, pictures of women with their eyes properly lowered, and for some reason you feel a tingle of excitement thrill through you. But the patterns of spiralling colours are so pretty, just swirling and tumbling in intricate patterns, patterns that are just a little confusing and tiring to follow. You find it's much easier when you just kind of let the light show relax you; let the images wash straight through your eyes and simply soak into your waiting and eager brain. You might even have dozed off, there, for a while, even though somehow you feel your eyes were open the whole time. How weird is that? You aren't sure how much time has passed when the projector suddenly snaps off. You can't quite remember what even just happened, exactly. As the other students file out, you see they're shrugging off their jackets, stripping out of their constrictive business suits. They seem much happier, smiling like lots of the tension and grumpiness they walked in with has just been washed away. You meet some of their eyes, and they're much less scary and threatening now, like they've loosened up. Some of them even smile back at you, in a vaguely empty sort of way...";
			SexAddictUp 1;
			OralSexAddictUp 1;
	now the charge of C is 450.

Lecture Chair ends here.
