Blocking by Monster Framework begins here.

This is the monster stuck immobility rule:
	if the player is monster stuck, rule fails.
The monster stuck immobility rule is listed in the immobility rules.

[!<YourselfIsMonsterStuck>+

Is the player unable to move because of a monster?

+!]
Definition: yourself is monster stuck:
	if there is a monster grabbing the player or the player is monster fucked, decide yes;
	decide no.

[!<YourselfIsMonsterFucked>+

Is there a monster currently having sex with the player?

+!]
Definition: yourself is monster fucked:
	if there is a monster penetrating a body part, decide yes;
	decide no.

Definition: a monster (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if M is not blocker, decide no;
	let R be (a random number from 1 to the difficulty of M * 2) + the movement reduction of the player; [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
	if debuginfo > 0, say "[input-style][ShortDesc of M][']s movement block check: player movement penalty ([movement reduction of the player]) + block skill d[difficulty of M * 2] ([R - the movement reduction of the player]) = [R] | ([the dexterity of the player].5) dexterity[roman type][line break]";
	if R > the dexterity of the player, decide yes;
	decide no.

Blocking ends here.

