Pimp by Monster begins here.

pimp is a monster. pimp is intelligent. pimp is male.

Definition: pimp is father material: decide yes.

Definition: pimp is dark skinned: decide yes.

Definition: pimp is raunchy: decide yes.

Definition: pimp is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

pimp-dead is initially false.

Definition: pimp is willing to do oral: decide no.

Definition: pimp is willing to do titfucks: decide no.

The text-shortcut of pimp is "pmp".
Figure of pimp is the file "NPCs/Hotel/Patron/pimp1.png".

To decide which figure-name is the monster-image of (M - a pimp):
	decide on figure of pimp.

To say ShortDesc of (M - pimp):
	say "pimp".

To say MediumDesc of (M - pimp):
	say "pimp".

To say MonsterDesc of (M - pimp):
	say "A tall, powerful looking dark skinned [man of M], dressed in overly extravagant clothing - a purple three piece suit, a fur coat and a long thin cane.".

To say MonsterComment of (M - pimp):
	say "[line break][variable custom style]Yep, this [if lady fetish is 1]lady[otherwise]guy[end if] is definitely a pimp. And [if the times-met of M < 2]it would appear that [end if]I'm [his of M] whore.[roman type][line break]".

To decide which number is the girth of (M - pimp):
	decide on 4.

Definition: pimp (called M) is willing to shag:
	if M is awake and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

Definition: pimp is willing to let go: decide no.

To set up (M - pimp):
	if pimp-dead is true:
		remove M from play;
	otherwise:
		now the monstersetup of M is 1;
		now the raw difficulty of M is the starting difficulty of M;
		now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - pimp):
	decide on 10.

To say PregGrowth of (M - pimp):
	say "your pimp's [child]".

To compute labour to (M - pimp):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and delivers the human mixed race baby, which immediately starts crying loudly. [big he of M] takes it into [his of M] arms with an unconcealed look of annoyance. [line break][first custom style]'Geez, thanks a lot! Now I have to manage a brothel AND raise [one of]a[or]yet another[stopping] fucking kid.'[roman type][line break]Without giving you a chance to react, never mind reply, [he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

Definition: pimp is human: decide yes.

To check motion of (M - pimp):
	unless M is in the location of the player, remove M from play. [Once the player escapes his gaze he disappears.]

Definition: pimp is able to remove cursed plugs: decide yes.

Definition: pimp is butt slut immune: decide yes.

Part 1 - Perception

Definition: pimp is uniquely unfriendly: decide yes.

To decide which number is the bimbo tolerance of (M - pimp):
	decide on 20.

To decide which number is the bab tolerance of (M - pimp):
	decide on 20.

To say Brotha of (M - a pimp):
	say "[if interracial fetish is 1 and lady fetish is 1]sista[otherwise if interracial fetish is 1]brotha[otherwise if lady fetish is 1]bitch[otherwise]dude[end if]";

To compute perception of (M - pimp):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	anger M;
	if the times-met of M is 0:
		if the class of the player is princess:
			say "[first custom style]'Listen up, princess. I don't work for you anymore. In fact, starting now you're gonna be ";
		otherwise:
			say "[first custom style]'Listen up[if diaper quest is 0], bitch[end if]. Nobody works in Bimbacia without reporting to me first, which means you're ";
		say "one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if]. That means every time you [if diaper quest is 1]let one of these patrons babify you[otherwise]fuck a [Brotha of M][end if], I get a cut. Any single item of jewellery will do. If not, you get the back of my hand. So what's it going to be, [if diaper quest is 1]kiddo[otherwise]slut[end if]?'[roman type][line break]";
		increase the times-met of M by 1;[just to be sure]
		now the last-interaction of M is 2;
	otherwise:
		say "[first custom style]'Nice work, bitch. Now give me what's mine.'[roman type][line break]";
	make M expectant.

Part 2 - Misc Flavour

To compute kneeling reaction of (M - pimp):
	say "[BigNameDesc of M] laughs. [line break][first custom style]'[if the health of M >= the maxhealth of M]I guess this one time, you can pay me with your services[otherwise]Surrender means nothing to me. You've crossed me, and now I'm going to make your life a misery[end if].'[roman type][line break]";
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

Part 3 - Combat

Section 1 - Protect and Attack

The latex punishment rule of pimp is usually the no latex punishment rule.

This is the pimp convinced rule:
	if presented-orifice is not nothing, say PresentRejectionFlav of current-monster.
The monster convinced rule of pimp is usually the pimp convinced rule.

To say PresentRejectionFlav of (M - pimp):
	say "[BigNameDesc of M] cuts you off before you've finished talking. [line break][speech style of M]'I own you, I'll fuck you wherever I goddamn [please].'[roman type][line break]".

To say SelectionFrustrated of (M - pimp):
	say "[BigNameDesc of M] laughs, seemingly at [himself of M]. [line break][speech style of M]'For some reason I can't seem to get it up. Fine, I guess you get off lucky. This time. You'd better remember this very rare moment of kindness I'm showing you, whore.'[roman type][line break]";
	satisfy M.

To say StrikingSuccessFlav of (M - pimp) on (B - a body part):
	say "[BigNameDesc of M] strikes you [TargetName of B] with [his of M] cane! Wham!".

To say StrikingFailureFlav of (M - pimp) on (B - a body part):
	say "[BigNameDesc of M] tries to whack you [TargetName of B] with [his of M] cane but you manage to get out of the way just in time!".

To say SatisfiedFlav of (M - pimp):
	say "[BigNameDesc of M] grunts with satisfaction. [line break][speech style of M]'That'll do as payment for now.'[roman type][line break][big he of M] walks away, leaving you to [if the bimbo of the player < 12]contemplate the consequences of your choices[otherwise]bask in the afterglow[end if].".

To bore (M - pimp) for (N - a number) seconds:
	now M is not interested;
	compute common boredom of M for N seconds;
	dislodge M;
	if M is in the location of the player and M is awake, say SatisfiedFlav of M;
	remove M from play. [We don't want to reset him]

Report talking pimp:
	make the noun expectant.

Report waiting when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

Report drinking when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

Report TQeating when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

Report taking off when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

Report dropping when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

Report cleaning when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

Report taking when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

Report urinating when pimp is in the location of the player:
	unless pimp is penetrating a body part, make pimp expectant.

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
	now pimp-dead is true.

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
	say "[first custom style]'Hi there.'[roman type][line break]".

To say RepeatResponse of (M - pimp):
	if M is unfriendly:
		say "[first custom style]'This isn't a discussion. Give me my money NOW.'[roman type][line break]";
	otherwise:
		say "[first custom style]'Hi again.'[roman type][line break]".

To say SubmissiveResponse of (M - pimp):
	say "[first custom style]'[one of]That's the spirit, baby!'[or]Keep that up and I might just make you my bottom bitch.'[at random][roman type][line break]".

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

Section 3 - Drink Requesting

To compute friendly drink of (M - pimp): [Should never happen]
	if M is interested:
		say "[BigNameDesc of M][']s smile fades slightly. [line break][first custom style]'Sorry, we're not allowed to give out free drinks, it is pretty much the only way the hotel make money after all!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] acts as if [he of M] didn't even hear you.".

To compute unfriendly drink of (M - pimp):
	say "[first custom style]'Do you think you DESERVE a drink? I don't.'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

Definition: pimp is willing to give snacks: decide no.

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - pimp):
	if T is plentiful accessory and the health of M >= the maxhealth of M, decide on 99;
	decide on 0.

To decide which number is the bartering value of (T - id-poster) for (M - pimp):
	decide on 4.

To say MonsterOfferAcceptFlav of (M - pimp) to (T - id-poster):
	say "[BigNameDesc of M] smiles widely.[line break][speech style of M]'You made this? This is PERFECT! As soon as I get a gloryhole installed, I'll make sure you get the first shift. And the second!'[roman type][line break][severeHumiliateReflect]".

To say MonsterOfferAcceptFlav of (M - pimp) to (T - a thing):
	say "[BigNameDesc of M] smiles.[line break][speech style of M]'[one of]Good [boy of the player][or]That's my good little [if diaper quest is 1]baby[otherwise]whore[end if][or]Keep it up[in random order].'[roman type][line break]".

To compute resolution of (M - pimp) taking (T - a thing):
	if M is unfriendly and M is intelligent:
		say "[BigNameDesc of M] wanders off, clearly happy for now.";
		remove M from play. [we don't want to reset him so we don't use the destroy function]

To say MonsterOfferRejectFlav of (M - pimp) to (T - a thing):
	say "[if M is unfriendly][BigNameDesc of M] smiles.[otherwise][BigNameDesc of M] looks a bit confused.[end if] [line break][speech style of M]'[if T is plentiful accessory and the health of M < the maxhealth of M]It's too late for that, bitch.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]";

Pimp ends here.
