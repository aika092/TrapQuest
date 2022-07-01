Agent by Monster begins here.

agent is a monster. agent is male. agent is intelligent. The leftover-type of agent is 149.

Definition: agent is hotel dwelling:
	if the player is a june 2022 top donator and diaper quest is 0, decide yes;
	decide no.

[Definition: agent is willing to urinate: decide yes.]

Definition: agent is dark skinned: decide yes.

[Definition: agent is raunchy: decide yes.]


The printed name of agent is "[if item described is in the location of the player][TQlink of item described][end if][input-style][MediumDesc of item described][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of agent is "agent". Understand "suited", "lady" as agent.

agent can be agent-identified.
agent can be agent-deglassed.
agent has a number called agent-scene.
agent has a number called agent-scene-spotted.

Figure of agent is the file "NPCs/MultiFloor/Agent/agent1.png".
Figure of agent doggy is the file "NPCs/MultiFloor/Agent/cutscene-agent1.jpg".
Figure of agent throat is the file "NPCs/MultiFloor/Agent/cutscene-agent2.jpg".

To say ShortDesc of (M - agent):
	say "[if M is agent-identified]agent[otherwise]lady[end if]".

To say MediumDesc of (M - agent):
	say "suited [ShortDesc of M]".

To decide which figure-name is the monster-image of (M - agent):
	[if lady fetish is 1, decide on figure of female agent;]
	decide on figure of agent.

Definition: agent is presenting as male:
	if lady fetish is 2, decide yes;
	decide no.

To say MonsterDesc of (M - agent):
	say "This tall, extremely curvy black [man of M] is wearing a tight grey suit that perfectly hugs [his of M] giant bust and thunderous thighs. Reflective sunglasses hide [his of M] eyes, and a small briefcase hides [his of M] crotch.".

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
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and [if mythical creatures fetish is 1]you both watch as a disgusting pig's head begins to emerge from your vagina. This baby is just as much an agent as its father! You groan in despair as the half-pig baby slowly emerges from your womb[otherwise]delivers the beautiful mixed race human baby[end if]. [big he of M] takes it into [his of M] arms and begins to cradle it.[line break][first custom style]'A baby boy! [if the father is mating]A wonderful addition to our growing horde[otherwise]My first child. I will train him in the ways of agent culture, and when he comes of age, perhaps he will be a great enough leader lead an assault on a human settlement and kidnap all their women. We can dream[end if][if MD is not held]. Here, take this[end if].'[roman type][line break]";
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
	now current-monster is M;
	follow the agent trolls then leaves rule.

To decide which number is the bimbo tolerance of (M - agent):
	decide on 21. [never becomes aggressive]
To decide which number is the bab tolerance of (M - agent):
	decide on 21. [never becomes aggressive]

To say DisapprovalFlav of (M - agent):
	say "You can't even tell if [NameDesc of M] is looking at you right now, because of [his of M] shades.".

To say BecomesAggressive of (M - agent):
	say "[big he of M] takes an offensive stance![line break][speech style of M]'Ok, time for some good fun.'[roman type][line break]".

To compute perception of (M - agent):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][big he of M] maintains a neutral expression, and doesn't seem interested in interacting with you.";
	bore M.


Part 4 - Combat

The latex punishment rule of agent is usually the no latex punishment rule. [Agent can fuck sex dolls]

To compute default waiting of (M - agent):
	say "[one of][BigNameDesc of M] waits patiently.[or][stopping]".

The agent priority attack rules is a rulebook. The priority attack rules of agent is the agent priority attack rules.
This is the agent trolls then leaves rule:
	if agent is not agent-deglassed or the player is prone:
		say "You blink with confusion.[line break][variable custom style]...What was I doing again?[roman type][line break]";
		regionally place agent;
		rule succeeds.
The agent trolls then leaves rule is listed in the agent priority attack rules.


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
	say "[BigNameDesc of M] squeals in pain.[line break][speech style of M]'Fuck! Okay, time for a tactial retreat.'[roman type][line break][big he of M] turns and gets ready to run!";
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


throat-agent-poster is an agent poster. throat-agent-poster is unidentifiable. throat-agent-poster has a text called poster-breast-desc. throat-agent-poster has a text called poster-belly-desc. throat-agent-poster has a text called poster-hip-desc. throat-agent-poster has a text called poster-hair-desc.

To decide which figure-name is the examine-image of (C - throat-agent-poster):
	decide on Figure of agent throat.

To compute unique variables of (P - throat-agent-poster):
	now the poster-breast-desc of P is the substituted form of "[BreastDesc]";
	now the poster-belly-desc of P is the substituted form of "[BellyDesc]";
	now the poster-hip-desc of P is the substituted form of "[HipDesc]";
	now the poster-hair-desc of P is the substituted form of "[HairColour] hair";

To compute title of (P - throat-agent-poster):
	now the title of P is "THROATED WHORE".

To say ShortDesc of (P - throat-agent-poster):
	say "A grainy photo of the [MediumDesc of agent] standing over a naked submissive slut, and shoving [his of agent] [LongDickDesc of agent] down their throat. ".

To say ExamineDesc of (C - throat-agent-poster):
	say ShortDesc of C;
	say "You can't see their face because it's completely covered up by [NameDesc of agent][']s junk. To be honest, it's impressive that it even fits! The slut underneath has [poster-breast-desc of C], [poster-belly-desc of C], [poster-hip-desc of C] and [poster-hair-desc of C]. That's all you can make out.";
	say TitleDesc of C.


doggy-agent-poster is an agent poster. doggy-agent-poster is identifiable.

To decide which figure-name is the examine-image of (C - doggy-agent-poster):
	decide on Figure of agent doggy.

To compute title of (P - doggy-agent-poster):
	now the title of P is "MINDBROKEN COCKSLEEVE".

To say ShortDesc of (P - doggy-agent-poster):
	say "A grainy photo of the [MediumDesc of agent] standing over you, and plowing you from behind. You're completely naked, and your face looks blank and expressionless. ".

To say ExamineDesc of (C - doggy-agent-poster):
	say ShortDesc of C;
	say "You have absolutely no memory of this ever occurring... ";
	say TitleDesc of C.

To compute next agent scene:
	if the agent-scene of agent is 0:
		now the agent-scene of agent is 1;
		set up throat-agent-poster;
		ActualStomachSemenUp the semen load of agent;
		compute refractoryReset of agent;
	otherwise if the agent-scene of agent is 1:
		now the agent-scene of agent is 2;
		set up doggy-agent-poster;
		compute agent anal;
		if the number of blank rows in the Table of Published Disgraces > 0:
			choose a blank row in Table of Published Disgraces;
			now the content entry is "a high quality video showing you, naked, on your hands and knees, as the [MediumDesc of agent] holds some kind of small silver device in front of your face. You have a blank expression and are staring at the device while [he of agent] gives you some instructions.";
			now the published entry is the substituted form of "is live on www.hypnoheaven.xxx";
			now the severity entry is 2;
			now the popularity entry is 5;
			now the timestamp entry is earnings;
			now the lastwitnessed entry is 0;
			now the deletedtime entry is 0;
			now the viewsfuzz entry is a random number between -100 and 100.

To compute agent anal:
	AssFill the semen load of agent;
	increase the soreness of asshole by 4;
	if the soreness of asshole > 10, now the soreness of asshole is 10;
	if the openness of asshole < the girth of agent, now the openness of asshole is the girth of agent;
	compute refractoryReset of agent.

To compute agent reveal:
	now agent is agent-identified;
	say "As you watch the footage, you hear the words being spoken reverberate in your mind, as if they were a distant memory that's being awoken.[line break][speech style of agent]'That's right, stay there and take my cock up your ass, like a good little slut. And of course, I want you to forget about this entire thing afterwards.'[line break][variable custom style]Holy shit, has [he of agent] been mind-controlling and fucking me, and wiping my memories of it?![roman type][line break]The speech continues.[line break][speech style of agent]'And take care not to knock my sunglasses off. I don't want to actually get caught by my own control signal.'[line break][variable custom style]So... You need some sort of eye protection to avoid being controlled by [him of agent]...[roman type][line break]".

A later time based rule (this is the agent surprise sex rule):
	if playerRegion is hotel and agent is not agent-deglassed and the refractory-period of agent < 0 and the agent-scene of agent > 1 and agent is not permanently banished and asshole is not actually occupied and a random number between 1 and 25 is 1:
		compute agent anal;
		say "[bold type]It's with mild horror that you notice that your [asshole] is once again suddenly sore, gaped and filled with [semen]. [roman type][if agent is agent-identified][BigNameDesc of agent] must have mind controlled you, assfucked you, and wiped your memory again!!![line break][variable custom style]I've got to find that bitch, and slap [his of agent] sunglasses off![otherwise][variable custom style]Why?! How?![end if][roman type][line break]".



Agent ends here.
