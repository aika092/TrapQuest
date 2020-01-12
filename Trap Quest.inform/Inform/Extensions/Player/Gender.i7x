Gender by Player begins here.

Definition: yourself is originally female rather than originally male if original-player-gender is 1.


Definition: a person is presenting as male:
  if lady fetish is 2, decide yes;
  if it is male and lady fetish is 0, decide yes;
  decide no.
Definition: yourself is presenting as male if the player is gendered male and the largeness of breasts < 3 and the number of worn womanly currently visible clothing < 3.
Definition: a person is presenting as female if it is not presenting as male.

Definition: yourself is gendered female:
	if the player is female and transGender is 0, decide yes;
	if the player is male and transGender is 1, decide yes;
	decide no.
Definition: yourself is gendered male if the player is not gendered female.

Definition: yourself is sexed male if the player is male.
Definition: yourself is sexed female if the player is female.

[!<SexChangePerson>+

This is what we do whenever the player has a sex change (from male to female).

+!]
To SexChange (P - a person):
	if the player is male:
		now the player is female;
		say "[if there is a worn chastity cage]Your chastity cage morphs into a tight, snug chastity belt. [end if]Suddenly [if the thickness of hips < 4]your hips widen, [end if]you lose a few inches of height and your shoulders become a bit less broad[if diaper quest is 1]. A pair of breasts burst forth from your chest, completing your transformation[end if].";
		if the thickness of hips < 4, HipUp 2;
		say "[if transGender is 1][variable custom style]I've dreamed about the day I might get a real vagina. But I didn't expect it to happen like this...[otherwise if the bimbo of the player < 7][first custom style]No, no, no, no! This is so gross. I want my dick! I have to win this game and get back into my real body.[otherwise if the bimbo of the player < 10][first custom style]I never asked for this! Why is this happening to me? I guess my name is definitely [NameBimbo] now.[otherwise if the bimbo of the player < 14 or diaper quest is 1][second custom style][NameBimbo]... I like that name. Well this will be a new experience, but at least it should be fun.[otherwise][second custom style]This is amazing! Now I can fuck studs just like a real girly bimbo. Thanks so much Nintendolls! I can't wait to lose my virginity. *giggle*[end if][roman type][line break]";
		now the size of penis is 0;
		now the real size of penis is -1;
		if virginity-taker is the throne, now the virgin of the player is 1;
		now the soreness of vagina is 0;
		now the openness of vagina is 0;
		now the real openness of vagina is 0;
		if diaper quest is 1, configure DQ female proportions;
		now sex-changed is 1;
		repeat with C running through worn clothing:
			SexChange C.

[say "[if the bimbo of the player < 7][line break][first custom style]No, no, no, NO! I can't believe I let this happen again! I HATE this game![otherwise if the bimbo of the player < 10][first custom style]I should have known this would happen again! Maybe I should just accept it this time...[otherwise if the bimbo of the player < 14 or diaper quest is 1][line break][second custom style]So... Here I go again, huh? Well, I already squandered my second chance, so I might as well go with it.[otherwise][second custom style]Yes! I'm finally back in my real body! Thanks so much Nintendolls! Maybe this time, I'll even lose my virginity! *giggle*[end if][roman type][line break]";]

To ReverseSexChange (P - a person):
	if the player is female and sex-changed < 2 and the virgin of the player is 1:[Failsafe. If either of the latter two conditions are true, this shouldn't even trigger.]
		now the player is male;
		if there is a worn chastity cage:
			say "Your chastity belt morphs into a tight, snug chastity cage. [run paragraph on]";
		if the player is a flatchested trap or diaper quest is 1:
			if the silicone volume of breasts > 0:[breast implants are irreversible]
				say "Reacting to the surge of testosterone in your body, your breasts jiggle and slowly recede back into your flesh. However, your breast implants were never connected to your hormones anyway, and remain completely unaffected.";
			otherwise:
				say "Reacting to the surge of testosterone in your body, your breasts jiggle and slowly recede back into your flesh, leaving you completely flatchested.";
		otherwise:
			say "Reacting to the surge of testosterone in your body, your shoulders broaden, and you gain a few inches of height.";
		if the player is a flatchested trap or diaper quest is 1:
			now the flesh volume of breasts is min breast size;
			now the real flesh volume of breasts is min breast size + the silicone volume of breasts;
		now the size of penis is min penis size;
		now the real size of penis is min penis size;
		if penisvirginity-taker is the throne, now the virgin of the player is 1;
		now sex-changed is -1.[TODO: ReverseSexChange clothing]

To configure DQ female proportions:
	now the flesh volume of breasts is 6;
	now the real flesh volume of breasts is 6;
	now the real largeness of breasts is 4;
	now the thickness of hips is 5;
	now the real thickness of hips is 5;
	now the flesh volume of hips is 5.

[!<SayDefaultSexChangeFlav>+

This is what we say if there's no custom sex change flavour provided by the event that caused the change.

+!]
To say DefaultSexchangeFlav:
	say "Suddenly you feel your insides behind your crotch twisting and turning and rearranging themselves[if the player is possessing a penis], and then you shriek in surprise and horror as you realise you can't feel your [player-penis][end if]! [if the player is able to use manual dexterity]You reach down to feel yourself[otherwise]You look down[end if] and discover that a brand new woman's [vagina] has taken its place. ";
	cutshow figure of body reaction 6 for vagina.

[!<SexChangeClothing>+

Some clothing will need to change in some way when the player's sex changes. To do this we create a more specific version of the below procedure.

+!]
To SexChange (C - a clothing):
	do nothing.

Gender ends here.

