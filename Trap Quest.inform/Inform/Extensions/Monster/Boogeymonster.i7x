Boogeymonster by Monster begins here.

boogeymonster is a dungeon boss. boogeymonster is neuter. boogeymonster is caged. The leftover-type of boogeymonster is usually 107.

boogeymonster is in Dungeon36. Figure of boogeymonster is the file "NPCs/Bosses/boogeymonster1.png". The text-shortcut of boogeymonster is "boo". Understand "boogey" as boogeymonster.

To say ShortDesc of (M - boogeymonster):
	say "boogeymonster".

To say MediumDesc of (M - boogeymonster):
	say "boogeymonster[if M is caged] (caged)[end if]".

To decide which figure-name is the monster-image of (M - boogeymonster):
	decide on figure of boogeymonster.

To say MonsterDesc of (M - boogeymonster):
	say "This giant tentacle monster looks like something straight out of a nightmare.";
	if M is caged, say DungeonBossCageDesc of M.

To say DungeonBossCageDesc of (M - boogeymonster):
	if M is caged, say "[big he of M] is currently trapped within a giant steel birdcage, which is suspended off the ground by a tough-looking chain. [big he of M] can see and look around with ease, capable of swinging [himself of M] a few inches in any direction if [he of M] feels provoked, but unable to inflict any real harm. Looking up at the chain that keeps the cage suspended, you notice that it doesn't appear to coordinate to any device or [bold type]lever[roman type] in the room. To lower [him of M] and open the cage, you'd need to find something elsewhere. [if mystical amulet is in the location of M][line break]Underneath [his of M] feet, you can see a valuable-looking amulet.[end if]";
	otherwise say "The cage is open and empty[if mystical amulet is in Dungeon36][line break], save for a valuable-looking amulet.[end if]".

To set up (M - boogeymonster):
	if M is alive: [We don't want to reset the boogeymonster if he's dead]
		reset M;
		now the monstersetup of M is 1;
		now the raw difficulty of M is the starting difficulty of M;
		now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - boogeymonster):
	decide on 12.

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
	say "The corpse of boogeymonster lies on the ground. The back of [his of boogeymonster] head is missing, and a huge bloody hole is all that remains of [his of boogeymonster] brain.[line break]".

Part 1 - Perception

To compute perception of (M - boogeymonster):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed][one of], even though you're not completely sure if [he of M] has an intelligent mind behind [his of M] one giant blue eye.[or].[stopping][otherwise]![end if]";
	anger M;
	if M is unleashed:
		say "[big he of M] does not look friendly. In fact, you can see some malice in [his of M] giant eye.";
	otherwise:
		say "With a fearsome roar, several strong tentacles quickly lash out through the gaps in the cage, trying to grab you.";
		FearUp 15;
		say "Thankfully, [NameDesc of M]'s tentacles can't reach you. You hate to think what might happen if they could.".

To say BecomesBoredFlav of (M - boogeymonster):
	say "[BigNameDesc of M] seems to lose interest in you for now.".

Part 2 - Motion, Seeking and Sleeping

To compute monstermotion of (M - boogeymonster):
	compute room leaving of M;
	MonsterStomp M.

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
	say "You try to dodge [NameDesc of M][']s tentacle, but it still manages to land a glancing blow! Ouch!";
	BodyRuin 1.

To decide which body part is the painful-part of (M - boogeymonster):
	let B be a random body part;
	if B is a fuckhole or B is scrotum, now B is hips;
	if B is hair, now B is breasts;
	if B is not hips and B is not breasts, now B is belly;
	decide on B.

To compute (M - boogeymonster) attacking (C - a clothing):
	say "[BigNameDesc of M] tears off your [printed name of C]!";
	destroy C.

Chapter 2 - Nightmares

boogeymonster-nightmare is a kind of diaper punishment. The priority of boogeymonster-nightmare is 5.

Definition: boogeymonster-nightmare (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	decide yes.

To say NightmareStartFlav:
	say "[BigNameDesc of current-monster]'s tentacles loom over your body and then envelops it, shrouding you in darkness. Suddenly, you are surrounded by a blue light and you hear a voice in your head.[line break][first custom style]'I AM YOUR NIGHTMARE...'[roman type][line break]And then the ground disappears, and [one of]you are floating through nothingness... or are you just hovering still? It's hard to tell[or]once again you are sent through the darkness to another reality[stopping]. ";

Section - School Nightmare

boogeymonster-nightmare-school is boogeymonster-nightmare.

The priority of boogeymonster-nightmare-school is 3. [This is super harsh so doesn't ever happen first. It happens after all the other eligible ones have happened.]

Figure of boogeymonster school cutscene is the file "Special/Cutscene/cutscene-boogeymonster1.jpg".

To compute punishment of (P - boogeymonster-nightmare-school):
	now the priority of P is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and see you're at school! You look around and see all your old school-friends. Why are they grinning at you? Why are you at the front of the class?[line break][first custom style]'Are you SURE you don't need to go potty, [NameBimbo]?'[roman type][line break]Mrs. Windsor, your old form tutor, sounds unnecessarily judgemental. You reply without thinking.[line break][variable custom style]'What? No, I don't need to go, why do you ask...'[roman type][line break]You look down at yourself and are shocked by what you see. You're wearing striped red and white stockings, a tiny white girly dress and a huge thick diaper. Your legs are duct-taped together, and the duct-tape is holding a magic wand against your crotch. You yelp as you realise you have lost your balance, and fall to the ground in front of your classmates. They can see everything. The magic wand begins to buzz and whirr, stimulating you powerfully through your padding.[line break]Your teacher interrupts your thoughts.[line break][first custom style]'What do you think are you are doing, you stupid child! Get that ridiculous machine off of yourself right now! This is not appropriate.'[roman type][line break][variable custom style]'Yes Ma'am,'[roman type][line break]you meekly reply and move your hands to yank at the tape around your legs. Suddenly you realise, your wrists are duct-taped to the ground! When did that happen?!";
	appropriate-cutscene-display figure of boogeymonster school cutscene;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "The buzzing grows and you can feel an orgasm building.[line break][variable custom style]'Oh no, I can't stop it!'[roman type][line break]At that same moment, you feel another need grow within you, and within seconds your body is cramping, since you desperately need the loo.[line break][variable custom style]'Mrs. Windsor please help me, I need the loo!'[line break][first custom style]'You liar, you just told me you don't need the potty!'[roman type][line break]She sounds very angry, and your whole class is laughing at you. It's at this moment that you lose control of your body, and audibly fill your nappy in front of everyone. Mrs. Windsor is chastising you but you don't even register the words as you now also start to cum, thrashing around on the ground as you [if diaper messing >= 3]mess[otherwise]wet[end if] yourself and cum at the same time. Your tongue sticks out of your mouth and your eyes roll into the back of your head as you continue to struggle on the ground like a worm[if diaper messing >= 3], not succeeding at anything except pushing against the warm mush appearing in the back of your diaper[end if].";
	say "Your classmates are all standing now, crowding around you as they laugh and tease you. Some even tickle you! From amidst the madness you hear your teacher's voice again.[line break][first custom style]'What a disgrace! If you really can't control yourself then I am not afraid to make you walk home like this as punishment. Do NOT orgasm in front of us again, [NameBimbo].'[roman type][line break]It doesn't matter what she says, you're already building towards your second peak. The tickling by the other students isn't helping, either: it just adds to the pleasure! You cum hard, wailing like a little girl as you do. [if diaper messing >= 3]You didn't even think it was possible, but your bottom is still pumping out poopies, your large diaper growing even bigger between your legs as your bowels continue to empty. [end if]Your body continues to climax and [if diaper messing >= 3]empty itself[otherwise]urinate[end if] over and over, until you close your eyes and put your hands over your ears, screaming and wishing you could just disappear.";
	let D be a random largish diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D;
	now the bladder of the player is 0;
	fully clean D;
	UrineSoakUp D by the soak-limit of D;
	if diaper messing >= 3, MessSet D to 30;
	SexAddictUp 3;
	say "And then you do - or rather, the scene disappears. You are lying on your back in the [location of the player], but now wearing a [D]. It feels impossibly heavy, and you feel extremely fatigued. [BigNameDesc of M] is nowhere to be seen.";
	reset rectum after messing;
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
			interest N;
			say "[big he of N] looks unfriendly...".

Section - Aeroplane Nightmare

boogeymonster-nightmare-aeroplane is boogeymonster-nightmare.

The priority of boogeymonster-nightmare-aeroplane is 4.

Figure of boogeymonster aeroplane cutscene is the file "Special/Cutscene/cutscene-boogeymonster2.jpg".

To compute punishment of (N - boogeymonster-nightmare-aeroplane):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and find yourself sitting in an aeroplane seat. Before you can even take a proper look at your surroundings, a voice comes over the tannoy.[line break][first custom style]'Good afternoon everyone, this is your pilot speaking. I hope you're enjoying our 14 hour non-stop flight to Sydney. Bad news I'm afraid - the toilet has just broken down! We've also just been warned there are terrible delays with the arrival gates at Sydney and we may be stuck on the runway for anywhere from six to eight hours once we arrive. But never fear, we have prepared for this and are deploying the emergency diapers as we speak. If you're such a little baby that you can't control your [if diaper messing >= 3]tum-tums[otherwise]pee-pee[end if], we recommend you follow our air hostess['] example and get comfy in one of our extra-thick Snuggies.'[roman type][line break]As soon as the pilot finishes speaking you feel your [if diaper messing >= 3]belly begin to rumble as a huge pressure builds in both your bladder and bowels[otherwise]bladder start to swell and swell until it is ready to burst[end if]. You squeak meekly as you look to the front of the plane where an air hostess has wheeled out a tray with a package stacked full of what looks like the largest, thickest diapers you have ever encountered. Her uniform would look normal if it wasn't for the fact that the skirt is ridiculously short and exposes pretty much the entirety of the giant nappy she's wearing underneath. Its bottom nearly reaches her knees, and it's forcing her thighs wide apart.";
	appropriate-cutscene-display figure of boogeymonster aeroplane cutscene;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "Another angry [if diaper messing >= 3]growl from your tummy[otherwise]spasm from your bladder[end if] reminds you of your current predicament. You can't help it - you have to get up and make your way to the front of the aircraft, turning redder and redder as you see the judging stares of your fellow passengers. It seems to take a year for you to make it to the front of the cabin where you whisper as quietly as you can to the diapered hostess that you're going to have to take them up on their emergency solution.[line break][second custom style]'Uh-oh, this little [if the player is gendered male and the bimbo of the player < 10]boy[otherwise]girl[end if] needs to go potty!'[roman type][line break]The air hostess announces in a very loud voice to the entire plane. Your face turns a beetroot shade of red.[line break][second custom style]'Well, well, well, I didn't think anyone would be such a pathetic baby that they wouldn't even be able to hold it in for a few minutes! Or maybe you just love the idea of wearing big thick diapers, huh?'[roman type][line break]You open your mouth to protest but nothing comes out. She's wearing a diaper herself! How can she say such mean things about you? The evil lady pushes a button and a giant changing table swings out, unfolding down in front of you.[line break][second custom style]'Hop on then, little one!'[roman type][line break]Now you get your voice back.[line break][variable custom style]'W-w-wait a minute, I can't put it on in front of all these strangers... Why is this thing out here?!'[roman type][line break][second custom style]'Well it's not like there's anywhere else it could fit, is there? And no of course you won't be putting it on in front of these strangers... *I* will be putting it on you in front of all these strangers. You don't have the proper training.'[roman type][paragraph break]Another loud desperate [if diaper messing >= 3]growl from your tummy[otherwise]gurgle from your bladder[end if] renders any reluctant reply you try to mumble inaudible. Before you know what has happened you are lying on the adult-sized changing table and your underwear is being pulled away, exposing your [genitals] to row upon row of silently judging passengers. It's so humiliating that you are actually relieved when the comfy cushioned nappy is taped up nice and snug around your bottom. Your thighs are now forced wide apart just like the air hostess's, but it's better than being naked.";
	say "You get up off the changing table and it swings away back into its compartment on one side wall. You begin to waddle your way back to your seat when that same shrill authoritative voice stops you.[line break][second custom style]'Where do you think you're going, little one?'[line break][variable custom style]'B... back to my seat...'[roman type][line break]you mumble submissively like a child who has been caught with their hand in the cookie jar.[line break][second custom style]'Oh no you don't. There's no way you can fit in a normal cabin seat now your legs are stuck so far apart. For safety regulations you need to sit in one of our specially designed seats.'[roman type][line break]She presses another button and a giant baby seat like you'd find in a car appears from behind a hidden panel at the front of the cabin next to the cockpit door, facing towards the rest of the plane.[line break][variable custom style]'What? No...'[roman type][line break]you mumble, but you are already being led to sit in this playfully patterned kiddie chair, where you are strapped in tight with a sturdy four-way seatbelt that fastens over your chest. You look up from the fastening in horror as you realise you are essentially left stuck fully on display facing all the other passengers, who are looking at you with pure disgust and disappointment. Without another word the air hostess leaves you, waddling down the aisle towards the back of the craft.";
	say "Moments later the inevitable begins. The floodgates open and the whole aeroplane fills with the sound of [if diaper messing >= 3]your bottom as your tummy reaches its limit of patience[otherwise]hissing as your bladder begins to go of its own accord, just as if you were a real baby[end if]. You cover your eyes in shame, unable to meet the judging gaze of any of the adults in front of you as your large nappy begins to bulge and expand even further, providing damning visible evidence of your accident.[line break][first custom style]'Honestly, how pathetic,'[roman type][line break]you hear one man in the front row mutter. You moan through your pacifier as you continue to fail to hold it in.[line break][variable custom style]Wait... pacifier?![roman type][line break]You notice for the first time that you are wearing a pretty yellow pacifier in your mouth.[line break][variable custom style]It must have been there all along, I guess?[roman type][line break]You struggle to remember what you were doing. Oh that's right, you were pissing [if diaper messing >= 3]and pooping [end if]your nappy in front of all the grown-ups, while sucking on your paci like a good baby. After what feels like a year you finally finish going. Your heavy sagging diaper sits beneath you like a large beanbag, bulging out in all directions. You feel the warmth emanating from your padding up into your bum cheeks and loins. It actually feels really comforting and soothing. You make a loud satisfied sigh as you squirm into a comfortable position in your baby seat and relax as you drift off to sleep.";
	let D be plain-massive-diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D;
	if yellow-pacifier is not worn:
		destroy yellow-pacifier;
		repeat with B running through worn clothing penetrating face:
			destroy B;
		summon yellow-pacifier cursed with silent quest;
	now the bladder of the player is 0;
	fully clean D;
	UrineSoakUp D by the soak-limit of D;
	if diaper messing >= 4, MessSet D to 30;
	let F be a random floofy sissy baby dress;
	let B be a random bib;
	reset rectum;
	if a random number between 8 and 25 < the delicateness of the player:[dice roll to continue]
		say "[paragraph break]...[paragraph break]You open your eyes. You expect to find yourself back in the [location of the player]... but instead you're still in your baby seat in the aeroplane.[line break][second custom style]Maybe this is real life and the dungeon was a dream? [roman type][line break]Your thoughts are interrupted by an announcement from the hostess.[line break][second custom style]'Attention potty trained passengers, I'm happy to announce we have repaired our toilet in just ten minutes. Feel free to use it at any time. Of course, the one baby who couldn't hold in their [if diaper messing >= 3]poopies for 10 minutes cannot be trusted with it, we wouldn't want it to break again[otherwise]pee-pee for 10 minutes cannot be trusted to make it on time, so we'll be keeping them in diapers for the rest of the journey[end if]!' [roman type]A fresh wave of embarrassment washes over you after hearing this.[line break][variable custom style]I only needed to hold it for 10 minutes, but I went for the diapers right away. Maybe I do need these...[roman type][line break]Speaking of your diaper, you could really use a change, but you need to get the hostess to help you. Looking at the side of your seat, you see a big pink flight attendant call button, and push it without a second thought. You suddenly spit out your pacifier by accident, and this is the last straw - some uncontrollable emotional turbulence inside you makes you begin crying, to the annoyance of the majority of passengers in front of you, and the bemusement of the rest. Of course, you are too caught up in your emotions to notice or care about their reactions. By the time the hostess arrives, less than a minute after you started crying, your face and clothes are covered in tears and snot. It may have been less than a minute, but it felt like an eternity to you.";
		say "The hostess replaces your pacifier, and you can't believe how quickly it helps you focus and calm down.[line break][second custom style]'Is there anything else you need baby?'[roman type][line break]You shake your head. She already gave you your pacifier,[line break][second custom style]which was the whole reason I was crying, right? [roman type][line break]What else could you need?[line break]You are jolted by a hand groping your crotch - the hostess is giving you a diaper check! Once again, the hostess makes sure everyone in the plane hears her announcement.[line break][second custom style]'Looks like our baby here had a big accident!'[roman type][line break][if diaper messing >= 3]Of course, anyone that didn't hear or see your 'accident' could easily smell it[otherwise]It's doubtful anyone has failed to notice your 'accident'[end if], but hearing her declare it so openly still manages to make you shudder with shame.";
		say "The hostess lowers the changing table, unlocks the seatbelt and helps you out, carrying you over to the changing table with little effort. You put up no resistance and focus instead on sucking on your pacifier, drowning out the cries of disgust and laughter as your diaper is untaped. The hostess takes an agonisingly long time wiping you down, preparing not just one but [italic type]two[roman type] diapers for you to wear, and first powdering you before finally taping on the impossibly thick combination of diapers. However, she isn't done yet - before you can even try to get up, she begins undressing you, taking off your sweatpants and T-shirt, leaving you lying in front of the plane in nothing but your double diapers. You actually feel relief when she replaces your clothes with a white and yellow dress with pink frills and a bib, not realising that your new dress doesn't even reach the waistband of your diapers.";
		say "After all this you are finally let down from the changing table. As the hostess goes to retract the changing table you get a sudden inspiration as to how you can get back at the nasty woman, and crawl over to her (as your diapers prohibit you from walking) and lift her skirt, planning to expose an inevitably used diaper to the onlookers. But instead you (and all the other passengers) see that she is wearing slim, sexy, black, lacy panties.[line break][second custom style]'No! Bad baby!' [roman type][line break]She yells as she slaps your hand away with ease and places you back on the changing table, only now facing down, with your legs dangling off the side.[line break][variable custom style]'I t-thought you weuh weah-wing diapies!'[roman type][line break]Your words sound all wrong as you yell through your pacifier, meaning your attention is on your own mouth and not on the hand that is raised for the first strike of many in a spanking session."; [Picture here?]
		say "Of course, your ignorance does not last long. A seemingly impossibly strong strike lands on your rear, your gigantic diapers somehow doing little to save you from the pain. You can already feel tears welling up in your eyes.[line break][second custom style]'Did you really think I needed those?'[roman type][line break]Another strike[line break][second custom style]'Not everyone is a pathetic baby like you!'[roman type][line break]Another strike[line break][second custom style]'In fact, I can't think of anyone more pathetic than you!'[roman type][line break]Another strike[line break][second custom style]'Do you know why I was wearing those?'[roman type][line break]Another strike[line break][second custom style]'We wanted to demonstrate how humiliating they were to everyone!'[roman type][line break]Another strike[line break][second custom style]'It was a warning, not the invitation you took it as!'[roman type][line break]Another strike[line break][second custom style]'I don't know what would be worse;'[roman type][line break]Another strike[line break][second custom style]'If you went up right away because you wanted this'[roman type][line break]Another strike[line break][second custom style]'Or if you really can't hold your [if diaper messing >= 3]poopies[otherwise]pee pee[end if] for even 5 minutes.'[roman type][line break]Another strike[line break][second custom style]'Who am I kidding, it's probably both!'[roman type][line break]Her tirade, and her spankings, continue for what seem like forever. By the time she finally finishes your eyes are almost certainly out of tears to drop, your face and bib completely covered in tears and snot, and your voice completely shot from your non-stop bawling.[line break][second custom style]'Are you going to be a good baby now?'[roman type][line break]You nod immediately - you never want to disobey her ever again.";
		say "Once again you are lowered from the changing table, which is at last retracted. However, instead of putting you back in your seat, the hostess presses yet another button and a high chair appears to the right hand side of it. She places you in the high chair, securing and locking straps matching those of the car-seat, and then locking the high chair's tray in place, completely trapping you inside. Even with the protection of two massive diapers and the extremely soft pink padding of the high chair, just sitting down causes pain to shoot through your poor, sore bottom, soothed only by a round of intense sucking on your pacifier. That is short-lived however, as the hostess removes your paci and plonks a large baby bottle filled with milk and a giant bowl of brown mush on your tray. As the other passengers are served steaks and alcohol, you are instructed to dig into your baby food with your bare hands and not to use the spoon left on the tray which is for 'bigger girls only'. As you finish drinking your milk a [if diaper messing >= 3]rumble in your tummy[otherwise]pang in your bladder[end if] tells you that you already need to go potty again. You almost call for your new Mommy but you stop yourself, thinking that this is the perfect opportunity to impress her by proving you don't need her help for everything! This is made all the easier, you realise, by the fact that you are [italic type]wearing[roman type] your potty![line break]";
		say "[variable custom style]'Look everyone, I'm going potty like a big [if the player is gendered male and the bimbo of the player < 10]boy[otherwise]girl[end if]!'[roman type][line break]After proudly announcing your intentions, with a smile on your face you [if diaper messing >= 3]let out a very audible grunt, followed by a variety of unmentionable sounds, making it fully obvious what was going on inside your diapers, as if their rapid expansion did not already tell that story[otherwise]scrunch up your face, pushing your bladder as hard as you can, leading to a very loud hissing, making it certain everyone else on the plane knows what was happening in your diapers, although it would be hard to miss the deep yellow forming on the outside[end if]. When your bathroom break is over, you continue feeding yourself as if nothing had happened, that is until the mixed but universally intense reactions of your audience begin to register.[line break][variable custom style]Wait, why did I think that would make me look like a grown up?![roman type][line break]";
		say "Keeping your head down with shame, you busy yourself with finishing your meal and afterwards licking what you can off of your hands. You fail to notice the state of your bib, where almost a quarter of the food has ended up. You are then taken out of your seat by your Mommy, who replaces your pacifier and playfully pats your diapers, clearly having decided you do not need - or more likely, don't [i]deserve[/i] - a change. Instead, you are once again locked into the baby aeroplane seat. After securing you, the hostess make yet another announcement.[line break][second custom style]'Passengers, our in-flight entertainment will now begin, please put on your headphones if you would like to listen!'[roman type][line break]Behind you a movie begins to play, one about robots just released in theatres, probably selected by the airline due to its length. Most people put on their headphones to listen in. You too are given headphones (and no choice about whether to wear them), although what you were given to listen to is about as far removed from a complex R rated movie as possible. You are graced with soothing nursery rhymes, with various phrases spoken in your voice repeating throughout, though for some reason you struggle to pay attention to what is being said. To go along with the auditory entertainment you are given a tray filled with baby blocks (along with subtle threats about what will happen if you don't play with them), so you immediately go to town with them, smashing them around, and spelling whatever comes to mind. As you tire yourself out sucking your pacifier and playing with the blocks, you find yourself slowly dozing off with a blank smile on your face.";[picture of embarrassing phrase spelled out with baby blocks?]
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
	say "You open your eyes. You are lying on your back in the [location of the player], but now wearing a [D][if F is worn], [F][end if][if B is worn], [printed name of B][end if] and [yellow-pacifier]. The [ShortDesc of D] feels extremely heavy[if the player is bursting], you feel desperate for the toilet[end if], and you feel extremely fatigued. [BigNameDesc of M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	DiaperAddictUp 1;
	if D is messed, progress quest of mess-quest.

Section - TV Nightmare

boogeymonster-nightmare-tv is boogeymonster-nightmare.

Figure of boogeymonster tv cutscene is the file "Special/Cutscene/cutscene-boogeymonster3.jpg".

The priority of boogeymonster-nightmare-tv is 4.

To compute punishment of (N - boogeymonster-nightmare-tv):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav]";
	say "You open your eyes and find yourself sitting on the sofa next to your old schoolmates. There's a good few of you in the room at this sleepover, and you're watching a movie on TV with popcorn and hot chocolate and all that good stuff. As the movie makes way for yet another commercial break you notice who it is next to you: Jennifer, your Goddess of a [if the player is gendered female]bi-curious [end if]high school crush - the popular girl who for some reason gave you the time of day even though you were just a nerdy little dweeb. Usually you just worshipped her from afar but here she is and your arms are [italic type]touching! [roman type]You start to panic inwardly, working out what you should say to impress her and not sound like an idiot. You won't miss your chance again. You won't allow your next years to be filled with regret and thoughts of 'what if?' You cough awkwardly.";
	say "[variable custom style]'Jennifer, I love y...'[roman type][line break]As you begin to speak, and her beautiful perfect face turns to look at you, you are interrupted by one of the mean popular boys sitting nearby.[line break][first custom style]'Hahaha, that [if the player is gendered female]girl[otherwise]guy[end if] is wearing a diaper! Hey wait, isn't that you, [NameBimbo]?!'[roman type][line break]You turn slowly to look at the TV and are horrified by what you see. An advert for diapers for teenage bed-wetters is playing. The teenage [boy of the player] in front of the camera is in a giant baby playpen with soft safety walls in view, preventing escape. [big he of the player] is wearing some stretchy childish blue pyjamas. Worse still, extremely visible underneath the PJ bottoms is the biggest, thickest diaper you've ever seen in your life. [big his of the player] legs are stuck wide apart and as [he of the player] moves [he of the player] is forced into a toddler-esque waddle. [big he of the player] looks extremely happy and frolics around the screen showing off [his of the player] obscene diaper bulge. The name of the diaper brand [second custom style]'Swaddles'[roman type] is plastered in big pink letters as well as the slogan[line break][second custom style]'Designed to swaddle the biggest babies in your life'[roman type][line break]And [he of the player] has your face! A few people are laughing.[line break][variable custom style]'That's not me, it can't be me, I never did no diaper advert!'[roman type][line break]You protest in a panicked voice.[line break]The mean boy replies.[line break][first custom style]'But then why are you wearing that clothing now?'[line break][variable custom style]'Huh?'[roman type][line break]You look down and see you're now wearing the exact same outfit - thick baby blue cotton pyjamas and a super-massive diaper. You try to squeeze your thighs together to block any view of the embarrassing crotch bulge but the padding is so thick you can't move your legs at all, they're stuck out to the sides! Pretty much everyone is laughing now. Jennifer looks at you with confusion and shock in her eyes, as if you have just unexpectedly betrayed her trust. Her voice sounds accusatory.[line break][first custom style]'What is going on, [NameBimbo]?'[line break][variable custom style]'J-Jennifer, I can explain!'[roman type][line break]You stutter as you try to stand up from the sofa, wobbling as the diaper makes it difficult to keep your balance. You stumble forward and catch yourself from falling by placing your hand on the TV screen.";
	say "Suddenly the laughter seems more muted and distant. You look up and see the TV screen has become a huge pane of glass, and on the other side of the glass are all your friends, pointing and laughing. You check behind you and see the walls of a baby play pen. It's immediately clear to you what's happened - you've somehow become trapped inside the TV! You bang against the glass but all your classmates just keep laughing at your awful situation, with Jennifer looking like she's on the verge of angry tears.";
	appropriate-cutscene-display figure of boogeymonster tv cutscene;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "You watch the wording on the glass keep changing to say more and more embarrassing things. With each new slogan, the laughter of your peers grows more powerful and out of control.[paragraph break][second custom style]CAN COPE WITH THE BIGGEST BED-WETTERS[paragraph break]ENOUGH BULK FOR THE HULK[paragraph break]FOR MEGA-BABIES ONLY[roman type][paragraph break]Your tears arrive as the humiliation and fear overwhelms your senses. You're so scared, you begin to wet yourself. Somehow, all your friends can instantly tell you're going potty in your pants. Several of those who were standing collapse onto their knees clutching their stomachs, unable to stay upright because they're laughing so hard. Jennifer herself begins crying, and her eyes say 'you're dead to me'. She looks and sounds extremely pissed off.[line break][second custom style]'How could you, [NameBimbo]? I thought you were about to tell me you love me, but instead you show me your true colours. You're really just a big bedwetting baby. And to think I was considering giving myself to you. How disgusting.'[roman type][line break]She moves right up to the TV screen until all you can see is her head. You realise you are doll-sized compared to her giant angry face. She continues her tirade of abuse.[line break][second custom style]'Why would I want to date a pathetic little kid like you when I can kiss a sexy, hunky adult like James? You were such a fool to think we could ever be together. You mean NOTHING to me.'[roman type][line break][paragraph break][variable custom style]'Noooooo!'[roman type][line break]There's nothing else you can find to say as you continue peeing inside your new soggy nappy, falling to your knees yourself as your emotional defeat drains all your strength and energy. The scene fades to black.";
	let D be a random largish diaper;
	destroy D;
	repeat with K running through worn knickers:
		destroy K;
	summon D cursed with silent quest;
	let P be a random pyjama bottoms;
	if P is actually summonable, summon P cursed with silent quest;
	now the bladder of the player is 0;
	fully clean D;
	UrineSoakUp D by the soak-limit of D;
	say "You open your eyes. You are lying on your back in the [location of the player], but now wearing a [D][if P is worn] and [P][end if]. The [ShortDesc of D] feels extremely heavy, and you feel extremely fatigued. [BigNameDesc of M] is nowhere to be seen.";
	now the fatigue of the player is the buckle threshold of the player;
	regionally place M;
	distract M;
	BladderIncontinenceUp 1.

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
	say "[first custom style]'I don't need a babysitter!'[roman type][line break]He snarls as you as he opens the door.[line break]You roll your eyes.[line break][first custom style]'Hi Devlin. Charming as always, I see.'[roman type][line break]He growls at you.[line break][first custom style]'[if the player is gendered male]You stink[otherwise]Shut up. I'm nowhere near as trashy as you. Look at how much cleavage you're showing, you must be a total slut[end if].'[roman type][line break]You sigh and roll your eyes.[line break][first custom style]'How immature. I can see why your parents still treat you like a little baby.'[roman type][line break]His eyes go wide with fury.[line break][first custom style]'I AM NOT A BABY!!! YOU'RE SUCH A BITCH[if the player is gendered male]! AND... YOU LOOK LIKE A GIRL[end if]!'[roman type][line break]He runs away from the door and up the stairs. You let him go - chasing him around the house is way past your pay grade. You stroll towards the living room and drop yourself onto the sofa, lounging on your front, and turn on the TV, preparing to burn the hours away until his parents return.";
	say "Your attention is on the television and your reflexes are slow as you feel something wet swiping your lower back.[line break][first custom style]'Hey, what are you doing?' You twist your head just in time to see Devlin Bratson writing on your back with a permanent marker.[line break]He cackles vindictively. 'There we go - ['][if the player is gendered male]I look like a girl[otherwise]Big titted bimbo[end if]!['] Now it must be true because it says so! Bwah ha ha ha!'[roman type][line break]You launch to your feet, furious.[line break][second custom style]'How dare you write on my... eeek!'[roman type][line break]You screech as you realise your voice has just become a whole two octaves higher. You now sound like a squeaky [if the player is gendered male]little girl[otherwise]bimbo[end if]! You look at Devlin's face - it seems he's as surprised as you are. And his face goes from confusion to shock as he looks at your body. You look down and squeal in horror as your [if the player is sexed male]entire body shifts and reshapes, until you have the body of a girl[otherwise]chest swells, your boobs growing from B cups to C cups[end if]![line break][second custom style]'Hey, what the hell?!'[roman type][line break]You begin.[line break][first custom style]'This must be...'[roman type][line break]He replies...[line break][second custom style]'A magic marker!'[line break][first custom style]'A magic marker!'[roman type][line break]You say together. You both stare at the black pen with wonder. Then your eyes meet once again, yours full of uncertainty, and his full of malice.[line break]He leaps on you and [if the player is sexed male]with your new weakling body he easily [end if]overpowers you, pinning you to the ground.";
	say "[first custom style]'Time to prove who's the real baby around here!'[roman type][line break]Your feeble resistance is completely futile as he pulls up your top and writes 'Grown Up Clothes Vanish' on your belly. Moments later you are completely naked. You squeal with embarrassment as [if the player is not possessing a vagina]you both get a look at your brand new pussy at the same time[otherwise]all your body's secrets are now on show to this overgrown brat[end if]![line break][first custom style]'I can't believe it, this marker really is magic!'[line break][second custom style]'Oh my god, you made me naked, you pervert! Get me some clothes, NOW!'[roman type][line break]Devlin grins and disappears from the room for a moment, before returning with a bra and panties.[line break][second custom style]'[if the player is sexed male]As you're a chick now, I think these will have to do, don't you? [end if]They're my mother's, but don't worry, they're clean out of the wash.'[roman type][line break]You growl but consent, taking the underwear from him and putting it on as quickly as you can, pleased to no longer be naked. But as soon as you're beginning to feel comfortable again, the bra and panties vanish in the blink of an eye! You squeal once again and cover your naughty bits with your hands.[line break][second custom style]'What the hell?! Not again...'[line break][first custom style]'Hmm, looks like adult clothes will just disappear while you've got that writing on you! I'll have to find something more appropriate for your age.'[roman type][line break]He runs up and down the stairs once again and before you know it you are in a being forced into a bulky adult diaper!";
	say "[second custom style]'Hey, what's the big idea?!'[roman type][line break]You protest, but in reality you allow him to diaper you because it's better than your pussy being on display. Next you snarl as he adorns your chest with a large frilly pink bib that reads 'BIG BABY' on the front. Again, your protests are only half-hearted because at least it covers your chest and you're no longer naked.[line break][second custom style]Why does he have this stuff anyway?![roman type][line break]Before you can think too long about it, Devlin has once again tackled you to the ground, and is holding the pen above your legs.[line break][first custom style]'Hmm, what next? Ooh, I know...'[roman type][line break]Devlin writes something onto your right thigh. When he is finished he lets go of you and you sit up in order to get a proper look. It says 'Incontinent When Speaking'!";
	say "You can't help yourself - you harrumph indignantly and begin to react.[line break][second custom style]'Stop writing such awful things on me- oh no...'[roman type][line break]As your mouth moves so [if diaper messing >= 3]do your bowels and[otherwise]does your[end if] bladder. With an audible [if diaper messing >= 3]rasping[otherwise]hissing[end if] sound, you piss [if diaper messing >= 3]and mess [end if]yourself on the spot! As soon as you stop talking, your control comes back to you and you are with some effort able to stop and hold back the flow. But still, your diaper is no longer completely dry![line break][second custom style]Gross![roman type][line break][second custom style]'I have to go to the toilet and clean this... thing up. But first give me a clean diaper to wear afterwards, jackass!'[roman type][line break]You demand, grunting as your diaper fills a great deal further in response. It's harder to regain control and stop the motion this time. Your body is now very eager to keep going, having just been in 'push' mode for a number of seconds. You hold your belly in discomfort as Devlin now takes his time in going upstairs to retrieve another adult nappy. Finally he appears at the door, holding it above his head like a piece of mistletoe. You waddle over to him and snatch it out of his hand. As you do, he grabs your wrist and twists it behind your back, hurting you.";
	say "[second custom style]'Yeow!'[roman type][line break]You shriek, and your [if diaper messing >= 3]bladder and butthole go to work once again[otherwise]bladder lets loose once again[end if]. This time you can't hold it back after you finish talking - the flow is too powerful and you have to stand there pinned in place with one arm painfully behind your back as you fully use your diaper. During this time, Devlin scratches some new words onto your arm! He then lets go, allowing you to read them aloud with dismay.[line break][second custom style]'[']Can't Change Self.['] You bastard!'[roman type][line break]Your [if diaper messing >= 3]butt makes farting sounds as you speak[otherwise]bladder muscles push as you speak[end if], but nothing comes out because you're empty for now. You move your hands down to your diaper to test the veracity of the statement and find to your despair that it's completely true - your fingers can't pull at the tapes at all - it's like they're sealed down with super glue! You're stuck in this [if diaper messing >= 3]messy[otherwise]soggy[end if] prison until someone else lets you out. Devlin looks down at you and grins.";
	say "[first custom style]'Well well well, looks like you're going to need to rely on me for a change, huh? In which case you'd better be a good baby for your new Daddy. Or you'll be staying in that one for a long time. Now get on your knees.'[roman type][line break]You reluctantly obey. There's no way you're staying in this nappy for any longer than you have to. Once on your knees, your new master looks at his watch and then writes another phrase on the back of your right thigh. 'Can't walk during odd numbered hours'. You let out a gasp of indignation, and then try to stand up, only to find you can't. Your legs just won't let you.[line break][first custom style]'As you were an obedient little girl, I didn't write [']Can't walk at all[']. You should be thanking me. In fact, do it. Say [']Thank you Daddy['].'[roman type][line break]You snarl under your breath, but then say the words.[line break][second custom style]'Thank you, Daddy.'[roman type][line break]Your body rewards you by beginning a second session of diaper filling - you can't believe you've got more in you already! You clench your muscles as soon as you can, halting the action.";
	say "[second custom style]That's it, I'm not talking any more, at all![roman type][line break][first custom style]'You're welcome, baby. Now come over here and let's feed you your din-dins.'[roman type][line break]You crawl on all fours as you follow Devlin to the kitchen. No sense in provoking his anger any more than you have to. He fills a bowl with [if diaper messing >= 3]oatmeal[otherwise]milk[end if] and puts it on the tiled floor in front of you.[line break][first custom style]'Din-dins is served!'[roman type][line break]He looks at you expectantly, clearly intending for you to eat without cutlery. You grumble under your breath but stick your face in the bowl as instructed. You're completely at his mercy. Your face is covered in it by the time you are finished.[line break][first custom style]'What a messy baby! Well, here's your reward for finishing your meal.'[roman type][line break]He takes the marker and adds even more awfulness to your life, writing something on your upper back you can't see. After that he takes a big pink rattle from on top of the kitchen table (where it had been out of your sight until now), and hands it to you. You take hold of it instinctively, then realise how dumb you must look holding it and try to put it on the ground. But your fist refuses to open! Whatever he wrote on your back is preventing you from letting go of the rattle. You try and shake it loose, which just makes it look like you're enjoying making sounds with your new baby toy! Devlin looks thoroughly entertained.";
	say "[first custom style]'What a good baby, having such fun with your new rattle! You do enjoy your new rattle, right? If not, just tell me how much you're not a big baby.'[roman type][line break]You stare daggers into his eyes. He knows full well you can't reply without continuing to go toilet in your already full nappy. You look down at it with disgust.[line break][first custom style]'Does baby want a change? If you want a fresh nappy, just sit up like a big girl for me.'[roman type][line break]You know it's going to feel gross but it's a small price to pay for getting dry afterwards. You kneel up straight and then plonk your padded butt down on the hard tiled floor. You feel the gross [if diaper messing >= 3]sludge[otherwise]full padding[end if] smooshing against your privates and let out a little high-pitched whimper.'[line break][first custom style]'I'm almost convinced. Let me hear how full it is. Without using your hands.'[roman type][line break]You're in too deep to go back now, and begin submissively squirming on the spot, rubbing your padding up and down across the floor, filling the air with the sounds of crinkling and squelching. Your face turns beetroot red with embarrassment, but finally you've earned your change. You follow your new Daddy to the bathroom on your hands and knees, your thickly diapered bum swaying high in the air behind you.";
	say "Three deeply humiliating minutes later, you are clean and dry and in a fresh but equally bulky diaper. But it doesn't seem that Devlin is done with you - he took care to make sure he didn't wipe away any of the words written on your skin. He leads you back to the living room where he sits you down on the ground in front of the sofa and takes a seat behind you, and begins to fashion your hair into pigtails. There's nothing you can do but sit there as he gradually alters your hair to make your appearance match how small and powerless you feel inside. After he's finished styling you like his personal playdoll, he violently wrenches your arm tight behind you again. It takes all your willpower not to verbally complain.[line break][first custom style]'Well it seems you've finally got used to controlling your voice. But I wonder if that means you have total control over your bodily functions?'[roman type][line break]With this he adds another line to your right arm: '[if diaper messing >= 3]Mess[otherwise]Milk[end if] Bulk x10'! Moments later, your tummy explodes outwards to contain your [if diaper messing >= 3]bowels['][otherwise]bladder's[end if] new contents, and you suffer a severe cramping sensation. You jump to your feet in reaction, instinctively wanting to rush to the toilet. Of course you soon remember you can't remove your own diapers and therefore going to the bathroom would be pointless. You then realise you are standing, and your eyes shoot to the clock to confirm - yes, it has just gone past ten o'clock and so you can now stand again for the next hour![line break][second custom style]But wait, something else usually happens at ten, doesn't it? What is it again?[roman type][line break][if diaper messing >= 3]As you try to recall what it is, you feel something being written on your outer left thigh. When you look down at the words you get your biggest sense of dread so far. 'Messing Makes Me Cum', the words read.[line break][second custom style]No... No... No...[roman type][line break]The cramps are getting worse and you're going to have to go number two soon, even if you don't speak. But the idea of orgasming from such an act is just too inconceivably awful! You resolve to hold it in until you reach your utter limit.[end if]";
	say "You hear the sound of keys in the front door. You remember what happens at ten - the Bratsons arrive home from their dinner date. You look around for their son and find he's disappeared, presumably sneaking upstairs at this very moment. The sound of the door creaking open. Your belly rumbles horribly and cramps. The giant pink rattle makes quiet little sounds as you try to move your hands to cover your diaper. And then there they are, the brat's parents, standing in the doorway to the living room with looks of bewilderment and anger on their faces, looking at your babified form in all its glory.";
	appropriate-cutscene-display figure of boogeymonster magic marker cutscene;
	say "[italic type]Art by Aweye[roman type][line break]";
	say "[first custom style]'WHAT'S THE MEANING OF THIS?'[roman type][line break]Mr. Bratson bellows.[line break][first custom style]'[if the player is sexed male]I think that's our babysitter...'[otherwise]What sort of weird perverted thing are you up to?!'[end if][roman type][line break]Mrs. Bratson utters in disbelief.[line break]You turn an even deeper shade of red.[line break][second custom style]'Mr. Bratson, Mrs. Bratson, I can explain. Your son has a magic marker and he gaaaaaa...!'[roman type][line break]Your voice trails off as your [if diaper messing >= 3]butthole opens wide and begins depositing the biggest log in the history of the world into your thick incontinence aid, which you clearly need as in that moment you feel how truly incontinent you are. It feels like someone else has taken control of your body and has no other plans for it other than 'push'. You adopt a horribly degrading squatting position and continue to let rip. A jolt of pleasure seizes you as the log continues to escape, and then another and then another and then another, and very soon you're climaxing in front of your employers, visibly wetting, cumming and pooping at the same time as you fill your diaper almost beyond its limits, your pregnant-looking belly slowly deflating as the messy bulge below you grows! Every time you try to speak, your body doubles its efforts making louder and lewder sounds.[line break][second custom style]'Please...'[italic type][line break]SPLART![line break][second custom style]'Don't'[italic type][line break]FRRRT![line break][second custom style]'Don't look...!'[italic type][line break]SPLORCH![line break][roman type]Your orgasm is so powerful you've already started trying to rub your clit through your padding with the head of your rattle before you consciously realise it. If they didn't know you were orgasming before, they definitely do now.[otherwise]bladder lets loose with the loudest hissing sound you've ever heard. Your pee comes out with the force of a fire hydrant, quickly soaking your padding and soon dribbling down your thighs as it overflows. And yet you're far too full to stop it at all, and you begin to soak their carpet around their feet.[end if]";
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
	say "[first custom style]'[NameBimbo], you stand accused of being a baby unfit for big girl pants. How do you plead?'[roman type][line break]You open your eyes as you hear these words. You find yourself standing at the defence table in a courtroom, the judge, jury, prosecution, bailiff, and audience all staring at you. Before you can fully take in your situation, you instinctively yell[line break][variable custom style]'Not guilty!'[roman type][line break]The judge rolls his eyes and sighs, before ordering the bailiff to take [first custom style]'Our little defendant'[roman type] to the stand. You start to walk towards the witness stand, but immediately stop in your tracks as you finally take in your attire. Not only is your ability to walk heavily impaired by a gigantic diaper around your waist, around it is a pink straitjacket onesie, leaving your arms completely inoperable. Distracted by your clothing, you allow the bailiff to strap you into a giant baby stroller, the court apparently not trusting you to walk your way to the stand. Despite the short distance, the trip to the stand seems impossibly long as you watch the eyes of every member of the jury follow you, knowing that they are all silently judging you - their verdict likely already decided.";
	say "When you finally reach the stand and are let out, you eagerly take your oath and prepare to testify, ready to prove yourself. However, you are suddenly crippled by an inhuman cramp in your tummy, accompanied by a deafening gurgle, a roar you are almost certain could be heard beyond the walls of the courtroom.";
	appropriate-cutscene-display figure of boogeymonster courtroom cutscene;
	say "[italic type]Art by Owlcan[roman type][line break]";
	say "Almost certainly as a direct result of your stomach's noises, the prosecutor asks[line break][first custom style]'Does baby need to go potty?'[roman type][line break]Despite your body's desperate need, there is no way you can admit the situation you are in. You yell[line break][variable custom style]'No!'[roman type][line break]following far too late with[line break][variable custom style]'A-and I'm not a baby...'[roman type][line break]As you look at the jury, prosecution, and audience, you don't see a single face that seems to believe either statement. The prosecution wisely continues on the same line of questioning.";
	say "[first custom style]'When was the last time you made it to the potty?'[line break]'Are you struggling not to use your diaper right now?'[line break]'Exhibit A, [NameBimbo][']s potty training chart. Why is there not a single smiley face?'[line break]'Why are you scrunching your face like that?'[line break]'Exhibit H, [NameBimbo][']s room. Does this look like a big girl's room?'[roman type][line break]";
	say "Throughout your questioning the already intolerable pressure in your bowels increases steadily, constantly forcing you to squat more and more, and start performing a very obvious potty dance, at least to the extent your clothing allows. Eventually, you are squatting to the point where you are almost completely concealed by the stand. It's at this point that the prosecutor suddenly points at you dramatically, and yells[line break][first custom style]'OBJECTION!'[roman type][line break]proceeding to claim your behaviour is distracting the jury, preventing them from properly judging your testimony. She then requests the judge to have you restrained completely, in order to remedy this. The judge sustains the objection, and soon the bailiff is finished locking you into a giant high chair placed in front of the witness stand, leaving you with only one option for movement - namely, kicking your feet, which you do incessantly since the pressure in your bowels is at an all time high. You let out a grunt as you feel your body start to involuntarily push, a loud wet fart reverberating throughout the courtroom.";
	say "[first custom style]'Are you about to shit yourself like the pathetic baby you are?'[roman type][line break]Despite knowing all aspects of her question were undeniable, you still cannot bring yourself to admit it, and whimper[line break][variable custom style]'N-no...'[roman type][line break]just before the floodgates open, your diaper rapidly filling with an unspeakable amount of your unspeakable waste, made all the worse by your high chair forcing the mess against you, your entire crotch eventually becoming coated in the filth. By the time you start wetting yourself, the urine does not even reach the thick padding of your diaper thanks to the wall of your waste in front of it. After what feels like centuries, your 'Accident' finally ends. You look up to see almost every person in the courtroom staring at you in disgust, the sole exception being the prosecutor, who has a smug grin on her face.";
	say "[first custom style]'The prosecution rests, your honour.'[roman type][line break]Almost sarcastically, the judge asks[line break][first custom style]'Does the jury need time to deliberate?[roman type][line break]to which the foreman instantly responds[line break][first custom style]'No, your honour. We, the jury, find [NameBimbo] guilty of innumerable counts of failure to use the potty, years of failure to potty train, 42 counts of lying under oath, and contempt of court.'[roman type][line break]The pronouncement is met with applause from the entirety of the audience.";
	say "[first custom style]'Order! Order! Order in the court!'[roman type][line break]Once the judge finally manages to calm the celebration in the courtroom, he begins your sentencing.[line break][first custom style]'[NameBimbo], on account of your complete failure to even come close to imitating an adult, your brazen disrespect for the judgement and intelligence of both myself and the jury, and the disgusting behaviour you have displayed here today, I hereby sentence you to life in diapers in a maximum infancy adult nursery, without parole or potty training.'[roman type][line break]";
	say "Completely unable to argue that you do not deserve your punishment, you simply begin bawling, struggling against your straitjacket in an attempt to suck your thumb, before shutting your eyes, hoping your surroundings would just disappear. To your immense relief, they do.";
	let D be a random huge diaper;
	unless D is worn:
		only destroy D;
		repeat with K running through worn knickers:
			destroy K;
		summon D cursed with silent quest;
	if the number of worn onesie is 0:
		repeat with K running through worn dress:
			destroy K;
		repeat with K running through worn trousers:
			destroy K;
		summon velcro onesie cursed with silent quest;
	let A be a random off-stage pair of anklecuffs;
	if A is actually summonable, summon A locked;
	MessSet D to 20;
	say "When you open your eyes, you find yourself lying on your back in the [location of the player], wearing an impossibly full [ShortDesc of D], covered by a [ShortDesc of a random worn onesie][if A is worn clothing]. A pair of anklecuffs keeps your feet locked close together[end if]. [BigNameDesc of M] is nowhere to be seen.";[Plain white diaper and pink onesie, maybe bondage?]
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

The priority of boogeymonster-nightmare-comicon is 4.

Figure of boogeymonster comicon cutscene is the file "Special/Cutscene/cutscene-boogeymonster6.jpg".

To compute punishment of (N - boogeymonster-nightmare-comicon):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav][line break]";
	let friend be nemesis-friend;
	say "And then the next thing you know... you're walking through Comicon in your impressive Samus cosplay outfit, proudly strutting your stuff, showing off your fancy blaster gun and light-up gloves. Friends and strangers alike are awestruck by your expertly made gear and just how realistic it looks. You bask in their adoration and praise, smiling to yourself from behind your helmet.[paragraph break]And then, as you waltz, ZAP! Your helmet is hit by some kind of laser. It clicks open, and falls to the ground, exposing your face.[line break][variable custom style]What the hell?![roman type][line break]Standing in front of you, a decent fair few feet away, is a [man of friend] cos-playing as Pharah. And [he of friend]'s just blasted you with [his of friend] laser gun. In a fury, almost without thinking, you shoot back! And lo and behold, a real-looking laser flies from your weapon into [his of friend] helmet, which also clatters to the ground, revealing [his of friend] face. It's [MediumDesc of friend], your [RelationDesc of friend]! An angry expression flashes onto [his of friend] face at being exposed and then [he of friend] dashes into the nearby crowd before you can stop [him of friend].";
	say "[variable custom style]What is going on?![roman type][line break]You push into the crowd, trying to chase after [MediumDesc of friend] and find [him of friend]. What is [he of friend] up to?![line break]Your padding crinkles quietly from under your outfit. [big he of friend] better not shoot any more of your outfit off.[paragraph break]You push through throngs of people, recognising several faces, some of your friends, and some of [MediumDesc of friend]'s friends. You eventually reach a set of merchandise stalls with fewer people around. Most of the stalls seem to be selling really [if the diaper addiction of the player < 7]weird[otherwise]specialist[end if] stuff - cute girly button badges, handmade pacifiers, tiaras, fairy wands... but your distraction becomes your doom as [MediumDesc of friend] manages to get behind you and plant a second laser shot, this time onto your back.[line break][italic type]CLICK WHIRRRRRRRRRRRR[roman type][line break]The enema nozzle in your butt begins to spurt warm water inside of you, and doesn't appear to be stopping any time soon. You remember now! Your back sensor is connected to the enema machine on your back, the sensor on your chest is connected to the upper half of your outfit, and the sensor on your groin is connected to the bottom half of your outfit. The sensor on your gun must be hit last, and then it's game over. The same is true for [him of friend]. It's time to get your own back![paragraph break]You spin and aim for [him of friend] but [he of friend]'s already gone. Your belly sloshes, already rather full of water. You waddle towards where [he of friend] disappeared back into the crowd, trying to ignore the feeling of water going the wrong way up your system. A few moments later the enema backpack runs out of juice, and detaches itself from you, dropping to the ground with a loud clatter. But that's not important right now. What's important is finding [him of friend].[line break]You spend what feels like an age pushing through groups of people, your stomach making more and more concerned noises as time ticks on. Your butthole starts to weaken.[line break][variable custom style]No, I've got to hold it in!'[roman type][line break]You spot [NameDesc of friend] rushing across a relatively empty area near some autograph stalls, facing away from you. A feeling of excitement wells up in you as you give chase. You're only a few feet behind [him of friend] now, with nobody in between you. You raise your gun to take aim...";
	say "And your butthole chooses that moment to let rip, filling your thankfully padded underwear with a mega load of lumpy brown mush. [MediumDesc of friend] stops as [he of friend] hears the sound of you messing your diaper behind [him of friend]. You quickly shoot the sensor in [his of friend] back, triggering [him of friend] enema. [big he of friend] whirls round, aiming at your chest. Zap! a direct hit. There's nowhere for you to dodge - you can only continue to fire back. Pew! You hit [his of friend] bottom half. Zap! [big he of friend] hits your bottom half. Zap! You just about hit [his of friend] top half. Zap... [he of friend] gets your laser gun. It clicks as it splits into two pieces and drops to the floor, a clear declaration that you're the loser.";
	say "And then all your costume finishes falling off. The top half, the bottom half, everything... It's all gone. And now you properly remember what you have on underneath! A super short pink babydoll dress, that ends at the waist and does nothing to cover your thick pink rubber diaper with its see-through purple diaper cover over the top. Your giant messy episode is extremely visible through the layers of sheer latex, testing the elasticity of your incontinence aid with its bulk. Sheer white stockings with pink bows complete the adult baby girl look.";
	appropriate-cutscene-display figure of boogeymonster comicon cutscene;
	say "[italic type]Art by Wishberri[roman type][line break]";
	say "While [he of friend]'s not in the best state of dress, with most of [his of friend] costume on the ground, [his of friend] thick white diaper fully visible, and the back of [his of friend] purple babydoll dress on show, [MediumDesc of friend] has managed to hold onto the front upper part of [his of friend] outfit and is still holding onto [his of friend] enema, which means that all eyes are on you. Hundreds of them, many of them your friends and acquaintances.[line break][first custom style]'Nice costume, [OriginalNameBimbo]! Or should I call you Stinkypants?'[second custom style]'What have you come to Comicon as? An incontinent baby?'[line break][first custom style]'No, [he of the player][']s even more pathetic than that. I've never seen a baby fill their diaper to the point of bursting like that!'[line break][second custom style]'Eww, it's so disgusting! I'd rather die than have anyone see me like that!'[roman type][line break]Your face turns redder than it ever has in your life.";
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

Section - Hot Buns Nightmare

boogeymonster-nightmare-hotbuns is boogeymonster-nightmare.

Definition: boogeymonster-nightmare-hotbuns (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	decide yes.

The priority of boogeymonster-nightmare-hotbuns is 4.

Figure of boogeymonster hotbuns cutscene is the file "Special/Cutscene/cutscene-boogeymonster9.jpg".

To compute punishment of (N - boogeymonster-nightmare-hotbuns):
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav][line break]";
	say "The gimmicks that restaurants are using to market their food are getting more and more ridiculous.[paragraph break]You look at the ridiculous cycle-like contraption that Jerry, the owner of Hot Buns, wants you to use to deliver his burgers from here on out. Part of you wants to tell him to shove his dumb job up his ass, but the truth is, in this economy, you need the job. Even more importantly, you need to earn good tips.[paragraph break]So here you find yourself, crouching forward on this confusion perversion of vehicular transport, with your head strapped down low above the front wheel, and your ass held high by the metal contraption holding your pink panties in a constant brutal wedgie. And then, as you begin to pedal...[line break][italic type]THWAP THWAP THWAP[roman type][line break]...The attached rotating spanking device beats your butt cheeks with its long, wide paddles. A devilish contraption, and one that lives up to the new name of Jerry's company - Hot RED Buns. And to make matters worse, the hook continuously yanks your panties up and down, flossing your butt crack with some brutal wedgie action. By the time you arrive at the customer's house, your poor butt is truly aflame.";
	appropriate-cutscene-display figure of boogeymonster hotbuns cutscene;
	say "[italic type]Art by Rosie-BRS[line break][second custom style]'Food's here!'[roman type][line break]Your deliver customer jogs out of her house and down to where you've parked by the side of the road, and retrieves the food from the rear. She looks at you and giggles.[line break][second custom style]'Nice buns!'[roman type][line break]You pout, but say the line you're supposed to, as instructed.[line break][variable custom style]'If you tip me $10, it'll treat me five times as hard on the ride back.'[line break][second custom style]'Hahahaha! DEAL!'[roman type][line break]The woman presses her phone to the contactless payment portal on the side of the bike, and there's an audible beep. Immediately, the spanking machine gains a life of its own, and starts spanking you several times faster than before.[line break][variable custom style]'OW OW OW! THANK YOU! OW OW OW!'[roman type][line break]You pedal away as fast as you can, which just makes the wedgie contraption floss your crack raw with even greater speed and intensity. You surge down the streets, people pointing and laughing as you sail past them, your ass torture in plain view for everyone to see. The perfect mobile advertisement for Jerry's Hot Red Buns.[paragraph break]And then... the scene is disappearing, your vision fading to black... but the pain, the searing pain in your [AssDesc] remains.";
	PainUp 40;
	say "And when you open your eyes, back in the Dungeon, [NameDesc of M] is nowhere to be seen.";
	regionally place M;
	distract M.

Section - Mahjong Nightmare

boogeymonster-nightmare-mahjong is boogeymonster-nightmare.

Definition: boogeymonster-nightmare-mahjong (called P) is appropriate:
	if current-monster is not boogeymonster, decide no;
	if diaper messing < 4 or armband is not worn or the player is not a top donator or the class of the player is not adventurer or the player is shameless or the diaper addiction of the player > 10, decide no;
	decide yes.

The priority of boogeymonster-nightmare-mahjong is 4.

Figure of boogeymonster mahjong cutscene is the file "Special/Cutscene/cutscene-boogeymonster7.jpg".

To compute punishment of (N - boogeymonster-nightmare-mahjong):[todo: replace Saki with nemesis]
	now the priority of N is 1;
	let M be current-monster;
	say "[NightmareStartFlav][line break]";
	say "And then the next thing you know... you're sitting in your college's break room, across the table from your arch-nemesis - that freakishly lucky mahjong player called Saki. She looks back at you with a pout - very unusual for her, as it's usually very difficult to shake her permanently upbeat demeanour. You can't remember what you said this time to upset her, but clearly it did the trick.[line break][second custom style]'Fine. If you're going to be like that, I won't hold back any more. I'm in.'[line break][first custom style]'Just to confirm, you are both agreeing to the FULL RULES of diaper mahjong?'[roman type][line break]The final-year student and head of the mahjong club to your right called Hisa speaks up, barely able to believe what she's hearing.[line break][first custom style]'We kind of just wrote those rules as a joke. We didn't expect anyone to actually hate each other enough to agree to a match. But if you do play, we WILL enforce all the rules. Each time you get a 6 or 7 point hand, your opponent drinks a glass of prune juice. Each time you manage an 8 to 10 point hand, your opponent drinks two servings of laxative. Whenever you score an 11 or 12 point hand, your opponent loses their right to wear their sailor uniform and instead must wear a onesie and a pacifier. If you manage to score a 13 point hand, known as a yakuman, which as we all know is extremely rare, your opponent must walk home in whatever state they find themselves in at the end of the game. If you somehow manage the impossible and score a DOUBLE yakuman, we'll enforce them walking home in a diaper, onesie and pacifier with a stomach full of prune juice and laxative, every single day this week.'[roman type][line break]She pauses to stare at both of you, to make sure that you're still seriously considering this.[line break][first custom style]'You will both be kept in diapers for the duration of the game, and your skirts will be confiscated so that we can tell if you do anything nasty in your pants. You can get a diaper change whenever you score a 5 point hand. The game ends when one of you runs out of points or spends more than twenty total hands sitting in their own filth. Except for that, it's mostly a straightforward riichi mahjong game. Myself and Mako here will play as the other two players, but we will be playing passively, only playing safe tiles when possible and never declaring a winning hand. Are we all in agreement?'[roman type][line break]You both nod ferociously, still staring each other down. And then the game begins.";
	say "You're the dealer in the first hand, and you are able to quickly move towards a full flush hand with two bonus dora. You declare two parts of your hand, letting you get there faster but revealing the tiles, meaning that the others can probably see what you're aiming for. Saki doesn't reveal any tiles at all, and her discards don't tell a particularly useful story either. At least it seems clear she's several tiles away from declaring herself ready, never mind a 'riichi' win (a stronger type of win you can only make if you've not revealed any tiles from your hand). You discard a 2-pin tile, certain it'll pass. But then...[line break][second custom style]'Kan.'[roman type][line break]Saki declares that she wants it for a four-of-a-kind, which allows her to draw a bonus tile from the wall. She always does this! She gets more four-of-a-kinds than every other player at the table put together, you could swear. It's weird. She looks at the bonus tile and smiles gently.[line break][second custom style]'Kan.'[roman type][line break]Saki reveals three more tiles that match the one she drew. Four-of-a-kind again?![line break][second custom style]'Kan.'[roman type][line break]Once more she uses the bonus tile to complete a four-of-a-kind and gets to take an extra turn.[line break][second custom style]'Tsumo.'[roman type][line break]The word strikes fear into your core. That's almost impossible! She can't have completed her hand from a triple bonus tile combo like that, surely? But she reveals all her tiles, showing that she indeed has four complete sets and a pair. Even worse, with all the bonus points from the fours-of-a-kind and bonus dora tiles, she has managed to create a baiman hand worth 8 points.[line break][first custom style]'No way!'[roman type][line break]You are speechless but Hisa manages to break the silence. A baiman already? And I was worried this game would take hours...[paragraph break]Mako is already walking up to you with a bottle of laxative and a spoon. You shift nervously, making the plastic of your new diaper crinkle. Things weren't supposed to go this way! And yet here you are, sitting in a thick padded diaper, being fed laxative from a spoon by [if the player is gendered female]another[otherwise]a[end if] woman. You turn bright red, but obediently take your punishment and swallow the nasty stuff.";
	say "Mako is the next dealer. It takes an excruciatingly long time for them to gather all the tiles, shuffle them, set up the walls, and then deal out the tiles. By the time the next hand has actually started, you're finding it very difficult to concentrate on what to do, thanks to that nasty laxative speedily working its way through your system, and a growing need to go down below. You allow instinct to take over, discarding the least easy to use tiles (the terminals and honours), and keeping the rest. You're so concentrated on the growing pressure in your bowels that you almost don't even notice when you're one tile away from winning.[line break][variable custom style]'Riichi!'[roman type][line break]You spit out almost in surprise as you discard your next tile. Now everyone knows that you're one tile away from winning and you're not allowed to change your hand, but when you do win it'll have a chance of being a much more valuable hand. You might even be able to hit 5 points and earn a change! Not that you need a diaper change yet.[paragraph break][italic type]FRBBBBBBBBT[roman type][paragraph break]At that moment your sphincter reaches its limit and you find yourself filling your diaper with a huge amount of mess. It loudly squidges and squelches its way out of your bum and into your padding, and everyone can both hear and see the awful activity as your diaper bulges beneath you. The other three ladies retch and hold their noses as you turn bright red.[line break][variable custom style]This cannot be happening![roman type][line break]Now you really do need to get a big hand. You don't want to be stuck in your own filth for a second longer than necessary. You wait eagerly for your winning tile to come along. A few turns later, Hisa deals it into her discards and you snatch it up.[line break][variable custom style]'Ron!'[roman type][line break]You declare the term used to signify that you are winning off of another player's discard, and reveal your hand of tiles. It's only a 4 point hand so far, but if you can reveal a lucky tile from the dead wall and get any ura dora bonus points, you'll have your mangan 5 point hand and earn yourself a change. Hand trembling, you move your hand to the appropriate tile and flip it over. It's useless! You whine in disappointment as the hand becomes pointless, and you're forced to stay in your poopy nappy for the time being.[paragraph break]After another frustratingly long reshuffle and deal, you are ready for Saki's dealer hand. You look at your tiles - they are INCREDIBLE! Every tile except one East Wind tile is part of the same suit - the 'man' tiles, and this means that if you're lucky you could win an easy diaper-change-earning victory within a few turns, or if you're even luckier, get some prune juice or laxative down that bitch Saki's throat, so she can join in your misery. Saki discards a South Wind tile, Hisa discards a West Wind tile, and you continue the pattern by discarding your East Wind tile.";
	appropriate-cutscene-display figure of boogeymonster mahjong cutscene;
	say "[italic type]Art by Wishberri[roman type][line break]";
	say "[second custom style]'Ron.'[roman type][line break]Saki's calm voice echoes through your ears. You must have misheard? Winning on the first turn essentially never ever ever happens in Riichi Mahjong. But there she is, revealing her entire hand. What is this? It must be a fix! But you watched the tiles being shuffled yourself![paragraph break]Your heart stops when you see her tiles. Three south winds, three north winds, and three west winds, and two east winds to make a three-of-a-kind with yours. She's made Big Four Winds, one of the most difficult hands to complete in mahjong, and worth a Double Yakuman. You feel paralysed in a mixture of shock and awe.[line break][variable custom style]'I... I lost...'[roman type][line break]The next several minutes passes in a blur as you are stripped of your sailor uniform and clothed in a ridiculously embarrassing baby onesie and then given a pacifier to wear. You are not given a diaper change but instead just forced to drink even more laxative and prune juice.[line break][variable custom style]'I... I have to walk home like this for a week?!'[roman type][line break]You are still in a state of shock.[line break][first custom style]'I'm afraid not just this week.'[roman type][line break]Hisa's grave tone sends another chill down your back. What is she talking about? They've given you all the punishments, haven't they?";
	say "[first custom style]'Saki won on the first turn, a Blessing of Man. That scores a yakuman. And that means...'[line break][variable custom style]'She scored a triple yakuman?'[roman type][line break]The realisation hits you. A triple yakuman. Probably the first ever in the history of mahjong. But you don't remember a rule for a triple yakuman? You look at the board behind you to see a rule you don't remember having been written there before. But it's definitely written there, as plain as day.[paragraph break][italic type]'TRIPLE YAKUMAN: OPPONENT MUST BE LOCKED IN ONESIES AND DIAPERS OUTSIDE OF COLLEGE HOURS UNTIL GRADUATION.'[paragraph break][first custom style]'Your onesie will be locked at all times. It has a zipper so you will be able to change your own diapers, but if we catch you not wearing Pampies at any time except class-time then we will rethink the zipper. You will have to report to Saki every morning to have your onesie unlocked so you can change into your uniform for class. You will have to report to us all straight after classes every day so that we can make sure you are locked back in your onesie with a nice thick diaper and a belly full of laxative. This is your life from now on.'[roman type][line break]There is no hint of joking in her voice. You plead with your peers.[line break][variable custom style]'This is too far! Please, I can't be forced to live like a baby for the next two years!'[line break][first custom style]'You have no choice. Now I suggest you act like a good baby and waddle off home before you fill that diaper with even more filth and risk it bursting at the seams!'[roman type][line break]Blood rushes to your head and you feel faint. Everything turns black.";
	repeat with C running through held things:
		if C is worn clothing:
			if (C is removable or C is diaper-stack) and C is not headgear and C is not combat visor and C is not armband:
				dislodge C;
				now C is in Predicament20;
		otherwise if C is not worn:
			now C is in Predicament20;
	let D be pink-huge-diaper;
	summon D uncursed;
	if the class of the player is adventurer:
		if the number of worn onesie is 0:
			let O be a random off-stage onesie;
			if O is nothing, now O is cupcake onesie;
			summon O locked;
	MessSet D to 10;
	now rectum is 6;
	now suppository is 1;
	now the fatigue of the player is 0;
	if the body soreness of the player > 5, now the body soreness of the player is 5;
	regionally place M;
	distract M;
	now the printed name of Predicament01 is "Mahjong Room";
	teleport to Predicament01;
	now current-predicament is simple-sneak-predicament;
	now turnsWithSoiledDiaper is 0;
	now predicamentJustDone is true;
	now predicamentSavedMakeUp is the make-up of face;
	display inventory-focus stuff; [can't force immediate inventory-focus redraw because the empty list would actually be correct and then it wouldn't redraw]
	say "You wake up, slowly realising it was all just a dream. But then you look around... you're lying next to a mahjong table, locked in a onesie with a nasty smelly diaper. It seems like somehow, for today at least, your dream has become a reality...".

Figure of boogeymonster factory cutscene is the file "Special/Cutscene/cutscene-boogeymonster8.jpg".

To compute default caged domination of (M - boogeymonster):
	say EnslavedDominationFlav of M;
	if the humiliation of the player < the EnslavedDominationThreshold of M:
		say "You feel vaguely better about yourself, but mostly just a bit ambivalent.";
	otherwise:
		Dignify 1000;
	if the player is getting unlucky:
		say "[BigNameDesc of M][']s tentacles reach through the bars and manage to grab your arm![line break][variable custom style]Uh-oh...[roman type][line break]That's all [NameDesc of M] needs to be able to pull you right up against the cage, and then send several more tentacles to wrap around your head![line break][NightmareStartFlav][line break]";
		say "You open your eyes, feeling uncomfortable. What's this? You're in a factory wearing some overalls, surrounded by other people in a similar getup. They're all familiar to you, not quite friends but more than just acquaintances. You get on with them okay, and you like to think they feel the same way about you.[line break][first custom style]Hurry up, knucklehead![roman type][line break]The woman behind you taps her foot. Oh right. You need to clock in. You push your card into the slot, and it mechanically stamps the time onto it in the appropriate box. You give her a sheepish grin as you move to the main factory floor, and she just rolls her eyes at you.[paragraph break]You exchange brief smiles and nods with the people around you as you take your place by your usual machine. You quality check the items as they come down the conveyor belt, making sure there's no defects and no need to hit the emergency stop button.[line break]But then... you realise you need to tinkle. Why didn't you go before you left home? You can't remember, but there's no use worrying about that now. There's still over two hours until your next break. There's just no way you can hold it, is there?[paragraph break]A couple more minutes pass with you spending less and less time focused on your assigned task, and more and more time focused on the building pressure in your bladder. Nope, there's no helping it. You need to pee too badly. Apologising to the two other staff members working on the same machine as you, you hit the STOP button and explain you need to go to the toilet.[line break][first custom style]'Okay then. I'll come with you.'[roman type][line break]The man says.[line break][first custom style]'Me too.'[roman type][line break]The woman says, rolling her eyes again. It's the same woman who had been behind you in the clock-in line.[paragraph break]You gingerly make your way to the restrooms, feeling a bit awkward about the fact that a [if the player is gendered male]wo[end if]man is coming along with you. But you do vaguely remember some announcement about the company moving to gender neutral toilets. There was something else too, but you can't remember what.[paragraph break]";
		say "It all comes flooding back to you when you reach the toilet cubicles. The fronts of the cubicles have been removed, fully exposing the toilets to the sight-lines of everyone in the nearby area. The normal ceramic toilets have been replaced by raised chair-like structures. A plastic barrier at the front rises slightly higher than the toilet seat itself, just about barely concealing the user's genitals from passersby. Hopefully. A little.[line break]The barrier is connected to the toilet bowl itself, and contains a transparent section near the base, where a water wheel sits, partially exposed by the clear plastic. Two jingle-bells are dangled in front of the water wheel, ready to be struck if the water wheel moves. There's also a seven segment display underneath the words 'Time Wasted', and slits guarding a digital speaker.[paragraph break]Overall, the new toilet seat design has one clear and simple purpose: to fully humiliate anyone who dares to use it. In this way, the company can minimise time wasted by employees stopping to use the toilet but still fulfill their legal obligation to provide a toilet. How sinister![paragraph break]And then you spot one final detail out of the corner of your eye. A poster up on one of the exposed inner walls of the cubicle.[italic type][line break]REMEMBER:[line break]Diapers are ALWAYS an option![roman type][line break]The diaper thing! That's what you'd forgotten. It floods back into your memory now - when the new toilets were announced, everyone was reminded that they are allowed to wear a diaper to work if they like. Your eyes flutter over to your coworkers - yep, just as you suspected, they have bulky padding clearly visible bulging through their overalls at the crotch. Shouldn't they look embarrassed about that? But for whatever reason, they just don't. They look extremely comfortable, and safe and secure in the knowledge that they won't need to use the humiliating toilet. As for you, though, you don't have a diaper. So there's only one option remaining.[paragraph break]";
		appropriate-cutscene-display figure of boogeymonster factory cutscene;
		say "Sitting on the blue plastic throne, you timidly unzip your overalls[if the player is possessing a penis] and let your [player-penis] hang out[end if]. It FEELS like everyone around you can see it, but you can't tell for sure whether or not they can. You put your hands over the top just in case, but that just makes you look even more like a loser.[paragraph break]Having detected your weight, the digital timer on the front of the toilet begins to count upwards.[line break][second custom style]'Employee [NameBimbo] has wasted 8 seconds of company time on the toilet!'[roman type][line break]A shrill robotic voice announces.[line break][variable custom style]Wait, how does it know my name?[roman type][line break]But that question isn't important right now. What's important is getting off this thing as soon as possible. You will yourself to pee, but it's difficult when there's so many people around you and some are even cruel enough not to look away.[line break][second custom style]'Employee [NameBimbo] has wasted 22 seconds of company time on the toilet!'[roman type][line break]The accursed device continues to draw attention to you, giving you stage fright and making it take even longer for anything to come out.[line break][second custom style]'Employee [NameBimbo] has wasted 38 seconds of company time on the toilet!'[roman type][line break]Time keeps dragging on and you've resorted to pushing and pushing but still nothing will come out. But you can't leave until you've done your business. There's no way you can survive on the factory floor for hours with such a full bladder.[line break][second custom style]'Employee [NameBimbo] has wasted 55 seconds of company time on the toilet!'[roman type][line break]Finally, a little something comes out. As it tinkles down into the bowl, it spins the water wheel at the bottom, which strikes the bells. A loud jingling fills the air, and everyone around you watches that water wheel spin, making them all fully aware of the fact that you're currently peeing, without them having to actually see your flow first-hand. And then... your flow stops. Not because you're done, but because instead of being able to relax and let it go naturally, you are having to squeeze and push, which is making it come out in short, unfulfilling bursts.";
		say "[second custom style]'Employee [NameBimbo] has wasted 1 minute and 20 seconds of company time on the toilet!'[roman type][line break]That damned voice continues to unemotionally taunt you. Each big push you make causes a little tinkle (accompanied by a loud jingle), but progress is painfully slow.[line break][second custom style]'Employee [NameBimbo] has wasted 1 minute and 45 seconds of company time on the toilet!'[roman type][line break]The woman and man from your machine are avidly watching you, chuckling to themselves and proudly patting their diapers.[line break][second custom style]'Employee [NameBimbo] has wasted 2 minutes and 4 seconds of company time on the toilet!'[roman type][line break]You wish that you had worn a diaper! This is the most humiliating moment of your life.[line break][second custom style]'Employee [NameBimbo] has wasted 2 minutes and 23 seconds of company time on the toilet!'[roman type][line break]It's no use, you're way too self-conscious to pee normally. You have to keep going with this desperate pushing method until your bladder is completely empty.[line break][second custom style]'Employee [NameBimbo] has wasted 2 minutes and 47 seconds of company time on the toilet!'[roman type][line break]This would have been so much less embarrassing if you had just worn a diaper like everyone else.[line break][second custom style]'Employee [NameBimbo] has wasted 3 minutes and 5 seconds of company time on the toilet!'[roman type][line break]Your face is the colour of beetroot.[line break][variable custom style]I'm going to wear diapers to work every day for the rest of my life rather than suffer through this again![roman type][line break]You must be losing so much of their respect right now. You force out squirt after tiny squirt of pee, each one causing a resounding bell jingle that echoes throughout the factory[line break][second custom style]'Employee [NameBimbo] has wasted 3 minutes and 36 seconds of company time on the toilet!'[roman type][line break]Nothing more is coming out. You shake, wipe, and zip back up. When you stand, the seat automatically flushes.[line break][first custom style]'Bladder problems?'[roman type][line break]The man asks innocently. The woman snickers. You wish the ground would just open up and swallow you whole. At least then you wouldn't have to suffer through this moment.[line break][variable custom style]It's diapers for me from here on out.[roman type][line break]";
		DiaperAddictUp 2;
		say "And then... you're back in the [location of the player]. You wrestle free from [NameDesc of M][']s grasp and step back, gasping.[line break][variable custom style]It was all a dream?![roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] tries to grab your arm with a tentacle but you pull away just in time!".

Chapter 3 - Damage

To compute damage reaction of (M - boogeymonster):
	if M is uninterested:
		say "It growls viciously! Uh-oh...";
	otherwise:
		if the health of M > the maxhealth of M / 2, say "It snarls through gnashing teeth!";
		otherwise say "It seems to be breathing more heavily, as if it is getting tired!".

To say BanishFleeFlav of (M - boogeymonster):
	say "[BigNameDesc of M] shrieks as it begins to fold in on itself! You watch with disgust as it shrinks into itself, tinier and tinier until there's nothing left.".

To compute unique banishment of (M - boogeymonster):
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
