Fainting by Actions begins here.

[!<autoFainting:Action>*

REQUIRES COMMENTING

*!]
AutoFainting is an action applying to nothing.

[!<CarryOutAutoFainting>+

REQUIRES COMMENTING

+!]
Carry Out AutoFainting:
	say "[if the player is able to speak]Say[otherwise]Think[end if] the 'safe word' phrase?  This will make you lose your most valuable jewellery. [yesnolink] ";
	if the player consents:
		now the fainting reason of the player is 50;
		execute fainting.
Understand "faint", "i like pineapple on pizza", "i like pineapple pizza", "pineapple pizza", "pineapple" as  AutoFainting.


Fainting ends here.

