Strutting by Actions begins here.

[!<ClothingIsStrutEnabling>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is strut enabling:
	decide no.

[!<ReportTakingOffStrutEnablingClothing>+

REQUIRES COMMENTING

+!]
Report taking off strut enabling clothing:
	if the strut of the player is 1 and the strutskill of the player is 0 and there are no worn strut enabling clothing:
		say "You feel some confidence leave you as you take the [noun] off. You think that you'd just trip endlessly if you keep strutting, so you stop.";
		now the strut of the player is 0.

[!<strutting:Action>*

REQUIRES COMMENTING

*!]
Strutting is an action applying to nothing.

[!<CheckStrutting>+

REQUIRES COMMENTING

+!]
Check strutting:
	if the strutskill of the player is 0 and there are no worn strut enabling clothing, say "You don't know this ability." instead;
	if the strut of the player is 0 and 0 is the number of worn heels, say "You aren't wearing heels so you can't strut at the moment." instead;
	if the player is prone, say "You can only change your walking mode whilst upright." instead;
	if the player is flying, say "You aren't even touching the ground!" instead;
	if the player is a living sex doll, say "You don't have the muscles to control your body in such a specific way." instead;
	if the player is waddling, say "You can't waddle and strut at the same time!" instead;
	if the player is wobbling, say "You're too unsure on your heels to strut properly." instead;
	if there is a worn hobble-skirted clothing, say "Your restrictive skirt prevents you from strutting!" instead;
	if the player is hobbling, say "You are being forced to hobble, so can't strut properly." instead;
	if the player is squirming, say "Your [printed name of random insertable object penetrating a fuckhole] is preventing you from strutting properly." instead;
	if the player is swaying:
		if there is a worn blessed yoga pants, say "You'd think strutting would be impossible with your [ShortDesc of hips], but you manage just fine.";
		otherwise say "Your [ShortDesc of hips] are too large to allow you to strut properly." instead.

[!<CarryOutStrutting>+

REQUIRES COMMENTING

+!]
Carry out strutting:
	if the strut of the player is 0:
		now the strut of the player is 1;
		say "[bold type]You are now provocatively strutting around in your heels.[roman type][one of][line break]Somehow, this makes you feel more agile![or][stopping]";
	otherwise:
		now the strut of the player is 0;
		say "[bold type]You have stopped strutting around.[roman type]".
Understand "strut", "strutting", "slut it up" as strutting.


Strutting ends here.
