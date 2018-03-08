Things Framework by Objects begins here.


[!<Thing>@<textShortcut:IndexedText>*

REQUIRES COMMENTING

*@!]
A thing has an indexed text called a text-shortcut. Understand the text-shortcut property as describing a thing.

[!<Thing>@<disembodied:Boolean>*

REQUIRES COMMENTING

*@!]
A thing can be disembodied. 


To say MediumDesc of (C - a thing):
	say ShortDesc of C.

To say ShortDesc of (C - a thing):
	say "[C]".

To say NameDesc of (C - a thing):
	say "the [ShortDesc of C]".

To say BigNameDesc of (C - a thing):
	say "The [ShortDesc of C]".


Things Framework ends here.

