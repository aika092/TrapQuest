Stuffed Mushroom by Food begins here.



A stuffed mushroom is a kind of chef food. There is 1 stuffed mushroom. The printed name of a stuffed mushroom is "[TQlink of item described]stuffed mushroom[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of a stuffed mushroom is "[TQlink of item described]stuffed mushrooms[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of stuffed mushroom is usually "sm". The description of a stuffed mushroom is "A large mushroom [if the quality of the noun > -1]stuffed with tasty ingredients. It smells so good.[otherwise if diaper quest is 1]stuffed with tasty ingredients. It has a really sharp odour.[otherwise if the quality of the noun is -1]stuffed with tasty ingredients. It has a really sharp odour. Like someone came on it.[otherwise]cooked and glazed with 100% pure [semen].[end if]".

To say ShortDesc of (C - a stuffed mushroom):
	say "stuffed mushroom".

To say DevourFlav of (C - a stuffed mushroom):
	if diaper quest is 1, say "You [if the flesh volume of arms > 7]greedily stuff the [noun] in your face, taking a few noisy chomps before swallowing it whole.[otherwise if the quality of the noun > -2]speedily devour the rich, oily [noun].[otherwise]slowly eat the [noun], savouring the rich, oily taste and mulling over its texture.[end if]";
	otherwise say "You [if the flesh volume of arms > 7]greedily stuff the [noun] in your face, taking a few noisy chomps before swallowing it whole.[otherwise if the flesh volume of arms > 3 and the quality of the noun > -2]speedily devour the rich, oily [noun].[otherwise if the flesh volume of arms > 3 ]speedily devour the [semen] dripping [noun], fully aware of the amount of [semen] in every single bite.[otherwise if the quality of the noun > -1]slowly eat the [noun], savouring the rich, oily taste and mulling over its texture.[otherwise if the quality of the noun is -1]slowly eat the [noun], enjoying the taste and texture despite its musky scent.[otherwise]slowly eat the [noun], fully aware of the taste, texture, and feeling of semen rolling around on your tongue in every bite.[end if] [if the quality of the noun is -2 and the flesh volume of arms > 7]There wasn't really much time to taste it, but knowing it was covered in [semen] makes you feel kind of cheap. [otherwise if the quality of the noun is -2]You feel cheap, used. [otherwise if the flesh volume of arms > 7]It leaves a taste in your mouth that makes you feel supremely satisfied. [otherwise if the quality of the noun is -1]You know it didn't actually have any [semen] in it, but you still feel kind of cheap after eating something with a scent like that. [otherwise if the quality of the noun is 0]You feel a little less weak. [otherwise if the quality of the noun < 2]It's pretty good! You feel a bit nicer about being here. [otherwise]It's beyond delicious, and you feel lucky and important to get the chance to enjoy such nice food...[end if] You also feel [if the flesh volume of arms > 7]a little less weak![otherwise if weight gain fetish is 1]a little fat[otherwise]a bit exhausted[end if]. ".


Carry out TQeating stuffed mushroom:
	say "[DevourFlav of the noun]";
	if diaper quest is 1:
		 if the quality of the noun is -2:
			say "You can't deny how filling it was, but it's even harder to deny the weird aftertaste that comes with every single bite. There's definitely some extra ingredient in this, and knowing the nature of this game it's probably not going to [italic type]help[roman type] your ability to use a toilet like an adult...";
			increase incontinence by 1;
		 otherwise:
			say "You feel way healthier after such a filling meal, albeit pretty lethargic.";
			DexDown 1;
	otherwise if the quality of the noun is -2:
		say "You can't deny how filling it was, but it's even harder to deny the slimy feeling of [semen] on your tongue and sliding down your throat in every single bite. It was more jizz than mushroom! [line break][variable custom style][if the semen taste addiction of the player < 8]How could I eat something so obscene! I wasn't really that hungry, was I?[otherwise if the semen taste addiction of the player < 14]I guess if I had to choose between this and sucking dick when I'm hungry...[otherwise]So delicious! I might have to eat everything with [semen] on it now![end if][roman type][line break]";
		BodyHeal the fat of the noun;
		Humiliate 40 - the semen taste addiction of the player;
		StomachSemenUp 2;
		StomachFoodUp 2;
	otherwise if a random number between 3 and the quality of the noun is 3:
		say "You feel way healthier after such a filling meal, albeit pretty lethargic.";
		DexDown 1;
	otherwise:
		say "You feel a lot healthier after such a filling meal, but you feel pretty weighed down too. Really, really weighed down.";
		BustUp the fat of the noun;
		if weight gain fetish is 1:
			FatAssUp the fat of the noun;
		otherwise:
			HipUp the fat of the noun;
	BodyHeal the fat of the noun;
	increase the fat of the noun by 2;[relevant for the report eating function.]
	now seconds is 6.


Stuffed Mushroom ends here.

