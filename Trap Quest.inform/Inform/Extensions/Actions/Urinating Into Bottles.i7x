Urinating Into Bottles by Actions begins here.


[!<peeBottling:Action>*

REQUIRES COMMENTING

*!]
PeeBottling is an action applying to one thing.

[!<CheckPeeBottling>+

REQUIRES COMMENTING

+!]
Check PeeBottling:[TODO: compatible with parched pedestal]
	if the noun is not a vessel, say "This verb is for peeing into drinking containers." instead;
	if the noun is not open topped, say "You can only pee into open topped containers." instead;
	if the bladder of the player < 4 and diaper lover >= 0:
		now seconds is 6;
		say "You try to pee but nothing comes out!" instead;
	if the bladder of the player < 4, say "You don't feel the need." instead;
	if the player is live fucked, say "You're a bit busy right now!" instead;
	if the humiliation of the player < 15000 and debugmode is 0, say "You consider yourself too dignified to do that right now.  Peeing on the floor would be humiliating enough." instead;
	if there is worn pee covering clothing, say "If you peed right now, it'd be inside your [printed name of random worn pee covering clothing]." instead;
	if the player is prone:
		say "If you peed right now, it'd be on the floor because you're not standing." instead;
	if the doses of the noun > 0 and the fill-type of the noun is not 21:
		say "Are you sure you wish to empty your [noun] of its current contents? [yesnolink] ";
		if the player consents, dump the noun;
		otherwise say "You change your mind." instead.

[!<CarryOutPeeBottling>+

REQUIRES COMMENTING

+!]
pee-bottling is a number that varies.
Carry out PeeBottling:
	if the fill-type of the noun is not 21, dump the noun;
	now the fill-colour of the noun is golden;
	now the noun is player-origin;
	while the doses of the noun < the max-doses of the noun and the bladder of the player > 0:
		increase the doses of the noun by 1;
		BladderDown 2;
	say "You pee into the [noun][if the bladder of the player > 0], but it's now full and you can't stop going![otherwise if the max-doses of the noun is the doses of the noun], and it's now full.[otherwise].[end if][if the humiliation of the player < 25000][line break][variable custom style]Yuk, why am I doing this?[roman type][line break][end if]";
	humiliate 75;
	if the bladder of the player > 0:
		now delayed urination is 1;
		now pee-bottling is 1;
		try urinating;
	now seconds is 6.
Understand "pee into [something]", "pee in [something]", "piss in [something]", "piss into [something]", "urinate in [something]", "urinate into [something]", "wee in [something]", "wee into [something]" , "pp [something]" as PeeBottling.

Urinating Into Bottles ends here.
