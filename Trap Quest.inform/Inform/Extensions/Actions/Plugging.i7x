Plugging by Actions begins here.

Plugging it with is an action applying to two things.
Understand "plug [something] with [something]" as plugging it with.
Check plugging something with:
	if the noun is not a fuckhole, say "[if the noun is an orifice]That orifice cannot be plugged in this way.[otherwise]How would you plug that?[end if]" instead;
	if the noun is vagina and the player is male, say "You don't have a vagina." instead;
	if the second noun is not an insertable thing, say "The [printed name of second noun] cannot be inserted into your [noun]." instead;
	if the second noun is clothing:
		if the second noun is not sex toy and the second noun is not dildo sword, try wearing the second noun instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the noun is actually occupied and the second noun is not penetrating the noun, say "Your [noun] is already occupied by the [printed name of random object filling noun]." instead;
	if the second noun is penetrating an orifice:
		if the second noun is anal beads and the second noun is penetrating the noun:
			if the notch-taken of the second noun >= the notches of the second noun, say "All the beads are already inside you." instead;
		otherwise:
			say "The [printed name of second noun] is already inside you." instead;
	if the noun is asshole and the player is ass protected, say "Your [random top level ass protection clothing] is in the way." instead;
	if the noun is vagina and the player is pussy protected, say "Your [random top level protection clothing] is in the way." instead;
	if the player is in danger, say "You can't put that in right now, you have to defend yourself against the [random unfriendly interested monster in the location of the player]!" instead;
	if the girth of the second noun > the insertableGirthAcceptance of the noun:
		if debugmode is 0:
			if the second noun is anal beads, say "There's just no way [if the girth of the second noun > the openness of the noun + 5]more of them would fit[otherwise]you could bring yourself to try and more of them into your poor [variable noun][end if]!" instead;
			otherwise say "There's just no way [if the girth of the second noun > the openness of the noun + 5]it would fit, it's way too big[otherwise]you could bring yourself to try and push something so big inside of your poor [variable noun][end if]!" instead;
		otherwise:
			say "You relax your [variable noun] as much as you can to try and push the [ShortDesc of the second noun] inside of you.".

Carry out plugging something with:
	humiliate 50;
	compute toyInsertion of the second noun into the noun;
	unless the second noun is worn:
		if the second noun is penetrating the noun, now the second noun is worn by the player.
Report plugging something with:
	allocate 6 seconds.

[]
To compute toyInsertion of (S - a thing) into (F - a fuckhole):
	compute insertionRuin of S into F;
	now S is penetrating F.

[]
To compute insertionRuin of (S - a thing) into (F - a fuckhole):
	if the girth of S > the openness of F - 4:
		say "The [MediumDesc of S] [if the girth of S > the openness of F + 1]is so large compared to the openness of your [variable F] that it makes you a bit sore just putting[otherwise]stimulates you as you put[end if] it in.";
		ruin F;
		if the girth of S > the openness of F + 1, ruin F;
	otherwise if the girth of S > the openness of F - 2:
		say "Oof! You definitely felt that as you pushed it inside.";
	otherwise:
		say "Your [variable F] is loose enough to let the [MediumDesc of S] slip in easily.".

Unplugging is an action applying to one thing.
Understand "unplug [something]", "pull [something]" as unplugging.
Check unplugging something:
	if the noun is not worn and the noun is sword, try taking the noun instead;
	if the noun is not an insertable object, say "I didn't understand what you wanted to do with the [printed name of noun], since it's not an insertable object." instead;
	if the noun is not penetrating an orifice:
		if the noun is worn, now the noun is held by the player instead; [Shouldn't happen but in some cases this glitch seems to occur]
		otherwise say "That is not inside of you!" instead;
	if the noun is not penetrating a fuckhole, say "That is not removed like this, try [bold type]removing[roman type] it instead" instead;
	if the noun is cursed and the noun is not dildo sword: [dildo swords come straight back out]
		if the noun is sure and the noun is worn, say "It refuses to budge, it's like it's glued inside! It must be the curse..." instead;
		if the noun is worn:
			now the noun is sure;
			say "It refuses to budge, it's like it's glued inside! It must be cursed..." instead;
	if the latex-transformation of the player is 8, say "You don't have the manual dexterity to do that!" instead;
	if the noun is penetrating asshole and the player is ass protected, say "You need to get your [printed name of random bottom level ass protection clothing worn by the player] out of the way first." instead;
	if the noun is penetrating vagina and the player is pussy protected, say "You need to get your [printed name of random bottom level protection clothing worn by the player] out of the way first." instead;
	if diaper quest is 0 and the girth of the noun > the insertableGirthAcceptance of a random orifice penetrated by the noun + 4 and the noun is plug:
		say "You push with your [random orifice penetrated by the noun]'s muscles and [if the noun is anal beads]pull on the cord [printed name of noun], but they're just so big that they[otherwise]pull on the base of the [printed name of noun], but the plug's bulb is so big that it[end if] just won't come out!" instead.
Carry out unplugging something:
	if the noun is anal beads, do nothing instead;[Important!]
	if the player is in danger:
		say "Blood rushes to your head as you feel incredibly humiliated, submissively pulling the [printed name of the noun] out of your fuckhole to make it available for the [printed name of random unfriendly interested monster in the location of the player]. Your cheeks turn a beetroot shade of red.";
		humiliate 125;
		compute player submission;
	if the girth of the noun > the openness of a random orifice penetrated by the noun + 2:
		say "The [printed name of the noun] makes a loud 'PLOP' as you pull it clean out of your [random orifice penetrated by the noun].";
		ruin a random orifice penetrated by the noun;
	now the noun is not penetrating asshole;
	now the noun is not penetrating vagina;
	now the noun is held by the player.
Report unplugging something:
	if the noun is dildo sword and the raw-magic-modifier of the noun < 5:
		say "As you pull it out, it glows strongly. It feels more powerful, as least for now!";
		now the raw-magic-modifier of the noun is 5;
	otherwise if the number of body parts penetrated by the noun < 1:
		say "Successfully removed.";
	allocate 6 seconds.


Plugging ends here.

