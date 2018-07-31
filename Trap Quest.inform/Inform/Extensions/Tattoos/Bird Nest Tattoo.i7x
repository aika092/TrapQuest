Bird Nest Tattoo by Tattoos begins here.

bird nest tattoo is a crotch tattoo. The tattoo-title of bird nest tattoo is "bird nest". 
Figure of bird nest tattoo is the file "Items/Tats/tattoo36.png".
Definition: a bird nest tattoo (called T) is drawable:
	if there is a worn crotch tattoo, decide no;
	if diaper quest is 1, decide no;
	if there is an on-stage santa hat, decide yes;
	decide no.
Definition: bird nest tattoo (called T) is eligible:
	if the noun is santa hat, decide yes;
	decide no.
To say tattoo-desc of (T - bird nest tattoo):
	if images visible is 1, display figure of bird nest tattoo;
	say "A tattoo of a mother bird with three younger birds surrounds your [genitals]. It uses your pubic hair to represent a bird's nest. It makes you feel festive.".
A time based rule (this is the Christmas tattoo rule):
	if bird nest tattoo is worn and a random number between 1 and 100 is 1:
		let G be a random off-stage christmas gift;
		if G is christmas gift:
			say "You realise you are humming '[if the bimbo of the player < 5]I Saw Mommy Kissing Santa Claus'[otherwise if the bimbo of the player < 10]All I want for Christmas is You'[otherwise if the bimbo of the player < 15]Santa Baby'[otherwise]Christmas Tree' by Lady Gaga[end if] to yourself. Suddenly a gift appears [if the player is upright]at your feet[otherwise]in front of you[end if]!";
			now G is in the location of the player;
			compute autotaking G.

Bird Nest Tattoo ends here.

