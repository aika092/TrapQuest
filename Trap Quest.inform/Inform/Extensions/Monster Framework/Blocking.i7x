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

Definition: yourself is at least partially monster stuck:
	if there is a monster grabbing the player or there is a monster wrangling a body part or the player is monster fucked, decide yes;
	decide no.

[!<YourselfIsMonsterFucked>+

Is there a monster currently having sex with the player?

+!]
Definition: yourself is monster fucked:
	if there is a monster penetrating a body part, decide yes;
	decide no.

[Override this with a more detailed definition if your NPC can block while friendly.]
Definition: a monster is combative-or-blocking:
	if it is combative, decide yes;
	decide no.

To decide which number is the movement block difficulty of (M - a monster):
	if smokeMoving is true, decide on the difficulty of M / 2;
	otherwise decide on the default movement block difficulty of M.

To decide which number is the default movement block difficulty of (M - a monster):
	decide on the difficulty of M * 2.

Definition: a monster (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if M is not blocker, decide no;
	let D be the movement block difficulty of M;
	if M is seduced and the sex-length of M < 6, decrease D by (6 - the sex-length of M);
	let MR be the movement reduction of the player; [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
	if exposing-magical-dress is worn, now MR is D * -1;
	let DM be D + MR;
	if combatSpeed > 1 and DM > the dexterity of the player, increase D by (DM - the dexterity of the player) * (combatSpeed - 1); [double the likelihood of success by doubling the difference between DM and Dex]
	let R be MR + a random number from 1 to D;
	if debuginfo > 0, say "[input-style][ShortDesc of M][']s movement block check: player movement penalty ([MR]) + block skill d[D] ([R - MR]) = [R] | ([dexterity of the player].5) dexterity[roman type][line break]";
	if R > the dexterity of the player, decide yes;
	decide no.

To say MovementBlock of (M - a monster):
	say "[BigNameDesc of M] manages to get in front of you and block your path, slowing down your movement!".

Blocking ends here.
