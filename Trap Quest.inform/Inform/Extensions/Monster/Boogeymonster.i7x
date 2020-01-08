Boogeymonster by Monster begins here.

boogeymonster is a dungeon boss. boogeymonster is neuter. boogeymonster is caged. The leftover-type of boogeymonster is usually 107.

boogeymonster is in Dungeon36. Figure of boogeymonster is the file "NPCs/Bosses/boogeymonster1.png". The text-shortcut of boogeymonster is "boo". Understand "boogey" as boogeymonster.

To say ShortDesc of (M - boogeymonster):
	say "boogeymonster".

To say MediumDesc of (M - boogeymonster):
	say "boogeymonster[if M is caged] (caged)[end if]".

Definition: boogeymonster (called M) is dungeon dwelling:
	if diaper quest is 0, decide no;
	decide yes.

To decide which figure-name is the monster-image of (M - boogeymonster):
	decide on figure of boogeymonster.

To say MonsterDesc of (M - boogeymonster):
	say "This giant tentacle monster looks like something straight out of a nightmare[if M is caged]. Luckily it is currently stuck inside a giant cage above head height, so none of its tentacles can quite reach you[end if].";

To set up (M - boogeymonster):
	if M is alive: [We don't want to reset the boogeymonster if he's dead]
		reset M;
		now the monstersetup of M is 1;
		now the difficulty of M is 11;
		now the health of M is the maxhealth of M.

To decide which number is the girth of (M - boogeymonster):
	decide on 8.

This is the spawn initial boogeymonster rule:
	if debugmode > 1, say "Now summoning boogeymonster.";
	if diaper quest is 0:
		remove boogeymonster from play;
	otherwise:
		if boogeymonster is unleashed and boogeymonster is alive, summon boogeymonster in the dungeon.
The spawn initial boogeymonster rule is listed in the setting up dungeon monsters rules.

Definition: boogeymonster (called M) is concealment immune: [Can the monster ignore salves of concealment, butt slut, etc.]
	decide yes.

Definition: boogeymonster (called M) is able to remove cursed plugs: [Can the monster remove all butt plugs?]
	decide yes.

To say LeftoverDesc (N - 107):
	say "The corpse of boogeymonster lies on the ground. The back of its head is missing, and a huge bloody hole is all that remains of its brain.[line break]".

Part 1 - Perception

To compute perception of (M - boogeymonster):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed][one of], even though you're not completely sure if it has an intelligent mind behind its one giant blue eye.[or].[stopping][otherwise]![end if]";
	anger M;
	if M is unleashed:
		say "It does not look friendly. In fact, you can see some malice in its giant eye.";
	otherwise:
		say "It snarls angrily at its captivity.".

To say BecomesBoredFlav of (M - boogeymonster):
	say "[BigNameDesc of M] seems to lose interest in you for now.".


Part 2 - Motion, Seeking and Sleeping

To compute monstermotion of (M - boogeymonster):
	if M is unleashed:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		otherwise if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		MonsterStomp M.

To compute (M - boogeymonster) seeking (D - a direction):
	if M is unleashed, try M going D.

To compute sleep reduction of (M - boogeymonster):
	if M is asleep:
		decrease the sleep of M by seconds;
		if the M is awake:
			now the sleep of M is 0;
			if M is in the location of the player, say "[BigNameDesc of M] wakes up!".[Very slight deviation from the default.]


Part 3 - Boogeymonster Stomp

[To compute (M - a monster) stomping (N - a monster): Consider this a template!
	say "[BigNameDesc of M] kills the [N]!";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.]

Part 4 - Combat

Chapter 1 - Attack

The boogeymonster priority attack rules is a rulebook. The priority attack rules of boogeymonster is usually the boogeymonster priority attack rules.

This is the boogeymonster still caged rule:
	if current-monster is caged:
		say "[one of][CagedBoogeyMonsterFlav][or][or][or][in random order]";
		rule succeeds.
The boogeymonster still caged rule is listed first in the boogeymonster priority attack rules.

To say CagedBoogeyMonsterFlav:
	say "[one of][BigNameDesc of current-monster] angrily shakes the metal bars of its cage.[or][BigNameDesc of current-monster] paws at the floor of its cage with its tentacles, snarling with anger.[or][BigNameDesc of current-monster] emits a high pitch shriek, frustrated at its captive state.[or][BigNameDesc of current-monster] bangs at the bars of its cage. The sound of clanging metal rings through the room.[or][BigNameDesc of current-monster] throws itself at the bars of its cage. You try to ignore the noise.[in random order]".

This is the boogeymonster prioritises defeating others rule:
	if the number of undefeated awake monsters in the location of current-monster > 1: [1 is going to be the boogeymonster itself]
		MonsterStomp current-monster;
		rule succeeds.
The boogeymonster prioritises defeating others rule is listed last in the boogeymonster priority attack rules.

To compute the flying player taunting of (M - boogeymonster):
	say "[one of][BigNameDesc of M] clearly refuses to move from your location until you stop floating.[or][stopping]".

The latex punishment rule of boogeymonster is usually the no latex punishment rule.

To say LandingTaunt of (M - boogeymonster):
	say "[BigNameDesc of M] jitters with impatience.";
	humiliate 50.

To say StrikingSuccessFlav of (M - boogeymonster) on (B - a body part):
	say "[BigNameDesc of M] strikes your [TargetName of B] with a spiked tentacle!";
	BodyRuin 1. [The boogeymonster automatically does 1 damage, and 2 if he hits.]

To say StrikingFailureFlav of (M - boogeymonster) on (B - a body part):
	say "You try to dodge [NameDesc of M]'s tentacle, but it still manages to land a glancing blow! Ouch!";
	BodyRuin 1.

To compute striking attack of (M - boogeymonster):
	let B be a random body part;
	if B is a fuckhole, now B is hips;
	if B is hair, now B is breasts;
	if B is not hips and B is not breasts, now B is belly;
	if the accuracy roll of M > the dexterity of the player:
		say "[StrikingSuccessFlav of M on B]";
		compute M striking B;
	otherwise:
		say "[StrikingFailureFlav of M on B]".

To compute (M - a monster) attacking (C - a clothing):
	if C is displacable:
		say "[BigNameDesc of M] pulls the crotch of your [printed name of C] to the side!";
		displace C;
	otherwise:
		say "[BigNameDesc of M] rips off your [printed name of C]!";
		destroy C.

To compute (M - boogeymonster) attacking (C - a clothing):
	say "[BigNameDesc of M] tears off your [printed name of C]!";
	destroy C.

Chapter 2 - Nightmares

boogeymonster-nightmare is a kind of diaper punishment. The priority of boogeymonster-nightmare is 5.

Definition: boogeymonster-nightmare (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	decide yes.

To say NightmareStartFlav:
	say "[BigNameDesc of current-monster]'s tentacles loom over your body and then envelops it, shrouding you in darkness. Suddenly, you are surrounded by a blue light and you hear a voice in your head. [line break][first custom style]'I AM YOUR NIGHTMARE...'[roman type][line break]And then the ground disappears, and [one of]you are floating through nothingness... or are you just hovering still? It's hard to tell[or]once again you are sent through the darkness to another reality[stopping]. ";

Section - School Nightmare

boogeymonster-nightmare-school is boogeymonster-nightmare.

The priority of boogeymonster-nightmare-school is 3. [This is super harsh so doesn't ever happen first. It happens after all the other eligible ones have happened.]

Figure of boogeymonster school cutscene is the file "Special/Cutscene/cutscene-boogeymonster1.jpg".

To compute punishment of (P - boogeymonster-nightmare-school):
	now the priority of P is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and see you're at school! You look around and see all your old school-friends. Why are they grinning at you? Why are you at the front of the class?[line break][first custom style]'Are you SURE you don't need to go potty, [NameBimbo]?'[roman type][line break]Mrs Windsor, your old form tutor, sounds unnecessarily judgemental. You reply without thinking.[line break][variable custom style]'What? No, I don't need to go, why do you ask...'[roman type][line break]You look down at yourself and are shocked by what you see. You're wearing striped red and white stockings, a tiny white girly dress and a huge thick diaper. Your legs are duct-taped together, and the duct-tape is holding a magic wand against your crotch. You yelp as you realise you have lost your balance, and fall to the ground in front of your classmates. They can see everything. The magic wand begins to buzz and whirr, stimulating you powerfully through your padding.[line break]Your teacher interrupts your thoughts. [line break][first custom style]'What do you think are you are doing, you stupid child! Get that ridiculous machine off of yourself right now! This is not appropriate.'[roman type][line break][variable custom style]'Yes Ma'am,'[roman type][line break]you meekly reply and move your hands to yank at the tape around your legs. Suddenly you realise, your wrists are duct-taped to the ground! When did that happen?!";
	fullscreencutshow figure of boogeymonster school cutscene for M;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "The buzzing grows and you can feel an orgasm building.[line break][variable custom style]'Oh no, I can't stop it!'[roman type][line break]At that same moment, you feel another need grow within you, and within seconds your body is cramping, since you desperately need the loo.[line break][variable custom style]'Mrs Windsor please help me, I need the loo!'[line break][first custom style]'You liar, you just told me you don't need the potty!'[roman type][line break]She sounds very angry, and your whole class is laughing at you. It's at this moment that you lose control of your body, and audibly fill your nappy in front of everyone. Mrs. Windsor is chastising you but you don't even register the words as you now also start to cum, thrashing around on the ground as you [if diaper messing >= 3]mess[otherwise]wet[end if] yourself and cum at the same time. Your tongue sticks out of your mouth and your eyes roll into the back of your head as you continue to struggle on the ground like a worm[if diaper messing >= 3], not succeeding at anything except pushing against the warm mush appearing in the back of your diaper[end if].";
	say "Your classmates are all standing now, crowding around you as they laugh and tease you. Some even tickle you! From amidst the madness you hear your teacher's voice again. [line break][first custom style]'What a disgrace! If you really can't control yourself then I am not afraid to make you walk home like this as punishment. Do NOT orgasm in front of us again, [NameBimbo].'[roman type][line break]It doesn't matter what she says, you're already building towards your second peak. The tickling by the other students isn't helping, either: it just adds to the pleasure! You cum hard, wailing like a little girl as you do. [if diaper messing >= 3]You didn't even think it was possible, but your bottom is still pumping out poopies, your large diaper growing even bigger between your legs as your bowels continue to empty. [end if]Your body continues to climax and [if diaper messing >= 3]empty itself[otherwise]urinate[end if] over and over, until you close your eyes and put your hands over your ears, screaming and wishing you could just disappear.";
	let D be a random largish diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D;
	if rectum > 1, now rectum is 1;
	now the bladder of the player is 0;
	clean D;
	WaterEmpty D;
	UrineSoakUp D by the soak-limit of D;
	if diaper messing >= 3, MessSet D to 30;
	SexAddictUp 3;
	say "And then you do - or rather, the scene disappears. You are lying on your back in the [location of the player], but now wearing a [D]. It feels impossibly heavy, and you feel extremely fatigued. [BigNameDesc of M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	let N be a random alive unleashed gladiator;
	if N is nothing, now N is a random alive unleashed royal guard;
	regionally place M;
	distract M;
	if N is monster:
		now N is in the location of the player;
		now the sleep of N is 0;
		now the boredom of N is 0;
		now the health of N is the maxhealth of N - 2; [This way they won't change the player but will punish them in another way]
		say "There is, however, a [N].";
		if D is messed, compute diaper mess reaction of N;
		otherwise say DiaperReaction of N;
		if N is unfriendly:
			now N is interested;
			say "[big he of N] looks unfriendly...".

Section - Airplane Nightmare

boogeymonster-nightmare-airplane is boogeymonster-nightmare.

The priority of boogeymonster-nightmare-airplane is 4.

Figure of boogeymonster airplane cutscene is the file "Special/Cutscene/cutscene-boogeymonster2.jpg".

To compute punishment of (N - boogeymonster-nightmare-airplane):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and find yourself sitting in an airplane seat. Before you can even take a proper look at your surroundings, a voice comes over the tannoy. [line break][first custom style]'Good afternoon everyone, this is your pilot speaking. I hope you're enjoying our 14 hour non-stop flight to Sydney. Bad news I'm afraid - the toilet has just broken down! We've also just been warned there are terrible delays with the arrival gates at Sydney and we may be stuck on the runway for anywhere from six to eight hours once we arrive. But never fear, we have prepared for this and are deploying the emergency diapers as we speak. If you're such a little baby that you can't control your [if diaper messing >= 3]tum-tums[otherwise]pee-pee[end if], we recommend you follow our air hostess['] example and get comfy in one of our extra-thick Snuggies.'[roman type][line break]As soon as the pilot finishes speaking you feel your [if diaper messing >= 3]belly begin to rumble as a huge pressure builds in both your bladder and bowels[otherwise]bladder start to swell and swell until it is ready to burst[end if]. You squeak meekly as you look to the front of the plane where an air hostess has wheeled out a tray with a package stacked full of what looks like the largest, thickest diapers you have ever encountered. Her uniform would look normal if it wasn't for the fact that the skirt is ridiculously short and exposes pretty much the entirety of the giant nappy she's wearing underneath. Its bottom nearly reaches her knees, and it's forcing her thighs wide apart.";
	fullscreencutshow figure of boogeymonster airplane cutscene for M;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "Another angry [if diaper messing >= 3]growl from your tummy[otherwise]spasm from your bladder[end if] reminds you of your current predicament. You can't help it - you have to get up and make your way to the front of the aircraft, turning redder and redder as you see the judging stares of your fellow passengers. It seems to take a year for you to make it to the front of the cabin where you whisper as quietly as you can to the diapered hostess that you're going to have to take them up on their emergency solution.[line break][second custom style]'Uh-oh, this little [if the player is male and the bimbo of the player < 10]boy[otherwise]girl[end if] needs to go potty!'[roman type][line break]The air hostess announces in a very loud voice to the entire plane. Your face turns a beetroot shade of red. [line break][second custom style]'Well, well, well, I didn't think anyone would be such a pathetic baby that they wouldn't even be able to hold it in for a few minutes! Or maybe you just love the idea of wearing big thick diapers, huh?'[roman type][line break]You open your mouth to protest but nothing comes out. She's wearing a diaper herself! How can she say such mean things about you? The evil lady pushes a button and a giant changing table swings out, unfolding down in front of you.[line break][second custom style]'Hop on then, little one!'[roman type][line break]Now you get your voice back. [line break][variable custom style]'W-w-wait a minute, I can't put it on in front of all these strangers... Why is this thing out here?!'[roman type][line break][second custom style]'Well it's not like there's anywhere else it could fit, is there? And no of course you won't be putting it on in front of these strangers... *I* will be putting it on you in front of all these strangers. You don't have the proper training.'[roman type][paragraph break]Another loud desperate [if diaper messing >= 3]growl from your tummy[otherwise]gurgle from your bladder[end if] renders any reluctant reply you try to mumble inaudible. Before you know what has happened you are lying on the adult-sized changing table and your underwear is being pulled away, exposing your [genitals] to row upon row of silently judging passengers. It's so humiliating that you are actually relieved when the comfy cushioned nappy is taped up nice and snug around your bottom. Your thighs are now forced wide apart just like the air hostess's, but it's better than being naked.";
	say "You get up off the changing table and it swings away back into its compartment on one side wall. You begin to waddle your way back to your seat when that same shrill authoritative voice stops you.[line break][second custom style]'Where do you think you're going, little one?'[line break][variable custom style]'B... back to my seat...'[roman type][line break]you mumble submissively like a child who has been caught with their hand in the cookie jar.[line break][second custom style]'Oh no you don't. There's no way you can fit in a normal cabin seat now your legs are stuck so far apart. For safety regulations you need to sit in one of our specially designed seats.'[roman type][line break]She presses another button and a giant baby seat like you'd find in a car appears from behind a hidden panel at the front of the cabin next to the cockpit door, facing towards the rest of the plane.[line break][variable custom style]'What? No...'[roman type][line break]you mumble, but you are already being led to sit in this playfully patterned kiddie chair, where you are strapped in tight with a sturdy four-way seatbelt that fastens over your chest. You look up from the fastening in horror as you realise you are essentially left stuck fully on display facing all the other passengers, who are looking at you with pure disgust and disappointment. Without another word the air hostess leaves you, waddling down the aisle towards the back of the craft.";
	say "Moments later the inevitable begins. The floodgates open and the whole airplane fills with the sound of [if diaper messing >= 3]your bottom as your tummy reaches its limit of patience[otherwise]hissing as your bladder begins to go of its own accord, just as if you were a real baby[end if]. You cover your eyes in shame, unable to meet the judging gaze of any of the adults in front of you as your large nappy begins to bulge and expand even further, providing damning visible evidence of your accident.[line break][first custom style]'Honestly, how pathetic,'[roman type][line break]you hear one man in the front row mutter. You moan through your pacifier as you continue to fail to hold it in.[line break][variable custom style]Wait... pacifier?![roman type][line break]You notice for the first time that you are wearing a pretty yellow pacifier in your mouth. [line break][variable custom style]It must have been there all along, I guess?[roman type][line break]You struggle to remember what you were doing. Oh that's right, you were pissing [if diaper messing >= 3]and pooping [end if]your nappy in front of all the grown-ups, while sucking on your paci like a good baby. After what feels like a year you finally finish going. Your heavy sagging diaper sits beneath you like a large beanbag, bulging out in all directions. You feel the warmth emanating from your padding up into your bum cheeks and loins. It actually feels really comforting and soothing. You make a loud satisfied sigh as you squirm into a comfortable position in your baby seat and relax as you drift off to sleep.";
	let D be plain-massive-diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D;
	let P be a random yellow pacifier;
	unless P is worn:
		destroy P;
		repeat with B running through worn clothing penetrating face:
			destroy B;
		summon P cursed with silent quest;
	if rectum > 1, now rectum is 1;
	now the bladder of the player is 0;
	clean D;
	WaterEmpty D;
	UrineSoakUp D by the soak-limit of D;
	if diaper messing >= 4, MessSet D to 30;
	let F be a random floofy sissy baby dress;
	let B be a random bib;
	if a random number between 8 and 25 < the delicateness of the player:[dice roll to continue]
		say "[paragraph break]...[paragraph break]You open your eyes. You expect to find yourself back in the [location of the player]... but instead you're still in your baby seat in the airplane. [line break][second custom style]Maybe this is real life and the dungeon was a dream? [roman type][line break]Your thoughts are interrupted by an announcement from the hostess.[line break][second custom style]'Attention potty trained passengers, I'm happy to announce we have repaired our toilet in just ten minutes. Feel free to use it at any time. Of course, the one baby who couldn't hold in their [if diaper messing >= 3]poopies for 10 minutes cannot be trusted with it, we wouldn't want it to break again[otherwise]pee-pee for 10 minutes cannot be trusted to make it on time, so we'll be keeping them in diapers for the rest of the journey[end if]!' [roman type]A fresh wave of embarrassment washes over you after hearing this. [line break][variable custom style]I only needed to hold it for 10 minutes, but I went for the diapers right away. Maybe I do need these...[roman type][line break]Speaking of your diaper, you could really use a change, but you need to get the hostess to help you. Looking at the side of your seat, you see a big pink flight attendant call button, and push it without a second thought. You suddenly spit out your pacifier by accident, and this is the last straw - some uncontrollable emotional turbulence inside you makes you begin crying, to the annoyance of the majority of passengers in front of you, and the bemusement of the rest. Of course, you are too caught up in your emotions to notice or care about their reactions. By the time the hostess arrives, less than a minute after you started crying, your face and clothes are covered in tears and snot. It may have been less than a minute, but it felt like an eternity to you.";
		say "The hostess replaces your pacifier, and you can't believe how quickly it helps you focus and calm down.[line break][second custom style]'Is there anything else you need baby?'[roman type][line break]You shake your head. She already gave you your pacifier, [line break][second custom style]which was the whole reason I was crying, right? [roman type][line break]What else could you need?[line break]You are jolted by a hand groping your crotch - the hostess is giving you a diaper check! Once again, the hostess makes sure everyone in the plane hears her announcement.[line break][second custom style]'Looks like our baby here had a big accident!'[roman type][line break][if diaper messing >= 3]Of course, anyone that didn't hear or see your 'accident' could easily smell it[otherwise]It's doubtful anyone has failed to notice your 'accident'[end if], but hearing her declare it so openly still manages to make you shudder with shame.";
		say "The hostess lowers the changing table, unlocks the seatbelt and helps you out, carrying you over to the changing table with little effort. You put up no resistance and focus instead on sucking on your pacifier, drowning out the cries of disgust and laughter as your diaper is untaped. The hostess takes an agonizingly long time wiping you down, preparing not just one but [italic type]two[roman type] diapers for you to wear, and first powdering you before finally taping on the impossibly thick combination of diapers. However, she isn't done yet - before you can even try to get up, she begins undressing you, taking off your sweatpants and T-shirt, leaving you lying in front of the plane in nothing but your double diapers. You actually feel relief when she replaces your clothes with a white and yellow dress with pink frills and a bib, not realizing that your new dress doesn't even reach the waistband of your diapers.";
		say "After all this you are finally let down from the changing table. As the hostess goes to retract the changing table you get a sudden inspiration as to how you can get back at the nasty woman, and crawl over to her (as your diapers prohibit you from walking) and lift her skirt, planning to expose an inevitably used diaper to the onlookers. But instead you (and all the other passengers) see that she is wearing slim, sexy, black, lacy panties. [line break][second custom style]'No! Bad baby!' [roman type][line break]She yells as she slaps your hand away with ease and places you back on the changing table, only now facing down, with your legs dangling off the side.[line break][variable custom style]'I t-thought you weuh weah-wing diapies!'[roman type][line break]Your words sound all wrong as you yell through your pacifier, meaning your attention is on your own mouth and not on the hand that is raised for the first strike of many in a spanking session."; [Picture here?]
		say "Of course, your ignorance does not last long. A seemingly impossibly strong strike lands on your rear, your gigantic diapers somehow doing little to save you from the pain. You can already feel tears welling up in your eyes.[line break][second custom style]'Did you really think I needed those?'[roman type][line break]Another strike[line break][second custom style]'Not everyone is a pathetic baby like you!'[roman type][line break]Another strike[line break][second custom style]'In fact, I can't think of anyone more pathetic than you!'[roman type][line break]Another strike[line break][second custom style]'Do you know why I was wearing those?'[roman type][line break]Another strike[line break][second custom style]'We wanted to demonstrate how humiliating they were to everyone!'[roman type][line break]Another strike[line break][second custom style]'It was a warning, not the invitation you took it as!'[roman type][line break]Another strike[line break][second custom style]'I don't know what would be worse;'[roman type][line break]Another strike[line break][second custom style]'If you went up right away because you wanted this'[roman type][line break]Another strike[line break][second custom style]'Or if you really can't hold your [if diaper messing >= 3]poopies[otherwise]pee pee[end if] for even 5 minutes.'[roman type][line break]Another strike[line break][second custom style]'Who am I kidding, it's probably both!'[roman type][line break]Her tirade, and her spankings, continue for what seem like forever. By the time she finally finishes your eyes are almost certainly out of tears to drop, your face and bib completely covered in tears and snot, and your voice completely shot from your non-stop bawling. [line break][second custom style]'Are you going to be a good baby now?'[roman type][line break]You nod immediately - you never want to disobey her ever again.";
		say "Once again you are lowered from the changing table, which is at last retracted. However, instead of putting you back in your seat, the hostess presses yet another button and a high chair appears to the right hand side of it. She places you in the high chair, securing and locking straps matching those of the car-seat, and then locking the high chair's tray in place, completely trapping you inside. Even with the protection of two massive diapers and the extremely soft pink padding of the high chair, just sitting down causes pain to shoot through your poor, sore bottom, soothed only by a round of intense sucking on your pacifier. That is short-lived however, as the hostess removes your paci and plonks a large baby bottle filled with milk and a giant bowl of brown mush on your tray. As the other passengers are served steaks and alcohol, you are instructed to dig into your baby food with your bare hands and not to use the spoon left on the tray which is for 'bigger girls only'. As you finish drinking your milk a [if diaper messing >= 3]rumble in your tummy[otherwise]pang in your bladder[end if] tells you that you already need to go potty again. You almost call for your new Mommy but you stop yourself, thinking that this is the perfect opportunity to impress her by proving you don't need her help for everything! This is made all the easier, you realize, by the fact that you are [italic type]wearing[roman type] your potty![line break]";
		say "[variable custom style]'Look everyone, I'm going potty like a big [if the player is male and the bimbo of the player < 10]boy[otherwise]girl[end if]!'[roman type][line break]After proudly announcing your intentions, with a smile on your face you [if diaper messing >= 3]let out a very audible grunt, followed by a variety of unmentionable sounds, making it fully obvious what was going on inside your diapers, as if their rapid expansion did not already tell that story[otherwise]scrunch up your face, pushing your bladder as hard as you can, leading to a very loud hissing, making it certain everyone else on the plane knows what was happening in your diapers, although it would be hard to miss the deep yellow forming on the outside[end if]. When your bathroom break is over, you continue feeding yourself as if nothing had happened, that is until the mixed but universally intense reactions of your audience begin to register. [line break][variable custom style]Wait, why did I think that would make me look like a grown up?![roman type][line break]";
		say "Keeping your head down with shame, you busy yourself with finishing your meal and afterwards licking what you can off of your hands. You fail to notice the state of your bib, where almost a quarter of the food has ended up. You are then taken out of your seat by your Mommy, who replaces your pacifier and playfully pats your diapers, clearly having decided you do not need – or more likely, don't [i]deserve[/i] - a change. Instead, you are once again locked into the baby airplane seat. After securing you, the hostess make yet another announcement.[line break][second custom style]'Passengers, our in-flight entertainment will now begin, please put on your headphones if you would like to listen!'[roman type][line break]Behind you a movie begins to play, one about robots just released in theatres, probably selected by the airline due to its length. Most people put on their headphones to listen in. You too are given headphones (and no choice about whether to wear them), although what you were given to listen to is about as far removed from a complex R rated movie as possible. You are graced with soothing nursery rhymes, with various phrases spoken in your voice repeating throughout, though for some reason you struggle to pay attention to what is being said. To go along with the auditory entertainment you are given a tray filled with baby blocks (along with subtle threats about what will happen if you don't play with them), so you immediately go to town with them, smashing them around, and spelling whatever comes to mind. As you tire yourself out sucking your pacifier and playing with the blocks, you find yourself slowly dozing off with a blank smile on your face.";[picture of embarrassing phrase spelled out with baby blocks?]
		unless F is worn:
			repeat with X running through worn dresses:
				destroy X;
			repeat with X running through worn skirts:
				destroy X;
			summon F cursed with silent quest;
		unless B is worn, summon B cursed with silent quest;
		humiliate 1000;
		DiaperAddictUp 2;
		if diaper messing >= 3, now rectum is 10;
		now the bladder of the player is 10;
	say "You open your eyes. You are lying on your back in the [location of the player], but now wearing a [D][if F is worn], [F][end if][if B is worn], [printed name of B][end if] and [P]. The [ShortDesc of D] feels extremely heavy[if the player is bursting], you feel desperate for the toilet[end if], and you feel extremely fatigued. [BigNameDesc of M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	DiaperAddictUp 1.

Section - TV Nightmare

boogeymonster-nightmare-tv is boogeymonster-nightmare.

Figure of boogeymonster tv cutscene is the file "Special/Cutscene/cutscene-boogeymonster3.jpg".

The priority of boogeymonster-nightmare-tv is 4.

To compute punishment of (N - boogeymonster-nightmare-tv):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and find yourself sitting on the sofa next to your old schoolmates. There's a good few of you in the room at this sleepover, and you're watching a movie on TV with popcorn and hot chocolate and all that good stuff. As the movie makes way for yet another commercial break you notice who it is next to you: Jennifer, your Goddess of a [if the player is female and TG fetish is 0]bi-curious [end if]high school crush - the popular girl who for some reason gave you the time of day even though you were just a nerdy little dweeb. Usually you just worshipped her from afar but here she is and your arms are [italic type]touching! [roman type]You start to panic inwardly, working out what you should say to impress her and not sound like an idiot. You won't miss your chance again. You won't allow your next years to be filled with regret and thoughts of 'what if?' You cough awkwardly.";
	say "[variable custom style]'Jennifer, I love y...'[roman type][line break]As you begin to speak, and her beautiful perfect face turns to look at you, you are interrupted by one of the mean popular boys sitting nearby.[line break][first custom style]'Hahaha, that [if the player is female and TG fetish is 0]girl[otherwise]guy[end if] is wearing a diaper! Hey wait, isn't that you, [NameBimbo]?!'[roman type][line break]You turn slowly to look at the TV and are horrified by what you see. An advert for diapers for teenage bed-wetters is playing. The teenage [if the player is female and TG fetish is 0]girl[otherwise]boy[end if] in front of the camera is in a giant baby playpen with soft safety walls in view, preventing escape. [if the player is female and TG fetish is 0]She[otherwise]He[end if] is wearing some stretchy childish blue pyjamas. Worse still, extremely visible underneath the PJ bottoms is the biggest, thickest diaper you've ever seen in your life. [if the player is female and TG fetish is 0]Her[otherwise]His[end if] legs are stuck wide apart and as [if the player is female and TG fetish is 0]she moves she[otherwise]he moves he[end if] is forced into a toddler-esque waddle. [if the player is female and TG fetish is 0]She[otherwise]He[end if] looks extremely happy and frolics around the screen showing off [if the player is female and TG fetish is 0]her[otherwise]his[end if] obscene diaper bulge. The name of the diaper brand [second custom style]'Swaddles'[roman type] is plastered in big pink letters as well as the slogan [line break][second custom style]'Designed to swaddle the biggest babies in your life'[roman type][line break]And [if the player is female and TG fetish is 0]she[otherwise]he[end if] has your face! A few people are laughing.[line break][variable custom style]'That's not me, it can't be me, I never did no diaper advert!'[roman type][line break]You protest in a panicked voice.[line break]The mean boy replies. [line break][first custom style]'But then why are you wearing that clothing now?'[line break][variable custom style]'Huh?'[roman type][line break]You look down and see you're now wearing the exact same outfit - thick baby blue cotton pyjamas and a super-massive diaper. You try to squeeze your thighs together to block any view of the embarrassing crotch bulge but the padding is so thick you can't move your legs at all, they're stuck out to the sides! Pretty much everyone is laughing now. Jennifer looks at you with confusion and shock in her eyes, as if you have just unexpectedly betrayed her trust. Her voice sounds accusatory.[line break][first custom style]'What is going on, [NameBimbo]?'[line break][variable custom style]'J-Jennifer, I can explain!'[roman type][line break]You stutter as you try to stand up from the sofa, wobbling as the diaper makes it difficult to keep your balance. You stumble forward and catch yourself from falling by placing your hand on the TV screen.";
	say "Suddenly the laughter seems more muted and distant. You look up and see the TV screen has become a huge pane of glass, and on the other side of the glass are all your friends, pointing and laughing. You check behind you and see the walls of a baby play pen. It's immediately clear to you what's happened - you've somehow become trapped inside the TV! You bang against the glass but all your classmates just keep laughing at your awful situation, with Jennifer looking like she's on the verge of angry tears.";
	fullscreencutshow figure of boogeymonster tv cutscene for M;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "You watch the wording on the glass keep changing to say more and more embarrassing things. With each new slogan, the laughter of your peers grows more powerful and out of control.[paragraph break][second custom style]CAN COPE WITH THE BIGGEST BED-WETTERS[paragraph break]ENOUGH BULK FOR THE HULK[paragraph break]FOR MEGA-BABIES ONLY[roman type][paragraph break]Your tears arrive as the humiliation and fear overwhelms your senses. You're so scared, you begin to wet yourself. Somehow, all your friends can instantly tell you're going potty in your pants. Several of those who were standing collapse onto their knees clutching their stomachs, unable to stay upright because they're laughing so hard. Jennifer herself begins crying, and her eyes say 'you're dead to me'. She looks and sounds extremely pissed off. [line break][second custom style]'How could you, [NameBimbo]? I thought you were about to tell me you love me, but instead you show me your true colours. You're really just a big bedwetting baby. And to think I was considering giving myself to you. How disgusting.'[roman type][line break]She moves right up to the TV screen until all you can see is her head. You realise you are doll-sized compared to her giant angry face. She continues her tirade of abuse. [line break][second custom style]'Why would I want to date a pathetic little kid like you when I can kiss a sexy, hunky adult like James? You were such a fool to think we could ever be together. You mean NOTHING to me.'[roman type][line break][paragraph break][variable custom style]'Noooooo!'[roman type][line break]There's nothing else you can find to say as you continue peeing inside your new soggy nappy, falling to your knees yourself as your emotional defeat drains all your strength and energy. The scene fades to black.";
	let D be a random largish diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D cursed with silent quest;
	let P be a random pyjama bottoms;
	if P is actually summonable, summon P cursed with silent quest;
	now the bladder of the player is 0;
	clean D;
	WaterEmpty D;
	UrineSoakUp D by the soak-limit of D;
	say "You open your eyes. You are lying on your back in the [location of the player], but now wearing a [D][if P is worn] and [P][end if]. The [ShortDesc of D] feels extremely heavy, and you feel extremely fatigued. [BigNameDesc of M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	increase incontinence by 1.

Section - Magic Marker Nightmare

boogeymonster-nightmare-magic-marker is boogeymonster-nightmare.

Definition: boogeymonster-nightmare-magic-marker (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	if tough-shit is 0, decide no;
	if the number of worn tattoos is 0, decide no;
	if the player is disgraced or the diaper addiction of the player > 14, decide no;
	decide yes.

Figure of boogeymonster magic marker cutscene is the file "Special/Cutscene/cutscene-boogeymonster4.jpg".

The priority of boogeymonster-nightmare-magic-marker is 4.

To compute punishment of (N - boogeymonster-nightmare-magic-marker):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and find yourself at the front door of the house you work at, babysitting for the Bratsons. And 'Bratsons' is definitely the right name for their family - their kid is the biggest spoiled brat. And big in more ways than one - he's actually a college senior, but his parents still don't trust to leave him alone in the house because he'll probably organise a party and get the place trashed. So you're employed to keep an eye on him and make sure he doesn't get up to any mischief. As usual, today he is rather pissed at having to be supervised.";
	say "[first custom style]'I don't need a babysitter!'[roman type][line break]He snarls as you as he opens the door.[line break]You roll your eyes. [line break][first custom style]'Hi Devlin. Charming as always, I see.'[roman type][line break]He growls at you. [line break][first custom style]'[if the player is male]You stink[otherwise]Shut up. I'm nowhere near as trashy as you. Look at how much cleavage you're showing, you must be a total slut[end if].'[roman type][line break]You sigh and roll your eyes. [line break][first custom style]'How immature. I can see why your parents still treat you like a little baby.'[roman type][line break]His eyes go wide with fury. [line break][first custom style]'I AM NOT A BABY!!! YOU'RE SUCH A BITCH[if the player is male]! AND... YOU LOOK LIKE A GIRL[end if]!'[roman type][line break]He runs away from the door and up the stairs. You let him go - chasing him around the house is way past your pay grade. You stroll towards the living room and drop yourself onto the sofa, lounging on your front, and turn on the TV, preparing to burn the hours away until his parents return.";
	say "Your attention is on the television and your reflexes are slow as you feel something wet swiping your lower back. [line break][first custom style]'Hey, what are you doing?' You twist your head just in time to see Devlin Bratson writing on your back with a permanent marker.[line break]He cackles vindictively. 'There we go - ['][if the player is male]I look like a girl[otherwise]Big titted bimbo[end if]!['] Now it must be true because it says so! Bwah ha ha ha!'[roman type][line break]You launch to your feet, furious. [line break][second custom style]'How dare you write on my... eeek!'[roman type][line break]You screech as you realise your voice has just become a whole two octaves higher. You now sound like a squeaky [if the player is male]little girl[otherwise]bimbo[end if]! You look at Devlin's face - it seems he's as surprised as you are. And his face goes from confusion to shock as he looks at your body. You look down and squeal in horror as your [if the player is male]entire body shifts and reshapes, until you have the body of a girl[otherwise]chest swells, your boobs growing from B cups to C cups[end if]![line break][second custom style]'Hey, what the hell?!'[roman type][line break]You begin.[line break][first custom style]'This must be...'[roman type][line break]He replies...[line break][second custom style]'A magic marker!'[line break][first custom style]'A magic marker!'[roman type][line break]You say together. You both stare at the black pen with wonder. Then your eyes meet once again, yours full of uncertainty, and his full of malice.[line break]He leaps on you and [if the player is male]with your new weakling body he easily [end if]overpowers you, pinning you to the ground.";
	say "[first custom style]'Time to prove who's the real baby around here!'[roman type][line break]Your feeble resistance is completely futile as he pulls up your top and writes 'Grown Up Clothes Vanish' on your belly. Moments later you are completely naked. You squeal with embarrassment as [if the player is male]you both get a look at your brand new pussy at the same time[otherwise]all your body's secrets are now on show to this overgrown brat[end if]![line break][first custom style]'I can't believe it, this marker really is magic!'[line break][second custom style]'Oh my god, you made me naked, you pervert! Get me some clothes, NOW!'[roman type][line break]Devlin grins and disappears from the room for a moment, before returning with a bra and panties.[line break][second custom style]'[if the player is male]As you're a chick now, I think these will have to do, don't you? [end if]They're my mother's but don't worry, they're clean out of the wash.'[roman type][line break]You growl but consent, taking the underwear from him and putting it on as quickly as you can, pleased to no longer be naked. But as soon as you're beginning to feel comfortable again, the bra and panties vanish in the blink of an eye! You squeal once again and cover your naughty bits with your hands. [line break][second custom style]'What the hell?! Not again...'[line break][first custom style]'Hmm, looks like adult clothes will just disappear while you've got that writing on you! I'll have to find something more appropriate for your age.'[roman type][line break]He runs up and down the stairs once again and before you know it you are in a being forced into a bulky adult diaper!";
	say "[second custom style]'Hey, what's the big idea?!'[roman type][line break]You protest, but in reality you allow him to diaper you because it's better than your pussy being on display. Next you snarl as he adorns your chest with a large frilly pink bib that reads 'BIG BABY' on the front. Again, your protests are only half-hearted because at least it covers your chest and you're no longer naked. [line break][second custom style]Why does he have this stuff anyway?![roman type][line break]Before you can think too long about it, Devlin has once again tackled you to the ground, and is holding the pen above your legs. [line break][first custom style]'Hmm, what next? Ooh, I know...'[roman type][line break]Devlin writes something onto your right thigh. When he is finished he lets go of you and you sit up in order to get a proper look. It says 'Incontinent When Speaking'!";
	say "You can't help yourself - you harrumph indignantly and begin to react. [line break][second custom style]'Stop writing such awful things on me- oh no...'[roman type][line break]As your mouth moves so [if diaper messing >= 3]do your bowels and[otherwise]does your[end if] bladder. With an audible [if diaper messing >= 3]rasping[otherwise]hissing[end if] sound, you piss [if diaper messing >= 3]and mess [end if]yourself on the spot! As soon as you stop talking, your control comes back to you and you are with some effort able to stop and hold back the flow. But still, your diaper is no longer completely dry! [line break][second custom style]Gross![roman type][line break][second custom style]'I have to go to the toilet and clean this... thing up. But first give me a clean diaper to wear afterwards, jackass!'[roman type][line break]You demand, grunting as your diaper fills a great deal further in response. It's harder to regain control and stop the motion this time. Your body is now very eager to keep going, having just been in 'push' mode for a number of seconds. You hold your belly in discomfort as Devlin now takes his time in going upstairs to retrieve another adult nappy. Finally he appears at the door, holding it above his head like a piece of mistletoe. You waddle over to him and snatch it out of his hand. As you do, he grabs your wrist and twists it behind your back, hurting you.";
	say "[second custom style]'Yeow!'[roman type][line break]You shriek, and your [if diaper messing >= 3]bladder and butthole go to work once again[otherwise]bladder lets loose once again[end if]. This time you can't hold it back after you finish talking - the flow is too powerful and you have to stand there pinned in place with one arm painfully behind your back as you fully use your diaper. During this time, Devlin scratches some new words onto your arm! He then lets go, allowing you to read them aloud with dismay.[line break][second custom style]'[']Can't Change Self.['] You bastard!'[roman type][line break]Your [if diaper messing >= 3]butt makes farting sounds as you speak[otherwise]bladder muscles push as you speak[end if], but nothing comes out because you're empty for now. You move your hands down to your diaper to test the veracity of the statement and find to your despair that it's completely true - your fingers can't pull at the tapes at all - it's like they're sealed down with super glue! You're stuck in this [if diaper messing >= 3]messy[otherwise]soggy[end if] prison until someone else lets you out. Devlin looks down at you and grins.";
	say "[first custom style]'Well well well, looks like you're going to need to rely on me for a change, huh? In which case you'd better be a good baby for your new Daddy. Or you'll be staying in that one for a long time. Now get on your knees.'[roman type][line break]You reluctantly obey. There's no way you're staying in this nappy for any longer than you have to. Once on your knees, your new master looks at his watch and then writes another phrase on the back of your right thigh. 'Can't walk during odd numbered hours'. You let out a gasp of indignation, and then try to stand up, only to find you can't. Your legs just won't let you.[line break][first custom style]'As you were an obedient little girl, I didn't write [']Can't walk at all[']. You should be thanking me. In fact, do it. Say [']Thank you Daddy['].'[roman type][line break]You snarl under your breath, but then say the words. [line break][second custom style]'Thank you, Daddy.'[roman type][line break]Your body rewards you by beginning a second session of diaper filling - you can't believe you've got more in you already! You clench your muscles as soon as you can, halting the action.";
	say "[second custom style]That's it, I'm not talking any more, at all![roman type][line break][first custom style]'You're welcome, baby. Now come over here and let's feed you your din-dins.'[roman type][line break]You crawl on all fours as you follow Devlin to the kitchen. No sense in provoking his anger any more than you have to. He fills a bowl with [if diaper messing >= 3]oatmeal[otherwise]milk[end if] and puts it on the tiled floor in front of you. [line break][first custom style]'Din-dins is served!'[roman type][line break]He looks at you expectantly, clearly intending for you to eat without cutlery. You grumble under your breath but stick your face in the bowl as instructed. You're completely at his mercy. Your face is covered in it by the time you are finished.[line break][first custom style]'What a messy baby! Well, here's your reward for finishing your meal.'[roman type][line break]He takes the marker and adds even more awfulness to your life, writing something on your upper back you can't see. After that he takes a big pink rattle from on top of the kitchen table (where it had been out of your sight until now), and hands it to you. You take hold of it instinctively, then realise how dumb you must look holding it and try to put it on the ground. But your fist refuses to open! Whatever he wrote on your back is preventing you from letting go of the rattle. You try and shake it loose, which just makes it look like you're enjoying making sounds with your new baby toy! Devlin looks thoroughly entertained.";
	say "[first custom style]'What a good baby, having such fun with your new rattle! You do enjoy your new rattle, right? If not, just tell me how much you're not a big baby.'[roman type][line break]You stare daggers into his eyes. He knows full well you can't reply without continuing to go toilet in your already full nappy. You look down at it with disgust.[line break][first custom style]'Does baby want a change? If you want a fresh nappy, just sit up like a big girl for me.'[roman type][line break]You know it's going to feel gross but it's a small price to pay for getting dry afterwards. You kneel up straight and then plonk your padded butt down on the hard tiled floor. You feel the gross [if diaper messing >= 3]sludge[otherwise]full padding[end if] smooshing against your privates and let out a little high-pitched whimper.'[line break][first custom style]'I'm almost convinced. Let me hear how full it is. Without using your hands.'[roman type][line break]You're in too deep to go back now, and begin submissively squirming on the spot, rubbing your padding up and down across the floor, filling the air with the sounds of crinkling and squelching. Your face turns beetroot red with embarrassment, but finally you've earned your change. You follow your new Daddy to the bathroom on your hands and knees, your thickly diapered bum swaying high in the air behind you.";
	say "Three deeply humiliating minutes later, you are clean and dry and in a fresh but equally bulky diaper. But it doesn't seem that Devlin is done with you - he took care to make sure he didn't wipe away any of the words written on your skin. He leads you back to the living room where he sits you down on the ground in front of the sofa and takes a seat behind you, and begins to fashion your hair into pigtails. There's nothing you can do but sit there as he gradually alters your hair to make your appearance match how small and powerless you feel inside. After he's finished styling you like his personal playdoll, he violently wrenches your arm tight behind you again. It takes all your willpower not to verbally complain.[line break][first custom style]'Well it seems you've finally got used to controlling your voice. But I wonder if that means you have total control over your bodily functions?'[roman type][line break]With this he adds another line to your right arm: '[if diaper messing >= 3]Mess[otherwise]Milk[end if] Bulk x10'! Moments later, your tummy explodes outwards to contain your [if diaper messing >= 3]bowels['][otherwise]bladder's[end if] new contents, and you suffer a severe cramping sensation. You jump to your feet in reaction, instinctively wanting to rush to the toilet. Of course you soon remember you can't remove your own diapers and therefore going to the bathroom would be pointless. You then realise you are standing, and your eyes shoot to the clock to confirm - yes, it has just gone past ten o'clock and so you can now stand again for the next hour! [line break][second custom style]But wait, something else usually happens at ten, doesn't it? What is it again?[roman type][line break][if diaper messing >= 3]As you try to recall what it is, you feel something being written on your outer left thigh. When you look down at the words you get your biggest sense of dread so far. 'Messing Makes Me Cum', the words read. [line break][second custom style]No... No... No...[roman type][line break]The cramps are getting worse and you're going to have to go number two soon, even if you don't speak. But the idea of orgasming from such an act is just too inconceivably awful! You resolve to hold it in until you reach your utter limit.[end if]";
	say "You hear the sound of keys in the front door. You remember what happens at ten - the Bratsons arrive home from their dinner date. You look around for their son and find he's disappeared, presumably sneaking upstairs at this very moment. The sound of the door creaking open. Your belly rumbles horribly and cramps. The giant pink rattle makes quiet little sounds as you try to move your hands to cover your diaper. And then there they are, the brat's parents, standing in the doorway to the living room with looks of bewilderment and anger on their faces, looking at your babified form in all its glory.";
	fullscreencutshow figure of boogeymonster magic marker cutscene for M;
	say "[italic type]Art by Aweye[roman type][line break]";
	say "[first custom style]'WHAT'S THE MEANING OF THIS?'[roman type][line break]Mr Bratson bellows.[line break][first custom style]'[if the player is male]I think that's our babysitter...'[otherwise]What sort of weird perverted thing are you up to?!'[end if][roman type][line break]Mrs Bratson utters in disbelief.[line break]You turn an even deeper shade of red. [line break][second custom style]'Mr Bratson, Mrs Bratson, I can explain. Your son has a magic marker and he gaaaaaa...!'[roman type][line break]Your voice trails off as your [if diaper messing >= 3]butthole opens wide and begins depositing the biggest log in the history of the world into your thick incontinence aid, which you clearly need as in that moment you feel how truly incontinent you are. It feels like someone else has taken control of your body and has no other plans for it other than 'push'. You adopt a horribly degrading squatting position and continue to let rip. A jolt of pleasure seizes you as the log continues to escape, and then another and then another and then another, and very soon you're climaxing in front of your employers, visibly wetting, cumming and pooping at the same time as you fill your diaper almost beyond its limits, your pregnant-looking belly slowly deflating as the messy bulge below you grows! Every time you try to speak, your body doubles its efforts making louder and lewder sounds.[line break][second custom style]'Please...'[italic type][line break]SPLART![line break][second custom style]'Don't'[italic type][line break]FRRRT![line break][second custom style]'Don't look...!'[italic type][line break]SPLORCH![line break][roman type]Your orgasm is so powerful you've already started trying to rub your clit through your padding with the head of your rattle before you consciously realise it. If they didn't know you were orgasming before, they definitely do now.[otherwise]bladder lets loose with the loudest hissing sound you've ever heard. Your pee comes out with the force of a fire hydrant, quickly soaking your padding and soon dribbling down your thighs as it overflows. And yet you're far too full to stop it at all, and you begin to soak their carpet around their feet.[end if]";
	say "[first custom style]'How could you, [NameBimbo]? We trusted you with our son and our house and this is what you get up to behind our backs?! No wonder our Devlin is so much less mature than his peers, with you for a role model. Get off our property right now, and never come back.'[roman type][line break][second custom style]'Noooooo!'[roman type][line break]You whine as you are forcibly ejected from their home, onto the strange street in a foreign neighbourhood, the next city over from your own house - over an hour's drive away. In the cold dark wearing nothing but a superheavy overflowing diaper, a baby bib that hardly covers your chest, and a rattle you can't let go of. Who knows how long it'll be before you can find somewhere to wash it off! You fall to the ground, close your eyes and begin to cry.";
	if change-self tattoo is worn:
		say "You open your eyes. You are lying on your back in the [location of the player]. [BigNameDesc of M] is nowhere to be seen.";
	otherwise:
		summon change-self tattoo;
		summon incontinent-when-speaking tattoo;
		if diaper messing >= 3, summon cum-when-messing tattoo;
		say "You open your eyes. You are lying on your back in the [location of the player], but you now have a [change-self tattoo] and an [incontinent-when-speaking tattoo][if cum-when-messing tattoo is worn] and a [cum-when-messing tattoo][end if]! [BigNameDesc of M] is nowhere to be seen.";
	if TG fetish > 0:
		SexChange the player;
		say "Wait a minute, you also now have boobs! What the hell?! Feeling through your padding with [horror the bimbo of the player] your fears are confirmed - that's definitely not a willy in between your legs any more. You've been completely and utterly transformed into a girl. You shiver with [joy the bimbo of the player] - you get the feeling that this change is 100% irreversible.";
	regionally place M;
	distract M.

Section - Courtroom Nightmare

boogeymonster-nightmare-courtroom is boogeymonster-nightmare.

Definition: boogeymonster-nightmare-courtroom (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	if diaper messing < 3, decide no;
	decide yes.

The priority of boogeymonster-nightmare-courtroom is 4.

Figure of boogeymonster courtroom cutscene is the file "Special/Cutscene/cutscene-boogeymonster5.jpg".

To compute punishment of (N - boogeymonster-nightmare-courtroom):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav][line break]";
	say "[first custom style]'[NameBimbo], you stand accused of being a baby unfit for big girl pants. How do you plead?'[roman type][line break]You open your eyes as you hear these words. You find yourself standing at the defence table in a courtroom, the judge, jury, prosecution, bailiff, and audience all staring at you. Before you can fully take in your situation, you instinctively yell [line break][variable custom style]'Not guilty!'[roman type][line break]The judge rolls his eyes and sighs, before ordering the bailiff to take [first custom style]'Our little defendant'[roman type] to the stand. You start to walk towards the witness stand, but immediately stop in your tracks as you finally take in your attire. Not only is your ability to walk heavily impaired by a gigantic diaper around your waist, around it is a pink straitjacket onesie, leaving your arms completely inoperable. Distracted by your clothing, you allow the bailiff to strap you into a giant baby stroller, the court apparently not trusting you to walk your way to the stand. Despite the short distance, the trip to the stand seems impossibly long as you watch the eyes of every member of the jury follow you, knowing that they are all silently judging you - their verdict likely already decided.";
	say "When you finally reach the stand and are let out, you eagerly take your oath and prepare to testify, ready to prove yourself. However, you are suddenly crippled by an inhuman cramp in your tummy, accompanied by a deafening gurgle, a roar you are almost certain could be heard beyond the walls of the courtroom.";
	fullscreencutshow figure of boogeymonster courtroom cutscene for M;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "Almost certainly as a direct result of your stomach's noises, the prosecutor asks [line break][first custom style]'Does baby need to go potty?'[roman type][line break]Despite your body's desperate need, there is no way you can admit the situation you are in. You yell [line break][variable custom style]'No!'[roman type][line break]following far too late with [line break][variable custom style]'A-and I'm not a baby...'[roman type][line break]As you look at the jury, prosecution, and audience, you don't see a single face that seems to believe either statement. The prosecution wisely continues on the same line of questioning.";
	say "[first custom style]'When was the last time you made it to the potty?'[line break]'Are you struggling not to use your diaper right now?'[line break]'Exhibit A, [NameBimbo][']s potty training chart. Why is there not a single smiley face?'[line break]'Why are you scrunching your face like that?'[line break]'Exhibit H, [NameBimbo][']s room. Does this look like a big girl[']s room?'[roman type][line break]";
	say "Throughout your questioning the already intolerable pressure in your bowels increases steadily, constantly forcing you to squat more and more, and start performing a very obvious potty dance, at least to the extent your clothing allows. Eventually, you are squatting to the point where you are almost completely concealed by the stand. It's at this point that the prosecutor suddenly points at you dramatically, and yells [line break][first custom style]'OBJECTION!'[roman type][line break]proceeding to claim your behaviour is distracting the jury, preventing them from properly judging your testimony. She then requests the judge to have you restrained completely, in order to remedy this. The judge sustains the objection, and soon the bailiff is finished locking you into a giant high chair placed in front of the witness stand, leaving you with only one option for movement - namely, kicking your feet, which you do incessantly since the pressure in your bowels is at an all time high. You let out a grunt as you feel your body start to involuntarily push, a loud wet fart reverberating throughout the courtroom.";
	say "[first custom style]'Are you about to shit yourself like the pathetic baby you are?'[roman type][line break]Despite knowing all aspects of her question were undeniable, you still cannot bring yourself to admit it, and whimper [line break][variable custom style]'N-no...'[roman type][line break]just before the floodgates open, your diaper rapidly filling with an unspeakable amount of your unspeakable waste, made all the worse by your high chair forcing the mess against you, your entire crotch eventually becoming coated in the filth. By the time you start wetting yourself, the urine does not even reach the thick padding of your diaper thanks to the wall of your waste in front of it. After what feels like centuries, your 'accident' finally ends. You look up to see almost every person in the courtroom staring at you in disgust, the sole exception being the prosecutor, who has a smug grin on her face.";
	say "[first custom style]'The prosecution rests, your honour.'[roman type][line break]Almost sarcastically, the judge asks [line break][first custom style]'Does the jury need time to deliberate?[roman type][line break]to which the foreman instantly responds [line break][first custom style]'No, your honour. We, the jury, find [NameBimbo] guilty of innumerable counts of failure to use the potty, years of failure to potty train, 42 counts of lying under oath, and contempt of court.'[roman type][line break]The pronouncement is met with applause from the entirety of the audience.";
	say "[first custom style]'Order! Order! Order in the court!'[roman type][line break]Once the judge finally manages to calm the celebration in the courtroom, he begins your sentencing. [line break][first custom style]'[NameBimbo], on account of your complete failure to even come close to imitating an adult, your brazen disrespect for the judgement and intelligence of both myself and the jury, and the disgusting behaviour you have displayed here today, I hereby sentence you to life in diapers in a maximum infancy adult nursery, without parole or potty training.'[roman type][line break]";
	say "Completely unable to argue that you do not deserve your punishment, you simply begin bawling, struggling against your straitjacket in an attempt to suck your thumb, before shutting your eyes, hoping your surroundings would just disappear. To your immense relief, they do.";
	let D be a random huge diaper;
	unless D is worn:
		only destroy D;
		repeat with K running through worn knickers:
			destroy K;
		summon D cursed with silent quest;
	let O be a random velcro onesie;
	unless O is worn:
		destroy O;
		repeat with K running through worn overdress:
			destroy K;
		repeat with K running through worn trousers:
			destroy K;
		summon O cursed with silent quest;
	let A be a random off-stage pair of anklecuffs;
	if A is actually summonable, summon A locked;
	MessSet D to 20;
	say "When you open your eyes, you find yourself lying on your back in the [location of the player], wearing an impossibly full [ShortDesc of D], covered by a [ShortDesc of O][if A is worn clothing]. A pair of anklecuffs keeps your feet locked close together[end if]. [BigNameDesc of M] is nowhere to be seen.";[Plain white diaper and pink onesie, maybe bondage?]
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	if the raw delicateness of the player < 14, increase the raw delicateness of the player by 1.


Section - Comicon Nightmare

boogeymonster-nightmare-comicon is boogeymonster-nightmare.

Definition: boogeymonster-nightmare-comicon (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	if diaper messing < 3, decide no;
	decide yes.

The priority of boogeymonster-nightmare-comicon is 5. [Temporary to let players check the new content out. Change to 4 next patch]

Figure of boogeymonster comicon cutscene is the file "Special/Cutscene/cutscene-boogeymonster6.jpg".

To compute punishment of (N - boogeymonster-nightmare-comicon):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav][line break]";
	say "And then the next thing you know... you're walking through Comicon in your impressive Samus cosplay, proudly strutting your stuff, showing off your fancy blaster gun and light-up gloves. Friends and strangers alike are awestruck by your expertly made gear and just how realistic it looks. You bask in their adoration and praise, smiling to yourself from behind your helmet.[paragraph break]And then, as you waltz, ZAP! Your helmet is hit by some kind of laser. It clicks open, and falls to the ground, exposing your face.[line break][variable custom style]What the hell?![roman type][line break]Standing in front of you, a decent fair few feet away, is a woman cosplaying as Pharah. And she's just blasted you with her laser gun. In a fury, almost without thinking, you shoot back! And lo and behold, a real-looking laser flies from your weapon into her helmet, which also clatters to the ground, revealing her face. It's [FriendName], your [FriendRole]! She flashes an angry expression on her face at being exposed and then dashes into the nearby crowd before you can stop her.";
	say "[variable custom style]What is going on?![roman type][line break]You push into the crowd, trying to chase after [FriendName] and find her. What is she up to?![line break]Your padding crinkles quietly from under your outfit. [FriendNickname] better not shoot any more of your outfit off.[paragraph break]You push through throngs of people, recognising several faces, some of your friends, and some of [FriendName]'s friends. You eventually reach a set of merchandise stalls with fewer people around. Most of the stalls seem to be selling really [if the diaper addiction of the player < 7]weird[otherwise]specialist[end if] stuff - cute girly button badges, handmade pacifiers, tiaras, fairy wands... but your distraction becomes your doom as [FriendName] manages to get behind you and plant a second laser shot, this time onto your back.[line break][italic type]CLICK WHIRRRRRRRRRRRR[roman type][line break]The enema nozzle in your butt begins to spurt warm water inside of you, and doesn't appear to be stopping any time soon. You remember now! Your back sensor is connected to the enema machine on your back, the sensor on your chest is connected to the upper half of your outfit, and the sensor on your groin is connected to the bottom half of your outfit. The sensor on your gun must be hit last, and is game over. The same is true for her. It's time to get your own back![paragraph break]You spin and aim for her but she's already gone. Your belly sloshes, already rather full of water. You waddle towards where she disappeared back into the ground, trying to ignore the feeling of water going the wrong way up your system. A few moments later the enema backpack runs out of juice, and detaches itself from you, dropping to the ground with a loud clatter. But that's not important right now. What's important is finding her.[line break]You spend what feels like an age pushing through groups of people, your stomach making more and more concerned noises as time ticks on. Your butthole stats to weaken.[line break][variable custom style]No, I've got to hold it in!'[roman type][line break]You spot [FriendName] rushing across a relatively empty area near some autograph stalls, facing away from you. A feeling of excitement wells up in you as you give chase. You're only a few feet behind her now, with nobody in between you. You raise your gun to take aim...";
	say "And your butthole chooses that moment to let rip, filling your thankfully padded underwear with a megaload of lumpy brown mush. [FriendName] stops as she hears the sound of you messing your diaper behind her. You quickly shoot the sensor in her back, triggering her enema. She whirls round, quickly aiming at your chest. Zap! a direct hit. There's nowhere for you to dodge - you can only continue to fire back. Pew! You hit her bottom half. Zap! She hits your bottom half. Zap! You just about hit her top half. Zap... she gets your laser gun. It clicks as it splits into two pieces and drops to the floor, a clear declaration that you're the winner.";
	say "And then all your costume finishes falling off. The top half, the bottom half, everything it's all gone. And now you properly remember what you have on underneath A super short pink babydoll dress, that ends at the waist and does nothing to cover your thick pink rubber diaper with a see-through purple diaper cover over the top. Your giant messy episode is extremely visible through the layers of sheer latex, testing the elasticity of your incontinence aid with its bulk. Sheer white stockings with pink bows complete the adult baby girl look.";
	fullscreencutshow figure of boogeymonster comicon cutscene for M;
	say "[italic type]Art by Wishberri[roman type][line break]";
	say "While she's not in the best state of dress, with most of her costume on the ground, her thick white diaper fully visible, and the back of her purple babydoll dress on show, [FriendNickname] has managed to hold onto the front upper part of her outfit and is still holding onto her enema, which means that all eyes are on you. Hundreds of them, many of them your friends and acquaintances.[line break][first custom style]'Nice costume, [OriginalNameBimbo]! Or should I call you Stinkypants?'[second custom style]'What have you come to Comicon as? An incontinent baby?'[line break][first custom style]'No, [he of the player][']s even more pathetic than that. I've never seen a baby fill their diaper to the point of bursting like that!'[line break][second custom style]'Eww, it's so disgusting! I'd rather die than have anyone see me like that!'[roman type][line break]Your face turns redder than it ever has in your life.";
	say "And then just as you think things can't get any worse, you feel some kind of harness grab you by the shoulders and hoist you several feet in the air. Now the entire convention can see you dangling above them, your nasty messy diaper right in their line of vision.[line break][first custom style]'Ladies and Gentlemen, I present to you the winner of the most brave and provocative cosplay of 2019, [NameBimbo] the incontinent baby!'[roman type][line break]The giant convention hall fills with the sound of laughter.[line break][variable custom style]'N-no, I'm not incontinent!'[roman type][line break]Your belly chooses that moment to warn you that only part of the enema made it out during your last episode. This second half is even more brutal, not caring at all how little you want it to come out right now. It's coming. And it's going to be big.[variable custom style]'Nooo....'[roman type][line break]";
	let D be a random rubber diaper;
	unless D is worn:
		only destroy D;
		repeat with K running through worn knickers:
			silently transform K into D;
		if D is not worn, summon D cursed with silent quest;
	if the class of the player is adventurer:
		let O be a random patterned baby dress;
		unless O is worn:
			destroy O;
			repeat with K running through worn dress:
				now K is in pink wardrobe;
			repeat with K running through worn trousers:
				now K is in pink wardrobe;
			repeat with K running through worn skirts:
				now K is in pink wardrobe;
			summon O cursed with silent quest;
	MessSet D to 20;
	now rectum is 20;
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	ultraHumiliate;
	compute messing.

Chapter 3 - Damage

To compute damage of (M - boogeymonster):
	if the health of M > 0:
		if M is uninterested:
			say "It growls viciously! Uh-oh...";
			now M is interested;
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "It snarls through gnashing teeth!";
			otherwise say "It seems to be breathing more heavily, as if it is getting tired!";
	otherwise:
		compute death of M;

To compute unique death of (M - boogeymonster):
	let B be a random off-stage tincture of strength;
	say "[BigNameDesc of M] falls to the ground, defeated. [if B is tincture]He dropped a [printed name of B]![end if]";
	if B is tincture:
		now B is in the location of the player;
		compute autotaking B;
	now M is bossdefeated.

To uniquely destroy (M - boogeymonster):
	now M is caged.

To loot (M - boogeymonster):
	let X be a random off-stage plentiful ring;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.


Boogeymonster ends here.

