Tongue Piercing by Piercings Modules begins here.

A tongue piercing is a kind of piercing.  The printed name of tongue piercing is "[TQlink of item described][item style]tongue piercing[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The printed plural name of tongue piercing is "[TQlink of item described][item style]tongue piercings[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of tongue piercing is "tpi".  There is 1 tongue piercing.  A tongue piercing is usually oral-sex-addiction-influencing.

To decide which number is the initial outrage of (C - a tongue piercing):
	decide on 7.

Definition: a tongue piercing (called C) is currently visible: [Is the item worn and currently visible to onlookers?]
	if C is not worn, decide no;
	if there is a worn hood or the latex-transformation of the player > 6, decide yes; [If there is something holding your mouth open then your piercing is visible]
	decide no.

Check taking off tongue piercing:
	say "That's permanently welded into your tongue!" instead. 

Figure of tongue piercing is the file "tonguepiercing1.png".

To decide which figure-name is the clothing-image of (C - a tongue piercing):
	decide on figure of tongue piercing.

To say ClothingDesc of (C - a tongue piercing):
	say "A large stud fixed on the underside of your tongue.  You're not used to its presence so it's difficult to take your mind off it[if the item described is cursed]. Its curse is preventing people from understanding what you're trying to say[end if].".

To say ShortDesc of (C - a tongue piercing):
	say "tongue piercing".

To compute periodic effect of (P - a tongue piercing):
	if P is not blessed and the stomach-semen of the player is 0 and the thirst of the player < 3 and the latex-transformation of the player < 5 and a random number between 1 and 80 is 1:
		say "[bold type]Your [printed name of P] is [one of][or]still [stopping]crying out for you to taste and swallow more [semen].  You suddenly feel a lot more thirsty...";
		while the player is not thirsty and the stomach-liquid of the player > 0:
			StomachDown 1;
		if P is cursed, StomachDown 1.

Definition: a tongue piercing (called P) is eligible:
	decide no.

[!<TheTonguePiercingPreventsSpeechRule>+

Prevents speech if cursed.

+!]
This is the tongue piercing prevents speech rule:
	if there is a worn cursed tongue piercing, rule fails.
The tongue piercing prevents speech rule is listed in the player speech rules.

Section - Wearability

tongue piercing wearability rules is a rulebook.  The wearability rules of tongue piercing is usually tongue piercing wearability rules.

This is the tongue piercing already worn rule:
	if there is a worn tongue piercing, rule fails.
The tongue piercing already worn rule is listed in the tongue piercing wearability rules.


Tongue Piercing ends here.
