Skills by Player begins here.

The skill listing rules is a rulebook.

The skill cheating rules is a rulebook.

The player has a number called mercyskill. The mercyskill of the player is usually 0.
The player has a number called strutskill. The strutskill of the player is usually 0.
The player has a number called strut. The strut of the player is usually 0.
The player has a number called breastskill. The breastskill of the player is usually 0.
The player has a number called throatskill. The throatskill of the player is usually 0.
The player has a number called identifyskill. The identifyskill of the player is usually 0.
The player has a number called wanktime. The wanktime of the player is usually 0.
The player has a number called bellyskill. The bellyskill of the player is usually 0.
The player has a number called milkskill. The milkskill of the player is usually 0.
The player has a number called relaxskill. The relaxskill of the player is usually 0.
The player has a number called invokeskill. The invokeskill of the player is usually 0.
The player has a number called craftskill. The craftskill of the player is usually 0.
The player has a number called alchemyskill. The alchemyskill of the player is usually 0.
The player has a number called floatskill. The floatskill of the player is usually 0.
The player has a number called wishskill. The wishskill of the player is usually 0.
The player has a number called fuckskill. The fuckskill of the player is usually 0.

The player has a number called buttskill. The buttskill of the player is usually 0.

The player has a number called divinationskill. The divinationskill of the player is usually 0.

Part 1 - Mercy

[!<TeachBeggingForMercy>+

REQUIRES COMMENTING

+!]
To teach begging for mercy:
	if the mercyskill of the player is 0:
		if diaper quest is 1:
			if the delicateness of the player > 3:
				say "[bold type]**You have learned how to beg for mercy! Sometimes you will automatically escape a spanking punishment by using diplomacy. Convincing power (make-up) makes this more likely!**[roman type][line break]";
				now the mercyskill of the player is 1;
			otherwise:
				say "You are much too stubborn to admit defeat! If you were to suffer a few more painful moments, then maybe you'd pay more attention to this tip...";
		otherwise:
			if the analvirgin of the player is 0 or (the player is female and the virgin of the player is 0):
				say "[bold type]**You have learned how to beg for mercy!**[roman type][line break]";
				now the mercyskill of the player is 1;
			otherwise:
				say "You have no plans to [if the player is not a nympho]get fucked, so don't feel that the advice is very useful. If you were to lose your virginity, then maybe you'd pay more attention to this tip...[otherwise]complain if someone is nice enough to fuck you, so you ignore the advice![end if]";
	otherwise:
		say "[bold type]You already know how to beg for mercy![roman type][line break]".

[!<TheMercySkillListRule>+

REQUIRES COMMENTING

+!]
This is the mercyskill list rule:
	if the mercyskill of the player is 1, say "You know how to beg for mercy.".
The mercyskill list rule is listed in the skill listing rules.

[!<TheMercySkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the mercyskill learn rule:
	if the mercyskill of the player is 0, say "You now know how to beg for mercy.";
	now the mercyskill of the player is 1.
The mercyskill learn rule is listed in the skill cheating rules.

Part 2 - Deepthroating

[!<TeachDeepThroating>+

REQUIRES COMMENTING

+!]
To teach deepthroating:
	if the throatskill of the player is 0:
		if the semen taste addiction of the player > 1 or the stomach-semen of the player > 0:
			say "[bold type]**You have learned how to deepthroat!**[roman type][line break][if the oral sex addiction of the player < 5]As much as you don't ever want to be deep-throated, never mind be known as a particularly skilled throater, you have to admit to yourself that in this game it's probably sensible to know how! [end if]You will now be able to prevent yourself from puking up semen during blowjobs.";
			now the throatskill of the player is 1;
		otherwise:
			say "You ignore this piece of advice, [if the sex addiction of the player < 13]you don't ever want to be deep-throated, never mind be known as a particularly skilled throater! Maybe if you are ever forced to swallow some semen, then you might decide it's worth knowing how to do this.[otherwise]since you would much rather get fucked properly if the opportunity arises.[end if]";
	otherwise:
		say "[bold type]You already know how to deepthroat![roman type][line break]".

[!<TheThroatskillPreventsGagReflexRule>+

REQUIRES COMMENTING

+!]
This is the throatskill prevents gag reflex rule:
	if the throatskill of the player is 1:
		if debuginfo > 0, say "[input-style]Avoid gagging check: learned deepthroat skill | automatic success[roman type][line break]";
		rule succeeds.
The throatskill prevents gag reflex rule is listed in the gag reflex rules.

[!<TheThroatskillListRule>+

REQUIRES COMMENTING

+!]
This is the throatskill list rule:
	if the throatskill of the player is 1, say "You know how to deepthroat.".
The throatskill list rule is listed in the skill listing rules.

[!<TheThroatSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the throatskill learn rule:
	if the throatskill of the player is 0, say "You now know how to deepthroat.";
	now the throatskill of the player is 1.
The throatskill learn rule is listed in the skill cheating rules.

Part 3 - Strutting

[!<TeachStrutting>+

REQUIRES COMMENTING

+!]
To teach strutting:
	if the strutskill of the player is 0:
		if the heel skill of the player > 3:
			say "[bold type]**You have learned how to strut!**[line break]Type 'strut' to activate or deactivate strutting whilst wearing heels. You'll have significantly increased dexterity but also your [MediumDesc of hips] will look much more provocative.[roman type][line break]";
			now the strutskill of the player is 1;
		otherwise:
			say "[if the bimbo of the player < 12]You decide that looking more slutty than you do already is not a priority right now[otherwise]You resent [him of current-monster] for implying that you need to look any more sexy than you already do, and ignore [his of current-monster] advice[end if]. But maybe once you're better at walking in heels, you'll value [his of current-monster] advice.";
	otherwise:
		say "[bold type]You already know how to strut![roman type][line break]".

[!<TheStrutSkillListRule>+

REQUIRES COMMENTING

+!]
This is the strutskill list rule:
	if the strutskill of the player is 1, say "You know how to strut.".
The strutskill list rule is listed in the skill listing rules.

[!<TheStrutSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the strutskill learn rule:
	if the strutskill of the player is 0, say "You now know how to strut.";
	now the strutskill of the player is 1.
The strutskill learn rule is listed in the skill cheating rules.

Part 4 - TitJobs

[!<TeachTitJobs>+

REQUIRES COMMENTING

+!]
To teach titjobs:
	if the breastskill of the player is 0:
		if the largeness of breasts >= 5:
			say "[bold type]**You have learned how to slap with large breasts!**[roman type][line break]";
			now the breastskill of the player is 1;
		otherwise:
			say "Your breasts aren't large enough to be able to attempt to put [his of current-monster] advice into practice.";
	otherwise:
		say "[bold type]You already know how to fight with big tits![roman type][line break]".

[!<TeachTitShow>+

REQUIRES COMMENTING

+!]
To teach titshow:
	if the breastskill of the player is 0:
		if humiliation of the player >= 6500:
			say "[bold type]**You know how to display your chest with dignity! A bare chest will no longer affect your appearance rating.**[roman type][line break]";
			now the breastskill of the player is 1;
		otherwise:
			say "You are too horrified with the idea of everyone seeing your bare chest to take this advice to heart.";
	otherwise:
		say "[bold type]You already know how to display your breasts with dignity![roman type][line break]".

[!<TheBreastSkillListRule>+

REQUIRES COMMENTING

+!]
This is the breastskill list rule:
	if the breastskill of the player is 1, say "You know how to [if diaper quest is 1]display your breasts with dignity[otherwise]slap well with large breasts[end if].".
The breastskill list rule is listed in the skill listing rules.

[!<TheBreastSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the breastskill learn rule:
	if the breastskill of the player is 0, say "You now know how to [if diaper quest is 1]display your breasts with dignity[otherwise]slap well with large breasts[end if].";
	now the breastskill of the player is 1.
The breastskill learn rule is listed in the skill cheating rules.

Part 5 - Identify

[!<TeachIdentifying>+

REQUIRES COMMENTING

+!]
To teach identifying:
	if the identifyskill of the player is 0:
		if the incidents of enema-int-loss is 0 and the arousal of the player < 5000 and the soreness of asshole < 10 and the soreness of vagina < 10:
			say "[bold type]**You have learned how to identify!**[line break]Every now and then when you find a cursed item in a container, you will immediately be able to tell that it is cursed. The higher your intelligence, the higher the chance.[roman type][line break]";
			now the identifyskill of the player is 1;
		otherwise:
			say "You listen to his hints but unfortunately in your [if the player is horny]very aroused[otherwise if the incidents of enema-int-loss > 0]butt-clenching[otherwise if the bimbo of the player < 10]stressed[otherwise]light headed[end if] state you fail to properly commit them to memory. They probably won't be much use.";
	otherwise:
		say "[bold type]You have already heard and memorised these hints![roman type][line break]".

[!<TheIdentifySkillListRule>+

REQUIRES COMMENTING

+!]
This is the identifyskill list rule:
	if the identifyskill of the player is 1, say "You know how to sometimes identify cursed clothing.".
The identifyskill list rule is listed in the skill listing rules.

[!<TheIdentifySkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the identifyskill learn rule:
	if the identifyskill of the player is 0, say "You now know how to sometimes identify cursed clothing.";
	now the identifyskill of the player is 1.
The identifyskill learn rule is listed in the skill cheating rules.

Part 6 - Belly Management

[!<TeachBellyManagement>+

REQUIRES COMMENTING

+!]
To teach belly management:
	if the bellyskill of the player is 0:
		if the largeness of belly > 3:
			say "[bold type]**You have learned how to better support your belly!**[line break]This ability passively reduces the amount that your belly weight affects your fatigue by 66%.[roman type][line break]";
			now the bellyskill of the player is 1;
		otherwise:
			say "You try and understand what [he of current-monster]'s showing you about how to shift your weight, but your belly isn't as large as [hers of current-monster] and so it doesn't make much sense to you.";
	otherwise:
		say "[bold type]You already know how to better support your belly![roman type][line break]".

[!<TheBellySkillListRule>+

REQUIRES COMMENTING

+!]
This is the bellyskill list rule:
	if the bellyskill of the player is 1, say "You know how to support your belly.".
The bellyskill list rule is listed in the skill listing rules.

[!<TheBellySkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the bellyskill learn rule:
	if the bellyskill of the player is 0, say "You now know how to support your belly.";
	now the bellyskill of the player is 1.
The bellyskill learn rule is listed in the skill cheating rules.

Part 7 - Relaxing

[!<TeachRelaxing>+

REQUIRES COMMENTING

+!]
To teach relaxing:
	if the relaxskill of the player is 0:
		if the anal sex addiction of the player > 2 or the vaginal sex addiction of the player > 2:
			say "[bold type]**You have learned how to relax!**[line break]When submitting during sex you'll have a bonus chance to avoid soreness increases.[roman type][line break]";
			now the relaxskill of the player is 1;
		otherwise:
			say "You hate the idea of anal [if the player is female]and vaginal [end if]sex so much that you just can't bring yourself you pay attention to [his of current-monster] tips.";
	otherwise:
		say "[bold type]You already know how to relax![roman type][line break]".

[!<TheRelaxSkillListRule>+

REQUIRES COMMENTING

+!]
This is the relaxskill list rule:
	if the relaxskill of the player is 1, say "You know how to relax your [if the player is possessing a vagina]vaginal muscles and [end if]sphincter during sex.".
The relaxskill list rule is listed in the skill listing rules.

[!<TheRelaxSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the relaxskill learn rule:
	if the relaxskill of the player is 0, say "You now know how to relax your [if the player is possessing a vagina]vaginal muscles and [end if]sphincter during sex.";
	now the relaxskill of the player is 1.
The relaxskill learn rule is listed in the skill cheating rules.

Part 8 - Invoking

[!<TeachInvoking>+

REQUIRES COMMENTING

+!]
To teach invoking:
	if the invokeskill of the player is 0:
		if the humiliation of the player > 8000:
			say "[bold type]**You have learned how to invoke elder gods!**[line break]By calling upon their power, you can [if the player-class is cultist]curse otherwise useless blessed clothing[otherwise]remove curses and bless the items on your person[end if].[roman type][line break]";
			now the invokeskill of the player is 1;
		otherwise:
			say "You have a bit too much self respect to turn your life over to a bunch of mystical mumbo-jumbo.";
	otherwise:
		say "[bold type]You already know how to invoke![roman type][line break]".

[!<TheInvokeSkillListRule>+

REQUIRES COMMENTING

+!]
This is the invokeskill list rule:
	if the invokeskill of the player is 1, say "You know how to invoke dark gods, allowing you to [if the player-class is cultist]curse otherwise useless blessed clothing[otherwise]remove curses and bless the items on your person[end if].".
The invokeskill list rule is listed in the skill listing rules.

[!<TheInvokeSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the invokeskill learn rule:
	if the invokeskill of the player is 0, say "You now know how to invoke dark gods.";
	now the invokeskill of the player is 1.
The invokeskill learn rule is listed in the skill cheating rules.

Part 9 - Fast Crafting

[!<TeachFastCrafting>+

REQUIRES COMMENTING

+!]
To teach fastcrafting:
	if the craftskill of the player is 0:
		if times-crafted > 0:
			say "[bold type]**You have learned how to preserve the magic energy of the alchemist's bowl!**[line break]When you craft an item, the table will be ready to use again twice as quickly.[roman type][line break]";
			now the craftskill of the player is 1;
		otherwise:
			let M be a random aeromancer;
			say "When you admit that you have no idea what [he of M] means by alchemy, [he of M] quickly shuts up.[line break][speech style of M]'Forget I said anything.'[roman type][line break]";
	otherwise:
		say "[bold type]You already know how to craft faster![roman type][line break]".

[!<TheCraftSkillListRule>+

REQUIRES COMMENTING

+!]
This is the craftskill list rule:
	if the craftskill of the player is 1, say "When you use the alchemist's bowl, it recharges much faster. It's all due to your skilful wrist action.".
The craftskill list rule is listed in the skill listing rules.

[!<TheCraftSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the craftskill learn rule:
	if the craftskill of the player is 0, say "When you use the alchemist's bowl, it recharges much faster.";
	now the craftskill of the player is 1.
The craftskill learn rule is listed in the skill cheating rules.

Part 9 - Better Alchemy

To teach betteralchemy:
	if the alchemyskill of the player is 0:
		if times-crafted > 0:
			say "[bold type]**You have learned improved alchemy skills!**[line break]When you craft an item (using the correct recipe), you have an increased chance of creating a blessed version.[roman type][line break]";
			now the alchemyskill of the player is 1;
		otherwise:
			say "You try to follow [his of Icarus] instructions, but because you don't really understand what [he of Icarus] is talking about, it's too much to comprehend.";
	otherwise:
		say "[bold type]You already have improved alchemy skills![roman type][line break]".

This is the alchemyskill list rule:
	if the alchemyskill of the player is 1, say "When you create an uncursed item using alchemy, you have an increased chance of making a blessed version.".
The alchemyskill list rule is listed in the skill listing rules.

This is the alchemyskill learn rule:
	if the alchemyskill of the player is 0, say "When you create an uncursed item using alchemy, you have an increased chance of making a blessed version.";
	now the alchemyskill of the player is 1.
The alchemyskill learn rule is listed in the skill cheating rules.

Part 10 - Wish Enhancing

[!<TeachWishEnhancing>+

REQUIRES COMMENTING

+!]
To teach wishenhancing:
	if the wishskill of the player is 0:
		say "[bold type]**You have learned how to improve your odds of wishing for things successfully!**[line break][if wellwishes > 0]From now on when you drop jewellery into the well, there is a lower chance of the wish being denied.[otherwise]Now if only you could find a well to try this out on...[end if][roman type][line break]";
		now the wishskill of the player is 1;
	otherwise:
		say "[bold type]You have already improved your odds of successful wishes![roman type][line break]".

[!<TheWishSkillListRule>+

REQUIRES COMMENTING

+!]
This is the wishskill list rule:
	if the wishskill of the player is 1, say "When you use the wishing well, you are more likely to have a wish granted.".
The wishskill list rule is listed in the skill listing rules.

[!<TheWishSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the wishskill learn rule:
	if the wishskill of the player is 0, say "When you use the wishing well, you are now more likely to have a wish granted.";
	now the wishskill of the player is 1.
The wishskill learn rule is listed in the skill cheating rules.

Part 11 - Fuck Skill

[!<TeachFuckSkill>+

REQUIRES COMMENTING

+!]
To teach fuckskill:
	if the fuckskill of the player is 0:
		if the player is a pervert or the size of penis < 4:
			say "[bold type]**You have learned how to hide your submissiveness from the people around you!**[line break]From now on, you[']ll find it a lot easier to find a way of having dominant sex![roman type][line break]";
			now the fuckskill of the player is 1;
		otherwise:
			say "You don[']t feel much like a slut, so you don[']t really see how this advice would be useful for you.";
	otherwise:
		say "[bold type]You[']ve already learned how to hide your inner submissive![roman type]".

[!<TheFuckSkillListRule>+

REQUIRES COMMENTING

+!]
This is the fuckskill list rule:
	if the fuckskill of the player is 1, say "When you try to have dominant sex, you have less chance of failing on account of your sex addiction.".
The fuckskill list rule is listed in the skill listing rules.

[!<TheFuckskillLearnRule>+

REQUIRES COMMENTING

+!]
This is the fuckskill learn rule:
	if the fuckskill of the player is 0, say "When you try to have dominant sex, you are now just as likely to succeed regardless of sex addiction.";
	now the fuckskill of the player is 1.
The fuckskill learn rule is listed in the skill cheating rules.

Part 12 - Skill Listing

[!<skillListing:Action>*

REQUIRES COMMENTING

*!]
Skill Listing is an action applying to nothing.

[!<CarryOutSkillListing>+

REQUIRES COMMENTING

+!]
Carry out Skill Listing:
	say "[bold type]LEARNED SKILLS:[roman type][line break]";
	follow the skill listing rules.
Understand "recall skills", "skills", "memorised skills", "known skills", "skill" as skill listing.

Part 13 - Quest Listing

[!<questListingRules:Rulebook>*

REQUIRES COMMENTING

*!]
The quest listing rules is a rulebook.

[!<questListing:Action>*

REQUIRES COMMENTING

*!]
Quest Listing is an action applying to nothing.

[!<CarryOutQuestListing>+

REQUIRES COMMENTING

+!]
Carry out Quest Listing:
	say "[bold type]ACTIVE QUESTS:[roman type][line break]";
	follow the quest listing rules.
Understand "recall quests", "quests", "quest" as quest listing.

[!<TheMindFlayerQuestListRule>+

REQUIRES COMMENTING

+!]
This is the mindflayer quest list rule:
	if mindflayer spawned is 1 and mindflayer quest is 0:
		say "Mind Flayer: You have been asked to kill a bugged-out monster.".
The mindflayer quest list rule is listed in the quest listing rules.

[!<TheMechanicQuestListRule>+

REQUIRES COMMENTING

+!]
This is the mechanic quest list rule:
	if there is a worn steel collar:
		say "The Steel Collar: You have been asked to collect a magic amulet by a rude mechanic.".
The mechanic quest list rule is listed in the quest listing rules.

[!<TheDoomedQuestListRule>+

REQUIRES COMMENTING

+!]
This is the doomed quest list rule:
	if the doom-warned of witch is 1:
		say "Doom: A witch has warned you of a terrible doom coming, and asked you to collect a bell, book, and candle.";
	otherwise if doom counter > 0:
		say "Doom: You have a sense of impending doom.".
The doomed quest list rule is listed in the quest listing rules.

[!<TheWhisperQuestListRule>+

REQUIRES COMMENTING

+!]
This is the whisper quest list rule:
	let W be whisper-type;
	if W is 1:
		say "Whispers: The [great one]s command you to present yourself at their altar beyond the mansion.";
	if W is 2:
		say "Whispers: The [great one]s command you to place a cursed item on their altar beyond the mansion.";
	if W is 3:
		say "Whispers: The [great one]s command you to consume semen.";
	if W is 4:
		say "Whispers: The [great one]s command you to fill your ass with semen.".
The whisper quest list rule is listed in the quest listing rules.

Part 14 - First Aid Skill

[!<TheFirstAidSkillListRule>+

REQUIRES COMMENTING

+!]
This is the firstaidskill list rule:
	if background-nurse is 1, say "You have been trained in first aid, and can sometimes manage to scrounge up some materials that can help keep you healthy.".
The firstaidskill list rule is listed in the skill listing rules.

Part 15 - Milk Skill

To teach milkskill:
	if the milkskill of the player is 0 and lactation fetish is 1:
		if the milk volume of breasts > 0:
			say "[second custom style]'Well, if you have large enough breasts, have you ever considered that you could pull them up to your mouth and drink the [milk] from them? It's healthy and natural!'[line break]";
			say "[bold type]You've learned how to drink from your own breasts! By typing 'drink breasts' you can now consume [milk] from your breasts as long as they are big enough and your nipples are easily accessed. This can quench your thirst and make exercise more effective, but is quite a humiliating act to perform![roman type]";
			now the milkskill of the player is 1;
		otherwise:
			say "[second custom style]'Nope, sorry, nothing that would be useful to you at this moment!'[roman type]";
	otherwise if the milkskill of the player is 1:
		say "[second custom style]'Nope, sorry, I've taught you the only useful thing I know!'[roman type]";
	otherwise:
		say "[second custom style]'Nope, sorry, judging from your sexual preferences I can't think of anything you'd want to know about!'[roman type]".

This is the milkskill list rule:
	if the milkskill of the player is 1, say "You know how to drink from your own breasts.".
The milkskill list rule is listed in the skill listing rules.

This is the milkskill learn rule:
	if lactation fetish is 1:
		if the milkskill of the player is 0, say "You now know how to drink your own breast-milk.";
		now the milkskill of the player is 1.
The milkskill learn rule is listed in the skill cheating rules.

Part 16 - Butt Skill

To teach buttskill:
	if the buttskill of the player is 0:
		if (there is a worn chastity cage or the anal sex addiction of the player > 3 or the player is barbie) and the player is ashamed:
			say "[bold type]**You have learned how to masturbate anally**[roman type]";
			now the buttskill of the player is 1;
		otherwise:
			say "You [if the player is ashamed]can already masturbate the normal way, so you don't see the usefulness of this tip. Maybe you'd pay more attention if you had fewer options.[otherwise]have no intention of degrading yourself like that, so you ignore the advice![end if]".

This is the buttskill list rule:
	if the buttskill of the player is 1, say "You know how to masturbate anally".
The buttskill list rule is listed in the skill listing rules.

This is the buttskill learn rule:
	if the player is the donator:
		if the buttskill of the player is 0, say "You now know how to masturbate anally.";
		now the buttskill of the player is 1.
The buttskill learn rule is listed in the skill cheating rules.

Part 17 - Domination Skill

To teach divinationskill:
	if the divinationskill of the player is 0:
		say "[big he of current-monster] launches into a very long complicated explanation you don't fully understand, but manage to follow, mostly. [bold type]**You have learned how to read the flow of magic!**[line break]From now on, you[']ll find it a lot easier to find a way to have dominant sex![roman type][line break]";
		now the divinationskill of the player is 1;
		[otherwise:
			say "[big he of current-monster] launches into a very long complicated explanation you don't really understand, and although you're nodding along, when [he of current-monster]'s finished talking you feel like you haven't really learned anything.";]
	otherwise:
		say "[bold type]You[']ve already learned how to read the flow of magic![roman type]".

This is the divinationskill list rule:
	if the divinationskill of the player is 1, say "You are able to read the flow of magic, and sense what type of monsters will emerge from portals.".
The divinationskill list rule is listed in the skill listing rules.

This is the divinationskill learn rule:
	if the divinationskill of the player is 0, say "When you try to have dominant sex, you are now just as likely to succeed regardless of sex addiction.";
	now the divinationskill of the player is 1.
The divinationskill learn rule is listed in the skill cheating rules.

Part 18 - Safe Floating

[!<TeachSafeFloating>+

REQUIRES COMMENTING

+!]
To teach safefloating from (M - a monster):
	say "[speech style of M]'There are some tricks to keeping hold of your items while floating. Let me show you...'[roman type][line break]";
	if the floatskill of the player is 0:
		say "[bold type]**You have learned how to hold onto your items while floating!**[roman type][line break]";
		now the floatskill of the player is 1;
	otherwise:
		say "[speech style of M]'...Oh, I've already shown you that? Well then perhaps you'll be interested in how to cast a spell to let you fly whenever you want? If you point at yourself like this, and say the words...'[roman type][line break]";
		if magic-inflating is uncastable:
			compute learning of magic-inflating;
		otherwise:
			say "You actually already know this spell! Do you want to try to take [NameDesc of M] by surprise and overpower [him of M]?";
			if the player is consenting:
				say "You say the words at the same time as [NameDesc of M], and focus your energy on [him of M]:[line break][variable custom style]'I [incantation of magic-inflating]!'[roman type][line break]";
				if MagicPowerDamage > a random number between 0 and 2:
					say "As the magic flows from your fingertips into [his of M] breasts, you can feel [him of M] lose control of the spell.[line break][speech style of M]'What? NO!'[roman type][line break]But it's too late - [his of M] body is expanding rapidly to stupid sizes! It's only a moment before [he of M][']s soaring up and away into the air. In [his of M] panic, [he of M] drops [his of M] wand! Without that, [he of M] can't reverse the spell! [big he of M] floats further and further away into the sky, probably gone for good.";
					destroy M;
					let P be a random off-stage golden phallus;
					if P is a thing:
						now P is in the location of the player;
						compute autotaking P;
				otherwise:
					say "As the magic flows from your fingertips into [his of M] breasts, you can feel [him of M] almost lose control of the spell. But your magic isn't strong enough, and [he of M] manages to retain control![line break][speech style of M]'What was that? You were trying to overpower me, weren't you? You [bitch]!'[roman type][line break]";
					anger M;
					say "[BigNameDesc of M] takes advantage of your magic fatigue[if the player is not wrist bound] and summons cuffs around your wrists. They're now bound behind you[end if][if face is not actually occupied]! A bit gag appears in your mouth[end if]! [big he of M] presses [his of M] wand to your chest and starts the spell... and [big he of M][']s not stopping!";
					cutshow figure of aeromancer cutscene 7 for M;
					if the player is not wrist bound:
						let W be a random off-stage wrist bond;
						if pair of wristcuffs is off-stage, now W is pair of wristcuffs;
						if W is wrist bond:
							summon W locked;
							now W is wrist-bound-behind;
					let G be a random bit gag;
					if G is actually summonable:
						summon G locked;
					BustInflate 100;
			otherwise:
				say "You decide against it.".

[!<TheFloatSkillListRule>+

REQUIRES COMMENTING

+!]
This is the floatskill list rule:
	if the floatskill of the player is 1, say "When you become lighter than air, you won't drop your items.".
The floatskill list rule is listed in the skill listing rules.

[!<TheFloatSkillLearnRule>+

REQUIRES COMMENTING

+!]
This is the floatskill learn rule:
	if the floatskill of the player is 0, say "When you become lighter than air, you won't drop your items.";
	now the floatskill of the player is 1.
The floatskill learn rule is listed in the skill cheating rules.

Skills ends here.
