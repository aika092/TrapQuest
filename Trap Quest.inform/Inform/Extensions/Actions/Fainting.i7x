Fainting by Actions begins here.

AutoFainting is an action applying to nothing.

Check AutoFainting:
	if tutorial is 1, say "In the main game, this acts as your safe word to let you always have a way to revoke consent when NPCs are doing naughty things to you. It bails you out of the game no matter what your situation and lets you do a soft reset, in exchange for your most valuable jewellery. However in this tutorial it would break everything, so it is disabled. If you want to revoke consent during the tutorial, please instead type [bold type]'quit'[roman type]." instead.

Carry Out AutoFainting:
	say "[if the player is able to speak]Say[otherwise]Think[end if] the 'safe word' phrase? This will make you lose your most valuable jewellery. ";
	if the player is consenting:
		now the fainting reason of the player is 50;
		execute fainting.
Understand "faint", "i like pineapple on pizza", "i like pineapple pizza", "pineapple pizza", "pineapple" as AutoFainting.

Fainting ends here.
