Jumping by Actions begins here.

The block jumping rule is not listed in the check jumping rulebook.

[!<CheckJumping>+

REQUIRES COMMENTING

+!]
Check jumping:
	if the player is in Capsule, say "There's not enough space to jump while you're lying down in the capsule." instead;
	if the player is in Start, say "Stop messing around and choose a gender!" instead;
	if the player is prone, say "You can't jump while on all fours!" instead;
	if the throne is triggered, say "You can't jump while sitting on the throne." instead;
	if the player is vine stuck, say "Vines are pinning your ankles to the ground!  Try [bold type]pulling[roman type] them?" instead;
	repeat with C running through clothing worn by the player:
		if C is stuck and the player is not dildo stuck, say "Your [printed name of C] is stuck, and it's stopping you from moving!" instead;
	let B be the largeness of breasts;
	now seconds is 2;
	if the player is pole stuck:
		if the player is monster fucked, say "You can't because the [random monster penetrating a body part] is holding you still and fucking you!" instead;
		otherwise jump from the dildo instead;
	if the player is drill stuck, jump from the drill instead;
	if the player is hook stuck, jump from the hook instead;
	if the player is bouncer stuck, jump from the baby bouncer instead;
	if there are worn heels:
		let H be a random worn heels;
		if the hindrance of H > 2, say "You aren't confident enough in heels to jump, you might twist your ankle on the way down!" instead;
	if the player is immobile:
		now seconds is 0;
		say "You're a bit stuck right now!" instead;
	if the player is on skippy ball:
		say "You [one of]launch yourself by pushing your legs alongside the skippy ball surface[or][one of]push yourself up[or]jump[or]bounce[at random] once more[stopping].";
	otherwise:
		say "You jump, making your wobbly bits wobble.  [if B < 16]You're not quite sure why you had the urge to do that...[otherwise]Your [BreastDesc] smack you in the face!  Ouch![end if]".
Understand "leap", "bounce", "ju" as jumping.

After jumping:
	if the player is on skippy ball (called S) and a skippy dildo (called D) is part of the S:
		if the D is worn by the player:
			let P be the pussy;
			if the player is male or D is penetrating the asshole:
				now P is the asshole;
			say "[if the is lubricant covering P]The lube is still working its magic -- you feel no resistance, no pain, just[or]You feel[end if] [one of]the dildo[or]the protrusion[or]yet another few inches[at random] [one of]bash[or]slam into[or]reentering[or]ramm ing[or]smacking[or]sliding all the way into[at random] your [ShortDesc of P]. ";
			humiliate 20;

Jumping ends here.
