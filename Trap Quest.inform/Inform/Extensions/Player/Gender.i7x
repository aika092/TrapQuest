Gender by Player begins here.

[!<YourselfIsMale>+

REQUIRES COMMENTING

+!]
Definition: Yourself is male if player-gender is 0.

[!<YourselfIsFemale>+

REQUIRES COMMENTING

+!]
Definition: Yourself is female if player-gender is 1.

[!<YourselfIsOriginallyFemale>+

REQUIRES COMMENTING

+!]
Definition: Yourself is originally female if player-gender is 1 and TG fetish is 0.


[!<SexChangePerson>+

This is what we do whenever the player has a sex change (from male to female).

+!]
To SexChange (P - a person):
	if the player is male: 
		now choice in row 1 of the Table of Player Options is 1;
		say "[if there is a worn chastity cage]Your chastity cage morphs into a tight, snug chastity belt.  [end if]Suddenly [if the thickness of hips < 4]your hips widen, [end if]you lose a few inches of height and your shoulders become a bit less broad.";
		if the thickness of hips < 4, HipUp 2;
		say "[if the bimbo of the player < 7][first custom style]No, no, no, no!  This is so gross.  I want my dick! I have to win this game and get back into my real body.[otherwise if the bimbo of the player < 10][first custom style]I never asked for this!  Why is this happening to me?  I guess my name is definitely [NameBimbo] now.[otherwise if the bimbo of the player < 14 or diaper quest is 1][second custom style][NameBimbo]... I like that name.  Well this will be a new experience, but at least it should be fun.[otherwise][second custom style]This is amazing!  Now I can fuck studs just like a real girly bimbo.  Thanks so much Nintendolls!  I can't wait to lose my virginity. *giggle*[end if][roman type][line break]";
		now the size of penis is 0;
		now the real size of penis is -1;
		now the virgin of the player is 1;
		now the soreness of vagina is 0;
		now the openness of vagina is 0;
		now the real openness of vagina is 0;
		now sex-changed is 1;
		repeat with C running through worn clothing:
			SexChange C.

[!<SayDefaultSexChangeFlav>+

This is what we say if there's no custom sex change flavour provided by the event that caused the change.

+!]
To say DefaultSexchangeFlav:
	say "Suddenly you feel your insides behind your crotch twisting and turning and rearranging themselves[if the size of penis > 0], and then you shriek in surprise and horror as you realise you can't feel your [player-penis][end if]!  You reach down to feel yourself and discover that a brand new woman's [variable custom style][vagina][roman type] has taken its place.  ".

[!<SexChangeClothing>+

Some clothing will need to change in some way when the player's sex changes.  To do this we create a more specific version of the below procedure.

+!]
To SexChange (C - a clothing):
	do nothing.

Gender ends here.
