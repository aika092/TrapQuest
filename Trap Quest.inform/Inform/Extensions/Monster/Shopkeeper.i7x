Shopkeeper by Monster begins here.

[Note that payments to the shopkeeper are handled by Actions/Paying.i7x]

shopkeeper is a monster. shopkeeper is male. shopkeeper is intelligent. The leftover-type of shopkeeper is 108. shopkeeper has a number called stolen-aware.

shopkeeper has a number called BBCTrainingQuest. [0: Quest not started. 1: Quest in progress. 2: Quest completed. 3: Reward given.]

Definition: shopkeeper is willing to urinate: decide yes.

Definition: shopkeeper is dark skinned: decide yes.
Definition: shopkeeper is condom prepared: decide yes. [Does he have condoms on him?]

Definition: shopkeeper is raunchy: decide yes.

Definition: shopkeeper is wenchy: decide yes.

Definition: shopkeeper is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

Definition: shopkeeper is a generic-unlocker: decide yes.
Definition: shopkeeper is closest-toilet-preferring: decide yes.
Definition: shopkeeper is certain to do anilingus:
	if it is not a balls-haver, decide yes;
	decide no.

shopkeeper has a number called discounts. [the discounts of shopkeeper is 1.]

shopkeeper is in Dungeon41. Understand "shop", "keeper" as shopkeeper. The printed name of shopkeeper is "[if item described is in the location of the player][TQlink of item described][end if][input-style]well built shopkeeper[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of shopkeeper is "sh". Understand "well", "built" as shopkeeper.

Figure of female shopkeeper is the file "NPCs/Dungeon/Shopkeeper/shopkeeper5.png".

To say ShortDesc of (M - shopkeeper):
	say "shopkeeper".

To say MediumDesc of (M - shopkeeper):
	say "shopkeeper".

To decide which figure-name is the monster-image of (M - shopkeeper):
	if diaper quest is 0 and lady fetish is 1:
		decide on figure of female shopkeeper;
	otherwise:
		decide on figure of Shopkeeper 1.


To say MonsterDesc of (M - shopkeeper):
	if M is diaper-enslaved:
		say "This poor black [man of M] has been encased in a red latex catsuit, complete with matching ring-gagged hood. A stupidly thick diaper sits between [his of M] legs underneath the catsuit, keeping [his of M] thighs far apart. [big his of M] wrists and neck are trapped inside holes inside one of the shelves attached to the wall of [his of M] shop, preventing [him of M] from standing up or moving away. [big he of M] can't speak, can't move, can't do anything but sit there, moan, and fill [his of M] huge diaper over time, relying on visitors to feed [him of M] food or drink through [his of M] permanently open mouth.";
	otherwise if diaper quest is 1:
		say "This tall black [man of M] is dressed from head to toe in [']sexy['] baby gear - A puffy yellow top with frills at the sleeves, cute pink skirted dungarees, and a huge thick white diaper. Knee-high frilly white socks sit under cute chunky pink high heels. You also can't help but notice that [he of M] is very busty, and rather well built. [big he of M] exudes an air of power, despite [his of M] cutesy appearance.";
	otherwise:
		say "[one of]The shopkeeper is a chiselled black [man of M] with thick, sinewy muscles covering [his of M] entire body. Despite the fact that [he of M]'s naked, you can tell from [his of M] posture that it doesn't bother [him of M] in the least. It may have something to do with the subtle martial arts tattoos on [his of M] biceps, but more likely it's [his of M] [LongDickDesc of M]. [big he of M] constantly scans the room with a hawk-like gaze.[or]The shopkeeper is a giant naked black [man of M] with a [LongDickDesc of M] dangling freely between [his of M] legs. [big his of M] body is rippling with muscles, and [his of M] posture gives you the feeling that [he of M]'s a very skilled martial artist. [big he of M] constantly scans the room with a hawk-like gaze, seemingly not bothered by the fact you can see [his of M] junk.[sticky random]";
	if the discounts of M > 0, say "[line break][big he of M] has promised you [if the discounts of M is 1]a discount on your next purchase.[otherwise]discounts on your next [the discounts of M] purchases.[end if]".

To say MonsterComment of (M - a shopkeeper):
	if lady fetish is 0, say "[if interracial fetish is 1 and the bimbo of the player < 4][line break][first custom style]Ugh, that [manly-penis] is so big, there's nowhere else I can look![otherwise if interracial fetish is 1 and the bimbo of the player < 7][first custom style]Why can't I look away from [his of M] massive black [manly-penis]?[otherwise if interracial fetish is 1 and the bimbo of the player < 11][line break][variable custom style]Wow, it's just so big, and... majestic...[otherwise if interracial fetish is 1 and the bimbo of the player < 14][variable custom style]I'm getting weak at the knees just looking at that majestic monster...[otherwise if interracial fetish is 1][line break][second custom style]I hope [he of M]'ll let me worship [his of M] godly [manly-penis].[otherwise if the player is gendered female and the bimbo of the player < 6][first custom style][one of]Ugh. Put your [manly-penis] away, sicko.[or]Oh I get it, [he of M] doesn't trust women so [he of M] has to watch me all the time. Misogynist.[or]This pig isn't even wearing clothes. Who does [he of M] think [he of M] is?[or][big he of M] looks so sure of [himself of M]. Typical. Men are so obsessed with their penises.[or]A [man of M] in charge of the shop. How original.[in random order][otherwise if the bimbo of the player < 6][first custom style][one of]I probably shouldn't steal anything. [big he of M]'d definitely notice.[or][big he of M] is cut! Maybe I should get [him of M] to give me some workout tips.[or]This guy looks like [he of M] knows [his of M] stuff. Wish [he of M]'d put some pants on, but still.[in random order][otherwise if the bimbo of the player < 10][variable custom style][one of]I can't stop staring at [his of M] penis.[or][big he of M] looks strong. I wonder what it would feel like if [he of M] let me touch [his of M] muscles.[or]I shouldn't steal anything. Who knows how [he of M] might punish me.[or]I don't think I could outrun [him of M] if I stole something. [big his of M] body is just, wow.[in random order][otherwise][second custom style][one of][big he of M]'s really sexy![or]What a yummy looking penis![or]I want to touch [his of M] muscles.[or]What a HUNK![or]I can't stop staring at [his of M] penis! It looks so yummy![or][big he of M]'s YUMMY[in random order][end if][roman type][line break]";
	otherwise say "[if interracial fetish is 1 and the bimbo of the player < 4][line break][first custom style]Ugh, that [DickDesc of M] is so big, there's nowhere else I can look![otherwise if interracial fetish is 1 and the bimbo of the player < 7][first custom style]Why can't I look away from [his of M] massive black [DickDesc of M]?[otherwise if interracial fetish is 1 and the bimbo of the player < 11][line break][variable custom style]Wow, it's just so big, and... majestic...[otherwise if interracial fetish is 1 and the bimbo of the player < 14][variable custom style]I'm getting weak at the knees just looking at that majestic snake...[otherwise if interracial fetish is 1][line break][second custom style]I hope [he of M]'ll let me worship [his of M] godly [manly-penis].[otherwise if the player is gendered female and the bimbo of the player < 6][first custom style][one of]Ugh. Put your [manly-penis] away, sicko.[or]Oh I get it, [he of M] doesn't trust women so [he of M] has to watch me all the time. Misogynist.[or]This harlot isn't even wearing clothes. Who does [he of M] think [he of M] is?[or][big he of M] looks so sure of [himself of M]. Typical. [big he of M] should know that [DickDesc of M] doesn't mean anything to anyone.[or]A [man of M] in charge of the shop. I like it, but I wish [he of M] wasn't naked.[in random order][otherwise if the bimbo of the player < 6][first custom style][one of]I probably shouldn't steal anything. [big he of M]'d definitely notice.[or]That bitch is cut! Maybe I should get [him of M] to give me some workout tips. After [he of M] puts some underwear on, of course.[or]This chick looks like [he of M] knows [his of M] stuff. Wish [he of M]'d put some pants on, but still.[in random order][otherwise if the bimbo of the player < 10][variable custom style][one of]I can't stop staring at [his of M] [DickDesc of M].[or][big he of M] looks strong. I wonder what it would feel like if [he of M] let me touch [his of M] muscles.[or]I shouldn't steal anything. Who knows how [he of M] might punish me.[or]I don't think I could outrun [him of M] if I stole something. [big his of M] body is just, wow.[in random order][otherwise][second custom style][one of][big he of M]'s really sexy![or]What a yummy looking [DickDesc of M]![or]I want to touch [his of M] muscles.[or]What a HUNK![or]I can't stop staring at [his of M] [DickDesc of M]! It looks so yummy![in random order][end if][roman type][line break]".

To say LongDickDesc of (M - shopkeeper):
	if full-lady fetish is 1:
		say "[one of]big[or]huge[or]11 inch[at random] strap-on";
	otherwise:
		if interracial fetish is 1, say "[one of]big[or]huge[or]11 inch[at random] black [DickDesc of M]";
		otherwise say "huge 11 inch [DickDesc of M]".

To set up (M - shopkeeper):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now M is guarding;
	now the health of M is the maxhealth of M;
	add identification-powder to the tradableItems of M, if absent;
	add identification-powder to the taxableItems of M, if absent;
	if diaper quest is 1, now M is female.

To decide which number is the starting difficulty of (M - shopkeeper):
	decide on 13.

This is the spawn initial shopkeeper rule:
	if debugmode > 1, say "Now summoning shopkeeper.";
	if shopkeeper is alive, now shopkeeper is in Dungeon41.
The spawn initial shopkeeper rule is listed in the setting up dungeon monsters rules.

To decide which number is the girth of (M - shopkeeper):
	decide on 5.

To decide which number is the base semen load of (M - shopkeeper):
	decide on 3.

Definition: shopkeeper (called M) is able to remove plugs: [Can the monster remove uncursed butt plugs?]
	decide yes.

Definition: shopkeeper (called M) is willing to shag:
	if M is awake and the scared of M is 0 and the boredom of M < 120 and M is threatening, decide yes;
	decide no.


To say PregGrowth of (M - shopkeeper):
	say "the shopkeeper's [child]".

To compute labour to (M - shopkeeper):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		let MD be a random maternity dress;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and delivers the beautiful mixed race human baby. [big he of M] takes it into [his of M] arms and begins to cradle it.[line break][first custom style]'A baby girl! [if the father is mating]A wonderful addition to our family[otherwise]My first child. I will remember this moment for ever[end if][if MD is not held]. Here, take this[end if].'[roman type][line break]";
		if MD is not held:
			blandify and reveal MD;
			now MD is in the location of the player;
			say "[BigNameDesc of M] hands you a brand new maternity dress!";
			compute autotaking MD;
		say "Without giving you a chance to react, never mind reply, [he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

To compute fatherhood to (M - shopkeeper): [no reason to check for successful pregnancy here, since we already know pregnancy was not delayed at this point.]
	if M is not alive:
		if debugmode > 0, say "The father was [M], but [he of M] was off-stage.";
		say DefaultBirthScene;
	otherwise:
		now M is mating;
		now M is in Dungeon41.

Definition: shopkeeper is human: decide yes.

Definition: shopkeeper is dismissable: decide no.

To say LeftoverDesc (N - 108):
	say "The dead crumpled corpse of the shopkeeper is on the ground here.[line break]";

Part 1 - Misc Flavour

To say PerceptionFail of (M - shopkeeper):
	say "[BigNameDesc of M] fails to notice you [one of]slipping into[or]sneaking around in[stopping] the darkest corner of [his of M] shop.";
	now the boredom of M is 30;
	now M is not interested. [This won't happen if we don't put it here because the shopkeeper has a unique boredom function that keeps him interested.]

To say MonsterOfferAcceptFlav of (M - shopkeeper) to (T - a thing):
	if M is unfriendly:
		say "[BigNameDesc of M] smirks.[line break][speech style of M]'[if there is stolen thing]Fair enough. Next time, just pay first, [bitch]. [otherwise]I'm not going to turn that down, I'm not an idiot. But I'm still going to fuck you the next time I see you. [end if]Now get out of here.'[roman type][line break]";
		let N be the bartering value of T for M;
		repeat with C running through stolen things:
			if N >= the price of C:
				decrease N by the price of C;
				now the owner of C is nothing;
				trigger purchase-wisp-quest;
			if total stolen value is 0, calm M;
	otherwise:
		say "[BigNameDesc of M] seems very touched.[line break][speech style of M]'I was not expecting a gift! How very decent of you.'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - shopkeeper) to (T - a thing):
	say "[if M is unfriendly][BigNameDesc of M] frowns.[otherwise][BigNameDesc of M] shakes [his of M] head.[end if][line break][speech style of M][if convincing power > 0 and M is unfriendly]'You're not going to get let off that easy.'[otherwise]'I don't buy second hand items.'[end if][roman type][line break]".

To say OfferFriendshipFlav of (M - shopkeeper):
	say "[speech style of M][if M is buddy]'[big please] come again[otherwise if M is acquaintance]'Thank you for your custom[otherwise]'Don't try anything stupid on your way out[end if].'[roman type][line break]".

To decide which number is total stolen value:
	let N be 0;
	repeat with C running through stolen things:
		increase N by the price of C;
	decide on N.

To say GroundPeeReaction of (M - shopkeeper):
	if the player is in Dungeon41:
		if diaper quest is 1:
			if M is friendly:
				say "[BigNameDesc of M] looks furious.[line break][speech style of M]'What are you doing?! This is a shop, not a toilet! [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], you clearly need to be diapered and punished!'[roman type][line break]";
				anger M;
			otherwise:
				say "[BigNameDesc of M] frowns angrily.[line break][speech style of M]'This is why you need to be in diapers!'[roman type][line break][if M is uninterested]Uh-oh...[end if]";
				interest M;
		otherwise:
			if M is friendly:
				say "[BigNameDesc of M] looks furious.[line break][speech style of M]'What are you doing?! This is a shop, not a toilet! [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], I'm going to make you wish you never stepped foot in here!'[roman type][line break]";
				anger M;
			otherwise:
				say "[BigNameDesc of M] frowns angrily.[line break][speech style of M]'You are an utter disgrace!'[roman type][line break][if M is uninterested]Uh-oh...[end if]";
				interest M;
	otherwise:
		say "[speech style of M]'Hmph. At least it's not in my shop. I hate it when people pee in my shop.'[roman type][line break]".

To say BecomesBoredFlav of (M - shopkeeper):
	say "[BigNameDesc of M] seems to lose interest in you for now.".

To say DiaperReaction of (M - shopkeeper):
	if diaper quest is 1 and M is interested:
		say "[BigNameDesc of M] gives you a little wink as [he of M] watches you. It's very clear that [he of M] can tell what is happening.[line break][variable custom style][if the player is modest]Why did this have to happen to me?![otherwise if the player is not shameless]If [he of M] was kind, [he of M] would look away![otherwise]Yep that's right Miss, I'm going right now in my nappy![end if][roman type][line break]";
	otherwise if (there is a currently visible diaper or the player is shameless) and M is interested:
		say "[BigNameDesc of M] frowns as [he of M] watches you. It's very clear that [he of M] can tell what is happening.[line break][variable custom style][if the player is modest]Why did this have to happen to me?![otherwise if the player is not shameless]If [he of M] was kind, [he of M] would look away![otherwise]Yep that's right Sir, I'm going right now in my nappy![end if][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] doesn't look at you directly or say anything, so it's hard to gauge [if the player is not shameless]if [he of M] saw[otherwise][his of M] reaction[end if].".

Definition: shopkeeper (called M) is uniquely distracted:
	if the refractory-period of M < 0 and M is reactive:
		let N be a random undefeated wench in the location of M;
		if N is monster and (N is uninterested or N is friendly):
			if N is QoS wench or bbc-training of N >= 2:
				say "[BigNameDesc of M] looks [if M is interested]straight past you [end if]at [NameDesc of N]. [big he of M] takes out [his of M] [BlackCock] and begins to massage [himself of M]. [big he of M] looks [NameDesc of N] with unrestrained lust as [he of M] becomes fully erect. [BigNameDesc of N] licks [his of N] lips hungrily.[line break][speech style of N]'Mhm, yes [daddytitle of M].'[roman type][line break][BigNameDesc of N] gets down on four limbs beneath [him of M] and starts worshipping [his of M] balls. [BigNameDesc of M] is now stroking [himself of M], watching [NameDesc of N] as [he of N] swallows [his of M] nuts and licks the base of [his of M] [LongDickDesc of M].[line break][speech style of M]'Come swallow this cock.'[roman type][line break][BigNameDesc of M] growls under [his of M] breath. [BigNameDesc of N] grabs [NameDesc of M][']s ass, [he of N] rises up onto [his of N] knees and swallows [his of M] big black [manly-penis] to the hilt. [BigNameDesc of N] is clearly good at this, as about 30 seconds later [NameDesc of M] scrunches [his of M] nose, clearly trying to hold back. [line break][speech style of M]'Yes let me paint your face, you nasty slut.'[roman type][line break][BigNameDesc of M] groans with pleasure as [he of M] cums, covering [NameDesc of N][']s face, tongue and chest with [his of M] impressive load. [BigNameDesc of N] opens [his of N] lips as wide as possible to catch as much [semen] as [he of N] can, lewdly showing [NameDesc of M] [his of N] mouth full of [semen] before swallowing it all and licking [his of N] lips.[line break]With [NameDesc of M] done, [he of N] kisses the tip of [his of M] [LongDickDesc of M] and swallows it down to the base one last time.[line break][speech style of N]'Thanks for the cum [daddytitle of shopkeeper]!'[roman type][line break][if N is QoS wench]With a wink, [NameDesc of N] skips out of the room, with [semen] running down [his of N] chest.[otherwise][BigNameDesc of N] stays with [his of N] [daddytitle of M] - clearly [he of N]'s now dedicated to serving the shopkeeper.";
				compute refractoryReset of M;
				if N is interested, bore N;
				if N is QoS wench, compute mandatory room leaving of N;
				bbc-trainingUp N by 1;
				decide yes;
			otherwise:
				say "[BigNameDesc of M] looks [if M is interested]straight past you [end if]at [NameDesc of N]. [big he of M] takes out a sapphire ring and begins to spin it around the tip of one finger. [big he of M] whistles at [NameDesc of N] like someone might whistle at a dog. [BigNameDesc of N] rolls [his of N] eyes.[line break][speech style of N]'Ugh, okay, fine.'[roman type][line break][BigNameDesc of N] gets down on four limbs and start panting like a dog, slowly crawling over to [NameDesc of M] as [he of N] does. [BigNameDesc of M] is now stroking [himself of M], watching [NameDesc of N] as [he of N] crawls towards [him of M] and muttering perverse things like[line break][speech style of M]'Good [boy of N], come to [daddytitle of M]. Come get your din-dins.'[roman type][line break]under [his of M] breath. When [NameDesc of N] reaches [NameDesc of M][']s feet, [he of N] rises up onto [his of N] knees and begins barking like a puppy, presenting [his of N] palms as if begging for money.[line break][speech style of M]'Yessss...'[roman type][line break][BigNameDesc of M] groans with pleasure as [he of M] cums, covering [NameDesc of N][']s face, tongue and palms with [his of M] impressive load. All the time, [NameDesc of N] keeps barking like an obedient dog.[line break]When [NameDesc of M] is done, [he of M] takes the sapphire ring and throws it out of the doorway.[line break][speech style of M]'Go fetch!'[roman type][line break]With two final obedient barks, [NameDesc of N] returns to all fours and gallops out of the room, chasing [his of N] hard-earned prize.";
				compute refractoryReset of M;
				if N is interested, bore N;
				compute mandatory room leaving of N;
				bbc-trainingUp N by 2;
				decide yes;
	decide no.

To compute (M - shopkeeper) using sex doll (N - 1):
	let MPlug be a random thing penetrating face;
	let APlug be a random thing penetrating asshole;
	let VPlug be a random thing penetrating vagina;
	say "[speech style of M]'Oh wow, a female sex doll! There are plenty of traps and male ones walking around, but you're the first female one I've seen! Come here, I could do with blowing off some steam!'[roman type][line break]";
	anger M;
	[shopkeeper new sex scene with female doll]
	say "[if the player is not a nympho and the player is feeling dominant]You try to turn and back out, but [NameDesc of M] doesn't even notice your paltry escape attempt, one hand gripping your stiff but slender forearm and towing you[otherwise][BigNameDesc of M] tows you[end if] effortlessly back behind the counter, not even noticing as you bump against the clothing racks, and bounce off. [big he of M] leans forward, looking you carefully in the face, as one large finger reaches out to trace the swollen round orifice that your glistening plastic lips now make. [if MPlug is not nothing][line break][speech style of M]'A sex doll with a [printed name of MPlug], eh? Kinky! I wonder if I should remove it?'[roman type][line break][end if]";
	say "[one of]But then [he of M] frowns, as if puzzled.[line break][speech style of M]'You look familiar, somehow...'[roman type][line break][or][line break][speech style of M]'You still remind me of someone, though...'[roman type][line break][stopping][line break]";
	say "[one of]You nod, hoping [he of M][']ll have some way of fixing you, and try to tell [him of M],[line break][variable custom style]Yes, it's me, [NameBimbo]![roman type][line break]But you're kind of horrified afresh when the sound that emerges is a kind of sexy girlish moan - like a girl who's desperate for sex - rather than the words in your head![line break][speech style of M]'What does it mean when you nod like that? You want to give me a blowjob, is that what you're programmed for?'[roman type][line break][or][stopping]"; [Might this be a good place to give the player a chance to do something?]
	say "[if the oral sex addiction of the player < 3]Your eyes widen in horror at the thought - or they would if you could change your expression any more from its permanently-surprised 'O' of 'Please fuck my mouth' - and you freeze, not wanting to make any further head movements that [he of M] might misinterpret. Nor any more attempts at speech, judging by the delighted grin that last emanated from your voice-box! [end if][big he of M] watches you, one eyebrow raised as if [he of M]'s hoping for a response from sex-doll you, [his of M] expression changing to one of mild disappointment at your doll-like inertness.[line break]";
	say "[speech style of M]'[one of]Damn! I thought they must have improved the doll-program: for a moment there, it looked like you were going to struggle, or something.'[roman type][line break][big he of M] gives your inflated arm a squeeze and shakes you.[line break][speech style of M]'Are you sure you don't want to squirm and try to run away? Hmm?'[or]Aww, it's more fun when they struggle. Oh well, this'll do for now!'[stopping][roman type][line break]";
	say "[if the oral sex addiction of the player < 4]You stay perfectly still, hoping [he of M] might grow bored and let you go, all too aware of your perfectly made up face and inviting lips gaping vulnerably open. [end if]You sneak a look down at [his of M] groin, and blink in [horror the oral sex addiction of the player * 2] at the sight of the enormous cock straining up, pointing like a huge magnetised dowsing-rod at your [BreastDesc]. You look back up, and [if the humiliation of the player < 175000]cringe when you [end if]see a slow smile dawn on [his of M] face, and realise [he of M] watched you stare down at [his of M] quivering cock, and then back up to meet [his of M] gaze.";
	say "[speech style of M]'[one of]Huh: that's new, and strangely appealing. Like you're desperate for my cock, but don't want to admit it, right? Hmm... '[or]Am I experiencing deja vu, or can you not get enough of looking at my cock?'[stopping][roman type][line break]";
	say "[big he of M] flips one brightly-coloured nipple, and the surprise makes you squeak out in that voice that sounds like Barbie moaning with her mouth stuffed full of... something or other. [big he of M] grins, [his of M] fingers moving to the other nipple and gives it a fierce squeeze and then tugs on it, once again forcing a girlish moan from you before you can gather your resistance. [big he of M] doesn't let go, though - instead, pulling harder on the nipple, and you watch in some fright - and a toe-curling shock of pleasure - as your rubbery skin stretches out impossibly, drawing your boob into something of a sharpened peak, behind it. Then [he of M] lets go, and your nipple [']twangs['] back into place, just as perkily erect as before. Except now it's throbbing with an intense pleasure.";
	say "[speech style of M]'[one of]Responsive little thing, aren't you?'[or]That never gets old!'[stopping][roman type][line break][big he of M] turns you round, and back, [if asshole is not actually occupied and vagina is not actually occupied]seemingly careless of the hand gripping you by pussy and taint, [end if]as [he of M] [one of]considers the orifices on offer, like a gourmet surveying a range of desserts, wondering which to pick. Briefly, [his of M] hand grips you around the throat, turning you this way and that.[line break][speech style of M]'Hmm, maybe I could suggest they could add some kind of pull-string to tug on while you're being used, so you could tell me how much you're enjoying my massive dick!'[roman type][line break]Finally, though, [he of M] seems to make up [his of M] mind, and stands up[or]once again considers the orifices on offer[stopping].";
	now the stance of the player is 1;
	now current-monster is M;
	follow the sex attempt rules.

To compute (M - shopkeeper) using sex doll (N - 2):
	let MPlug be a random thing penetrating face;
	let APlug be a random thing penetrating asshole;
	if the player is not possessing a penis:
		say "[speech style of M]'With those [BreastDesc], I kind of assumed you'd be anatomically correct, but maybe they designed you for patrons who are into Barbie dolls, eh?'[roman type][line break][he of M] muses aloud, with an amused grin.[line break][speech style of M]'Never mind, baby, you've still got a couple of openings for a willing partner, eh?'[roman type][line break]One hand around the back of your neck presses you forward, so you seem to nod in agreement.[line break]";
	otherwise if size of the penis < 4:
		say "[big his of M] eyes drift down to your groin, and [he of M] frowns, in a kind of puzzled way, shaking [his of M] head. Before you realise what [he of M]'s doing, [he of M] slips one hand between your spread-open thighs and with just the tip of one finger, bends your [genitals] back, then releases it so it [if size of the penis > 2]*sproings* back upright with a tiny quiver.[line break][speech style of M]'Man, that's small. I'm trying to decide if that's a plus-sized clitoris or the smallest damn prick I've ever seen! I guess it's been designed as some kind of miniature carry-handle, not as something for actual penetration. Weird.'[roman type][line break][otherwise]pops back into place like a tiny button.[line break][speech style of M]'Cute clit, girl, even if it is a bit swollen. Looks like it'd be sensitive if it wasn't rubber. But where's your [pussy] got to, baby momma? Or don't you and Ken go in for that kind of stuff?'[roman type][line break][he of M] leers.[end if]";
	otherwise if asshole is not actually occupied and vagina is not actually occupied:
		say "[big he of M] turns you round, tips you over, and you feel one meaty paw slip between your legs, and then [his of M] large thumb slides up your butt-hole while two fingers curve around and into your snatch. [big he of M] releases your wrist, and bounces you up and down in the air with one hand, angling you this way and that. You imagine [him of M] enjoying the view.[line break]Which is apparently exactly what [he of M] was doing, you realise, as [his of M] other hand caresses the shiny smooth 'skin' of your [AssDesc], rubbing and sliding over the slick surface.[line break][speech style of M]'Oh, baby, I'm spoiled for choice here!'[roman type][line break]Twisting [his of M] wrist, [he of M] bends you half around to face [him of M], [his of M] eyes roaming between your face and [his of M] hand as it moves up from your booty to [one of]slip into the valley between your [BreastDesc][or]explore the shiny aperture formed by your [LipDesc][or]your soft cheek, cupping it as [he of M] considers your face and how it [MakeUpDesc].[at random].";
	otherwise:
		say "[speech style of M]'I see you've already been [']plugged in['], eh?'[roman type][line break][big he of M] eyes your [if MPlug is not nothing][printed name of MPlug][otherwise][printed name of APlug][end if], then moves [his of M] hands up to your inflated [BreastDesc], groping and squooshing the nicely-inflated soft domes.";
	now the stance of the player is 1;
	now current-monster is M;
	follow the sex attempt rules.

To compute (M - a monster) stomping (N - shopkeeper):
	if diaper quest is 1:
		if M is in the location of the player, say "[BigNameDesc of M] leaps into the air and lands on the [N], who disappears underneath the monster. [if N is in Dungeon41]There's a scream, but it's not from beneath the beast, it's from the north shop wall - the [N] has somehow appeared there, bound in place as part of a shelf, in a red latex catsuit, complete with huge in-built diaper. It doesn't look like there's any way to free [him of N]![otherwise][big he of N] doesn't reappear...[end if]";
		otherwise say "You hear the shopkeeper cry out in terror from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
		if watersports fetish is 1:
			now Dungeon41 is urinals;
			now N is permanently banished;
			destroy N;
		otherwise:
			now N is diaper-enslaved;
			now N is in Dungeon41;
	otherwise:
		if M is in the location of the player, say "[BigNameDesc of M] forcefully pushes the [N] to the ground and stamps on [his of M] body. The [N] is now motionless on the ground.";
		otherwise say "You hear the shopkeeper cry out in pain from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
		destroy N;
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N.

Definition: shopkeeper is motionless-when-defeated: decide yes.

To compute proposal leaving of (M - shopkeeper):
	do nothing.

Part 2 - Perception

To anger (M - shopkeeper): [This should bring the shopkeeper just into unfriendly territory.]
	if the diaper-duration of M > 0, now the diaper-duration of M is the diaper punishment length of M;
	if the favour of M > the aggro limit of M:
		FavourSet M to the aggro limit of M;
	now M is unleashed.

To decide which number is the bimbo tolerance of (M - shopkeeper):
	if the refractory-period of M > 0, decide on 21;
	if diaper quest is 1, decide on 20;
	if interracial fetish is 1, decide on 14;
	decide on 18.

To decide which number is the outrage tolerance of (M - shopkeeper):
	if the refractory-period of M > 0, decide on 21;
	decide on the bimbo tolerance of M / 2.

To say DisapprovalFlav of (M - shopkeeper):
	say "You can literally see [NameDesc of M][']s [manly-penis] getting [one of]hard[or]harder and harder[stopping].[line break][speech style of M]'[one of]Ooh baby, you are looking fiiiine!'[or]Oh yeah, you're just begging for it, aren't you?'[in random order][roman type][line break]".

To say BecomesAggressive of (M - shopkeeper):
	say "[big he of M] takes an offensive stance![line break][speech style of M]'[one of]I can't take you seriously at all! We should be [if diaper quest is 1]disciplining you[otherwise]fucking[end if], not doing business.'[or]There's no time for shopping now, there's something much more important we must do first...'[in random order][roman type][line break]".

To bore (M - shopkeeper) for (N - a number) seconds:
	compute common boredom of M for N seconds;
	now M is uninterested;
	now the stolen-aware of M is 0;
	if the player is in Dungeon41:
		if diaper quest is 1, now the refractory-period of M is the refractory-time of M; [otherwise the shopkeeper keeps punishing babified players infinitely]
		calm M; [The shopkeeper never gets distracted from his job, instead he just turns friendly after dealing with you]
	otherwise:
		send M home.

To compute common latest appearance reset of (M - shopkeeper):
	if M is not in the location of the player:
		now the latest-appearance of M is 0;
		if diaper quest is 1, now the latest-cringe of M is 0.

Report going:
	if shopkeeper is guarding and shopkeeper is on-stage and shopkeeper is not in Dungeon41 and shopkeeper is not in the location of the player, bore shopkeeper.

Definition: shopkeeper (called M) is uniquely unfriendly:
	if there is a held stolen thing and the stolen-aware of M > 0, decide yes;
	if M is default uniquely unfriendly, decide yes;
	decide no.

shopkeeper has a truth state called princessTax. The princessTax of shopkeeper is false.

To compute perception of (M - shopkeeper):
	if diaper quest is 1, say "[BigNameDesc of M] notices you[if the player is sluttily dressed][one of], and seems to be smiling politely enough[or][stopping].[otherwise]![end if]";
	otherwise say "[BigNameDesc of M] notices you[if the player is sluttily dressed], grinning at how you're dressed[one of] even though [he of M] is completely naked [himself of M][or][stopping].[otherwise]![end if]";
	let PSRB be a random carried probably-serve-ready bottle;
	repeat with BBB running through carried probably-serve-ready bottles:
		if the waitress bartering value of BBB for M > 0, now PSRB is BBB; [Let's make sure we choose one the shopkeeper actually likes if able. E.g. no semen.]
	if the class of the player is living sex doll:
		if the refractory-period of M > 0: [He could fuck you each turn, otherwise.]
			if the player is possessing a vagina, compute M using sex doll 1;
			otherwise compute M using sex doll 2;
		otherwise:
			say "[speech style of M]'I know you can't really understand me, but if you wait a while I'm sure I'll be ready to use you again soon.'[roman type][line break]";
	otherwise if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise if PSRB is bottle and the waitress-boredom of M <= 0 and M is not uniquely unfriendly and the waitress bartering value of PSRB for M > 0:
		say "[if the outrage tolerance of M <= the saved appearance of the player][big he of M] seems aroused by your presence but doesn't act aggressively. [end if][big he of M] briefly glances at your [PSRB].";
		calm M;
	otherwise if there is a held stolen currently perceivable thing:
		say "[speech style of M]'How dare you taunt me with the stuff you stole from me?! Give it back at once, or pay the price!'[roman type][line break]";
		anger M;
		increase the stolen-aware of M by 1;
	otherwise if the class of the player is vixen:
		say "[speech style of M]'[one of]Hey, what are you doing in here! Don't think I'm going to just let you steal from my shop!'[or]Who do you think you're fooling coming into my shop like that? Get out of my shop, thief!'[or]Hey! I can tell you're a thief just by looking at you, so leave my shop right now or face the consequences!'[at random][roman type][line break]";
		anger M;
	otherwise if the class of the player is princess:
		let J be a random off-stage plentiful ring;
		if princessTax of M is false and J is accessory:
			now J is pure diamond;
			set shortcut of J;
			now J is in the location of the player;
			say "[speech style of M]'Ah, Princess, you must be here for this month's rent? Don't worry, I have it right here.'[roman type][line break][BigNameDesc of M] hands you a [J]!";
			compute autotaking J;
			now the princessTax of M is true;
			progress quest of royal-quest;
		otherwise:
			say "[speech style of M]'Your Highness.'[roman type][line break]";
		calm M;
	otherwise if the refractory-period of M > 0:
		say "[speech style of M]'Heh, that was fun. I'm still satisfied... for now.'[roman type][line break]";
		calm M;
	otherwise if M is babifying the player:
		say "[speech style of M]'[one of]Holy shit, you are just begging to be teased, aren't you? Well, I'm not going to hold back then!'[or]Hey kid, ready for another round?'[stopping][roman type][line break]";
		anger M;
	otherwise if M is objectifying the player:
		say "[speech style of M]'[one of]Holy shit, you are just begging to be fucked, aren't you! Well, I'm not going to hold back then!'[or]Hey slut, ready for another round?'[stopping][roman type][line break]";
		anger M;
	otherwise if the diaper-duration of M > 0:
		if the player is immobile:
			say "[BigNameDesc of M] seems to want to leave you be for now.";
			distract M;
		otherwise if there is a worn diaper:
			compute diaper check of M;
		otherwise:
			say "[big he of M] swiftly walks up to you and holds [if diaper messing < 3]a hand to the front[otherwise]hands to the front and back[end if] of your crotch, pushing firmly to get a good feel.[line break][speech style of M]'OI! I'm pretty sure I told you that you were being potty trained! Oh you're in big trouble now, kiddo!'[roman type][line break]";
			FavourDown M by 4;
			anger M;
	otherwise if M is friendly and M is in Dungeon41:
		compute appearance assessment of M;
	otherwise if M is unfriendly and total stolen value > 0:
		say "[speech style of M]'There you are, thief! Now I've got you!'[if the player is flying][line break]'Well, at least when you get down from there...'[end if][roman type][line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'I think you still need to be taught some better manners!'[roman type][line break]Uh-oh...";
	otherwise:
		say "[speech style of M]'I should go back to the shop.'[roman type][line break]";
		send M home;
	if M is unfriendly, now the blue-balls of M is 1; [prevents discount]
	compute racial submission to M;
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: The shopkeeper is pretty tough, so unless you're looking for a rough [if diaper quest is 1]punishment[otherwise]fucking[end if] I wouldn't mess with [him of M]! [if M is friendly]You[otherwise]Usually when [he of M][']s friendly (but not now because [he of M][']s aggressive), you[end if] can buy stuff from [him of M] by picking it up and then typing 'pay'.[roman type][line break][or][stopping]".

To compute appearance assessment of (M - shopkeeper):
	say "[big he of M] looks you up and down.";
	if the appearance of the player > the outrage tolerance of M:
		FavourDown M by 1;
		if M is unfriendly:
			say "[speech style of M]'When you keep coming to my shop looking like that, I think it's only fair that we [if diaper quest is 1]play[otherwise]fuck[end if] before we do business...'[roman type][line break][big he of M] adopts a martial arts stance!";
		otherwise if M is groping:
			compute grope of M;
		otherwise:
			say "[speech style of M]'Welcome to the [if M is in the Dungeon]Dungeon [end if]clothes shop! If you have any jewellery to pay with, feel free to look around. Don't you dare leave the shop without [bold type]pay[speech style of M]ing for something, though.'[roman type][line break]";
	otherwise if the player is top-wardrobe-malfunctioning:
		if diaper quest is 1, compute dq nip slip reaction of M;
		otherwise compute tq nip slip reaction of M;
	otherwise:
		say "[speech style of M]'Welcome to the [if M is in the Dungeon]Dungeon [end if]clothes shop! If you have any jewellery to pay with, feel free to look around. Don't you dare leave the shop without [bold type]pay[speech style of M]ing for something, though.'[roman type][line break]";
	if interracial fetish is 1 and M is friendly:
		compute deliveryRequest of M.

To compute deliveryRequest of (M - shopkeeper):
	let N be a random alive wench;
	unless N is nothing:
		if BBCTrainingQuest of M is 1:
			say "[line break][speech style of M]'Hey, don't forget to give the wench that collar!'[roman type][line break]";
		if BBCTrainingQuest of M is 0 and BBC collar is off-stage:
			let C be BBC collar;
			blandify and reveal C;
			now C is in the location of the player;
			say "[line break][speech style of M]'Hey, could you do me a favour and hand this [ShortDesc of C] to the [ShortDesc of N]? There's payment in it for you if you can ensure it gets to [him of N] safely.'[roman type][line break][BigNameDesc of M] drops a [C] in front of you.";
			compute autotaking C;
			now BBCTrainingQuest of M is 1;
		if BBCTrainingQuest of M is 2 and there is an off-stage plentiful ring:
			let D be a random off-stage plentiful ring;
			now D is sapphire;
			set shortcut of D;
			say "[line break][big he of M] sees you enter the room and tosses you a sapphire ring.[line break][speech style of M]'Thanks for delivering that collar, we're breaking that slut in right now!'[roman type][line break]";
			now D is in the location of the player;
			compute autotaking D;
			now BBCTrainingQuest of M is 3;


To compute friendly boredom of (M - shopkeeper):
	if the player is not in the location of M, deinterest M.

Part 3 - Motion and Seeking

To compute monstermotion of (M - shopkeeper):
	if M is not in Dungeon41: [If the shopkeeper is not interested in chasing the player, he just returns to the Dungeon Shop.]
		if M is in the location of the player, say "[BigNameDesc of M] walks off to the [the best route from location to Dungeon41], presumably to get back to the shop.";
		now M is in Dungeon41.

To compute (M - shopkeeper) seeking (D - a direction):
	if M is unleashed, blockable move M to D;
	compute monstermotion reactions of M. [The shopkeeper moves with excellent purpose when seeking, but also doesn't follow the player around if friendly.]

To check chase boredom of (M - shopkeeper): [only loses interest via special means]
	if M is not in the location of the player and (M is guarding or M is caged):
		compute chase boredom of M.

Part 4 - Combat

Section 1 - Attack

[Lots of this was written by Kat, based off MG's content for the Guard.]

To compute kneeling reaction of (M - shopkeeper):
	say "[BigNameDesc of M] continues to keep [his of M] guard up, even as you kneel before [him of M]. The sheer size of the [man of M] is something [he of M]'s ready to use if you try to run, and given how many muscles [he of M]'s sporting, it wouldn't be the best idea. Simply kneeling is enough to coax a good laugh from [NameDesc of M] as [he of M] closes the gap between you and [him of M], [his of M] [manly-penis] springing to life between [his of M] legs in a matter of seconds. [big his of M] gaze fixates on you, as if [he of M][']s waiting for you to make the first move[if the player is not shameless]. You shiver with shame[end if].";
	strongHumiliate.

To compute delay of (M - shopkeeper):
	say "The shopkeeper stands there, clearly expecting you to present yourself to [him of M]. [if the humiliation of the player < 23000]As if [he of M] deserves anything from you![otherwise if the bimbo of the player < 14]Not that you'd have a problem doing so, of course.[otherwise][line break][second custom style][big he of M] is the [man of M], after all, and deserves a good show~![roman type][line break][end if]".

To say waitingflav of (M - shopkeeper):
	if diaper quest is 1:
		say "[variable custom style][if the player is feeling dominant]As if I'm going to let [him of M] scare me.[otherwise if the player is not feeling submissive]I've got to hide the fact I'm scared...[otherwise]I'll just do whatever [he of M] tells me and hopefully [he of M] won't hurt me too much.[end if][roman type][line break]";
	otherwise if the player is not a pervert:
		say "[one of]Your look up at the shopkeeper's face, your mouth slightly ajar in disbelief. [big he of M] wasn't really expecting you to... do anything, was [he of M]?[or]Your mind struggles to grasp the situation, your body equally shocked into paralysis.[or]Clearly [NameDesc of M] expects too much from you, and you're not having it! You turn away with the slightest of pouts on your lips.[line break][first custom style]'Hmmph.'[roman type][line break][or]For a moment you stay still, finding it hard to believe [he of M]'s waiting for your move.[line break][first custom style]'Look, I didn't mean to piss you off! Just, take it easy!'[roman type][line break][or]The Shopkeeper looks far too tough to fight, there's no way you can escape with [him of M] on your tail. Maybe you should just please [him of M] and get it over with.[or][line break][first custom style]'[if the player is gendered male]Look, um, sir, I'm not gay. So can I just leave?'[otherwise]There's no way in hell I'm touching THAT!'[end if][roman type][line break][or][line break][first custom style]'[if the player is gendered male]I'm not here to get fucked, asshole, so just let me go so I can get out of this hell hole.'[otherwise]What, do you think I'm just some slut? Fuck off.'[end if][roman type][line break][or][line break][first custom style]'[if the player is gendered male]Just put away that disgusting [manly-penis] already, it's gross.'[otherwise]I'm not saying you're not a... large guy, but I'm not here for that!'[end if][roman type][line break][or][line break][first custom style]'Please, just let me go, I didn't mean it.'[roman type][line break][in random order]";
	otherwise if the player is not a nympho:[Some here might cause issues if shopkeeper is aggroed in the wrong way]
		say "[one of]Seeing such a handsome, strong looking man makes you quiver with subdued anticipation.[or]You don't dare move, mostly because [he of M]'s so... big... and... ...big...[or][BigNameDesc of M] is just too strong to fight, it'd be easier just to submit to [him of M]~[line break][first custom style]'Please don't use me like the slut I am...'[roman type][line break]You clasp a palm over your mouth in shock for a second before lowering it back to your side.[or][line break][first custom style]'You mean I can't just pay with sex?'[roman type][line break][or][if the player is gendered male]You can't help but start to think some oddly 'gay' thoughts.[otherwise][big his of M] size has even you cupping your [vagina]. It's unclear whether in anticipation or dread.[end if][or][line break][second custom style]'[if the player is possessing a penis]I hope my [manly-penis] doesn't bother you...'[otherwise]Am I really a slut if I let [him of M] do... this?'[end if][roman type][line break][or][if the player is gendered male]It's hard to ignore how attracted to [his of M] [manly-penis] you are... It's just so... Mmph...[otherwise][line break][variable custom style]'With your size there's no way it'll fit!'[end if][roman type][line break][in random order]";
	otherwise:
		say "[one of]There's just no possible way you're going to pass up on such a thick, lengthy [manly-penis].[or][line break][second custom style]'Fuck me hard, I've been a bad little girl!'[roman type][line break][or][line break][second custom style]'Being pent up in this room all day must make you so horny~!'[roman type][line break][or][line break][second custom style]'I like being fucked by strong men like you, so pick a hole~!'[roman type][line break][or][line break][second custom style]'Don't hold back, I can take it!'[roman type][line break]You hope.[or][line break][second custom style]'[if the size of penis > 3]Maybe [NameDesc of M] will get me off too!'[otherwise]I'm a [man of the player], so my opinion doesn't matter, Hee hee!'[end if][roman type][line break][or][if the player is gendered male]Just looking at that [manly-penis] makes me want to get railed by it![otherwise]You hype yourself up, unsure of whether or not [he of M]'ll fit. You cross your fingers and hope for the best~![end if][roman type][line break][or][line break][second custom style][if the player is not possessing a vagina]I'm the [sissy slut] here, so I should find out which hole [he of M] wants to use![otherwise]I hope [he of M] fucks my cunt, I'm so wet down there... But really, it's [his of M] choice, not mine~![end if][roman type][line break][or][line break][second custom style]'Oh, I can't quite decide which way I want to be used!'[roman type][line break][or][line break][second custom style][big he of M] looks like [he of M]'s got tons of experience, I should let [him of M] decide![roman type][line break][or][line break][second custom style]'I'm too horny to think straight, just jam it in!'[roman type][line break][in random order]".

The latex punishment rule of shopkeeper is usually the no latex punishment rule.

To compute (M - shopkeeper) urinating:
	say UrinationFlav of M;
	FacePiss from M;
	if M is in Dungeon41:
		say "[speech style of M]'We've only just begun!'[roman type][line break]";
		now the chosen-orifice of M is nothing;
	otherwise:
		send M home.

To compute (M - shopkeeper) entering mouth:
	if the class of the player is living sex doll: [Should any of this move into another function?]
		say "[speech style of M]'I just can't resist those plump and welcoming lips, Momma!'[roman type][line break]";
		let MPlug be a random thing penetrating face;
		if MPlug is not nothing:
			say "It's only a few seconds work for [NameDesc of M] to release you from the [printed name of MPlug], tapping it briefly on the end of your cute nose before placing it carefully on [his of M] counter top.[line break][speech style of M]'I'll decide later if I put that back in, or not. It'll depend on you. Know what I mean, doll-face?'[roman type][line break]";
			follow the monster removing gag rule;
		now M is penetrating face;
		set up sex length of M in face;
		say "What happens then is [if the oral sex addiction of the player < 5]awful, but wonderful at the same time[otherwise]wonderful[end if]. [big he of M] thrusts [his of M] thick tool unceremoniously between your wide open and inviting lips, and plunges in to the hilt! You're treated to an eye-crossingly close look at the base of [his of M] belly, and that's when things get weird!";
		say "Three things happen, all at the same time. First, a rush of pleasure shoots through you, just from the touch of [his of M] dick on your inflated lips! Second, you feel your body stiffen, and some kind of inner tensioning and shifting as your insides kind of hollow out even further. The purpose becomes dismayingly obvious, though, as your lips seal tightly around [his of M] [cockshaft of M] and you feel a vacuum form around around it, even as the end shoves roughly down your throat, halfway down your oesophagus!";
		say "[speech style of M]'Oh, yeah, that's what I want! Suck me, girl!'[roman type][line break]";
		say "Indeed, looking down your nose, you can see your cheeks have sunken in, while your lips are compressed and swollen tightly around the invading [cockshaft of M] in that classic, hollow-cheeked desperate BJ-queen appearance of Japanese manga. [big he of M] pulls carefully back, and it seems you're somehow lubricating there, because [his of M] [cockshaft of M] slides slickly out, making [him of M] groan as the suction increases, by the volume of [his of M] withdrawal, before [he of M] thrusts back in.";
		say "Your lips are so smooth and oiled [his of M] skin hardly makes a whisper of sound as it slips in and out, and [his of M] pace accelerates dramatically.[line break]And the third thing? The third thing is that the suction and slick friction make you start helplessly generating sounds like a squealing, sex-crazed teen girl. Your grunts are muffled by your well-plugged throat, even more incoherent than when you don't have a meaty rod plunging in and out of your face. You find yourself helpless to do anything but avidly suck and squeal as [he of M] pounds your face.";
	otherwise if face is not occupied:
		now M is penetrating face;
		set up sex length of M in face;
		if presented-orifice is face:
			say "[one of][BigNameDesc of M] cracks off a booming chuckle as [he of M] pulls your head close to [his of M] lap, soon groaning with pleasure as [his of M] ebony [manly-penis] sinks into your parted lips. It seems all this time spent in the shop has given [him of M] little time for pleasure, as evident by the greedy thrusts against your face.[or][BigNameDesc of M] gives [his of M] [manly-penis] a few good strokes before placing [his of M] tip at your lips, grunting as [he of M] shoves [himself of M] into your mouth with one hearty thrust and a lusty groan. [big his of M] [manly-penis] stiffens even further thanks to your wet maw and tight throat.[or][BigNameDesc of M] grabs you by the back of your head, entwining your hair between [his of M] fingers to make sure you won't escape easily. Before long [his of M] girthy rod is sliding into your mouth, gracing your tongue with salty pre. [BigNameDesc of M] starts to lose [himself of M] in pleasure as [he of M] forces your head to bob along [his of M] ebony [manly-penis].[or][if the oral sex addiction of the player < 4][BigNameDesc of M] slides [his of M] fat rod into your slightly gaped maw with a huff, tilting [his of M] head back to let a groan vibrate the air. The blush on your cheeks only magnifies as [he of M] begins to guide your head back and forth along [his of M] [manly-penis].[otherwise if the oral sex addiction of the player < 6][BigNameDesc of M] crams [his of M] [manly-penis] in your mouth without a second thought, clearly pleased if [his of M] moans were anything to go by. You can't help but feel arousal tickling your skin as your chest heats up in the moment, making you start to second-guess how much you're enjoying this.[otherwise][BigNameDesc of M] gives [his of M] [manly-penis] a few good strokes before presenting it to your face. You feel yourself perking just a tad before staring down [his of M] [manly-penis]. And, with a sudden burst of lust, you lunge forward to wrap your lips around [him of M]. Before long you're bobbing happily in [his of M] lap, much to [his of M] enjoyment.[end if][or][ShopkeeperPresentedFaceFlav of M][in random order]";
		otherwise if there is a worn ringagged clothing or the latex-transformation of the player > 6:
			let R be 1;
			if R is 1:
				say "[one of][BigNameDesc of M] puts [his of M] hand on the back of your head, guiding [his of M] [manly-penis] through your [if there is a worn ringagged clothing]gag[otherwise]lips[end if] and into your mouth with a subdued groan, dragging [his of M] [manly-penis] along your spit-slick tongue forcefully.[or][BigNameDesc of M] slides [his of M] [manly-penis] through your [if there is a worn ringagged clothing]gag[otherwise]gaping lips[end if] without resistance, keeping a hand at the back of your head to make sure you don't try to get off [his of M] [manly-penis]. With a grip now on your head, [he of M] starts to guide you along, groaning with pleasure as [he of M] slides in and out of your [if there is a worn ringagged clothing]gag[otherwise]gaping lips[end if].[or][BigNameDesc of M] cracks a wide smile as [he of M] presses [his of M] head into the ring of your hood, [his of M] [manly-penis] beading pre steadily as [he of M] begins to gently slide to and fro. You can easily hear [his of M] huffs and grunts above you over the sound of [if there is a worn ringagged clothing]wet sloshes of spit[otherwise]squeaky plastic[end if] in your maw. [big he of M] pulls back with an even wider grin, [if there is a worn ringagged clothing]inspecting the strands and ropes of saliva still connect your tongue to [his of M] [manly-penis] before[otherwise]using [his of M] fingers to test the elastic stretchiness of your mouth before[end if] giving [himself of M] a good few pumps with [his of M] large hand and sliding back in with a moan.[in random order]";
			otherwise:
				if the oral sex addiction of the player < 4:
					say "[one of][BigNameDesc of M] slides [his of M] [manly-penis] through your [if there is a worn ringagged clothing]gag[otherwise]gaping lips[end if]. You emit a muffled grunt of indignation as [he of M] begins to thrust. [if there is a worn ringagged clothing]Wet sloshes of spit[otherwise] Muffled squeaks[end if] sound from your mouth as [he of M] gets into a rhythm, [his of M] little grunts breaking the otherwise quiet air.[or]Your eyes widen in horror as [NameDesc of M] slides [his of M] [manly-penis] through your [if there is a worn ringagged clothing]gag[otherwise]gaping lips[end if] and into your mouth, your protests soon muffled against [his of M] ebony [manly-penis] and [his of M] much louder grunts of obvious pleasure. You brace your hands against [his of M] thighs the best you can, but it seems like [he of M]'s intent on using you as a cock sleeve.[at random]";
				otherwise if the oral sex addiction of the player < 6:
					say "[one of][if there is a worn ringagged clothing][BigNameDesc of M] slides [his of M] [manly-penis] through your gag. You emit a muffled grunt as [he of M] begins to thrust, [his of M] flavour staining your taste-buds immediately as pre leaks from [his of M] massive [manly-penis].[otherwise][BigNameDesc of M] slides [his of M] [manly-penis] through your gaping lips. You emit a muffled grunt as [he of M] begins to thrust, quiet *shlicking* sounds reaching your ears as [his of M] sticky precum lubricates your plastic hole.[end if][or]Your eyes widen with shame and excitement as [NameDesc of M] slides [his of M] [manly-penis] through your [if there is a worn ringagged clothing]gag and into your mouth, the pool of drool that had accumulated at the bottom of your maw coming in more than handy for this situation. It isn't long before your spit is coating [his of M] ebony [manly-penis], making it shine like a new penny, which in turn makes [him of M] crack a smile.[otherwise]soft plastic lips and into your mouth, the subtle warmth of [his of M] massive schlong making you wish you had a tongue to feel it with.[end if][at random]";
				otherwise:
					say "[one of]Your eyes roll back in your head as [NameDesc of M] slides [his of M] [manly-penis] through your [if there is a worn ringagged clothing]gag[otherwise]soft plastic lips[end if] and into your mouth, a slutty little moan escaping your gaping maw as [he of M] starts to pick up the pace, [his of M] hips driving in and out of you with reckless abandon.[or][if there is a worn ringagged clothing][BigNameDesc of M] slides [his of M] [manly-penis] through your gag as drool starts flowing free, your lips unable to stop the flow thanks to the ring keeping them wide open. You moan like a whore in heat as [he of M] begins to piston [his of M] hips against your face, [his of M] thick [manly-penis] quickly dripping pre like a leaky faucet down against your greedy tongue as it bats up against [his of M] [manly-penis].[otherwise][BigNameDesc of M] slides [his of M] [manly-penis] into your mouth, immediately beginning to piston [his of M] hips against your face, leaking so much precum that you begin to hear wet squelching noises as [his of M] hips move back and forth. You desperately crane your neck, attempting to cradle [his of M] massive meat with your immobile lips, and moaning like the obedient little fucktoy you are.[end if][at random]";
		otherwise:
			if a random number between 1 and 3 is 1:
				if the oral sex addiction of the player < 4:
					say "[one of][BigNameDesc of M] barks out a hearty laugh as [his of M] large palm comes to rest on your chin, [his of M] thumb and fingers pushing in against your cheeks to force your lips to pucker. Before long [his of M] [manly-penis] is drooling pre inches from your face, which causes you to stare daggers up at [him of M]. With a thrust of [his of M] hips [he of M] slides in and grunts happily, slowly beginning to fuck your mouth with soft grunts and groans, a hand soon coming to rest on the back of your head to help steady [himself of M].[or][BigNameDesc of M] grabs at your locks with one of [his of M] strong, sizeable hands, grinning ear to ear as [he of M] stares down at you. You open your mouth to insult [him of M], but [he of M] immediately inserts [his of M] [manly-penis] and begins to thrust, sliding [his of M] ebony [manly-penis] over your tongue and forcefully down your throat, forcing you to gag slightly in surprise.[at random]";
				otherwise if the oral sex addiction of the player < 7:
					say "[one of][BigNameDesc of M] takes a second to stroke [his of M] [manly-penis], getting [himself of M] harder with every passing second. You can't help but stare at [his of M] [manly-penis] with slightly widened, eager eyes, your mouth opening quickly without input from your brain, and before you can think to stop you're already muffling out a sigh, sinking down into [his of M] lap.[or][BigNameDesc of M] spreads [his of M] stance and lowers [his of M] hips enough to align [his of M] [manly-penis] with your mouth, a deviant smile creeping over [his of M] visage. It's obvious what [he of M] wants at this point, and with only the slightest bit of hesitance you lean in to wrap your lips around [his of M] [manly-penis], [his of M] soft groan a clear indicator of [his of M] enjoyment.[at random]";
				otherwise:
					say "[one of][BigNameDesc of M] grabs the back of your head before you can react, grabbing a fistful of hair to better help steer your skull as [he of M] sinks [his of M] hips a bit to better align [his of M] [manly-penis] with your pouty lips. [big he of M] cracks off a chuckle as you open your mouth up to accept [his of M] length, leaning forward to engulf more and more of [his of M] [manly-penis].[or][BigNameDesc of M] snaps [his of M] fingers to steady your slightly absent mind on [his of M] hand, a hand that quickly points to your mouth. Before you can even think of what to do your body reacts for you, your tongue snaking out to hang from your lips, a steady stream of drool starting to leak from your maw. [big his of M] [manly-penis] pulses in excitement as [he of M] slides in, pre seeping out to glaze your tongue, much to your delight.[at random]";
			otherwise if a random number between 1 and 2 is 1:
				say "[one of][if the oral sex addiction of the player < 3][BigNameDesc of M] places a palm on your forehead to tilt your head back. You stare daggers back up at [him of M] as [he of M] strokes [himself of M] in front of you. Sneering, you feel [him of M] slide [his of M] [manly-penis] between your lips with a satisfied sigh of pleasure. [big he of M] releases your head and begins to idly buck [his of M] hips against you, much to your displeasure. You stare at [him of M] lividly as [he of M] continues to thrust.[otherwise if the oral sex addiction of the player < 6][BigNameDesc of M] takes a second to hover over you, positioning [his of M] hips down enough to get on level with your head. With a snap of [his of M] fingers, [he of M] gets your attention, then points at your mouth. You part your lips and loll out your tongue, trying your best not to make eye-contact with [him of M] as [his of M] [manly-penis] slides over your tongue, pouring thick beads of pre along your taste-buds as [he of M] sinks in. As [he of M] steadily begins to thrust, [he of M] grabs the back of your head, guiding you up and down [his of M] [manly-penis] with a cocky smirk.[otherwise][BigNameDesc of M] grins as you lean forward, your hand reaching up to pump [his of M] [manly-penis] a few more times to get [him of M] fully erect. Your eyes meet as [he of M] places a hand on your shoulder, letting you lunge forward to wrap your lips around [his of M] [manly-penis] with a happy moan. [big he of M] grunts as you bob greedily atop the first few inches of [his of M] [manly-penis], sucking to your heart's content. You gag a bit when [he of M] slides down your throat, although you can't help but to enjoy yourself as you start fellating [him of M] a bit more aggressively.[end if][in random order]";
			otherwise:
				say "[if the oral sex addiction of the player < 4][BigNameDesc of M] strokes [himself of M] a few times, [his of M] free handing pointing at your mouth. You spit at [his of M] feet without a second thought.[line break][first custom style]'Go fuck yourself assh-'[roman type][line break][he of M] cuts you off by immediately shoving [his of M] [manly-penis] in your mouth with a little grin dancing on [his of M] lips. Your cheeks flush with embarrassment as you glare up at [him of M], cringing a bit as [his of M] pre pours down to coat your tongue and pool in your mouth, mixing with your saliva.[otherwise if the oral sex addiction of the player < 6 and the delicateness of the player > 9][BigNameDesc of M] begins stroking [himself of M] again in no time, eyes peering down at your kneeling form with a bit of hunger. [big his of M] gaze is so captivating that you barely notice [him of M] snap [his of M] fingers to grab your attention, the third snap finally breaking through to snap you from your trance. You slowly and fearfully open your mouth, not wishing to cause trouble with such a muscled [man of M], and shudder as [his of M] [manly-penis] slides past your lips and over your tongue. Each inch forces the slightest of cringes out of you, but before long you find yourself getting strangely used to the feel of a [manly-penis] in your mouth.[otherwise if the oral sex addiction of the player < 7][BigNameDesc of M] places [his of M] hand on your shoulder, pressing the head of [his of M] [manly-penis] against your lips with the other. You find yourself obediently opening your mouth to allow [him of M] inside, softly moaning as [his of M] flavour rocks your tongue. [big he of M]'s surprisingly tasty, you think as you slowly begin to bob along [his of M] [manly-penis], just a bit shocked at what you're starting to become.[otherwise][BigNameDesc of M] puts [his of M] hand on the back of your head, pulling your skull close to [his of M] lap and in turn [his of M] [manly-penis]. It throbs in front of you for a moment before you submissively part your lips, moaning softly as [his of M] [manly-penis] slides into your mouth. As you begin to slide up and down [his of M] [manly-penis], [he of M] emits [his of M] own little groans and moans of clear pleasure, [his of M] hips gently bucking back against your movements.[line break][speech style of M]'Mmm... It's been a while...'[roman type][line break][he of M] says as your tongue wriggles up against [his of M] [manly-penis], [his of M] taste rooting deeply in your mouth.[end if]";
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		send M home.

To say ShopkeeperPresentedFaceFlav of (M - a monster):
	say "[if the oral sex addiction of the player < 4][BigNameDesc of M] cracks a grin as [he of M] grabs your chin in [his of M] palm, squeezing at your cheeks with [his of M] thumb and fingers to make you pucker up for [him of M]. [big he of M] places [his of M] [manly-penis] on your lips without pause and slowly starts to slide into your mouth. Such a shameful act has forced a good blush on your face, [NameDesc of M] grinning even wider as [he of M] notices.[otherwise if the oral sex addiction of the player < 6][BigNameDesc of M] grabs the top of your head with one of [his of M] large hands, some of your hair getting tied up in [his of M] digits. [big his of M] rather sizeable [manly-penis] throbs in front of you expectantly for a moment, [NameDesc of M] nodding down at it as you glance up at [him of M]. With a bit of hesitance, you lean in and wrap your lips around [his of M] [manly-penis], slowly beginning to bob along [his of M] lap.[otherwise][BigNameDesc of M] presents [his of M] [manly-penis] in front of you, [his of M] girthy [manly-penis] drooling precum at quite a pleasant pace. You don't even give [him of M] a chance to order you to suck before lunging forward, licking a particularly thick bead of pre from [his of M] tip before gluing your cocksuckers on [his of M] [manly-penis]. You moan like a slut as you eagerly begin to slide up and down, drool running from the corners of your lips and down your chin.[end if]".

To compute facial sex of (M - shopkeeper):
	if the oral sex addiction of the player > 6, passively stimulate face from M;
	if the sex-length of M is 1:
		[Selkie: a special sex doll bit here too would be a small improvement: especially for any bits related to breathing]
		if a random number between 1 and 2 is 1, say "[one of][BigNameDesc of M] lets out a grunt as [he of M] thrusts steadily, the hand on your head only tightening its grip. Drool starts to dribble from your lips as [he of M] continues to violate your throat![or][BigNameDesc of M] takes a moment to slow your head, savouring every little buck of [his of M] hips as [he of M] stares down at you with obvious hunger. [big he of M] lets out a more guttural moan as [he of M] forces your nose to [his of M] pubis, [his of M] [manly-penis] twitching with pride as it rests in your gullet.[or][BigNameDesc of M][']s grip never wavers as [he of M] continues to rut at your face, excess saliva starting to gush from your cheeks lewdly to splatter [his of M] lap. As time goes on, [his of M] rolling hips speed up, starting to complement the bobbing of your head.[or][BigNameDesc of M] gasps as [he of M] bobs your head on [his of M] first few inches, your lips growing thin as they glide over [his of M] [manly-penis]. But, no matter how much [he of M] seems to be enjoying [himself of M], [his of M] grip never loosens on your skull.[or][BigNameDesc of M] guides your head up and down [his of M] [manly-penis] emitting satisfied grunts and groans all along the way. Your hair bobs along with your head and it's starting to get hard to keep out of your face.[in random order]";
		otherwise say "[one of][BigNameDesc of M] guides your head up and down [his of M] [manly-penis] emitting satisfied grunts and groans all along the way. Your hair bobs along with your head and it's starting to get hard to keep out of your face.[or][BigNameDesc of M] can't help but groan as [he of M] slams your head down against [his of M] lap, roughly ramming [his of M] [manly-penis] down your throat. [big he of M] holds your head still as [his of M] hips make tiny, muted rolls forward to stretch out your jaw.[or][BigNameDesc of M] doesn't seem concerned with your lack of air as [he of M] pins you down against [his of M] pelvis, soft groans fleeing [his of M] throat as [he of M] rests in yours. It isn't until your face is a flushed out pale mess that [he of M] finally pulls your head off [his of M] knob, forcing a desperate gasp from your lips. You catch at least some air before [he of M] pushes [his of M] [manly-penis] back into your mouth.[or]Each little thrust of [his of M] hips is met with a wet sloshing noise sounding from your drool-filled maw. Clearly [NameDesc of M] is pleased with this, as [he of M] teases you about it with little mock-sloshes of [his of M] own mouth.[or][BigNameDesc of M][']s grip on your head tightens for a moment as [he of M] lets out a particularly sharp gasp, throwing [his of M] head back for a second to give your head a few more good ruts. [big he of M] jerks [his of M] hips back to pop [his of M] [manly-penis] out of your mouth, stroking it a few times to evenly spread out the drool you left on it, only to push it back in with a wide grin.[in random order]";
		say "[if the semen taste addiction of the player < 7][line break][first custom style]Uh-oh, I think [he of M]'s about to cum![otherwise if the semen taste addiction of the player < 12][line break][variable custom style][big he of M]'s gonna cum really soon![otherwise][line break][second custom style][big he of M]'s gonna jizz soon! I'm gonna taste it![end if][roman type][line break]";
		decrease the sex-length of M by 1;
	otherwise:
		if the reaction of the player is 0:
			if a random number between 1 and 2 is 1:
				say "[one of]You try to pull your head off [his of M] [manly-penis] but [his of M] grip only tightens more! As if angered by your resistance, [he of M] shoves your skull down again, spearing your throat with [his of M] overly large [manly-penis]![or]You pull up, but [he of M] makes sure to shove you right back down, shaking [his of M] head in disappointment. [big he of M] pins your nose against [his of M] pubis as [he of M] begins counting.[line break][speech style of M]'One... Two... Three...'[roman type][line break]It isn't until [he of M] reaches ten that [he of M] pulls you back up and off [his of M] black [manly-penis] with a hearty chuckle, something you find hard to hear over your heavy gasps. [big he of M] pulls your face back down [his of M] [manly-penis] and continues forcing you to bob.[or]You grunt and try your best to pull back, but [his of M] large hands and obvious muscles are more than enough to keep you held down. As if punishing you, [he of M] slams your head against [his of M] lap, sinking [his of M] [manly-penis] down your throat, forcing your eyes to roll back in their sockets. A moment later [he of M] yanks you back, using [his of M] free hand to stroke all of your throat-slime along [his of M] [manly-penis].[or]You claw at [his of M] hands, but it's obvious [he of M] doesn't care. Lucky for you [he of M] doesn't decide that your weak bats at [his of M] mitts are cause for punishment. [big he of M] does, however, force you to bob just a bit faster as a lighter version of punishment for your retaliation.[or]You fight [his of M] grip as much as you can, but in the end, [his of M] [manly-penis] stays in your mouth and you keep sucking it. [big his of M] grip tightens as [he of M] pulls [his of M] hips back, keeping your head at [his of M] tip, before thrusting forward aggressively, bottoming out in your throat, [if M is a balls-haver]slapping your chin with [his of M] balls.[otherwise]crushing your nose against [his of M] hips.[end if][line break][speech style of M]'Fuck, girl, stop fighting it!'[roman type][line break][in random order]";
				say "[one of]You try to pull [his of M] hands away, but come on, [he of M]'s much too strong for you. Every time you try and get a grip on [his of M] mitts, [he of M] grunts and thrusts your head down particularly hard, your cheeks starting to turn red from the heat of [his of M] lap.[or]You push on [his of M] legs for leverage, but this only makes [him of M] growl in anger. [big he of M] leans over you for a moment as [his of M] [manly-penis] slides particularly deep, your throat stretching quite wide to accommodate [his of M] rather large [manly-penis]. You struggle for air as [he of M] maintains the position for a good while, before finally pulling back and out of your mouth, making you gasp for air.[in random order]";
			otherwise:
				say "[one of][BigNameDesc of M] seems determined to get [himself of M] off with or without your help! As if it weren't obvious already from the almost desperate thrusts against your head [he of M]'s making, not to mention the pleasured grunts and moans occasionally fleeing [his of M] lips.[or]It seems like [NameDesc of M] doesn't care about your struggles as much as [he of M] lets on, [his of M] thrusts only gaining speed. You wonder if [he of M]'s just doing this to spite you at this point.[or][BigNameDesc of M] doesn't care about your protests, and it seems [his of M] [manly-penis] is going to fuck your face whether you like it or not![or][BigNameDesc of M] slides in much deeper than usual as [he of M] lets out a shivering groan, [his of M] [manly-penis] throbbing happily inside you. Even with a pale look on your face, it seems [he of M] doesn't care if you can breathe or not![or][BigNameDesc of M] cracks a grin as [he of M] pulls back, [his of M] [manly-penis] sliding out of your mouth, spit ropes connecting [his of M] [manly-penis] to your mouth. [big he of M] takes a second to slap your cheeks with [his of M] spit-slicked [manly-penis] to calm your protests before sliding right back in.[or][BigNameDesc of M] seems intent on getting off![or][if the oral sex addiction of the player < 3]You stay still, not wanting to help [NameDesc of M] get off in any way. It's already humiliating enough being used as a [manly-penis] sleeve without you willingly sucking or tonguing at [his of M] [manly-penis].[otherwise if the oral sex addiction of the player < 7]You stay completely still, knowing that if you willingly pleasure [him of M] you might like it and not stop. It doesn't help that [he of M]'s already much larger than the other guards you've seen, and when it comes to [manly-penis]s, size matters- Or at least you've been told![otherwise]You almost giggle as you stop pleasing [him of M], batting your eyelashes up at [him of M] in hopes that [he of M] might get the signal that you really deserve *punishment* for slacking off.[end if][in random order]";
			if a random number between 1 and 2 is 1 or the lips of face > 2, decrease the sex-length of M by 1;
		otherwise:
			say "[one of][BigNameDesc of M] lets out a grunt as [he of M] thrusts steadily, the hand on your head only tightening its grip. Drool starts to dribble from your lips as [he of M] continues to violate your throat![or][BigNameDesc of M] takes a moment to slow your head, savouring every little buck of [his of M] hips as [he of M] stares down at you with obvious hunger. [big he of M] lets out a more guttural moan as [he of M] forces your nose to [his of M] pubis, [his of M] [manly-penis] twitching with pride as it rests in your gullet.[or][BigNameDesc of M][']s grip never wavers as [he of M] continues to rut at your face, excess saliva starting to gush from your cheeks lewdly to splatter [his of M] lap. As time goes on, [his of M] rolling hips speed up, starting to complement the bobbing of your head.[or][BigNameDesc of M] gasps as [he of M] bobs your head on [his of M] first few inches, your lips growing thin as they glide over [his of M] [manly-penis]. But, no matter how much [he of M] seems to be enjoying [himself of M], [his of M] grip never loosens on your skull.[or][BigNameDesc of M] guides your head up and down [his of M] [manly-penis] emitting satisfied grunts and groans all along the way. Your hair bobs along with your head and it's starting to get hard to keep out of your face.[or][BigNameDesc of M] can't help but groan as [he of M] slams your head down against [his of M] lap, roughly ramming [his of M] [manly-penis] down your throat. [big he of M] holds your head still as [his of M] hips make tiny, muted rolls forward to stretch out your jaw.[or][BigNameDesc of M] doesn't seem concerned with your lack of air as [he of M] pins you down against [his of M] pelvis, soft groans fleeing [his of M] throat as [he of M] rests in yours. It isn't until your face is a flushed out pale mess that [he of M] finally pulls your head off [his of M] knob, forcing a desperate gasp from your lips. You catch at least some air before [he of M] pushes [his of M] [manly-penis] back into your mouth.[or]Each little thrust of [his of M] hips is met with a wet sloshing noise sounding from your drool-filled maw. Clearly [NameDesc of M] is pleased with this, as [he of M] teases you about it with little mock-sloshes of [his of M] own mouth.[or][BigNameDesc of M][']s grip on your head tightens for a moment as [he of M] lets out a particularly sharp gasp, throwing [his of M] head back for a second to give your head a few more good ruts. [big he of M] jerks [his of M] hips back to pop [his of M] [manly-penis] out of your mouth, stroking it a few times to evenly spread out the drool you left on it, only to push it back in with a wide grin.[in random order]";
			decrease the sex-length of M by 1.

To say FacialBrokenFree of (M - shopkeeper):
	say "[one of]As [NameDesc of M] gets caught up in [his of M] impending orgasm, you quickly make your move at just the right time, popping off [his of M] [manly-penis] quick enough to free yourself![or][BigNameDesc of M] shivers with delight as [he of M] nears [his of M] orgasm, both of [his of M] hands soon off your form and focusing on [his of M] [manly-penis] with quick strokes. You take advantage of the slight distraction by pulling away and off [his of M] [manly-penis]. You free yourself with a gasp![or]You struggle valiantly as [he of M] lets out a particularly loud moan, finally pulling free from [his of M] grasp. You freed yourself![or]Quickly pushing against [his of M] legs you manage to pull your head away from [his of M] lap, gasping for air as [he of M] begins stroking [himself of M] to finish![in random order]".

To say SuccessfulFacialDodge of (M - shopkeeper):
	say "[one of][BigNameDesc of M] lets out a booming moan as [he of M] tries to grab at you, unable to really get a grip before [he of M] fires off rope after thick rope of [semen], all if it completely missing you and sailing over your shoulder, forming a puddle on the floor behind you. [big he of M] struggles for a second to regain composure, as do you.[or][BigNameDesc of M] huffs a bit as [he of M] flinches a few times, launching jet after thick jet of [semen] onto the floor in front of you both. You can't help but take your eyes from [him of M] as you sit, paralysed in fear.[or][BigNameDesc of M] stumbles a bit as you jerk away, quickly diving out of the way as [his of M] [semen] launches past your body to form a thick, sizeable puddle on the floor behind you. In a small fit of panic, you try to crawl away, but you're too late.[or]All that struggling seems to have paid off! You pull yourself out of [his of M] lap just in time for [his of M] [semen] to rocket from [his of M] tip, thick wads of [semen] crashing on the floor moments later as [he of M] shivers in place.[or]You pull back from [his of M] [manly-penis] just in time! As soon as your face is out of splash range, [he of M] groans and clenches up. You can hear [him of M] cursing to [himself of M] as a thick gush of [semen] flies from [his of M] tip, launching a few good feet before forming a sizeable puddle on the floor.[or][BigNameDesc of M] blurts out a happy moan as [he of M] nears [his of M] orgasm. Luckily, you manage to free yourself just in time! You dive away from the large [M] before any of [his of M] gooey, off-white [semen] can hit you or your face![or][if the semen addiction of the player < 8][BigNameDesc of M] tries to step forward and grab your shoulder, but [he of M]'s already too far gone to stop now! You smile triumphantly as [his of M] [semen] jets out of [his of M] [manly-penis] onto the floor with subdued splashes.[otherwise if the semen addiction of the player < 13][BigNameDesc of M] throws [his of M] arm out to grab at you again, but you manage to get just out of [his of M] reach! You almost feel a little regret as [NameDesc of M][']s black [manly-penis] shoots out rope after rope of [semen] directly onto the floor. You try to push back thoughts of how much nicer it would've been to have that thick [semen] coat your face.[otherwise][BigNameDesc of M] groans as [he of M] throws [his of M] arm out to grab you, but [his of M] sudden orgasm causes [him of M] to clench up. You watch in awe as [his of M] [manly-penis] pours [semen] onto the floor. You really have to restrain yourself from lunging forward and licking that [tasted-semen] up off the floor as [he of M] readjusts, your mouth still watering just a bit from the head you just gave [him of M].[end if][in random order]".

To say FailedFacialDodge of (M - shopkeeper):
	if a random number between 1 and 2 is 1, say "[one of]But it's too late to escape [his of M] line of fire! [BigNameDesc of M] unleashes a guttural groan as rope after thick rope of hot [semen] splatters across your visage, painting you in an off-white. You flinch every time one of those ropes connects with your face.[or]Unfortunately, [NameDesc of M] pulls you back in no time, keeping a solid grip on your head as [he of M] ejaculates, forcing you to catch wad after thick wad of [semen] on your face, the heat of [his of M] load soon making you blush.[or][BigNameDesc of M] busts [his of M] nut anyway! You don't act quick enough to dodge the sudden launch of [semen] at your face! [BigNameDesc of M] groans as [he of M] continues stroking [himself of M], forcing a sizeable amount of [semen] out of [his of M] [manly-penis]. You gasp in shock, flinching as every rope strikes you.[or]But you're just not fast enough to escape! [BigNameDesc of M] bites [his of M] lip as [he of M] grabs your head again, floating [his of M] [manly-penis] in front of your nose for a moment before unleashing a torrent of [semen] with a lewd groan of pleasure. [big his of M] thick ropes drape over your eyebrows and lips as [he of M] pumps out a huge load all over your face.[or]With a sharp gasp, you manage to get yourself caught again! [BigNameDesc of M] grabs you before you have a chance to get far enough away, and holds you in place to accept [his of M] hot and sticky load, each shot from the end of [his of M] [manly-penis] making you clench your face up.[or][if the semen addiction of the player < 7]However, you just can't get away in time. [BigNameDesc of M] laughs as you struggle in vain, [his of M] large hand stroking away at [his of M] [manly-penis] as [he of M] stares down at you. Only moments later does [he of M] finally cum, [his of M] [semen] shooting out in gooey strands to coat your face, ropes of the stuff clinging to your skin and heating it up, a massive blush burning at your cheeks.[otherwise if the semen addiction of the player < 12][BigNameDesc of M] has no problem catching you again, however, and you can't really bring yourself to put up a good fight. You give a few lazy tugs at [his of M] hand before sighing and just accepting your fate, closing your eyes just in time to feel a few warm ropes of hot [semen] catch against your face. You barely flinch as you accept the facial.[otherwise]Luckily, it's too late! You can't help but giggle stupidly as [he of M] grabs you again, batting your lashes as [he of M] paints your face with rope after rope of thick, sticky treat.[end if][in random order]";
	otherwise say "[one of][if the semen addiction of the player < 7]You try your best to dodge out of the way, but it's too late. By the time you've moved your head, [he of M]'s readjusted and pointed [his of M] large, ebony [manly-penis] at your face again. You clench up and try not to breathe through your nose as [he of M] paints your visage with [his of M] off-white [semen], the thick substance easily sticking on your face. You blush uncontrollably in humiliation.[otherwise if the semen addiction of the player < 12]Sadly, you just can't find the will to get out of the way as [NameDesc of M] takes hold of your head once more, quickly forcing you to take a hot, sticky facial. You barely cringe as wad after wad of [his of M] creamy [semen] paints your face, a small blush starting to surface at your cheeks.[otherwise]You let out a fake gasp as [he of M] grabs you again, shooting a wink up at [NameDesc of M] as [he of M] takes hold of your skull once more and puts it right in front of [his of M] [manly-penis] with a wide grin. You giggle stupidly as [he of M] coats your cheeks, mouth, forehead, and nose with [his of M] hot treat.[end if][or][if the semen addiction of the player < 9]You try your best to dodge out of the way, but it's too late. By the time you've moved your head, [he of M]'s readjusted and pointed [his of M] large, ebony [manly-penis] at your face again. You clench up and try not to breathe through your nose as [he of M] paints your visage with [his of M] off-white [semen], the thick substance easily sticking on your face. You blush uncontrollably in humiliation.[otherwise if the semen addiction of the player < 13]You know what's coming but can't get away in time to avoid it! You're far to slow to move out of the way in time, and by the time you can even think to do so [NameDesc of M] already has a firm grip on your head again. There's nothing you can do to stop the sudden crash of hot [semen] against your face. You gasp in delight as [he of M] paints you with rope after rope of [his of M] [tasted-semen].[otherwise]You giggly stupidly as you continue to stare at [his of M] [manly-penis], completely captivated by how huge it is! You can't even think about anything else at the moment, and you giggle again as it comes closer, [NameDesc of M] stepping in to grab your head again with one of [his of M] strong hands. You tilt your head back to provide a better canvas for [him of M] to paint, something [he of M] clearly appreciates given the big smirk resting on [his of M] lips. With a sultry lick of your lips, you close your eyes and accept your fate, something that comes fairly quick! You smile as you feel [his of M] hot ropes cling to your skin, [NameDesc of M] groaning above as [he of M] feverishly masturbates in front of you, coaxing out quite a few good ropes from [his of M] [manly-penis] before letting go of you and stepping back.[end if][in random order]".

Definition: shopkeeper (called M) is willing to bukkake:
	if the class of the player is living sex doll, decide yes;
	if the player is a blowjob slut, decide no;
	if a random number between 1 and 2 is 1, decide yes;
	decide no.

To say UnavoidedFacial of (M - shopkeeper):
	if the class of the player is living sex doll:
		say "[BigNameDesc of M][']s mighty staff suddenly leaves your O-shaped suction-hole with a cartoonish rubber squeak. One hand clasps you behind your slender neck, holding you helplessly still while [his of M] other hand starts jerking with crazy speed as [he of M] aims [his of M] thick firehose at your face. There's nothing you can do as the bulbous end pulses and you get a close-up view as jet after jet explodes out all over your face, each spurt sounding exactly like water striking balloon-tight rubber.";
		say "[speech style of M]'Man, that was the best one yet! Your muffled squeals really add something to the experience. I've gotta convince them to let me add you to my product line. We could give demonstrations to potential customers, doll-face!'[roman type][line break]";
		say "[big he of M] leers at you, and you wonder whether [he of M] might decide to keep you here![line break][variable custom style]Then again, would that be so bad?[roman type][line break]Part of you considers the possibility of hanging around, maybe poking [him of M] again? After all, you have other orifices your new friend could play with.[line break]";
	otherwise:
		if a random number between 1 and 2 is 1, say "[one of][BigNameDesc of M] pulls your head off [his of M] ebony [manly-penis] with a gasp, rapidly stroking [his of M] length. It's not long before [NameDesc of M] goes over the edge, shot after shot of [his of M] creamy [semen] shooting out to strike your face with virile warmth.[or][BigNameDesc of M] shoves you off [his of M] lap, gasping, as [he of M] quickly [his of M] sizeable [manly-penis]. Before long [his of M] [semen] is launching forward to splatter your visage, each jet bigger than the last![or]Finally reaching [his of M] peak, [NameDesc of M] releases [his of M] orgasm with a rather loud groan, bending forward just a tad as [his of M] mind focuses on release. And release [he of M] does, pearly jets of [semen] shooting from [his of M] tip to splatter along your face. You cringe just a bit as each rope connects.[or][BigNameDesc of M] withdraws with a hiss, gritting [his of M] teeth and tensing up above you. You barely have time to close your eyes before you're hit with [his of M] hot load. A shiver shoots up your spine as you sit there and take it, paralysed by fear as to what just happened.[or]Pulling out of your mouth, [NameDesc of M] keeps a hand at the back of your neck to keep you steady. Your eyes widen just as you see white start to jet from [his of M] [manly-penis]'s head and fly at you. Thankfully you're able to get your eyes closed before [his of M] [semen] finds its new home on your face, clinging to your skin as it collects on the surface.[or][BigNameDesc of M] slides out of your maw with a pull of [his of M] hips, quickly grabbing [his of M] [manly-penis] and giving it a few frantic strokes. [big his of M] free hand goes back to grip your head, forcing your face to tilt upwards for a better angle to catch [semen] with. And catch you do. You shut your eyes tight as [he of M] moans, [NameDesc of M] releasing a torrent of thick [semen] upon your face.[or][if the semen addiction of the player < 7][BigNameDesc of M] lets loose with a deep groan, pulling [his of M] [manly-penis] out of your mouth and quickly bringing a hand down to stroke at it. You gasp quite audibly and cringe as [he of M] paints your face with volley after volley of thick, smelly [semen].[otherwise if the semen addiction of the player < 12][BigNameDesc of M] lets loose with a deep groan, pulling [his of M] [manly-penis] out of your mouth and quickly bringing a hand down to stroke it. You quickly shut your eyes as [he of M] shoots rope after rope of creamy [semen] onto your face, quietly sighing in relief when [his of M] orgasm finally ends.[otherwise][BigNameDesc of M] lets loose with a deep groan, pulling out and quickly stroking [his of M] [manly-penis] as you happily lean forward to present your face as a canvas. You close your eyes as [he of M] strikes your forehead with several ropes of thick, sticky [semen], shivering with excitement as it slides down your face in heavy clumps.[end if][in random order]";
		otherwise say "[one of][if the semen addiction of the player < 7][BigNameDesc of M] frantically withdraws from your lips with a soft *pop*, leaning in to position [his of M] [manly-penis] over your face. You shudder and cringe as [he of M] pours rope after thick rope of smelly [semen] over your visage.[otherwise if the semen addiction of the player < 12][BigNameDesc of M] frantically withdraws from your lips with a moderately loud *pop*, your eyes struggling to break their gaze from [his of M] throbbing [manly-penis]. [big he of M] lets out a few hefty grunts as [he of M] strokes [himself of M] in front of you, giving a good warning that [his of M] orgasm is quite close. You barely have time to close your eyes before [his of M] launches [his of M] load, [his of M] gooey [semen] finding its new home on your visage. Volley after volley of [semen] crashes against your face and before long the fat, creamy substance is dripping down your cheeks and forehead in thick clumps.[otherwise][BigNameDesc of M] frantically withdraws from your lips with quite the loud *pop*, much to your dismay. You quickly smile again as you notice [his of M] throbbing [manly-penis] and the frantic stroking of it, your eyes looking back up to lock gazes with his. Without complaint, you stick out your tongue and close your eyes, making a cute little[line break][variable custom style]'Ahhh...'[roman type][line break]as [he of M] ejaculates, those thick and chunky ropes of [semen] draping all over your features in no time.[end if][or][if the semen addiction of the player < 8][BigNameDesc of M] only gives a grunt and a shove of your head off [his of M] lap before [his of M] [manly-penis] erupts huge ropes of [semen]. You close your mouth just in time before those thick volleys of gooey [semen] splatter your face and stick to your skin.[otherwise if the semen addiction of the player < 12][BigNameDesc of M] only gives a grunt and a shove of your head off [his of M] lap before [his of M] [manly-penis] erupts huge ropes of [semen]. [big he of M] doesn't give you much time to react, at least that's what you tell yourself as you realise your mouth is still wide open as [his of M] [semen] drapes over your face, clinging against it like glue.[otherwise][BigNameDesc of M] only gives a grunt and a shove of your head off [his of M] lap before [his of M] [manly-penis] erupts huge ropes of [semen]. You manage to get your eyes closed fast enough to stop [him of M] from blinding you as [his of M] thick, gooey [semen] splatters across your skin. You can't help but shiver with delight as the heat from [his of M] [semen] rests on your face, the raunchy smell and acrid taste of [his of M] load only adding that extra bit of naughtiness that you enjoy so much.[end if][in random order]".

To say ResistedOralCreampie of (M - shopkeeper):
	say "[one of][BigNameDesc of M] keeps a firm grip on your skull as [his of M] [tasted-semen] pours out to pool in your mouth, your eyes going wide as [his of M] acrid taste clings to your taste-buds.[or][BigNameDesc of M] makes sure you can't move your head as [he of M] slows [his of M] fucking of your mouth. You're completely helpless as [he of M] fills your mouth with an absurdly large amount of [tasted-semen], your cheeks puffing out and turning a bright shade of red in no time flat.[or][BigNameDesc of M] grunts a few times as [he of M] quickens [his of M] thrusts, [his of M] [manly-penis] soon tightening up, only to let loose with an explosion of [semen]. [big he of M] fills your mouth with the [semen-adjective] taste of [semen], thin strands of drool still connecting [his of M] [manly-penis] to your lips as [he of M] slides [his of M] [manly-penis] out.[or][BigNameDesc of M] lets out a booming groan as [he of M] tightens [his of M] grip on your head, now stabilising [himself of M] by using both hands on your skull. You try to resist but can't, [his of M] grip far too strong now, and before long [his of M] [tasted-semen] is being slung into your mouth. The sheer size of [his of M] orgasm leads you to believe [he of M] must've been pent up for days, and by the time [he of M]'s finished and pulling out, your cheeks convex as if signalling your struggle to keep [his of M] load in your mouth.[or][if the semen taste addiction of the player < 9][BigNameDesc of M] pulls [his of M] hips back until only the tip of [his of M] [manly-penis] is nestled in your mouth before [he of M] lets loose. You muffle out a series of indignant noises as rope after rope of [tasted-semen] splatters your tongue. By the time [he of M]'s finished, your cheeks are puffed out and you find yourself struggling to keep [his of M] entire load in your mouth at one time.[otherwise if the semen taste addiction of the player < 12][BigNameDesc of M] pulls [his of M] hips back until only the tip of [his of M] [manly-penis] is nestled in your mouth before [he of M] lets loose. You shiver in restrained delight as [his of M] thick, [tasted-semen] drapes across your tongue, [his of M] virile load quickly filling your mouth to excess, making your cheeks puff out.[otherwise][BigNameDesc of M] pulls [his of M] hips back until only the tip of [his of M] [manly-penis] is nestled in your mouth before [he of M] lets loose. You bat your tongue against [his of M] glans as [he of M] rockets forth rope after rope of [tasted-semen], a muffled and slutty moan rumbling out of your throat as [he of M] fills up your mouth. Your tongue rolls around the creamy treat as [he of M] pulls back, making sure you taste every last bit of [his of M] [tasted-semen].[end if][in random order]".

To say AutomaticSwallow of (M - shopkeeper):
	say "[one of]You struggle for a moment, swallowing [his of M] surprisingly large load in a few gulps.[or]You struggle down [his of M] load with a few cringes, only realising that you've done so moments after the fact.[or]You swallow it in a few gulps, blushing redder than a tomato after.[or]Without thinking, you swallow [his of M] virile, [tasted-semen] in a few gulps.[or]You're too thirsty to even object, and before you can even think for yourself, your body reacts first. It takes a few swallows and gulps to get all of [his of M] [tasted-semen] down your throat.[or]You can't stop yourself from gulping [his of M] thick load down, surprised it takes you more than one swallow to do so.[or][if the semen taste addiction of the player < 6]You know how much you want to spit, but for some odd reason you just can't! [his of M] slime slithers down your throat after a few gulps, leaving you to reflect on how horrible you've become.[otherwise if the semen taste addiction of the player < 10]Before you can object you're already gulping down [his of M] load, struggling a bit as the sheer size means you swallow more than once. You try to rationalise why you swallowed, insisting it was so you didn't have to get punished by [NameDesc of M], but some small part of you knows otherwise.[otherwise]It's obvious you weren't looking for anything but spunk to drink, otherwise you wouldn't be in this situation. You're far too thirsty and [his of M] [tasted-semen] is just too much of a delight to pass up on~! You swallow a few times to let [his of M] treat run down your throat, feeling quite full after gulping down such a sizeable load.[end if][in random order]".

To say VoluntarySwallow of (M - shopkeeper):
	say "[if the humiliation of the player < 15000][one of]You drop your eyes, swallowing [his of M] load along with what's left of your pride.[or]You swallow [his of M] load of your own free will, thoroughly humiliating yourself in the process.[or]Thoroughly humiliated, you swallow [his of M] load. At least nobody else will know what happened.[in random order][otherwise if the semen addiction of the player < 8][one of]You reluctantly swallow, interested in no part of [his of M] potential punishment.[or]You shiver as you allow the foul-tasting fluid to slide down your throat and into your stomach.[in random order][otherwise if the semen addiction of the player < 14][one of]You shiver as the gooey fluid slides down your throat and into your stomach, knowing it will feed your growing addiction.[or]You swallow [his of M] load after a brief moment of hesitation.[or]You swallow obediently, knowing full well that you didn't have to.[or]You swallow without complaint, feeling strangely proud you did it all in one gulp.[or]You swallow every last drop, insisting to yourself it's because you didn't want to make a mess.[in random order][otherwise][one of]You open wide so [he of M] can see the [tasted-semen] in your mouth before swallowing it with a smile.[or]You make a show of playing with it before swallowing it all in one gulp.[or]You obediently swallow, licking the leftovers off your lower lip.[or]You gulp it down like the greedy little slut you are.[or]You swallow like an obedient little slut.[in random order][end if]".

To say VoluntarySpit of (M - shopkeeper):
	say "[if the semen taste addiction of the player < 8][one of]In a rather uppity way, you crinkle your nose and spit out [his of M] load, letting it form a puddle on the floor.[or]You spit [his of M] [semen] out and into a puddle on the floor as quickly as possible, using your teeth to scrape the taste off your tongue.[or]Even though you feel intimidated you manage to glare up at [him of M] as you let the [semen] dribble from your lips.[or]You shiver with an almost liquid spine as you gape your lips and let the [semen] pour from your mouth in thick, gooey clumps.[in random order][otherwise if the semen taste addiction of the player < 12][one of]You know [he of M] isn't going to be happy, but you just can't swallow. Avoiding [his of M] gaze, you look off to the side and let [his of M] thick [semen] dribble out of your mouth.[or]You hope that [he of M] won't be too mad as you let [his of M] [semen] slowly escape your mouth. You take occasional glances up at [him of M] as you do so, obviously regretting your actions as [his of M] sneer grows intense.[or]You lean to the side with a soft w[him of M]per leaving your throat as [his of M] [semen] spills from your lips to splatter on the floor below.[or]You spit it out, pushing uncomfortable thoughts of how satisfying it was to be face-fucked so hard to the back of your mind.[in random order][otherwise][one of]You take a second to lean in, lewdly pressing your [BreastDesc] together as [his of M] [semen] falls out of your mouth in thick clumps.[or]You reluctantly part with [his of M] [semen], letting it spill from your lips. You opening your mouth wide and roll your tongue around as if to ask [him of M] to replace it.[or]You can't help but look up at [him of M] as you defiantly spit [his of M] [semen] onto the floor, hoping it was enough to coax a punishment out of [him of M].[or]You giggle stupidly as [his of M] [semen] gushes out of your mouth and onto the floor. Without thinking (as if you could at this point), you push your [BreastDesc] together and smile up at [him of M], waiting for your punishment.[in random order][end if]".

To say DeepthroatCreampie of (M - shopkeeper):
	if the class of the player is living sex doll:
		say "When one large hand grabs the hair at the back of your head, bunching it up into a rope handle that [he of M] uses to really hammer into your face hole, you kind of white out in pleasure as [he of M] uses you, finally jetting stream after stream of [semen] deep inside you, before finally pulling free with an embarrassingly-loud 'pop' as [he of M] breaks the seal of your eager lips.";
		say "[speech style of M]'Man! That's the best model yet! Those R&D guys know their stuff. Maybe I should keep you here as my new stress-relief toy?'[roman type][line break]";
		say "But [he of M] releases you, and turns away, and for a moment you have the crazy idea of poking [him of M], just, you know, kind of making the point that [he of M] shouldn't be just thinking of [his of M] own pleasure? Right?";
	otherwise:
		if a random number between 1 and 2 is 1:
			say "[one of][BigNameDesc of M] doesn't even waver as [he of M] reaches [his of M] peak and shoves your head into [his of M] lap, [his of M] booming groan filling the room as [his of M] [tasted-semen] rockets down your throat, filling your belly quite nicely.[or][big his of M] [manly-penis] throbs without restraint as [he of M] shoves your nose into [his of M] pubis, burying [his of M] rather large [manly-penis] in your throat. It doesn't take much long after that before [he of M]'s firing off volley after volley of hot [semen] down your oesophagus. [or][BigNameDesc of M] keeps your head pinned against [his of M] hips as [he of M] moans with obvious delight. Before long [his of M] creamy [semen] is being shot directly into your stomach, making you strain against [his of M] lap for air.[or][BigNameDesc of M] keeps your head still as [he of M] thrusts forward, [if M is a balls-haver]balls slapping your chin[otherwise]hips crushing your nose[end if] as [he of M] buries [his of M] [manly-penis] in your oesophagus. Thankfully [he of M] doesn't take long after to erupt, [his of M] thick [semen] rushing down your throat to fill your stomach quickly. [big he of M] pulls out before long, making you cough and sputter, breaking the little strands of spit still connecting your lips to [his of M] length.[or]You barely have time to react before [NameDesc of M] buries [his of M] [manly-penis] as far into your mouth as it will go, [his of M] [if M is a balls-haver]balls resting on[otherwise]thighs touching[end if] your chin and your nose digging against [his of M] pubis. Jet after jet of hot, thick [semen] rockets down your throat to greet your stomach, your cheeks soon burning red with embarrassment. [big he of M] removes [his of M] length before long and lets out a hearty chuckle of victory, quickly losing interest again.[or][BigNameDesc of M] forces [himself of M] down your throat once more, groaning as [he of M] fills your belly with quite sizeable load. Wave after wave of [semen] rushes to fill you up, and before long you feel much more bloated than before, even as [he of M] removes [his of M] [manly-penis] and wipes the tip off on your cheek.[or][BigNameDesc of M] forces [his of M] [manly-penis] all the way to the hilt, letting out a booming groan of satisfaction in the process. With such a tight grip on your skull, you can do nothing but wait helplessly with your cheeks puffed out as [he of M] pumps shot after shot of disgustingly thick [semen] directly into your belly. After finishing, [he of M] pulls [himself of M] out and wipes [his of M] tip on your cheek, making sure you get every last bit of [his of M] [semen] in or on you.[in random order]";
		otherwise:
			if the semen taste addiction of the player < 8:
				say "[one of][BigNameDesc of M] crams your head into [his of M] lap, gritting [his of M] teeth as [he of M] pumps [his of M] hips a few more times. You feel completely helpless as [he of M] shoots [his of M] [semen] directly into your stomach, [his of M] soft hissing the only thing you can focus on besides the massive pain in your throat.[or][BigNameDesc of M] forces [his of M] [manly-penis] further and further down your throat until [his of M] [if M is a balls-haver]balls rest happily on[otherwise]thighs finally touch[end if] your chin. Your eyes go wide as you realise just how long [he of M] really is, that thick, veiny [manly-penis] throbbing against your inner walls. With burning cheeks you accept [his of M] thick and virile load, shutting your eyes and trying to imagine yourself somewhere other than here right after.[or][in random order]";
			otherwise if the semen taste addiction of the player < 12:
				say "[one of][BigNameDesc of M] crams your head into [his of M] lap, gritting [his of M] teeth as [he of M] pumps [his of M] hips a few more times. You obediently swallow as [his of M] [manly-penis] fires rope after rope of thick [semen] directly into your stomach. For some odd reason you feel slightly disappointed that you didn't get to taste it...[or][BigNameDesc of M] forces [his of M] [manly-penis] further and further down your throat until [his of M] [if M is a balls-haver]balls rest happily on[otherwise]thighs finally touch[end if] your chin. Your eyelids fall halfway down as your pupils vibrate, your focus less on [his of M] lap and more on the pain in your throat. As [he of M] fills your stomach with [his of M] hot and creamy load, you can't help but feel somehow proud that you were able to coax so much out of [him of M].[in random order]";
			otherwise:
				say "[one of][BigNameDesc of M] crams your head into [his of M] lap, gritting [his of M] teeth as [he of M] pumps [his of M] hips a few more times. If your mouth wasn't so full you're sure you'd giggle as [he of M] fires volley after volley of thick, chunky [semen] directly down your throat, a coarse moan coming from you as you stay still to accept every drop with a struggled smile.[or][BigNameDesc of M] forces [his of M] [manly-penis] further and further down your throat until [his of M] [if M is a balls-haver]balls rest happily on[otherwise]thighs finally touch[end if] your chin. Your eyes roll back in their sockets as tears stream down your cheeks, the heat of [his of M] lap finally starting to wear you down - not to mention the burning sensation in your throat. [big his of M] sheer size is enough to make you emit muffled little moans of content as [his of M] soothing [semen] rushes down your throat to fill your belly, something that leaves you utterly satisfied and ready for more.[in random order]".

To satisfy (M - shopkeeper) for (N - a number) seconds:
	if M is interested:
		if the player is not in Dungeon41, bore M for N seconds;
		calm M;
		if the refractory-period of M < 12, now the refractory-period of M is 12; [the player gets a chance to be spotted again next round without him wanting sex]
		if M is in the location of the player and M is awake:
			if M is unfriendly:
				say "[BigNameDesc of M] seems satisfied, and briefly loses interest.";
				bore M for N seconds; [got to give the player a chance to leave if the shopkeeper is permanently unfriendly for some edge case reason]
			otherwise:
				say SatisfiedFlav of M;
				compute common boredom of M for N seconds;
			progress quest of nice-quest;
			if the health of M <= the maxhealth of M / 2, progress quest of chosen-one-quest;
	otherwise:
		bore M for N seconds;
	compute unlock satisfaction of M;
	send M home. [This makes sure the shopkeeper always makes it back to the shop.]

To say SatisfiedFlav of (M - shopkeeper):
	say "[BigNameDesc of M] seems satisfied.".

To say SwallowDemand of (M - shopkeeper):
	say "[speech style of M][one of]'You best swallow, [if the class of the player is princess]princess[otherwise][whore][end if], if you know what's good for you. Or else.'[or]'Be a good little slut and swallow my load. I've got a shop to run, stop stalling, I'm really not in the mood for your stupid games.'[or]'Mmnf, that was some good head. You better swallow to show how grateful you are... Or I might just take some of my pent up rage out on you.'[or]'I like a slut who knows [his of the player] place; swallow and I won't have to remind you who's in charge.'[or]'I hope you learned your lesson, whore, but let's make it even more entertaining. Swallow, or else.'[or]'I don't know, [if M is objectifying the player]I still feel like abusing you[otherwise]I'm still mad at you[end if]. If you swallow, I might just forget about it.'[or]'You better start swallowing, whore, I don't have time for your games.'[or]'Do I look like I'm playing around? Swallow my load or face the consequences.'[in random order][roman type][line break]".

To say angry punishment insult of (M - shopkeeper):
	if M is friendly-fucking, say "[speech style of M]Heh, you'll get over yourself soon enough.'[roman type][line break]";
	otherwise say "[speech style of M][one of]'Are you serious? Come here so I can punish you!'[or]'You little bitch! Get ready for punishment!'[or]'If you're gonna be so ungrateful, I'm gonna have to teach you a lesson!'[or]'You little slut! How dare you!?'[or]'Oh you're gonna regret that you little whore!'[or]'I guess I'm gonna have to punish you after all!'[in random order][roman type][line break]".

To say angry punishment accessory confiscation of (M - shopkeeper):
	say "[speech style of M]'I'm gonna keep this for my own personal stash. Don't expect it back from me any time soon, [bitch].'[roman type][line break]".

To say angry punishment clothing destruction of (M - shopkeeper) on (C - a clothing):
	say "[speech style of M]'[if C is actually breast covering and the largeness of breasts > 3]Don't worry, with such good cocksucking skills I'm sure you'll find another soon!'[otherwise if C is ass covering]I hope you don't mind your fuckholes out in the open. I'm guessing not after that display!'[otherwise if the number of worn clothing > 1]Too bad, just buy another from my shop you fucking whore.'[otherwise]Sluts don't need clothes!'[end if][roman type][line break]".

To compute the flying player taunting of (M - shopkeeper):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] hurls abuse at you.[line break][speech style of M]'[if M is objectifying the player][one of]When you've finished playing balloon with your body, I'm going to balloon your body with something else!'[or]You look like a whore, so I wouldn't be surprised if you actually enjoy what I'm about to do to you.'[or]I'm willing to wager you haven't taken a [manly-penis] this big. Well it won't be long until you float down here, and then I'm going to leave you gaping.'[or]You're lucky, I like fucking fat chicks. Fucking them until they cry no more and promise to never steal from me again, that is.'[in random order][otherwise][one of]You fucking thief! You just wait until I get my hands on you!'[or]You're going to wish you never stole from my shop!'[or]In this land, criminals get prosecuted in a unique way. I'm sure you'll enjoy it.'[or]Haha! Your escape attempt was foiled by your own ridiculous body. I can't wait until you come down here and I get to show you how we treat criminal scum in these parts.'[in random order][end if][roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.[end if]";
		slightHumiliate.

To say LandingTaunt of (M - shopkeeper):
	say "[BigNameDesc of M] laughs at the sight of you.[line break][speech style of M]'[one of]About time! Prepare yourself, criminal scum.[or]Life is full of ups and downs I guess. Mainly downs for you from here on out, though.[in random order]'[roman type][line break]";
	moderateHumiliate.

To decide which number is the rounds of sex left of (M - shopkeeper):
	decide on the sex-length of M.

To say sexSubmitNearingClimax of (M - shopkeeper) in (F - a fuckhole):[shopkeeper climax is special]
	say M submission sex 0.

To send (M - shopkeeper) home:
	if M is alive:
		dislodge M;
		if M is not in Dungeon41:
			if M is in the location of the player:
				let D be the best route from the location of M to Dungeon41 through labyrinth rooms;
				if D is a direction and player-fucking is 0, say "[BigNameDesc of M] leaves to the [D].";[During dominant sex, we have our own wording for how this happens.]
			now M is in Dungeon41;
		now M is guarding;
		if M is interested and the player is not in Dungeon41, bore M.

To orgasm satisfy (M - shopkeeper) for (N - a number) seconds:
	orgasm M;
	if Dungeon41 is guarded: [doesn't lose interest]
		FavourUp M;
		progress quest of nice-quest;
	otherwise:
		satisfy M for N seconds.

To decide if (M - shopkeeper) is losing wrapper in (F - a fuckhole):
	if the class of the player is cheerleader:
		if the player is getting lucky, decide no;
		decide yes;
	otherwise:
		if the player is getting unlucky, decide yes;
	decide no.

To say CondomPieFlav of (M - shopkeeper) in (F - a fuckhole):
	say "[speech style of M]'Fuck, this is so good! [one of]I'm almost there, baby!'[or]Ooh shit! Shii-iit! Here it comes!'[cycling][roman type][line break][BigNameDesc of M] buries [his of M] entire length inside of you, groaning with pleasure as the condom fills with [his of M] [semen]. You can feel it slowly bulging inside you, stretched thinner with every passing second as it struggles to contain [his of M] massive load, miraculously staying intact as [he of M] slowly pulls out and carefully peels it off without spilling a drop.[line break][speech style of M]'[if the reaction of the player is 2 or the class of the player is cheerleader]Didn't actually mean to come inside you, but I guess it's OK since I was wearing a condom.'[otherwise if the class of the player is living sex doll]Wow, you are one amazing sex doll. I hope you come back here again soon!'[otherwise if sissy black cock whore tattoo is worn][one of]I bet you wish this load actually ended up inside you, eh slut? Come back[or]Come[stopping] back when you're ready for this [BlackCock] to breed you for real.'[otherwise if M is friendly-fucking]That was fucking amazing. Feel free to ask me to do that again any time!'[otherwise]I hope you learned your lesson, otherwise I might have to do it without the condom sometime.'[end if][roman type][line break]";
	if the class of the player is cheerleader, say GotLuckyFlav.

To compute condom failure of (M - shopkeeper) in (F - a fuckhole):
	get condom failure image of M in F;
	say CondomFailFlav of M in F;
	unless the class of the player is cheerleader, say GotUnluckyFlav;
	now M is unwrapped;
	if F is asshole, AssFill 1;
	otherwise PussyFill 1;
	say CreampieReactionFlav to M in F.

To say CondomFailFlav of (M - shopkeeper) in (F - a fuckhole):
	say "[speech style of M]'Fuck, this is so good! [one of]I'm almost there, baby!'[or]Ooh shit! Shii-iit! Here it comes!'[cycling][roman type][line break][BigNameDesc of M] buries [his of M] entire length inside of you, groaning with pleasure as the condom fills with [his of M] [semen]. You can feel it slowly bulging inside you, and you imagine it stretching thinner with every passing second as it struggles to contain [his of M] massive load. At first, it seems to stay intact, but a little bit of warmth seems to linger inside you after [he of M] pulls out, and you look down to see a barely noticeable tear near the tip.[line break][speech style of M]'[if the reaction of the player is 2 or the class of the player is cheerleader]Didn't actually mean to come inside you, but I guess it's OK since I was wearing a condom.'[otherwise if the class of the player is living sex doll]Good thing I wore a condom, eh sex doll?'[otherwise if sissy black cock whore tattoo is worn][one of]I bet you wish I didn't wear a condom, eh slut? Come back[or]Come[stopping] back when you're ready for this [BlackCock] to breed you for real.'[otherwise if M is friendly-fucking]That was fucking amazing. Feels way better if I don't have to worry about cumming inside you.'[otherwise]I hope you learned your lesson, otherwise I might have to do it without the condom sometime.'[end if][roman type][line break][big he of M] doesn't seem to notice the condom is dripping as [he of M] peels it off.".

To say CreampieFlav of (M - shopkeeper) in (F - vagina):
	if the class of the player is living sex doll:[Selkie: could do much better here]
		say "You're vaguely aware you've been hearing some hot chick squealing and squeaking and grunting without words for a long, long time, and then finally fireworks are exploding through your mind and body. When next you come to your senses, you can feel [semen] dripping down your thighs and [NameDesc of M] watching you with one eyebrow raised in smug amusement.";
		AnnouncedSquirt semen on thighs by 2;
	otherwise:
		say "[speech style of M]'Fuck, this is so good! [one of]I haven't properly fucked anyone in way too long...'[or]Don't worry, I've still got lots of jizz left for you...'[stopping][roman type][line break][BigNameDesc of M] loses control over [himself of M] and orgasms, burying [his of M] entire length inside of you and releasing [his of M] hot load. You can almost hear it flowing inside of you.[line break][speech style of M]'[if the reaction of the player is 2 or the class of the player is cheerleader]Sorry about that, to be fair I didn't mean to come inside you. [otherwise if the class of the player is living sex doll]Wow, you are one amazing sex doll. I hope you come back here again soon!'[otherwise if sissy black cock whore tattoo is worn][one of]Congratulations, you're at least good for one thing, getting bred by [BlackCock]. What do you want, a gold star? Now piss off and come[or]Come[stopping] back when you're ready for more [BlackCock], slut.'[otherwise if M is friendly-fucking]That was fucking amazing. Feel free to ask me to do that again any time!'[otherwise]I hope you learned your lesson.'[end if][roman type][line break]".

To say CreampieFlav of (M - shopkeeper) in (F - asshole):
	if the class of the player is living sex doll:
		say "[BigNameDesc of M][']s hands suddenly leave your hips, [if the player is possessing a vagina and vagina is not actually occupied]one descending onto your pussy to help you thrust your [AssDesc] back against its impaling [cockshaft of M], while [his of M] other arm presses[otherwise]pressing[end if] across the small of your back so you're held immobile and utterly helpless as [his of M] hips start jack-hammering with insane speed. Moments later, you and [he of M] both explode in a huge crescendo of ecstasy, and you feel jet after jet after jet spurting inside you, with the characteristic sound of water spraying against balloon-tight rubber.";
		say "[speech style of M]'Whoah!'[roman type][line break][he of M] exclaims, pulling [his of M] dick free with a cartoonish rubber squeak, your puckered flange squee-geeing [his of M] dick clean of [semen].[line break][speech style of M]'Man, that was the best one yet! The sounds this new model makes really add something special to the experience. I wonder if I could convince them to let me add you to my product line? I could even give demonstrations to potential customers. What say, [']doll[']?'[roman type][line break]";
		say "[big he of M] leers at you, and you wonder whether [he of M] might [italic type]really[roman type] decide to keep you here![line break][variable custom style]Then again, would that be so bad?[roman type][line break]Part of you wonders about the possibility of hanging around, maybe poking [him of M] again? After all, you have other orifices your new friend could play with.[line break]";
	otherwise:
		say "[speech style of M]'Fuck, this is so good! [one of]I haven't properly fucked anyone in way too long...'[or]Don't worry, I've still got lots of jizz left for you...'[stopping][roman type][line break][BigNameDesc of M] loses control over [himself of M] and orgasms, burying [his of M] entire length in you and releasing [his of M] hot load. You can almost hear it flowing inside you.[line break][speech style of M]'[if the reaction of the player is 2 or the class of the player is cheerleader]Sorry about that, to be fair I didn't mean to come inside you. [otherwise if the class of the player is living sex doll]Wow, you are one amazing sex doll. I hope you come back here again soon!'[otherwise if sissy black cock whore tattoo is worn][one of]Congratulations, you're at least good for one thing, getting bred by [BlackCock]. What do you want, a gold star? Now piss off and come[or]Come[stopping] back when you're ready for more [BlackCock], slut.'[otherwise if M is friendly-fucking]That was fucking amazing. Feel free to ask me to do that again any time!'[otherwise]I hope you learned your lesson.'[end if][roman type][line break]".

To compute post climax effect of (M - shopkeeper) in (F - a fuckhole):
	if M is friendly, say "[line break][speech style of M]'That was awesome! Feel free to return to the shop if you start feeling horny, I'm down to fuck you anytime!'[roman type][line break]";
	otherwise say "[line break][unless M is objectifying the player][speech style of M]'Feel free to return to the shop, but don't you dare leave without paying again.'[roman type][line break][end if][BigNameDesc of M] pulls out and leaves you alone to recover.";
	[let T be a random off-stage interracial themed drawable tattoo;
	if there is a worn tattoo and T is tattoo:
		summon T;
		say "A new tattoo appears on you in permanent black ink:";
		try examining T;
		say "[variable custom style]Holy shit. [if the outrage of T is too humiliating]I have to keep this covered up. There's no way I can let anyone see such a nasty tattoo.[end if][roman type][line break]".]

To decide if (M - shopkeeper) is willing to creampie (F - a fuckhole):
	if F is asshole and the player is a butt slut, decide yes;
	if F is vagina and the player is a pussy slut, decide yes;
	if the reaction of the player is 2 or the class of the player is cheerleader:
		if a random number between 1 and the charisma of the player > 1, decide no;
		decide yes;
	decide yes.

To say PullOutFlav of (M - shopkeeper) in (F - a fuckhole):
	say "[speech style of M]'Since you've been so much fun, I'll let you off - I won't [if F is vagina and the player is able to get pregnant]risk getting you pregnant[otherwise]come inside you[end if]!'[roman type][line break][BigNameDesc of M] suddenly pulls out and ejaculates over the stone floor. [line break][speech style of M]'I hope you learned your lesson though.'[roman type][line break]".

To compute sexResist of (M - shopkeeper) in (F - a fuckhole):
	say M rough sex 0;
	ruin F;
	increase the sex-length of M by 1.[offsets the decrease in the outer function]

To say (M - shopkeeper) rough sex (N - a number):
	let F be a random orifice penetrated by M;
	say "[BigNameDesc of M] continues using your [variable F]. You try as hard as possible to resist, but there's no getting away[one of][or][or][or][or][or] It's almost like [he of M] can keep going forever, and is waiting until you finally give in before blowing [his of M] load[stopping]! [unless the latex-transformation of the player > 2]You're getting more and more sore.[end if]".

To say (M - shopkeeper) nomercy sex (N - a number):
	let F be a random orifice penetrated by M;
	if the class of the player is cheerleader:
		say "[BigNameDesc of M] continues to fuck your [variable F].[line break][speech style of M]'[one of]Haha, yes, more dirty talk like that, you cheerleader slut!'[or]Yeah, that's right, I'm the boss of you, you naughty minx!'[or]It's difficult to go softly when fucking such a hot cheerleader!'[cycling][roman type][line break]";
	otherwise:
		say M submission sex N;

To say (M - shopkeeper) mercy sex (N - a number):
	let F be a random orifice penetrated by M;
	say "[BigNameDesc of M] keeps using your [variable F], but gently.[line break][speech style of M]'Haha, now you're realising your place. Go on, keep begging, I like it.'[roman type][line break]".

To say (M - shopkeeper) submission sex (N - a number):
	let F be a random orifice penetrated by M;
	say "[BigNameDesc of M] keeps using your [variable F]. [if the relevant sex addiction of M < 7]You try as hard as possible not to resist[otherwise if the relevant sex addiction of M < 10]You find it's easiest to just let it happen[otherwise]You relax and allow yourself to enjoy the sensation of [his of M] massive [manly-penis] ploughing in and out of your body[end if].".

To compute default waiting of (M - shopkeeper):
	say "[one of][BigNameDesc of M] waits patiently.[or][stopping]".

The monster fucked taunting rule of shopkeeper is usually the shopkeeper cockslaps the player rule.
This is the shopkeeper cockslaps the player rule:
	let M be current-monster;
	if bukkake fetish is 1 and the semen coating of face < 8:
		say "[BigNameDesc of M] takes this opportunity to [one of]smack[or]tap[or]hit[at random] your face with [his of M] [LongDickDesc of M]. After slapping each cheek a couple of times, [he of M] groans, pumping [his of M] [cockshaft of M] as [he of M] fires a rope of [semen] across your face.";
		CumFaceUp 1;
	otherwise:
		say "[BigNameDesc of M] [one of]slaps[or]toys[or]smacks[or]taps[at random] with your face with [his of M] [DickDesc of M], waiting for [his of M] turn.";
	rule succeeds.

The unique punishment rule of shopkeeper is usually the shopkeeper reclaiming stolen stuff rule.
This is the shopkeeper reclaiming stolen stuff rule:
	let X be the number of held stolen things;
	if X > 0:
		say "[speech style of current-monster]'[if the number of dangerous royal guards in the location of the player > 1]Thank you for your help, officers[otherwise if the number of dangerous royal guards in the location of the player > 0]Thank you for your help, officer[otherwise]Oh you are in trouble now bitch[end if]. This bitch is going to get what's coming to [him of the player]. [if X > 1]I'll be taking these back!'[otherwise if X is 1]I'll be taking this back!'[end if][roman type][line break][if X > 1][BigNameDesc of current-monster] takes the stolen items from you.[otherwise if X is 1][BigNameDesc of current-monster] takes the [printed name of random stolen thing] from you.[end if]";
		let LH be the list of held things;
		repeat with C running through LH:
			if the owner of C is current-monster:
				if C is bag of holding:
					repeat with T running through in-bag things:
						if the owner of T is not current-monster, now T is in the location of the player;
				now C is in Dungeon41;
				dislodge C;
		decrease the health of current-monster by 7; [This is so he is not on full health and so won't do nice things]
		rule succeeds.

To say BreastsPenetrationFlav of (M - shopkeeper):
	if the class of the player is living sex doll:
		say "[big he of M] shakes [his of M] head.[line break][speech style of M]'I just gotta try those beautiful balloons!'[roman type][line break]";
		say "The next moment, [he of M] shoves you down so your face presses into [his of M] chest while each hand grabs one of your [BreastDesc], and without any problem, trapping [his of M] engorged cock between then. Moments later, [he of M]'s thrusting you up and down and you feel [his of M] rod pistoning between your orbs, squeaking like a rubber toy. The vibration caused by the squeaking rubber seems to really be getting [him of M] off![line break][speech style of M]'Oh, yeah, baby, that's go-oo-ood! Keep that up, little Momma!'[roman type][line break]";
		say "[big he of M] sets up a rhythmic thrusting, each stroke of [his of M] making a squeaking sound, like it's a violin bow and your rubberised [BreastDesc] are the strings. Squeak-squeak, SQUEAK-squeak, squeak-squeak... It's not your imagination, [he of M] really is using you to make a tune, and horrifyingly, the longer it runs, the more the vibrations of [his of M] thrusting tool saw between your boobies, the deeper the sense of pleasure runs through you, spreading out from your chest and down to your groin, and all of a sudden you're squealing and grunting like a hot chick off her face, and your girly grunts seem to be really inflaming [his of M] passions!";
	otherwise:
		say "[BigNameDesc of M] forces [his of M] [manly-penis] in between your [ShortDesc of breasts]!".

To compute cleavage climax of (M - shopkeeper):
	if the class of the player is living sex doll:
		say "[big he of M] begins taunting you as [he of M] thrusts harder, and suddenly [if M is wrapped][he of M] rips the condom off of [his of M] [manly-penis] and [end if]ropey gobs of [semen] are jetting up between your breasts, liberally coating your face and some splashing across your cleavage and onto the generous swell of your chest.";
		AnnouncedSquirt semen on face by the semen load of M / 2;
		UnannouncedSquirt semen on breasts by the semen load of M / 2;
		say "[speech style of M]'Not bad!'[roman type][line break][big he of M] grips the back of your neck and briefly, shockingly, and casually, thrusts [his of M] dick into your rounded mouth and uses your lips to scrape off the remaining juice from [his of M] rod, then releases you.[line break][speech style of M]'Yeah, this new model gets three thumbs up from me!'[roman type][line break]";
	otherwise:
		say "[if the titfuck addiction of the player < 6]You lay still and let [him of M] thrust in and out of your [BreastDesc][otherwise]You use your hands to squeeze your [BreastDesc] together and rub them up and down [his of M] throbbing [cockshaft of M][end if] until [he of M] climaxes, [if M is wrapped]ripping the condom off of [his of M] [manly-penis] and [end if]spraying [his of M] [semen] all over your tits.[line break]";
		AnnouncedSquirt semen on breasts by the semen load of M;
		if M is friendly, say "[speech style of M]'Unf, that was so good! Personally, I reckon you should leave my cum on your [if breasts is exposed]clothes[otherwise]chest[end if] as a souvenir.'[roman type][line break]";
		otherwise say "[speech style of M]'Now wear that cum on your [if breasts is exposed]clothes[otherwise]chest[end if] as a reminder of your shame[unless M is objectifying the player]! And next time, pay before leaving[end if]!'[roman type][line break]";
	TimesSubmittedUp M by 1;
	BreastsSensitivityUp 1;
	compute happy reward of M;
	orgasm M;
	send M home.

To say PenetrationFlav of (M - shopkeeper) in (F - vagina):
	let H be the openness of F - the girth of M;
	if the class of the player is living sex doll:
		say SexDollVaginaPenetrationFlav of M;
	otherwise if the vaginalvirgin of the player is 1 and M is virginity taking:
		say VaginalDefloweringFlav of M;
		say VaginalVirginityTaunt of M;
	otherwise if H < -2:
		say VeryTightVaginaPenetrationFlav of M;
	otherwise if H < 0:
		say LessTightVaginaPenetrationFlav of M;
	otherwise if H < 2:
		say LessLooseVaginaPenetrationFlav of M;
	otherwise:
		say VeryLooseVaginaPenetrationFlav of M.

To say PrepTaunt of (M - shopkeeper) in (F - a fuckhole):
	if the class of the player is cheerleader:
		say "[line break][speech style of M]'[one of]I'm so excited!'[or]I can't get enough of that cheerleader ass!'[stopping][roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'[one of]Let's have fun, alright?'[or]I've been waiting for this!'[or]I've got a nut with your name on it!'[or]Let's have some of that bomb-ass sex.'[at random][roman type][line break]";

To say VaginalVirginityTaunt of (M - shopkeeper):
	say "[line break][speech style of M]'Oh shit, you were a virgin? Heh, sorry!'[roman type][line break]".

To say SexDollVaginaPenetrationFlav of (M - shopkeeper):[TODO: account for dickdesc, gags, etc.]
	say "[BigNameDesc of M][']s fingers brush up and down your slick, pre-oiled pussy, and [he of M] shakes [his of M] head at how soft and plump and inflated those lips are.[line break][speech style of M]'Oh, baby, now that looks fine. I hope they made you deep enough: I wouldn't want to prick your balloon!'[roman type][line break]And without further ado, [he of M] slowly sheaths you over [his of M] throbbing dick, inch by inch.[line break][speech style of M]'Damn, girl, that's tight! That's no cheap-ass pussy they got there, the R&D boys must've strengthened the flubber cocktail, it's like you have real [pussy]-muscles holding on for dear life!'[roman type][line break]";
		say "Your mouth, if you could control it, would be stretched open in a shocked 'O' of stunned pleasure by the intense sensations ripping through you - and then you remember, that's exactly how you do look, right now![line break]";
		say "[big he of M] walks across the room, taking [his of M] hands off you, but you're so tightly impaled on the huge throbbing length of meat thrust deep within you, that you stay stuck, your feet a few inches above the ground, and there's nothing you can do about it!";
		say "[speech style of M]'That's what I like to see: a [pussy] so hungry that she won't let go once she's clamped on, am I right?'[roman type][line break]You don't think you've ever felt so completely helpless and toy-like as your [BreastDesc] [BreastBounceDesc] as [he of M] waddles across the room, with you moving before [him of M] like the figurehead of a ship, but facing the wrong way. [big he of M] leers at you as [he of M] finally reaches the wall, pressing you against it and making your [ShortDesc of hips] spread slightly against the cold surface, but bracing you in place for what looks like it's going to be a truly epic screwing.";
		say "But instead of moving, [he of M] just stands there, grinning down at you, and if your doll-like expression could change from its surprised 'Oh my gosh!' expression, it would. Because there's a peculiar heat building in your plastic pussy, and you can feel something down there tightening, squeezing and clenching around [his of M] cock like an internal hand you didn't know you had. And each ratcheting increase of tension and pressure ups the pleasure you realise has been stealthily building inside you from [his of M] first thrust! You feel [his of M] cock grow even tighter and harder inside you, plugging you, and feel it twitch and throb in reaction, which forces another involuntary squeal from your throat.";
		say "[big he of M] nods, like [he of M] expected all that to happen, and then [his of M] hand is bending down to your face, [his of M] eyes apparently hypnotised by your lush, puckered-open lips. [big his of M] mouth locks over your bright red lower lip, gently biting it in a way that has you terrified [he of M] might bite down hard enough to puncture you - and there where would you be? - and squealing into [his of M] mouth from the shivery thrill of [his of M] lips against yours.";
		say "[variable custom style]I'm kissing a man, and I'm a sex doll![roman type] What would this little scene look like, if any of your friends were watching it? [if the humiliation of the player < 22000]Oh, god, you'd want to die of the shame, except the pleasure from [his of M] impaling cock and [his of M] lips and tongue are sending you so crazy with delight and hungry yearnings for still more, that they dwarf the shame, making it seem insignificant.[end if]";
		say "And then [he of M] begins to thrust in earnest, manhandling your [BreastDesc], or releasing them briefly to squeeze your waist, or to grip and knead your [AssDesc]... and you just kind of lose it.";

To say PresentAcceptanceFlav of (M - shopkeeper):
	say "[BigNameDesc of M] smirks at your request.[line break][speech style of M]'That's fine by me!'[roman type][line break]".

The shopkeeper jab rules is a rulebook. The attack rules of shopkeeper is usually the shopkeeper jab rules.

This is the shopkeeper jab rule:
	let M be current-monster;
	say "[BigNameDesc of M] skilfully jabs at your weak points! You feel your muscles quickly growing tired...";
	FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 4.
The shopkeeper jab rule is listed in the shopkeeper jab rules.

To compute happy reward of (M - shopkeeper):
	if M is friendly-fucking:
		let C be a random held store thing;
		if C is a thing:
			if the favour of M - the aggro limit of M > a random number between 1 and the price of C:
				now the owner of C is nothing;
				say "[speech style of M]'That was incredible! Go on, take the [ShortDesc of C], it's yours. And [please] do come again!'[roman type][line break]";
				check black lace transformation;
				trigger purchase-wisp-quest;
			otherwise:
				say "[speech style of M]'That was good, but the [ShortDesc of C] is worth too much I'm afraid. But feel free to try and earn more credit points again in the future!'[roman type][line break]";
		otherwise if the blue-balls of M <= 0:
			say "[speech style of M]'That was incredible! [one of]In fact, I think I'll knock some off my prices just to make sure you give me another visit.'[or]Discount is still on, just so you know!'[stopping][roman type][line break]";
			if the blue-balls of M is 0, now the blue-balls of M is -1;
			check black lace transformation.

This is the shopkeeper punishes diaper rule:
	let D be a random worn diaper;
	let legitWornDiaper be false;
	if D is diaper and the owner of D is not shopkeeper, now legitWornDiaper is true;
	if legitWornDiaper is false and (there is a worn stolen diaper or there is a carried stolen diaper):
		compute diaper donating of current-monster;
		rule succeeds;
	otherwise if the player is diaper focused and there is a worn unsoiled diaper:
		compute diaper use of current-monster;
		rule succeeds.
The diaper punishment rule of shopkeeper is usually the shopkeeper punishes diaper rule.

To compute diaper donating of (M - shopkeeper):
	let D be a random worn stolen diaper;
	if D is diaper:
		say "[speech style of M]'Did you really think you could just get away with stealing my shit? You're going to regret this.'[roman type][line break][BigNameDesc of M] kicks you hard in your side!";
	otherwise:
		now D is a random carried stolen diaper;
		if D is diaper:
			say "[speech style of M]'Did you really think you could just get away with stealing my shit? You're going to regret this. Here, if you are so desperate to be in diapers, let me help you out!'[roman type][line break]";
			repeat with P running through pee covering clothing:
				if P is removable:
					say "[BigNameDesc of M] brutally rips off your [P]!";
					destroy P;
				otherwise:
					say "The shopkeeper can't remove the [P]! Please report this bug.";
			say "[BigNameDesc of M] forces the [D] onto your body, and then begins spanking you roughly through the padding! [big he of M] is so strong that it still feels very painful.";
			now D is worn by the player;
		otherwise:
			say "Shopkeeper can't find a diaper to interact with. Please report the bug along with as complete details as possible on what happened in the last few turns.";
	PainUp 10;
	say "It hurts so much that ";
	if the player is bursting:
		say "you begin to wet yourself.";
		now delayed urination is 1;
		try urinating;
	otherwise:
		say "a little bit of wee comes out, soiling your diaper.";
		UrineSoakUp D by 1;
	say "[speech style of M]'How disgusting! I can't sell this now. Fuck! Fine, you keep this one but I'd better not see you trying this again.'[roman type][line break]";
	repeat with Z running through held stolen diapers:
		now the owner of Z is nothing;
	if the number of held stolen things is 0:
		say "[BigNameDesc of M], still angry but rapidly calming down, leaves you alone.";
		send M home.

To compute diaper use of (M - shopkeeper):
	let D be a random worn diaper;
	if D is diaper:
		say "[BigNameDesc of M] begins masturbating furiously.[line break][speech style of M]'Looks like you haven't used that diaper yet... let me help you get started!'[roman type][line break]Pulling the front of your [D] away from your waist, [he of M] points the tip of [his of M] cock inside your warm padding.[line break][speech style of M]'Ugh, yes...'[roman type][line break][big he of M] shoots ropes and ropes directly onto your [genitals], where it starts to drip and soak into your padding. [big he of M] lets go of the waistband, and it snaps back into place.";
		say "[variable custom style][if the semen addiction of the player > 12 and the semen taste addiction of the player > the semen addiction of the player]Ooh it feels nice and warm, but I'd have preferred [he of M]'d let me drink it all![otherwise if the semen addiction of the player > 8]It feels so warm and comforting... I could get used to being used like this.[otherwise if the humiliation of the player < 18500]Somehow having my diaper used like this feels even more humiliating than when I'm used for sex.[otherwise]Oh gosh, it feels so hot and slimy. And there's so much[one of]. I'm going to squelch as I move now[or], I could swear [he of M]'s filled it even more than last time[stopping]...[end if][roman type][line break]";
		cumsoak the semen load of M on D;
		obsceneHumiliate;
		say "[BigNameDesc of M] seems satisfied and docile now, and leaves you alone to recover.";
	otherwise:
		say "Bug: [NameDesc of M] can't find a diaper to use. Please report the issue giving as much detail as you can about your fetish options and what led up to this event!";
	send M home.

To say LickResisting of (M - shopkeeper):
	say BallResisting of M.

To say LickResistingResponse of (M - shopkeeper):
	say BallResistingresponse of M.

To say LickSubmissionResponse of (M - shopkeeper):
	say BallSubmissionResponse of M.

To say LickInitiationFlav of (M - shopkeeper):
	say BallInitiationFlav of M.

To say LickEndFlav of (M - shopkeeper):
	say BallEndFlav of M.

Section 2 - DQ

shopkeeper-retrieves-stolen is a diaper punishment. The priority of shopkeeper-retrieves-stolen is 5.
Definition: shopkeeper-retrieves-stolen (called P) is appropriate:
	if current-monster is not shopkeeper, decide no;
	if there is a held stolen thing, decide yes;
	decide no.

To compute punishment of (P - shopkeeper-retrieves-stolen):
	if there is a held stolen diaper, compute diaper donating of current-monster;
	otherwise follow the shopkeeper reclaiming stolen stuff rule.

Definition: shopkeeper is willing to spank: decide yes.

[Definition: shopkeeper is willing to deliver enemas: decide yes.]

Definition: shopkeeper is willing to confiscate: decide yes.

Definition: shopkeeper is diaper disciplining: decide yes.

Definition: shopkeeper (called M) is willing to change diapers:
	if the stolen-aware of M > 0, decide no;
	decide yes.

Definition: shopkeeper is willing to donate diapers: decide yes.

To say SpankingStartFlav of (M - shopkeeper):
	say "You see the large shopkeeper dive down to grab at your ankles with one rough hand, raising you up with ease and dangling you upside down. [one of][big he of M] is even stronger than [he of M] looks! [or][stopping]As you strain against the large [man of M] [he of M] quickly fastens your ankles into leather straps secured against a large metal beam, holding you firmly upside down. You're high up, making you unable to grab at anything but the air, and unable to look at anything but the shopkeeper as [he of M] runs a finger along a row of paddles on display! [BigNameDesc of M] grabs one on the end, one side completely covered in rubber spikes. Your thrashing only results in giving [NameDesc of M] a sinister smirk as [he of M] walks back over to you and raises [his of M] paddle, sending it crashing into your waiting behind!".

To say DQChangeResistReactionFlav of (M - shopkeeper):
	say "[BigNameDesc of M] looks frustrated.[line break][speech style of M]'[one of]Gahhh, is my merchandise too good for ya? This powder is imported, you know!'[or]Is the diaper too thin then? I got some REALLY thick ones in the back. I didn't use them, cause, you know, I thought you wanted to walk like an adult.'[in random order][roman type][line break]".

To say DQSpankResistReactionFlav of (M - shopkeeper):
	say "[BigNameDesc of M] looks amused.[line break][speech style of M]'[one of]Gahhh, is my merchandise too good for ya? This powder is imported, you know!'[or]Hmm, with all your pent up energy you could make a fine display, I can demo all kinds of items on you!'[or]Yeah, yeah, struggle all you want, you're only giving me inspiration to keep you as a form of kinetic art! You'd really bring the room together!'[in random order][roman type][line break]".

To say DQSpankResistExtensionFlav of (M - shopkeeper):
	say "[BigNameDesc of M] looks frustrated.[line break][speech style of M]'[one of][NameBimbo], we got a sale going on today, 3 struggles gets you 10 free lashes!'[or]Oh, I guess that means you want even more?'[cycling][roman type][line break]".


Section 3 - Damage

To compute damage reaction of (M - shopkeeper):
	if the blue-balls of M < 0, now the blue-balls of M is 0; [cancels discount]
	now M is unleashed;
	if M is awake:
		if M is friendly:
			say "[speech style of M]'Guards! Guards! It's an armed robbery!'[roman type][line break]";
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		now the sleep of M is 0;
		say "[big he of M] wakes up, and takes a fighting stance!".

To say DamageReactHealthy of (M - shopkeeper):
	say "[one of][BigNameDesc of M] is clearly an experienced fighter, as [he of M] seems unaffected by[or]continues to ignore[stopping] the pain.";

To say DamageReactDamaged of (M - shopkeeper):
	say DamageReactHealthy of M.

To say DamageReactTired of (M - shopkeeper):
	say DamageReactHealthy of M.

To say DamageReactWeak of (M - shopkeeper):
	say "[BigNameDesc of M] recoils slightly. [big he of M] definitely felt that.".

To say BanishDemandFlav of (M - shopkeeper):
	say "[variable custom style]'This is my shop now!'[roman type][line break]".

To compute unique banishment of (M - shopkeeper):
	say "[speech style of M]'I didn't want to be a shopkeeper anyway. I wanted to be a lumberjack...'[roman type][line break]";
	if strapon-dildo is off-stage and a random number between 1 and 3 is 1:
		now the strap-length of strapon-dildo is 10;
		now strapon-dildo is in the location of the player;
		say "[BigNameDesc of M] leaves [if full-lady fetish is 1][his of M][otherwise]a[end if] [strapon-dildo] behind.";
		compute autotaking strapon-dildo;
	repeat with C running through on-stage store clothing:
		now the owner of C is nothing;
	check mindflayerquest.

To say TaxDesc of (M - shopkeeper):
	say "Demand all [his of M] money. This is a [if the player is a pervert]dick-up. I mean [end if]stick-up!".

To compute tax return of (M - shopkeeper):
	if M is choice-taxable:
		compute choice tax return of M;
	otherwise:
		if the loot dropped of M < 4:
			loot M;
			say "[speech style of M]'This is all I have. Thief.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'You cleaned me out last time.'[roman type][line break]".

To loot (M - shopkeeper):
	while the loot dropped of M < 4:
		standard loot M.

To standard loot (M - shopkeeper):
	increase the loot dropped of M by 1;
	let X be a random off-stage plentiful accessory;
	if the class of the player is santa's little helper, now X is a random off-stage christmas gift;
	unless X is nothing:
		now X is in the location of the player;
		if X is plentiful accessory, compute appraisal of X from M;
		say "[BigNameDesc of M] produces a [printed name of X] from [his of M] lockbox.";
		now the owner of X is M;
		compute autotaking X.

To compute pitying of (M - shopkeeper):
	say PityOfferFlav of M;
	if there is a held stolen thing:
		say "[speech style of M]'Either you hand back the stolen goods, or the guards and I will keep hunting you, no matter where you go!'[roman type][line break]";
	otherwise:
		if M is not uniquely unfriendly:
			calm M;
			FavourUp M;
		if M is intelligent, say PityOfferResponse of M;
	progress quest of chosen-one-quest;
	bore M.

To compute (M - shopkeeper) slinking away:
	if M is in Dungeon41:
		bore M;
		now M is unconcerned;
	otherwise:
		say SlinkAwayFlav of M;
		bore M;
		now M is in Dungeon41.

To MonsterHeal (M - shopkeeper) by (N - a number):
	if the health of M < the maxhealth of M:
		increase the health of M by N;
		if the health of M >= the maxhealth of M:
			now the health of M is the maxhealth of M;
			if M is unconcerned, send M home.

Part 4 - Conversation

Section 1 - Greetings

[The shopkeeper uses the default greeting and response functions]

To say FirstResponse of (M - shopkeeper):
	if M is not in Dungeon41:
		say "[speech style of M]'We can talk when I get back to the shop.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]So, do you like anything you see?'[or]So, anything here you'd like to take home?'[or]Welcome to my shop. See anything you like?'[at random][roman type][line break]";
		if the bimbo of the player > 10 and diaper quest is 0:
			say "[one of][big he of M] grins, clearly aware that you are staring at [his of M] [manly-penis].[or][big he of M] gives you a knowing look, clearly aware that you are staring at [his of M] [manly-penis].[or][big he of M] chuckles, following your gaze to [his of M] [manly-penis].[or][big he of M] winks, clearly aware that your eyes are glued to [his of M] [manly-penis].[or][big he of M] follows your gawking stare and breaks into a grin.[at random]".

To say RepeatResponse of (M - shopkeeper):
	if M is unfriendly:
		if there is a held stolen thing:
			say "[speech style of M]'[one of]Give me what you stole!'[or]Don't think you can get away with stealing my property!'[or]That's my property you took! I'm not stopping until I get it back!'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]You're going to pay for this!'[or]Assault is a capital offence!'[or]Your attack was hello enough!'[in random order][roman type][line break]";
	otherwise if M is not in Dungeon41:
		say "[speech style of M]'We can talk when I get back to the shop.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Welcome back to the shop. Saved up for something you liked?'[or]Welcome back. Am I about to make a sale?'[at random][roman type][line break]".

To say SubmissiveResponse of (M - shopkeeper):
	if M is mating:
		say "[speech style of M]'It's always good to see the mother of my daughter.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'm glad you enjoyed yourself, but that was supposed to be a punishment.'[or]I admit I enjoyed myself, but I was only protecting my interests.'[or]I guess you were fun, but I was only trying to protect my property.'[at random][roman type][line break]".

To say InvitationAccepted of (M - shopkeeper) with (N - a monster):
	if the class of the player is cheerleader:
		say "[speech style of M]'[one of]It's not every day I get to fuck a cheerleader. I want you to myself.'[or]I'll wait. It's not every day I get to fuck a cheerleader.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Don't worry, I'm going to fuck you. I just want some one on one time.'[or]Heh, all you thieves end up like this. On their knees, begging to get fucked.'[at random][roman type][line break]".

To say InvitationRejected of (M - shopkeeper) with (N - a monster):
	if N is aeromancer:
		say "[speech style of M]'Ha! Blow [him of the player] up!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Sorry, I can't. I have a shop to look after.'[roman type][line break]".

To say AssistanceRejected of (M - shopkeeper) with (N - a monster):
	if M is unfriendly:
		say "[speech style of M]'[one of]Ha. Thieves like you deserve whatever you get.'[or]You deserve it. But don't worry, after [he of N]'s done, I'm going to punish you personally.'[or]If it were up to me, every criminal would get tossed in jail and gangbanged until they passed out. You're getting off easy.'[or]I'm not here because I want to help you. I'm here because I'm going to punish you personally once [he of N]'s done.'[at random][roman type][line break]";
	otherwise:
		if N is aeromancer:
			say "[speech style of M]'Ha! Blow [him of the player] up!'[roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]I'm staying out of this.'[or]Sort this out yourself.'[at random][roman type][line break]".

To say UnAnnoyedResponse of (M - shopkeeper):
	say "[speech style of M]'[one of]Yeah! Take it!'[or]Take it you naughty slut!'[or]Enjoying yourself you naughty minx?'[or]That's right, slut! Take it!'[or]Take it you naughty thief!'[or]Just like a thief to actually enjoy their punishment!'[at random][roman type][line break]".

To say MildAnnoyedResponse of (M - shopkeeper):
	let F be a random body part penetrated by M;
	if the class of the player is cheerleader:
		say "[speech style of M]'[one of]No way I'm stopping, you look way too hot in that uniform!'[or]I'll never stop, you're too hot in that uniform!'[or]I'd never throw away a chance to fuck a cheerleader!'[at random][roman type][line break]";
	otherwise if the number of lubricants covering F > 0:
		say "[speech style of M]'[one of]If you didn't want me to fuck you, then why did you use so much lube?'[or]You obviously knew this would happen if you took the time to lube yourself up beforehand.'[or][big please]. You knew you'd be taking my [DickDesc of M], that's why you covered yourself in lube, didn't you?'[or]If it hurts, all that means is you need to do a better job lubing up next time.'[at random][roman type][line break]";
	otherwise:
		if M is unfriendly, say "[speech style of M]'[one of]You should have thought harder before you decided to steal from me!'[or]Maybe next time you'll think a little harder before stealing from me!'[or]You've been a naughty little thief, and I'm going to punish you until I'm sure you've learned your lesson!'[or]Shut up and take it like the thieving slut you are!'[or]Shut up and take it you little thief!'[or]So what you're saying is, I need to punish you even harder!'[at random][roman type][line break]";
		otherwise say UnAnnoyedResponse of M.

To say AnnoyedResponse of (M - shopkeeper):
	say "[speech style of M]'[one of]You're really talkative, aren't you...'[or]You sure do have a lot to say...'[or]Another one liner...'[at random][roman type][line break]".

To compute annoyed punishment of (M - shopkeeper):
	let B be a random off-stage fetish appropriate gag;
	if B is actually summonable:
		say "[speech style of M]'This one's on the house!'[roman type][line break][BigNameDesc of M] pulls out a [printed name of B] and forces it into your mouth!";
		summon B locked;
	otherwise:
		say "[speech style of M]'This goes on as long as you want it to, missy. Keep chatting it up all you want.'[roman type][line break]".

To compute taunt acceptance effect of (M - shopkeeper):
	calm M;
	increase the discounts of M by 1.

To say TauntAccepted of (M - shopkeeper):
	say "[speech style of M]'Well, if that's really how you feel about it... I'll give you a one-time discount. Pick fast, and don't make me regret this.'[roman type][line break]".

To say TauntRejected of (M - shopkeeper):
	say "[speech style of M]'That's not going to work this time, thief.'[roman type][line break][BigNameDesc of M] seems even more determined to beat you!".

Section 2 - Questions

talk-shopkeeper-discount is a talk-object.

To consider (T - talk-shopkeeper-discount) for (M - a monster):
	if M is shopkeeper and the discounts of M is 0 and M is interested and diaper quest is 0 and M is friendly:
		let Q be the substituted form of "[shopkeeperDiscountQuestion]";
		now the printed name of T is Q;
		set next numerical response to Q;

To say shopkeeperDiscountQuestion:
	if the bimbo of the player < 6:
		say "'[one of]Is there any chance I can get a bit of a discount?'[or]Is there any way you could lower some of these prices?'[or]I know you're a business [man of shopkeeper] or whatever, but don't you have sales or something?'[at random]";
	otherwise:
		say "'[one of]Is there anything a [boy of the player] can do to get a discount around here?[or]So, what would I have to do for a discount?'[or]I'm dying to get into some of these clothes, but I just don't have the money for it right now. Oh well...'[or]Is there something I can do to lower some of these prices?[if the bimbo of the player > 12] With my body, maybe?'[otherwise]'[end if][at random]";

To execute (T - talk-shopkeeper-discount) for (M - a monster):
	say "[speech style of shopkeeper]'[one of]Heh, you are a slutty one aren't you. Tell you what, if you can take this whole length in your mouth, I'll give you a small discount on the next few things you buy.'[or]How can I refuse to let you try again after last time! I'm definitely ready for another round.'[stopping][roman type][paragraph break]Give it a go? ";
	if the player is bimbo consenting:
		now keriaxshopblow is 1;
		obsceneHumiliate;
		say "You get on your knees and take [his of shopkeeper] enormous length in your hands. The giant tool starts to grow even larger as the shopkeeper is aroused with anticipation. [if the bimbo of the player < 7]You close your[otherwise]You stare deeply into his[end if] eyes and open your mouth as you stretch your mouth as wide open as possible in order to get your lips around the head. As you move your face down the first half of the monster, you [if the bimbo of the player < 10]shiver with shame as you feel [his of shopkeeper] sex organ expand to fill your entire mouth.[otherwise]feel your own arousal build as your mouth fills with [manly-penis].[end if][line break]The next part of the member is a challenge, you have to force the head right to the back of your throat which takes some work, you have to move your head backwards and forwards a few times which causes you to make a lewd gagging sound. You can tell that the shopkeeper is greatly enjoying [himself of shopkeeper] by [if the bimbo of the player > 6]the look in [his of shopkeeper] eyes and [end if]the moans [he of shopkeeper] has started to make. ";
		if the throatskill of the player is 1 or a random number between 0 and 1 < the number of lubricants covering face or the oral sex addiction of the player > a random number between 0 and 10:
			say "[if the throatskill of the player is 1]Using your newly obtained deepthroating techniques[otherwise if there is a lubricant covering face]With the help of the slippery lubricant coating your mouth and throat[otherwise]Licking your lips nervously[end if], you try to open your throat and accept [his of shopkeeper] length inside it. [if the oral sex addiction of the player < 5]It takes several attempts to mentally steel yourself and allow your throat to relax, but you eventually manage to swallow the entirety of [his of shopkeeper] [manly-penis].[otherwise]You blank out your mind and find it surprisingly easy to relax your throat muscles. You take [his of shopkeeper] entire [manly-penis] and allow your throat to pulse around it by repeatedly making a swallowing motion.[end if][line break]Before you can react, whilst [his of shopkeeper] [manly-penis] is deep in your throat, [he of shopkeeper] starts to climax. [if the semen taste addiction of the player > 9]Without thinking you stay still and let [him of shopkeeper] ejaculate directly into your belly. After [he of shopkeeper] finishes filling your stomach with [his of shopkeeper] seed, [he of shopkeeper] slowly deflates, and eventually pulls [his of shopkeeper] entire length from your throat and mouth.[otherwise]you pull yourself back as fast as possible, but not before you are forced to swallow several strings of [his of shopkeeper] salty gift.[end if][line break][speech style of shopkeeper]'Unf, that was incredible. All right, you definitely deserve a discount for that performance. I'm going to give you 4 credits off the next 4 items you buy.'[roman type][line break]";
			increase the discounts of M by 4;
			StomachSemenUp the semen load of shopkeeper;
			now shopkeeper is penetrating face; [This allows next two lines to function properly]
			check oral virginity loss with shopkeeper;
			orgasm shopkeeper;
		otherwise:
			say "[if the number of lubricants covering face > 0]With the help of the slippery lubricant coating your mouth and throat, you try to open your throat and accept [his of shopkeeper] length inside it. However, you soon realise it's not enough.[end if]As much as you try, you can't get the last part into your mouth. There's just no room! Your mouth is already 100% full of [if the bimbo of the player > 7][man of shopkeeper] meat[otherwise]'meat'[end if] and even though you try bulging out your cheeks, pulling out and pushing back in, and moving your tongue around to different points in your mouth, nothing works. What it does manage to do, though, is cause the shopkeeper to lose control. Before you can react, whilst [his of shopkeeper] [manly-penis] is as deep in your mouth as it can go, [he of shopkeeper] starts to climax, and [if the semen taste addiction of the player > 8]without thinking you start gulping it down so that you can continue to breathe. After [he of shopkeeper] finishes filling your stomach with [his of shopkeeper] seed, [he of shopkeeper] slowly deflates, and eventually pulls [his of shopkeeper] entire length from your mouth.[otherwise]you pull yourself back as fast as possible, but not before you are forced to swallow two or three strings of [his of shopkeeper] salty gift.[end if]";
			now shopkeeper is penetrating face;
			StomachSemenUp the semen load of shopkeeper;
			instantThroat shopkeeper;[Check if the player pukes, and check if they lose their oral virginity.]
			orgasm shopkeeper;
			say "[speech style of shopkeeper]'Unf, good try, but you couldn't quite manage the last bit. Such a shame. Still, it was an admirable attempt. I sure had fun. Maybe I'll let you have another go in a while.'[roman type][line break]";
		BlowCount;
		dislodge shopkeeper;
	otherwise:
		if the bimbo of the player < 8 and the player is gendered female:
			say "[first custom style]'[one of]Hell no, sicko. I'm not that kind of girl.'[or]Fuck you, asshole. I'd rather die.'[or]No thanks. Creep.'[or]Fuck off. I'm not some cheap floozy.'[at random][roman type][line break]";
		otherwise if the bimbo of the player < 8:
			say "[first custom style]'[one of]Excuse me? I'm not a chick, brah.'[or]No way dude, I'm straight.'[or]Haha, is this a prank show? No way dude.'[or]Is that your way of telling me to fuck off?'[at random][roman type][line break]";
		say "[speech style of shopkeeper]'Fair enough, I won't hold it against you! I won't offer again, though.'[roman type][line break]".

To compute teaching of (M - shopkeeper):
	say "[speech style of M]'You know, sometimes you can tell if an item is cursed from some tell-tale hints. Let me tell you a few...'[roman type][line break]";
	teach identifying.

To say WhereAnswer of (M - shopkeeper):
	say "[speech style of M]'The best and only clothes shop in these lands!'[roman type][line break]".

To say WhoAnswer of (M - shopkeeper):
	say "[speech style of M]'Well, I'm the shopkeeper! Is that not obvious?'[roman type][line break]".

To say StoryQuestion of (M - shopkeeper): [Custom question here]
	if diaper quest is 1:
		say "'What's with your outfit?'";
	otherwise if the bimbo of the player < 7:
		say "'So why are you naked?'";
	otherwise if the bimbo of the player < 14:
		say "'So how did you end up in charge of the shop?'";
	otherwise:
		say "'So how does a **[one of]sexy[or]yummy[or]gorgeous[at random]** guy like you end up in a place like this?'".

To say StoryAnswer of (M - shopkeeper):
	if diaper quest is 1:
		say "[speech style of M]'When I first started out, I didn't get many customers, but that changed when I started wearing some of the merchandise myself. Suddenly people were flocking from all around to spend time in my shop. For some reason, the thicker the diapers I wear, the more I sell.'[roman type][line break]";
	otherwise if the bimbo of the player < 7:
		say "[speech style of M]'When I first started out, I didn't get many customers, but that changed when I started wearing more revealing clothing. It turns out that the girls that shop here tend to like a bit of eye candy, so I end up making most sales when I'm nude! Which suits me just fine.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Well, I may not look like it, but once I was actually one of the first members of R&D to test this game! I was the first one to ever win, and the higher ups were so impressed they offered me a permanent job here as the shopkeeper! Sure, I'm not allowed to leave my post for long, but there's plenty of girls that pass through here, if you catch my meaning.'[or]I've been in charge of the shop for as long as I can remember, so I guess I don't know.'[or]The Nintendolls offered me a sweet deal. All the hot women I could fuck, and all I had to do was take care of the shop! Pretty sweet deal, right?'[sticky random][roman type][line break]".

To say EscapeAnswer of (M - shopkeeper):
	say "[speech style of M]'The key to travelling through this world successfully is to intelligently manage your fatigue. Don't start a fight unless you've rested up recently! Also, things that can't go in a bag of holding will weigh you down if you try to carry too many of them at once!'[roman type][line break]".

To say AdviceAnswer of (M - shopkeeper):
	say "[speech style of M]'[one of]How about this - don't be fooled by the height of platform heels. For all intents and purposes they're really just like normal heels that are a couple of inches shorter.'[or]Hmm, you know those gladiators? Try not to fight them if they're not interested in fighting you. Don't give them a reason to go all out.'[or]Certain consumable items can teleport you around the place. I bet they'd be good for getting you out of a sticky situation!'[or][if diaper quest is 1]Jumping in a body of water might seem like the most sensible way to clean a diaper, but it'll get completely soaked full of water and then you'll hardly be able to move!'[otherwise if the player is gendered male]I know the wenches seem hot, but they're smarter than you might guess. I had an awesome threesome with a pair of them, and by the time it was over, I was so tired I couldn't stop them stealing everything from my shop!'[otherwise]I know the wenches may seem friendly at first, but if you get too slutty they might turn on you. Trust me, I've seen that story play out 100 times. Heh, who knows, maybe you'll be 101.'[end if][or][if inflation fetish is 1]The aeromancers can be bothersome, but they're helpless if you can find a way to disarm them. Heh, I remember the first time one of them came into my shop.'[otherwise]Sometimes, the most challenging fight can be pretty rewarding.'[end if][at random][roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - shopkeeper):
	let L be a random off-stage vibrating plug panties;
	if M is not in Dungeon41:
		compute unfriendly drink of M;[since the default function does not check for captivity, we just link back to unfriendly drink since the shopkeeper has the same reaction when both are true.]
	otherwise if M is mating:
		say "[speech style of M]'Anything for the mother of my daughter. Here, drink from this bottle.'[roman type][line break]You feel completely refreshed!";
		while the player is thirsty:
			StomachUp 1;
		StomachUp 1;
	otherwise if L is actually summonable:
		say "A glint appears in [his of M] eye.[line break][speech style of M]'Hmm, I have a proposition for you. I'll give you a glass of water, but only if you do something for me. I've got loads of these latex plug panties that are not selling because the girls are all worried that it's going to hurt, or whatever. So I'll give you some water, and these panties for free, if you can walk around in them for me, to, you know, show any other potential customers that it's fun and not torture! What do you say? [roman type][line break]";
		if the player is bimbo consenting:
			now the effect of L is 2;
			summon L uncursed;
			allocate 6 seconds;
			say "[speech style of M]'Haha, excellent, well here's your drink, and let me just slip these on you...'[roman type][line break]You feel refreshed! But then the shopkeeper gets busy with your end of the deal. The latex is pulled up your legs and the [if the player is not possessing a vagina]plug goes[otherwise]plugs go[end if] in.";
			while the player is thirsty:
				StomachUp 1;
			StomachUp 2;
			ruin asshole;
			if the player is possessing a vagina, ruin vagina;
			compute M keylocking L;
		otherwise:
			say "[speech style of M]'That's too bad. Well, good luck with finding a drink!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I don't see why not. Here, drink from this bottle.'[roman type][line break]You feel completely refreshed!";
		while the player is thirsty:
			StomachUp 1;
		StomachUp 1.

To say LockDeclarationFlav of (M - a shopkeeper) for (C - a vibrating plug panties):
	say "[speech style of M]'Now of course, I need some assurances that you'll actually wear this for a while...'[roman type][line break]".

To say LockCommentFlav of (M - a shopkeeper) for (C - a vibrating plug panties):
	say "[speech style of M]'I guess we never did quite agree how long you should wear this for now, did we? That was silly of you. I guess we'll have to see if I'm ever feeling particularly kind...'[roman type][line break]".

To compute unfriendly drink of (M - shopkeeper):
	say "The shopkeeper ignores your question.".

Section 4 - Food Requesting

Definition: shopkeeper is willing to give snacks: decide yes.

Section 5 - Dominant Sex

To decide which number is the dominationtype of (M - shopkeeper) using (F - penis):
	decide on FUCK-BLOWJOB.

To compute unique dominance reward of (M - shopkeeper):
	compute power bottom reward of M.

To blowjob dominate (M - shopkeeper):[TODO: incorporate a bj here]
	say "You force [NameDesc of M] to [his of M] knees, [if sexual-penis-length > 8]pressing [his of M] hands to your rapidly hardening[otherwise if sexual-penis-length > 3]placing [his of M] hand against your hardening[otherwise]pulling [his of M] hand toward your stiffening[end if] [SexDesc of penis].[line break][if the bimbo of the player < 5][first custom style]'[one of]Get to work.'[or]It's not gonna wank itself.'[or]You know what to do.'[at random][otherwise if the bimbo of the player < 11][variable custom style]'[one of]A little help?'[or]You're good at this right? Help me out.'[or]Do something about it.'[at random][otherwise][second custom style]'[one of]Make me cum, baby'[or]I need a [man of M]'s touch.'[or]I'd think about you while I was doing it anyway...'[at random][end if][roman type][line break]";
	if sexual-penis-length > 8:
		say "[big he of M] nods, wrapping both hands around your [SexShaft] and slowly beginning to pump. [big his of M] technique is top notch, and it doesn't take long for [him of M] to bring you to an explosive orgasm. [big he of M] stands up with your load dripping from [his of M] hands.";
		obsceneDignify;
		orgasm;
	otherwise if sexual-penis-length > 3:
		say "[big he of M] nods, wrapping both hands around your [SexShaft] and slowly beginning to pump. It feels good, but [his of M] technique is terrible, and after going nowhere fast for several minutes, you sigh and tell [him of M] to stand up.";
		severeDignify;
		passively stimulate penis from M;
	otherwise:
		say "[big he of M] shrugs out of your grip and hops to [his of M] feet, putting [his of M] [LongDickDesc of M] level with your [sexual-player-penis]. The difference is [if interracial fetish is 1]literally [end if]like night and day.[line break][speech style of M]'Sorry, but you can't dominate me with a dick like that. Don't worry, it will grow if you treat it right. I can help you if you need some visualisation.'[roman type][line break][big his of M] words sting, but [one of]you're intrigued at [his of M] proposal[or][big his of M] words haven't lost their sting, but you know from experience that [his of M] treatment works[stopping]. You watch as [he of M] slowly strokes [his of M] [DickDesc of M], which hardens slowly as [he of M] moves behind you. Feeling [him of M] thrust between your legs is pretty concerning, but your apprehensiveness disappears as [his of M] thick [cockshaft of M] peeks out underneath your real one. It's as huge as ever, and just imagining what it would feel like to have that [i]beast[/i] growing from your body is great for your self esteem. You thank [him of M] as [he of M] steps away.";
		now player-fucking is DOMINANT-NEUTRAL;
		moderateDignify;
		passively stimulate penis from M times 2.

To compute ride dominate intro of (M - shopkeeper):
	let A be a random worn chastity cage;
	let submission be the calculated bbc addiction of the player;
	if interracial fetish is 0:
		now submission is the delicateness of the player;
	say "You force [NameDesc of M] to the ground, straddling [him of M] as you take in the sight of [his of M] [cockshaft of M]. [run paragraph on]";
	if 20 - submission >= the difficulty of M:
		say "[if interracial fetish is 1]You don't really see what the fuss is all about. [otherwise]It's nothing special. [end if] Sure, it's kind of big, but [if sexual-penis-length <= 0]it's just a [DickDesc of M]. Who cares?[otherwise if A is clothing]it's vulnerable to being trapped in chastity, just like yours. [big he of M]'s just lucky.[otherwise if sexual-penis-length >= 10]yours is clearly bigger. That's why you're on top.[otherwise if interracial fetish is 1]it isn't THAT different. It's just darker.[otherwise]it isn't that different, besides the size. Who cares?[end if]";
	otherwise if 20 - submission >= the difficulty of M / 2:
		let F be player-fucker;
		say "It's like a finely carved sculpture, and as you [if the player is wrist bound]grind on it, [otherwise]run your hand over it, [end if]you also take in the texture as it hardens between your [if F is vagina]labia. [otherwise]cheeks. [end if] [if sexual-penis-length <= 0]The way it moves, the way it catches the light, is a little fascinating. Only a little, though.[otherwise if A is clothing]Yours definitely seems a little inferior, but only because yours is locked in some stupid [ShortDesc of A]. [big his of M] only seems so interesting because you can't compare the two.[otherwise if sexual-penis-length >= 10]It isn't as big as yours, so it's not like yours is inferior. [big he of M]'d probably be as fascinated as you, in your position.[otherwise]Yours feels a little inferior, but only because it's smaller. If *you* were that big, [he of M]'d probably be fascinated too.[end if]";
	otherwise:
		if interracial fetish is 1, say "It's like gorgeous carved piece of wood just waiting to be polished. You do just that, [if face is actually occupied]wiping some drool from the corner of your lip and stroke, rub and jerk[otherwise]mouth watering as you wrap your lips around [his of M] [cockhead of M] and kiss, lick and suck [him of M][end if] [him of M] off. [if sexual-penis-length <= 0]Your white [boy of the player] brain feels a primal sense of rightness[otherwise if A is clothing and interracial fetish is 1]Your [sissy] white [boy of the player] [sissy-penis] twitches excitedly in your [ShortDesc of A][otherwise if sexual-penis-length >= 10]Your bigger but still very much inferior white [boy of the player] [sexual-player-penis] twitches[otherwise]Your inferior white [boy of the player] [sexual-player-penis] twitches[end if] as you worship [his of M] superior black [DickDesc of M] until it's shiny from base to tip.";
		otherwise say "It's completely gorgeous, like an elegantly carved piece of wood just waiting to be polished. You do just that, [if face is actually occupied]wiping some drool from the corner of your lip and stroke, rub and jerk[otherwise]mouth watering as you wrap your lips around [his of M] [cockhead of M] and kiss, lick and suck [him of M][end if] [him of M] off. [if sexual-penis-length <= 0]You feel a primal sense of rightness[otherwise if A is clothing]With your [sissy] [sissy-penis] rightfully locked up,[otherwise]Your [SexDesc of penis] resting rightfully unattended on [his of M] belly[end if] as you worship [his of M] [DickDesc of M] until it's shiny from base to tip.";
	say "[line break][speech style of M][if the class of the player is cheerleader]'This is actually one of my biggest fantasies. I feel like it would be more fun for both of us if I were on top, though.'[otherwise if the class of the player is vixen]'You better not run off this time. I'm not falling for that again!'[otherwise]'I had a feeling that's what this was about, but if you wanted to fuck you could have just asked.'[end if][roman type][line break]";

To ride dominate (M - shopkeeper):
	let F be player-fucker;
	let Ofit be the openness of F - the girth of M;
	let A be a random worn chastity cage;
	let submission be the calculated bbc addiction of the player;
	if interracial fetish is 0:
		now submission is the delicateness of the player;
	compute ride dominate intro of M;
	now M is penetrating F;
	if submission + the difficulty of M < 20:
		say "You ignore [him of M], breathing deeply as you drive [him of M] [if Ofit < -1]an inch[otherwise if Ofit < 2]a few inches[otherwise]several inches[end if] into your [variable F]. Already, it feels [if Ofit < -1]like [he of M][']s splitting you in half[otherwise if Ofit < 2]like [he of M][']s stretching you out[otherwise]like you've run out of space[end if], and when you pause to get used to it, [he of M] casually grabs your thigh and starts pulling you down [him of M]self.";
		let R be the semi-dominance roll for M;
		if R >= 0:
			if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
			say "You immediately grab [his of M] hand and slam it against the ground, glaring at [him of M] as you grab [his of M] other hand and pin that down too. [big he of M] looks up at you with hints of defiance in [his of M] features, but offers no more resistance as you continue at your OWN pace. You bounce your hips, allowing [his of M] [cockhead of M] to stroke your [if F is asshole and the player is sexed male]prostate[otherwise if F is vagina]g-spot[otherwise]deeper and deeper spots[end if] as your [if sexual-penis-length < 1]moans shamelessly fly out. [otherwise if A is clothing][player-penis] drools in your [ShortDesc of A]. [otherwise if sexual-penis-length > 4][ShortDesc of penis] taps [his of M] belly, leaving splotches of precum. [otherwise][SexDesc of penis] drools precum. [end if]The cocktail of control, pleasure, and [LongDickDesc of M] thoroughly enhances the experience, and you are thoroughly satisfied by the time [if A is clothing or (sexual-penis-length > 0 and sexual-penis-length < 4)]your [load] is forming a zig-zag on [his of M] abs. [otherwise if sexual-penis-length >= 4]your [load] is shooting in a line across [his of M] abs. [otherwise if the player is possessing a vagina]you are squirting all over [his of M] abs. [otherwise]you cum. [end if][big he of M] had no such enhancement, and [his of M] [cockshaft of M] is still hard and throbbing inside you. Will you let [him of M] finish?";
			now refractoryperiod is 0;
			orgasm;
			if the player is bimbo consenting:
				say "You smirk at [him of M] and resume bouncing until [his of M] [LongDickDesc of M] stiffens and explodes inside you. [big his of M] load [if M is wrapped]is collected in a neat bulge at the end of the condom[otherwise]seeps out your [variable F][end if] as you climb off.";
				orgasm M;
				if M is unwrapped:
					if F is vagina, PussyFill the semen load of M;
					otherwise AssFill the semen load of M;
				calm M;
				increase the discounts of M by 1;
				say AfterDominationComment 1 of M;
			otherwise:
				say "You climb off, deciding that if [he of M] wanted to cum, [he of M] should have kept [his of M] hands to [him of M]self.";
				FavourDown M;
				say AfterDominationComment 7 of M;
			severeDignify;
			ruin F;
		otherwise:
			if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
			say "[if the player is wrist bound]With your wrists bound, there's nothing you can do about it, [otherwise]It isn't the WORST thing [he of M] could do, so you reluctantly allow it, [end if][if Ofit < -1]winc[otherwise if Ofit < 2]gasp[otherwise]hiss[end if]ing as [he of M] completely plugs your crevice with [LongDickDesc of M]. You at least don't let [him of M] set the pace, bouncing on [his of M] [cockshaft of M] as [his of M] other hand [if the largeness of breasts > 5]gropes[otherwise]palms[end if] your [ShortDesc of breasts]. You don't stop even as [he of M] starts playing with your nipples, [if A is clothing]cage[otherwise if sexual-penis-length > 0][SexDesc of penis][otherwise if the largeness of breasts < 5]hair[otherwise]breasts[end if] bouncing as you stubbornly stroke your [if the player is sexed male and F is asshole]prostate[otherwise if F is vagina]g-spot[otherwise]sensitive spots[end if] with [his of M] [DickDesc of M]. It IS distracting though, and you ride [him of M] harder and harder in hopes of making [him of M] stop. Eventually, [he of M] does, placing both hands on your waist and exploding into [if M is wrapped]the condom as your [variable F][otherwise]your [variable F] as it[end if] clamps down around [his of M] [cockshaft of M].";
			moderateDignify;
			now refractoryperiod is 0;
			now player-fucking is DOMINANT-NEUTRAL;
			orgasm;
			if M is unwrapped:
				if F is vagina, PussyFill the semen load of M;
				otherwise AssFill the semen load of M;
			orgasm M;
			ruin F times 2;
			increase the discounts of M by 2;
			say AfterDominationComment 2 of M;
	otherwise if submission + the difficulty of M < 30:
		say "You don't really hear [him of M], [if Ofit < -1]hissing[otherwise if Ofit < 2]groaning[otherwise]moaning[end if] as you [if the player is wrist bound]pitch forward and slide[otherwise]slowly guide[end if] [him of M] into your [variable F]. Already, it feels [if Ofit < -1]like [he of M][']s splitting you in half[otherwise if Ofit < 2]like [he of M][']s stretching you out[otherwise]like you've run out of space[end if], and when you pause to get used to it, [he of M] casually grabs your thigh and pulls you down [him of M]self. [big he of M] does it so naturally that you don't react at first, and when you do, its to [if Ofit < -1]wince[otherwise if Ofit < 2]gasp[otherwise]hiss[end if] as [he of M] completely plugs your crevice with [LongDickDesc of M]. You at least try to control your own pace, but [he of M]'s already getting started on that too, [if the largeness of breasts < 5]palm[otherwise]grop[end if]ing your [ShortDesc of breasts] as [he of M] begins to thrust.";
		let R be the semi-dominance roll for M;
		if R >= 0:
			if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
			say "Realising you're quickly losing control, you push [his of M] hand off your chest.[if the player is able to speak][line break][variable custom style]'Don't... D-don't do that.'[roman type][line break][end if][line break][speech style of M]'Alright, you little minx. Take it from here.'[roman type][line break]You pant as [he of M] releases your leg, the tingle of [his of M] strong fingers on your skin seeming to remain. [Big he of M] speeds up when you start to ride [him of M], your [if A is clothing]cage[otherwise if sexual-penis-length > 0][SexDesc of penis][otherwise if the largeness of breasts < 5]hair[otherwise]tits[end if] bouncing as you fuck each other harder, and harder, and HARDER. You feel [his of M] [cockshaft of M] stiffening slightly inside you, and as [his of M] breathing runs ragged, yours does too. [unless M is wrapped]Now might be your last chance to avoid a creampie, but you're so close, too. Do you stop?[end if]";
			now player-fucking is DOMINANT-NEUTRAL;
			if the player is reverse bimbo consenting:
				say "You stand up sharply, very nearly cumming as [his of M] [LongDickDesc of M] slides out of your [variable F].";
				now refractoryperiod is 1;
				say AfterDominationComment 7 of M;
			otherwise:
				say "You shudder with pleasure as [he of M] slams [him of M]self home, and you [if the player is not possessing a penis and the player is not possessing a vagina]dig your nails into[otherwise if A is clothing or sexual-penis-length < 4]dribble your [load] onto[otherwise if sexual-penis-length > 4]shoot your [load] across[otherwise]squirt all over[end if] [his of M] abs as [he of M] explodes into [if M is wrapped]the condom.[otherwise]your [variable F].[end if]";
				now refractoryperiod is 0;
				orgasm;
				if M is unwrapped:
					if F is asshole, AssFill the semen load of M;
					otherwise PussyFill the semen load of M;
				orgasm M;
				say AfterDominationComment 2 of M;
				increase the discounts of M by 2;
			slightDignify;
		otherwise:
			now player-fucking is DOMINANT-SHAMEFUL;
			if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
			say "You know you're quickly losing control, but [if the player is wrist bound]with your wrists bound, what can you really do? [otherwise]it feels like an obvious outcome. [end if]You're the [if interracial fetish is 0]the fucktoy, that's why the [DickDesc of M] is in YOUR [variable F]. [otherwise][WhiteSub], and [he of M]'s the black [man of M]. [end if]You naturally fall into [his of M] rhythm, panting and eventually moaning, as [he of M] fucks you harder and harder. Your [if A is clothing][player-penis] bounces in your cage[otherwise if sexual-penis-length > 0][SexDesc of penis] bounces[otherwise if the largeness of breasts < 5]hair bounces[otherwise]tits bounce[end if] as [his of M] [cockhead of M] relentlessly [if F is asshole and the player is sexed male]punches your prostate, [otherwise if F is vagina]strokes your g-spot, [otherwise]strokes your sensitive spots, [end if] and your [if face is actually occupied]legs shake.[otherwise]mouth forms a great big [']O['].[end if]";
			if F is vagina, vaginally orgasm shamefully;
			otherwise anally orgasm shamefully;
			say "[BigNameDesc of M] isn't far behind, [his of M] [LongDickDesc of M] stiffening for a split second before it explodes, flooding [if M is wrapped]the condom.[otherwise]your [variable F][end if] with [semen].";
			if M is unwrapped:
				if F is asshole, AssFill the semen load of M;
				otherwise PussyFill the semen load of M;
			orgasm M;
			say AfterDominationComment 2 of M;
			increase the discounts of M by 2;
		ruin F times 2;
	otherwise:
		let R be the semi-dominance roll for M;
		say "[big his of M] voice snaps you out of it, and you realize that so far, you haven't been very [']dominant['] at all. You screw up your determination as you [if face is not actually occupied]take [him of M] out of your mouth, [otherwise]shift your hips, [end if]and [if the player is wrist bound]slide[otherwise]guide[end if] [his of M] [DickDesc of M] into your [variable F]. Already, it feels [if Ofit < -1]like [he of M][']s splitting you in half[otherwise if Ofit < 2]like [he of M][']s stretching you out[otherwise]like you've run out of space[end if], and when you pause to get used to it, [he of M] casually grabs your thigh and pulls you down [him of M]self. [big he of M] does it so naturally you don't even question it, [if Ofit < -1]winc[otherwise if Ofit < 2]hiss[otherwise]moan[end if]ing as [he of M] completely plugs your crevice with [LongDickDesc of M]. Your hips automatically match [his of M] pace as [he of M] firmly swats your [AssDesc] and begins to thrust. You [if chastity-belt is worn or A is clothing]want desperately to touch yourself, but your [ShortDesc of A] only allows you to take pleasure from[otherwise if the player is wrist bound]want desperately to touch yourself, but with your wrists bounds you can only take pleasure from[otherwise if sexual-penis-length > 0]stroke your [SexDesc of penis], loving the sensation of[otherwise if the player is possessing a vagina]eagerly stroke your clit, loving the sensation of[otherwise]want desperately to touch yourself, but can only find pleasure from[end if] [his of M] [DickDesc of M] as it [if F is asshole and the player is sexed male]punches your prostate. [otherwise if F is vagina]strokes your g-spot. [otherwise]strokes your most sensitive spots. [end if][big he of M] fucks you harder and harder, and at some point [he of M] shifts [his of M] grip and starts trying to roll ontop of you![if R >= 0] If you want to stop, now's your chance![end if]";
		ruin F;
		if debugmode > 0, say "[bold type][if R >= 0]PASSED[otherwise]FAILED[end if][roman type][line break]";
		if R >= 0 and the player is reverse bimbo consenting:
			now player-fucking is DOMINANT-NEUTRAL;
			say "[line break][variable custom style]Wait! I'm supposed to be in control here![roman type][line break]You jerk out of [his of M] grip, accidentally driving [his of M] [cockhead of M] into your [if F is asshole and the player is sexed male]prostate[otherwise if F is vagina]g-spot[otherwise]most sensitive spot[end if] as it slides out!";
			if F is asshole, anally orgasm shamefully;
			otherwise vaginally orgasm shamefully;
			say AfterDominationComment 6 of M;
		otherwise:
			now player-fucking is DOMINANT-SHAMEFUL;
			say "[if the player is wrist bound]With your arms bound, there isn't much you can do as [he of M] rolls[otherwise]Your instinctive desire to submit to [his of M] [LongDickDesc of M] slows your reaction, and you don't react quick enough to stop [him of M] from rolling[end if] ontop. From this new angle, it's much easier for [him of M] to make use of [his of M] massive length, and [he of M] drives it into you with every thrust. Neither of you last long after that, your [if face is not actually occupied]legs shaking[otherwise]mouth forming a great big [']O['][end if] as [he of M] explodes at your deepest point, flooding [if M is wrapped]the condom with[otherwise]you with[end if] wave after wave of fresh, warm [semen].";
			if M is unwrapped:
				if F is vagina, PussyFill the semen load of M;
				otherwise AssFill the semen load of M;
			orgasm M;
			now refractoryperiod is 0;
			if F is vagina, vaginally orgasm shamefully;
			otherwise anally orgasm shamefully;
			if a2m fetish is 1 and face is not actually occupied:
				if M is wrapped, say "[line break][speech style of M]'Wasn't that much better? Now, why don't you get me cleaned up?'[roman type][line break][big he of M] pulls out, [his of M] [LongDickDesc of M] swaying [if interracial fetish is 1]majestically [end if]as [he of M] kneels over your face. Done pretending to be dominant, you obey without a second thought [if the player is wrist bound]and[otherwise]gripping [his of M] muscular hips with both hands as you[end if] *thoroughly* suck every last drop of [semen] off [his of M] softening [cockshaft of M].";
				if M is wrapped, say "[line break][speech style of M]'Wasn't that much better? Now, why don't you get me cleaned up?'[roman type][line break][big he of M] pulls out, peeling off the condom as [he of M] kneels over your face. Done pretending to be dominant, you obey without a second thought [if the player is wrist bound]and[otherwise]gripping [his of M] muscular hips with both hands as you[end if] *thoroughly* suck the [if F is asshole]ass-flavoured[otherwise]pussy-flavoured[end if] [semen] off [his of M] softening [cockshaft of M].";
				now M is penetrating face;
				BlowCount;
				now refractoryperiod is 0;
				orgasm;
				StomachSemenUp 1;
				now M is not penetrating face;
			FavourUp M by 2;
			increase the discounts of M by 3;
			say AfterDominationComment 3 of M;
		ruin F times 2;
		if face is not actually occupied, BlowCount;
	if F is asshole, AnalCount;
	otherwise FuckCount.

To say DominationEscapeFlav of (M - shopkeeper):
	if the location of the player is Dungeon41:
		say EmergencySlide of M;
	otherwise:
		say "[line break][BigNameDesc of M] slinks away as soon as [he of M] has the strength.";

To replace (M - shopkeeper) after domination:
	now the health of M is the maxhealth of M;
	if the location of the player is Dungeon41:
		let R be the room south from Dungeon41;
		now the player is in R;
	otherwise:
		now M is in Dungeon41;
	Bore M;
	now the scared of M is 60 + the difficulty of M * 2.

To compute scared reduction of (M - shopkeeper):
	if the scared of M > 0:
		decrease the scared of M by seconds;
		if the scared of M < 0, now the scared of M is 0;
		if the scared of M is 0 and the location of the player is the room south from Dungeon41, say "The metal bars noisily open.".

To say EmergencySlide of (M - shopkeeper):
	let R be the room south from Dungeon41;
	say "[line break][BigNameDesc of M] pulls a lever on the wall behind him, and a hole opens up under your feet. You spend several seconds fall through a spiraling chute in the floor before finally falling out in the [R]!".

To compute fleeing of (M - shopkeeper):
	if M is in Dungeon41 and the player is in Dungeon41:
		let R be the room south from Dungeon41;
		say EmergencySlide of M;
		now the player is in R;
	otherwise:
		compute default fleeing of M.

To say AfterDominationComment (N - a number) of (M - shopkeeper):
	if N is 1:
		say "[speech style of M]'[one of]Damn, good move, I guess. Your next item is 4 credits off, alright?'[or]At least you didn't steal anything. I'll cut the price on your next item.[or]Alright. I'll give you a discount on the next thing you buy.'[at random][roman type][line break]";
	otherwise if N is 2:
		say "[speech style of M]'[one of]Hey, that was pretty fun, right? Tell you what, I'll give you a discount on your next 2 items.'[or]I admit that was a pretty good fuck. I'll cut my prices on the next 2 items, alright?'[or]Point made, you naughty minx. I'll give you a discount for the next 2 items, ok?'[at random][roman type][line break]";
	otherwise if N is 3:
		say "[speech style of M]'[one of]Wow. You definitely earned a discount with that. Applies for the next 3 items.'[or]You're one naughty minx. Come back soon, I'm offering you a special discount for your next 3 items.'[or]If that's what you wanted we didn't need to fight like that. Come back soon, I'm offering you a discount to show I'm not holding on to any hard feelings.'[at random][roman type][line break]";
	otherwise if N is 4:[sph]
		say "[speech style of M]'[one of]Glad I could help. Don't be shy about asking for a fuck!'[or]Honestly though, it would be more fun if we just had sex.'[or]You'll be huge in no time. And don't worry, I'm always game to fuck you.'[at random][roman type][line break]";
	otherwise if N is 5:
		say "[speech style of M]'[one of]I'd rather we had sex, but that was OK.'[or]Did you really enjoy that? Sex is way better.'[or]I hope we can work our way up to sex sometime.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'Oh damn, I thought you wouldn't mind if I took over. Sorry about that.'[roman type][line break]".


To say DominanceFailure of (M - shopkeeper):
	say "[NameDesc of M] strikes you in the chest as you try to force [him of M] to the ground, and something about the look in [his of M] eye says you've already lost. You suddenly collapse into [him of M], [his of M] [DickDesc of M] hardening against your thigh as [he of M] guides you onto your hands and knees.".

To compute failed dominance punishment of (M - shopkeeper):
	if there is a held stolen thing:
		say "[speech style of M]'First things first.'[roman type][line break]";
		repeat with S running through held stolen things:
			say "The shopkeeper takes the [S]!";
			now M is carrying S;
	if Dungeon05 is placed and (the class of the player is cheerleader or the player is getting unlucky):
		drag to Dungeon05 by M;
		unless the class of the player is cheerleader, say GotUnluckyFlav;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1;
	otherwise if Dungeon03 is placed and (the player is stealthy or the player is getting very unlucky):
		drag to Dungeon03 by M;
		unless yourself is stealthy, say GotUnluckyFlav;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1;
	[otherwise if Dungeon08 is placed and the player is getting unlucky:
		drag to Dungeon08 by M;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1;]
	otherwise:
		say "[big he of M] gives your ass a firm spank before allowing you to stand up. [speech style of M]'Keep your hands to yourself, you naughty minx.'[roman type][line break]";
		PainUp 10;
		Satisfy M.

To say DragFlav of (M - shopkeeper) to (R - Dungeon03):[The stone cell]
	say "[speech style of M]'People like you need to know what it's like to spend time in a cell.'[roman type][line break]";
	repeat with N running through alive royal guards:
		now N is in R.

To say DragArrival of (M - shopkeeper) to (R - Dungeon03):[TODO: possibly update]
	let N be the number of alive royal guards;
	let G be a random royal guard in the location of the player;
	if N > 0:
		if the class of the player is vixen:
			say "[speech style of M]'Officer[if N > 1]s[end if], I finally found [him of the player]!'[roman type][line break][if N > 1]The guards look at the fox ears on your head and exchange nods as one of them steps forward[otherwise]The [G] looks at the fox ears on your head and gives the shopkeeper a slow nod[end if].[line break][speech style of G]'You have evaded justice for too long. Expect this punishment to be long and gruelling, thief.'[roman type][line break]";
			repeat with Y running through alive royal guards:
				compute Y punishing a criminal;
				anger Y;
				interest Y;
		otherwise:
			say "[speech style of M]'Officer[if N > 1]s[end if], I know you're busy, but do you want to help me fuck this naught minx who tried stealing from my shop?[roman type][line break][if N > 1]The guards exchange glances with each other and one by one they start to grin[otherwise]The guard raises an eyebrow and then slowly starts to grin[end if].";
	otherwise:
		say "[speech style of M]'Oh, no-one here. Oh well, I can still fuck you.'[roman type][line break]".

To say DragFlav of (M - shopkeeper) to (R - Dungeon05):[Storage room]
	say "[speech style of M]'Let's take this some place private.'[roman type][line break]".

To say DragArrival of (M - shopkeeper) to (R - Dungeon05):
	if the number of monsters in the location of the player > 1:[he kicks everyone out]
		say "[speech style of M]'Give us some privacy, will you!'[roman type][line break]";
		repeat with X running through monsters in the location of the player:
			unless X is M:
				say "[BigNameDesc of X] leaves.";
				while X is in R:
					regionally place X;
	otherwise if the class of the player is cheerleader:
		say "[speech style of M]'No hard feelings, by the way. I finally get to fuck a cheerleader!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'OK, you can moan as loud as you want here. Better luck next time, by the way.'[roman type][line break]";
	now the sex-length of M is a random number between 4 and 5.[the sex lasts longer because you're alone]

[To say DragFlav of (M - shopkeeper) to (R - Dungeon08):[Training room]
	say "[speech style of M]'Let's take this somewhere more fun.'[roman type][line break]".

To say DragArrival of (M - shopkeeper) to (R - Dungeon08):[The shopkeeper lubes you up first]
	now the chosen-orifice of M is a random fuckhole;
	if the player is not possessing a vagina and the chosen-orifice of M is vagina, now the chosen-orifice of M is asshole;
	let L be a random lubricant;
	now L is covering chosen-orifice of M;
	now the timer of L is a random number between 300 and 600;
	say "[BigNameDesc of M] reaches into a nearby box, retrieving a bottle of lube. [big he of M] squeezes it liberally onto your [chosen-orifice of M], and then onto [his of M] [DickDesc of M].[line break][speech style of M]'[one of]Alright, let's both enjoy ourselves. Don't attack me in my shop again, though[or]I can't believe I'm doing this for you again[stopping].'[roman type][line break]".]

Section 6 - Trading

To compute (M - shopkeeper) considering (T - chess piece):
	if M is not interested:
		say "[BigNameDesc of M] isn't even looking at you.";
	otherwise:
		say MonsterOfferAcceptFlav of M to T;
		say MonsterTakeFlav of M to T;
		compute resolution of M taking T;
		destroy T.

To say MonsterOfferAcceptFlav of (M - shopkeeper) to (T - chess piece):
	if M is unfriendly:
		say "[BigNameDesc of M] thinks for a moment.[line break][speech style of M]'I suppose this will serve well as compensation. You may go.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M][']s face lights up.[line break][speech style of M]'Gosh, did you get this where I think you did? Those tournaments are only held once in a blue moon, and only a winner is allowed to take one of those away with them. They're extremely rare down here, and I know a particular collector who would buy this for a hefty price. Of course I'll take it off of your hands.'[roman type][line break]".

To compute offer reward of (M - a shopkeeper) for (T - chess piece):
	let D be a random off-stage plentiful ring;
	if D is ring:
		now D is solid gold;
		set shortcut of D;
		now D is in the location of the player;
		say "[speech style of M]'Of course, I'm not going to expect to get it for free. I assume this should suffice?'[roman type][line break][BigNameDesc of M] pulls a [D] out of [his of M] pouch, and hands it to you.".

Section 7 - Shop Maintenance


[!<ThingIsShopEligible>+

Is this something that can ever be automatically put there by the generic shop set up function?

+!]
Definition: a thing is shop-eligible: decide no.

Definition: a thing (called T) is shop-unique:
	repeat with C running through store things:
		if the substituted form of "[ShortDesc of C]" is the substituted form of "[ShortDesc of T]", decide no;
	decide yes.

[!<ClothingIsShopEligible>+

Is this something that can appear in the shop?

+!]
Definition: a clothing (called C) is shop-eligible:
	if C is not basic loot, decide no;
	if C is accessory or C is wrist bond or C is ankle bond or C is diaper, decide no;
	decide yes.

To set up store:
	let shop-things be 0;
	let diaper-stored be 0;
	repeat with C running through store things in Dungeon41:
		if C is diaper, increase diaper-stored by 1;
		otherwise increase shop-things by 1;
	while diaper lover >= 1 and diaper-stored < 3:
		let D be a random eligible diaper;
		if D is diaper:
			clean D;
			repair D;
			now D is in Dungeon41;
			now the owner of D is shopkeeper;
			if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] adds a [D] to the display.";
		increase diaper-stored by 1;
	if pregnancy fetish is 1 and the number of maternity dress in Dungeon41 is 0:
		let D be a random off-stage maternity dress;
		if D is clothing:
			increase shop-things by 1;
			clean D;
			now D is in Dungeon41;
			now the owner of D is shopkeeper;
			if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] adds a [D] to the display.";
	let ST be 8 - shop-things;
	if ST > 0:
		let LST1 be the list of shop-eligible things;
		let LST2 be a list of things;
		sort LST1 in random order;
		truncate LST1 to ST entries;
		repeat with C running through LST1:
			let yesPlease be 1;
			repeat with T running through LST2:
				if the substituted form of "[ShortDesc of C]" is the substituted form of "[ShortDesc of T]", now yesPlease is 0;
			if yesPlease is 1, add C to LST2;
		repeat with C running through LST2:
			now C is in Dungeon41;
			now the owner of C is shopkeeper;
			if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] adds a [C] to the display.";
			increase shop-things by 1;
	if the number of store trousers in Dungeon41 is 0: [We want at least one pair of trousers]
		let T be a random off-stage shop-eligible trousers;
		unless T is nothing:
			now T is in Dungeon41;
			now the owner of T is shopkeeper;
			if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] adds a [T] to the display.";
	if designer handbag of holding is off-stage:
		now designer handbag of holding is in Dungeon41;
		now the owner of designer handbag of holding is shopkeeper;
		if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] adds a [designer handbag of holding] to the display.";
	if catbell is off-stage and doom counter > 0 and doomed < 5:
		now catbell is in Dungeon41;
		now the owner of catbell is shopkeeper;
		if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] adds a [catbell] to the display.";
	repeat with C running through worn locked clothing:
		if the number of unlock-keys in Dungeon41 is 0:
			let K be a random specific-key covering C;
			if K is a thing and (the player is in Dungeon41 or a random number between 1 and 2 is 1):
				now K is in Dungeon41;
				now the owner of K is shopkeeper;
				if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] adds the [K] to the display.";
	repeat with C running through store things:
		set up shop state of C.

To set up shop state of (C - a thing):
	do nothing.
To set up shop state of (C - an alchemy product):
	now C is bland;
	now C is sure.
To set up shop state of (C - a clothing):
	decurse C;
	if the raw-magic-modifier of C < 0, now the raw-magic-modifier of C is 0;
	now C is sure;
	now C is identified;
	set up unique shop state of C.
To set up unique shop state of (C - a clothing):
	do nothing.
To set up unique shop state of (C - a sex toy):
	if a random number between 1 and 2 is 1:
		let N be a random number between 1 and 3;
		if N is 1, now C is endurance;
		if N is 2, now C is speed;
		if N is 3:
			if diaper quest is 0, now C is refreshment;
			otherwise now C is maturity;
	if C is blandness or a random number between 1 and 2 is 1:
		set up stat-based influence of C;
		now the raw-magic-modifier of C is a random number between 1 and 2;
		increase the raw-magic-modifier of C by a random number between 0 and 1;
		increase the raw-magic-modifier of C by a random number between 0 and 1.

A time based rule (this is the shop cycling rule):[TODO: if the player is in the room, describe the shopkeeper restocking everything]
	if the remainder after dividing time-earnings by 995 < time-seconds and shopkeeper is in Dungeon41 and shopkeeper is awake and shopkeeper is threatening:
		compute shopcycling.

To compute shopcycling:
	if lagdebug is true:
		say "Recycling shop.";
		wait 200 ms before continuing;
	if the player is in Dungeon41, say "[speech style of shopkeeper]'Time for a restock.'[roman type][line break]";
	repeat with N running from 1 to 4:
		let C be a random store thing in Dungeon41;
		if C is a thing:
			let keep-in-stock be false;
			if C is players-detached-dick, now keep-in-stock is true;
			if C is specific-key:
				let X be a random thing covered by C;
				if X is worn locked clothing, now keep-in-stock is true;
			if keep-in-stock is false:
				if the player is in Dungeon41, say "[BigNameDesc of shopkeeper] removes [NameDesc of C] from the display stand.";
				only destroy C;
	set up store;
	if lagdebug is true:
		say "Finished recycling shop.";
		wait 200 ms before continuing.

To check stealing of (C - a thing):
	if the owner of C is shopkeeper and the location of the player is guarded:
		if shopkeeper is interested:
			say "[speech style of shopkeeper]'Oi! Don't use my stuff without paying! GUARDS!'[roman type][line break]Looks like you're in trouble with the law!";
			anger shopkeeper;
		progress quest of stealing-quest.


Shopkeeper ends here.
