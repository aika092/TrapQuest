Boogeymonster by Monster begins here.

A boogeymonster is a kind of dungeon boss.  A boogeymonster is usually neuter.  The leftover-type of a boogeymonster is usually 107.

1 captive boogeymonster is in Dungeon36.  Figure of boogeymonster is the file "boogeymonster1.png".  The printed name of boogeymonster is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]boogeymonster[if the item described is captive] (caged)[otherwise if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The description of boogeymonster is usually "[BoogeymonsterDesc]".  The text-shortcut of boogeymonster is "boo".  Understand "boogey" as boogeymonster.

To say BoogeymonsterDesc:
	if images visible is 1, display the Figure of boogeymonster;
	say "This giant green monster looks like something straight out of a nightmare[if item described is captive].  Luckily it is currently stuck inside a giant cage[end if].";

To set up (M - a boogeymonster):
	if M is alive: [We don't want to reset the boogeymonster if he's dead]
		reset M;
		now the monstersetup of M is 1;
		now M is large;
		now the difficulty of M is 11;
		now the health of M is the maxhealth of M.

To decide which number is the girth of (M - a boogeymonster):
	decide on 8.

This is the spawn initial boogeymonster rule:
	if debugmode > 1, say "Now summoning boogeymonster.";
	if diaper quest is 0:
		repeat with M running through boogeymonsters:
			now M is not dungeon dwelling;
			remove M from play;
	otherwise:
		let M be a random boogeymonster;
		if M is released and M is alive, summon M in the dungeon.
The spawn initial boogeymonster rule is listed in the setting up dungeon monsters rules.

Definition: a boogeymonster (called M) is concealment immune: [Can the monster ignore salves of concealment, butt slut, etc.]
	decide yes.

Definition: a boogeymonster (called M) is able to remove cursed plugs: [Can the monster remove all butt plugs?]
	decide yes.

To say LeftoverDesc (N - 107):
	say "The corpse of a boogeymonster lies on the ground. The back of its skull is missing, and a huge bloody hole is all that remains of its brain.[line break]".

Part 1 - Perception

To compute perception of (M - a boogeymonster):
	say "The [M] notices you[if the player is sluttily dressed][one of], even though you're not completely sure if it has more the mind of a beast or the mind of a man.[or].[stopping][otherwise]![end if]";
	anger M;
	if M is released:
		say "It does not look friendly.  In fact, you can see some malice in its eyes.";
	otherwise:
		say "It snarls angrily at its captivity.".

To say BecomesBoredFlav of (M - a boogeymonster):
	say "The [M] seems to lose interest in you for now.".
	
	
Part 2 - Motion, Seeking and Sleeping

To compute motion of (M - a boogeymonster):
	if M is released:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		otherwise if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		MonsterStomp M.
		
To compute (M - a boogeymonster) seeking (D - a direction):
	if M is released, try M going D.
	
To compute sleeping of (M - a boogeymonster): [This will need to change if sleep / boredom / scared mechanics change]
	if the scared of M > 0:
		decrease the scared of M by seconds;
		if the scared of M < 0, now the scared of M is 0;
	if the boredom of M > 0:
		decrease the boredom of M by seconds;
		if the boredom of M <= 0:
			now the boredom of M is 0;
	if the sleep of M > 0:
		decrease the sleep of M by seconds;
		if the sleep of M <= 0:
			now the sleep of M is 0;
			if M is in the location of the player, say "The [M] wakes up!". [Very slight deviation from the default.]
			

Part 3 - Boogeymonster Stomp

[To compute (M - a monster) stomping (N - a monster): Consider this a template!
	say "The [M] kills the [N]!";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.]

Part 4 - Combat

Chapter 1 - Attack

The boogeymonster priority attack rules is a rulebook.  The priority attack rules of a boogeymonster is usually the boogeymonster priority attack rules.

This is the boogeymonster still caged rule:
	if current-monster is captive:
		say "[one of][CagedBoogeyMonsterFlav][or][or][or][in random order]";
		rule succeeds.
The boogeymonster still caged rule is listed first in the boogeymonster priority attack rules.

To say CagedBoogeyMonsterFlav:
	say "[one of]The [current-monster] angrily shakes the metal bars of his cage.[or]The [current-monster] paws at the floor of his cage, snarling with anger.[or]The [current-monster] snarls angrily at his captive state.[or]The [current-monster] bangs at the bars of his cage. The sound of clanging metal rings through the room.[or]The [current-monster] throws himself at the bars of his cage. You try to ignore his angry snarling.[in random order]".

This is the boogeymonster prioritises defeating others rule:
	if the number of monsters in the location of current-monster > 1: [1 is going to be the boogeymonster itself]
		MonsterStomp current-monster;
		rule succeeds.
The boogeymonster prioritises defeating others rule is listed last in the boogeymonster priority attack rules.

To compute the flying player taunting of (M - a boogeymonster):
	say "[one of]The [M] clearly refuses to move from your location until you stop floating.[or][stopping]".

The latex punishment rule of a boogeymonster is usually the no latex punishment rule.

To say LandingTaunt of (M - a boogeymonster):
	say "The [M] growls with impatience.";
	humiliate 50.

To say StrikingSuccessFlav of (M - a boogeymonster) on (B - a body part):
	say "The [M] strikes your [TargetName of B] with a spiked tentacle!";
	BodyRuin 1. [The boogeymonster automatically does 1 damage, and 2 if he hits.]
		
To say StrikingFailureFlav of (M - a boogeymonster) on (B - a body part):
	say "You try to dodge the [M]'s tentacle, but it still manages to land a glancing blow!  Ouch!";
	BodyRuin 1.

To compute striking attack of (M - a boogeymonster):
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
		say "The [M] pulls the crotch of your [printed name of C] to the side!";
		displace C;
	otherwise:
		say "The [M] rips off your [printed name of C]!";
		destroy C.
	
To compute (M - a boogeymonster) attacking (C - a clothing):
	say "The [M] tears off your [printed name of C]!";
	destroy C.

Chapter 2 - Nightmares

boogeymonster-nightmare is a kind of diaper punishment.  The priority of a boogeymonster-nightmare is 5.

Definition: a boogeymonster-nightmare (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	decide yes.

To say NightmareStartFlav:
	say "The [current-monster]'s body looms over yours and then envelops it, shrouding you in darkness.  Suddenly, you hear a voice in your head.  [first custom style]'I AM YOUR NIGHTMARE...'[roman type]  And then the ground disappears, and [one of]you are floating through nothingness... or are you just hovering still?  It's hard to tell[or]once again you are sent through the darkness to another reality[stopping].  ";

Section - School Nightmare

boogeymonster-nightmare-school is a boogeymonster-nightmare.

The priority of boogeymonster-nightmare-school is 2. [This is super harsh so doesn't ever happen first.  It happens after all the other eligible ones have happened.]

Figure of boogeymonster school cutscene is the file "cutscene-boogeymonster1.png".

To compute punishment of (P - boogeymonster-nightmare-school):
	now the priority of P is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and see you're at school!  You look around and see all your old school-friends.  Why are they grinning at you?  Why are you at the front of the class?[line break][first custom style]'Are you SURE you don't need to go potty, [NameBimbo]?'[roman type]  Mrs Windsor, your old form tutor, sounds unnecessarily judgemental.  You reply without thinking.[line break][variable custom style]'What?  No, I don't need to go, why do you ask...'[roman type][line break]You look down at yourself and are shocked by what you see.  You're wearing striped red and white stockings, a tiny white girly dress and a huge thick diaper.  Your legs are duct-taped together, and the duct-tape is holding a magic wand against your crotch.  You yelp as you realise you have lost your balance, and fall to the ground in front of your classmates.  They can see everything.  The magic wand begins to buzz and whirr, stimulating you powerfully through your padding.[line break]Your teacher interrupts your thoughts.  [first custom style]'What do you think are you are doing, you stupid child!  Get that ridiculous machine off of yourself right now!  This is not appropriate.'[roman type][line break][variable custom style]'Yes Ma'am,'[roman type] you meekly reply and move your hands to yank at the tape around your legs.  Suddenly you realise, your wrists are duct-taped to the ground!  When did that happen?!";
	if images visible is 1, display figure of boogeymonster school cutscene;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "The buzzing grows and you can feel an orgasm building.[line break][variable custom style]'Oh no, I can't stop it!'[roman type]  At that same moment, you feel another need grow within you, and within seconds your body is cramping, since you desperately need the loo.[line break][variable custom style]'Mrs Windsor please help me, I need the loo!'[line break][first custom style]'You liar, you just told me you don't need the potty!'[roman type]  She sounds very angry, and your whole class is laughing at you.  It's at this moment that you lose control of your body, and audibly fill your nappy in front of everyone.  Mrs. Windsor is chastising you but you don't even register the words as you now also start to cum, thrashing around on the ground as you [if diaper lover >= 3]mess[otherwise]wet[end if] yourself and cum at the same time.  Your tongue sticks out of your mouth and your eyes roll into the back of your head as you continue to struggle on the ground like a worm[if diaper lover >= 3], not succeeding at anything except pushing against the warm mush appearing in the back of your diaper[end if].";
	say "Your classmates are all standing now, crowding around you as they laugh and tease you. Some even tickle you!  From amidst the madness you hear your teacher's voice again.  [first custom style]'What a disgrace!  If you really can't control yourself then I am not afraid to make you walk home like this as punishment.  Do NOT orgasm in front of us again, [NameBimbo].'[roman type]  It doesn't matter what she says, you're already building towards your second peak.  The tickling by the other students isn't helping, either: it just adds to the pleasure!  You cum hard, wailing like a little girl as you do.  [if diaper lover >= 3]You didn't even think it was possible, but your bottom is still pumping out poopies, your large diaper growing even bigger between your legs as your bowels continue to empty.  [end if]Your body continues to climax and [if diaper lover >= 3]empty itself[otherwise]urinate[end if] over and over, until you close your eyes and put your hands over your ears, screaming and wishing you could just disappear.";
	let D be a random blue bear diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D;
	if rectum > 1, now rectum is 1;
	now the bladder of the player is 0;
	now the urine-soak of D is the soak-limit of D;
	if diaper lover >= 4, now the mess of D is 30;
	say "And then you do - or rather, the scene disappears.  You are lying on your back in the [location of the player], but now wearing a [D].  It feels impossibly heavy, and you feel extremely fatigued.  The [M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	let N be a random alive gladiator;
	if N is nothing, now N is a random alive royal guard;
	regionally place M;
	distract M;
	increase incontinence by 2;
	DiaperAddictUp 3;
	SexAddictUp 3;
	humiliate 1000;
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

boogeymonster-nightmare-airplane is a boogeymonster-nightmare.

The priority of boogeymonster-nightmare-airplane is 4. [This is a bit harsh so shouldn't usually happen first.]

Figure of boogeymonster airplane cutscene is the file "cutscene-boogeymonster2.png".

To compute punishment of (N - boogeymonster-nightmare-airplane):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and find yourself sitting in an airplane seat.  Before you can even take a proper look at your surroundings, a voice comes over the tannoy.  [first custom style]'Good afternoon everyone, this is your pilot speaking.  I hope you're enjoying our 14 hour non-stop flight to Sydney.  Bad news I'm afraid - the toilet has just broken down!  We've also just been warned there are terrible delays with the arrival gates at Sydney and we may be stuck on the runway for anywhere from six to eight hours once we arrive.  But never fear, we have prepared for this and are deploying the emergency diapers as we speak.  If you're such a little baby that you can't control your [if diaper lover >= 3]tum-tums[otherwise]pee-pee[end if], we recommend you follow our air hostess['] example and get comfy in one of our extra-thick Snuggies.'[roman type][line break]As soon as the pilot finishes speaking you feel your [if diaper lover >= 3]belly begin to rumble as a huge pressure builds in both your bladder and bowels[otherwise]bladder start to swell and swell until it is ready to burst[end if].  You squeak meekly as you look to the front of the plane where an air hostess has wheeled out a tray with a package stacked full of what looks like the largest, thickest diapers you have ever encountered.  Her uniform would look normal if it wasn't for the fact that the skirt is ridiculously short and exposes pretty much the entirety of the giant nappy she's wearing underneath.  Its bottom nearly reaches her knees, and its forcing her thighs wide apart.";
	if images visible is 1, display figure of boogeymonster airplane cutscene;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "Another angry [if diaper lover >= 3]growl from your tummy[otherwise]spasm from your bladder[end if] reminds you of your current predicament.  You can't help it - you have to get up and make your way to the front of the aircraft, turning redder and redder as you see the judging stares of your fellow passengers.  It seems to take a year for you to make it to the front of the cabin where you whisper as quietly as you can to the diapered hostess that you're going to have to take them up on their emergency solution.[line break][second custom style]'Uh-oh, this little [if the player is male and the bimbo of the player < 10]boy[otherwise]girl[end if] needs to go potty!'[roman type]  The air hostess announces in a very loud voice to the entire plane.  Your face turns a beetroot shade of red.  [second custom style]'Well, well, well, I didn't think anyone would be such a pathetic baby that they wouldn't even be able to hold it in for a few minutes!  Or maybe you just love the idea of wearing big thick diapers, huh?'[roman type][line break]You open your mouth to protest but nothing comes out.  She's wearing a diaper herself!  How can she say such mean things about you?  The evil lady pushes a button and a giant changing table swings out, unfolding down in front of you.[line break][second custom style]'Hop on then, little one!'[roman type][line break]Now you get your voice back.  [variable custom style]'W-w-wait a minute, I can't put it on in front of all these strangers...  Why is this thing out here?!'[roman type][line break][second custom style]'Well it's not like there's anywhere else it could fit, is there?  And no of course you won't be putting it on in front of these strangers... *I* will be putting it on you in front of all these strangers.  You don't have the proper training.'[roman type][paragraph break]Another loud desperate [if diaper lover >= 3]growl from your tummy[otherwise]gurgle from your bladder[end if] renders any reluctant reply you try to mumble inaudible.  Before you know what has happened you are lying on the adult-sized changing table and your underwear is being pulled away, exposing your [genitals] to row upon row of silently judging passengers.  It's so humiliating that you are actually relieved when the comfy cushioned nappy is taped up nice and snug around your bottom.  Your thighs are now forced wide apart just like the air hostess's, but it's better than being naked.";
	say "You get up off the changing table and it swings away back into its compartment on one side wall.  You begin to waddle your way back to your seat when that same shrill authoritative voice stops you.[line break][second custom style]'Where do you think you're going, little one?'[line break][variable custom style]'B...back to my seat...'[roman type] you mumble submissively like a child who has been caught with their hand in the cookie jar.[line break][second custom style]'Oh no you don't.  There's no way you can fit in a normal cabin seat now your legs are stuck so far apart.  For safety regulations you need to sit in one of our specially designed seats.'[roman type]  She presses another button and a giant baby seat like you'd find in a car appears from behind a hidden panel at the front of the cabin next to the cockpit door, facing towards the rest of the plane.[line break][variable custom style]'What? No...'[roman type] you mumble, but you are already being led to sit in this playfully patterned kiddie chair, where you are strapped in tight with a sturdy four-way seatbelt that fastens over your chest.  You look up from the fastening in horror as you realise you are essentially left stuck fully on display facing all the other passengers, who are looking at you with pure disgust and disappointment.  Without another word the air hostess leaves you, waddling down the aisle towards the back of the craft.";
	say "Moments later the inevitable begins.  The floodgates open and the whole airplane fills with the sound of [if diaper lover >= 3]your bottom as your tummy reaches its limit of patience[otherwise]hissing as your bladder begins to go of its own accord, just as if you were a real baby[end if].  You cover your eyes in shame, unable to meet the judging gaze of any of the adults in front of you as your large nappy begins to bulge and expand even further, providing damning visible evidence of your accident.[line break][first custom style]'Honestly, how pathetic,'[roman type] you hear one man in the front row mutter.  You moan through your pacifier as you continue to fail to hold it in.[line break][variable custom style]Wait... pacifier?![roman type][line break]You notice for the first time that you are wearing a pretty white pacifier in your mouth.  [variable custom style]It must have been there all along, I guess?[roman type][line break]You struggle to remember what you were doing.  Oh that's right, you were pissing [if diaper lover >= 3]and pooping [end if]your nappy in front of all the grown-ups, while sucking on your paci like a good baby.  After what feels like a year you finally finish going.  Your heavy sagging diaper sits beneath you like a large beanbag, bulging out in all directions.  You feel the warmth emanating from your padding up into your bum cheeks and loins.  It actually feels really comforting and soothing.  You make a loud satisfied sigh as you squirm into a comfortable position in your baby seat and relax as you drift off to sleep.";
	let D be a random plain diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D;
	let P be a random white pacifier;
	unless P is worn:
		destroy P;
		repeat with B running through worn ballgags:
			destroy B;
		summon P cursed;
	if rectum > 1, now rectum is 1;
	now the bladder of the player is 0;
	now the urine-soak of D is the soak-limit of D;
	if diaper lover >= 4, now the mess of D is 30;
	let F be a random floofy sissy baby dress;
	let B be a random bib;
	if a random number between 8 and 25 < the delicateness of the player:[dice roll to continue]
		say "[paragraph break]...[paragraph break]You open your eyes.  You expect to find yourself back in the [location of the player]... but instead you're still in your baby seat in the airplane.  [second custom style]Maybe this is real life and the dungeon was a dream?  [roman type]Your thoughts are interrupted by an announcement from the hostess.[line break][second custom style]'Attention potty trained passengers, I'm happy to announce we have repaired our toilet in just ten minutes. Feel free to use it at any time. Of course, the one baby who couldn't hold in their [if diaper lover >= 3]poopies for 10 minutes cannot be trusted with it, we wouldn't want it to break again[otherwise]pee-pee for 10 minutes cannot be trusted to make it on time, so we'll be keeping them in diapers for the rest of the journey[end if]!' [roman type]A fresh wave of embarrassment washes over you after hearing this. [line break][variable custom style]I only needed to hold it for 10 minutes, but I went for the diapers right away. Maybe I do need these...[roman type][line break]Speaking of your diaper, you could really use a change, but you need to get the hostess to help you.  Looking at the side of your seat, you see a big pink flight attendant call button, and push it without a second thought. You suddenly spit out your pacifier by accident, and this is the last straw - some uncontrollable emotional turbulence inside you makes you begin crying, to the annoyance of the majority of passengers in front of you, and the bemusement of the rest. Of course, you are too caught up in your emotions to notice or care about their reactions.  By the time the hostess arrives, less than a minute after you started crying, your face and clothes are covered in tears and snot.  It may have been less than a minute, but it felt like an eternity to you.";
		say "The hostess replaces your pacifier, and you can't believe how quickly it helps you focus and calm down.[line break][second custom style]'Is there anything else you need baby?'[roman type][line break]You shake your head. She already gave you your pacifier, [second custom style]which was the whole reason I was crying, right?  [roman type]What else could you need?[line break]You are jolted by a hand groping your crotch - the hostess is giving you a diaper check! Once again, the hostess makes sure everyone in the plane hears her announcement.[line break][second custom style]'Looks like our baby here had a big accident!'[roman type][line break][if diaper lover >= 3]Of course, anyone that didn't hear or see your 'accident' could easily smell it[otherwise]It's doubtful anyone has failed to notice your 'accident'[end if], but hearing her declare it so openly still manages to make you shudder with shame.";
		say "The hostess lowers the changing table, unlocks the seatbelt and helps you out, carrying you over to the changing table with little effort. You put up no resistance and focus instead on sucking on your pacifier, drowning out the cries of disgust and laughter as your diaper is untaped. The hostess takes an agonizingly long time wiping you down, preparing not just one but [italic type]two[roman type] diapers for you to wear, and first powdering you before finally taping on the impossibly thick combination of diapers. However, she isn't done yet - before you can even try to get up, she begins undressing you, taking off your sweatpants and T-shirt, leaving you lying in front of the plane in nothing but your double diapers. You actually feel relief when she replaces your clothes with a white and yellow dress with pink frills and a bib, not realizing that your new dress doesn't even reach the waistband of your diapers.";
		say "After all this you are finally let down from the changing table. As the hostess goes to retract the changing table you get a sudden inspiration as to how you can get back at the nasty woman, and crawl over to her (as your diapers prohibit you from walking) and lift her skirt, planning to expose an inevitably used diaper to the onlookers.  But instead you (and all the other passengers) see that she is wearing slim, sexy, black, lacy panties. [second custom style]'No! Bad baby!' [roman type]She yells as she slaps your hand away with ease and places you back on the changing table, only now facing down, with your legs dangling off the side.[line break][variable custom style]'I t-thought you weuh weah-wing diapies!'[roman type] Your words sound all wrong as you yell through your pacifier, meaning your attention is on your own mouth and not on the hand that is raised for the first strike of many in a spanking session"; [Picture here?]
		say "Of course, your ignorance does not last long. A seemingly impossibly strong strike lands on your rear, your gigantic diapers somehow doing little to save you from the pain. You can already feel tears welling up in your eyes.[line break][second custom style]'Did you really think I needed those?'[roman type][line break]Another strike[line break][second custom style]'Not everyone is a pathetic baby like you!'[roman type][line break]Another strike[line break][second custom style]'In fact, I can't think of anyone more pathetic than you!'[roman type][line break]Another strike[line break][second custom style]'Do you know why I was wearing those?'[roman type][line break]Another strike[line break][second custom style]'We wanted to demonstrate how humiliating they were to everyone!'[roman type][line break]Another strike[line break][second custom style]'It was a warning, not the invitation you took it as!'[roman type][line break]Another strike[line break][second custom style]'I don't know what would be worse;'[roman type][line break]Another strike[line break][second custom style]'If you went up right away because you wanted this'[roman type][line break]Another strike[line break][second custom style]'Or if you really can't hold your [if diaper lover >= 3]poopies[otherwise]pee pee[end if] for even 5 minutes.'[roman type][line break]Another strike[line break][second custom style]'Who am I kidding, it's probably both!'[roman type][line break]Her tirade, and her spankings, continue for what seem like forever. By the time she finally finishes your eyes are almost certainly out of tears to drop, your face and bib completely covered in tears and snot, and your voice completely shot from your non-stop bawling. [second custom style]'Are you going to be a good baby now?'[roman type] You nod immediately - you never want to disobey her ever again.";
		say "Once again you are lowered from the changing table, which is at last retracted. However, instead of putting you back in your seat, the hostess presses yet another button and a high chair appears to the right hand side of it. She places you in the high chair, securing and locking straps matching those of the car-seat, and then locking the high chair's tray in place, completely trapping you inside. Even with the protection of two massive diapers and the extremely soft pink padding of the high chair, just sitting down causes pain to shoot through your poor, sore bottom, soothed only by a round of intense sucking on your pacifier. That is short-lived however, as the hostess removes your paci and plonks a large baby bottle filled with milk and a giant bowl of brown mush on your tray. As the other passengers are served steaks and alcohol, you are instructed to dig into your baby food with your bare hands and not to use the spoon left on the tray which is for 'bigger girls only'. As you finish drinking your milk a [if diaper lover >= 3]rumble in your tummy[otherwise]pang in your bladder[end if] tells you that you already need to go potty again. You almost call for your new Mommy but you stop yourself, thinking that this is the perfect opportunity to impress her by proving you don't need her help for everything!  This is made all the easier, you realize, by the fact that you are [italic type]wearing[roman type] your potty![line break]";
		say "[variable custom style]'Look everyone, I'm going potty like a big [if the player is male and the bimbo of the player < 10]boy[otherwise]girl[end if]!'[roman type][line break]After proudly announcing your intentions, with a smile on your face you [if diaper lover >= 3]let out a very audible grunt, followed by a variety of unmentionable sounds, making it fully obvious what was going on inside your diapers, as if their rapid expansion did not already tell that story[otherwise]scrunch up your face, pushing your bladder as hard as you can, leading to a very loud hissing, making it certain everyone else on the plane knows what was happening in your diapers, although it would be hard to miss the deep yellow forming on the outside[end if]. When your bathroom break is over, you continue feeding yourself as if nothing had happened, that is until the mixed but universally intense reactions of your audience begin to register.  [variable custom style]Wait, why did I think that would make me look like a grown up?![roman type][line break]";
		say "Keeping your head down with shame, you busy yourself with finishing your meal and afterwards licking what you can off of your hands.  You fail to notice the state of your bib, where almost a quarter of the food has ended up. You are then taken out of your seat by your Mommy, who replaces your pacifier and playfully pats your diapers, clearly having decided you do not need – or more likely, don’t [i]deserve[/i] - a change. Instead, you are once again locked into the baby airplane seat. After securing you, the hostess make yet another announcement.[line break][second custom style]'Passengers, our in-flight entertainment will now begin, please put on your headphones if you would like to listen!'[roman type][line break]Behind you a movie begins to play, one about robots just released in theatres, probably selected by the airline due to its length. Most people put on their headphones to listen in. You too are given headphones (and no choice about whether to wear them), although what you were given to listen to is about as far removed from a complex R rated movie as possible. You are graced with soothing nursery rhymes, with various phrases spoken in your voice repeating throughout, though for some reason you struggle to pay attention to what is being said. To go along with the auditory entertainment you are given a tray filled with baby blocks (along with subtle threats about what will happen if you don't play with them), so you immediately go to town with them, smashing them around, and spelling whatever comes to mind. As you tire yourself out sucking your pacifier and playing with the blocks, you find yourself slowly dozing off with a blank smile on your face.";[picture of embarrassing phrase spelled out with baby blocks?]
		unless F is worn:
			destroy F;
			repeat with X running through worn dresses:
				destroy X;
			repeat with X running through worn skirts:
				destroy X;
			summon F cursed;
		unless B is worn:
			destroy B;
			summon B cursed;
		humiliate 1000;
		DiaperAddictUp 2;
		if diaper lover >= 3, now rectum is 10;
		now the bladder of the player is 10;
	say "You open your eyes.  You are lying on your back in the [location of the player], but now wearing a [D][if F is worn], [F][end if][if B is worn], [printed name of B][end if] and [P].  The [ShortDesc of D] feels extremely heavy[if the player is bursting], you feel desperate for the toilet[end if], and you feel extremely fatigued.  The [M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	increase incontinence by 1;
	DiaperAddictUp 2;
	humiliate 1500.

Section - TV Nightmare

boogeymonster-nightmare-tv is a boogeymonster-nightmare.

Figure of boogeymonster tv cutscene is the file "cutscene-boogeymonster3.png".

To compute punishment of (N - boogeymonster-nightmare-tv):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and find yourself sitting on the sofa next to your old schoolmates.  There's a good few of you in the room at this sleepover, and you're watching a movie on TV with popcorn and hot chocolate and all that good stuff.  As the movie makes way for yet another commercial break you notice who it is next to you: Jessica, your Goddess of a [if the player is female and TG fetish is 0]bi-curious [end if]high school crush - the popular girl who for some reason gave you the time of day even though you were just a nerdy little dweeb.  Usually you just worshipped her from afar but here she is and your arms are [italic type]touching!  [roman type]You start to panic inwardly, working out what you should say to impress her and not sound like an idiot.  You won't miss your chance again.  You won't allow your next years to be filled with regret and thoughts of 'what if?'  You cough awkwardly.";
	say "[variable custom style]'Jessica, I love y...'[roman type]  As you begin to speak, and her beautiful perfect face turns to look at you, you are interrupted by one of the mean popular boys sitting nearby.[line break][first custom style]'Hahaha, that [if the player is female and TG fetish is 0]girl[otherwise]guy[end if] is wearing a diaper!  Hey wait, isn't that you, [NameBimbo]?!'[roman type][line break]You turn slowly to look at the TV and are horrified by what you see.  An advert for diapers for teenage bed-wetters is playing.  The teenage [if the player is female and TG fetish is 0]girl[otherwise]boy[end if] in front of the camera is in a giant baby playpen with soft safety walls in view, preventing escape.  [if the player is female and TG fetish is 0]She[otherwise]He[end if] is wearing some stretchy childish blue pyjamas.  Worse still, extremely visible underneath the PJ bottoms is the biggest, thickest diaper you've ever seen in your life.  [if the player is female and TG fetish is 0]Her[otherwise]His[end if] legs are stuck wide apart and as [if the player is female and TG fetish is 0]she moves she[otherwise]he moves he[end if] is forced into a toddler-esque waddle. [if the player is female and TG fetish is 0]She[otherwise]He[end if] looks extremely happy and frolics around the screen showing off [if the player is female and TG fetish is 0]her[otherwise]his[end if] obscene diaper bulge.  The name of the diaper brand [second custom style]'Swaddles'[roman type] is plastered in big pink letters as well as the slogan [second custom style]'Designed to swaddle the biggest babies in your life'[roman type].  And [if the player is female and TG fetish is 0]she[otherwise]he[end if] has your face!  A few people are laughing.[line break][variable custom style]'That's not me, it can't be me, I never did no diaper advert!'[roman type]  You protest in a panicked voice.[line break]The mean boy replies.  [first custom style]'But then why are you wearing that clothing now?'[line break][variable custom style]'Huh?'[roman type][line break]You look down and see you're now wearing the exact same outfit - thick baby blue cotton pyjamas and a super-massive diaper.  You try to squeeze your thighs together to block any view of the embarrassing crotch bulge but the padding is so thick you can't move your legs at all, they're stuck out to the sides!  Pretty much everyone is laughing now.  Jessica looks at you with confusion and shock in her eyes, as if you have just unexpectedly betrayed her trust.  Her voice sounds accusatory.[line break][first custom style]'What is going on, [NameBimbo]?'[line break][variable custom style]'J-Jessica, I can explain!'[roman type]  You stutter as you try to stand up from the sofa, wobbling as the diaper makes it difficult to keep your balance.  You stumble forward and catch yourself from falling by placing your hand on the TV screen.";
	say "Suddenly the laughter seems more muted and distant.  You look up and see the TV screen has become a huge pane of glass, and on the other side of the glass are all your friends, pointing and laughing.  You check behind you and see the walls of a baby play pen.  It's immediately clear to you what's happened - you've somehow become trapped inside the TV!  You bang against the glass but all your classmates just keep laughing at your awful situation, with Jessica looking like she's on the verge of angry tears.";
	if images visible is 1, display figure of boogeymonster tv cutscene;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "You watch the wording on the glass keep changing to say more and more embarrassing things.  With each new slogan, the laughter of your peers grows more powerful and out of control.[paragraph break][second custom style]CAN COPE WITH THE BIGGEST BED-WETTERS[paragraph break]ENOUGH BULK FOR THE HULK[paragraph break]FOR MEGA-BABIES ONLY[roman type][paragraph break]Your tears arrive as the humiliation and fear overwhelms your senses.  You're so scared, you begin to wet yourself.  Somehow, all your friends can instantly tell you're going potty in your pants.  Several of those who were standing collapse onto their knees clutching their stomachs, unable to stay upright because they're laughing so hard.  Jessica herself begins crying, and her eyes say 'you're dead to me'.  She looks and sounds extremely pissed off.  [second custom style]'How could you, [NameBimbo]?  I thought you were about to tell me you love me, but instead you show me your true colours.  You're really just a big bedwetting baby.  And to think I was considering giving myself to you.  How disgusting.'[roman type][line break]She moves right up to the TV screen until all you can see is her head.  You realise you are doll-sized compared to her giant angry face.  She continues her tirade of abuse. [second custom style]'Why would I want to date a pathetic little kid like you when I can kiss a sexy, hunky adult like James?  You were such a fool to think we could ever be together.  You mean NOTHING to me.'[roman type][paragraph break][variable custom style]'Noooooo!'[roman type]  There's nothing else you can find to say as you continue peeing inside your new soggy nappy, falling to your knees yourself as your emotional defeat drains all your strength and energy.  The scene fades to black.";
	let D be a random elephant diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D cursed;
	let P be a random pyjama bottoms;
	if P is actually summonable:
		destroy P;
		summon P cursed;
	now the bladder of the player is 0;
	now the urine-soak of D is the soak-limit of D;
	say "You open your eyes.  You are lying on your back in the [location of the player], but now wearing a [D][if P is worn] and [P][end if].  The [ShortDesc of D] feels extremely heavy, and you feel extremely fatigued.  The [M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	if the raw delicateness of the player < 14, increase the raw delicateness of the player by 3;
	increase incontinence by 1;
	DiaperAddictUp 1;
	humiliate 1500.




Chapter 3 - Damage

To compute damage of (M - a boogeymonster):
	if the health of M > 0:
		if M is uninterested:
			say "It growls viciously!  Uh-oh...";
			now M is interested;
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "It snarls through gnashing teeth!";
			otherwise say "It seems to be breathing more heavily, as if it is getting tired!";
	otherwise:
		compute death of M;

To compute unique death of (M - a boogeymonster):
	let B be a random off-stage tincture of strength;
	say "The [M] falls to the ground, defeated.  [if B is tincture]He dropped a [printed name of B]![end if]";
	if B is tincture:
		now B is in the location of the player;
		compute autotaking B.

To uniquely destroy (M - a boogeymonster):
	now M is captive.

To loot (M - a boogeymonster):
	let X be a random off-stage plentiful ring;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.


Boogeymonster ends here.
