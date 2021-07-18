Sewing Bench by Objects begins here.

a sewing bench is a kind of thing. a sewing bench is not portable. The printed name of a sewing bench is "[TQlink of item described]sewing bench[TQxlink of item described][verb-desc of item described]". 1 sewing bench is in School09. 1 sewing bench is in Mansion37. The text-shortcut of a sewing bench is "swb". Figure of sewing bench is the file "Env/School/sewingbench1.png".

Definition: a sewing bench is immune to change: decide yes.

To decide which figure-name is the examine-image of (C - a sewing bench):
	decide on figure of sewing bench.

To say ExamineDesc of (C - a sewing bench):
	say "Fabric scissors, sewing machines, and more. This bench has everything you would need to mend damaged clothing. To use it, type [bold type]repair (clothing)[roman type][line break]".

Repairing is an action applying to one thing.

Check repairing:
	if the noun is worn top-displaced clothing, try topreplacing the noun instead;
	if the noun is not crotch-ripped clothing and the noun is not top-ripped clothing, say "That doesn't need to be repaired!" instead;
	unless there is a sewing bench in the location of the player, say "You need to be at a sewing table to do this!" instead;
	if the player is not able to manually use manual dexterity, do nothing instead.

Carry out repairing:
	allocate 6 seconds;
	say "You use a pair of scissors to cut some spare fabric into several pieces and use them to help patch the hole in the [noun]. With a bit of sewing, it's completely repaired!";
	repair the noun;
	force clothing-focus redraw; [This forces the clothing window to redraw]
	force inventory-focus redraw. [This forces the inventory window to redraw]

Understand "repair [something]", "patch [something]", "patch up [something]", "mend [something]", "fix [something]" as repairing.

Sewing Bench ends here.
