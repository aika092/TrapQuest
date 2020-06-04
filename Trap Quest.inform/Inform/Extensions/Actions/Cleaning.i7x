Cleaning by Actions begins here.

The can't rub another person rule is not listed in the check rubbing rulebook.
The report rubbing rule is not listed in the report rubbing rulebook.

ragFound is an object that varies.

[!<CheckRubbing>+

REQUIRES COMMENTING

+!]
Check rubbing:
	if the noun is body part:
		compute RagFinding;
		if ragFound is a thing, try cleaning the noun with ragFound instead;
		do nothing instead;
	unless the noun is magic lamp, say "You should use the [if the noun is glue]phrase 'brush glue with (object)'[otherwise]phrase '(clean/wipe) (body part) with (object/fingers)'[end if] instead." instead.

[!<cleaningItWith:Action>*

REQUIRES COMMENTING

*!]
Cleaning it with is an action applying to two things.

[!<AThingIsAppropriateForCleaning>+

REQUIRES COMMENTING

+!]
Definition: a thing (called C) is appropriate for cleaning:
	if C is not clothing, decide no;
	if C is condom of kings or C is fluid immune, decide no;
	decide yes.

Understand "clean", "clean me", "clean self", "wash", "wash me", "wash self", "wipe", "wipe me", "wipe self" as cleaning it with.
Understand "clean [something]", "wash [something]", "wipe [something]" as cleaning it with.
Understand "clean [something] with [something]", "wash [something] with [something]", "wipe [something] with [something]", "wipe [something] into [something]" as cleaning it with.

[!<RuleForSupplyingAMissingNounWhileCleaning>+

REQUIRES COMMENTING

+!]
Rule for supplying a missing noun while cleaning:
	if the semen coating of face > 0:
		now the noun is face;
	otherwise if the semen coating of hair > 0:
		now the noun is hair;
	otherwise if the semen coating of breasts > 0:
		now the noun is breasts;
	otherwise if the semen coating of belly > 0:
		now the noun is belly;
	otherwise if the semen coating of thighs > 0:
		now the noun is thighs;
	otherwise:
		say "You don't have any body parts that need cleaning.".

[!<RuleForSupplyingAMissingSecondNounWhileCleaning>+

REQUIRES COMMENTING

+!]
Rule for supplying a missing second noun while cleaning:
	compute RagFinding;
	if ragFound is not nothing, now the second noun is ragFound.

To compute RagFinding:
	now ragFound is nothing;
	if the semen taste addiction of the player >= 8 and the player is not overly full, now ragFound is arms;
	unless the player is disgraced and the semen taste addiction of the player > 11 and ragFound is arms:
		repeat with C running through carried clothing:
			if the total-soak of C < the soak-limit of C and C is appropriate for cleaning and ragFound is not clothing:
				say "(with the [printed name of C])[line break]";
				now RagFound is C;
	if RagFound is nothing and the semen taste addiction of the player >= 8, now the second noun is arms;
	if the noun is not body part:
		say "You can't clean that.";
	otherwise if RagFound is nothing and the noun is body part:
		say "You don't appear to have any appropriate items you could clean yourself with.".

[!<CheckCleaningItWith>+

REQUIRES COMMENTING

+!]
Check cleaning it with:[TODO: wiping into an open vessel]
	if the player is not able to manually use their hands, do nothing instead;
	if the player is immobile:
		if the noun is glue:
			[###Selkie: Hmm. This seems to cause a P47 "Phrase applied to an incompatible kind of value" when I tried "rub glue" which lead to cleaning the puddle of glue (Via "Rule for supplying a missing second noun while cleaning", above) with some denim jeans, and the game then said "You can only clean a body part".]
			try GlueRubbing the noun on the second noun instead;
		otherwise:
			say "You're a bit busy at the moment." instead;
	if the noun is clothing, try rinsing the noun in the second noun instead;
	if the noun is not body part, say "You can only clean a body part." instead;
	if diaper quest is 1, say "[if the make-up of face > 0 and the noun is face]That won't work, you'll need to wash in water[otherwise]That won't do anything[end if]." instead;
	if the noun is not face and the noun is not breasts and the noun is not belly and the noun is not thighs and the noun is not hair, say "You can only clean your face, hair, chest, belly or thighs at the moment." instead;
	if the noun is hair:
		if the semen coating of the noun is 1, say "You can't get that last bit of [semen] out of your hair just by rubbing, you'll need to wash yourself in water." instead;
		if the semen coating of the noun is 0 and the urine coating of the noun > 0, say "You can't get the [urine] out of your hair just by rubbing, you'll need to wash yourself in water." instead;
	if the semen coating of the noun < 1, say "Your [noun] [if noun is thighs or noun is breasts]are[otherwise]is[end if] already [semen] free." instead;
	if the class of the player is living sex doll, say "You don't have the manual dexterity to do that!" instead;
	if the second noun is not clothing and the second noun is not arms, say "That's not something you can clean with. Maybe try a piece of clothing?" instead;
	if the second noun is clothing:
		if the second noun is pink-spraybottle, say "That can only be used for cleaning puddles and clothing." instead;
		if the player is flying and the second noun is not held by the player, say "The [printed name of the second noun] is on the ground, and you're not." instead;
		if the second noun is not appropriate for cleaning, say "That's not something you can clean with. Maybe try a piece of clothing actually made out of soft fabric?" instead;
		if the semen-soak of the second noun + the urine-soak of the second noun + the milk-soak of the second noun >= the soak-limit of the second noun, say "The [printed name of second noun] is too covered in bodily fluids to effectively remove any more from your body." instead;
		if the second noun is worn and the second noun is not gloves, say "You are currently wearing the [printed name of second noun], so it would be difficult to clean yourself with it." instead;
	otherwise if the player is not craving semen: [i.e. If the second noun is arms]
		if the semen taste addiction of the player < 8 and the thirst of the player < 4, say "You can't bring yourself to do that[if the semen addiction of the player > 12]. And even if you did like the taste, you love the feeling of it too much to remove it[end if]!" instead;
	if the second noun is not acceptableCumRag:
		if the second noun is arms and the semen addiction of the player > 15 and the semen addiction of the player > the semen taste addiction of the player:
			say "You briefly consider wiping some of the [semen] off your [noun], but then you change your mind.[paragraph break][second custom style][one of]Sluts like me deserve to be covered in [semen]! I only get to drink it if there's extra left over.[or]It's more important for me to look like a slut than get to taste my favourite drink.[or][if the noun is face]How will guys know I want their [manly-penis] in my mouth don't have [semen] on my face? The best way to make sure I get to taste more cum is by keeping the stuff on my face there.[otherwise]I deserve to have this on my [noun]. Removing it would be unfair to the contributors.[end if][or]I like wearing it! No way am I wiping it off!, even if it is to taste it![or]If I want to taste [semen], I could convince a hunk to fuck my throat, not cheat by licking it off my body.[or]That would be cheating. I should find a cock to suck if I want a fix.[or]It would be more fun to let a guy cum in my ass, and then collect it in a cup. To lick cum off my own body would be too cheap and easy for a girl like me.[or]My body is all dirty and sweaty. I want to drink pure cum, straight from the tap.[or]I'm supposed to wear it, not drink it. I was naughty and this is my punishment[if the intelligence of the player > 13]. Semen, semen everywhere, through all my pores did shrink; semen, semen everywhere, nor any drop to drink. Ooh, that sounds like great idea for a poem! I'll call it 'The Rime of the Ancient Cum Guzzler'[end if].[in random order][roman type][line break]" instead;
		otherwise if the second noun is arms and face is actually occupied or (the player is not craving semen and the semen taste addiction of the player < 8 and the thirst of the player < 4):
			if face is actually occupied, say "You can't lick it up with something already in your mouth." instead;
			say "[variable custom style]No way am I wiping it up with my finger and swallowing it, [semen] is gross![roman type][line break]" instead;
		otherwise:
			say "You briefly consider wiping some of the [semen] off your [noun], but then you change your mind.[paragraph break][second custom style][one of]Sluts like me deserve to be covered in [semen]![or]I'm a dirty slut and I should look like one.[or][if the noun is face]How will guys know I'm an easy fuck if I don't have [semen] on my face?[otherwise]I didn't put it there, so I can't be sure I have permission to remove it.[end if][or]I deserve to have this on my [noun].[or]I like wearing it! No way am I wiping it off![or]I'm a whore, I deserve to be covered in it![or]A dirty whore like me should look the part![or]I'm a filthy slut, I deserve to be covered in [semen].[or]No way! I LIKE being dirty![or]I deserve to be covered in it. I'm a NAUGHTY girl![or]I'm supposed to wear it, I was naughty.[in random order][roman type][line break]" instead.

Definition: a thing (called T) is acceptableCumRag:
	if T is fluid immune clothing, decide no;
	if T is arms and face is actually occupied or (the player is not craving semen and the semen taste addiction of the player < 8 and the thirst of the player < 4), decide no;
	if the humiliation of the player > 28000 and the semen addiction of the player > 15 and ((the player is not craving semen and the player is not thirsty and the semen addiction of the player > the semen taste addiction of the player) or T is not arms), decide no;
	decide yes.

[!<CarryOutCleaningItWith>+

REQUIRES COMMENTING

+!]
Carry out cleaning it with:
	2Clean the noun with the second noun;

[!<2CleanBodyPartWithClothing>+

REQUIRES COMMENTING

+!]
To 2Clean (P - a body part) with (C - a clothing):
	say "You use [NameDesc of C] to clean as much [semen] from your [P] as possible.[if the semen addiction of the player < 6][line break][first custom style][one of]Gross.[or]Yuck.[or]Disgusting.[or]Well, that's a little bit better at least.[then at random][roman type][line break][end if]";
	while ((the semen coating of P > 0 and P is not hair) or the semen coating of P > 1) and the semen-soak of C + the urine-soak of C + the milk-soak of C < the soak-limit of C:
		decrease the semen coating of P by 1;
		let R be a random number between 1 and 2;
		decrease the water-soak of C by R;
		CumSoak R on C;
	if the water-soak of C < 0, now the water-soak of C is 0;
	if the semen coating of P is 0:
		say "Your [if P is face]face is[otherwise if P is hair]hair is[otherwise if P is belly]belly is[otherwise][variable P] are[end if] now completely clean.";
	otherwise if the semen coating of P is 1 and P is hair:
		say "Your hair is now almost completely clean, but you can't get every last strand of cum out without washing in water.";
	otherwise:
		say "[BigNameDesc of C] has become completely saturated and there is still [if the semen coating of P > 3]lots of[otherwise]some[end if] [semen] on your [if P is face]face[otherwise][variable P][end if].";
	allocate 6 seconds.

[!<2CleanBodyPartWithLimb>+

REQUIRES COMMENTING

+!]
To 2Clean (P - a body part) with (C - a limb):
	say "You use your fingers to scrape a bit of [semen] from your [P] and eat it.[if the semen taste addiction of the player > 11][line break][second custom style][one of]Mmm, tasty![or]Yummy![or]Yum yum![or]So good![then at random][roman type][line break][end if] ";
	let R be a random number between 2 and 4;
	if the semen coating of P < R, now R is the semen coating of P;
	decrease the semen coating of P by R;
	if semen taste addiction of the player > 14 and the semen coating of P < 1, say "[paragraph break][second custom style]Aww, too bad it's all gone now.[roman type][line break]";
	now semen-encountered is 1;
	StomachSemenUp (R + 1) / 2;
	allocate 6 seconds;
	humiliate 20 * R.

[!<ReportCleaningItWithWhenTheSecondNounIsClothing>+

REQUIRES COMMENTING

+!]
Report cleaning it with when the second noun is clothing:
	force inventory-focus redraw; [Forces redraw of inventory window]
	if the second noun is store and Dungeon41 is guarded and shopkeeper is not mating:
		if shopkeeper is interested:
			say "[speech style of shopkeeper]'Oi! I own that, don't use it as some kind of cum rag. GUARDS!'[roman type][line break]Looks like you're in trouble with the law!";
			anger shopkeeper;
			increase the stolen-aware of shopkeeper by 1;
		compute stealing of the second noun.

[!<CleanClothing>+

REQUIRES COMMENTING

+!]
To clean (C - a clothing):
	now the urine-soak of C is 0;
	now the milk-soak of C is 0;
	now the semen-soak of C is 0;
	if C is worn, update appearance level.

To fully clean (C - a clothing):
	WaterEmpty C;
	clean C.

Cleaning ends here.
