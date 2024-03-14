TQ Monster Variants by TQ Only Stuff begins here.

Volume - Explorers

Figure of gymnast explorer 1 is the file "NPCs/MultiFloor/Explorers/gymnast1.jpg".
Figure of gymnast explorer 2 is the file "NPCs/MultiFloor/Explorers/gymnast2.jpg".
Figure of gymnast explorer 3 is the file "NPCs/MultiFloor/Explorers/gymnast3.jpg".
To say UniqueMonsterDesc of (M - gymnast-explorer):
	say "[big he of M] is wearing a tight shiny blue swimsuit and [if the explorer-bimbo of M is 0]nothing else[otherwise if the explorer-bimbo of M is 1]is prancing around like a ballerina on tip-toes[otherwise]is lying on the bed playfully, patiently waiting for [his of M] next client[end if].".
Figure of gymnast explorer 1 cutscene 1 is the file "NPCs/MultiFloor/Explorers/gymnast1-cutscene1.png".
Figure of gymnast explorer 1 cutscene 3 is the file "NPCs/MultiFloor/Explorers/gymnast1-cutscene3.jpg".


Figure of blonde explorer 1 is the file "NPCs/MultiFloor/Explorers/blonde1.jpg".
Figure of blonde explorer 2 is the file "NPCs/MultiFloor/Explorers/blonde2.jpg".
Figure of blonde explorer 3 is the file "NPCs/MultiFloor/Explorers/blonde3.jpg".
Figure of blonde explorer 1 cutscene 1 is the file "NPCs/MultiFloor/Explorers/blonde1-cutscene1.jpg".
To say UniqueMonsterDesc of (M - blonde-explorer):
	say "[big he of M] is wearing [if the explorer-bimbo of M is 0]a set of clothing which is a fashionable but provocative mixture of blue latex and black leather. It would be somewhat acceptable for this place if it wasn't for the lack of a bottom half - [his of M] sizeable rump is covered by nothing except a flimsy blue thong. In one hand [he of M] has a stylish white bag of holding[otherwise if the explorer-bimbo of M is 1][his of M] stylish blue and black thigh-highs and shoulder-length gloves but has ditched the top, leaving [his of M] B cup breasts completely exposed. [big he of M] still has the skimpy thong and white bag of holding[otherwise]is now wearing a latex black negligee which consists of a spider's web of black strips across [his of M] skin, still leaving most of it uncovered, including [his of M] privates. While [his of M] nipples and crotch are technically somewhat covered by the matching skimpy black bikini set [he of M] is wearing, the ensemble as a whole still screams 'prostitute'[end if].".


Figure of exposed explorer 1 is the file "NPCs/MultiFloor/Explorers/exposed1.jpg".
Figure of exposed explorer 2a is the file "NPCs/MultiFloor/Explorers/exposed2a.jpg".
Figure of exposed explorer 2b is the file "NPCs/MultiFloor/Explorers/exposed2b.jpg".
Figure of exposed explorer 3a is the file "NPCs/MultiFloor/Explorers/exposed3a.jpg".
Figure of exposed explorer 3b is the file "NPCs/MultiFloor/Explorers/exposed3b.jpg".
Figure of exposed explorer 1 cutscene 1 is the file "NPCs/MultiFloor/Explorers/exposed1-cutscene1.jpg".
To decide which figure-name is the monster-image of (M - exposed-explorer):
	if weight gain fetish is 1:
		if the explorer-bimbo of M >= 2, decide on figure of exposed explorer 3b;
		if the explorer-bimbo of M is 1, decide on figure of exposed explorer 2b;
	otherwise:
		if the explorer-bimbo of M >= 2, decide on figure of exposed explorer 3a;
		if the explorer-bimbo of M is 1, decide on figure of exposed explorer 2a;
	decide on figure of exposed explorer 1.
To say UniqueMonsterDesc of (M - exposed-explorer):
	say "[big he of M] [if the explorer-bimbo of M is 0]is wearing a tight latex fetish dress with a see-through front section. [big he of M] is doing [his of M] best to not look shy at being completely on display[otherwise if the explorer-bimbo of M is 1 and weight gain fetish is 1]is wearing a tight latex fetish dress with a cut-out section for [his of M] chest. [big he of M] has gained a LOT of weight since you last saw [him of M], and [he of M] looks pretty ashamed about it[otherwise if the explorer-bimbo of M is 1]is stuck in a set of shibari-style ropes that keep [his of M] wrists bound behind [his of M] back, and also keep [his of M] privates completely exposed. [big he of M] is still doing [his of M] best to keep a smile on [his of M] face, despite [his of M] predicament[otherwise if weight gain fetish is 1]is now completely naked, and still significantly overweight. [big he of M] lies on [his of M] bed, waiting for [his of M] next client[otherwise]is stuck in a set of shibari-style ropes that keep [his of M] wrists bound behind [his of M] back, and also keep [his of M] privates completely exposed. [big he of M] now has a vibrator shoved deep inside [his of M] hole, held in place by the ropes, keeping [him of M] permanently on the edge of orgasm[end if].".


A game universe initialisation rule:
	if pregnancy fetish is 1, now the explorer-type of composed-explorer is "pregnant".
Figure of composed explorer 1a is the file "NPCs/MultiFloor/Explorers/composed1a.jpg".
Figure of composed explorer 1b is the file "NPCs/MultiFloor/Explorers/composed1b.jpg".
Figure of composed explorer 2a is the file "NPCs/MultiFloor/Explorers/composed2a.jpg".
Figure of composed explorer 2b is the file "NPCs/MultiFloor/Explorers/composed2b.png".
Figure of composed explorer 3a is the file "NPCs/MultiFloor/Explorers/composed3a.jpg".
Figure of composed explorer 3b is the file "NPCs/MultiFloor/Explorers/composed3b.jpg".
Figure of composed explorer 1a cutscene 1 is the file "NPCs/MultiFloor/Explorers/composed1a-cutscene1.jpg".
Figure of composed explorer 1b cutscene 1 is the file "NPCs/MultiFloor/Explorers/composed1b-cutscene1.jpg".
To decide which figure-name is the monster-image of (M - composed-explorer):
	if pregnancy fetish is 1:
		if the explorer-bimbo of M >= 2, decide on figure of composed explorer 3b;
		if the explorer-bimbo of M is 1, decide on figure of composed explorer 2b;
		decide on figure of composed explorer 1b;
	otherwise:
		if the explorer-bimbo of M >= 2, decide on figure of composed explorer 3a;
		if the explorer-bimbo of M is 1, decide on figure of composed explorer 2a;
		decide on figure of composed explorer 1a.
To say UniqueMonsterDesc of (M - composed-explorer):
	if pregnancy fetish is 1, say "[big he of M] is wearing [if the explorer-bimbo of M is 0]denim yoga pants and a blue tank top that can't stretch enough to cover [his of M] full term pregnant belly[otherwise if the explorer-bimbo of M is 1]nothing but a set of stretchy bright pink yoga pants, leaving [his of M] breasts and heavily pregnant belly bare. [big he of M] looks slightly overdue, and it's clearly exhausting for [him of M] to physically exert [himself of M] too much[otherwise]a super stretchy pair of grey yoga pants to accommodate [his of M] very overdue pregnant belly, which is now showing a lot of stretch marks. [big his of M] breasts are completely uncovered[end if].";
	otherwise say "[big he of M] is wearing [if the explorer-bimbo of M is 0]a long dark grey and white striped top which is barely covering [his of M] genitals. But [he of M] is striding around with an air of confidence. Perhaps it's just an act - it's difficult to tell[otherwise if the explorer-bimbo of M is 1]a super slutty black catsuit with a super-deep V neck at the front that goes down to [his of M] crotch, exposing [his of M] pubes, and also exposing [his of M] nipples unless [he of M] keeps hold of the two sides of the V and pulls them inwards. [big he of M] is also wearing a pair of fake cat ears, and a catbell on a collar. Despite this, [he of M] appears to be smiling and happy with [his of M] situation and appearance[otherwise]nothing at all - [his of M] breast and genitals are on full display. [big his of M] confident demeanour has finally evaporated - [he of M] looks rather self-conscious and unsure of [himself of M][end if].".
To compute unique interaction of (M - composed-explorer):
	if pregnancy fetish is 1 and the explorer-bimbo of M is 0 and playerRegion is hotel:
		let L be the location of the player;
		let nearby-bedroom-direction be up;
		let nearby-bedroom be the location of the player;
		repeat with D running through the Nviables of L:
			let R be the room D from L;
			if there is a hotel bed in R:
				now nearby-bedroom-direction is D;
				now nearby-bedroom is R;
		if nearby-bedroom-direction is not up:
			say "[BigNameDesc of M] looks through the doorway to the [nearby-bedroom-direction].[line break][speech style of M]'I wonder if there's anything useful in this room.'[roman type][line break][big he of M] takes a step inside, looking around carefully for traps.[line break][speech style of M]'Come on, [NameBimbo], it seems safe enough.'[roman type][line break]But just as [he of M] says that, several things happen. Two [if interracial fetish is 1]black [end if][men of male-m] come out of a hidden doorway, flexing their fingers and pulling out their [manly-penis]s.[line break][speech style of male-m]'Hey look, bro, this whore's already pregnant.'[roman type][line break][BigNameDesc of M] tries to turn around and leave the room, but a strong metal shutter has risen out of the floor, and is rapidly rising, blocking the way.[line break][speech style of M]'[NameBimbo], help!'[roman type][line break]But there's nothing you can do, in the few brief moments you have before the barrier seals [him of M] in the room with those [men of male-m].[line break][speech style of male-m]'Sweet, if [he of M][']s already pregnant, then I don't need to use a rubber.'[roman type][line break]That's the last thing you hear before the soundproof [']MODESTY SHUTTER['] slams shut at the top of the doorframe.";
			now a random modesty shutter is in nearby-bedroom;
			cutshow Figure of composed explorer 1b cutscene 1;
			increase the explorer-bimbo of M by 1;
			calm M;
			repeated set up M;
	otherwise if the explorer-bimbo of M is 0 and there is an uninterested robobellboy in the location of the player:
		let R be a random uninterested robobellboy in the location of the player;
		say "[speech style of R]'EXCUSE ME, YOU REQUIRE ADDITIONAL CLOTHING.'[roman type][line break][BigNameDesc of R] suddenly barks that concerning statement. But then you realise... [big he of R][']s not talking to you, [he of R][']s talking to [NameDesc of M]![line break][speech style of M]'Oh, um, really...?'[roman type][line break]It looks like [NameDesc of M] really doesn't want to fight right now.[line break][speech style of R]'ITEM CHOSEN PLEASE ADORN YOUR NECK WITH THIS NECKWEAR.'[roman type][line break][BigNameDesc of R] has produced a collar with a catbell on the front from [his of R] chest compartment. It doesn't look like [he of R] is going to take no for an answer. [BigNameDesc of M] hesitates for a moment, but then acquiesces.[line break][speech style of M]'Um, okay...'[roman type][line break]As soon as [NameDesc of M] snaps the collar around [his of M] neck, you can see regret in [his of M] expression. The back has snapped shut, obviously cursed, and no [NameDesc of M] can't remove it, no matter how much [he of M] tries. [BigNameDesc of R] seems satisfied, and loses interest.[line break][speech style of M]'No... No!'[roman type][line break]You can see why [NameDesc of M] is so panicked - the collar has more tricks up its sleeve. A pair of fake cat ears appear on [his of M] head, and then a moment later, a shiny black liquid begins to spill out of the collar, coating the rest of [NameDesc of M][']s body in tight, shiny latex.[line break][speech style of M]'No no no, I don't want to be a fetishy latex kitty cat!'[roman type][line break]But [NameDesc of M] doesn't have a say in the matter - the black liquid keeps on seeping down [his of M] body, forming into a cursed latex catsuit.[line break][speech style of M]'I've got to get to that altar!'[roman type][line break]You watch on awkwardly as [NameDesc of M] begins to hustle towards the rear exit of the [playerRegion].";
		cutshow Figure of composed explorer 1a cutscene 1;
		increase the explorer-bimbo of M by 1;
		calm M;
		repeated set up M.


TQ Monster Variants ends here.
