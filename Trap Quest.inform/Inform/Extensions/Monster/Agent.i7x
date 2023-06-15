Agent by Monster begins here.

agent is a monster. agent is male. agent is intelligent. The leftover-type of agent is 149.

Definition: agent is hotel dwelling:
	if diaper quest is 0 and the player is the donator, decide yes;
	if diaper quest is 1 and diaper swapping > 1, decide yes;
	decide no.

Definition: agent is willing to do vaginal: decide yes.
Definition: agent is willing to do anal: decide yes.

Definition: an agent is a generic-unlocker: decide yes.

Definition: agent is dark skinned: decide yes.
Definition: agent is condom prepared: decide yes. [Does she have condoms on her?]

[Definition: agent is raunchy: decide yes.]


The printed name of agent is "[if item described is in the location of the player][TQlink of item described][end if][input-style][MediumDesc of item described][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of agent is "agent". Understand "suited", "lady" as agent.

agent can be agent-identified.
agent can be agent-deglassed.
agent has a number called agent-scene.
agent has a number called agent-scene-spotted.

Figure of agent is the file "NPCs/MultiFloor/Agent/agent1.png".

To say ShortDesc of (M - agent):
	say "[if M is agent-identified]agent[otherwise]lady[end if]".

To say MediumDesc of (M - agent):
	say "suited [ShortDesc of M]".

To decide which figure-name is the monster-image of (M - agent):
	if M is agent-deglassed, decide on figure of agent angry;
	decide on figure of agent.


Definition: agent is presenting as male:
	if lady fetish is 2, decide yes;
	decide no.

To say MonsterDesc of (M - agent):
	say "This tall, extremely curvy black [man of M] is wearing a tight grey suit that perfectly hugs [his of M] giant bust and thunderous thighs. ";
	if M is agent-deglassed, say "[big he of M] has lost [his of M] sunglasses, which has made [him of M] visibly furious with you[if diaper quest is 0]. [big he of M] has also raised [his of M] briefcase, revealing the bulge of [his of M] [LongDickDesc of M][end if].";
	otherwise say "Reflective sunglasses hide [his of M] eyes[if diaper quest is 0], and a small briefcase hides [his of M] crotch[end if].".

To say LongDickDesc of (M - agent):
	if full-lady fetish is 1:
		say "massive strap-on";
	otherwise:
		say "massive [manly-penis]".

To set up (M - agent):
	reset M;
	add combat visor to the banishItems of M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - agent):
	decide on 13.

To decide which number is the girth of (M - agent):
	decide on 8.

Definition: agent (called M) is willing to shag:
	[if M is awake and the scared of M is 0 and the boredom of M < 120 and M is threatening, decide yes;]
	decide no.

[To say PregGrowth of (M - agent):
	say "the [ShortDesc of M]'s [child]".

To compute labour to (M - agent):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		let MD be a random maternity dress;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and [if mythical creatures fetish is 1]you both watch as a disgusting pig's head begins to emerge from your vagina. This baby is just as much an agent as its father! You groan in despair as the half-pig baby slowly emerges from your womb[otherwise]delivers the beautiful mixed race human baby[end if]. [big he of M] takes it into [his of M] arms and begins to cradle it.[line break][first custom style]'A baby boy! [if the father is mating]A wonderful addition to our growing horde[otherwise]My first child. I will train him in the ways of agent culture, and when he comes of age, perhaps he will be a great enough warrior to lead an assault on a human settlement and kidnap all their women. We can dream[end if][if MD is not held]. Here, take this[end if].'[roman type][line break]";
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
		Delay Labour.]

Definition: agent is human: decide yes.

To say LeftoverDesc (N - 149):
	say "The dead crumpled corpse of the [ShortDesc of agent] is on the ground here.".


Part 1 - Misc Flavour

To compute (M - a monster) stomping (N - agent):
	say "[speech style of M]'Oh shit, I'm getting out of here!'[roman type][line break]";
	if M is in the location of the player, say "[BigNameDesc of N] dodges a swipe from [NameDesc of M] and runs for the exit.";
	otherwise say "You hear an agent's shout from [if N is nearby]nearby![otherwise]somewhere in the [playerRegion]![end if]";
	finally destroy N.


Part 2 - Perception

[The agent doesn't fight. She just trolls and leaves.]
To anger (M - agent):
	if M is agent-deglassed:
		permanently anger M;
	otherwise:
		now current-monster is M;
		follow the agent trolls then leaves rule.

To decide which number is the bimbo tolerance of (M - agent):
	decide on 21. [never becomes aggressive]
To decide which number is the bab tolerance of (M - agent):
	decide on 21. [never becomes aggressive]

To say DisapprovalFlav of (M - agent):
	say "You can't even tell if [NameDesc of M] is looking at you right now, because of [his of M] shades.".

To say BecomesAggressive of (M - agent):
	say "[big he of M] takes an offensive stance![line break][speech style of M]'Okay, time for some bitch-breaking.'[roman type][line break]".

To compute perception of (M - agent):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if M is agent-deglassed:
		anger M;
		say "[big he of M] stares at you with unfiltered rage.[line break][speech style of M]'[one of]Do you have any idea how much those glasses cost to make?!'[or]I'll never forgive you for breaking my glasses!'[stopping][roman type][line break]";
	otherwise if M is groping:
		compute grope of M;
		say "[BigNameDesc of M] loses interest.";
		bore M;
	otherwise if the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
		say "[BigNameDesc of M] loses interest.";
		bore M;
	otherwise:
		say "[big he of M] maintains a neutral expression, and doesn't seem interested in interacting with you.";
		bore M.

To say BreastsGropeFlav of (M - agent):
	say "[speech style of M]'[one of]Not bad tits, if I say so myself.'[or]Excellent perkiness.'[stopping][roman type][line break]".
To say AssholeGropeFlav of (M - agent):
	say "[speech style of M]'Why is it so easy to access your asshole, slut?'[roman type][line break]".
To say VaginaGropeFlav of (M - agent):
	say "[speech style of M]'Why is it so easy to access your [cunt], slut?'[roman type][line break]".
To say PenisGropeFlav of (M - agent):
	say "[speech style of M]'Why is everyone else's penis always so small?'[roman type][line break]".
To decide which number is the belly grope preference of (M - agent):
	decide on -1000.
To decide which number is the face grope preference of (M - agent):
	decide on -1000.
To decide which number is the thighs grope preference of (M - agent):
	decide on -1000.
To say AssGropeFlav of (M - agent):
	say "[speech style of M]'Hmm. Not bad...'[roman type][line break]".

Part 4 - Combat

The latex punishment rule of agent is usually the no latex punishment rule. [Agent can fuck sex dolls]

To compute default waiting of (M - agent):
	say "[one of][BigNameDesc of M] waits patiently.[or][stopping]".

The agent priority attack rules is a rulebook. The priority attack rules of agent is the agent priority attack rules.
This is the agent trolls then leaves rule:
	if agent is not agent-deglassed:
		say "You blink with confusion.[line break][variable custom style]...What was I doing again?[roman type][line break]";
		regionally place agent;
		rule succeeds.
The agent trolls then leaves rule is listed in the agent priority attack rules.

To say PrepTaunt of (M - agent) in (F - a fuckhole):
	say "[speech style of M]'You broke my glasses, so now I'm going to break your [F].'[roman type][line break][BigNameDesc of M] growls with vindictive cruelty. [big he of M] places one hand on your back and another on the back of your head, which [he of M] presses down into the ground, causing you to wince with pain[one of]. It would appear that [he of M] has zero intention of making this pleasant for you[or][stopping].".

To compute unique penetration effect of (M - agent) in (F - a fuckhole):
	PainUp 10.

To compute sexBegging of (M - agent) in (F - a fuckhole):
	if the sex-length of M is 1:[climax is always apparent when the player is begging]
		say sexSubmitNearingClimax of M in F;
		ruin F;
	otherwise:
		say "[speech style of M]'You'll never get mercy from me, [bitch]!'[roman type][line break][BigNameDesc of M] snarls. If anything, [he of M] just started thrusting a bit harder...";
		ruin F.

To say CreampieFlav of (M - agent) in (F - a fuckhole):
	say "[if M is in the location of the player][line break][speech style of M]'[one of]Take this, you fucking [cunt]!'[or]You're mine now, [bitch]!'[in random order][roman type][line break][end if][BigFuckerDesc of M] [if M is in the location of the player]roars with catharsis and bottoms out as [he of M] shoots blast after blast of warm [semen] into[otherwise]bottoms out as [he of M] shoots blast after blast of warm [semen] into[end if] your [variable F]!".

Section 3 - Damage

To compute damage reaction of (M - agent):
	if M is agent-identified and attack-type is 1:
		say "[BigNameDesc of M][']s glasses are dislodged from [his of M] face by the slap! They drop to the ground, and smash.[line break][speech style of M]'Oh shit. You bitch, do you have any idea what you've just done?!'[roman type][line break]";
		now M is agent-deglassed;
	otherwise if M is agent-deglassed:
		if M is awake:
			if M is friendly:
				say "[speech style of M]'Again?!'[roman type][line break]";
			otherwise:
				say DamageReaction (the health of M) of M;
		otherwise:
			now the sleep of M is 0;
			say "[big he of M] wakes up with a groan of frustration.".

To say DamageReactHealthy of (M - agent):
	say "[BigNameDesc of M] endures the attack with a soft grunt.";

To say DamageReactDamaged of (M - agent):
	say DamageReactHealthy of M.

To say DamageReactTired of (M - agent):
	say DamageReactWeak of M.

To say DamageReactWeak of (M - agent):
	say "[BigNameDesc of M] squeals in pain.[if the scared of M <= 0][line break][speech style of M]'Fuck! Okay, time for a tactical retreat.'[roman type][line break][big he of M] turns and gets ready to run![end if]";
	now the scared of M is 100.

Definition: agent is automatically banishable: decide yes.


Part 4 - Conversation

Section 1 - Greetings

[The agent uses the default greeting and response functions]

To say FirstResponse of (M - agent):
	say "[speech style of M]'Run along. I'm on official business.'[roman type][line break]".

[To say InvitationRejected of (M - agent) with (N - a monster):
	say "[speech style of M]'Regrettably, I do not feel the drive to engage in such debauchery right now.'[roman type][line break]".

To say AssistanceRejected of (M - agent) with (N - a monster):
	say "[speech style of M]'It would not do to intervene in such matters.'[roman type][line break]".]

Section 3 - Drink Requesting

To compute friendly drink of (M - agent):
	compute unfriendly drink of M.

To compute unfriendly drink of (M - agent):
	say "The agent ignores your question.".

Part 5 - Memory Scenes

An agent poster is a kind of poster.


first-agent-poster is an agent poster. first-agent-poster is unidentifiable. first-agent-poster has a text called poster-breast-desc. first-agent-poster has a text called poster-belly-desc. first-agent-poster has a text called poster-hip-desc. first-agent-poster has a text called poster-hair-desc.

To distribute (P - first-agent-poster):
	if the player is in Hotel30 or (a random number between 1 and 2 is 1 and the player is not in Hotel40), now P is in Hotel40;
	otherwise now P is in Hotel30;
	compute title of P.

To decide which figure-name is the examine-image of (C - first-agent-poster):
	decide on Figure of agent camera cutscene 1.

To compute unique variables of (P - first-agent-poster):
	now the poster-breast-desc of P is the substituted form of "[BreastDesc]";
	now the poster-belly-desc of P is the substituted form of "[BellyDesc]";
	now the poster-hip-desc of P is the substituted form of "[HipDesc]";
	now the poster-hair-desc of P is the substituted form of "[HairColour] hair";

To compute title of (P - first-agent-poster):
	if diaper quest is 0, now the title of P is "THROATED WHORE";
	otherwise now the title of P is "MOBILE URINAL".

To say ShortDesc of (P - first-agent-poster):
	say "A grainy photo of [if diaper quest is 0]the [MediumDesc of agent] standing over a naked submissive slut, and shoving [his of agent] [LongDickDesc of agent] down their throat[otherwise]someone standing above a kneeling diapered submissive, and urinating on their lower back, so that some of the piss goes into their diaper, and the rest puddles on the ground[end if]. ".

To say ExamineDesc of (C - first-agent-poster):
	say ShortDesc of C;
	say "You can't see their face because [if diaper quest is 0]it's completely covered up by [NameDesc of agent][']s junk. To be honest, it's impressive that it even fits! The slut underneath has [poster-breast-desc of C], [poster-belly-desc of C], [poster-hip-desc of C] and[otherwise]they're facing the wrong way. They have[end if] [poster-hair-desc of C]. That's all you can make out.";
	say TitleDesc of C.


second-agent-poster is an agent poster. second-agent-poster is identifiable.

To distribute (P - second-agent-poster):
	if the player is in Hotel01 or (a random number between 1 and 2 is 1 and the player is not in Hotel40), now P is in Hotel40;
	otherwise now P is in Hotel01;
	if P is in the location of first-agent-poster:
		if P is in Hotel01, now P is in Hotel40;
		otherwise now P is in Hotel01;
	compute title of P.

To decide which figure-name is the examine-image of (C - second-agent-poster):
	decide on Figure of agent camera cutscene 2.

To compute title of (P - second-agent-poster):
	if diaper quest is 0, now the title of P is "HYPNOTIZED COCKSLEEVE";
	otherwise now the title of P is "HYPNOTIZED AND FILLED".

To say ShortDesc of (P - second-agent-poster):
	say "A grainy photo of the [MediumDesc of agent] standing over you, and [if diaper quest is 0]plowing you[otherwise]filling you to the brim with giant enema syringes[end if] from behind. You're completely naked, your face blank and expressionless. ".

To say ExamineDesc of (C - second-agent-poster):
	say ShortDesc of C;
	say "You have absolutely no memory of this ever occurring... ";
	say TitleDesc of C.

Definition: agent is ready for next agent scene:
	if diaper quest is 0 and the player is the donator and the times-met of agent > 0 and agent is not permanently banished and the agent-scene of agent < 2 and the agent-scene of agent is the agent-scene-spotted of agent:
		if the number of worn unremovable nudism-disabling clothing is 0, decide yes;
	if diaper quest is 1 and diaper swapping > 1 and there is a worn diaper and the times-met of agent > 0 and agent is not permanently banished and the agent-scene of agent < 2 and the agent-scene of agent is the agent-scene-spotted of agent:
		let URC be the number of worn unremovable nudism-disabling clothing;
		if diaper quest is 1, decrease URC by the number of worn unremovable nudism-enabling diapers;
		if URC <= 0, decide yes;
	decide no.

To compute next agent scene:
	if the agent-scene of agent is 0:
		now the agent-scene of agent is 1;
		set up first-agent-poster;
		if diaper quest is 0:
			ActualStomachSemenUp the semen load of agent;
			compute refractoryReset of agent;
		otherwise:
			let D be a random worn diaper;
			let N be the soak-limit of D - the total-soak of D;
			if N > 0:
				increase the urine-soak of D by N;
				now previous-clothing-glazed is -1; [force appearance reassessment]
				if the player is diaper aware, compute awakened state check of D; [immediately make the player notice their new full diaper]
			UrinePuddleUp 10;
	otherwise if the agent-scene of agent is 1:
		now the agent-scene of agent is 2;
		set up second-agent-poster;
		compute agent anal;
		if the number of blank rows in the Table of Published Disgraces > 0:
			choose a blank row in Table of Published Disgraces;
			if diaper quest is 0, now the content entry is "a high quality video showing you, naked, on your hands and knees, as the [MediumDesc of agent] holds some kind of small silver device in front of your face. You have a blank expression and are staring at the device while [he of agent] gives you some instructions.";
			otherwise now the content entry is "a high quality video showing you, naked, bent over, your belly full of a giant enema, as the [MediumDesc of agent] holds some kind of small silver device in front of your face. You have a blank expression and are staring at the device while [he of agent] gives you some instructions.";
			now the published entry is the substituted form of "is live on www.hypnoheaven.xxx";
			now the severity entry is 2;
			now the popularity entry is 5;
			now the timestamp entry is earnings;
			now the lastwitnessed entry is 0;
			now the deletedtime entry is 0;
			now the viewsfuzz entry is a random number between -100 and 100.

To compute agent anal:
	if diaper quest is 0:
		AssFill the semen load of agent;
		if the soreness of asshole < 10:
			increase the soreness of asshole by 4;
			if the soreness of asshole > 10, now the soreness of asshole is 10;
			if the agent-scene of agent is 2, say "[bold type]You feel like you suddenly notice that your [asshole] is more sore [if the openness of asshole < the girth of agent]and more gaped [end if]than it was before. And as your belly gurgles, you realise that your rectum feels like it's been filled with an anal creampie...[line break][variable custom style]What in the world?![roman type][line break]";
		if the openness of asshole < the girth of agent, now the openness of asshole is the girth of agent;
		if the agent-scene of agent > 2, say "[bold type]It's with mild horror that you notice that your [asshole] is once again suddenly sore, gaped and filled with [semen]. [roman type][if agent is agent-identified][BigNameDesc of agent] must have mind controlled you, assfucked you, and wiped your memory again!!![line break][variable custom style]I've got to find that bitch, and slap [his of agent] sunglasses off![otherwise][variable custom style]Why?! How?![end if][roman type][line break]";
	otherwise:
		let N be belly limit - the total squirtable fill of belly;
		AssFill N water;
		if the agent-scene of agent is 2, say "[bold type]Your belly gurgles, and you realise that your belly is huge and round, inflated to the brim with an enema![line break][variable custom style]What in the world?![roman type][line break]";
		otherwise say "[bold type]It's with mild horror that you notice that your belly has once again been inflated to maximum size by a giant enema. [roman type][if agent is agent-identified][BigNameDesc of agent] must have mind controlled you, assfucked you, and wiped your memory again!!![line break][variable custom style]I've got to find that bitch, and slap [his of agent] sunglasses off![otherwise][variable custom style]Why?! How?![end if][roman type][line break]";
	increase the agent-scene of agent by 1; [this minus 2 is the number of times it's happened already]
	compute refractoryReset of agent.

To compute agent reveal:
	now agent is agent-identified;
	say "You hear the [NameDesc of agent][']s voice reverberate in your mind, as if they were a distant memory that's being awoken.[line break][speech style of agent]'That's right, stay there and [if diaper quest is 0]take my cock up your ass, like a good little slut[otherwise]let me fill your belly up all the way to the brim[end if]. And of course, I want you to forget about this entire thing afterwards.'[line break][variable custom style]Holy shit, has [he of agent] been mind-controlling and fucking me, and wiping my memories of it?![roman type][line break]The speech continues.[line break][speech style of agent]'And take care not to knock my sunglasses off. I don't want to actually get caught by my own control signal.'[line break][variable custom style]So... I need some sort of eye protection to avoid being controlled by [him of agent]... Or I need to slap those sunglasses off of [him of agent] before [he of agent] has a chance to react.[roman type][line break]".

A later time based rule (this is the agent surprise sex rule):
	if playerRegion is hotel and agent is not agent-deglassed and the refractory-period of agent < 0 and the agent-scene of agent > 1 and agent is not permanently banished and asshole is not actually occupied and a random number between 1 and 25 is 1:
		compute agent anal.



Agent ends here.
