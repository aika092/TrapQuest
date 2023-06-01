Plugging by Actions begins here.

Plugging it with is an action applying to two things.
Understand "plug [something] with [something]" as plugging it with.
Check plugging something with:
	if the noun is not a fuckhole, say "[if the noun is an orifice]That orifice cannot be plugged in this way.[otherwise]How would you plug that?[end if]" instead;
	if the noun is vagina and the player is not possessing a vagina, say "You don't have a vagina." instead;
	if the second noun is not an insertable thing, say "The [printed name of second noun] cannot be inserted into your [noun]." instead;
	if the second noun is clothing:
		if the second noun is not sex toy and the second noun is not dildo sword, try wearing the second noun instead;
	if the noun is vagina and the second noun is egg:
		if the player is in a predicament room, say "It would just fall straight back out." instead;
		if the pregnancy of the player is 1 or the pregnancy of the player is 2, say "There's already something occupying your womb." instead;
		if the total egg count of vagina is 0, say "[variable custom style][if the player is a nympho]Unfortunately, my[otherwise]my[end if] cervix doesn't just stretch like a butthole when I try to shove something up there. That wouldn't work." instead;
		if (the second noun is large egg and the large egg count of vagina is 0) or (the second noun is medium egg and the medium egg count of vagina is 0 and the large egg count of vagina is 0), say "[variable custom style]My cervix is stretched, but not THAT stretched...[roman type][line break]" instead;
		if the total egg volume of vagina > the sex addiction of the player, say "[variable custom style][if the player is a nympho]Sadly, I don't think I can fit any more inside without injuring myself...[otherwise]I can't bring myself to fill my poor womb any further than that...[end if][roman type][line break]" instead;
	if the noun is vagina and (the second noun is prostate massager plug or the second noun is anal beads), say "[variable custom style]I think that's for my [asshole] only. It would be a horribly uncomfortable shape to have inside my [vagina].[roman type][line break]" instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the noun is actually occupied and the second noun is not penetrating the noun, say "Your [noun] is already occupied by the [printed name of random object filling noun]." instead;
	if the second noun is penetrating an orifice:
		if the second noun is anal beads and the second noun is penetrating the noun:
			if the notch-taken of the second noun >= the notches of the second noun, say "All the beads are already inside you." instead;
		otherwise:
			say "The [printed name of second noun] is already inside you." instead;
	if the noun is asshole and the player is ass protected, say "Your [random top level ass protection clothing] is in the way." instead;
	if the noun is vagina and the player is pussy protected, say "Your [random top level protection clothing] is in the way." instead;
	if the player is in danger, say "You can't put that in right now, you have to defend yourself against the [random unfriendly interested monster in the location of the player]!" instead;
	if the second noun is egg:
		now stat-to-set is the substituted form of "small egg [noun]";
		if the second noun is medium egg, now stat-to-set is the substituted form of "medium egg [noun]";
		if the second noun is large egg, now stat-to-set is the substituted form of "large egg [noun]";
		say "How many? ";
		do nothing instead;
	if the girth of the second noun > the insertableGirthAcceptance of the noun:
		if debugmode is 0 and (the second noun is not anal beads or the soreness of the noun is 10):
			if the second noun is anal beads and the second noun is worn, say "There's just no way [if the girth of the second noun > the openness of the noun + 5]more of them would fit[otherwise]you could bring yourself to try and push any more of them into your poor [variable noun][end if] while your [variable noun] is this sore!" instead;
			otherwise say "There's just no way [if the girth of the second noun > the openness of the noun + 5]it would fit, it's way too big[otherwise]you could bring yourself to try and push something so big inside of your poor [variable noun][end if][if noun is anal beads] while your [variable noun] is this sore[end if]!" instead;
		otherwise:
			if the second noun is players-detached-dick: [#LXorDD]
				say "[one of]You can hardly believe you're about to use your own [DetachedPenis] on yourself - yet at the same time, just from the pleasurable feelings from your fingers rubbing it that shiver up through you, you can hardly wait to do so![or]Once again you're about to use your own [DetachedPenis] to doubly pleasure yourself. Doubly, because you get to feel both the penetration, and being penetrated at the same time. You squirm in anticipation.[or]You can hardly wait for the doubled feelings of pleasure, fucker and fuckee at the same time![or][variable custom style]'Ooh, yeah, do me [NameBimbo], while I do you!'[roman type][line break][or][variable custom style]Yum, double pleasure coming up![roman type][stopping][line break]";
				if the size of the second noun is 0:
					say "[one of]You delicately stick the penis decal just above your [ShortDesc of the noun], and as hoped for, feel it warm up and tingle, as if you'd really inserted an actual dick. Albeit a tiny one.[or]You stick the dick decal above your [ShortDesc of the noun] and feel the pleasure begin again.[stopping]";
				otherwise:
					[Clumsiness proportional to latex TF. At TF 1, 8/9 chance success; at TF8, 1/9 chance of success.]
					if a random number between (9 - the latex-transformation of the player) and 9 is 9:
						if the size of the second noun < 3:
							say "You bite your lip, partly in humiliation at just how small your [ShortDesc of the second noun] is, but mainly from the delightfully doubled sensation.";
						otherwise if the size of the second noun > 8:
							say "You relax your [variable noun] as much as you can to try and push your own [ShortDesc of the second noun] inside yourself, eyes fluttering from the doubled pleasure.";
						passively stimulate the noun from players-detached-dick;
					otherwise:
						say "Your [LatexFlav]hands [one of]clumsily slipped[or]fumbled[in random order] [one of]it[or]in the attempt[or]and failed[in random order] that time.";
						if a random number between (9 - the latex-transformation of the player) and 12 >= 9:
							say "Oops - you dropped your dick on the ground!";
							now the players-detached-dick is in the location of the player;
						allocate 2 seconds instead;
			otherwise:
				say "You relax your [variable noun] as much as you can to try and push the [ShortDesc of the second noun] inside of you.".

Carry out plugging something with:
	allocate arm use;
	allocate 6 seconds;
	moderateHumiliate;
	compute toyInsertion of the second noun into the noun;
	unless the second noun is worn:
		if the second noun is penetrating the noun, now the second noun is worn by the player;
	if the second noun is cursed:
		say "As you finish inserting [NameDesc of the second noun], you feel it become[if the second noun is unsure]... stuck?! Uh-oh, it seems like it has a magic curse...[otherwise] stuck as the magic curse takes effect.[end if]";
	now the second noun is sure;
	if the second noun is clothing, now the second noun is identified.

To compute toyInsertion of (S - a thing) into (F - a fuckhole):
	now S is penetrating F;
	compute insertionRuin of S into F;
	compute uniqueToyInsertion of S into F.

To compute uniqueToyInsertion of (S - a thing) into (F - a fuckhole):
	do nothing.

To compute insertionRuin of (S - a thing) into (F - a fuckhole):
	if S is players-detached-dick and the size of S is 0:
		if players-dick-is-detached is 2: [#LXorDD: when it's 2, it's stuck to the bottom of a normal dildo]
			say "Of course you can't insert the penis decal, so you reverse it and instead use the normal-sized dildo it's stuck to the base of.";
		otherwise:
			say "You can't actually insert the penis decal, but you press the thin disc down just below your [variable F], where it sticks nicely, sending little tingles through you in a kind of ghostly echo of penetration.";
	if the girth of S > the openness of F + 2:
		say "The [MediumDesc of S] [if the girth of S > the openness of F + 4]is so large compared to the openness of your [variable F] that it hurts a bit just to put[otherwise]stretches you as you put[end if] it in.";
		ruin F;
		if the girth of S > the openness of F + 4, ruin F;
	otherwise if the girth of S > the openness of F:
		say "Oof! You definitely felt that as you pushed it inside.";
		passively stimulate F from S;
	otherwise:
		say "Your [variable F] is loose enough to let the [MediumDesc of S] slip in easily.".

To compute removalRuin of (S - a thing) from (F - a fuckhole):
	if the girth of S > the openness of F + 4:
		say "The [MediumDesc of S] is so large compared to the openness of your [variable F] that it hurts [if the girth of S > the openness of F + 5]a lot as you[otherwise]just to[end if] remove it.";
		ruin F times 2;
		PainUp 10 * (the girth of S - (the openness of F + 3));
	otherwise if the girth of S > the openness of F + 2:
		say "The [MediumDesc of S] stretches you as you remove it.";
		ruin F;
	otherwise if the girth of S > the openness of F:
		say "Oof! You definitely felt that as you pulled it out.";
		passively stimulate F from S;
	otherwise:
		say "Your [variable F] is loose enough to let the [MediumDesc of S] slip out easily.".

Unplugging is an action applying to one thing.
Understand "unplug [something]", "pull [something]" as unplugging.
Check unplugging something:
	if the noun is not worn and the noun is sword, try taking the noun instead;
	if the noun is not an insertable object, say "I didn't understand what you wanted to do with [NameDesc of noun], since it's not an insertable object." instead;
	if the noun is not penetrating a body part, say "[if the noun is worn]That is not removed like this, try [bold type]removing[roman type] it instead[otherwise]That is not inside of you[end if]." instead;
	if the noun is penetrating a fuckhole and portal-hotpants is worn:
		unless the player is in Hotel44 and pimp is not in Hotel44, say "[if the player is in Hotel44][BigNameDesc of the pimp] won't let you do that[otherwise]You can't get to your [random fuckhole penetrated by the noun] right now, since it is in the [Hotel44][end if]!" instead;
	if the noun is maybe-cursed and the class of the player is not cultist and the noun is not dildo sword: [dildo swords come straight back out]
		if the noun is sure and the noun is worn, say "It refuses to budge, it's like it's glued inside! It must be the curse..." instead;
		if the noun is worn:
			now the noun is sure;
			say "It refuses to budge, it's like it's glued inside! It must be cursed..." instead;
	[#LXorDD NB this also makes it harder for a mostly-latex-transformed player from extracting a plug, especially their own detached dick, from pussy or arse? It's addressed by some changes to check unplugging.]
	if the latex-transformation of the player > 5: [#LXorDD]
		if the latex-transformation of the player is 8:
			say "[one of]You can't even feel whether you're touching it.[or]You think you've got a grip on it, but without thumbs, you're not sure you can apply enough pressure.[or]If only your fingers weren't so numb![in random order]";
		otherwise:
			say "[one of]Your rubbery, numbed fingers struggle to maintain their grip[or]You struggle to get a proper grip with your plastic-y fingers[or]It's trying to slip from your grip[in random order].";
		[Clumsiness proportional to latex TF. At TF 1, 8/9 chance success; at TF 8, 1/9 chance of success.]
		unless a random number between (9 - the latex-transformation of the player) and 9 is 9:
			say "Your [LatexFlav]hands [one of]clumsily slipped[or]fumbled[or]failed to get a grip[in random order] that time.";
			allocate 2 seconds instead;
	if the noun is penetrating asshole and the player is ass protected, say "You need to get your [random bottom level ass protection clothing] out of the way first." instead;
	if (the noun is penetrating vagina or the noun is penetrating penis) and the player is pussy protected, say "You need to get your [random bottom level protection clothing] out of the way first." instead;
	if the noun is glued, try tearing off the noun instead;
	if diaper quest is 0 and the noun is plug and the noun is penetrating a fuckhole and the girth of the noun > the insertableGirthAcceptance of a random fuckhole penetrated by the noun + 4:
		say "You push with your [random fuckhole penetrated by the noun][']s muscles and [if the noun is anal beads]pull on the cord of [NameDesc of noun], but they're just so big that they[otherwise]pull on the base of [NameDesc of noun], but the plug's bulb is so big that it[end if] just won't come out!" instead.

Carry out unplugging something:
	allocate arm use;
	allocate 6 seconds;
	let F be a random body part penetrated by the noun;
	if the noun is anal beads:
		do nothing instead; [Important! Anal beads has its own unplugging function]
	otherwise:
		if F is penis:
			say "You take [NameDesc of the noun] off of your [ShortDesc of penis].";
		otherwise:
			let M be a random combative monster;
			if M is monster:
				say "Blood rushes to your head as you feel incredibly humiliated, submissively pulling [NameDesc of noun] out of your fuckhole to make it available for [NameDesc of M]. Your cheeks turn a beetroot shade of red.";
				strongHumiliate;
				compute player submission;
			if F is face: [#LXorDD: the aeromancer can shove your detached dick into your mouth]
				say "[BigNameDesc of the noun] makes a loud 'SHLURP' as you pull it out of your [variable F], cleaning it as it emerges from your [LipDesc].";
			otherwise if the girth of the noun > the openness of F + 2:
				say "[BigNameDesc of the noun] makes a loud 'PLOP' as you pull it clean out of your [variable F].";
				ruin F;
			if the noun is players-detached-dick:
				if the size of the noun < 3:
					say "You bite your lip, partly in humiliation at just how small your [ShortDesc of the noun] is and how easy it was to pull it free, but mainly from the delightfully doubled sensation.";
				otherwise if the size of the noun > 8:
					say "Even after relaxing your [variable F] as much as you could, tugging free your own [ShortDesc of the noun] made your eyes flutter from the doubled pleasure.";
		dislodge the noun;
	[Clumsiness proportional to latex TF. At TF 0, 0 chance of failure; at TF 1, 1/5 chance failure; at TF 8, 9/12 chance of failure.]
	if a random number between (9 - the latex-transformation of the player) and 12 < 9:
		say "Oops - the [ShortDesc of the noun] slipped through your [LatexFlav]fingers! It falls to the ground.";
		now the noun is in the location of the player;
	otherwise:
		now the noun is carried by the player.

Report unplugging something:
	if the noun is dildo sword and the raw-magic-modifier of the noun < 5:
		say "As you pull it out, it glows strongly. It feels more powerful, as least for now!";
		now the raw-magic-modifier of the noun is 5;
	otherwise if the number of body parts penetrated by the noun < 1:
		say "Successfully removed.".

Plugging ends here.
