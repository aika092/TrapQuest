Pimp by Monster begins here.

pimp is a monster. pimp is intelligent. pimp is male.

Definition: pimp is father material: decide yes.

Definition: pimp is condom obsessed: decide yes. [Does he ALWAYS have condoms on him?]

Definition: pimp is dark skinned: decide yes.

Definition: pimp is raunchy: decide yes.

Definition: pimp is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

Definition: pimp is willing to do oral: decide no.

Definition: pimp is willing to do titfucks: decide no.

Definition: pimp is human: decide yes.

Definition: pimp is a generic-unlocker: decide yes.
Definition: pimp is a bondage applier: decide yes. [Do they sometimes apply bondage before and/or after punishing you?]
Definition: pimp is eager to warn angrily:
	if it is classicly eager to warn angrily, decide yes; [Warns and punishes resistance during non-oral sex]
	decide no.

Definition: pimp is wenchy:
	if the player is the donator:
		decide yes;
	decide no.

Definition: pimp (called M) is willing to shag:
	if M is awake and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

Definition: pimp is willing to let go: decide no.

To decide which number is the freebie-reluctance of (M - pimp):
	decide on 10.

The text-shortcut of pimp is "pmp".
Figure of pimp is the file "NPCs/Hotel/Pimp/pimp1.png".
Figure of pimp vag for sale is the file "NPCs/Hotel/Pimp/pimp2.jpg".
Figure of pimp ass for sale is the file "NPCs/Hotel/Pimp/pimp3.jpg".
Figure of pimp femme is the file "NPCs/Hotel/Pimp/pimp4.jpg".
Figure of pimp portal cutscene is the file "Special/Cutscene/cutscene-pimp-portals1.jpg".

To decide which figure-name is the monster-image of (M - pimp):
	if lady fetish is 1, decide on figure of pimp femme;
	if M is in Hotel44 and (portal-bra is worn or portal-hotpants is worn or woman-player is partially-enslaved):
		if the player is possessing a vagina, decide on figure of pimp vag for sale;
		otherwise decide on figure of pimp ass for sale;
	decide on figure of pimp.

To say ShortDesc of (M - pimp):
	say "pimp".

To say MediumDesc of (M - pimp):
	say "pimp".

To say MonsterDesc of (M - pimp):
	say "A tall, powerful looking dark skinned [man of M], wearing a white shirt with a dark red waistcoat and matching hat.".

To say MonsterComment of (M - pimp):
	say "[line break][variable custom style][big he of M] somehow manages to look eccentric and yet down-to-earth at the same time.[roman type][line break]".

To decide which number is the girth of (M - pimp):
	decide on 4.

To set up (M - pimp):
	if the monstersetup of M is 0, now the raw difficulty of M is the starting difficulty of M;
	now the monstersetup of M is 1;
	now M is in Hotel44;
	now the health of M is the maxhealth of M;
	let fanHeld be false;
	repeat with C running through the tradableItems of M:
		if C is electric fan, now fanHeld is true;
	if fanHeld is false:
		let E be a random off-stage electric fan;
		if E is a thing, add E to the tradableItems of M;
	if diaper quest is 0:
		add onahole-bra to the tradableItems of M, if absent;
		repeat with P running through pimp-pedestals:
			now P is in Hotel44;
	otherwise:
		compute diaper cover assignment of M.

This is the spawn initial pimp rule:
	if pimp is off-stage:
		if debugmode > 0, say "Summoning pimp in hotel.";
		summon pimp in the hotel.
The spawn initial pimp rule is listed in the setting up hotel monsters rules.

To decide which number is the starting difficulty of (M - pimp):
	decide on 12.

To compute labour to (M - pimp):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and delivers the human mixed race baby, which immediately starts crying loudly. [big he of M] takes it into [his of M] arms with an unconcealed look of annoyance.[line break][speech style of M]'Geez, thanks a lot! Now I have to manage a brothel AND raise [one of]a[or]yet another[stopping] fucking kid.'[roman type][line break]Without giving you a chance to react, never mind reply, [he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

To compute (M - a monster) stomping (N - pimp):
	if M is in the location of the player, say "[BigNameDesc of M] kills the [N].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 1 - Perception

To decide which number is the bimbo tolerance of (M - pimp):
	decide on 21.

To decide which number is the bab tolerance of (M - pimp):
	decide on 21.

To compute perception of (M - pimp):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if portal-bra is worn or portal-hotpants is worn:
		say "[speech style of M]'Sales are going well, slut, which I guess is good news for both of us.'[roman type][line break][big he of M] counts some jewellery in [his of M] pocket.";
		if M is buddy:
			say "[speech style of M]'Your debt is paid. I guess it's time to release you.'[roman type][line break]";
			release pimp portals;
			if the current-errand of M is portal-clothes-errand, now the current-errand of M is no-errand;
		otherwise if the current-errand of M is completed:
			compute errand completion of M;
		otherwise:
			say "[speech style of M]'Your debt isn't paid off yet. Come see me after a few more [brothas of male-m] have had their fun with you.'[roman type][line break][BigNameDesc of M] purposefully stops paying attention to you.";
		distract M;
	otherwise if portal-diaper is worn:
		say "[speech style of M]'Sales are going well, slut, which I guess is good news for both of us.'[roman type][line break]";
		if the total-soak of portal-diaper >= the soak-limit of portal-diaper:
			if the water-soak of portal-diaper > 0:
				fully clean portal-diaper;
				say "[speech style of M]'But what's this?! I can sense that this thing is filled with more water than it should be. That's cheating! For that, I'm going to make you start again.'[roman type][line break][BigNameDesc of M] snaps [his of M] fingers, and your [portal-diaper] is dry again!";
			otherwise:
				say "[speech style of M]'Wow, that diaper is soaked to the brim. I guess it's time to release you.'[roman type][line break]";
				release pimp portals;
				if the current-errand of M is portal-clothes-errand, now the current-errand of M is no-errand;
				calm M;
		otherwise if the current-errand of M is completed:
			compute errand completion of M;
		otherwise:
			say "[speech style of M]'But I can sense that the diaper can still hold more. Come back to me when it's fully saturated.'[roman type][line break][BigNameDesc of M] purposefully stops paying attention to you.";
		distract M;
	otherwise if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise if M is unfriendly:
		say "[speech style of M]'You owe me money, bitch. You'd best give me what you owe me right now or I'll find another way of taking it.'[roman type][line break]";
	otherwise if the times-met of M is 0:
		say "[speech style of M]'Hi there. I own and run the beds around here. If you want to be one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if] then just hang around near a bed for a while, and I'm sure a paying customer won't take too long to arrive. Just [bold type]make sure to pay me a cut[speech style of M] every now and then or you'll end up on my bad side.'[roman type][line break]";
	otherwise if patronbed uses is 0:
		say "[speech style of M]'Hi there. Still not tempted to become one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if]?'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Hi there [if diaper quest is 1]baby[boy of M][otherwise]whore[end if]. Here to give me my cut?'[roman type][line break]".

To send (M - pimp) home:
	if M is alive:
		let R be Hotel44;
		if portal-diaper is worn, now R is Hotel31;
		if M is not in R:
			if M is in the location of the player:
				let D be the best route from the location of M to R through modern rooms;
				if D is a direction, say "[BigNameDesc of M] leaves to the [D].";
			now M is in R;
		if M is interested and M is not in the location of the player, deinterest M.

To compute monstermotion of (M - pimp): [This is default wandering when nothing interesting is happening]
	if M is unfriendly and portal-hotpants is not worn and portal-bra is not worn:
		compute room leaving of M;
	otherwise:
		calm M;
		send M home.

To compute (M - pimp) seeking (D - a direction):
	if M is unfriendly:
		blockable move M to D;
		compute monstermotion reactions of M;
	otherwise:
		send M home.

To satisfy (M - pimp) for (N - a number) seconds:
	if M is interested:
		bore M for N seconds;
		if M is unfriendly, calm M;
		otherwise FavourUp M;
		if M is in the location of the player and M is awake:
			say SatisfiedFlav of M;
			progress quest of nice-quest;
		if the health of M <= the maxhealth of M / 2, progress quest of chosen-one-quest;
	otherwise:
		bore M for N seconds;
	compute unlock satisfaction of M;
	send M home. [This makes sure the pimp always makes it back to his room.]

To say SatisfiedFlav of (M - pimp):
	say "[if portal-bra is not worn and portal-hotpants is not worn][BigNameDesc of M] grunts with satisfaction.[line break][speech style of M]'That'll do as payment for now.'[roman type][line break][end if][big he of M] walks away, leaving you to contemplate the consequences of your choices.".

Part 2 - Misc Flavour

Definition: pimp is uniquely distracted:
	if pimp is in the location of the player:
		if composed-explorer is in the location of the player and the explorer-bimbo of composed-explorer < 2:
			let D be the best route from the location of the player to Hotel01 through modern rooms;
			say "[BigNameDesc of pimp] spots [NameDesc of composed-explorer].[line break][speech style of pimp]'HEY BITCH! YOU OWE ME MONEY!'[roman type][line break][BigNameDesc of composed-explorer] whirls around, with an alarmed look on [his of composed-explorer] face.[line break][speech style of composed-explorer]'Shut up! I am NOT your whore!'[roman type][line break][big he of composed-explorer] shouts. And then to [himself of composed-explorer], [he of composed-explorer] says:[line break][speech style of composed-explorer]'Fuck this, I'm getting out of here!'[roman type][line break][BigNameDesc of composed-explorer] breaks into a run!";
			if D is a direction, try composed-explorer going D;
			say "[speech style of pimp]'Come back here, you little minx! I know you accepted payment from that John! That means you owe me!'[roman type][line break][BigNameDesc of pimp] [if pimp is interested]has lost all interest in you and [end if]moves to chase after [NameDesc of composed-explorer][if the player is in Hotel01], but [he of composed-explorer] makes it down the stairs and out the door before [he of pimp] can stop [him of composed-explorer][end if].";
			deinterest pimp;
			if D is a direction, try pimp going D;
			unless player is in Hotel01, now pimp is in Hotel01;
			compute banishment of composed-explorer;
			decide yes;
	decide no.


To compute kneeling reaction of (M - pimp):
	say "[BigNameDesc of M] laughs.[line break][speech style of M]'[if the health of M >= the maxhealth of M]I guess this one time, you can pay me with your services[otherwise]Surrender means nothing to me. You've crossed me, and now I'm going to find a new way to get my dues[end if].'[roman type][line break][if the player is not shameless]You shiver with shame.[end if]";
	strongHumiliate.

To say DiaperReaction of (M - pimp):
	if there is a currently visible diaper or the player is shameless:
		say "[BigNameDesc of M] laughs.[line break][speech style of M]'That's right, little one. Prove to me what a good little baby-slave you are.'[roman type][line break]";
		if the player is modest, say "[variable custom style][if the player is able to speak]'I'm not a baby! I just really needed to go...'[otherwise][big he of M] thinks I'm enjoying being seen like this![end if][roman type][line break]";
		otherwise say "You [if the player is not disgraced]look down at the ground[otherwise]nod[end if] in shame.";
	otherwise:
		say "It seems that [NameDesc of M] is unaware of what you've just done.".

To say IdentifiablePosterReactionFlav of (M - pimp):
	say "[BigNameDesc of M] looks at you, then at the banner, then back to you. Upon realising that it is you, [he of M] puts [his of M] hands on [his of M] hips and laughs loudly.[line break][speech style of M]'You look damn stupid!'[roman type][line break]".

To say UnidentifiablePosterReactionFlav of (M - pimp) with (P - a poster):
	say "[BigNameDesc of M] looks at the banner with a big grin on [his of M] face. [big he of M] doesn't seem to realise it is you, but is clearly enjoying looking at it.".

To say PregGrowth of (M - pimp):
	say "your pimp's [child]".

Part 3 - Combat

Section 1 - Protect and Attack

The latex punishment rule of pimp is usually the no latex punishment rule.

This is the pimp uses portals rule:
	if patronbed uses > 0 and the health of pimp <= the maxhealth of pimp:
		if portal-hotpants is worn: [player has tried to fight the pimp again when the player is already portaled]
			if the player is in Hotel44 and asshole is not actually occupied:
				say "[speech style of pimp]'BIG mistake, [cunt]!'[roman type][line break][BigNameDesc of pimp] turns to the statue which currently hosts your genitalia, and takes the largest butt plug you've ever seen. Before you can stop [him of pimp], [he of pimp] shoves it into your [asshole]!";
				summon brown-plug uncursed;
				ruin asshole;
				if the openness of asshole < the girth of brown-plug - 2:
					say "You crumple in pain as your [asshole] is forced wider than it has ever been forced before.";
					PainUp 10;
				satisfy pimp;
			otherwise if face is not actually occupied or there is worn removable clothing penetrating face:
				if face is not actually occupied, say "[speech style of pimp]'You've only got one hole left for me to use, haven't you, slut?'[roman type][line break]";
				follow the monster mouth insertion rules;
			otherwise:
				compute SelectionFailure of pimp;
			rule succeeds;
		otherwise if diaper quest is 0 and there is a worn tattoo and the number of worn left-asscheek tattoo is 0 and the number of worn both-asscheeks tattoo is 0 and portal-hotpants is actually summonable:
			say "[speech style of pimp]'It seems you've forgotten who owns this ass. Let me help you remember!'[roman type][line break][BigNameDesc of pimp] spanks you hard on the [AssDesc]. When [his of pimp] hand pulls away, you have a new tattoo underneath it.";
			summon spade owned tattoo;
			try examining spade owned tattoo;
			rule succeeds; [this ends his turn but doesn't satisfy him yet]
		otherwise if diaper quest is 0 and there is a worn tattoo and the number of worn left-breast tattoo is 0 and the number of worn both-breasts tattoo is 0 and portal-hotpants is actually summonable:
			say "[speech style of pimp]'Never forget who owns you, slut!'[roman type][line break][BigNameDesc of pimp] spanks you hard on the [BreastDesc]. When [his of pimp] hand pulls away, you have a new tattoo underneath it.";
			summon spade owned breast tattoo;
			try examining spade owned breast tattoo;
			rule succeeds; [this ends his turn but doesn't satisfy him yet]
		otherwise if diaper quest is 1 and diaper swapping >= 2 and portal-diaper is unclash summonable:
			say "[speech style of pimp]'I have ways of dealing with disobedient whores. I own your body, and sometimes this is the only way to make sure someone like you understands that.'[roman type][line break][BigNameDesc of pimp] produces a giant white diaper with a faintly glowing blue hue at the crotch.";
			unclash class summon portal-diaper;
			say "[if the player is in Hotel31]A matching portal appears at the entrance to the drainage of the urinal![line break][end if][speech style of pimp]'Now I can sell your diaper for use as a urinal at any time, and take ALL the profits for myself[if the player is not in Hotel31]. You'll see what I mean soon enough[end if].'[roman type][line break]";
			satisfy pimp;
			rule succeeds;
		otherwise if diaper quest is 0:
			if portal-hotpants is actually summonable, summon portal-hotpants;
			if the largeness of breasts > 3 and portal-bra is actually summonable, summon portal-bra;
			if portal-hotpants is worn or portal-bra is worn:
				say "[speech style of pimp]'I have ways of dealing with disobedient whores. I own your body, and sometimes this is the only way to make sure someone like you understands that.'[roman type][line break][BigNameDesc of pimp] produces [if portal-hotpants is worn and portal-bra is worn]two bizarre items[otherwise]a bizarre item[end if] of clothing made out of concrete and gold. ";
				if portal-bra is worn, say "[BigNameDesc of portal-bra] is pressed against your chest. Your breasts disappear through the portal on the inside[if the player is in Hotel44], and appear on the right-hand mannequin beside you[end if]. ";
				if portal-hotpants is worn, say "[BigNameDesc of portal-hotpants] is pressed against your crotch. [if the player is in Hotel44]Your [player-crotch] appear on the left-hand mannequin beside you. [end if]";
				say "[line break][speech style of pimp]'Now I can sell you for sex at any time, and take ALL the profits for myself[if the player is not in Hotel44]. You'll see what I mean soon enough[end if].'[roman type][line break]";
				satisfy pimp;
				rule succeeds.
The unique punishment rule of an pimp is usually the pimp uses portals rule.

To compute damaging attack of (M - pimp):
	if (portal-hotpants is worn or portal-bra is worn) and M is in Hotel44:
		if portal-hotpants is worn and (portal-bra is not worn or a random number between 1 and 2 is 1), say "[BigNameDesc of M] turns to the statue which currently hosts your genitalia, and strikes hard at your [if the player is possessing a penis][player-penis][otherwise]crotch[end if]! The immediate and overwhelming pain sends you to your knees.";
		otherwise say "[BigNameDesc of M] turns to the statue which currently hosts your breasts, and grips your nipples tightly before twisting them both as hard as [he of M] can! The immediate and overwhelming pain sends you to your knees.";
		BodyRuin 1;
		PainUp 20;
		try kneeling;
	otherwise:
		compute striking attack of M.

This is the pimp convinced rule:
	if presented-orifice is not nothing, say PresentRejectionFlav of current-monster.
The monster convinced rule of pimp is usually the pimp convinced rule.

To say PresentRejectionFlav of (M - pimp):
	say "[BigNameDesc of M] cuts you off before you've finished talking.[line break][speech style of M]'I own you, I'll fuck you wherever I goddamn [please].'[roman type][line break]".

To compute SelectionFrustrated of (M - pimp):
	say "[BigNameDesc of M] laughs, seemingly at [himself of M].[line break][speech style of M]'For some reason I can't seem to get it up. Fine, I guess you get off lucky. This time. You'd better remember this very rare moment of kindness I'm showing you, whore.'[roman type][line break]";
	satisfy M.

To say StrikingSuccessFlav of (M - pimp) on (B - a body part):
	say "[BigNameDesc of M] strikes you [TargetName of B]! Wham!".

To say StrikingFailureFlav of (M - pimp) on (B - a body part):
	say "[BigNameDesc of M] tries to whack you [TargetName of B] but you manage to get out of the way just in time!".

Report talking pimp:
	make the noun expectant.

Report waiting when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Report drinking when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Report TQeating when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Report taking off when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Report dropping when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Report cleaning when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Report taking when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Report urinating when pimp is in the location of the player:
	unless pimp is penetrating a body part or the health of pimp < the maxhealth of pimp, make pimp expectant.

Section 2 - DQ

Definition: pimp is willing to spank: decide yes.

Definition: pimp is willing to deliver enemas: decide yes.

Definition: pimp is willing to confiscate: decide yes.

To say DQSpankResistReactionFlav of (M - pimp):
	say "[BigNameDesc of M] snarls.[line break][speech style of M]'[one of]Oh knock that off. You knew you had this comin['], insubordinate bitch!'[or]You're getting docked big time for this, I hope you know that!'[or]Oh now cut it out or you'll earn 10 more whaps for that!'[or]Stupid little tramps like you thinkin['] tantrums will get you anywhere.'[in random order][roman type][line break]".

Section 3 - Damage

To compute damage reaction of (M - pimp):
	if M is uninterested or M is friendly: [should never happen]
		say "[BigNameDesc of M] is momentarily dumbstruck with surprise.[line break][speech style of M]'You think you can take me? Bring it on!'[roman type][line break]";
	otherwise:
		if the health of M > the maxhealth of M / 2:
			say "[BigNameDesc of M] [one of]sneers menacingly[or]smiles sadistically[or]grins[at random].[line break][speech style of M]'[one of]Not bad, not bad[or]You're going to have to do better than that[or]Is that all you've got[or]Oh I'm going to make you regret this[or]Don't say I didn't warn you[in random order]!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] recoils in pain. [one of][big he of M][']s not teasing you any more. [or][stopping]".

To say PityOfferFlav of (M - pimp):
	say "You fold your arms, doing your best to look serious.";
	if the player is able to speak, say "[variable custom style]'Look, I'm not your whore, okay? So I don't have to pay you anything.'[roman type][line break]".

To say PityOfferResponse of (M - pimp):
	say "[speech style of M]'Y-you don't just get to decide when your contract is up! I'll be back!'[roman type][line break]".

To say TaxReturnDismay of (M - pimp):
	say "[speech style of M]'Hmph. Fine, you can hold onto this for me. But don't worry, I'll have you turning tricks for me like an obedient little slut before the week is out.'[roman type][line break]".

To compute unique banishment of (M - pimp):
	release pimp portals;
	check mindflayerquest.

To release pimp portals:
	if portal-hotpants is worn or portal-hotpants is in the location of the player, say "[BigNameDesc of portal-hotpants] disappears!";
	destroy portal-hotpants;
	if portal-bra is worn or portal-bra is in the location of the player, say "[BigNameDesc of portal-bra] disappears!";
	destroy portal-bra;
	if portal-diaper is worn or portal-diaper is in the location of the player, say "[BigNameDesc of portal-diaper] disappears!";
	destroy portal-diaper.

To standard loot (M - pimp):
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is pink diamond;
		set shortcut of X;
		say "[BigNameDesc of M] [if the loot dropped of M > 0]also [end if]throws a [printed name of X] at your feet.";
		increase the loot dropped of M by 1;
		compute autotaking X.

Section 4 - Dominant Sex

To say DominanceFailure of (M - pimp):
	if the player is wrist bound, say "";
	say "[if the player is wrist bound]You try to tackle [NameDesc of M] to the ground, but [he of M] catces you and immediately slaps[otherwise]You grab [NameDesc of M] by the front of [his of M] shirt and try to throw [him of M] to the ground. [big he of M] isn't all that interested in being thrown around, so instead of falling over, [he of M] responds by slapping[end if] you across the face. Your instincts cause you to immediately release [him of M] and drop to your knees before [he of M] has to hit you again.".

To compute failed dominance punishment of (M - pimp):
	if the player is getting unlucky:
		say "Unfortunately for you, the second strike comes either way, and you yelp in pain as the back of [his of M] hand connects with the other side of your face.[line break][speech style of M]'[one of]If there's anything I hate, its uppity [bitch]es like you.'[or]You've got some NERVE, [bitch]!'[in random order][roman type][line break]";
		PainUp 20;
	otherwise:
		say "[line break][speech style of M]'[one of]The ONLY time I kneel for whores is when I'm fucking 'em from behind!'[or]I SHOULD slap you again for even trying that shit, but I have a better idea.'[in random order][roman type][line break]";
		FavourDown M by 1;
	now the health of M is the maxhealth of M;[So the player can't one-shot him right after]
	now another-turn is 1;
	now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.".

To ride dominate (M - pimp):
	if the player is wrist bound, say "You tackle [NameDesc of M] to the ground. [PowerBottomComment of M] [big his of M] lets out an exasperated sigh as you sit on [his of M] [LongDickDesc of M].[line break][speech style of M]'Bitch, are you stupid? If a Johns walks in and sees your arms like that, what the fuck do you think-? This won't go well for you, so why don't you let me go and I'll make it worth your while.'[roman type][line break]Do you let him go?";
	otherwise say "You grab [NameDesc of M] by the front of [his of M] shirt and throw [him of M] to the ground. [PowerBottomComment of M] [big his of M] lets out an exasperated sigh as you wrap your hands around [his of M] [LongDickDesc of M].[line break][speech style of M]'Listen up. If any Johns walk in on this, they'll think I'm- WE're merchandise. You won't get away with disrespecting me like this anyway, so why don't you let me go and I'll make it worth your while.'[roman type][line break]Do you let him go?";
	if the player is reverse bimbo consenting:
		now player-fucking is DOMINANT-NEUTRAL;
		let J be a random off-stage plentiful accessory;
		if J is accessory:
			now J is ruby;
			set shortcut of J;
			say "You climb off [FuckerDesc of M] and allow [him of M] to stand up. [big he of M] reaches into [his of M] front pocket and tosses a [printed name of J] at your feet.";
			say AfterDominationComment 1 of M;
			FavourUp M by 1;
		otherwise:
			say "You climb off [FuckerDesc of M] and allow [him of M] to stand up. [big he of M] reaches into [his of M] front pocket and hands you... a slip of paper with an I.O.U. on it.";
			say AfterDominationComment 2 of M;
			FavourUp M by 2;
		slightDignify;
	otherwise:
		now refractoryperiod is 1;[to prevent the player cumming instantly]
		let F be player-fucker;
		let O be the openness of F - the girth of M;
		say "Things probably would get complicated if any patrons showed up, but if it's a problem for [him of M], then that's perfect. You [if oral sex addiction of the player > 3 and face is not actually occupied]use your mouth to give [his of M] shaft a quick polishing, [otherwise if the player is not wrist bound]give [his of M] shaft a couple of strokes with both hands, [otherwise]grind on [his of M] shaft, [end if]just enough to get it hard, and [if O < -2]carefully push it[otherwise if O < 0]ease[otherwise if O < 2]push[otherwise]eagerly slide[end if] it into your [variable F].";
		now M is penetrating F;
		Ruin F times 1;
		now refractoryperiod is 0;
		let P be a random generic-appropriate patron;
		say "[big he of M] grumbles as you begin to move your hips, [if O < 0]but thankfully [he of M] accepts [his of M] place and allows you to focus on getting used to [his of M] huge[otherwise]but [he of M] accepts [his of M] place and allows you to really get to know [his of M][end if] [DickDesc of M].[line break][speech style of P]'Whoa, so this is what the brochure meant by [']interactive exhibit!['] SCORE!'[roman type][line break]";
		compute ride dominate ending of M with P.

To compute ride dominate ending of (M - pimp) with (P - a patron):
	let F be player-fucker;
	let O be the openness of F - the girth of M;
	let R be -1;
	if face is not actually occupied, now R is the semi-dominance roll for M;
	if R >= 0:
		if debugmode > 0, say "[bold type][if face is actually occupied]GAGGED: AUTOMATICALLY [end if]PASSED[roman type][line break]";
		say "You glance over your shoulder, suppressing the urge to stop moving or look down at the hardening [DickDesc of P] between the newly arrived [MediumDesc of P]'s legs. [BigFuckerDesc of M], on the other hand openly stares at it.[line break][speech style of M]'T-that's a nice piece you've got, [brotha of P]! Why don't you-'[roman type][line break][speech style of P]'Say no more, I know exactly what you want!'[roman type][line break][BigFuckerDesc of P] walks over and without waiting for any further invitation, stuffs [his of P] [DickDesc of P] into [FuckerDesc of M]'s mouth. [BigFuckerDesc of P][']s [DickDesc of M] throbs in a way that draws your eye, with every inch of it that [FuckerDesc of P] forces down [his of M] throat, and a satisfied smirk creeps onto your face as you realise how easy it would be to make [him of M] cum. [if M is wrapped]Do you want to make the effort?[otherwise]Do you want to make the effort? It would probably end in a creampie.[end if]";
		if the player is bimbo consenting:
			say "You begin to fuck yourself in earnest, moaning [if O < -2]through the pain as you feel yourself forcibly stretching out. Its tough to go fast, but [FuckerDesc of P] is following[otherwise]throatily as [his of M] [cockhead of M] strokes your most sensitive spots. [BigFuckerDesc of P] follows[end if] your lead, speeding up as the sound of [DickDesc of P] slamming in and out of [FuckerDesc of M]'s throat is joined by grunts of pleasure. With just one of you, [he of M] might have held on, but between the two of you [he of M] has no chance, and [he of M] emits one final, desperate groan as [he of M] [if M is wrapped]fills the condom with a blast[otherwise]fills your hungry [variable F] with a wave[end if] of hot [semen]. [BigFuckerDesc of P] finishes second, giving [FuckerDesc of M] a mouthful of [his of P] load as you bring up the rear, shuddering as you [if the player is possessing a penis]coat [FuckerDesc of M]'s belly with pearly white[otherwise]cover [FuckerDesc of M]'s belly with your[end if] juices. [BigFuckerDesc of M] sits up as [FuckerDesc of P] pulls out and walks away.";
			if M is unwrapped:
				if F is vagina, PussyFill the semen load of M;
				otherwise AssFill the semen load of M;
			FavourUp P by 2;
			orgasm M;
			severeDignify;
			say AfterDominationComment 3 of M;
		otherwise:
			say "You climb off [FuckerDesc of M], watching [his of M] [DickDesc of M] twitch helplessly as [FuckerDesc of P] fucks [his of M] face. [BigFuckerDesc of P] is going far too fast to keep going for long, and soon [he of P] is filling [FuckerDesc of M]'s mouth with fresh [semen]. [BigFuckerDesc of M] sits up as [FuckerDesc of P] pulls out and walks away.";
			FavourUp P by 1;
			FavourDown M by 2;
			moderateDignify;
			say AfterDominationComment 4 of M;
	otherwise:
		now player-fucking is DOMINANT-SHAMEFUL;
		say "You glance over your shoulder and immediately fail to suppress the urge to stop moving and look down at the hardening [DickDesc of P] between the newly arrived [MediumDesc of P]'s legs. [big he of P] seems to take that as an invitation, and without even waiting for a greeting [he of P] walks over and stuffs [his of M] [DickDesc of P] into your mouth. [if the player is wrist bound]With your wrists bound, all it takes to shut down your struggling is [his of M] hand[otherwise]You try to push [him of P] away, but [he of P] already has a firm grip[end if] on the back of your head. To make things worse, [FuckerDesc of M] takes it upon [himself of M] to pick up where you left off, grabbing your waist as [he of M] begins to fuck you. [if O < -2][big he of M]'s still too big for you[otherwise if O < 0][big he of M]'s on the verge of being too big for you[otherwise][big he of M] feels way bigger now that [he of M]'s in control[end if], and between [him of M] and the [DickDesc of P] getting forced down your throat, you're left with the distinct feeling that you're not in the driver's seat anymore. The only silver lining is that neither of them have the stamina to keep their feet on the gas forever. [BigFuckerDesc of M]'s [DickDesc of M] soon begins to throb, and [he of M] growls as [he of M] [if M is wrapped]fills the condom with a blast [otherwise]floods your [variable F] with a wave[end if] of hot [semen]. [BigFuckerDesc of P] is close behind, forcing your head down as [his of M] thick, salty load shoots right down your throat. [BigFuckerDesc of M] sits up as [FuckerDesc of P] pulls out and walks away.";
		now P is penetrating face;
		StomachSemenUp the semen load of P;
		instantThroat P;
		orgasm P;
		dislodge P;
		if M is unwrapped:
			if F is vagina, PussyFill the semen load of M;
			otherwise AssFill the semen load of M;
		orgasm M;
		FavourUp M by 2;
		say AfterDominationComment 5 of M;
	destroy P.

To penetration dominate (M - pimp):
	let L be sexual-penis-length;
	let C be a random bottom level protection clothing;
	if L >= 8:
		say "[if the player is wrist bound]You tackle [NameDesc of M][otherwise]You grab [NameDesc of M] by the front of [his of M] shirt and try to throw [him of M][end if] to the ground.[line break][speech style of M]'Ugh-! Stupid ho, you better be ready to pay for treating me like...'[roman type][line break][big his of M] eyes go wide open as you [if C is clothing and C is not strapon-panties]pull your [SexDesc of penis] out of your [ShortDesc of C].[otherwise if the player is wrist bound]use your teeth to rip open [his of M] pants.[otherwise]rip off [his of M] pants.[end if][line break][speech style of M]'Ya gotta be fucking kidding m-... You gotta pay me up front if you want me to deal with that, [brotha of the player]! T-there's no way I'm dealing with this bullshit for free.'[roman type][line break][big he of M] averts eye contact as [he of M] holds out [his of M] hand.";
	otherwise if L >= 4:
		say "[if the player is wrist bound]You tackle [NameDesc of M][otherwise]You grab [NameDesc of M] by the front of [his of M] shirt and try to throw [him of M][end if] to the ground.[line break][speech style of M]'Ugh-! Stupid ho, you better be ready to pay for treating me like merchandise!'[roman type][line break][big he of M] scowls as you [if C is clothing and C is not strapon-panties]pull your [SexDesc of penis] out of your [ShortDesc of C].[otherwise if the player is wrist bound]unzip [his of M] pants with your teeth.[otherwise]unzip [his of M] pants.[end if][speech style of M]'Hoh, you wanna fuck me? Well alright [brotha of the player], why don't you pay then? Up front.'[roman type][line break][big he of M] holds [his of M] hand out expectantly.";
	otherwise:
		say "[if the player is wrist bound]You tackle [NameDesc of M][otherwise]You grab [NameDesc of M] by the front of [his of M] shirt and try to throw [him of M][end if] to the ground.[line break][speech style of M]'Ugh-! Stupid ho, you better be ready to pay for treating me like merchandise!'[roman type][line break][big he of M] scowls as you [if C is clothing and C is not strapon-panties]pull your [SexDesc of penis] out of your [ShortDesc of C].[otherwise if the player is wrist bound]unzip [his of M] pants with your teeth.[otherwise]unzip [his of M] pants.[end if][line break][speech style of M]'...Pay up front, and don't you dare think about fuckin['] me. You can put it in and then that's it.'[roman type][line break][big he of M] holds [his of M] hand out expectantly.";
	let LA be a list of things;
	repeat with A running through worn plentiful accessories:
		add A to LA;
	if the number of entries in LA > 0:
		truncate LA to 9 entries;
		reset multiple choice questions;
		say "What do you pay with?";
		repeat with Y running through LA:
			set next numerical response to "Pay with the [ShortDesc of Y]. [run paragraph on]";
		set numerical response 0 to "don't pay";
		compute multiple choice question;
		if player-numerical-response > 0:
			say "[line break]";
			compute paid penetration dominate of M with (entry player-numerical-response in LA);
		otherwise:
			compute non penetration dominate of M;
	otherwise:
		compute non penetration dominate of M.

To compute paid penetration dominate of (M - pimp) with (A - an accessory):
	let L be sexual-penis-length;
	now M is carrying A;
	if L >= 8:
		say "Taking the [ShortDesc of A], [FuckerDesc of M] squirts some lube in [his of M] hand and immediately begins to finger [his of M] [HoleDesc of M], eyes constantly darting towards your [if penis is penis-erect]rapidly hardening [sexual-player-penis]. [otherwise][SexDesc of penis]. [end if]You're feeling merciful, so you leave [him of M] be for a few seconds before brushing [his of M] hand away and lining up your tip with [his of M] slippery hole. [big he of M] hisses a little as your [SexShaft] slides in, but thanks to [his of M] little prep session, [he of M]'s able take your entire length in a single push. It turns out that [he of M]'s way more experienced than [he of M] originally let on, and you enjoy yourself far too briefly before losing control and filling [him of M] with your [load].";
		strongDignify;
		orgasm;
		say AfterDominationComment 6 of M;
	otherwise if L >= 4:
		say "Taking the [ShortDesc of A], [FuckerDesc of M] squirts some lube in [his of M] hand and immediately begins to finger [his of M] [HoleDesc of M]. You eagerly try to line your tip with [his of M] hole, but [he of M] smacks your hand away without glancing your way, forcing you to watch [him of M] finger [himself of M] in an incredibly thorough manner before finally reaching for your [SexShaft] and guiding it into [his of M] slippery hole. It turns out that [he of M]'s way more experienced than [he of M] originally let on, and before you can even think to conserve your stamina, you lose control and fill [him of M] with your [load].";
		moderateDignify;
		orgasm;
		say AfterDominationComment 6 of M;
	otherwise:
		say "[BigFuckerDesc of M] takes the [ShortDesc of A], spreading [his of M] legs slightly as you kneel and push your teeny [sexual-player-penis] into [his of M] asshole. [big he of M] allows you to stay like that for a good 5 seconds before rather forcefully pushing you away and returning to [his of M] feet. Your [sexual-player-penis] is harder than ever, but at least you got something!";
		if the player is possessing a penis, now penis is penis-erect;[penis stays erect]
		passively stimulate penis;
		slightDignify;
		say AfterDominationComment 7 of M;
		now player-fucking is DOMINANT-NEUTRAL;
	AnalGet.

To compute non penetration dominate of (M - pimp):
	let L be sexual-penis-length;
	if L >= 4:
		say "You aren't about to pay, so you grab [his of M] outstretched hand and place it on your [if penis is penis-erect]rock hard[otherwise]rapidly hardening[end if] [SexShaft]. [BigFuckerDesc of M] [if L >= 8]seems to be expecting that, and immediately[otherwise]doesn't seem to be expecting that, but after a moment of hesitation [he of M][end if] begins to jerk you off. [big his of M] technique isn't bad, but you'd much rather be fucking [his of M] ass, so you only feel a little bit of satisfaction when [if L >= 8][he of M] opens wide[otherwise]closes [his of M] eyes[end if] and wrings out your [load] all over [his of M] face.";
		moderateDignify;
		orgasm;
		say AfterDominationComment 7 of M;
	otherwise:
		say "You aren't going to pay, so [FuckerDesc of M] sharply closes [his of M] hand and returns to [his of M] feet.";
		say AfterDominationComment 7 of M;
	now player-fucking is DOMINANT-NEUTRAL.

To watersports dominate (M - a pimp):
	let C be a random bottom level protection clothing;
	say "You grab the pimp by the front of [his of M] shirt and throw [him of M] to the ground. [line break][speech style of M]'Ugh-! Stupid ho, you better be ready to-..'[roman type][line break][big he of M] trails off as you [if C is clothing]pull aside your [printed name of C][otherwise if the player is possessing a penis]wrap your hand around your [ShortDesc of penis][otherwise]reach down and spread your nether lips[end if] and [he of M] realises what you're about to do.[line break][speech style of M]'...pay. You better be ready to pay, up front. That's the only way I let you use me as a target.'[roman type][line break][big he of M] holds [his of M] hand out expectantly.";
	let LA be a list of things;
	repeat with A running through worn plentiful accessories:
		add A to LA;
	if the number of entries in LA > 0:
		truncate LA to 9 entries;
		reset multiple choice questions;
		say "What do you pay with?";
		repeat with Y running through LA:
			set next numerical response to "Pay with the [ShortDesc of Y]. [run paragraph on]";
		set numerical response 0 to "don't pay";
		compute multiple choice question;
		if player-numerical-response > 0:
			say "[line break]";
			compute paid watersports dominate of M with (entry player-numerical-response in LA);
		otherwise:
			say "You don't pay, so [FuckerDesc of M] sharply closes [his of M] hand and returns to [his of M] feet.";
			say AfterDominationComment 7 of M;
	otherwise:
		say "You can't pay, so [FuckerDesc of M] sharply closes [his of M] hand and returns to [his of M] feet.";
		say AfterDominationComment 7 of M.

To compute paid watersports dominate of (M - pimp) with (A - an accessory):
	now M is carrying A;
	say "Taking the [ShortDesc of A], [FuckerDesc of M] immediately closes [his of M] eyes and lolls out [his of M] tongue. A second later, a stream of your [urine] hits [his of M] face. [big his of M] nose crinkles a little when you direct the stream into [his of M] mouth, and [he of M] scowls when you aim down at [his of M] chest, but [he of M] doesn't complain. After all - [he of M] understands that you're just getting your money's worth. You finish up by aiming back toward [his of M] mouth, and ordering [him of M] to swallow, which [he of M] does right away.";
	now the bladder of the player is 0;
	strongDignify;
	SportsGet;
	say AfterDominationComment 4 of M.

To say AfterDominationComment (N - a number) of (M - pimp):
	say "[speech style of M]";
	if N is 1:
		say "'[one of]You're lucky.'[or]Lucky ho...'[or]Don't get too attached, ho. Soon I'll be back to take it from you.'[in random order]";
	otherwise if N is 2:
		say "'[one of]See ya, sucker!'[or]You're fine being paid in exposure, right? Trick question, I don't care.'[in random order]";
	otherwise if N is 3:
		say "'[one of]This doesn't- *cough* -mean anything. You'll still pay!'[or]You- *cough* -were lucky this- *cough* -time!'[in random order]";
	otherwise if N is 4:
		say "'[one of]You must feel real proud right now, ho. You'll regret that. Stupid bitch.'[or]Have fun, ho? You'll regret it, I promise you that.'[in random order]";
	otherwise if N is 5:
		say "'[one of]Did you like getting put in your place, ho?'[or]Don't forget what happened here. You work for ME, ho.'[or]Keep this in mind next time you start forgetting your place.'[in random order]";
	otherwise if N is 6:
		say "'[one of]Don't get cocky, bitch. That was a one time deal.'[or]Next time, I expect you to work for fucking free.'[in random order]";
	otherwise:
		say "'You're the wrong kind of cheap whore.'";
	say "[roman type][line break]";

Part 4 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - pimp): [Should never happen]
	say "[speech style of M]'Hi there.'[roman type][line break]".

To say RepeatResponse of (M - pimp):
	if M is unfriendly:
		say "[speech style of M]'This isn't a discussion. Give me my money NOW.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Hi again.'[roman type][line break]".

To say SubmissiveResponse of (M - pimp):
	say "[speech style of M]'[one of]That's the spirit, baby!'[or]Keep that up and I might just make you my bottom bitch.'[at random][roman type][line break]".

To say UnAnnoyedResponse of (M - pimp):
	say "[speech style of M]'[one of]That's right! Earn those dollas![or]Earn that paycheck, bitch!'[or]You're makin BANK tonight!'[at random][roman type][line break]".

To say MildAnnoyedResponse of (M - pimp):
	say "[speech style of M]'[one of]Oh shut up.'[or]Bitches should be fucked, NOT heard.'[or]If you have time to talk you have time to moan, bitch.'[at random][roman type][line break]".

To say AnnoyedResponse of (M - pimp):
	say "[speech style of M]'[one of]Bitch, I SAID shut up.'[or]Shut the fuck up, bitch!'[or]You betta shut your ass up, bitch.'[at random][roman type][line break]".

To say TauntRejected of (M - pimp):
	say "[speech style of M]'[one of]You better stop runnin that mouth, bitch.'[or]I'm warning you, bitch. I don't let anyone run their fuckin['] mouth to me.'[or]You sure that's what you wanted to say, bitch?'[at random][roman type][line break][BigNameDesc of M] seems even more determined to beat you!".

To say PleadRejected of (M - pimp):
	say "[speech style of M]'Don't try and act all friendly now. It's too late for that!'[roman type][line break]".

Section 2 - Questions

To say WhereAnswer of (M - pimp):
	say "[speech style of M]'Ooh, pretending to be all innocent today, we are? The Johns always love that. Me, I prefer the Porn Star Experience.'[roman type][line break]".

To say WhoAnswer of (M - pimp):
	say "[speech style of M]'I am but a humble businessman.'[roman type][line break]".

To say StoryAnswer of (M - pimp):
	say "[speech style of M]'I convinced the mechanic-looking chappie who runs this place to let me turn most of [his of mechanic] rooms into mini-brothels, and we split the profits. The working girls tend to do pretty well out of the deal, too, as long as they get on their knees when they're told to, and pay me my cut.'[roman type][line break]".

To say EscapeAnswer of (M - pimp):
	say "[speech style of M]'Unfortunately most working girls find that after they get into the lifestyle, it's hard to say goodbye to it. But then, who can complain about getting tons of [if diaper quest is 1]kinky play time[otherwise]sex[end if] and pretty jewellery? Two of a slut's favourite things.'[roman type][line break]".

To say AdviceAnswer of (M - pimp):
	say "[speech style of M]'If you keep me well-paid, I might start sending the most difficult patrons to the other girls.'[roman type][line break]".

To compute teaching of (M - pimp):
	say "[speech style of M]'You know, sometimes you can tell if an item is cursed from some tell-tale hints. Let me tell you a few...'[roman type][line break]";
	teach identifying.

Section 3 - Drink Requesting

To compute friendly drink of (M - pimp):
	if M is interested:
		compute unfriendly drink of M;
	otherwise:
		say "[BigNameDesc of M] acts as if [he of M] didn't even hear you.".

To compute unfriendly drink of (M - pimp):
	say "[speech style of M]'Do you think you DESERVE a free drink? I don't.'[roman type][line break]";
	interest M.

Definition: pimp is willing to give snacks: decide no.

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - pimp):
	if T is plentiful accessory and the health of M >= the maxhealth of M, decide on the price of T;
	if T is whore themed, decide on 1;
	decide on 0.

To say FriendlyOfferFlav of (T - a thing) to (M - pimp):
	if T is plentiful accessory, say "'Here's your [']cut['].'";
	otherwise say "'I found this, and thought you might have some use for it.'".

To decide which number is the bartering value of (T - id-poster) for (M - pimp):
	decide on 2.


To say MonsterOfferAcceptFlav of (M - pimp) to (T - id-poster):
	say "[BigNameDesc of M] smiles widely.[line break][speech style of M]'You made this? This is PERFECT! As soon as I get a gloryhole installed, I'll make sure you get the first shift. And the second!'[roman type][line break][severeHumiliateReflect]".

To decide which number is the bartering value of (T - pack of playing cards) for (M - pimp):
	decide on 1.

To say MonsterOfferAcceptFlav of (M - pimp) to (T - pack of playing cards):
	say "[BigNameDesc of M] nods.[line break][speech style of M]'I can use these, they fit nicely with my style.'[roman type][line break]".

To say MonsterOfferAcceptFlav of (M - pimp) to (T - a thing):
	if T is plentiful accessory and (patronbed uses > 0 or M is unfriendly), say "[BigNameDesc of M] smiles.[line break][speech style of M]'[one of]Good [boy of the player][or]That's my good little [if diaper quest is 1]baby[otherwise]whore[end if][or]Keep it up[in random order].'[roman type][line break]";
	otherwise say "[BigNameDesc of M] grins.[line break][speech style of M]'Ah yes, I can definitely give this to one of my whores to wear. Thanks.'[roman type][line break]".

To compute resolution of (M - pimp) taking (T - a thing):
	let BV be the bartering value of T for M;
	FavourUp M by BV;
	if portal-bra is worn or portal-hotpants is worn or portal-diaper is worn:
		if M is buddy:
			say "[speech style of M]'Your debt is paid. I guess it's time to release you.'[roman type][line break]";
			release pimp portals;
		otherwise:
			say "[speech style of M]'Your debt isn't paid off yet. Come see me after a few more [brothas of male-m] have had their fun with you.'[roman type][line break]";
	otherwise:
		if M is guardian:
			say "[speech style of M]'You're way ahead in your payments to me. As a reward I'll make sure to only send the easiest customers your way for now.'[roman type][line break]";
		otherwise if M is ally:
			say "[speech style of M]'You're rather ahead in your payments to me. As a reward I'll make sure to keep the rudest customers away from you.'[roman type][line break]";
		otherwise if M is buddy:
			say "[speech style of M]'You're ahead in your payments to me, by the way. You can slow it down a bit.'[roman type][line break]";
	if M is unfriendly, say "[BigNameDesc of M] seems happy for now.";
	if (portal-diaper is not worn and M is not in Hotel44) or (portal-diaper is worn and M is not in Hotel31):
		send M home.

To say MonsterOfferRejectFlav of (M - pimp) to (T - a thing):
	say "[if M is unfriendly][BigNameDesc of M] smiles.[otherwise][BigNameDesc of M] looks a bit confused.[end if][line break][speech style of M]'[if T is plentiful accessory and the health of M < the maxhealth of M]It's too late for that, bitch.'[otherwise if T is plentiful accessory]You owe me more than that, bitch.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]";

Part 6 - Pimp Pedestal

A pimp-pedestal is a kind of thing. A pimp-pedestal is not portable. The printed name of a pimp-pedestal is "[TQlink of item described]stone pedestal[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "stone", "pedestal" as a pimp-pedestal.

A pimp-pedestal has an object called the pedestal-user.
A pimp-pedestal can be user-identified. [does the player know who is using the pedestal?]
A pimp-pedestal has a number called charge. [Charges up to next assault]

To reset (P - a pimp-pedestal):
	now P is not user-identified;
	now the charge of P is 0;
	if the pedestal-user of P is a monster:
		now the pedestal-user of P is unleashed;
		if the pedestal-user of P is a patron, destroy P;
		now the pedestal-user of P is nothing.

Figure of pimp-pedestal 1 is the file "Env/Hotel/pedestal1.jpg".
Figure of pimp-pedestal 2 is the file "Env/Hotel/pedestal2.jpg".
Figure of pimp-pedestal 3 is the file "Env/Hotel/pedestal3.jpg".
Figure of pimp-pedestal 4 is the file "Env/Hotel/pedestal4.jpg".

pimp-pedestal-1 is a pimp-pedestal. The text-shortcut of pimp-pedestal-1 is "pp1". [crotch]
pimp-pedestal-2 is a pimp-pedestal. The text-shortcut of pimp-pedestal-2 is "pp2". [breasts]

Definition: a monster (called M) is pedestal-fucking rather than not-pedestal-fucking:
	repeat with P running through pimp-pedestals:
		if M is the pedestal-user of P, decide yes;
	decide no.

To decide which figure-name is the examine-image of (P - pimp-pedestal-1):
	if portal-hotpants is worn, decide on figure of pimp-pedestal 2;
	otherwise decide on figure of pimp-pedestal 4.

To decide which figure-name is the examine-image of (P - pimp-pedestal-2):
	if portal-bra is worn or woman-player is partially-enslaved, decide on figure of pimp-pedestal 3;
	otherwise decide on figure of pimp-pedestal 1.

To say ExamineDesc of (P - pimp-pedestal-1):
	say "A stone pedestal with a concrete bust, from neck to thighs, presented in a doggy-style position at waist height.";
	if portal-hotpants is worn:
		say "Your [player-crotch] are here thanks to [NameDesc of portal-hotpants], fully accessible and fuckable by whoever pays [NameDesc of pimp].".

To say ExamineDesc of (P - pimp-pedestal-2):
	say "A stone pedestal with a concrete bust, from neck to thighs, presented face-on at waist height.";
	if portal-bra is worn:
		say "Your naked breasts are here thanks to [NameDesc of portal-bra], fully accessible and molestable by whoever pays [NameDesc of pimp].";
	otherwise if woman-player is partially-enslaved:
		say "[BigNameDesc of woman-player][']s breasts are here, fully accessible and molestable by whoever pays [NameDesc of pimp].".

To compute pedestal fuck of (M - a monster):
	say "[BigNameDesc of M] is using the genitals mounted on [NameDesc of pimp-pedestal-1] as [his of M] personal faceless fuckhole!".

To compute pedestal titfuck of (M - a monster):
	say "[BigNameDesc of M] is pumping [his of M] [manly-penis] between the breasts mounted on [NameDesc of pimp-pedestal-2]!".

This is the pedestal management rule:
	let pedestalUsed be false;
	repeat with P running through pimp-pedestals:
		if the pedestal-user of P is a monster, now pedestalUsed is true;
	if pedestalUsed is true:
		let nearbyPedestal be false;
		if Hotel44 is within vision, now nearbyPedestal is true;
		let F be a random body part penetrated by portal-hotpants;
		repeat with P running through pimp-pedestals:
			if the pedestal-user of P is a monster:
				let PU be the pedestal-user of P;
				if PU is unseen-stranger, now PU is suited patron;
				now PU is in Hotel44;
				now PU is guarding;
				let M be a random unseen-stranger;
				if nearbyPedestal is true or P is user-identified:
					if P is not user-identified:
						if P is pimp-pedestal-1, say "[bold type]You can see exactly who is fucking [if F is a fuckhole]your [variable F][otherwise]you[end if] [if the player is not in Hotel44]in the [Hotel44] - [end if]it's [NameDesc of PU]![roman type][line break]";
						otherwise say "[bold type]You can see exactly who is molesting [if portal-bra is worn]your[otherwise][WomanName][']s[end if] breasts [if the player is not in Hotel44]in the [Hotel44] - [end if]it's [NameDesc of PU]![roman type][line break]";
						now P is user-identified;
					now M is PU;
				if P is pimp-pedestal-1:
					onlycutshow figure of pimp portal cutscene;
					now M is penetrating F;
					dislodge portal-hotpants;
					say "[BigFuckerDesc of M] is using your [variable F] as [his of M] personal [one of]onahole[or]cocksleeve[or]fuckhole[in random order]!";
					ruin F;
					if playerRegion is school or the charge of P > (a random number between 102 and 103) or (M is combative and the player is prone):
						TimesSubmittedUp M by 1;
						now the sex-length of M is 0;
						now M is not interested; [to prevent orgasm satisfy function]
						if the player is in Hotel44, say "[BigNameDesc of M] roars with pleasure!";
						compute climax of M in F;
						say "You [if the player is in Hotel44]watch and [end if]feel the [DickDesc of M] being quickly pulled out of your [variable F], leaving you empty once again.";
						reset P;
						compute pedestal payment of M;
					otherwise:
						say StealthPortalSexFlav;
						dislodge M;
						now portal-hotpants is penetrating F;
				otherwise if P is pimp-pedestal-2:
					if portal-bra is worn:
						onlycutshow figure of pimp portal cutscene;
						now M is penetrating breasts;
						dislodge portal-bra;
						say "[BigFuckerDesc of M] is [one of]massaging [his of M] [manly-penis] with your breasts[or]sliding [his of M] [manly-penis] in and out of your cleavage[or]roughly groping your breasts and fucking your cleavage[cycling]!";
						stimulate breasts from M;
						if playerRegion is school or the charge of P > (a random number between 102 and 103) or (M is combative and the player is prone):
							TimesSubmittedUp M by 1;
							say "[if the player is in Hotel44]With a satisfied grunt, [FuckerDesc of M] lets[otherwise]Suddenly you feel [FuckerDesc of M] let[end if] several ropes of [semen] loose from [his of M] tip, coating your breasts in a layer of glaze.";
							BreastsSensitivityUp 1;
							orgasm dislodge M;
							progress quest of titfuck-quest;
							now the semen coating of breasts is 0;
							if the player is in Hotel44, say "You watch and feel [if pimp is in Hotel44][NameDesc of pimp][otherwise][NameDesc of M][end if] wiping your breasts clean.";
							otherwise say "You feel someone wiping your breasts clean.";
							compute pedestal payment of M;
							reset P;
						otherwise:
							say StealthPortalSexFlav;
							dislodge M;
							now portal-bra is penetrating breasts;
					otherwise:
						if the player is in Hotel44, say "You watch [FuckerDesc of M] [one of]continue to massage [his of M] [manly-penis] with [WomanName][']s breasts[or]sliding [his of M] [manly-penis] in and out of [WomanName][']s cleavage[or]roughly groping [WomanName][']s breasts and fucking [his of woman-player] cleavage[cycling] mounted on the pedestal.";
						if woman-player is in the location of the player, say "[BigNameDesc of woman-player] [one of]whines with shame and discomfort[or]mewls sheepishly[or]whimpers with self-pity[cycling] and [one of]doubles over[or]grips [his of woman-player] chest tightly[or]visibly shudders[cycling] as [if P is user-identified][FuckerDesc of PU][otherwise][one of]an unknown [man of male-m][or]the [man of male-m] on the other end of the portal[or][his of woman-player] mystery assailant[or]the [man of male-m] in the [Hotel44][cycling][end if] [if the player is in Hotel44]fucks[otherwise]does something to[end if] [his of woman-player] tits.";
						if playerRegion is school or (the charge of P > a random number between 102 and 103) or M is combative:
							if the player is in Hotel44, say "With a satisfied grunt, [FuckerDesc of M] lets several ropes of [semen] loose from [his of M] tip, coating [WomanName][']s breasts in a layer of glaze. [if pimp is in Hotel44][BigFuckerDesc of pimp][otherwise][BigFuckerDesc of M][end if] then wipes them clean, ready for the next customer.";
							if woman-player is in the location of the player:
								if the player is getting unlucky:
									say "[speech style of woman-player]'I can't believe it, I'm... I'm...!'[roman type][line break][BigNameDesc of woman-player] squeals at an extremely high pitch, and then a jet of clear liquid bursts out of [his of M] crotch with incredible pressure, blasting out the legholes of [his of woman-player] hotpants and coating [his of woman-player] thighs.[line break][speech style of woman-player]'Oh my god, I'm so embarrassed! I... I have to go!'[roman type][line break][big he of woman-player] runs off without another word.";
									womanSluttify;
									vanish woman-player;
								otherwise:
									say "A few moments later, [NameDesc of woman-player], panting, stands upright once again. [big his of woman-player] face may be flushed, and [he of woman-player] may be out of breath, but at least what[if the player is not in Hotel44]ever[end if] was happening to [him of woman-player] has finished... for now.";
							[otherwise if the player is getting very unlucky:
								womanSluttify;] [orgasmed while we weren't there]
							if portal-bra is worn:
								compute pedestal payment of M;
							otherwise if M is not pimp and the player is in Hotel44:
								say "[speech style of M]'[one of]Not bad[or]I enjoyed that[or]Rather delightful funbags, if I say so myself[in random order].'[roman type][line break][BigNameDesc of M] hands [NameDesc of pimp] a sapphire ring.";
							reset P;
	repeat with P running through pimp-pedestals:
		if the pedestal-user of P is nothing:
			if P is pimp-pedestal-1:
				if portal-hotpants is worn, increase the charge of P by 1;
				otherwise now the charge of P is 0;
			otherwise if P is pimp-pedestal-2:
				if woman-player is partially-enslaved or portal-bra is worn, increase the charge of P by 1;
				otherwise now the charge of P is 0;
		otherwise:
			increase the charge of P by 1;
		if P is pimp-pedestal-2 and portal-bra is not worn and woman-player is partially-enslaved and the charge of P > a random number between 10 and 30 and the charge of P < 100, now the charge of P is 80; [if barbara has the portal bra on, it happens more regularly]
		if the charge of P < 100 and the charge of P > (a random number between 40 and 60):
			now the charge of P is 100;
			let M be a random male human unleashed uninterested not-pedestal-fucking monster in the hotel;
			if M is not a monster or the refractory-period of M > 0, now M is yourself;
			if M is monster:
				now pedestal-user of P is M;
				now M is in Hotel44;
				now M is guarding;
			otherwise:
				now M is a random unseen-stranger;
				now pedestal-user of P is M;
				set up suited patron;
				now suited patron is in Hotel44;
				now suited patron is guarding;
			if P is pimp-pedestal-1:
				let F be asshole;
				if the player is possessing a vagina and (asshole is actually occupied or a random number between 1 and 2 is 1), now F is vagina;
				if Hotel44 is within vision:
					say "You watch [NameDesc of M] [if the player is not in Hotel44]in the [Hotel44] [end if]approach [NameDesc of P] with your defenceless [fuckholes] mounted on it. [big he of M] pulls out [his of M] [LongDickDesc of M] and aligns the tip with the entrance to your [variable F].";
					now P is user-identified;
				repeat with T running through disembodied things penetrating F:
					say "You [if the player is in Hotel44]watch and [end if]feel [NameDesc of T] being removed from your [variable F]!";
					now T is in Hotel44;
					dislodge T;
				if F is not actually occupied:
					if the player is in Hotel44, say "[BigFuckerDesc of M] thrusts forward. ";
					say "[bold type]Suddenly, you feel something long and hard push into your [variable F]![line break][variable custom style][if the player is in Hotel44]Unf... So unceremoniously...[otherwise][one of]Aaaah! So sudden![or]Oh god, I'm being used right now?![or]That pimp is selling my [F] again![then at random][end if][roman type][line break]";
					now portal-hotpants is penetrating F;
					cutshow figure of pimp portal cutscene;
				otherwise:
					say "POTENTIAL BUG - the game was unable to have the [pedestal-user of P] start fucking the player's [F] through the portal hotpants because it was apparently already occupied by something unremovable?! Please report this bug, explaining that the game didn't plan for the player's [F] to already be occupied by the [random thing penetrating F].";
					reset P;
			otherwise if P is pimp-pedestal-2:
				if Hotel44 is within vision:
					say "You watch [NameDesc of M] [if the player is not in Hotel44]in the [Hotel44] [end if]approach [NameDesc of P] with [if portal-bra is worn]your[otherwise][WomanName][']s[end if] exposed breasts jutting out of it. [big he of M] grabs the breasts with both hands, and slides [his of M] [DickDesc of M] up in between them.";
					now P is user-identified;
				if portal-bra is worn:
					say "[bold type]Suddenly, you feel your breasts being grabbed by two rough hands, and squeezed around a hard [manly-penis]![line break][variable custom style][if the player is in Hotel44]Aaah! This is so freaky![otherwise][one of]Oh god, I'm being titfucked right now?![or]That pimp is selling my breasts for sex again![then at random][end if][roman type][line break]";
					now portal-bra is penetrating breasts;
					cutshow figure of pimp portal cutscene;
					progress quest of titfuck-desirability-quest;
				otherwise if woman-player is in the location of the player:
					say "[bold type][BigNameDesc of woman-player] [bold type]suddenly squeaks with strained panic in [his of woman-player] voice![line break][speech style of woman-player]'N-not again!'[roman type][line break][big he of woman-player] doubles over and cradles the spot where [his of woman-player] breasts should be, and starts panting heavily.".
The pedestal management rule is listed first in the all time based rules.

To compute pedestal payment of (M - a monster):
	if pimp is in Hotel44:
		if M is not pimp and the player is in Hotel44, say "[speech style of M]'[one of]Worth every penny[or]Keep the change[or]Pleasure doing business with you[in random order].'[roman type][line break][BigNameDesc of M] hands [NameDesc of pimp] a sapphire ring.";
		if pimp is not normally ally, FavourUp pimp.

To compute pedestal interruption of (M - a monster):
	repeat with P running through pimp-pedestals:
		if the pedestal-user of P is M:
			say "[if P is user-identified][BigNameDesc of M][otherwise]The [man of male-m] assaulting you through the portal suddenly[end if] [if P is pimp-pedestal-1]pulls out[otherwise]lets go of your chest[end if]!";
			reset P.

Pimp ends here.
