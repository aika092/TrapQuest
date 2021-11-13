Jumping by Actions begins here.

The report jumping rule is not listed in the report jumping rulebook.

Check jumping:
	if the player is in Capsule, say "There's not enough space to jump while you're lying down in the capsule." instead;
	if the player is in Start, say "Stop messing around and choose a gender!" instead;
	if the player is prone, say "You can't jump while on all fours!" instead;
	if the throne is triggered, say "You can't jump while sitting on the throne." instead;
	if the player is vine stuck, say "Vines are pinning your ankles to the ground! Try [bold type]pulling[roman type] them?" instead;
	if the number of things wrangling thighs > 0, say "You can't without breaking free from [NameDesc of a random thing wrangling thighs] first!" instead;
	repeat with C running through clothing worn by the player:
		if C is stuck and the player is not dildo stuck, say "Your [printed name of C] is stuck, and it's stopping you from moving!" instead;
	let B be the largeness of breasts;
	allocate 2 seconds;
	if the pill-timer of triple-dildo-predicament > 0, increase the pill-timer of triple-dildo-predicament by 1;
	if the player is pole stuck:
		if the player is monster fucked, say "You can't because the [random monster penetrating a body part] is holding you still and fucking you!" instead;
		otherwise jump from the dildo instead;
	if the player is drill stuck, jump from the drill instead;
	if the player is hook stuck, jump from the hook instead;
	if the player is bouncer stuck, jump from the baby bouncer instead;
	let H be a random worn shoes;
	if H is shoes:
		if the hindrance of H > 2, say "You aren't confident enough in [ShoeType of H] to jump, you might twist your ankle on the way down!" instead;
	if the player is immobile:
		allocate 0 seconds;
		say "You're a bit stuck right now!" instead;
	let P be a random worn pom-pom;
	if P is clothing:
		let A be 0;
		if the player is ankle bound, now A is 1;
		say "You jump, [if A is 1]kicking your leg up as you wave[otherwise]waving[end if] your [ShortDesc of P] in the air.[line break][variable custom style][if B < 16]'[one of]Sis Boom Bah and stuff!'[or]'Go team!'[or]Let's go! Let's go!'[at random][roman type][line break][otherwise]'[one of]Sis Boom B-!'[or]'Go t-!'[or]Let's go! Let's-!'[at random][roman type][line break]Your cheer is cut off as your [BreastDesc] flip up and smack you in the face.[end if][if the charge of P is 0]Your [printed name of P] glow as they charge with spirit![end if]";
		if B < 16, now the charge of P is 4;
		otherwise now the charge of P is 2;
		repeat with M running through intelligent monsters in the location of the player:
			let showoff be 0;
			if B >= 16, now showoff is 1;
			if A is 0:
				if the player is possessing a vagina and vagina is lewdly exposed, now showoff is 1;
				if the player is possessing a penis and penis is lewdly exposed, now showoff is 1;
			if showoff is 1 and M is interested:
				say "[BigNameDesc of M] [one of]seems actively turned on by your cheer[or]seems to [i]really like[/i] your cheer[at random].";
				if the refractory-period of M > 4:
					decrease the refractory-period of M by 4;
				otherwise:
					if a random number between 1 and 3 is 1, FavourDown M by 1;
	otherwise:
		say "You jump, making your wobbly bits wobble. [if B < 16]You're not quite sure why you had the urge to do that...[otherwise]Your [BreastDesc] smack you in the face! Ouch![end if]";
	if B >= 16, PainUp 1;
	compute upright fatigue gain.
Understand "leap", "bounce", "ju", "cheer" as jumping.

Jumping ends here.
