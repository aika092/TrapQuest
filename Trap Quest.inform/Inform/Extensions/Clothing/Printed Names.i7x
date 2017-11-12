Printed Names by Clothing begins here.


To say cumdesc:
	if item described is messed knickers, say "[if the mess of item described > 9]overfilled, [end if]messy [if the total-soak of item described > 0]and [end if]";
	if item described is diaper:
		if the urine-soak of item described > 0:
			if the total-soak of item described >= the soak-limit of item described:
				say "overflowing ";
			otherwise if the total-soak of item described > (the soak-limit of item described * 7) / 10:
				say "slightly leaking ";
			otherwise if the urine-soak of item described > the soak-limit of item described / 2:
				say "well used ";
			otherwise if the urine-soak of item described > the soak-limit of item described / 5:
				say "used ";
			otherwise if the urine-soak of item described > 0:
				say "slightly used ";
		if the semen-soak of item described > 0 and the urine-soak of item described > 0, say "and ";
		if the semen-soak of item described > 0, say "cum-stained ";
	otherwise:
		if the semen-soak of item described > 0 or the milk-soak of item described > 0:
			if the total-soak of item described > the soak-limit of item described / 3:
				say "saturated with [soak-types] ";
			otherwise if the semen-soak of item described > the soak-limit of item described / 5:
				say "[soak-types]-soaked ";
			otherwise:
				say "[soak-types]-stained ";
		otherwise:
			if the urine-soak of item described > the soak-limit of item described / 3:
				say "dripping with [urine] ";
			otherwise if the urine-soak of item described > the soak-limit of item described / 5:
				say "[urine] sodden ";
			otherwise if the urine-soak of item described > 0:
				say "[urine] stained ";
	if the urine-soak of item described <= 0 and the semen-soak of item described <= 0 and the milk-soak of item described <= 0 and the water-soak of item described > 0:
		if the water-soak of item described > (the soak-limit of item described * 2) / 3:
			say "waterlogged ";
		otherwise if the water-soak of item described > the soak-limit of item described / 3:
			say "wet ";
		otherwise:
			say "damp ".

To say soak-types:
	if the semen-soak of item described > 0:
		say "[semen]";
		if the urine-soak of item described > 0, say "[if the milk-soak of item described <= 0] and[end if] [urine][if the milk-soak of item described > 0] and [milk][end if]";
		otherwise say "[if the milk-soak of item described > 0] and [milk][end if]";
	otherwise:
		if the urine-soak of item described > 0, say "[urine][if the milk-soak of item described > 0] and [milk][end if]";
		otherwise say "[if the milk-soak of item described > 0][milk][otherwise]nothing[end if]".
				
To say ownership-desc:
	if the item described is stolen, say "[roman type] (stolen)";
	if the item described is store and the location of the player is not Mansion28, say "[roman type] ([if the player is in Dungeon41]for sale - [price of item described][otherwise]cleverly stolen - please report bug[end if])".
	
To say displacement-desc:
	if the item described is crotch-displaced and the item described is worn:
		say " (pulled [if item described is trousers]down[otherwise if item described is hobble-skirted]up[otherwise]aside[end if])";
	otherwise if the item described is crotch-unzipped:
		say " (unzipped)";
	otherwise if the item described is crotch-ripped:
		say " (ripped)";
	if item described is locked clothing:
		say " (locked)";
	if the item described is top-displaced and the item described is worn:
		if the item described is not bra or the item described is not very low cut or higher:
			say " (pulled down)";
		otherwise:
			say " (open)";
	if the item described is condom pinned:
		say " ([if the used condoms of the item described > 0][used condoms of the item described] used[end if][if the used condoms of the item described > 0 and the empty condoms of the item described > 0] & [end if][if the empty condoms of the item described > 0][empty condoms of the item described] empty[end if] [if the empty condoms of item described is 1 or (the empty condoms of item described is 0 and the used condoms of item described is 1)]condom[otherwise]condoms[end if])".
		



Printed Names ends here.
