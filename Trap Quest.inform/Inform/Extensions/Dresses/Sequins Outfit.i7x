Sequins Outfit by Dresses begins here.

Part 1 - Sequins Outfit

A sequins outfit is a kind of overdress. A sequins outfit is usually transformation-rare. A sequins outfit is usually bottom-exclusive. A sequins outfit is usually unskirted. A sequins outfit is usually crotch-intact. A sequins outfit is usually very low cut. There is 1 sequins outfit.

The printed name of sequins outfit is usually "[clothing-title-before]sequins outfit[clothing-title-after]". The text-shortcut of sequins outfit is "sqo".

Figure of sequins outfit is the file "Items/Clothes/Upper/Exposing/Sequins/sequinsoutfit1.png".

To decide which figure-name is clothing-image of (C - a sequins outfit):
	decide on figure of sequins outfit.

To say ClothingDesc of (C - a sequins outfit):
	say "This... 'outfit' made of shiny sequins covers little. Two large sequins stars stick to your breasts. A tiny sequins thong covers the crotch. Several thin lines of sequins meet in a star at your belly.".

To say TransformReaction of (C - a sequins outfit):
	if C is too outrageous:
		say "[variable custom style]What the hell?! I didn't expect this! How ridiculous...[roman type][line break]";
	otherwise if the humiliation of the player < 30000:
		say "[variable custom style]Well at least it covers my naughty bits, I guess...[roman type][line break]";
	otherwise:
		say "[variable custom style]Wow, I look hot![roman type][line break]".

To compute SelfExamineDesc of (C - a sequins outfit):
	say "Your rude bits have sequins stars stuck to them with some kind of glue. ".

To decide which number is the initial outrage of (C - a sequins outfit):
	decide on 11.

To decide which number is the original price of (C - a sequins outfit):
	decide on 1.

Definition: a sequins outfit is transformation-protected: decide yes.

Definition: a sequins outfit is party themed: decide yes.
Definition: a sequins outfit is gem themed: decide yes.

Part 2 - Sequins Dress

A sequins dress is a kind of overdress. A sequins dress is usually top-exclusive. A sequins dress is usually unskirted. A sequins dress is usually crotch-intact. A sequins dress is usually very low cut. There is 1 sequins dress.

Definition: a sequins dress is purple themed: decide yes.

The printed name of sequins dress is usually "[clothing-title-before]sequins dress[clothing-title-after]". The text-shortcut of sequins dress is "sdr".

Figure of sequins dress is the file "Items/Clothes/Upper/Exposing/Sequins/sequinsdress1.png".

To decide which figure-name is clothing-image of (C - a sequins dress):
	decide on figure of sequins dress.

To say ClothingDesc of (C - a sequins dress):
	say "This purple dress made of shiny sequins covers the important bits but is still extremely eye-catching. The swimsuit-shaped garment plunges deep down to your bellybutton in a V shape.".

To compute SelfExamineDesc of (C - a sequins dress):
	say "A purple sequins outfit plunges down to your bellybutton. ".

To decide which number is the initial outrage of (C - a sequins dress):
	decide on 8.

To decide which number is the original price of (C - a sequins dress):
	decide on 1.

To decide which object is the unique-upgrade-target of (C - a sequins dress):
	decide on a random off-stage sequins outfit.

To uniquely set up (C - a sequins dress):
	repair C;
	now the armour of C is 6;
	now C is confidence.

This is the remove inappropriate sequins dress rule:
	repeat with B running through sequins dress:
		now B is in Holding Pen.
The remove inappropriate sequins dress rule is listed in the diaper quest fix rules.

Definition: a sequins dress is party themed: decide yes.
Definition: a sequins dress is gem themed: decide yes.


Sequins Outfit ends here.
