DQ Monster Variants by DQ Only Stuff begins here.

Volume - Explorers

Figure of gymnast explorer 1 is the file "NPCs/MultiFloor/Explorers/gymnast4.png".
Figure of gymnast explorer 2 is the file "NPCs/MultiFloor/Explorers/gymnast5.png".
Figure of gymnast explorer 3 is the file "NPCs/MultiFloor/Explorers/gymnast6.png".
Figure of gymnast explorer cutscene 2 is the file "NPCs/MultiFloor/Explorers/gymnast1-cutscene2.jpg".
To say UniqueMonsterDesc of (M - gymnast-explorer):
	say "[big he of M] is wearing a shiny blue latex leotard which is stretched tightly over a thick, bulging, disposable diaper. [if the explorer-bimbo of M is 0]Despite the fact that [he of M][']s diapered, and forced to move with a waddle, [he of M] seems quietly confident in [himself of M].[otherwise]Someone has written [']BALLERINA WHILE UPRIGHT['] on one of [his of M] legs, and [']INCONTINENT WHEN NOT SMILING['] on the other, with a permanent marker. [end if][if the explorer-bimbo of M is 1]This seems to be causing [him of M] to prance around like a ballerina on tip-toes instead of walking normally, which looks very awkward and uncomfortable, especially when combined with [his of M] thick padding. But still, [he of M] seems to be smiling widely. All the time. Perhaps there's an obvious reason for that, too...[otherwise if the explorer-bimbo of M >= 2]And on [his of M] arms, it now reads [']CAN'T CHANGE OWN CLOTHES['] and [']WEAK MUSCLES[']. For those reasons, it would seem, [NameDesc of M] has been relegated to lying down on [his of M] hotel bed, clutching [his of M] belly awkwardly, forcing an unconvincing smile that's curved at the edges, and threatening to degrade into a pained grimace. Well... At least [he of M] doesn't have to act like a ballerina while lying down. Still though, it would appear that [his of M] hopes of adventuring are at an end.[end if]".
Definition: gymnast-explorer is a diaper wetter: decide yes.
To decide which figure-name is Figure of gymnast explorer 1 cutscene 1:
	decide on figure of small image.
To compute protection of (M - gymnast-explorer):
	if the explorer-bimbo of M is 1:
		let N be a random combative monster;
		say "[BigNameDesc of M] looks at [BigNameDesc of N] and lets out a little squeak of fear. It's only the briefest moment that [he of M][']s not smiling, but that's enough for the floodgates to open. The squeak turns into a squeal of panic as [if diaper messing >= 3]a huge, horrible mess surges forth, filling [his of M] diaper so much that it bulges out even more than before, looking like a disgusting, stinky, lumpy prison[otherwise][he of M] finds that [he of M] can't stop [himself of M] from pissing now that [he of M][']s started, and over the next several moments, [his of M] thick dry diaper turns into a thick, squelchy, soggy diaper[end if]. The whole ordeal is made twice as humiliating by the ballerina pose [he of M] is holding, with one foot as high in the air as humanly possible above [his of M] head, and the other balanced on [his of M] toes.";
		if diaper messing >= 3:
			cutshow figure of gymnast explorer cutscene 2;
			say "[speech style of M]'Oh god, it smells so bad!'[roman type][line break][big he of M] sobs to [himself of M].";
			if the player is air breathing vulnerable, SmellGrossOut messyDiaperSmellGrossnessLevel;
		say "[speech style of M]'So gross... Oh, I'm so pathetic!'[roman type][line break][BigNameDesc of M] wails as [he of M] ballet-prances away.";
		compute banishment of M.

Figure of blonde explorer 1 is the file "NPCs/MultiFloor/Explorers/blonde4.png".
Figure of blonde explorer 2 is the file "NPCs/MultiFloor/Explorers/blonde5.png".
Figure of blonde explorer 3 is the file "NPCs/MultiFloor/Explorers/blonde6.png".
To say UniqueMonsterDesc of (M - blonde-explorer):
	say "[big he of M] is wearing [if the explorer-bimbo of M is 0]a set of clothing which is a fashionable but provocative mixture of blue latex and black leather. It would be somewhat acceptable for this place if it wasn't for the bottom half - her sizeable rump is covered by nothing except a plain white disposable diaper. In one hand [he of M] has a white bag of holding, which again would look fine... If it wasn't for the fact that it has the words 'DIAPER CHANGING KIT' printed on each side[otherwise]a super short frilly pink babydoll dress with matching stockings and mary janes with pretty bows, a far cry away from [his of M] stylish blue and black thigh-highs, shoulder-length gloves and overbust corset that he was wearing before. [big he of M] still has a bag of holding, but it's now even more clearly a diaper bag, with pouches for baby milk and diaper changing equipment, and coloured in baby pink and baby blue. Speaking of baby pink, [his of M] fully exposed disposable diaper is thicker than before, and has a lovely shade of baby pink to parts of it, which perfectly match [his of M] bag, stockings and parts of [his of M] dress[end if][if the explorer-bimbo of M is 2]. The warm, cheerful look on [his of M] face and the way [he of M][']s shamelessly got [his of M] legs spread on the bed suggests to you that [he of M] is completely content[otherwise].[end if]".
Definition: blonde-explorer is a diaper wetter: decide yes.

A diaper quest fix rule:
	now the explorer-type of exposed-explorer is "composed". [i want the other one to start in the hotel]
To decide which figure-name is the monster-image of (M - exposed-explorer):
	if the explorer-bimbo of M >= 2, decide on Figure of rank 4 misty;
	if the explorer-bimbo of M is 1, decide on Figure of rank 2 misty;
	decide on Figure of rank 1 misty.
To say UniqueMonsterDesc of (M - exposed-explorer):
	say "[big he of M] is wearing [if the explorer-bimbo of M is 0]a plain white top and plain white panties, and has a full bottle of water which [he of M] seems pretty proud about[otherwise if the explorer-bimbo of M is 1]a plain white top and big thick plain white diaper, which doesn't seem to be bothering [him of M] that much, if [his of M] proud expression is to be believed[otherwise]a soaking wet plain white top which has gone see-through, exposing [his of M] breasts, and the most giant white diaper you've ever seen - so large [he of M] can barely move. [big his of M] confident demeanour has finally evaporated - [he of M] looks rather self-conscious and unsure of [himself of M][end if].".
Definition: exposed-explorer is a diaper wetter:
	if the explorer-bimbo of exposed-explorer >= 1, decide yes;
	decide no.

A diaper quest fix rule:
	now the explorer-type of composed-explorer is "diaper-bound". [i want this one to start in the hotel]
To decide which figure-name is the monster-image of (M - composed-explorer):
	if the explorer-bimbo of M >= 2, decide on figure of rachel 3;
	if the explorer-bimbo of M is 1, decide on figure of rachel 2;
	decide on figure of rachel 1.
To say UniqueMonsterDesc of (M - composed-explorer):
	say "[big he of M] [if the explorer-bimbo of M is 0]is wearing smart business clothes - a white blouse and red skirt - but the skirt can't hide the shape of [his of M] superthick white diaper. When [he of M] pulls [his of M] skirt up to check it, you can see that it is thoroughly soaked - [he of M] is in desperate need of a change, but doesn't seem to want to admit it[otherwise if the explorer-bimbo of M is 1]is now wearing less modest clothes, including a shorter purple skirt that keeps [his of M] superthick white diaper on view at all times. [big his of M] short hair is tied into makeshift pigtails. [big he of M] looks very embarrassed[otherwise]is now wearing even more embarrassing clothes, including a super short pink skirt that barely covers 20% of [his of M] superthick white diaper. [big his of M] short hair is still tied into makeshift pigtails and [his of M] pink vest top says 'BABYGIRL' on the front. [big he of M] looks extremely embarrassed[end if].".
Definition: composed-explorer is a diaper wetter: decide yes.




DQ Monster Variants ends here.
