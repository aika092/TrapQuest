Pimp by Monster begins here.

pimp is a monster. pimp is intelligent. pimp is male.

Definition: pimp is father material: decide yes.

Definition: pimp is dark skinned: decide yes.

Definition: pimp is raunchy: decide yes.

Definition: pimp is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

Definition: pimp is willing to do oral: decide no.

Definition: pimp is willing to do titfucks: decide no.

Definition: pimp is human: decide yes.

Definition: pimp is able to remove cursed plugs: decide yes.

Definition: pimp is butt slut immune: decide yes.

Definition: pimp (called M) is willing to shag:
	if M is awake and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

Definition: pimp is willing to let go: decide no.

The text-shortcut of pimp is "pmp".
Figure of pimp is the file "NPCs/Hotel/pimp1.png".
Figure of pimp vag for sale is the file "NPCs/Hotel/pimp2.jpg".
Figure of pimp ass for sale is the file "NPCs/Hotel/pimp3.jpg".
Figure of pimp portal cutscene is the file "Special/Cutscene/cutscene-pimp-portals1.jpg".

To decide which figure-name is the monster-image of (M - pimp):
	if M is in Hotel44 and (portal-bra is worn or portal-hotpants is worn):
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
	now M is guarding;
	now the health of M is the maxhealth of M;
	if diaper quest is 0:
		repeat with P running through pimp pedestals:
			now P is in Hotel44.

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

Part 1 - Perception

To decide which number is the bimbo tolerance of (M - pimp):
	decide on 20.

To decide which number is the bab tolerance of (M - pimp):
	decide on 20.

To compute perception of (M - pimp):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if portal-bra is worn or portal-hotpants is worn:
		say "[speech style of M]'Sales are going well, slut, which I guess is good news for both of us.'[roman type][line break][big he of M] counts some jewellery in [his of M] pocket.";
		if M is buddy:
			say "[speech style of M]'Your debt is paid. I guess it's time to release you.'[roman type][line break]";
			release pimp portals;
		otherwise:
			say "[speech style of M]'Your debt isn't paid off yet. Come see me after a few more [Brotha of M]s have had their fun with you.'[roman type][line break]";
		distract M;
	otherwise if M is unfriendly:
		say "[speech style of M]'You owe me money, bitch. You'd best give me what you owe me right now or I'll find another way of taking it.'[roman type][line break]";
	otherwise if the times-met of M is 0:
		say "[speech style of M]'Hi there. I own and run the beds around here. If you want to be one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if] then just hang around near a bed for a while, and I'm sure a paying customer won't take too long to arrive. Just [bold type]make sure to pay me a cut[speech style of M] every now and then or you'll end up on my bad side.'[roman type][line break]";
	otherwise if patronbed uses is 0:
		say "[speech style of M]'Hi there. Still not tempted to become one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if]?'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Hi there [if diaper quest is 1]baby[boy of M][otherwise]whore[end if]. Here to give me my cut?'[roman type][line break]".

To send (M - pimp) home:
	if M is not in Hotel44:
		if M is in the location of the player:
			let D be the best route from the location of M to Hotel44 through modern rooms;
			if D is a direction, say "[BigNameDesc of M] leaves to the [D].";
		now M is in Hotel44;
	if M is interested, deinterest M.

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
	otherwise:
		bore M for N seconds;
	send M home. [This makes sure the pimp always makes it back to his room.]

To say SatisfiedFlav of (M - pimp):
	say "[if portal-bra is not worn and portal-hotpants is not worn][BigNameDesc of M] grunts with satisfaction.[line break][speech style of M]'That'll do as payment for now.'[roman type][line break][end if][big he of M] walks away, leaving you to contemplate the consequences of your choices.".

Part 2 - Misc Flavour

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

To IdentifiablePosterReaction of (M - pimp):
	say "[BigNameDesc of M] looks at you, then at the banner, then back to you. Upon realising that it is you, [he of M] puts [his of M] hands on [his of M] hips and laughs loudly.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - pimp):
	say "[BigNameDesc of M] looks at the banner with a big grin on [his of M] face. [big he of M] doesn't seem to realise it is you, but is clearly enjoying looking at it.";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

To say PregGrowth of (M - pimp):
	say "your pimp's [child]".

To say Brotha of (M - a pimp):
	say "[if interracial fetish is 1 and lady fetish is 1]sista[otherwise if interracial fetish is 1]brotha[otherwise if lady fetish is 1]bitch[otherwise]dude[end if]";

Part 3 - Combat

Section 1 - Protect and Attack

The latex punishment rule of pimp is usually the no latex punishment rule.

This is the pimp uses portals rule:
	if diaper quest is 0 and the player is an august 2020 top donator and patronbed uses > 0 and the health of pimp <= the maxhealth of pimp:
		if portal-hotpants is worn: [player has tried to fight the pimp again when the player is already portaled]
			if the player is in Hotel44 and asshole is not actually occupied:
				say "[speech style of pimp]'BIG mistake, [cunt]!'[roman type][line break][BigNameDesc of pimp] turns to the statue which currently hosts your genitalia, and takes the largest butt plug you've ever seen. Before you can stop [him of pimp], [he of pimp] shoves it into your [asshole]!";
				summon brown-plug uncursed;
				ruin asshole;
				if the openness of asshole < the girth of brown-plug - 2:
					say "You crumple in pain as your [asshole] is forced wider than it has ever been forced before.";
					PainUp 1;
				satisfy pimp;
			otherwise if face is not actually occupied or there is worn removable clothing penetrating face:
				if face is not actually occupied, say "[speech style of pimp]'You've only got one hole left for me to use, haven't you, slut?'[roman type][line break]";
				follow the monster mouth insertion rules;
			otherwise:
				compute SelectionFailure of pimp;
			rule succeeds;
		otherwise if there is a worn tattoo and the number of worn ass tattoo is 0 and portal-hotpants is actually summonable:
			say "[speech style of pimp]'It seems you've forgotten who owns this ass. Let me help you remember!'[roman type][line break][BigNameDesc of pimp] spanks you hard on the [AssDesc]. When [his of pimp] hand pulls away, you have a new tattoo underneath it.";
			summon spade owned tattoo;
			try examining spade owned tattoo;
			rule succeeds; [this ends his turn but doesn't satisfy him yet]
		otherwise:
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
		PainUp 2;
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
		say "[big he of M] shouts angrily!";
	otherwise:
		if the health of M >= the maxhealth of M:
			say "[BigNameDesc of M] is momentarily dumbstruck with surprise.[line break][speech style of M]'You think you can take me? Bring it on!'[roman type][line break]";
		otherwise if the health of M > the maxhealth of M / 2:
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
	if portal-bra is worn or portal-bra is in the location of the player, say "[BigNameDesc of portal-hotpants] disappears!";
	destroy portal-bra;

To standard loot (M - pimp):
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is pink diamond;
		set shortcut of X;
		say "[BigNameDesc of M] [if the loot dropped of M > 0]also [end if]throws a [printed name of X] at your feet.";
		increase the loot dropped of M by 1;
		compute autotaking X.

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
	say "[speech style of M]'[one of]That's right! Earn those dollas![or]Earn that paycheck, bitch!'[or]You're makin BANK tonight!'[at random][roman type]".

To say MildAnnoyedResponse of (M - pimp):
	say "[speech style of M]'[one of]Oh shut up.'[or]Bitches should be fucked, NOT heard.'[or]If you have time to talk you have time to moan, bitch.'[at random][roman type]".

To say AnnoyedResponse of (M - pimp):
	say "[speech style of M]'[one of]Bitch, I SAID shut up.'[or]Shut the fuck up, bitch!'[or]You betta shut your ass up, bitch.'[at random][roman type]".

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
	say "[speech style of M]'I convinced the mechanic-looking chappie who runs this place to let me turn most of [his of mechanic] rooms into mini-brothels, and we split the profits. The working girls tend to do pretty well out of the deal, too, as long as they get on their knees when they're told to, and as long as they pay me my cut.'[roman type][line break]".

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
	now M is interested;
	now the boredom of M is 0.

Definition: pimp is willing to give snacks: decide no.

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - pimp):
	if T is plentiful accessory and the health of M >= the maxhealth of M, decide on the price of T;
	if T is whore themed, decide on 1;
	decide on 0.

To decide which number is the bartering value of (T - id-poster) for (M - pimp):
	decide on 2.

To say MonsterOfferAcceptFlav of (M - pimp) to (T - id-poster):
	say "[BigNameDesc of M] smiles widely.[line break][speech style of M]'You made this? This is PERFECT! As soon as I get a gloryhole installed, I'll make sure you get the first shift. And the second!'[roman type][line break][severeHumiliateReflect]".

To decide which number is the bartering value of (T - pack of playing cards) for (M - pimp):
	decide on 1.

To say MonsterOfferAcceptFlav of (M - pimp) to (T - pack of playing cards):
	say "[BigNameDesc of M] nods.[line break][speech style of M]'I can use these, they fit nicely with my style.'[roman type][line break]".

To say MonsterOfferAcceptFlav of (M - pimp) to (T - a thing):
	if T is plentiful accessory and patronbed uses > 0, say "[BigNameDesc of M] smiles.[line break][speech style of M]'[one of]Good [boy of the player][or]That's my good little [if diaper quest is 1]baby[otherwise]whore[end if][or]Keep it up[in random order].'[roman type][line break]";
	otherwise say "[BigNameDesc of M] grins.[line break][speech style of M]'Ah yes, I can definitely give this to one of my whores to wear. Thanks.'[roman type][line break]".

To compute resolution of (M - pimp) taking (T - a thing):
	let BV be the bartering value of T for M;
	FavourUp M by BV;
	if portal-bra is worn or portal-hotpants is worn:
		if M is buddy:
			say "[speech style of M]'Your debt is paid. I guess it's time to release you.'[roman type][line break]";
			release pimp portals;
		otherwise:
			say "[speech style of M]'Your debt isn't paid off yet. Come see me after a few more [Brotha of M]s have had their fun with you.'[roman type][line break]";
	otherwise:
		if M is guardian:
			say "[speech style of M]'You're way ahead in your payments to me. As a reward I'll make sure to only send the easiest customers your way for now.'[roman type][line break]";
		otherwise if M is ally:
			say "[speech style of M]'You're rather ahead in your payments to me. As a reward I'll make sure to keep the rudest customers away from you.'[roman type][line break]";
		otherwise if M is buddy:
			say "[speech style of M]'You're ahead in your payments to me, by the way. You can slow it down a bit.'[roman type][line break]";
	if M is unfriendly, say "[BigNameDesc of M] seems happy for now.";
	if M is not in Hotel44:
		send M home.

To say MonsterOfferRejectFlav of (M - pimp) to (T - a thing):
	say "[if M is unfriendly][BigNameDesc of M] smiles.[otherwise][BigNameDesc of M] looks a bit confused.[end if][line break][speech style of M]'[if T is plentiful accessory and the health of M < the maxhealth of M]It's too late for that, bitch.'[otherwise if T is plentiful accessory]You owe me more than that, bitch.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]";

Part 6 - Pimp Pedestal

A pimp pedestal is a kind of thing. A pimp pedestal is not portable. The printed name of a pimp pedestal is "[TQlink of item described]stone pedestal[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "stone", "pedestal" as a pimp pedestal.

Figure of pimp pedestal 1 is the file "Env/Hotel/pedestal1.jpg".
Figure of pimp pedestal 2 is the file "Env/Hotel/pedestal2.jpg".
Figure of pimp pedestal 3 is the file "Env/Hotel/pedestal3.jpg".
Figure of pimp pedestal 4 is the file "Env/Hotel/pedestal4.jpg".

pimp-pedestal-1 is a pimp pedestal. The text-shortcut of pimp-pedestal-1 is "pp1".
pimp-pedestal-2 is a pimp pedestal. The text-shortcut of pimp-pedestal-2 is "pp2".

To decide which figure-name is the examine-image of (P - pimp-pedestal-1):
	if portal-hotpants is worn, decide on figure of pimp pedestal 2;
	otherwise decide on figure of pimp pedestal 4.

To decide which figure-name is the examine-image of (P - pimp-pedestal-2):
	if portal-bra is worn, decide on figure of pimp pedestal 3;
	otherwise decide on figure of pimp pedestal 1.

To say ExamineDesc of (P - pimp-pedestal-1):
	say "A stone pedestal with a concrete bust, from neck to thighs, presented in a doggy-style position at waist height.";
	if portal-hotpants is worn:
		say "Your [player-crotch] are here thanks to [NameDesc of portal-hotpants], fully accessible and fuckable by whoever pays [NameDesc of pimp].".

To say ExamineDesc of (P - pimp-pedestal-2):
	say "A stone pedestal with a concrete bust, from neck to thighs, presented face-on at waist height.";
	if portal-bra is worn:
		say "Your naked breasts are here thanks to [NameDesc of portal-bra], fully accessible and molestable by whoever pays [NameDesc of pimp].".

Pimp ends here.
