Description by Clothing begins here.

Figure of no-image-yet is the file "Special\noimage.png".

To decide which figure-name is the clothing-image of (C - a clothing):
	decide on figure of no-image-yet. 

To say ImageDesc of (C - a clothing):
	if images visible is 1, display clothing-image of C.

To say MediumDesc of (C - a clothing):
	if C is messed knickers:
		say "messy ";
	otherwise if the total-soak of C > 0:
		if the total-soak of C >= the soak-limit of C:
			say "saturated ";
		otherwise if the semen-soak of C > the soak-limit of C / 2:
			say "cum-soaked ";
		otherwise if the total-soak of C > (the soak-limit of C * 7) / 10:
			say "soaked ";
		otherwise if the total-soak of C > the soak-limit of C / 2:
			say "soggy ";
		otherwise if the semen-soak of C > 0:
			say "cum-stained ";
		otherwise if the total-soak of C > the soak-limit of C / 5:
			say "wet ";
		otherwise:
			say "damp ";
	say "[ShortDesc of C]".


The description of clothing is "[ImageDesc of item described][ClothingDesc of item described]".

[Here we will give hints to the player about the clothing.]

Report examining an exclusive clothing:
	if the noun is totally-exclusive:
		say "Somehow you can tell that this item is [bold type]exclusive[roman type], meaning you can't wear anything on top of or underneath it.";
	otherwise if the noun is top-exclusive:
		say "Somehow you can tell that this item is [bold type]top level[roman type], meaning you can't wear anything on top of it.";
	otherwise if the noun is bottom-exclusive:
		say "Somehow you can tell that this item is [bold type]skin-tight[roman type], meaning you can't wear anything underneath it[if diaper lover >= 1 and the noun is crotch covering], except a diaper[end if].";

Report examining a swimwear clothing:
	say "You can sense that this item [if the noun is worn]is making[otherwise]could make[end if] you better at swimming.".

Report examining an identified maturity clothing:
	say "You can sense that this item [if the noun is worn]is helping[otherwise]could help[end if] you act like a grown up.".

[MG and Selkie actually got into an argument about this. It's referring to cellular respiration, rather than to the more commonly referenced physiological respiration.]
Report examining an identified respiration clothing:
	say "You can sense that this item [if the noun is worn]is speeding[otherwise]would speed[end if] up your metabolism.".
	
Report examining worn clothing:
	say InfluenceDesc of the noun.

Report wearing clothing:
	say InfluenceDesc of the noun.

To say InfluenceDesc of (C - a clothing):
	if the strength-influence of C < 0, say "You can sense that this item is making you [if the strength-influence of C < -2]much [end if]weaker.";
	if the strength-influence of C > 0, say "You can sense that this item is making you [if the strength-influence of C > 2]much [end if]stronger.";
	if the dexterity-influence of C < 0, say "You can sense that this item is making you [if the dexterity-influence of C < -2]much [end if]less agile.";
	if the dexterity-influence of C > 0, say "You can sense that this item is making you [if the dexterity-influence of C > 2]much [end if]faster.";
	if the intelligence-influence of C < 0, say "You can sense that this item is making you [if the intelligence-influence of C < -2]much [end if]dumber.";
	if the intelligence-influence of C > 0, say "You can sense that this item is making you [if the intelligence-influence of C > 2]much [end if]smarter.";
	if the bimbo-influence of C < 0, say "You can sense that this item is making you [if the bimbo-influence of C < -1]much [end if]more sensible.";
	if the bimbo-influence of C > 0, say "You can sense that this item is making you [if the bimbo-influence of C > 1]much [end if]sluttier.";
	if the vaginal-sex-addiction-influence of C < 0, say "You can sense that this item is [if the vaginal-sex-addiction-influence of C < -1]significantly [end if]suppressing any [if the vaginal sex addiction of the player < 3]weird [end if]carnal urges to [if the virgin of the player is 1]lose your virginity[otherwise]get laid[end if].";
	if the vaginal-sex-addiction-influence of C > 0, say "You can sense that this item is making your [vagina] [if the vaginal-sex-addiction-influence of C > 1]a lot [end if]more [if the virgin of the player is 1]desperate to lose its virginity[otherwise if the vaginal sex addiction of the player > 6]desperate to be filled[otherwise]eager to be filled[end if].";
	if the anal-sex-addiction-influence of C < 0, say "You can sense that this item is [if the anal-sex-addiction-influence of C < -1]significantly [end if][if the anal sex addiction of the player > 4]reducing your body's love of anal[otherwise if the analvirgin of the player is 1]helping you to suppress any urges to try out anal sex[otherwise]reducing your asshole's desire to be filled[end if].";
	if the anal-sex-addiction-influence of C > 0, say "You can sense that this item is making your [asshole] [if the anal-sex-addiction-influence of C > 1]a lot [end if]more [if the analvirgin of the player is 1]eager to be broken in[otherwise if the anal sex addiction of the player < 5]eager to be played with[otherwise]desperate to be used[end if].";
	if the titfuck-addiction-influence of C < 0, say "You can sense that this item is [if the titfuck-addiction-influence of C < -1]significantly [end if][if the titfuck addiction of the player > 4]reducing your breasts['] desire to  feel a big hard [manly-penis] thrust between them[otherwise]helping you suppress any weird pleasurable sensations you might get if you pleasured a man with your breasts[end if].";
	if the titfuck-addiction-influence of C > 0, say "You can sense that this item is making you feel [if the titfuck-addiction-influence of C > 1]a lot [end if]more sexual pleasure from [if the titfuck addiction of the player < 5]rubbing a [manly-penis] between your breasts[otherwise]worshipping a [manly-penis] with your tits[end if].";
	if the sex-addiction-influence of C < 0, say "You can sense that this item is [if the sex-addiction-influence of C < -1]significantly [end if][if diaper quest is 1]reducing your cravings for orgasms[otherwise if the sex addiction of the player > 7]reducing your [one of]cravings for orgasms[or]obsession with kinky sex acts[cycling][otherwise]helping you [one of]maintain a sensible, normal libido[or]suppress perverted thoughts[cycling][end if].";
	if the sex-addiction-influence of C > 0, say "You can sense that this item is making you [if diaper quest is 1]crave orgasms[otherwise if the sex addiction of the player > 7][one of]crave orgasms and sex[or]daydream about lewd acts[or]get aroused by perverse things[cycling][otherwise][one of]think about sex[or]think perverted thoughts[cycling][end if] [if the sex-addiction-influence of C > 1]a lot [end if]more.";
	if the semen-addiction-influence of C < 0, say "You can sense that this item is [if the semen-addiction-influence of C < -1]really [end if]helping you avoid any [if the semen addiction of the player < 4]weird [end if]temptations to experience [if the player is male and the bimbo of the player < 10]anal [end if]creampies[if bukkake fetish is 1] and facials[end if].";
	if the semen-addiction-influence of C > 0, say "You can sense that this item is making you [if the semen-addiction-influence of C > 1]much [end if]more eager to get [if the player is male and the bimbo of the player < 10]anally [end if]creampied[if bukkake fetish is 1] and covered in [semen][end if].";
	if the semen-taste-addiction-influence of C < 0, say "You can sense that this item is [if the semen-taste-addiction-influence of C < -1]really [end if]helping you [if the semen taste addiction of the player < 6]avoid any weird temptations[otherwise]resist the urge[end if] to [if the semen taste addiction of the player < 8]taste semen[otherwise]suck cock[end if].";
	if the semen-taste-addiction-influence of C > 0, say "You can sense that this item is making you [if the semen-taste-addiction-influence of C > 1]much [end if]more eager to [if the semen taste addiction of the player > 8]drink[otherwise]taste[end if] [semen].";
	if the urine-taste-addiction-influence of C < 0, say "You can sense that this item is [if the urine-taste-addiction-influence of C < -1]really [end if]helping you [if the urine taste addiction of the player < 6]avoid any weird temptations[otherwise]resist the urge[end if] to [if the urine taste addiction of the player < 8]taste urine[otherwise]drink piss[end if].";
	if the urine-taste-addiction-influence of C > 0, say "You can sense that this item is making you [if the urine-taste-addiction-influence of C > 1]much [end if]more eager to [if the urine taste addiction of the player > 8]drink[otherwise]taste[end if] [urine].";
	if the milk-taste-addiction-influence of C < 0, say "You can sense that this item is [if the milk-taste-addiction-influence of C < -1]really [end if]helping you [if the milk taste addiction of the player < 6]avoid any weird temptations[otherwise]resist the urge[end if] to [if the milk taste addiction of the player < 8]drink lots of breast milk[otherwise]drink loads of milk no matter where it has come from[end if].";
	if the milk-taste-addiction-influence of C > 0, say "You can sense that this item is making you [if the milk-taste-addiction-influence of C > 1]much [end if]more eager to [if the milk taste addiction of the player > 8]drink[otherwise]taste[end if] breast milk[if the milk taste addiction of the player > 9] and ass-milk[end if].";
	if the heel-skill-influence of C < 0 and there are worn heels, say "You can sense that this item is making you [if the heel-skill-influence of C < -1]much [end if]more unsteady in heels.";
	if the heel-skill-influence of C > 0 and there are worn heels, say "You can sense that this item is making you [if the heel-skill-influence of C > 1]much [end if]more steady in heels.";
	if the humiliation-influence of C < 0, say "You can sense that this item is making you [if the humiliation-influence of C < -1]much [end if]more susceptible to humiliation.";
	if the humiliation-influence of C > 0, say "You can sense that this item is making you [if the humiliation-influence of C > 1]much [end if]better at coping with humiliation.";
	if the delicateness-influence of C < 0, say "You can sense that this item is making you [if the delicateness-influence of C < -1]much [end if][one of]better at coping with pain[or]more dominant[cycling].";
	if the delicateness-influence of C > 0, say "You can sense that this item is making you [if the delicateness-influence of C > 1]much [end if][one of]less tolerant of pain[or]more submissive[cycling].";
	if the fatigue-influence of C < 0, say "You can sense that this item is [if the fatigue-influence of C < -2]greatly [end if]improving your stamina.";
	if the fatigue-influence of C > 0, say "You can sense that this item is [if the fatigue-influence of C < -2]greatly [end if]reducing your stamina.";
	if the diaper-addiction-influence of C < 0, say "You can sense that this item is [if the diaper-addiction-influence of C < -1]significantly [end if][if the diaper addiction of the player < 5 and there is a worn diaper]suppressing any thoughts of you enjoying wearing your diaper[otherwise if the diaper addiction of the player < 5]helping you avoid any weird temptations to wear a diaper[otherwise if the diaper addiction of the player < 8]reducing the amount you enjoy wearing and using diapers[otherwise]helping to curb your addiction to wearing and using diapers[end if].";
	if the diaper-addiction-influence of C > 0, say "You can sense that this item is making you enjoy [unless there is a worn diaper or the diaper addiction of the player > 6]the idea of [end if]wearing and using diapers [if the diaper-addiction-influence of C > 1]a lot [end if]more.";
	if the knee-modifier of the noun < 0 and there are worn stockings, say "You can sense that this item is making your knee attacks [if the knee-modifier of the noun < -1]much [end if]weaker.";
	if the knee-modifier of the noun > 0 and there are worn stockings, say "You can sense that this item is making your knee attacks [if the knee-modifier of the noun > 1]much [end if]stronger.".

Report examining worn temptation clothing:
	say "You can sense that this item is making you feel and act [if the noun is cursed]much [end if]more submissive.".

Report examining worn dominance clothing:
	say "You can sense that this item is making you feel and act [if the noun is blessed]much [end if]less submissive.".

To say selfexamineuniquetitle of (C - a clothing):
	say "[printed name of C]".	

Report examining clothing:
	if the noun is super-short:
		say "The skirt is so super short that you[unless the noun is worn][']ll still be completely exposed even when wearing it.[otherwise][']re still completely exposed.[end if] [if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][second custom style]Which is exactly what I want![roman type][line break]";
	otherwise if the noun is actually sheer:
		if the noun is sheer-when-wet, say "The [noun] is currently see-through because it is wet. ";
		if the noun is knickers or the noun is trousers or the noun is overdress or the noun is skirt or the noun is nipple covering and the noun is breast covering, say "The [if the noun is actually sheer]sheer [end if]nature of the item means that you[unless the noun is worn][']ll still be exposing your naughty bits even when wearing it[otherwise]r naughty bits are still visible[end if].[if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][second custom style]Which is exactly what I want![roman type][line break]";
		otherwise say "The [if the noun is actually sheer]sheer [end if]nature of the item means that you[unless the noun is worn]r skin will still be visible even when wearing it[otherwise]r skin is still visible[end if].[if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][second custom style]Which is exactly what I want![roman type][line break]";
	otherwise if the noun is short:
		say "The skirt is just long enough to cover your [if the size of penis < 4]naughty bits[otherwise][asshole][end if] as long as you never bend over[if the size of penis > 3], but it can't do anything to hide your [ShortDesc of penis], even when you're standing![otherwise].[end if] [if the humiliation of the player > HUMILIATION-DISGRACED + 3500 and the outrage of the noun is not too humiliating and diaper quest is 0][line break][first custom style]So, good as long as I don[']t act like a whore.[roman type][line break][second custom style]I can pretend to be modest but put my bits on display at the same time![roman type][line break][end if]";
	otherwise if the noun is crotch covering and the noun is not total protection:
		if the noun is no protection:
			say "The item [if the noun is worn]does[otherwise]will do[end if] nothing to protect your [player-crotch].";
		otherwise if the noun is pussy protection and the noun is worn:
			say "[if the player is female]The item is currently protecting your [vagina] but[otherwise if the size of penis > 0]The item is currently protecting your [ShortDesc of penis] but[otherwise]The item[end if] is not protecting your [asshole].";
		otherwise if the noun is pussy protection:
			say "[if the player is female]The item will protect your [vagina] but not[otherwise if the size of penis > 0]The item will protect your [ShortDesc of penis] but not[otherwise]The item will not protect[end if] your [asshole].";
	if the noun is top-ripped:
		say "The [if the noun is bra]cups have[otherwise]bust has[end if] been permanently ripped open.".

Report examining clothing:
	if the noun is worn and (the noun is knickers or the noun is bra or the noun is sex toy or the noun is chastity cage or the noun is condom of kings or the noun is corset):
		if the noun is currently visible:
			say "[CurrentlyVisibleFlav of the noun]";
		otherwise:
			say "[CurrentlyConcealedFlav of the noun]".

Report examining protection clothing:
	if the noun is identified, say "An aura of magic protection surrounds this item, helping protect [if the noun is worn]you[otherwise]the wearer[end if] from harm in combat.".

To say CurrentlyConcealedFlav of (C - a clothing):
	say "It can't be seen thanks to your [ShortDesc of concealer of C].".

To say CurrentlyVisibleFlav of (C - a clothing):
	say "It is currently visible to anyone who looks at you.".

To say CurrentlyVisibleFlav of (C - a sex toy):
	say "It is currently visible to anyone who looks at you from the right angle.".

To say CurrentlyVisibleFlav of (C - a diaper):
	let visible-check be 0;
	repeat with O running through actually dense bottom-layer-concealing clothing:
		if the bottom-layer of O > the bottom-layer of C and visible-check is 0:
			now visible-check is 1;
			say "The shape of it is clearly visible through your [ShortDesc of O].";
	if visible-check is 0, say "It is currently visible to anyone who looks at you.".

Report examining clothing:
	if the noun is diaper and the noun is not worn and the number of worn knickers is 0 and earnings > starting-earnings - 250 and the diaper addiction of the player < 4:
		say "[first custom style]I guess I don't know the rules of this game are yet and who knows what it's going to throw at me. If I did wet myself I'd rather it was into a diaper than onto [if the player is female]my legs and [end if]the floor where everyone can watch it.[line break]...I can't believe I'm considering wearing this!  But surely they wouldn't put it here for no reason...[roman type][line break]";
	otherwise if the number of worn clothing is 0 and earnings > starting-earnings - 250 and the player is male and the bimbo of the player < 4:
		say "[first custom style][one of][if the outrage of the noun - 9 is too humiliating]Heh, what sort of chick would be caught dead in this?[otherwise]I hope I find someone to wear this![end if][or]Wait a minute, is this supposed to be for ME to wear?!?![or]Surely this isn't meant for me, right?[stopping][roman type][line break]";
	otherwise if the noun is worn and the noun is skirted and the player is fighting against short skirts:
		say "[variable custom style]I feel extremely uncomfortable in this, I can feel it sapping my strength... I think it is because of my new fetish for short skirts![roman type][line break]";
	otherwise if the noun is worn and the noun is knickers and the player is fighting against no-panties:
		say "[variable custom style]I feel extremely uncomfortable in this, I can feel it sapping my strength... I think it is because of my new fetish for [if diaper lover >= 1]diapers[otherwise]not wearing underwear[end if]![roman type][line break]";
	otherwise if (the cringe of the noun is too humiliating) and (the cringe of the noun >= the outrage of the noun) and diaper quest is 1:
		if the noun is too cringeworthy:
			if the noun is equippable:
				say "[variable custom style][if the noun is worn]Oh god I can't believe I'm having to use this to fight with!  How dreadful.[otherwise]There's got to be something more dignified that I can find to fight with than this?![end if]";
			otherwise:
				say "[variable custom style][if the noun is worn]Oh god I can't believe I'm wearing this babyish thing, I feel so humiliated![otherwise]There's no way I would want to be seen dead in something so childish...[end if]";
		otherwise if the cringe of the noun - 2 is too humiliating:
			if the noun is equippable, say "[variable custom style][if the noun is worn]I really hate using this.[otherwise]I would really hate having to use this to fight with.[end if]";
			otherwise say "[variable custom style][if the noun is worn]This is[otherwise]That would be[end if] really humiliating to wear, it's so childish!";
		otherwise:
			if the noun is equippable, say "[variable custom style][if the noun is worn]I would prefer it if I could find something a little less childish to fight with.[otherwise]It would be quite embarrassing, but I'll use this if I really have to.[end if]";
			otherwise say "[variable custom style][if the noun is worn]I feel a bit awkward wearing this. [otherwise]I would feel a little awkward wearing this. [end if]It's very childish.";
		if the cringe of the noun - fluid outrage of the noun is not too humiliating, say "It would be okay if it wasn't [one of]covered[or]soaked[or]coated[purely at random] in [if the milk-soak of the noun + the urine-soak of the noun is 0][semen][otherwise if the semen-soak of the noun + the milk-soak of the noun is 0][urine][otherwise if the semen-soak of the noun + the urine-soak of the noun is 0]my milk[otherwise if the bimbo of the player > 8]gross stuff[otherwise]gross bodily fluids[end if]![roman type][line break]";
		otherwise say "[if the humiliation of the player < HUMILIATION-MODEST + 1500 and the noun is able to cover crotch]But I guess I'd still prefer it to my [player-crotch] being on display...[otherwise if breasts is lewdly exposed and the humiliation of the player < HUMILIATION-MODEST - 3500 and the cringe of the noun < 11 and the noun is nipple covering and the noun is breast covering and the noun is actually dense]But I guess I'd still prefer it to my breasts being on display...[otherwise if the noun is able to cover crotch and the cringe of the noun >= 15]I think I would literally rather be completely naked than wear such a disgraceful item of clothing![otherwise if breasts is lewdly exposed and the cringe of the noun >= 11 and the noun is nipple covering and the noun is breast covering]I think I would literally rather be completely topless than wear such a slutty piece of clothing![end if][roman type][line break]";
	otherwise if the outrage of the noun is too humiliating:
		if the noun is too outrageous:
			if the noun is equippable:
				say "[variable custom style][if the noun is worn]Oh god I can't believe I'm having to use this to fight with!  How dreadful.[otherwise]There's got to be something more dignified that I can find to fight with than this?![end if]";
			otherwise if the noun is sex toy:
				say "[variable custom style][if the noun is worn]Oh god I can't believe this is inside me!  Nobody can see it, right?![otherwise]I can't even imagine how humiliating it would be if somebody caught see me putting this inside myself.[end if]";
			otherwise:
				say "[variable custom style][if the noun is worn]Oh god I can't believe I'm wearing this, I feel so humiliated![otherwise]There's no way I would want to be seen dead in something so humiliating...[end if]";
		otherwise if the outrage of the noun - 2 is too humiliating:
			if the noun is equippable, say "[variable custom style][if the noun is worn]I really hate using this.[otherwise]I would really hate having to use this to fight with.[end if]";
			otherwise say "[variable custom style][if the noun is worn]This is[otherwise]That would be[end if] really humiliating to wear...";
		otherwise:
			if the noun is equippable, say "[variable custom style][if the noun is worn]I would prefer it if I could find something a little less ridiculous to fight with.[otherwise]It would be quite embarrassing, but I'll use this if I really have to.[end if]";
			otherwise say "[variable custom style][if the noun is worn]I feel a bit humiliated wearing this.[otherwise]I would feel a little humiliated wearing this.[end if]";
		if the outrage of the noun - fluid outrage of the noun is not too humiliating, say "It would be okay if it wasn't [one of]covered[or]soaked[or]coated[purely at random] in [if the milk-soak of the noun + the urine-soak of the noun is 0][semen][otherwise if the semen-soak of the noun + the milk-soak of the noun is 0][urine][otherwise if the semen-soak of the noun + the urine-soak of the noun is 0]my milk[otherwise if the bimbo of the player > 8]gross stuff[otherwise]gross bodily fluids[end if]![roman type][line break]";
		otherwise say "[if the humiliation of the player < HUMILIATION-MODEST + 1500 and the noun is able to cover crotch]But I guess I'd still prefer it to my [player-crotch] being on display...[otherwise if breasts is lewdly exposed and the humiliation of the player < HUMILIATION-MODEST - 3500 and the outrage of the noun < 11 and the noun is nipple covering and the noun is breast covering and the noun is actually dense]But I guess I'd still prefer it to my breasts being on display...[otherwise if the noun is able to cover crotch and the outrage of the noun >= 15]I think I would literally rather be completely naked than wear such a disgraceful item of clothing![otherwise if breasts is lewdly exposed and the outrage of the noun >= 11 and the noun is nipple covering and the noun is breast covering]I think I would literally rather be completely topless than wear such a slutty piece of clothing![end if][roman type][line break]";
	otherwise:
		if diaper quest is 1 and the noun is almost too cringeworthy or the unworn cringe of the noun is too humiliating: [The item isn't humiliating; is it almost humiliating (or only not humiliating because it's worn and covered up)?]
			if the noun is equippable, say "[variable custom style]It's pretty childish, but I'm okay with that.";
			otherwise say "[variable custom style][if the noun is worn][one of]I don't really mind wearing this too much.[or]I could think of more babyish things to have on.[purely at random][otherwise][one of]I could probably stomach wearing something as childish as this for a bit.[or]I'll deal with wearing this if I have to.[purely at random][end if][if the unworn outrage of the noun is too humiliating]But only because it's covered up at the moment![end if][roman type][line break]";
		otherwise if diaper quest is 1 and the humiliation of the player < HUMILIATION-BROKEN and the noun is too adult: [The item isn't humiliating at all!  Let's find out if the player finds it too boring.]
			if the noun is equippable, say "[variable custom style][if the noun is too adult]I kind of wish this was a bit more exciting. Maybe if it was pinker, or had pacifiers drawn on it?[otherwise if the bimbo of the player < 7]I'm happy with this. Which is more than I can say for most of the things in this game.[otherwise]I just love this!  It's perfect for me![end if][roman type][line break]";
			otherwise say "[variable custom style][if the noun is too adult][line break][second custom style][one of]Ugh, this is way too adult for me![or]*sigh* Isn't there any way to make it more cartoony?[or]Only a grown up would wear something this boring![purely at random][otherwise if the bimbo of the player < 7][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise if the noun is worn][one of]I love wearing this![or]I feel *AMAZING* wearing this![purely at random][otherwise][one of]Ooh, I'd be fine wearing this![or]I'll look so cute in this![purely at random][end if][roman type][line break]";
		otherwise if the noun is almost too much or the unworn outrage of the noun is too humiliating: [The item isn't humiliating; is it almost humiliating (or only not humiliating because it's worn and covered up)?]
			if the noun is equippable, say "[variable custom style]It's pretty ridiculous, but I'm okay with that.";
			otherwise say "[variable custom style][if the noun is worn][one of]I don't really mind wearing this too much.[or]I could think of worse things to have on.[purely at random][otherwise][one of]I could probably stomach wearing this for a bit.[or]I'll deal with wearing this if I have to.[purely at random][end if][if the unworn outrage of the noun is too humiliating]But only because it's covered up at the moment![end if][roman type][line break]";
		otherwise if the humiliation of the player < HUMILIATION-BROKEN: [The item isn't humiliating at all!  Let's find out if the player finds it too boring.]
			if the noun is equippable, say "[variable custom style][if the noun is too boring]I kind of wish this was a bit more exciting. Maybe if it was pinker, or had cocks drawn on it?[otherwise if the bimbo of the player < 7]I'm happy with this. Which is more than I can say for most of the things in this game.[otherwise]I just love this!  It's perfect for me![end if][roman type][line break]";
			otherwise say "[variable custom style][if the noun is too boring and the noun is actually dense and the noun is breast covering or the noun is belly covering or the noun is crotch covering][line break][second custom style][one of]Ugh, this is way too plain for me![or]*sigh* Isn't there any way to make it more revealing?[or]Only a prude would wear something this boring![purely at random][otherwise if the noun is too boring][second custom style][one of]Ugh, this is way too boring for me![or]*sigh* Isn't there any way to make it more lewd?[or]I would prefer something that lets everyone know just how slutty I am![purely at random][otherwise if the bimbo of the player < 7][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise if the noun is worn][one of]I love wearing this![or]I feel *AMAZING* wearing this![purely at random][otherwise][one of]Ooh, I'd be fine wearing this![or]I'll look [beautiful] in this![purely at random][end if][roman type][line break]".





Description ends here.

