Unicorn by Monster begins here.

Unicorn is a monster. Unicorn is intelligent. Unicorn is male. Unicorn can be unicorn-awakened. Unicorn is not unicorn-awakened. Understand "the unicorn" as unicorn.[so he can be purloined] The text-shortcut of unicorn is "uni".

[
The unicorn is a passive monster that will get hornier the more he interacts with the player. After meeting a certain threshold, he becomes aggressive and gains a super huge dick to help him achieve his newfound sexual goals. Favour is kind of finnicky as a stat, so instead we're using blue-balls to keep track of how horny he is. He stutters. A lot.

Monsters defend the unicorn if you attack him, because he's magic. The djinn is the exception to this rule.

The unicorn drops a special piece of loot, the "unicorn-horn." 

]

To decide which number is the girth of (M - a unicorn):
	if M is unicorn-awakened, decide on 6;
	decide on 2.

Definition: A unicorn (called M) is willing to urinate:
	if M is unicorn-awakened and mythical creature fetish is 1, decide yes;
	decide no.

To say speech style of (M - unicorn):
	say second custom style.

Definition: a unicorn (called M) is father material:
	decide no.

Definition: a unicorn (called M) is raunchy:
	if M is unicorn-awakened, decide yes;
	decide no.

Definition: A unicorn (called M) is woods dwelling:
	decide yes.

To say ShortDesc of (M - a unicorn):
	say "unicorn".

To say MediumDesc of (M - a unicorn):
	say "unicorn".

To say MonsterDesc of (M - a unicorn):
	say "A short, thin person with ivory colored skin and long silvery hair. [big his of M] features are soft, and the way [his of M] clothing hugs [his of M] the contours of [his of M] body leaves you unsure of what you might find in [his of M] underwear. [if M is not unicorn-awakened]It looks like there's a slight bulge in [his of M] panties, but the corrugated horn the parts the hair on [his of M] forehead always seems to draw your attention before you can get a clear look, almost like magic[otherwise if mythical creature fetish is 1]That is, if a huge, pulsating horse-dick were not bobbing out of [NameDesc of M]'s panties, visibly steaming with heat. It should be really distracting, but you always find your attention wandering up to the corrugated horn parting the hair on [NameDesc of M]'s forehead instead[otherwise]That is, if a huge, fifteen-inch dick were not sticking out of [NameDesc of M]'s panties, covered in glowing tattoos that seem to pulse with a will all their own. It should be the center of your attention, but instead, you always find your gaze wandering up to the corrugated horn that parts the hair on [NameDesc of M]'s forehead, no matter where you look[end if].".

To set up (M - a unicorn):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M;
	if the player is not a March 2018 top donator, now M is off-stage.

This is the spawn potential unicorn rule:
	if a random number between 1 and 2 is 1:
		summon unicorn in the woods.
The spawn potential unicorn rule is listed in the setting up woods monsters rules.

To compute appearance assessment of (M - a unicorn):
	let plScent be 0;
	if the class of the player is cowgirl or (the class of the player is catgirl and the player is a bit horny) or the player is very horny or the player is sissy or the number of glazed body parts > 0, now plScent is 1;
	if plScent is 1 or breasts is lewdly exposed:
		increase the blue-balls of M by 1;
	if the class of the player is succubus or the class of the player is vampire spawn, FavourDown M;
	if M is unfriendly or the class of the player is succubus or (plScent is 1 and M is not buddy) or the blue-balls of M is 4:[We know at this point that he isn't horny, so you probably attacked him if he's unfriendly.]
		if plScent is 1:
			if the player is prone:
				say "[BigNameDesc of M]'s nose twitches as a visible flush spreads over [his of M] face. [line break][speech style of M]'[one of]I-I'm already getting hard...'[or]T-there's no way I can stop it now...'[or]Its out of my control...'[at random][roman type]";
				now the blue-balls of M is 4;
			otherwise:
				say "[BigNameDesc of M]'s nose twitches as a visible flush spreads over [his of M] face. [line break][speech style of M]'[one of]I wish she was kneeling...'[or]W-why couldn't she be kneeling...'[or]W-what if she was kneeling...'[at random][roman type]";
				if a random number between 1 and 5 is 1:[TODO: less likely to affect evil classes]
					say "Your eyes are drawn to the horn on [NameDesc of M]'s forehead as an overwhelming urge to please [him of M] causes you to suddenly get on your knees.[line break][speech style of M]'[one of]I c-can't stop myself now! Y-YOU'RE MINE!'[or]Y-you must have known I...I c-can't stop it!'[or]Sh-she meant to do that! SHE'S TEASING ME BECAUSE SHE WANTS IT!'[or]I-I can't hold back now! G-GET READY!'[in random order][roman type][line break]";
					now the blue-balls of M is 4;
					now the stance of the player is 1;
				otherwise:
					say "Your eyes are suddenly drawn to the horn on [NameDesc of M]'s forehead, but you manage to fight off a strange urge to immediately get on your knees. The unicorn starts to back away, doubled over with both hands covering [his of M] crotch.[line break][speech style of M]'[one of]G-gotta go!'[or]See you l-later!'[or]T-there's something I need to do!'[in random order][roman type][line break]";
					now the scared of M is 40;
		otherwise:
			say "[BigNameDesc of M] freezes.[line break][speech style of M]'[one of]W-What do you want?'[or]I-if you're here to attack me, I-I'll...'[or]J-Just so you know, I c-can defeat you.[or]I-I[']m not scared of you!'[in random order][roman type][line break]";
	otherwise if M is buddy:
		if plScent is 1:
			say "[BigNameDesc of M]'s nose twitches as a visible flush spreads over [his of M] face. [line break][speech style of M]'[one of]I wish she was kneeling...'[or]W-why couldn't she be kneeling...'[or]W-what if she was kneeling...'[at random][roman type]";
			if a random number between 1 and 5 is 1:[TODO: less likely to affect evil classes]
				say "Your eyes are suddenly drawn to the horn on [NameDesc of M]'s forehead, and you immediately drop to your knees.[line break][speech style of M]'[one of]O-oh, did I do that?'[or]I didn't mean to do that. I mean, not really.'[or]I-I wasn't thinking! N-now you're on your knees!'[or]O-oh, you're on your knees now. F-Funny timing!'[in random order][roman type][line break]";
				now the stance of the player is 1;
				increase the blue-balls of M by 1;
			otherwise:
				say "Your eyes are suddenly drawn to the horn on [NameDesc of M]'s forehead, but you manage to fight off a strange urge to immediately get on your knees.[line break][speech style of M]'[one of]H-hey! Its me again! Just t-taking in all this fresh air!'[or]H-Hello! Your perfume smells good. Y-You[']re definitely wearing some, r-right?'[or]H-hi. A-are you wearing perfume or s-something? I-it smells really good!'[in random order]'[roman type][line break]";
		otherwise if breasts is lewdly exposed:
			say "[BigNameDesc of M]'s eyes snap to your chest, and then up to your face. [line break][speech style of M]'[one of]H-hello!'[or]N-nice to see you!'[or]So nice....I-I mean, nice to see you![or]I see you. I-I mean, its not like I don't see you or anything. I definitely see you. Yup.[in random order][roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] seems to recognize you, and [his of M] face lights up. [line break][speech style of M]'[one of]Can I follow you?'[or]I'll stick with you!'[or]Let me follow you.'[in random order][roman type][line break]";
	otherwise:
		if breasts is lewdly exposed:
			say "[BigNameDesc of M]'s eyes snap to your chest, and then up to your face. [line break][speech style of M]'[one of]H-hello!'[or]HI-I m-mean, hello.'[in random order][roman type][line break]";
		otherwise:
			say "[BigNamedesc of M] seems to relax slightly. [speech style of M]'[one of]Hello!'[or]Hi!'[stopping][roman type]".

Definition: a unicorn (called M) is objectifying the player:
	if the blue-balls of M > 3, decide yes;
	decide no.

To compute perception of (M - a unicorn):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed]![otherwise].[end if]";
	if M is unicorn-awakened:
		say "A low growl rumbles from deep in [NameDesc of M] throat as [he of M] turns toward you.[line break][speech style of M]'[one of]I n-need to cum!'[or]Please, I j-just want to cum inside you!'[or]Don't be mean, l-let me fuck you!'[at random][roman type][line break]";
		FavourDown M;
	otherwise if M is objectifying the player:
		compute sudden objectification of M;
		now M is unicorn-awakened;
		now the sex-length of M is the blue-balls of M;
	otherwise if the scared of M > 0:
		say "[BigNameDesc of M] turns the other way.[line break][speech style of M]'[one of]Leave me alone!'[or]Go away!'[or]Stop chasing me!'[at random][roman type][line break]";
		increase the scared of M by 10;
	otherwise:
		compute appearance assessment of M;
		if M is objectifying the player, compute sudden objectification of M.
	[if image cutscenes is 1, display interaction of M.]

To compute sudden objectification of (M - a unicorn):
	say "[BigNameDesc of M] doubles over, clutching [his of M] crotch as bulge slowly forms under the fabric of [his of M] panties. [line break][speech style of M]'[one of]Urgh..'[or]Oooaah...'[at random][roman type][line break][big he of M] grunts as a huge [manly-penis] [one of]springs out of[or]springs violently free from[or]bursts out of [at random] [his of M] underwear, [if mythical creature fetish is 1]flinging steaming hot precum in a small arc in front of [him of M][otherwise]pulsating with a will all its own[end if] as it reaches a full fifteen inches in length.";
	increase the difficulty of M by 4;
	now M is unicorn-awakened.[TODO: toggle awakened function that controls intelligence, difficulty and this flag]

To say SatisfiedFlav of (M - a unicorn):[TODO: improve]
	if M is unicorn-awakened:
		decrease the difficulty of M by 4;
		if the sleep of M > 0:
			say "[BigNameDesc of M]'s [manly-penis] slowly shrinks back down, disappearing back into [his of M] underwear as if nothing interesting just happened at all.";
		otherwise:
			say "[BigNameDesc of M] hurriedly stows [his of M] [manly-penis] back into [his of M] underwear as it slowly shrinks back down. [line break][speech style of M]'[one of]S-Sorry!'[or]I c-couldn't stop myself...'[or]I g-guess I could have been less rough...'[at random][roman type][line break]";
			now the scared of M is 20;
		now M is not unicorn-awakened;
		now the blue-balls of M is 0;
	otherwise:
		say "[BigNameDesc of M] looks really satisfied, and loses interest.".


Part 3 - Combat

[To say waitingflav of (M - a unicorn):
	if the player is able to speak:
		say "[one of][line break][variable custom style]'[if the bimbo of the player < 10]Go on then, let's get this over with.'[otherwise]You're the boss, big boy!'[end if][roman type][line break][or][or][or][or][cycling]";
	otherwise:
		say "[variable custom style][muffled sounds][roman type][line break]".]

Section 1 - Protect and Attack

To compute (M - a monster) protecting against (X - a unicorn):
	say "[BigNameDesc of X]'s horn seems to catch [NameDesc of M]'s eye, and [he of M] stares at it blankly for a moment before suddenly rounding on you.[if M is intelligent][line break][speech style of M]'Get away from [him of X]!'[roman type][line break][end if]";
	anger M.

To compute (M - a unicorn) protecting against (X - a monster):[if you are having sex, he'll get a bit turned on]
	if (X is witch or X is gladiator or X is ballooned aeromancer) and breasts is lewdly exposed:
		say "[BigNameDesc of M] looks from the [X]'s chest to yours, visibly blushing.";
		if a random number between 1 and 3 is 1, increase the blue-balls of M by 1;
	otherwise if the player is live fucked:
		say "[BigNameDesc of M] watches you with visibly reddened cheeks.";
		if a random number between 1 and 2 is 1, increase the blue-balls of M by 1;
	unless M is objectifying the player:
		say "[speech style of M]'I-I have to go!'[roman type] [BigNameDesc of M] runs away!";
		now the scared of M is 30;
		Bore M.

To compute the default taunting of (M - a unicorn):
	if M is unicorn-awakened:
		say "[BigNameDesc of M] masturbates furiously as [he of M] watches you.";
	otherwise if M is unfriendly:
		say "[BigNameDesc of M] fondles [his of M] crotch as [he of M] watches you.";
	otherwise:
		say "[BigNameDesc of M] watches you, unable to conceal how turned on [he of M] is.";
		if a random number between 1 and 3 is 1, increase the blue-balls of M by 1.

To say PissDrinkThreat of (M - a unicorn):
	say "[speech style of M]'[one of]Drink it! Drink it all[or]I-I[']m gonna make you a toilet[or]I-I want to see you drink it[in random order]!'[roman type][line break]Something about the heat radiating off [his of M] [manly-penis] seems to promise a punishment if you don't let some in your mouth.".

To say UrinationFlav of (M - a unicorn):[Should only happen when he's "awakened"]
	say "[BigNameDesc of M] holds [his of M] huge [manly-penis] inches away from your face, [one of]sighing in relief[or]furrowing [his of M] eyebrows[or]shivering with relief[at random] as a stream of [urine] flows from the tip.[if the humiliation of the player < HUMILIATION-MODEST + 1500 and the urine taste addiction of the player < 7][line break][variable custom style][line break]This can't be happening[one of].[or] again![stopping][roman type][line break][end if]".

To say PresentAcceptanceFlav of (M - a unicorn):[TODO: more interesting]
	say "[speech style of M]'[one of]You'd do that for me?'[or]Yes! Finally!'[stopping][roman type] [BigNameDesc of M] seems convinced by your request!".

To say NormalMouthPenetrationFlav of (M - a unicorn):
	if M is unicorn-awakened:
		say "[one of][if the relevant sex addiction of M < 8][BigNameDesc of M] presses the tip of [his of M] [manly-penis] against your lips, smearing [his of M] precum up and down your chin until you finally relent and let [him of M] slide in. You glower up at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13][BigNameDesc of M] presses the tip of [his of M] [manly-penis] against your lips, smearing [his of M] precum up and down your chin until you finally give in and open your mouth, emitting a slow sigh through your nose as [his of M] shaft slides through your lips.[otherwise][BigNameDesc of M] positions [his of M] [manly-penis] between your lips. You immediately open them, sighing contentedly as [he of M] enters your mouth.[end if][or][BigNameDesc of M] puts one hand on the back of your head, rapidly jerking [him of M]self off as [his of M] tip prods your lips. [if the relevant sex addiction of M < 8] You open your mouth to tell [him of M] off, but [he of M] immediately inserts [his of M] [manly-penis] and begins to thrust.[otherwise if the relevant sex addiction of M < 12]Knowing what's to come, you slowly open your mouth and accept [his of M] invading shaft.[otherwise]You obediently loll out your tongue, gazing at [his of M] [manly-penis] reverently as it slides through your lips.[end if][or][BigNameDesc of M] points to your mouth, desperately pumping [his of M] [manly-penis]. [if the relevant sex addiction of M < 7]You snarl. [line break][first custom style]'Not my proble-'[roman type][line break][big he of M] cuts you off by immediately shoving [himself of M] into your mouth. You glare lividly as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13]You open and loll out your tongue, avoiding eye contact with [him of M] as [his of M] [manly-penis] slides through your lips.[otherwise]You greedily lean forward and take [his of M] huge, yummy [manly-penis] into your mouth.[end if][or][BigNameDesc of M] points to your mouth, whining as [he of M] jerks [him of M]self off. [if the relevant sex addiction of M < 3]You spit at [his of M] feet. [line break][first custom style]'That[']s your problem! Ask-'[roman type][line break][big he of M] cuts you off by immediately shoving [his of M] [manly-penis] in your mouth. You glare at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 7]You slowly open it, not sure whether to hate or congratulate yourself as [his of M] massive [manly-penis] slides past your lips.[otherwise if the relevant sex addiction of M < 11]You obediently open your mouth, telling yourself not to enjoy it too much as [he of M] slides in.[otherwise]You eagerly part your lips and accept [his of M] huge [manly-penis] into your mouth.[end if][in random order]";
	otherwise:[The unicorn is cute so you suck his dick]
		say "[one of][BigNameDesc of M] stares at you with puppy dog eyes, holding [his of M] [manly-penis] in front of your lips. [if the relevant sex addiction of M < 8]You stare back at [him of M] for a moment, until you finally feel guilty and relent. [big he of M] smiles happily as you reluctantly let [him of M] slide in and begin to thrust.[otherwise if the relevant sex addiction of M < 13]You know you can't resist for long, emitting a slow sigh through your nose as [his of M] shaft slides through your lips.[otherwise]You don't make [him of M] wait a second longer, sighing contentedly as [he of M] enters your mouth.[end if][or][BigNameDesc of M] gingerly places one hand on the back of your head, slowly stroking [his of M] dick. [if the relevant sex addiction of M < 8] You start to insult [him of M], but think better of it, reluctantly opening your mouth as [he of M] inserts [his of M] [manly-penis] and begins to thrust.[otherwise if the relevant sex addiction of M < 12]Knowing what's to come, you slowly open your mouth and accept [his of M] invading shaft.[otherwise]You obediently loll out your tongue, gazing at [his of M] [manly-penis] reverently as it slides through your lips.[end if][or][BigNameDesc of M] points to your mouth, gingerly pumping [his of M] [manly-penis]. [if the relevant sex addiction of M < 7]You curl your lip and start to insult [him of M], but with the way [he of M]'s looking at you, you can't bring yourself to finish it.[line break][first custom style]'You-...You're a-...Fine.'[roman type][line break][big he of M] does a tiny hop as [he of M] pushes [himself of M] into your mouth and begins to thrust.[otherwise if the relevant sex addiction of M < 13]You open and loll out your tongue, trying not to feel too giddy as [his of M] [manly-penis] slides through your lips.[otherwise]You greedily lean forward and take [his of M] [manly-penis] into your mouth.[end if][or][BigNameDesc of M] points to your mouth, whining as [he of M] jerks [him of M]self off. [if the relevant sex addiction of M < 3]Its the cutest sound you've ever heard, and it immediately derails the insult you had planned. You roll your eyes and open your mouth as [he of M] slides [his of M] [manly-penis] through your lips and begins to thrust.[otherwise if the relevant sex addiction of M < 7]You slowly open it, not sure whether to hate or congratulate yourself as [his of M] [manly-penis] slides past your lips.[otherwise if the relevant sex addiction of M < 11]You happily open your mouth, telling yourself not to enjoy it too much as [he of M] slides in.[otherwise]You eagerly part your lips and accept [his of M] cute [manly-penis] into your mouth.[end if][in random order]".

[For now, the unicorn doesn't change anything from the orgasm portion of the oral climax]
To compute angry punishment of (M - a unicorn):[If he's "awakened" the curse should do something special. Otherwise he doesn't mind that much. This means the awakened cooloff should be after climax has been handled fully]
	if M is unicorn-awakened:
		let X be a random off-stage cow ears;
		if a random number between 1 and 4 is 1:[]
			if the lips of face < 2 + artificial enhancements fetish:
				say "Your lips swell significantly as a harsh burning sensation passes through the inside of your mouth, leaving you with a lasting reminder of all the pain you just endured, and how to avoid it next time.";
				LipsUp 1;
			otherwise:
				say "Your lips form a pronounced O-shape as a harsh waves of pain pass along the bottom of your mouth and down your throat. The sensation lingers in your head even after it has stopped, and you realize it has intensified your desire for oral sex.";
				OralSexAddictUp 1;
		otherwise if X is actually summonable:
			say "A pair of [printed name of X] materializes in your hair as a flash of red light fills your vision. You can't help but imagine the pain of being branded as property, and the the sensation lingers in your thoughts long after the light fades.";
		otherwise if the number of worn clothing > 0:
			let C be a random worn tearable clothing;
			if C is clothing:
				say "Your [printed name of C] bursts into flame, instantly disappearing in a blash of painful cinders. The thought of that pain seems to fill in the space left by your clothes.";
				destroy C;
		otherwise:
			say "Your stomach turns over as a harsh burning sensation passes through your whole body, leaving you with a long lasting reminder of all the pain you brought on yourself for your resistance.";
			DelicateUp 1;
		DelicateUp 1;[always a delicateness increase]
	otherwise:
		compute angry forgiveness of M.

To check forgiveness of (M - a unicorn):
	if M is not unicorn-awakened or (the class of the player is priestess and a random number between the blue-balls of M  * -1 and the charisma of the player > 1):
		compute angry forgiveness of M;
	otherwise:
		compute angry punishment of M.

To say ForgivenessFlav of (M - a unicorn):
	if M is unicorn-awakened:
		say "Your stomach turns over, but before the feeling can intensify, you hear a voice in your head! [line break][first custom style]Beloved sister, I will protect you from this curse![roman type][line break]A rush of relief pushes the bad feeling from your body!";
	otherwise:
		say "[BigNameDesc of M] seems a little disappointed.".

To say OralResistingResponse of (M - a unicorn):
	if M is unicorn-awakened, say "[one of][BigNameDesc of M] aggressively facefucks you with [his of M] massive [manly-penis]![or][BigNameDesc of M] holds you in place with both hands, repeatedly slamming [his of M] massive [manly-penis] down your throat.[or][BigNameDesc of M] pistons [his of M] [manly-penis] in and out of your mouth, mewling with pleasure as the huge thing repeatedly plunges down your throat.[or][BigNameDesc of M] gags you repeatedly as [he of M] slams [his of M] huge [manly-penis] down your throat.[or][BigNameDesc of M] is too absorbed with slamming [his of M] huge [manly-penis] down your throat to notice your protests![or][BigNameDesc of M] continues thrusting with little to no acknowledgement of your protests, mewling in pleasure as [his of M] cockmeat plunges in and out of your mouth.[in random order]";
	otherwise say "[one of][BigNameDesc of M] seems too absorbed with getting [himself of M] off to acknowledge your protests![or][BigNameDesc of M] holds on tightly, too absorbed with how [his of M] [manly-penis] feels in your mouth to acknowledge your protests![or][BigNameDesc of M] doesn't seem to notice your protests, panting as [he of M] fucks your mouth with [his of M] [manly-penis][or][BigNameDesc of M] continues thrusting with no acknowledgement of your protests.[or][BigNameDesc of M] continues thrusting despite your protests![in random order]".

To say NormalSubOralResponse of (M - a unicorn):
	say "[one of][BigNameDesc of M] meets the bobbing of your head with eager thrusts.[or][BigNameDesc of M] holds your head with both hands, rolling [his of M] hips to meet the bobbing of your head.[or][BigNameDesc of M] holds on tightly, mewly with pleasure as you polish [his of M] [if M is unicorn-awakened]massive rod[otherwise]shrimpy dick[end if].[or][BigNameDesc of M] thrusts steadily, huffing quietly as you [if the oral sex addiction of the player < 4]reluctantly[otherwise]eagerly[end if] polish [his of M] shaft.'[or][BigNameDesc of M] aggressively guides your movement, mewling quietly as you [if the oral sex addiction of the player < 4]reluctantly[otherwise]submissively[end if] suck [his of M] [manly-penis].[in random order]".

To say NearingClimaxOral of (M - a unicorn):
	if M is unicorn-awakened, say "[one of]You feel your lips heat up as [NameDesc of M]'s thrusting grows even faster![or][BigNameDesc of M]'s thrusts grow faster and faster as you feel your lips slowly heating up.[or][BigNameDesc of M] face fucks you even harder, moaning uncontrollably as your lips begin heating up.[or]Your lips seem to heat up as [NameDesc of M] picks up speed, moaning as [he of M] rapidly slams [his of M] [manly-penis] down your throat.[at random]";
	otherwise say "[one of][BigNameDesc of M]'s moaning grows louder as [his of M] thrusting speeds up![or][BigNameDesc of M] begins breathing very rapidly, and you can feel [his of M] [manly-penis] begin spasming against your tongue.[or][BigNameDesc of M]'s grip on your head noticeably tightens, and [his of M] moans groan even louder![in random order][line break][speech style of M]'[one of]MM! MMM!'[or]OOH! OOOH!'[or]AAH! AAAH!'[at random][roman type][line break]".

To say SwallowDemand of (M - a unicorn):
	if M is unicorn-awakened, say "Your lips [one of]continue to burn with heat[or]radiate palpable heat[or]hold their heat[or]radiate intense heat[at random] as you hold the [semen] in your mouth, and [one of]you realize the curse is ordering you to swallow[or]once again you 'feel' the order to swallow[or]once again you feel it ordering you to swallow[then at random].";
	otherwise say "[BigNameDesc of M] stares at you with a hopeful look in [his of M] eyes. [big he of M]'d probably like it if you swallowed [his of M] cum!";

To compute happy reward of (M - a unicorn):
	if M is unicorn-awakened:
		say "The heat remains for a few seconds before slowly disappating.";[see above function]
	otherwise:[TODO: maybe he blesses you with his horn or something]
		say "[BigNameDesc of M]'s eyes widen, and a little blush spreads across [his of M] cheeks as [his of M] [manly-penis] slowly softens.";
		FavourUp M by 1;
	FavourUp M by 1.

To say SpitroastPrep of (M - a unicorn) with (O - a monster) in (F - asshole):
	say TwosomePrep of M in F.
To say ThreesomePrep of (M - a unicorn) with (N - a monster) in (F - asshole):
	if N is intelligent and M is unicorn-awakened, say "The [N] flips you over so you're face to face, holding you by the waist as [NameDesc of M] grinds [his of M] huge [manly-penis] between your asscheeks.";
	otherwise say TwosomePrep of M in F.		
To say FoursomePrep of (M - a unicorn) with (N - a monster) and (O - a monster) in (F - asshole):
	if N is intelligent, say "The [N] flips you over so your chin is resting on [his of N] chest, holding you by the waist as [NameDesc of M] grinds [his of M] huge [manly-penis] between your asscheeks.";
	otherwise say TwosomePrep of M in F.
To say TwosomePrep of (M - a unicorn) in (F - asshole):
	if M is unicorn-awakened, say "[BigNameDesc of M] hungrily grinds [his of M] [manly-penis] between your asscheeks, grunting with need as [he of M] lines up the tip with your hole.";
	otherwise say "[BigNameDesc of M] gently pushes your cheeks apart, lining up [his of M] [one of]shrimpy [or]short [or][at random][manly-penis] with your hole.".

To say PrepTaunt of (M - a unicorn) in (F - a fuckhole):
	if M is unicorn-awakened and M is unwrapped:
		if F is vagina, say "[line break][speech style of M]'[one of]I-I'm gonna breed you![or]L-lets breed!'[or]Lemme cum inside you!'[or]I'm gonna CUM inside you!'[or]BREED! BREEEED!'[at random][roman type]";
		otherwise say "[line break][speech style of M]'[one of]Lemme cum inside![or]I-I'll put it all inside...'[or]I GET ANAL!'[or]Creampie! CREAMPIE!'[or]NO PULL OUT!'[at random][roman type]".

To say SpitroastPrep of (M - a unicorn) with (O - a monster) in (F - vagina):
	say TwosomePrep of M in F.

To say ThreesomePrep of (M - a unicorn) with (N - a monster) in (F - vagina):
	if N is intelligent, say "The [N] flips you so your head is resting on [his of N] chest, holding you by the waist as [NameDesc of M] eagerly lines up [his of M] tip with your hole.";
	otherwise say TwosomePrep of M in F.
		
To say FoursomePrep of (M - a unicorn) with (N - a monster) and (O - a monster) in (F - vagina):
	if N is intelligent and M is unicorn-awakened, say "The [N] pulls you into [his of N] lap, pinning your arms to your waist as [NameDesc of M] eagerly lines up [his of M] tip with your hole.";
	otherwise say TwosomePrep of M in F.

To say TwosomePrep of (M - a unicorn) in (F - vagina):
	if M is unicorn-awakened, say "[BigNameDesc of M] pushes your legs out of the way, grunting with need as [he of M] lines up [his of M] tip with your hole.";
	otherwise say "[BigNameDesc of M] gingerly pulls one of your legs out of the way, flattening [him of M]self against you as [he of M] lines up [his of M] [manly-penis] with your hole.".

To decide if (M - a unicorn) is willing to creampie (F - a fuckhole):
	if M is unicorn-awakened, decide yes;
	decide no.

To compute post climax effect of (M - a unicorn) in (F - a fuckhole):
	compute M sleeping 200 after sex;
	now the blue-balls of M is 0;
	FavourUp M;
	now M is uninterested;
	Satisfy M;
	if newbie tips is 1, say sleeping tip.

To say CreampieFlav of (M - a unicorn) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] growls incoherently, tigthening [his of M] grip as [he of M] unloads all of [his of M] up frustration directly into your [variable F].[or][BigNameDesc of M] rapidly speeds up as [he of M] erupts directly into your [variable F], throughly blasting your insides with wave upon wave of fresh, creamy [semen].[or][at random] [big he of M] continues thrusting long after [his of M] orgasm off, slumping over asleep as soon as [his of M] [DickDesc of M] softens enough to slide out.".

To decide which number is the condom resistance of (M - a unicorn):
	if M is unicorn-awakened, decide on 99;
	decide on -1.

To say CondomRejectFlav of (M - a unicorn):
	let R be 0;
	repeat with W running through wenches in the location of the player:
		if the guard-obedience of M is 1 and R is 0:
			say "The [W] rips the condom out of your hand and tears it in half! [BigNameDesc of M] grins. Looks like [he of M][']s going in bare...";
			now R is 1;
	if R is 0, say "[BigNameDesc of M] [one of]scoffs[or]frowns[or]rolls [his of M] eyes[at random], and ignores your suggestion. Looks like [he of M][']s going in bare...".

To say CondomPieFlav of (M - a unicorn) in (F - a fuckhole):
	say "[BigNameDesc of M] moans with pleasure as the condom floods with warmth, and [he of M] slowly slumps over asleep as [his of M] softening [DickDesc of M] slides out.".

To say PullOutFlav of (M - a unicorn) in (F - a fuckhole):
	say "[BigNameDesc of M] pulls out, panting heavily as [he of M] sprays [his of M] load all over the floor and then immediately falls asleep.".

To say MessyPullOutFlav of (M - a unicorn) in (F - a fuckhole):
	say "[BigNameDesc of M] loses control as [he of M] pulls out, moaning in pleasure as [he of M] paints your [variable F] with fresh [semen] and then immediately falls asleep.".

Section 3 - Damage

[To compute damage of (M - a unicorn):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "She [if the sleep of M > 0]wakes up and [end if]snarls menacingly!  Uh-oh...";
			now M is interested;
			now the variety of M is gladiator-next-level of M;
			anger M;
			now the sleep of M is 0;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0:
			compute death of M.]

To say DamageReactHealthy of (M - a unicorn):
	say "[big he of M] yelps in pain!".

To say DamageReactDamaged of (M - a unicorn):
	say "[big he of M] grunts in pain!".

To say DamageReactTired of (M - a unicorn):
	say "[big he of M] staggers, squeaking in pain!".

To say DamageReactWeak of (M - a unicorn):
	say "[big he of M] screams in pain, struggling to maintain [his of M] balance!".

To compute unique death of (M - a unicorn):[TODO: unicorn horn]
	say "The [noun] silently slumps to the ground, dead.";
	loot M;[PLACEHOLDER, he should drop his horn]
	let D be unicorn-horn;
	if D is off-stage:
		now D is in the location of the player;
		say "The horn on [his of M] head detaches, rolling in a small arc along the ground.";
		compute autotaking D.

Part 4 - Conversation

To compute annoyance of (M - a unicorn):
	if M is uninterested:
		say "[BigNameDesc of M] does not seem to realize you're talking to [him of M].";
	otherwise if M is unicorn-awakened:
		say "[speech style of M]'[one of]Your mouth is so sexy...'[or]My dick wants to talk too!'[at random][roman type][line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'You won't harvest my horn!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Stop, you're going to draw attention to me...'[roman type][line break]".
		[now the questioned of M is 413.]

To compute teaching of (M - a unicorn):
	say "[speech style of M]'If you ever do get assaulted, never underestimate the power of admitting your assailant's superiority and pleading for mercy. You never know, it might just soften their heart.'[roman type][line break]";
	teach begging for mercy;
	increase the questioned of M by 100.

To say WhereAnswer of (M - a unicorn):
	say "[speech style of M]'The safest place in Bimbacia.'[roman type][line break]";
	
To say WhoAnswer of (M - a unicorn):
	say "[speech style of M]'My name is Elwyn.'[roman type][line break]";
	
To say StoryAnswer of (M - a unicorn):
	say "[speech style of M]'[one of]I was freed from eternal servitude by a beautiful princess. I want to use my horn to help her!''[or]The demon lord wanted the power of my horn, so he cursed me and made me his pet. He was defeated, but he still calls me sometimes.'[at random][roman type][line break]";

To say EscapeAnswer of (M - a unicorn):
	say "[speech style of M]'[one of]There's a mansion somewhere nearby. But...last time I went there, I almost got turned into a vampire.[or]There's a hotel you can stay in. The owner is really mean.'[or]You can try to escape, but in Bimbacia, anal sex always has a way of finding you.'[at random][roman type][line break]".

To say AdviceAnswer of (M - a unicorn):
	say "[speech style of M]'[one of]If someone is trying to fuck you, try to make them use a condom. Its degrading, but at least you won't have to worry about what you're going to do with a huge creampie.'[or]The mechanic creates these magical constructs called robots. Some say he has the power to repair them if they are destroyed.'[or]If you're really thirsty, you can lick cum off the floor. Not here, though...'[or]Some sex toys have magical enchantments that only work if you keep them in your butt.'[at random][roman type][line break]".

Unicorn ends here.
