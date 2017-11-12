Pimp by Monster begins here.

A pimp is a kind of monster.  A pimp is usually intelligent.  A pimp is usually male.  A pimp is usually raunchy.  A pimp is usually dark skinned.  A pimp is usually father material.  A pimp is usually willing to do anal.  A pimp is usually willing to do vaginal.

pimp-dead is a number that varies.

The printed name of pimp is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]pimp[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  
There is 1 pimp.

The description of pimp is usually "[PimpDesc]".  The text-shortcut of pimp is "pmp".
Figure of pimp is the file "pimp1.png".

To say PimpDesc:
	if images visible is 1, display the figure of pimp;
	say "A tall, powerful looking dark skinned man, dressed in overly extravagant clothing - a purple three piece suit, a fur coat and a long thin cane.  [variable custom style]Yep, this guy is definitely a pimp.  And [if the times-met of item described < 2]it would appear that [end if]I'm his whore.".

To decide which number is the girth of (M - a pimp):
	decide on 4.

Definition: A pimp (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

Definition: a pimp (called M) is willing to let go:
	decide no.

To set up (M - a pimp):
	if the player is not a july 2017 top donator or pimp-dead is 1, remove M from play;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M.

To say PregGrowth of (M - a pimp):
	say "your pimp's [child]".

To compute labour to (M - a pimp):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue!  He[end if] kneels down on one knee and delivers the human mixed raised baby, which immediately starts crying loudly.  He takes it into his arms with an unconcealed look of annoyance.  [first custom style]'Geez, thanks a lot!  Now I have to manage a brothel AND raise [one of]a[or]yet another[stopping] fucking kid.'[roman type][line break]Without giving you a chance to react, never mind reply, he leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment.  You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

Definition: a pimp (called M) is human:
	decide yes.

To check motion of (M - a pimp):
	unless M is in the location of the player, remove M from play. [Once the player escapes his gaze he disappears.]

Definition: a pimp (called M) is able to remove cursed plugs:
	decide yes.

Definition: a pimp (called M) is butt slut immune:
	decide yes.

Part 1 - Perception

To decide which number is the bimbo tolerance of (M - a pimp):
	decide on 20.

To decide which number is the cringe tolerance of (M - a pimp):
	decide on 20.

To compute perception of (M - a pimp):
	now M is interested;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	anger M;
	if the times-met of M is 0:
		say "[first custom style]'Hey, did I give you permission to work in my brothel?  I don't think so.  Well anyway, you're now one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if].  And that means every time you fuck a [if interracial fetish is 1]brotha[otherwise]dude[end if], I get a cut.  Any single item of jewellery will do.  If not, you get the back of my hand.  So what's it going to be, [if diaper quest is 1]kiddo[otherwise]slut[end if]?'[roman type][line break]";
		increase the times-met of M by 1; [just to be sure]
	otherwise:
		say "[first custom style]'Nice work, bitch.  Now give me what's mine.'[roman type][line break]".

Part 2 - Misc Flavour

To compute kneeling reaction of (M - a pimp):
	say "The [M] laughs.  [first custom style]'[if the health of M >= the maxhealth of M]I guess this one time, you can pay me with your services[otherwise]Surrender means nothing to me.  You've crossed me, and now I'm going to make your life a misery[end if].'[roman type][line break]";
	humiliate 75.

To say DiaperReaction of (M - a pimp):
	say "The [M] laughs.  [speech style of M]'That's right, little one.  Prove to me what a good little baby-slave you are.'[roman type][line break]";
	if the humiliation of the player < 15000, say "[variable custom style][if the player is able to speak]'I'm not a baby!  I just really needed to go...'[otherwise]He thinks I'm enjoying being seen like this![end if][roman type][line break]";
	otherwise say "You [if the humiliation of the player < 27000]look down at the ground[otherwise]nod[end if] in shame.".

To IdentifiablePosterReaction of (M - a pimp):
	say "The [M] looks at you, then at the banner, then back to you.  Upon realising that it is you, he puts his hands on his hips and laughs loudly.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a pimp):
	say "The [M] looks at the banner with a big grin on his face.  He doesn't seem to realise it is you, but is clearly enjoying looking at it.";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.


Part 3 - Combat

Section 1 - Protect and Attack

The latex punishment rule of a pimp is usually the no latex punishment rule.

This is the pimp convinced rule:
	say "[PresentRejectionFlav of current-monster]".
The monster convinced rule of a pimp is usually the pimp convinced rule.

To say PresentRejectionFlav of (M - a pimp):
	say "The [M] cuts you off before you've finished talking.  [speech style of M]'I own you, I'll fuck you wherever I goddamn please.'[roman type][line break]".

To say SelectionFrustrated of (M - a pimp):
	say "The [M] laughs, seemingly at himself.  [speech style of M]'For some reason I can't seem to get it up.  Fine, I guess you get off lucky.  This time.  You'd better remember this very rare moment of kindness I'm showing you, whore.'[roman type][line break]";
	satisfy M.

To say StrikingSuccessFlav of (M - a pimp) on (B - a body part):
	say "The [M] strikes you [TargetName of B] with his cane!  Wham!".

To say StrikingFailureFlav of (M - a pimp) on (B - a body part):
	say "The [M] tries to whack you [TargetName of B] with his cane but you manage to get out of the way just in time!".

To say SatisfiedFlav of (M - a pimp):
	say "The [M] grunts with satisfaction.  [speech style of M]'That'll do as payment for now.'[roman type]  He walks away, leaving you to [if the bimbo of the player < 12]contemplate the consequences of your choices[otherwise]bask in the afterglow[end if].".

To bore (M - a pimp) for (N - a number) seconds:
	now M is not interested;
	remove M from play. [We don't want to reset him]

Report greeting a pimp:
	make the noun expectant.

Report questioning a pimp:
	make the noun expectant.

Report waiting when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Report drinking when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Report TQeating when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Report taking off when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Report dropping when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Report cleaning when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Report taking when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Report urinating when there is a pimp in the location of the player:
	let M be a random pimp;
	unless M is penetrating a body part, make M expectant.

Section 2 - DQ

Definition: a pimp (called M) is willing to spank:
	decide yes.

Definition: a pimp (called M) is willing to deliver enemas:
	decide yes.

Definition: a pimp (called M) is willing to confiscate:
	decide yes.

Section 3 - Damage

To compute damage of (M - a pimp):
	if the health of M > 0:
		if M is uninterested or M is friendly: [should never happen]
			say "He shouts angrily!";
			now M is interested;
			anger M;
		otherwise:
			if the health of M >= the maxhealth of M:
				say "The [M] is momentarily dumbstruck with surprise.  [speech style of M]'You think you can take me?  Bring it on!'[roman type]";
			otherwise if the health of M > the maxhealth of M / 2:
				say "The [M] [one of]sneers menacingly[or]smiles sadistically[or]grins[at random].  [speech style of M]'[one of]Not bad, not bad[or]You're going to have to do better than that[or]Is that all you've got[or]Oh I'm going to make you regret this[or]Don't say I didn't warn you[in random order]!'[roman type][line break]";
			otherwise:
				say "The [M] recoils in pain.  [one of]He's not teasing you any more.  [or][stopping]";
	otherwise:
		now pimp-dead is 1;
		compute death of M.

To loot (M - a pimp):
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is pink diamond;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.

		
Part 4 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - a pimp): [Should never happen]
	say "[first custom style]'Hi there.'[roman type][line break]".

To say RepeatResponse of (M - a pimp):
	say "[first custom style]'Hi again.'[roman type][line break]".

To say UnfriendlyResponse of (M - a pimp):
	say "[first custom style]'[if the health of M >= the maxhealth of M]This isn't a discussion.  Give me my money now, bitch.'[otherwise]Don't try and act all friendly now.  It's too late for that!'[end if][roman type][line break]".

To say DominantResponse of (M - a pimp):
	say "[first custom style]'[one of]Back for more, slut?'[or]Did remembering what happened earlier make you horny? Can[']t say I blame you, you obviously can[']t help being a tart.'[or]Horny again, are we? I[']ll help.'[or]Not satisfied with [the times-fucked of M] dickings? Ok, let[']s make it [the times-fucked of M + 1]!'[at random][roman type][line break]".

To say midDominanceResponse of (M - a pimp):
	say "[first custom style]'[one of]If it's help you want, I know just what to do.'[or]I'm going to help. Oh yes indeed.'[or]What kind of guy would I be if I ignored a woman in distress?'[at random][roman type][line break]".
		
To say AsDominantResponse of (M - a pimp):
	say "[first custom style]'[one of]Haha! Take it!'[or]I know you love it!'[or]Yeah, take it slut!'[or]How does it feel to get pounded by an important man!'[or]Think of your resume after this. You fucked the boss!'[or]I never stop! Oh yeah!'[or]Take it hard, bitch!'[at random][roman type][line break]".


Section 2 - Questioning

To compute annoyance of (M - a pimp):
	if M is uninterested:
		say "The [M] doesn't seem to realize you are talking to him.[line break]";
	otherwise:
		say "[UnfriendlyResponse of M]".

Section 3 - Drink Requesting

To compute friendly drink of (M - a pimp): [Should never happen]
	if M is interested:
		say "The [M]'s smile fades slightly.  [first custom style]'Sorry, we're not allowed to give out free drinks, it is pretty much the only way the hotel make money after all!'[roman type][line break]";
	otherwise:
		say "The [M] acts as if [he of M] didn't even hear you.".
	
To compute unfriendly drink of (M - a pimp):
	say "[first custom style]'Do you think you DESERVE a drink?  I don't.'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

Definition: a pimp (called M) is willing to give snacks:
	decide no.

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - a pimp):
	if T is plentiful accessory and M is intelligent and the health of M >= the maxhealth of M, decide on 99;
	decide on 0.

To say MonsterOfferAcceptFlav of (M - a pimp) to (T - a thing):
	say "The [M] smiles.  [speech style of M]'[one of]Good girl[or]That's my good little [if diaper quest is 1]baby[otherwise]whore[end if][or]Keep it up[in random order].'[roman type][line break]".

To compute resolution of (M - a pimp) taking (T - a thing):
	if M is unfriendly and M is intelligent:
		say "The [M] wanders off, clearly happy for now.";
		remove M from play. [we don't want to reset him so we don't use the destroy function]

To say MonsterOfferRejectFlav of (M - a pimp) to (T - a thing):
	say "[if M is unfriendly]The [M] smiles.[otherwise]The [M] looks a bit confused.[end if]  [speech style of M]'[if T is plentiful accessory and the health of M < the maxhealth of M]It's too late for that, bitch.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]";
	


Pimp ends here.
