Clitoris Piercing by Piercings Modules begins here.

A clitoris piercing is a kind of piercing. The printed name of clitoris piercing is "[TQlink of item described][item style][if the bimbo of the player > 10]clit[otherwise]clitoris[end if] piercing[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of clitoris piercing is "clp". Understand "clit" as clitoris piercing. There is 1 clitoris piercing. Figure of clitoris piercing is the file "clitpiercing1.png". A clitoris piercing is usually vaginal-sex-addiction-influencing.

To decide which figure-name is the clothing-image of (C - a clitoris piercing):
	decide on figure of clitoris piercing.

To say ClothingDesc of (C - a clitoris piercing):
	say "A jewelled vertical clitoris hood piercing. [if C is cursed]You can feel it making your clit much more sensitive[otherwise if C is blessed]You can feel it making your clit less sensitive[otherwise]You can feel it making your clit slightly more sensitive[end if].".
To say ShortDesc of (C - a clitoris piercing):
	say "jewelled vertical clitoris hood piercing".

To decide which number is the vaginal sensitivity influence of (C - a clitoris piercing):
	if C is cursed, decide on 3;
	if C is blessed, decide on -2;
	decide on 1.

To decide which number is the delicateness-influence of (C - a clitoris piercing):
	decide on 1.

To decide which number is the initial outrage of (C - a clitoris piercing):
	decide on 13.

To say PiercingFlav of (P - a clitoris piercing):
	say "An arm comes down with a searing hot needle!  You scream [if there is a worn ballgag]through your gag [end if]as your poor clitoris is painfully pierced. The needle is quickly removed and a jewelled metal piercing is pushed into place.[line break][variable custom style][if the sex addiction of the player < 10]Oww!  No, no, anywhere but there!  That's my most sensitive part... and I can feel this making it even more sensitive![otherwise if 15 is too humiliating]I have to make sure this is kept hidden under clothes!  How embarrassing.[otherwise]Hmm, I can feel this making my clit WAY more sensitive. I guess that will help me have lots of orgasms![end if][roman type][line break]".

To decide which object is the concealer of (C - a clitoris piercing):
	repeat with O running through worn potentially vagina covering clothing:
		decide on O;
	decide on nothing.

Check taking off clitoris piercing:
	say "That's permanently welded into your [if the bimbo of the player < 10]poor sensitive [end if]clit!" instead. 


Section - Wearability

Definition: a clitoris piercing (called P) is eligible:
	if the player is male or the player is pussy protected or there is a worn clitoris piercing, decide no;
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

