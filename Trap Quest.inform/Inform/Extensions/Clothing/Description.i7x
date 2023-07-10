Description by Clothing begins here.

To decide which figure-name is the clothing-image of (C - a clothing):
	decide on figure of no-image-yet.

To decide which figure-name is the examine-image of (C - a clothing):
	decide on the clothing-image of C.

To say ExamineDesc of (C - a clothing):
	say ClothingDesc of C.

[To say ImageDesc of (C - a clothing):
	if images visible is 1, appropriate-display examine-image of C for C with priority 3.]

To say MediumDesc of (C - a clothing):
	say AppearanceDesc of C;
	say ShortDesc of C.

To say AppearanceDesc of (C - a thing):
	say "".

To say MediumAppearanceDesc of (C - a thing):
	if C is carried, say "held ";
	say AppearanceDesc of C;
	say MediumDesc of C.

To say MediumAppearanceDesc of (C - a clothing):
	if C is carried, say "held ";
	say AppearanceDesc of C;
	say ShortDesc of C;
	if the used condoms of C > 0, say " with [used condoms of C] used condom[if the used condoms of C > 1]s[end if]".

To say AppearanceDesc of (C - a clothing):
	say DefaultAppearanceDesc of C.

To say AppearanceDesc of (C - a shoes):
	if C is external fluid immune:
		if C is tonguing, say "salivating and licking ";
		if the known-total-soak of C > 0:
			if the known-semen-soak of C >= the soak-limit of C:
				say "cum-filled ";
			otherwise if the known-urine-soak of C >= the soak-limit of C:
				say "piss-filled ";
			otherwise if the known-total-soak of C >= the soak-limit of C:
				say "filled ";
			otherwise if the known-semen-soak of C > the soak-limit of C / 2:
				say "half-cum-filled ";
			otherwise if the known-urine-soak of C > the soak-limit of C / 2:
				say "half-piss-filled ";
			otherwise if the known-total-soak of C > the soak-limit of C / 2:
				say "half-filled ";
			otherwise if the known-semen-soak of C > 0:
				say "cum-stained ";
			otherwise if the known-urine-soak of C > 0:
				say "pee-stained ";
			otherwise if the known-milk-soak of C > 0:
				say "milk-stained ";
			otherwise if the known-total-soak of C > the soak-limit of C / 5:
				say "wet ";
			otherwise:
				say "damp ";
	otherwise:
		say DefaultAppearanceDesc of C.


To say DefaultAppearanceDesc of (C - a clothing):
	if C is tonguing, say "salivating and licking ";
	if C is perceived messed knickers:
		say "messy ";
	otherwise if the known-total-soak of C > 0:
		if the known-semen-soak of C >= the soak-limit of C:
			say "cum-saturated ";
		otherwise if the known-urine-soak of C >= the soak-limit of C:
			say "piss-saturated ";
		otherwise if the known-total-soak of C >= the soak-limit of C:
			say "saturated ";
		otherwise if the known-semen-soak of C > the soak-limit of C / 2:
			say "cum-soaked ";
		otherwise if the known-urine-soak of C > the soak-limit of C / 2:
			say "piss-soaked ";
		otherwise if the known-total-soak of C > (the soak-limit of C * 7) / 10:
			say "soaked ";
		otherwise if the known-water-soak of C > the soak-limit of C / 2:
			say "soggy ";
		otherwise if the known-semen-soak of C > 0:
			say "cum-stained ";
		otherwise if the known-urine-soak of C > 0:
			say "pee-stained ";
		otherwise if the known-milk-soak of C > 0:
			say "milk-stained ";
		otherwise if the known-total-soak of C > the soak-limit of C / 5:
			say "wet ";
		otherwise:
			say "damp ".

[Here we will give hints to the player about the clothing.]

Report examining an exclusive clothing:
	if the noun is totally-exclusive:
		say "Somehow you can tell that this item is [bold type]exclusive[roman type], meaning you can't wear anything [if the noun is breast covering and the noun is belly exposing and the noun is crotch exposing]else on your top half[otherwise]on top of or underneath it[end if].";
	otherwise if the noun is top-exclusive:
		say "Somehow you can tell that this item is [bold type]top level[roman type], meaning you can't wear anything on top of it.";
	otherwise if the noun is bottom-exclusive:
		say "Somehow you can tell that this item is [bold type]skin-tight[roman type], meaning you can't wear anything underneath it[if diaper lover >= 1 and the noun is crotch covering], except a diaper[end if].";

Report examining a wearthing:
	if diaper quest is 1 and the adult-influence of the noun > 0:
		if the noun is identified maturity clothing, say "You can sense that this item [if the noun is worn]is helping[otherwise]could help[end if] you act like a grown up.";
		otherwise say "This item [if the noun is worn]is helping[otherwise]would make[end if] you look more like a grown up.";
	if debuginfo > 0:
		let U be the unworn outrage of the noun;
		if the noun is worn, now U is the outrage of the noun;
		let O be the initial outrage of the noun;
		say "[input-style]Outrageousness[if the noun is not worn] when worn[otherwise if the noun is not currently at least partially visible] (when visible)[end if]: [if O is not U and the noun is not tattoo]Raw value: [O]/20; After context & bonus modifiers[one of] (e.g. fluids, degrading attachments, being displaced, or being partially covered up)[or][stopping]: [end if][U]/20[roman type][line break]";
		if diaper quest is 1:
			let U be the unworn cringe of the noun;
			if the noun is worn, now U is the cringe of the noun;
			let O be the initial cringe of the noun;
			say "[input-style]Childishness[if the noun is not worn] when worn[otherwise if the noun is not currently at least partially visible] (when visible)[end if]: [if O is not U]Raw value: [O]/20; After context & bonus modifiers: [end if][U]/20[roman type][line break]";

[MG and Selkie actually got into an argument about this. It's referring to cellular respiration, rather than to the more commonly referenced physiological respiration.]
Report examining an identified respiration clothing:
	say "You can sense that this item [if the noun is worn]is speeding[otherwise]would speed[end if] up your metabolism.".

Report wearing clothing:
	if the noun is worn, say InfluenceDesc of the noun.

To say item of (C - a wearthing):
	say "item".
To say item of (C - a tattoo):
	say "tattoo".

To say InfluenceDesc of (C - a wearthing):
	if the strength-influence of C < 0, say "You can sense that this [item of C] is making you [if the strength-influence of C < -2]much [end if]weaker.";
	if the strength-influence of C > 0, say "You can sense that this [item of C] is making you [if the strength-influence of C > 2]much [end if]stronger.";
	if the dexterity-influence of C < 0, say "You can sense that this [item of C] is making you [if the dexterity-influence of C < -2]much [end if]less agile.";
	if the dexterity-influence of C > 0, say "You can sense that this [item of C] is making you [if the dexterity-influence of C > 2]much [end if]faster.";
	if C is speed clothing, say "You can sense that this [item of C] is making you much quicker at moving between rooms.";
	if the intelligence-influence of C < 0, say "You can sense that this [item of C] is making you [if the intelligence-influence of C < -2]much [end if]dumber.";
	if the intelligence-influence of C > 0, say "You can sense that this [item of C] is making you [if the intelligence-influence of C > 2]much [end if][smarter].";
	if the charisma-influence of C < 0, say "You can sense that this [item of C] is making you [if the charisma-influence of C < -1]much [end if]less charismatic.";
	if the charisma-influence of C > 0, say "You can sense that this [item of C] is making you [if the charisma-influence of C > 1]much [end if]more charismatic.";
	if diaper quest is 1:
		if the bimbo-influence of C < 0, say "You can sense that this [item of C] is making you [if the bimbo-influence of C < -1]much [end if]more sensible.";
		if the bimbo-influence of C > 0, say "You can sense that this [item of C] is making you act [if the bimbo-influence of C > 1]much [end if][if diaper quest is 1]girlier and more immature[otherwise]sluttier[end if].";
	if the vaginal-sex-addiction-influence of C < 0 and diaper quest is 0, say "You can sense that this [item of C] is [if the vaginal-sex-addiction-influence of C < -1]significantly [end if]suppressing any [if the vaginal sex addiction of the player < 3]weird [end if]carnal urges to [if the vaginalvirgin of the player is 1]lose your virginity[otherwise]get laid[end if].";
	if the vaginal-sex-addiction-influence of C > 0 and diaper quest is 0, say "You can sense that this [item of C] is making your [vagina] [if the vaginal-sex-addiction-influence of C > 1]a lot [end if]more [if the vaginalvirgin of the player is 1]desperate to lose its virginity[otherwise if the vaginal sex addiction of the player > 6]desperate to be filled[otherwise]eager to be filled[end if].";
	if the anal-sex-addiction-influence of C < 0 and diaper quest is 0, say "You can sense that this [item of C] is [if the anal-sex-addiction-influence of C < -1]significantly [end if][if the anal sex addiction of the player > 4]reducing your body's love of anal[otherwise if the analvirgin of the player is 1]helping you to suppress any urges to try out anal sex[otherwise]reducing your asshole's desire to be filled[end if].";
	if the anal-sex-addiction-influence of C > 0 and diaper quest is 0, say "You can sense that this [item of C] is making your [asshole] [if the anal-sex-addiction-influence of C > 1]a lot [end if]more [if the analvirgin of the player is 1]eager to be broken in[otherwise if the anal sex addiction of the player < 5]eager to be played with[otherwise]desperate to be used[end if].";
	if the oral-sex-addiction-influence of C < 0 and diaper quest is 0, say "You can sense that this [item of C] is [if the oral-sex-addiction-influence of C < -1]significantly [end if][if the oral sex addiction of the player > 4]reducing your body's love of oral sex[otherwise]reducing your mouth's desire to be filled[end if].";
	if the oral-sex-addiction-influence of C > 0 and diaper quest is 0, say "You can sense that this [item of C] is making your mouth [if the oral-sex-addiction-influence of C > 1]a lot [end if]more [if the oral sex addiction of the player < 5]eager to pleasure people[otherwise]desperate to be used to pleasure people[end if].";
	if the titfuck-addiction-influence of C < 0 and diaper quest is 0, say "You can sense that this [item of C] is [if the titfuck-addiction-influence of C < -1]significantly [end if][if the titfuck addiction of the player > 4]reducing your breasts['] desire to feel a big hard [manly-penis] thrust between them[otherwise]helping you suppress any weird pleasurable sensations you might get if you pleasured a man with your breasts[end if].";
	if the titfuck-addiction-influence of C > 0 and diaper quest is 0, say "You can sense that this [item of C] is making you feel [if the titfuck-addiction-influence of C > 1]a lot [end if]more sexual pleasure from [if the titfuck addiction of the player < 5]rubbing a [manly-penis] between your breasts[otherwise]worshipping a [manly-penis] with your tits[end if].";
	if the bbc-addiction-influence of C < 0 and interracial fetish is 1, say "You can sense that this [item of C] is [if the bbc-addiction-influence of C < -1]significantly [end if][if the BBC addiction of the player > 7]reducing your preference for [BlackCock][otherwise]helping you maintain your sexual preferences when it comes to race[end if].";
	if the bbc-addiction-influence of C > 0 and interracial fetish is 1, say "You can sense that this [item of C] is making you feel [if the bbc-addiction-influence of C > 1]a lot [end if]more [if the BBC addiction of the player < 13]interested in black [men of male-m][otherwise]addicted to [BlackCock][end if].";
	if the sex-addiction-influence of C < 0, say "You can sense that this [item of C] is [if the sex-addiction-influence of C < -1]significantly [end if][if diaper quest is 1]reducing your cravings for orgasms[otherwise if the sex addiction of the player > 7]reducing your [one of]cravings for orgasms[or]obsession with kinky sex acts[cycling][otherwise]helping you [one of]maintain a sensible, normal libido[or]suppress perverted thoughts[cycling][end if].";
	if the sex-addiction-influence of C > 0, say "You can sense that this [item of C] is making you [if diaper quest is 1]crave orgasms[otherwise if the sex addiction of the player > 7][one of]crave orgasms and sex[or]daydream about lewd acts[or]get aroused by perverse things[cycling][otherwise][one of]think about sex[or]think perverted thoughts[cycling][end if] [if the sex-addiction-influence of C > 1]a lot [end if]more.";
	if the semen-addiction-influence of C < 0 and diaper quest is 0, say "You can sense that this [item of C] is [if the semen-addiction-influence of C < -1]really [end if]helping you avoid any [if the semen addiction of the player < 4]weird [end if]temptations to experience [if the player is not possessing a vagina and the bimbo of the player < 10]anal [end if]creampies[if bukkake fetish is 1] and facials[end if].";
	if the semen-addiction-influence of C > 0 and diaper quest is 0, say "You can sense that this [item of C] is making you [if the semen-addiction-influence of C > 1]much [end if]more eager to get [if the player is not possessing a vagina and the bimbo of the player < 10]anally [end if]creampied[if bukkake fetish is 1] and covered in [semen][end if].";
	if the semen-taste-addiction-influence of C < 0 and diaper quest is 0, say "You can sense that this [item of C] is [if the semen-taste-addiction-influence of C < -1]really [end if]helping you [if the semen taste addiction of the player < 6]avoid any weird temptations[otherwise]resist the urge[end if] to [if the semen taste addiction of the player < 8]taste semen[otherwise]drink [semen][end if].";
	if the semen-taste-addiction-influence of C > 0 and diaper quest is 0, say "You can sense that this [item of C] is making you [if the semen-taste-addiction-influence of C > 1]much [end if]more eager to [if the semen taste addiction of the player > 8]drink[otherwise]taste[end if] [semen].";
	if the urine-taste-addiction-influence of C < 0 and diaper quest is 0, say "You can sense that this [item of C] is [if the urine-taste-addiction-influence of C < -1]really [end if]helping you [if the urine taste addiction of the player < 6]avoid any weird temptations[otherwise]resist the urge[end if] to [if the urine taste addiction of the player < 8]taste urine[otherwise]drink piss[end if].";
	if the urine-taste-addiction-influence of C > 0 and diaper quest is 0, say "You can sense that this [item of C] is making you [if the urine-taste-addiction-influence of C > 1]much [end if]more eager to [if the urine taste addiction of the player > 8]drink[otherwise]taste[end if] [urine].";
	if the milk-taste-addiction-influence of C < 0, say "You can sense that this [item of C] is [if the milk-taste-addiction-influence of C < -1]really [end if]helping you [if the milk taste addiction of the player < 6]avoid any weird temptations[otherwise]resist the urge[end if] to [if the milk taste addiction of the player < 8]drink lots of breast milk[otherwise]drink loads of milk no matter where it has come from[end if].";
	if the milk-taste-addiction-influence of C > 0, say "You can sense that this [item of C] is making you [if the milk-taste-addiction-influence of C > 1]much [end if]more eager to [if the milk taste addiction of the player > 8]drink[otherwise]taste[end if] breast milk[if the milk taste addiction of the player > 9] and ass-milk[end if].";
	if the grossness-addiction-influence of C < 0, say "You can sense that this [item of C] is making you [if the grossness-addiction-influence of C < -1]much [end if]less tolerant of gross sensations.";
	if the grossness-addiction-influence of C > 0, say "You can sense that this [item of C] is making you [if the grossness-addiction-influence of C > 1]much [end if]more [if the grossness addiction of the player < 10]tolerant of[otherwise]aroused by[end if] [DetailedGrossStuff].";
	if the heel-skill-influence of C < 0 and there are worn heels, say "You can sense that this [item of C] is making you [if the heel-skill-influence of C < -1]much [end if]more unsteady in heels.";
	if the heel-skill-influence of C > 0 and there are worn heels, say "You can sense that this [item of C] is making you [if the heel-skill-influence of C > 1]much [end if]more steady in heels.";
	if the humiliation-influence of C < 0, say "You can sense that this [item of C] is making you [if the humiliation-influence of C < -1]much [end if]more susceptible to humiliation.";
	if the humiliation-influence of C > 0, say "You can sense that this [item of C] is making you [if the humiliation-influence of C > 1]much [end if]better at coping with humiliation.";
	if the delicateness-influence of C < 0, say "You can sense that this [item of C] is making you [if the delicateness-influence of C < -1]much [end if][one of]better at coping with pain[or]more dominant[cycling].";
	if the delicateness-influence of C > 0, say "You can sense that this [item of C] is making you [if the delicateness-influence of C > 1]much [end if][one of]less tolerant of pain[or]more submissive[cycling].";
	if diaper quest is 0:
		if the soreness-influence of C < 0, say "You can sense that this [item of C] is making you get sore [if the soreness-influence of C < -2]much [end if]more quickly.";
		if the soreness-influence of C > 0, say "You can sense that this [item of C] is helping you get sore [if the soreness-influence of C > 2]much [end if]more slowly.";
	if the fatigue-influence of C < 0, say "You can sense that this [item of C] is [if the fatigue-influence of C < -2]greatly [end if]improving your stamina.";
	if the fatigue-influence of C > 0, say "You can sense that this [item of C] is [if the fatigue-influence of C < -2]greatly [end if]reducing your stamina.";
	if diaper lover > 0:
		if the diaper-addiction-influence of C < 0, say "You can sense that this [item of C] is [if the diaper-addiction-influence of C < -1]significantly [end if][if the diaper addiction of the player < 5 and there is a worn diaper]suppressing any thoughts of you enjoying wearing your diaper[otherwise if the diaper addiction of the player < 5]helping you avoid any weird temptations to wear a diaper[otherwise if the diaper addiction of the player < 8]reducing the amount you enjoy wearing and using diapers[otherwise]helping to curb your addiction to wearing and using diapers[end if].";
		if the diaper-addiction-influence of C > 0, say "You can sense that this [item of C] is making you enjoy [unless there is a worn diaper or the diaper addiction of the player > 6]the idea of [end if]wearing and using diapers [if the diaper-addiction-influence of C > 1]a lot [end if]more.";
		if the bladder-incontinence-influence of C > 0, say "You can sense that this [item of C] is making it [if the bladder-incontinence-influence of C > 1]much [end if]more difficult for you to hold onto your bladder.";
		if the bladder-incontinence-influence of C < 0, say "You can sense that this [item of C] is making you [if the bladder-incontinence-influence of C < 1]significantly [end if]better at avoiding wetting yourself.";
		if diaper messing >= 3:
			if the rectum-incontinence-influence of C > 0, say "You can sense that this [item of C] is making it [if the rectum-incontinence-influence of C > 1]much [end if]more difficult for you to hold it when you need to poop.";
			if the rectum-incontinence-influence of C < 0, say "You can sense that this [item of C] is making you [if the rectum-incontinence-influence of C < 1]significantly [end if]better at avoiding messing yourself.";
	if the knee-modifier of C < 0 and there are worn stockings, say "You can sense that this [item of C] is making your knee attacks [if the knee-modifier of C < -1]much [end if]weaker.";
	if the knee-modifier of C > 0 and there are worn stockings, say "You can sense that this [item of C] is making your knee attacks [if the knee-modifier of C > 1]much [end if]stronger.";
	if the anal sensitivity influence of C > 0 and diaper quest is 0, say "You feel like this [item of C] is making your [asshole] [if the anal sensitivity influence of C > 1]much [end if]more receptive to pleasurable stimulation.";
	if the anal sensitivity influence of C < 0 and diaper quest is 0, say "You feel like this [item of C] is making your [asshole] [if the anal sensitivity influence of C < -1]much [end if]less likely to make you cum from stimulation.";
	if the vaginal sensitivity influence of C > 0 and diaper quest is 0, say "You feel like this [item of C] is making your [vagina] [if the vaginal sensitivity influence of C > 1]much [end if]more receptive to pleasurable stimulation.";
	if the vaginal sensitivity influence of C < 0 and diaper quest is 0, say "You feel like this [item of C] is making your [vagina] [if the vaginal sensitivity influence of C < -1]much [end if]less likely to make you cum from stimulation.";
	if the charisma-influence of C > 0, say "You feel like this [item of C] is making you [if the charisma-influence of C is 1]slightly [end if]better at negotiating and trading.";
	if the charisma-influence of C < 0, say "You feel like this [item of C] is making you [if the charisma-influence of C is -1]slightly [end if]worse at negotiating and trading.";
	if the luck-influence of C > 0, say "You feel like this [item of C] is making you [if the luck-influence of C < 4]slightly [end if]more likely to have lucky things happen and [if the luck-influence of C < 4]slightly [end if]less likely to have unlucky things happen.";
	if the luck-influence of C < 0, say "You feel like this [item of C] is making you [if the luck-influence of C > -4]slightly [end if]more likely to have unlucky things happen and [if the luck-influence of C > -4]slightly [end if]less likely to have lucky things happen.".

Report examining worn temptation clothing:
	say "You can sense that this item is making you feel and act [if the noun is cursed]much [end if]more submissive.".

Report examining worn dominance clothing:
	say "You can sense that this item is making you feel and act [if the noun is blessed]much [end if]less submissive.".

Report examining worn desperation clothing:
	if diaper messing >= 4, say "You can sense that this item is making you need to have bowel movements much more frequently than normal, as if you're constantly being given laxatives.".

Report examining breast covering clothing:
	if the noun is fully covering:
		say "It fully covers [if the noun is worn]your[otherwise]the wearer's[end if] chest.";
	otherwise if the noun is high cut:
		say "Its high cut only exposes a bit of cleavage.";
	otherwise if the noun is average cut:
		say "Its average cut exposes a normal amount of cleavage.";
	otherwise if the noun is low cut:
		say "The low cut exposes a large amount of cleavage.";
	otherwise if the noun is very low cut:
		say "The deep cut exposes a very large amount of cleavage.";
	otherwise if the noun is ridiculously low cut:
		say "The extremely skimpy cut exposes essentially all of [if the noun is worn]your[otherwise]the wearer's[end if] chest.";
	if the noun is erect-nipple-exposing actually dense actually nipple covering clothing:
		let C be a random worn normally-nipple-covering nipple covering clothing;
		say "The thin nature of the fabric means that your [if the player is horny]erect [end if]nipples [if C is clothing or the noun is not worn]could[otherwise]can[end if] be seen poking through it[if the player is not horny] when erect[end if][if C is clothing] if it wasn't for [NameDesc of C][end if].";
	if the noun is normally-partially-nipple-covering actually dense actually nipple covering clothing:
		let C be a random worn normally-nipple-covering nipple covering clothing;
		say "The thin, tight nature of the fabric means that your nipples [if C is clothing or the noun is not worn]could[otherwise]can[end if] be seen poking through it no matter how erect they are[if C is clothing], if it wasn't for [NameDesc of C][end if].";

To say selfexamineuniquetitle of (C - a clothing):
	say "[ShortDesc of C]".

Report examining worn endurance clothing:
	say "Its magical enhancement enables you to stay standing for longer!".

Report examining worn hostility clothing:
	say "Its magical enhancement empowers your attacks!".

Report examining worn elasticity clothing:
	say "Its magical enhancement makes you much better at accommodating large insertions without suffering from too much discomfort!".

Report examining worn audible jiggles clothing:
	say "Some sort of in-built magic effect is making this item emphasize the sounds your [BreastDesc] make as they move, making them loud and somewhat comical. It makes you feel like you're in some kind of bizarre cartoon!".

Report examining crotch covering clothing:
	if the noun is crotch-ripped, say "It has a large tear at the crotch.";
	if the noun is crotch-zipped or the noun is crotch-unzipped, say "It has a large [if the noun is crotch-zipped]closed[otherwise]open[end if] zip at the crotch.".

Report examining clothing:
	if the noun is super-short:
		say "The skirt is so super short that you[unless the noun is worn][']ll still be completely exposed even when wearing it.[otherwise][']re still completely exposed.[end if] [if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][second custom style]Which is exactly what I want![roman type][line break]";
	otherwise if the noun is actually sheer:
		[if the noun is sheer-when-wet, say "The [noun] is currently see-through because it is wet. ";]
		if the noun is knickers or the noun is trousers or the noun is overdress or the noun is skirt or the noun is at least partially nipple covering, say "The [if the noun is actually sheer]sheer [end if]nature of the item means that you[unless the noun is worn][']ll still be exposing your naughty bits even when wearing it[otherwise]r naughty bits are still visible[end if].[if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][second custom style]Which is exactly what I want![roman type][line break]";
		otherwise say "The [if the noun is actually sheer]sheer [end if]nature of the item means that you[unless the noun is worn]r skin will still be visible even when wearing it[otherwise]r skin is still visible[end if].[if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][second custom style]Which is exactly what I want![roman type][line break]";
	otherwise if the noun is potentially pussy covering and the player is possessing a penis and the noun is not potentially penis covering:
		say "Your [ShortDesc of penis] is too large and [if the noun is worn and penis is at least partially exposed]pokes out beyond the fabric[otherwise]can't be concealed by it[end if].";
	otherwise if the noun is skirted and there is worn knickers and the noun is not-butt-windowed:
		let K be a random worn knickers;
		say "The skirt is [if the skirtLength of the noun < the DQBulk of K]not [end if]long enough to cover your [ShortDesc of K][if the noun is short]. It is only long enough to cover your naughty bits when you're standing[end if].";
	otherwise if the noun is short and (the noun is not-butt-windowed or the size of penis < 4):
		say "The skirt is just long enough to cover your [if the size of penis < 4]naughty bits[otherwise][asshole][end if] as long as you never bend over[if the size of penis > 3], but it can't do anything to hide your [ShortDesc of penis], even when you're standing![otherwise].[end if] [if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][first custom style]So, good as long as I don't act like a whore.[roman type][line break][second custom style]I can pretend to be modest but put my bits on display at the same time![roman type][line break][end if]";
	otherwise if the noun is crotch covering and the noun is not total protection:
		if the noun is worn and the noun is crotch-displaced:
			say "The item is currently pulled [if the noun is trousers]down[otherwise]aside[end if] and so is doing nothing to protect your [player-crotch].";
		otherwise if the noun is no protection:
			say "The item [if the noun is crotch-ripped]has been [bold type]ripped[roman type], which means it [end if][if the noun is worn]does[otherwise]will do[end if] nothing to protect your [player-crotch].";
		otherwise if the noun is pussy protection and the noun is worn:
			say "[if the player is herm]This item is currently protecting your [ShortDesc of penis] and [vagina] but[otherwise if the player is possessing a vagina]The item is currently protecting your [vagina] but[otherwise if the player is possessing a penis]The item is currently protecting your [ShortDesc of penis] but[otherwise]The item[end if] is not protecting your [asshole].";
		otherwise if the noun is pussy protection:
			say "[if the player is herm]The item will protect your [ShortDesc of penis] and [vagina] but not[otherwise if the player is possessing a vagina]The item will protect your [vagina] but not[otherwise if the player is possessing a penis]The item will protect your [ShortDesc of penis] but not[otherwise]The item will not protect[end if] your [asshole].";
	if the player is possessing a vagina:
		let CT be the crotch-tightness of the noun;
		if CT > 1:
			let CMT be CT + the labia plumpness of vagina;
			if CMT >= 3:
				say "It's [if CT < 4]tight enough[otherwise]so tight[end if] that [if CMT > 3 and the labia plumpness of vagina > 0]in combination with the plumpness of your labia, [end if]";
				if CMT is 3:
					say "if your [LabiaDesc] were any plumper[if the noun is not worn] and you wore this item[end if], they would start to show through the fabric...";
				otherwise if CMT is 4:
					say "anyone looking [if the noun is worn]can[otherwise]would be able to[end if] slightly make out your [LabiaDesc] through the fabric.";
				otherwise:
					if the noun is worn, say "you are rocking a massive cameltoe! Anyone looking can see every little contour of your [LabiaDesc].";
					otherwise say "the fabric would dig deep inside your [vagina], and you would end up sporting a massive cameltoe!";
	if the noun is top-ripped, say "The [if the noun is bra]cups have[otherwise]bust has[end if] been permanently ripped open.";
	if the noun is not layer-concealing, say "The cut of the [ShortDesc of the noun] means that it [if the noun is partially-layer-concealing]only partially conceals[otherwise]completely fails to conceal[end if] items worn underneath it.";
	if the assModesty of the noun > 0, say HipModestyFlav of the noun; [this item covers at least some of the player's butt. That makes it worth mentioning whether it covers the player's hips.]
	if the stolen-strength of the noun > 0, say "[bold type]It has stolen some of your strength, and you won't get it back until you wear it again.[roman type][line break]";
	if debugmode > 0, say "[input-style]Liquid soak limit: [soak-limit of the noun][roman type][line break]";

Report examining wet clothing:
	unless it is diaper and the player is not diaper aware, say "It is currently [cumdesc of the noun][if the noun is sheer-when-wet]which is making it more see-through than it would otherwise be[otherwise if the noun is actually dense]but it's not the type of item to turn see-through when wet[otherwise]but it's just as see-through as normal[end if].".

Report examining locked clothing:
	say "It is currently locked[if the noun is worn] on you[end if], preventing you from removing it.";
	repeat with K running through specific-keys covering the noun:
		let M be a random person carrying K;
		say "There is a specific key that unlocks this lock[if M is the player], which you are in possession of[otherwise if M is a person], which is currently in the possession of [NameDesc of M][end if].".

Report examining clothing:
	if the noun is worn:
		if the noun is currently visible:
			say CurrentlyVisibleFlav of the noun;
			if the player is in a predicament room or the player is stealthy:
				let S be the stealth-influence of the noun;
				say "It is [if S < -1]making it MUCH more difficult for you to remain hidden[otherwise if S is -1]is a bit eye-catching, making it a bit more difficult for you to remain hidden[otherwise if S is 0]not making it easier or more difficult for you to remain hidden[otherwise if S is 1]is making it slightly easier for you to remain hidden[otherwise if S is 2]it making it significantly more possible for you to remain hidden[otherwise]is doing a lot of work to help keep you hidden[end if].";
		otherwise if the noun is currently at least partially visible:
			say CurrentlyPartiallyConcealedFlav of the noun;
		otherwise:
			say CurrentlyConcealedFlav of the noun.

Report examining protection clothing:
	if the noun is identified, say "An aura of magic protection surrounds this item, helping protect [if the noun is worn]you[otherwise]the wearer[end if] from harm in combat.".

Report examining sneaking clothing:
	if the noun is identified, say "An aura of illusion magic surrounds this item, which means that while you're wearing it, people are less likely to notice you.".

To say CurrentlyConcealedFlav of (C - a wearthing):
	let X be the concealer of C;
	say "It can't be seen thanks to your [ShortDesc of X].".

To say CurrentlyPartiallyConcealedFlav of (C - a wearthing):
	let X be the at least partial concealer of C;
	say "Your [if X is arms]arm[otherwise][ShortDesc of X][end if] fails to completely hide the fact that you're wearing it.".

To say CurrentlyVisibleFlav of (C - a wearthing):
	say "It is currently visible to anyone who looks at you.".

To say CurrentlyVisibleFlav of (K - a knickers):
	let C be a random worn skirted clothing;
	say "It is currently visible to anyone who looks at you[if C is a clothing] because your [ShortDesc of C] fails to properly cover it[end if].";
	if debugmode > 0, say "[input-style]DQBulk of [ShortDesc of K]: [DQBulk of K][if C is clothing]; Skirt length of [ShortDesc of C]: [skirtLength of C]; Diaper hiding skirt length of [ShortDesc of C]: [diaperHidingLength of C][end if][roman type][line break]";

To say CurrentlyVisibleFlav of (C - a sex toy):
	say "It is currently visible to anyone who looks at you from the right angle.".

To say CurrentlyPartiallyConcealedFlav of (C - a diaper):
	let CC be the at least partial concealer of C;
	say "[if CC is body part]Most of it can still be clearly seen past[otherwise]The shape of it is clearly visible through[end if] your [ShortDesc of CC].".

To say CurrentlyVisibleFlav of (C - a diaper):
	say "[if there is worn potentially at least partially asshole covering potentially-partially-bottom-layer-concealing clothing]The crotch area[otherwise]It[end if] is currently visible to anyone who looks at you.".

Report examining clothing:
	say PlayerThoughts of the noun.

To say PlayerThoughts of (C - a clothing):
	if the noun is diaper and C is not worn and the number of worn knickers is 0 and earnings > starting-earnings - 250 and the diaper addiction of the player < 4:
		say "[first custom style]I guess I don't know the rules of this game are yet and who knows what it's going to throw at me. If I did wet myself I'd rather it was into a diaper than onto [if the player is possessing a vagina]my legs and [end if]the floor where everyone can watch it.[line break]... I can't believe I'm considering wearing this! But surely they wouldn't put it here for no reason...[roman type][line break]";
	otherwise if the number of worn clothing is 0 and earnings > starting-earnings - 250 and the player is gendered male and the bimbo of the player < 4:
		say "[first custom style][one of][if the outrage of C - 9 is too humiliating]Heh, what sort of chick would be caught dead in this?[otherwise]I hope I find someone to wear this![end if][or]Wait a minute, is this supposed to be for ME to wear?!?![or]Surely this isn't meant for me, right?[stopping][roman type][line break]";
	otherwise if C is short-skirt-disallowed:
		say "[variable custom style]I feel [if C is worn]extremely uncomfortable in this, I can feel it sapping my intelligence[otherwise]like my body doesn't want me to wear this[end if]... I think it is because of my new fetish for short skirts![roman type][line break]";
	otherwise if C is no-panties-disallowed knickers:
		say "[variable custom style]I feel [if C is worn]extremely uncomfortable in this, I can feel it sapping my intelligence[otherwise]instinctively like I don't want to wear this[end if]... I think it is because of my [if the class of the player is faerie]new role as a faerie[otherwise if diaper lover >= 1]new fetish for diapers[otherwise]new fetish for not wearing underwear[end if]![roman type][line break]";
	otherwise if C is worn and C is nipple covering clothing and the player is fighting against topless:
		say "[variable custom style]I feel extremely uncomfortable in this, I can feel it sapping my intelligence... I think it is because of my new fetish for being topless![roman type][line break]";
	otherwise if diaper quest is 1 and (the cringe of C is too humiliating) and (the cringe of C >= the outrage of C):
		if C is too cringeworthy:
			if C is equippable:
				say "[variable custom style][if C is worn]Oh god I can't believe I'm having to use this to fight with! How dreadful.[otherwise]There's got to be something more dignified that I can find to fight with than this?![end if]";
			otherwise:
				say "[variable custom style][if C is worn]Oh god I can't believe I'm wearing this babyish thing, I feel so humiliated![otherwise]There's no way I would want to be seen dead in something so childish...[end if]";
		otherwise if the cringe of C - 2 is too humiliating:
			if C is equippable, say "[variable custom style][if C is worn]I really hate using this.[otherwise]I would really hate having to use this to fight with.[end if]";
			otherwise say "[variable custom style][if C is worn]This is[otherwise]That would be[end if] really humiliating to wear, it's so childish!";
		otherwise:
			if C is equippable, say "[variable custom style][if C is worn]I would prefer it if I could find something a little less childish to fight with.[otherwise]It would be quite embarrassing, but I'll use this if I really have to.[end if]";
			otherwise say "[variable custom style][if C is worn]I feel a bit awkward wearing this. [otherwise]I would feel a little awkward wearing this. [end if]It's very childish.";
		if the cringe of C - fluid cringe of C is not too humiliating, say "It would be okay if it wasn't [if C is external fluid immune]filled with[otherwise][one of]covered[or]soaked[or]coated[purely at random] in[end if] [if the known-milk-soak of C + the known-urine-soak of C is 0][semen][otherwise if the known-semen-soak of C + the known-milk-soak of C is 0][urine][otherwise if the known-semen-soak of C + the known-urine-soak of C is 0]my milk[otherwise if the bimbo of the player > 8]gross stuff[otherwise]gross bodily fluids[end if]![roman type][line break]";
		otherwise say "[if the humiliation of the player < HUMILIATION-MODEST + 1500 and C is able to cover crotch]But I guess I'd still prefer it to my [player-crotch] being on display...[otherwise if breasts is lewdly exposed and the humiliation of the player < HUMILIATION-MODEST - 3500 and the cringe of C < the lewdly exposed outrage of breasts and C is nipple covering and C is actually dense]But I guess I'd still prefer it to my breasts being on display...[otherwise if C is able to cover crotch and the cringe of C >= the lewdly exposed outrage of asshole]I think I would literally rather be completely naked than wear such a disgraceful item of clothing![otherwise if breasts is lewdly exposed and the cringe of C >= the lewdly exposed outrage of breasts and C is nipple covering]I think I would literally rather be completely topless than wear such a slutty piece of clothing![otherwise if C is crotch-intact knickers and C is not currently at least partially visible]I guess it's fine as long as it's [one of]concealed by something else[or]covered up[or]not visible while I'm wearing it[in random order]...[otherwise]I wish it was [one of]concealed[or]covered up[purely at random] by something else...[end if][roman type][line break]";
	otherwise if the outrage of C is too humiliating:
		if C is too outrageous:
			if C is equippable:
				if the player is able to use their hands or C is not hand ready, say "[variable custom style][if C is worn]Oh god I can't believe I'm having to use this to fight with! How dreadful.[otherwise]There's got to be something more dignified that I can find to fight with than this?![end if]";
				otherwise say "[variable custom style][if C is worn]No, no, no, no, no! This is not what I want to be doing with my hands!!![otherwise]Even if I could use my hands, why would I want to use this?![end if]";
			otherwise if C is sex toy:
				say "[variable custom style][if C is worn]Oh god I can't believe this is inside me! Nobody can see it, right?![otherwise]I can't even imagine how humiliating it would be if somebody caught me putting this inside myself.[end if]";
			otherwise:
				say "[variable custom style][if C is worn]Oh god I can't believe I'm wearing this, I feel so humiliated![otherwise]There's no way I would want to be seen dead in something so humiliating...[end if]";
		otherwise if the outrage of C - 2 is too humiliating:
			say "[variable custom style][MuchTooHumiliatingFlav of C]";
		otherwise:
			if C is equippable, say "[variable custom style][if C is worn]I would prefer it if I could find something a little less ridiculous to fight with.[otherwise]It would be quite embarrassing, but I'll use this if I really have to.[end if]";
			otherwise say "[variable custom style][if C is worn]I feel a bit humiliated wearing this.[otherwise]I would feel a little humiliated wearing this.[end if]";
		if the outrage of C - fluid outrage of C is not too humiliating, say "It would be okay if it wasn't [one of]covered[or]soaked[or]coated[purely at random] in [if the known-milk-soak of C + the known-urine-soak of C is 0][semen][otherwise if the known-semen-soak of C + the known-milk-soak of C is 0][urine][otherwise if the known-semen-soak of C + the known-urine-soak of C is 0]my milk[otherwise if the bimbo of the player > 8]gross stuff[otherwise]gross bodily fluids[end if]![roman type][line break]";
		otherwise say "[if the humiliation of the player < HUMILIATION-MODEST + 1500 and C is able to cover crotch]But I guess I'd still prefer it to my [player-crotch] being on display...[otherwise if C is not worn and breasts is lewdly exposed and the humiliation of the player < HUMILIATION-MODEST - 3500 and the outrage of C < the lewdly exposed outrage of breasts and C is nipple covering]But I guess I'd still prefer it to my breasts being on display...[otherwise if C is able to cover crotch and the outrage of C >= the lewdly exposed outrage of asshole]I think I would literally rather be completely naked than wear such a disgraceful item of clothing![otherwise if breasts is lewdly exposed and the outrage of C >= the lewdly exposed outrage of breasts and C is breast covering]I think I would literally rather be completely topless than wear such a slutty piece of clothing![otherwise if C is crotch-intact knickers and C is not currently at least partially visible]I guess it's fine as long as it's [one of]concealed by something else[or]covered up[or]not visible while I'm wearing it[in random order]...[otherwise if C is worn]I wish it was concealed by something else...[end if][roman type][line break]";
	otherwise:
		if diaper quest is 1 and C is almost too cringeworthy or the unworn cringe of C is too humiliating: [The item isn't humiliating; is it almost humiliating (or only not humiliating because it's worn and covered up)?]
			if C is equippable, say "[variable custom style]It's pretty childish, but I'm okay with that.";
			otherwise say "[variable custom style][if C is worn][one of]I don't really mind wearing this too much.[or]I could think of more babyish things to have on.[purely at random][otherwise][one of]I could probably stomach wearing something as childish as this for a bit.[or]I'll deal with wearing this if I have to.[purely at random][end if][if the unworn outrage of C is too humiliating]But only because it's covered up at the moment![end if][roman type][line break]";
		otherwise if diaper quest is 1 and the player is not broken and C is too adult: [The item isn't humiliating at all! Let's find out if the player finds it too boring.]
			if C is equippable, say "[variable custom style][if C is too adult]I kind of wish this was a bit more exciting. Maybe if it was pinker, or had pacifiers drawn on it?[otherwise if the bimbo of the player < 7]I'm happy with this. Which is more than I can say for most of the things in this game.[otherwise]I just love this! It's perfect for me![end if][roman type][line break]";
			otherwise say "[variable custom style][if C is too adult][line break][second custom style][one of]Ugh, this is way too adult for me![or]*sigh* Isn't there any way to make it more cartoony?[or]Only a grown up would wear something this boring![purely at random][otherwise if the bimbo of the player < 7][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise if C is worn][one of]I love wearing this![or]I feel *AMAZING* wearing this![purely at random][otherwise][one of]Ooh, I'd be fine wearing this![or]I'll look so cute in this![purely at random][end if][roman type][line break]";
		otherwise if C is erect-nipple-exposing and the player is nipples exposed and the player is horny and the at least partially lewdly exposed outrage of breasts is too humiliating:
			say "[variable custom style][one of]No no no, [or][stopping]I need to find something that my nipples won't just poke straight through![roman type][line break]";
		otherwise if C is almost too much or the unworn outrage of C is too humiliating: [The item isn't humiliating; is it almost humiliating (or only not humiliating because it's worn and covered up)?]
			if C is equippable, say "[variable custom style]It's pretty ridiculous, but I'm okay with that.[roman type][line break]";
			otherwise say "[variable custom style][if C is worn][one of]I don't really mind wearing this too much.[or]I could think of worse things to have on.[purely at random][otherwise][one of]I could probably stomach wearing this for a bit.[or]I'll deal with wearing this if I have to.[purely at random][end if][if the unworn outrage of C is too humiliating]But only because it's covered up at the moment![end if][roman type][line break]";
		otherwise if the player is not broken: [The item isn't humiliating at all! Let's find out if the player finds it too boring.]
			if C is equippable, say "[variable custom style][if C is too boring]I kind of wish this was a bit more exciting. Maybe if it was pinker, or had cocks drawn on it?[otherwise if the bimbo of the player < 7]I'm happy with this. Which is more than I can say for most of the things in this game.[otherwise]I just love this! It's perfect for me![end if][roman type][line break]";
			otherwise say "[variable custom style][if C is too boring and C is actually dense and C is breast covering or C is belly covering or C is crotch covering][line break][second custom style][one of]Ugh, this is way too plain for me![or]*sigh* Isn't there any way to make it more revealing?[or]Only a prude would wear something this boring![purely at random][otherwise if C is too boring][second custom style][one of]Ugh, this is way too boring for me![or]*sigh* Isn't there any way to make it more lewd?[or]I would prefer something that lets everyone know just how slutty I am![purely at random][otherwise if the bimbo of the player < 7][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise if C is worn][one of]I love wearing this![or]I feel *AMAZING* wearing this![purely at random][otherwise][one of]Ooh, I'd be fine wearing this![or]I'll look [beautiful] in this![purely at random][end if][roman type][line break]";
	if C is currently-not-in-bag:
		if diaper quest is 0 or the appearance of the player > the cringe appearance of the player:
			let A be calculated-appearance-outrage-level - (calculated-appearance-outrage-level / 2);
			if the outrage of C / 2 >= A, say "[variable custom style]Just holding onto this makes me look more like a slut![roman type][line break]";
		otherwise:
			let CL be calculated-cringe-level - (calculated-cringe-level / 2);
			if the cringe of C / 2 >= CL, say "[variable custom style]Just holding onto this makes me look more like a baby![roman type][line break]".

To say MuchTooHumiliatingFlav of (C - a clothing):
	say "[if C is worn]This is[otherwise]That would be[end if] really humiliating to wear...".
To say MuchTooHumiliatingFlav of (C - an equippable):
	say "[if C is worn]I really hate using this.[otherwise]I would really hate having to use this to fight with.[end if]".

Description ends here.
