Giving by Actions begins here.

The can't give clothes being worn rule is not listed in the check giving it to rulebook.
The block giving rule is not listed in the check giving it to rulebook.

Check giving:
	if the second noun is not monster, say "That makes no sense to me." instead;
	if the player is flying, say "You aren't even on the ground!" instead;
	if the noun is body part and the second noun is monster, try direct-presenting the noun to the second noun instead;
	if the noun is body part, try presenting the noun instead;
	if the second noun is wench and the second noun is dangerous and the noun is desirable knickers and the second noun is not horny-wench:
		allocate 4 seconds;
		compute the second noun WenchReceiving the noun instead;
		do nothing instead; [Weird bug where the above command doesn't do the "instead" bit.]
	otherwise if the second noun is robobutler and the noun is plentiful accessory:
		if the noun is worn ring and there are worn gloves, say "You need to remove your [random worn gloves] first." instead;
		say "The [second noun] accepts the [printed name of noun] and seems happy.";
		calm the second noun;
		now the second noun is unconcerned;
		only destroy the noun;
		bore the second noun for 500 seconds instead;
	otherwise if the second noun is mechanic and the noun is mystical amulet:
		now the noun is worn by the player; [this is because the rule only works if the amulet is worn]
		follow the mechanic claims amulet rule;
		if the noun is worn, now the noun is carried by the player; [just to prevent potential glitches if the rule fails to activate properly!]
		do nothing instead;
	otherwise if the second noun is witch:[TODO: compute WitchGiving (T - a thing) to (M- a witch)]
		if the second noun is unfriendly, say "[variable custom style]I think it's a bit late for that![roman type][line break]" instead;
		if the noun is vessel:
			if the doses of the noun is 0, say "That's empty." instead;
			if the fill-colour of the noun is not creamy and the fill-colour of the noun is not golden and the fill-colour of the noun is not white and the fill-colour of the noun is not murky:
				if the waitress bartering value of the noun for the second noun > 0:
					allocate 5 seconds;
					if the waitress-boredom of the second noun > 0:
						say "[BigNameDesc of the second noun] wrinkles [his of the second noun] nose.[line break][speech style of the second noun]'I'm not in the mood for any more boring drinks like that.'[roman type][line break]";
					otherwise:
						say WaitressOfferAcceptFlav of the second noun to the noun;
						say WaitressTakeFlav of the second noun to the noun;
						compute waitress resolution of the second noun taking the noun;
					do nothing instead;
				say "Why would [he of the second noun] want that?" instead;
			if the second noun is unbitchy and the second noun is unconcerned, say "[second custom style]'Don't worry about paying me. You can use my altar for free!'[roman type][line break]" instead;
			if the noun is not held, say "You should probably pick it up first." instead;
			allocate 6 seconds;
			if the altar-uses of the second noun < 0, now the altar-uses of the second noun is 0;
			say "[BigNameDesc of the second noun] brings the [ShortDesc of noun] to [his of the second noun] mouth and starts drinking! [big he of the second noun] downs the whole drink in one, without stopping for a breath. ";
			if the noun is monster-origin or a2m fetish < 2:
				say "After [he of the second noun][']s finished, [he of the second noun] falls down on [his of the second noun] shapely butt and sighs happily.[line break][second custom style]'[if the fill-colour of the noun is murky]Good enough[otherwise]Yep, that's the stuff[end if]. You've earned [if the doses of the noun is 1]one use[otherwise][doses of the noun] uses[end if] of the altar.'[roman type][line break]";
				AltarUsesUp the doses of the noun;
				if diaper quest is 0, cutshow figure of witch cutscene 1 for witch;
			otherwise:
				say "After [he of the second noun][']s finished, [he of the second noun] frowns.[line break][second custom style]'[one of]This is pretty bland, you know. I bet you just [if the fill-colour of the noun is golden]pissed directly into this cup[otherwise]used your own bodily fluids[end if], didn't you? This only gets you 1 use of the altar. Sorry but really I want something actually interesting, something that took some kinky act for you to collect. Go find someone else's cum or piss and then I'll properly reward you. Or at the very least, at least use a squirt dildo to stew this in your butthole for a bit first, that might add a little flavour.'[or]Boring and bland again. Only worth 1 use of the altar, I'm afraid.'[stopping][roman type][line break]";
				AltarUsesUp 1;
			if there is a worn waitress-enabling wearthing or (the class of the player is royal slave and the noun is monster-origin and the fill-colour of the noun is white), compute waitress resolution of the second noun taking the noun;
			DoseEmpty the noun;
			do nothing instead;
		otherwise if the noun is diaper:
			let T be the total-soak of the noun - the water-soak of the noun;
			if diaper quest is 1 and the class of the player is priestess and the noun is worn:
				allocate 2 seconds;
				say "[second custom style]'I'm LITERALLY an altar witch. Do you really think I'm about to anger the altar Goddess by removing the diaper of an altar Priestess?'[roman type][line break]";
			otherwise if T < the soak-limit of the noun / 3 and the noun is not messed:
				allocate 2 seconds;
				say "[second custom style]'[if the total-soak of the noun is 0]Why would I want that? It's bone dry!'[otherwise if the total-soak of the noun >= the soak-limit of the noun / 3]I'm sorry, but there's too much water in that diaper. I need the good shit.'[otherwise]Nah, that's not used enough for me. Use it some more and then come back to me.'[end if][roman type][line break]";
			otherwise:
				allocate 6 seconds;
				let D be a random diaper carried by the second noun;
				say "[BigNameDesc of the second noun] [if D is diaper]clicks [his of the second noun] fingers, and [his of the second noun] [D] disappears into thin air. [big he of the second noun] [end if][if the noun is worn and the noun is messed]waves [his of the second noun] hands and the nappy falls from your body, and then flies into [his of the second noun] hands. [big his of the second noun] magic ripples across your messy bottom, somehow cleaning away all the gross leftover mess and leaving you completely clean. [big he of the second noun] [otherwise if the noun is worn]waves [his of the second noun] hands and the nappy falls from your body, and then flies into [his of the second noun] hands. [big he of the second noun] [end if]steps through the leg-holes of the [noun], pulling it up to [his of the second noun] bare crotch with a loud squelch. [big he of the second noun] wiggles [his of the second noun] hips a bit, clearly enjoying the feeling of the [if the noun is messed]yucky goop[otherwise]soggy padding[end if] rubbing against [his of the second noun] loins. ";
				repeat with C running through diapers carried by the second noun:
					only destroy C; [she only holds onto the most recent one]
				let N be 1;
				if T >= the soak-limit of the noun, now N is 2;
				if the noun is messed, now N is 1; [Getting the player out of a messy situation is rewarding enough on its own]
				if the noun is worn and the noun is cursed, now N is 0;
				now the second noun is carrying the noun;
				if the altar-uses of the second noun < 0, now the altar-uses of the second noun is 0;
				if N > 0, say "[second custom style]'Ooh, that feels [if N > 1]incredible[otherwise]goood[end if]! You've earned [if N is 1]one use[otherwise][N] uses[end if] of the altar[one of]. Hey, don't judge me! I'm not the one who NEEDS to wear nappies[or][stopping].'[roman type][line break]";
				otherwise say "[second custom style]'Ooh, that feels pretty fucking good! You've not earned any uses of the altar though, since I had to use my magic to remove that curse[one of]. What, you thought I wouldn't notice that you were stuck in it?'[or].'[stopping][roman type][line break]";
				AltarUsesUp N;
			do nothing instead;
		otherwise if the noun is soiled-diaper:
			allocate 6 seconds;
			say "[BigNameDesc of the second noun] smiles widely.[line break][speech style of the second noun]'Ooh, have you been saving this one for me? You're too kind! Sure, I'll give you one use of the altar for this.'[roman type][line break][big he of the second noun] takes the [MediumDesc of the noun] from your hands.";
			destroy the noun;
			if the altar-uses of the second noun < 0, now the altar-uses of the second noun is 0;
			AltarUsesUp 1;
			do nothing instead;
		otherwise if the noun is bag lunch:
			if the second noun is unbitchy and the second noun is unconcerned, say "[second custom style]'Don't worry about paying me. You can use my altar for free!'[roman type][line break]" instead;
			if the noun is not held, say "You should probably pick it up first." instead;
			if the altar-uses of the second noun < 0, now the altar-uses of the second noun is 0;
			say "[BigNameDesc of the second noun] brings the [ShortDesc of noun] to [his of the second noun] face and squeezes the contents into [his of the second noun] mouth like it's a tube of toothpaste! [big he of the second noun] downs the whole condom-load in one, without stopping for a breath. After [he of the second noun]'s finished, [he of the second noun] moans with arousal.[line break][second custom style]'That tasted incredible! I'll give you two more uses of the altar. [one of]And I want more where that came from[or]Keep them coming[stopping]!'[roman type][line break]";
			AltarUsesUp 2;
			allocate 6 seconds;
			destroy the noun instead;
			do nothing instead;
		otherwise if the noun is players-detached-dick: [#LXorDD]
			if player is wearing players-detached-dick:
				say "[big he of the second noun] slowly tilts [his of the second noun] head to one side, eyeing your detached dick stuffed inside you. [speech style of the second noun]'Wow, lazy, much? You expect me to take that out for you, too?'[roman type][line break]";
				humiliate 100;
				compute restoration of dick by the second noun;
			otherwise if player is carrying players-detached-dick:
				say "[big he of the second noun] sniffs at it, sniggers, and [if the size of the noun < 4]pops it in and out of [his of the second noun] mouth a few times, [his of the second noun] tongue flicking it[otherwise if the size of the noun > 8]manages to force it down [his of the second noun] throat in a feat of sword-swallowing, before gasping as [he of the second noun] extracts it with a loud [']pop['][otherwise]swallows it and sucks, [his of the second noun] cheeks hollowing out as [he of the second noun] sucks at it, [his of the second noun] tongue curling around the shaft[end if], which makes you stagger at the strong burst of sensation.[line break][speech style of the second noun]'Don't get any ideas: I have to, er, attune to it for the restoration.'[roman type][line break]";
				stimulate penis from the second noun;
				compute restoration of dick by the second noun;
		otherwise:
			[#LXorDD]
			if the curse-quest of the second noun is 1 and the noun is fae mushroom:
				remove the noun from play;
				say "[second custom style]'Great work! But I'm afraid I need something else as well. Somewhere in this world, there's a scroll which contains the instructions for the ritual required to remove the curse. If you can find that, and bring it back here, then I can do the rest[one of]. Maybe it's being kept in some kind of library?'[or].'[stopping][roman type][line break]";
				now the curse-quest of the second noun is 2;
				now a random recipe for latex curse reversal is in Hotel25;
				now the second noun is interested instead;
			otherwise if the curse-quest of the second noun is 2 and the noun is recipe for latex curse reversal:
				[Note that LatexCurseRemoval also clears the curse.]
				say "[second custom style]'Nice, you got it! All right leave the rest to me...'[roman type][line break]The [second noun] takes the recipe and studies it carefully, muttering words you don't understand whilst stirring the mushroom into some kind of murky liquid. With a hum and a wave of [his of the second noun] wand, you feel the curse leaving you! [LatexCurseRemoval][line break][second custom style]'[one of]You know that was the most interesting thing I've had to do this century, I've been DYING of boredom here. You're all right kid. Feel[or]You should probably be more careful in the future, or eventually we'll run out of mushrooms to turn you back. See you around baby - you should still feel[stopping] free to come by any time if you want to use my altar.'[roman type][line break]";
				now the second noun is unbitchy;
				now the curse-quest of the second noun is 3 instead;
			otherwise:
				try offering the noun to the second noun instead;
	try offering the noun to the second noun instead.

Giving ends here.
