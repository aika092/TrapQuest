Things Framework by Objects begins here.

A thing has a text called a text-shortcut. Understand the text-shortcut property as describing a thing.

Part - Price and Ownership

A thing has an object called the owner.

The current-perceiver is an object that varies.
Definition: a thing (called T) is stolen-and-perceivable:
	if the owner of T is current-perceiver and T is currently perceivable, decide yes;
	decide no.
To decide which object is random-stolen-item:
	repeat with T running through held things:
		if T is stolen-and-perceivable, decide on T;
	decide on nothing.
Definition: a monster (called M) is able to see stolen goods:
	unless M is in the location of the player, decide no;
	now the current-perceiver is M;
	if random-stolen-item is nothing, decide no;
	decide yes.

Definition: a thing is unowned:
	if the owner of it is nothing, decide yes;
	decide no.
Definition: a thing is store:
	if the owner of it is shopkeeper:
		if it is in Dungeon41, decide yes;
		if it is held and the player is in Dungeon41, decide yes;
	decide no.
Definition: a thing is museum-store:
	if the owner of it is vampiress:
		if it is in Mansion28, decide yes;
		if it is in a pedestal, decide yes;
	decide no.
Definition: a thing is stolen:
	if the owner of it is shopkeeper and it is not in Dungeon41 and it is not held by shopkeeper and (it is not held or the player is not in Dungeon41), decide yes;
	decide no.
Definition: a thing is museum-stolen:
	if the owner of it is vampiress and it is not in Mansion28 and it is not held by vampiress and it is not in a pedestal, decide yes;
	decide no.

To say ownership-desc of (T - a thing):
	let P be the owner of T;
	if P is a person:
		if P is shopkeeper:
			if T is stolen, say "[roman type] (stolen from the dungeon shop)";
		otherwise if P is vampiress:
			if T is museum-stolen, say "[roman type] (stolen from the haunted mansion)";
		otherwise if T is not held by P:
			say "[roman type] (stolen from the [if P is monster][MediumDesc of P][otherwise][ShortDesc of P][end if])".

To decide what number is the original price of (C - a thing):
	decide on 0.
To decide what number is the unique price of (C - a thing):
	decide on 0.

To decide what number is the price of (C - a thing):
	let X be the original price of C;
	if discount > 0, decrease X by 5;
	if the blue-balls of shopkeeper < 0, decrease X by 1;
	if X < 1, now X is 1;
	decide on X.

To decide what number is the original price of (C - a clothing):
	let X be the unique price of C;
	if diaper quest is 0, decrease X by (the initial outrage of C) / 4;
	otherwise decrease X by (the initial cringe of C) / 4;
	if C is layer-concealing and (C is dense or C is sheer-when-wet):
		if C is potentially-top-layer-concealing:
			if C is normally-nipple-covering or C is erect-nipple-exposing:
				increase X by 1;
				if C is dense, increase X by 1;
				if C is normally-nipple-covering, increase X by 1;
				if C is average cut or higher, increase X by 1;
				if C is fully covering, increase X by 1;
		if C is potentially-bottom-layer-concealing:
			increase X by 2;
			if C is knee-length or C is slitted, increase X by 1;
		otherwise if C is potentially-partially-bottom-layer-concealing:
			increase X by 1;
	otherwise:
		if C is total protection:
			increase X by 2;
		otherwise if C is pussy protection:
			increase X by 1;
	if C is rare, increase X by 1;
	decide on X.

To decide what number is the price of (C - a clothing):
	let X be the original price of C;
	if C is accessory:
		if C is not plentiful, decide on X;
		if C is ring, now X is 1;
		if C is bracelet, now X is 2;
		if C is necklace, now X is 4;
		if C is sapphire, now X is X * 1;
		if C is emerald, now X is X * 2;
		if C is ruby, now X is X * 3;
		if C is pink diamond, now X is X * 4;
		if C is pure diamond, now X is X * 5;
		if C is solid gold, now X is X * 6;
	otherwise:
		increase X by the magic-modifier of C;
		if C is not blandness, increase X by 1;
		if discount > 0, decrease X by 5;
		if the blue-balls of shopkeeper < 0, decrease X by 1;
		if X < 1, now X is 1;
	decide on X.

A thing has a number called tradability.

A game universe initialisation rule:
	repeat with T running through things:
		if the tradability of T is 0, now the tradability of T is the price of T.

[!<discount:Integer>*

The shopkeeper can give the player a discount. This number tracks how many seconds are left on the discount. If the number is -1, this means that the discount will not be offered again. This happens when the discount offer is refused.

*!]
discount is a number that varies. discount is 0.

To decide which number is the total wealth of the player:
	let X be 0;
	repeat with A running through plentiful accessories held by the player:
		increase X by the price of A;
	decide on X.

To decide which number is the wealth of the player:
	let X be 0;
	repeat with A running through worn accessories:
		increase X by the price of A;
	decide on X.

Part - Titles and Images

[This overrides whatever other image we were going to display for the thing, once only.]
A thing has a figure-name called the temporary-image. The temporary-image of a thing is usually figure of no-image-yet.
A thing has a figure-name called the previous-temporary-image. The previous-temporary-image of a thing is usually figure of no-image-yet. [We want to know what we just pushed to the focus window in case the player asks us to blow it up onto the map window.]

A thing has a number called backgroundColour. The backgroundColour of a thing is usually -1. [If this is a positive number, it is used to render a full body of colour behind the image.]
To update background colour of (T - a thing):
	do nothing.

To decide which figure-name is the next-examine-image of (C - a thing):
	if the temporary-image of C is not figure of no-image-yet, decide on the temporary-image of C;
	decide on the examine-image of C.

To decide which figure-name is the examine-image of (C - a thing):
	decide on figure of no-image-yet.

Carry out examining a thing:
	say FullExamineDesc of the noun.

To say FullExamineDesc of (C - a thing):
	say BoldFullTitle of C;
	say ImageDesc of C;
	say ExamineDesc of C;
	say ThemeDesc of C;
	if C is currently-not-in-bag and (the outrage of C > 0 or (diaper quest is 1 and the cringe of C > 0)), say HeldOutrageDesc of C;
	if C is worn wearthing, say InfluenceDesc of C;
	say ExtraDesc of C.

To say ExtraDesc of (C - a thing):
	say "".

To say BoldFullTitle of (C - a thing):
	let T be links-disabled;
	now links-disabled is true;
	say "[bold type][C][roman type][line break]";
	now links-disabled is T.
To say FullTitle of (C - a thing):
	let T be links-disabled;
	now links-disabled is true;
	say "[C]";
	now links-disabled is T.

To say ImageDesc of (C - a thing):
	maybe-map-display C.

To maybe-map-display (C - a thing):
	if images visible is 1:
		let F be the examine-image of C;
		if previous-temporary-image of C is not figure of no-image-yet, now F is previous-temporary-image of C;
		if the focus-window is g-present: [We're not going to display in the main window. So instead let's display a zoomed in version in the map window.]
			if the map-window is g-present:
				update background colour of C;
				MapShow F with background (backgroundColour of C);
				if seconds is 0, display entire map; [This isn't going to happen automatically because time hasn't moved forward. So we prompt it ourselves.]
				otherwise now map-turn-stall is 1; [If we didn't do this, the temporary-map-figure would be reset before it has a chance to be shown properly, when the time progression is calculated (towards the bottom of "to run the engine once" in Compute Turn.i7x.]
			otherwise:
				cutshow F for C;
		otherwise:
			display F.

To maybe-map-display (F - a figure-name):
	if images visible is 1:
		if the focus-window is g-present: [We're not going to display in the main window. So instead let's display a zoomed in version in the map window.]
			if the map-window is g-present:
				MapShow F;
				if seconds is 0, display entire map; [This isn't going to happen automatically because time hasn't moved forward. So we prompt it ourselves.]
				otherwise now map-turn-stall is 1; [If we didn't do this, the temporary-map-figure would be reset before it has a chance to be shown properly, when the time progression is calculated (towards the bottom of "to run the engine once" in Compute Turn.i7x.]
			otherwise:
				cutshow F;
		otherwise:
			display F.

The examine undescribed things rule is not listed in the carry out examining rulebook.

To say ExamineDesc of (C - a thing):
	say "The [MediumDesc of C] looks exactly how you'd expect.".

To say HeldOutrageDesc of (C - a thing):
	say variable custom style;
	if the player is broken:
		say "This is rather embarrassing to hold like this, I guess. Perfect for a pathetic object like me.";
	otherwise if diaper quest is 1 and the cringe of C / 2 is too humiliating:
		say "This is way too childish for me to be carrying around like this where it's completely on display!";
	otherwise if the outrage of C / 2 is too humiliating:
		say "I can't believe I am carrying this around with me where everyone can see it. How awful!";
	otherwise if (the cringe of C / 2) - 2 is too humiliating or (the outrage of C / 2) - 2 is too humiliating:
		say "I really would prefer to not be carrying around something this humiliating.";
	otherwise:
		say "I guess I should find this a bit embarrassing to carry around where everyone can see it, but I just don't.";
	if debuginfo > 0, say "[line break][input-style]Held visible item outrage: [outrage of C / 2] / 10[if diaper quest is 1]; childishness: [cringe of C / 2] / 10[end if].";
	say "[roman type][line break]";

To say MediumDesc of (C - a thing):
	say ShortDesc of C.

To say ShortDesc of (C - a thing):
	say "[C]".

To say NameDesc of (C - a thing):
	say "the [ShortDesc of C]".

To say BigNameDesc of (C - a thing):
	say "The [ShortDesc of C]".

To say YouDesc of (C - a thing): [for when we want to say 'you' instead of the name of the player if the player is the object]
	say "[if C is yourself]you[otherwise][NameDesc of C][end if]".

To say YourDesc of (C - a thing): [for when we want to say 'you' instead of the name of the player if the player is the object]
	say "[if C is yourself]your[otherwise][NameDesc of C][']s[end if]".

To say BigYouDesc of (C - a thing):
	say "[if C is yourself]You[otherwise][BigNameDesc of C][end if]".

To say NameDesc of (Y - yourself):
	say NameBimbo.

To say BigNameDesc of (Y - yourself):
	say NameBimbo.

To say NameDesc of (C - a person):
	say "the [input-style][MediumDesc of C][roman type]".

To say BigNameDesc of (C - a person):
	say "The [input-style][MediumDesc of C][roman type]".

[Show the image in the main window if the player has requested so]
To cutshow (F - a figure-name) for (M - a thing):
	unless F is figure of no-image-yet:
		if image cutscenes > 1:
			alwayscutshow F for M;
		otherwise if the focus-window is g-present and image cutscenes > 0: [The player has requested cutscenes show up in the main body of the text instead.]
			display F.

To cutshow (F - a figure-name):
	cutshow F for yourself.

[Always show the image in the focus window if it's open. Use this one if we know it's going to be a good replacement for the thing's bust]
To alwayscutshow (F - a figure-name) for (M - a thing):
	unless F is figure of no-image-yet:
		if the focus-window is g-present:
			if the temporary-image of M is figure of no-image-yet and M is not yourself:
				now the temporary-image of M is F;
			otherwise if the temporary-image of M is not F: [We don't do this if the image is just a duplicate of what we've set up as the temporary image]
				appropriate-cutscene-display F; [We already had something to show we haven't shown yet! So let's put this new image straight into the main window.]
		otherwise if image cutscenes > 0: [The player has requested cutscenes and has the focus window disabled.]
			display F.

[If the focus window isn't present, don't show it at all. It's only worth showing if the focus window is around.]
To onlycutshow (F - a figure-name) for (M - a thing):
	if the focus-window is g-present and image cutscenes > 1, alwayscutshow F for M.

Part - Other

Definition: a thing is disembodied rather than embodied: decide no. [When penetrating an orifice, can it fit underneath other clothing like a sex toy? Or will clothing get in the way, e.g. a dildo pole?]

Things Framework ends here.
