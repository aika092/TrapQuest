Soreness by Player Description begins here.


[!<SaySorenessdesc>+

REQUIRES COMMENTING

+!]
To say SorenessDesc:
	if the body soreness of the player is 2, say "Your knees feel a little grazed. ";
	if the body soreness of the player is 3, say "Your leg muscles feel a bit tired. ";
	if the body soreness of the player is 4, say "Your feet ache. ";
	if the body soreness of the player is 5, say "Your arms and legs feel pretty tired. ";
	if the body soreness of the player is 6, say "Your ass cheeks feel bruised and your shoulders ache. ";
	if the body soreness of the player is 7, say "All your muscles feel very tired. ";
	if the body soreness of the player is 8, say "Your body is visibly shaking with fatigue. ";
	if the body soreness of the player is 9, say "You feel like you've taken quite a beating! ";
	if the body soreness of the player is 10, say "Your body is covered in bruises, you can barely move your legs let alone stand. ".

[!<SayInternalsDesc>+

REQUIRES COMMENTING

+!]
To say InternalsDesc:
	unless the latex-transformation of the player >= 6 or the player is male and the size of penis is 0:
		if the player is extremely horny:
			say "You are so extremely aroused that you are struggling to think about anything else. You permanently feel right on the edge of orgasm. ";
		otherwise if the player is very horny:
			say "Your addiction[if diaper quest is 1]s are[otherwise] to submissive sex is[end if] pushing you towards debilitating levels of arousal. You find it significantly more difficult to think about anything but [if diaper quest is 0]sex and [end if]achieving orgasm. ";
		otherwise if the player is horny:
			say "Your steadily growing addiction to [if diaper quest is 1 and the bimbo of the player > 7]getting your [']cummies['][otherwise if diaper quest is 1]whatever it is about this game that turns you on[otherwise]submissive sex[end if] is causing you to be incredibly horny, making it a bit more difficult to think about other things. ";
		if the bladder of the player > 6:
			say "You keep clenching your [ShortDesc of thighs] together to try and deal with your [if the bladder of the player > 10]desperate [end if]need to pee, which is affecting your mobility! ";
		if the thirst of the player > 3:
			say "You feel weakened by your crippling need for a drink of water! ".

[!<SayPussyAssFlav>+

REQUIRES COMMENTING

+!]
[To say PussyAssFlav:
	let S be the soreness of asshole + the soreness of vagina;
	if S < 5, say "";
	if S > 4 and S < 8, say "How distracting... ";
	if S > 7 and S < 11:
		if S is (the soreness of asshole + 1) or S is (the soreness of vagina + 1), say "Fuck! ";
		otherwise say "[if the bimbo of the player < 8]The combination is very unpleasant.[otherwise]Something inside of you is really enjoying these feelings.[end if]";
	if S > 10 and S < 14, say "Fuck! ";
	if S > 13, say "[if the bimbo of the player < 14][line break][first custom style]I'm on the verge of tears... [roman type][line break][otherwise][line break][second custom style]I think I need more lube... [roman type][line break][end if]".]

Soreness ends here.
