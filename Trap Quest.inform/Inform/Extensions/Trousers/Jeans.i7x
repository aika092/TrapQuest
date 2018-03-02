Jeans by Trousers begins here.

jeans is a kind of trousers. Jeans are usually manly. There is 1 zippable denim jeans. The armour of jeans is 10. The printed name of jeans is usually "[TQlink of item described][clothing-title-before][clothing-material of item described] jeans[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of jeans is "je". Figure of jeans is the file "Items\Clothes\Lower\Pants\Jeans\jeans1.png". Figure of jeans ripped is the file "Items\Clothes\Lower\Pants\Jeans\jeans2.png". The soak-limit of jeans is usually 22.

To decide which figure-name is clothing-image of (H - a jeans):
	if the item described is no protection and item described is not zippable, decide on figure of jeans ripped;
	otherwise decide on figure of jeans.

To say ClothingDesc of (J - a jeans):
	say "A pair of tight fitting denim jeans with a [if J is crotch-unzipped]open zip[otherwise if J is crotch-ripped]ripped hole[otherwise if J is zippable]convenient zip[otherwise]layer of protective denim[end if] at the crotch.[if J is zippable and diaper quest is 0]The zip goes all the way up the back to potentially allow anal access.[otherwise if J is zippable]The zip goes all the way up the back to allow for easy diaper checks and changes.[end if]".

To say ShortDesc of (Y - a  jeans):
	say "pair of zip up jeans".

To decide which object is the potential-upgrade-target of (C - a jeans):
	if the number of worn knickers is 0, decide on a random off-stage cutoffs;
	otherwise decide on a random off-stage blue buttockless pants;
	decide on nothing.

Jeans ends here.

