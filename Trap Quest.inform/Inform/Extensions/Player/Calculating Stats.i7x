Calculating Stats by Player begins here.


[!<DecideWhichNumberIsNScaled>+

REQUIRES COMMENTING

+!]
To decide which number is (N - a number) scaled:
	if N <= 5, decide on N;
	if N <= 20, decide on 5 + (((N - 5) * 2) / 3);
	decide on 15 + ((N - 20) / 2).

saved-strength is a number that varies.
saved-dexterity is a number that varies.
saved-intelligence is a number that varies.
saved-flat-strength is a number that varies.
saved-flat-dexterity is a number that varies.
saved-flat-intelligence is a number that varies.
saved-bimbo is a number that varies.
[saved-flat-bimbo is a number that varies.]
saved-slap-damage is a number that varies.
saved-knee-damage is a number that varies.
saved-kick-damage is a number that varies.
saved-printed-slap-damage is a number that varies.
saved-printed-knee-damage is a number that varies.
saved-printed-kick-damage is a number that varies.

backgroundCombatCalculation is initially false.

A game universe initialisation rule:
	update saved stats.

To update saved stats:
	[now saved-flat-bimbo is the flat bimbo of the player;]
	if diaper quest is 1, now saved-bimbo is the flat diaper bimbo of the player;
	otherwise now saved-bimbo is the sex addiction of the player;
	now saved-flat-intelligence is the flat intelligence of the player;
	now saved-flat-dexterity is the flat dexterity of the player;
	now saved-flat-strength is the flat strength of the player;
	now saved-intelligence is saved-flat-intelligence scaled;
	now saved-dexterity is saved-flat-dexterity scaled;
	now saved-strength is saved-flat-strength scaled;
	check immobility;
	now backgroundCombatCalculation is true;
	now saved-slap-damage is the slap damage of the player;
	now saved-printed-slap-damage is saved-slap-damage - combat bonus remainder;
	if saved-printed-slap-damage < 0, now saved-printed-slap-damage is 0;
	now saved-knee-damage is the knee damage of the player;
	now saved-printed-knee-damage is saved-knee-damage - combat bonus remainder;
	if saved-printed-knee-damage < 0, now saved-printed-knee-damage is 0;
	now saved-kick-damage is the kick damage of the player;
	now saved-printed-kick-damage is saved-kick-damage - combat bonus remainder;
	if saved-printed-kick-damage < 0, now saved-printed-kick-damage is 0;
	now backgroundCombatCalculation is false.


[!<DecideWhichNumberIsFetishBonusOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is fetish-bonus of the player:
	if tattoo-fetish is 1:
		decide on (1 + the number of worn tattoos) / 3;
	otherwise if piercing-fetish is 1:
		decide on the number of worn piercings;
	otherwise if humiliation-fetish is 1:
		decide on the humiliation of the player / 8000;
	otherwise if artificial-fetish is 1:
		decide on player-enhancement / 8;
	otherwise:
		decide on 0.


Calculating Stats ends here.

