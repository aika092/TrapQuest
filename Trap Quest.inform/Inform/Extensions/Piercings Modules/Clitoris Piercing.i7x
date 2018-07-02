Clitoris Piercing by Piercings Modules begins here.

clitoris piercing is a kind of piercing. 

normal clit piercing is a clitoris piercing.
slut clit piercing is a clitoris piercing.

The printed name of a clitoris piercing is "[TQlink of item described][item style][if the bimbo of the player > 10]clit[otherwise]clitoris[end if] piercing[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of clitoris piercing is "clp". Understand "clit" as clitoris piercing. Figure of clitoris piercing is the file "Items/Accessories/Piercings/clitpiercing1.png". Figure of slut clitoris piercing is the file "Items/Accessories/Piercings/clitpiercing2.png". A clitoris piercing is vaginal-sex-addiction-influencing.

The printed name of slut clit piercing is "[TQlink of item described][item style]slut [if the bimbo of the player > 10]clit[otherwise]clitoris[end if] piercing[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To decide which figure-name is the clothing-image of (C - a clitoris piercing):
	decide on figure of clitoris piercing.

To decide which figure-name is the clothing-image of (C - slut clit piercing):
	decide on figure of slut clitoris piercing.

To say ClothingDesc of (C - a clitoris piercing):
	say "A jewelled vertical clitoris hood piercing[if C is slut clit piercing] with the pink word 'SLUT' dangling off of it in pink jewels[end if]. [if C is cursed]You can feel it making your clit much more sensitive[otherwise if C is blessed]You can feel it making your clit less sensitive[otherwise]You can feel it making your clit slightly more sensitive[end if].".
To say ShortDesc of (C - a clitoris piercing):
	say "jewelled clitoris piercing".
To say ShortDesc of (C - slut clit piercing):
	say "jewelled SLUT clitoris piercing".

To decide which number is the vaginal sensitivity influence of (C - a clitoris piercing):
	if C is cursed, decide on 3;
	if C is blessed, decide on -2;
	decide on 1.

To decide which number is the delicateness-influence of (C - a clitoris piercing):
	decide on 1.

To decide which number is the initial outrage of (C - a clitoris piercing):
	decide on 13.

To decide which number is the initial outrage of (C - slut clit piercing):
	decide on 17.

To say PiercingFlav of (P - a clitoris piercing):
	say "An arm comes down with a searing hot needle!  You scream [if the player is gagged]through your gag [end if]as your poor clitoris is painfully pierced. The needle is quickly removed and a jewelled metal piercing is pushed into place.[line break][variable custom style][if the delicateness of the player < 10]Oww!  No, no, anywhere but there! That's my most sensitive part... and I can feel this making it even more sensitive![otherwise if 15 is too humiliating]I have to make sure this is kept hidden under clothes! How embarrassing.[otherwise]Hmm, I can feel this making my clit WAY more sensitive. I guess that will help me have lots of orgasms![end if][roman type][line break]";
	if there is a worn tattoo:
		say "A bizarre tattoo appears in your armpit!";
		summon clit-piercing tattoo;
		try examining clit-piercing tattoo.

To decide which object is the concealer of (C - a clitoris piercing):
	repeat with O running through worn potentially vagina covering clothing:
		decide on O;
	decide on nothing.

Check taking off clitoris piercing:
	say "That's permanently welded into your [if the bimbo of the player < 10]poor sensitive [end if]clit!" instead. 

Definition: normal clit piercing (called C) is untransformable:
	decide no.

To decide which object is the potential-upgrade-target of (C - normal clit piercing):
	decide on slut clit piercing.

Section - Wearability

Definition: a clitoris piercing (called P) is eligible:
	if the player is male or P is worn or the player is pussy protected or there is a worn clitoris piercing, decide no;
	decide yes.

This is the cursed clitoris piercing stops you wearing underwear rule:
	if there is a worn cursed clitoris piercing:
		if wearing-target is not no protection and wearing-target is not diaper:
			if summoning is 0, say "Your [random worn clitoris piercing] somehow prevents you from putting this on!";
			rule fails.
The cursed clitoris piercing stops you wearing underwear rule is listed in the knickers wearability rules.

This is the cursed clitoris piercing stops you wearing trousers rule:
	if there is a worn cursed clitoris piercing:
		if wearing-target is not no protection:
			if summoning is 0, say "Your [random worn clitoris piercing] somehow prevents you from putting this on!";
			rule fails.
The cursed clitoris piercing stops you wearing trousers rule is listed in the trousers wearability rules.

This is the cursed clitoris piercing stops you wearing crotch covering dresses rule:
	if there is a worn cursed clitoris piercing:
		if wearing-target is crotch covering and wearing-target is not no protection:
			if summoning is 0:
				say "Your [random worn clitoris piercing] somehow prevents you from putting this on!";
				rule fails. [NB this purposefully doesn't prevent them from being summoned.]
The cursed clitoris piercing stops you wearing crotch covering dresses rule is listed in the overdress wearability rules.



Clitoris Piercing ends here.

