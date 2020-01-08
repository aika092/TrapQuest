Things Framework by Objects begins here.


[!<Thing>@<textShortcut:IndexedText>*

REQUIRES COMMENTING

*@!]
A thing has an indexed text called a text-shortcut. Understand the text-shortcut property as describing a thing.

Definition: a thing (called T) is disembodied rather than embodied: [When penetrating an orifice, can it fit underneath other clothing like a sex toy? Or will clothing get in the way, e.g. a dildo pole?]
	decide no.

[This overrides whatever other image we were going to display for the thing, once only.]
A thing has a figure-name called the temporary-image. The temporary-image of a thing is usually figure of no-image-yet.
A thing has a figure-name called the previous-temporary-image. The previous-temporary-image of a thing is usually figure of no-image-yet. [We want to know what we just pushed to the focus window in case the player asks us to blow it up onto the map window.]


To decide which figure-name is the next-examine-image of (C - a thing):
	if the temporary-image of C is not figure of no-image-yet, decide on the temporary-image of C;
	decide on the examine-image of C.

To decide which figure-name is the examine-image of (C - a thing):
	decide on figure of no-image-yet.

Carry out examining a thing:
	say FullExamineDesc of the noun.


To say FullExamineDesc of (C - a thing):
	say FullTitle of C;
	say ImageDesc of C;
	say ExamineDesc of C;
	say ThemeDesc of C;
	if C is carried and C is not-in-bag and (the outrage of C > 0 or (diaper quest is 1 and the cringe of C > 0)), say HeldOutrageDesc of C;
	if C is worn wearthing, say InfluenceDesc of C.


To say FullTitle of (C - a thing):
	let T be links-disabled;
	now links-disabled is true;
	say "[bold type][C][roman type][line break]";
	now links-disabled is T.

To say ImageDesc of (C - a thing):
	maybe-map-display C.

To maybe-map-display (C - a thing):
	if images visible is 1:
		if the focus-window is g-present: [We're not going to display in the main window. So instead let's display a zoomed in version in the map window.]
			let F be the examine-image of C;
			if previous-temporary-image of C is not figure of no-image-yet, now F is previous-temporary-image of C;
			if the map-window is g-present:
				now temporary-map-figure is F;
				display entire map;
			otherwise:
				display F;
		otherwise:
			display examine-image of C;

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

To say NameDesc of (C - a monster):
	say "the [input-style][MediumDesc of C][roman type]".

To say BigNameDesc of (C - a monster):
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

[Override the entire focus window for 1 turn, to show only this image.]
To fullscreencutshow (F - a figure-name) for (M - a thing):
	unless F is figure of no-image-yet:
		if the focus-window is g-present:
			appropriate-display F with priority 4;
		otherwise: [The player has requested cutscenes show up in the main body of the text instead.]
			cutshow F for M.

[Always show the image in the focus window if it's open. Use this one if we know it's going to be a good replacement for the thing's bust]
To alwayscutshow (F - a figure-name) for (M - a thing):
	unless F is figure of no-image-yet:
		if the focus-window is g-present:
			if the temporary-image of M is figure of no-image-yet and M is not yourself:
				now the temporary-image of M is F;
			otherwise:
				appropriate-cutscene-display F; [We already had something to show we haven't shown yet! So let's put this new image straight into the main window.]
		otherwise if image cutscenes > 0: [The player has requested cutscenes and has the focus window disabled.]
			display F.

[If the focus window isn't present, don't show it at all. It's only worth showing if the focus window is around.]
To onlycutshow (F - a figure-name) for (M - a thing):
	if the focus-window is g-present and image cutscenes > 1, alwayscutshow F for M.


Things Framework ends here.
