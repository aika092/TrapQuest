Taking Inventory by Miscellaneous Frontend begins here.

The print standard inventory rule is not listed in the carry out taking inventory rulebook.

[inventory-busy is a number that varies.]

Check taking inventory:
	if the player is in capsule, say "You're just wearing the clothes you arrived in." instead.

[!<CarryOutTakingInventory>+

REQUIRES COMMENTING

+!]
Carry out taking inventory:
	if there are held things, try ItemListing.

A thing can be catalogued.

[!<Thing>@<isCatalogued:Boolean>*

REQUIRES COMMENTING

*@!]
Definition: a thing is uncatalogued if it is not catalogued.

[!<ResetEntireCatalogue>+

REQUIRES COMMENTING

+!]
To reset entire catalogue:
	repeat with T running through held catalogued things: [Only held ones because we use catalogued for a couple of other minor tracking situations]
		now T is not catalogued.

[!<itemListing:Action>*

REQUIRES COMMENTING

*!]
ItemListing is an action applying to nothing. Understand "items", "list items", "list inventory" as ItemListing.
inventory-busy is a number that varies.
inventory-window-busy is a number that varies.

To say inventory style:
	if the current focus window is the inventory-window and darkMode is 1, say italic type;
	otherwise say roman type.

[!<CarryOutItemListing>+

This function executes the "ItemListing" command, looping through each of the items in the player's inventory and displaying them to the player.

+!]
Carry Out ItemListing:
	reset entire catalogue;
	now inventory-busy is 1;
	if there are worn tattoos and inventory-window-busy is 0:
		say "[bold type]Inked tattoos:[inventory style][line break]";
		repeat with T running through worn tattoos:
			say "[T][line break]";
			now T is catalogued;
	if there is a worn bag of holding:
		if inventory-window-busy is 0, say "[bold type]Inventory expansion:[inventory style][line break]";
		repeat with T running through worn bag of holding:
			say "[T][line break]";
			now T is catalogued;
	[if there are carried uncatalogued recipes:
		say "[bold type]Recipes:[inventory style][line break]";
		repeat with T running through carried uncatalogued recipes:
			say "[T][line break]";
			now T is catalogued;]
	if there are held uncatalogued collectibles or there are carried uncatalogued alchemy product:
		if inventory-window-busy is 0, say "[bold type]Loot:[inventory style][line break]";
		repeat with T running through carried uncatalogued alchemy product:
			say "[T][line break]";
			now T is catalogued;
		repeat with T running through held uncatalogued collectibles:
			unless T is TQedible:
				unless T is mass collectible, say "[T][line break]";
				now T is catalogued;
		if there is a held magic token, say "[random held magic token] (x[number of held magic tokens]) "; [Even if there are 10 held we only want to write it once]
		if there is a held sanity token, say "[random held sanity token] (x[number of held sanity tokens]) "; [Even if there are 10 held we only want to write it once]
		if there is a held fabric token, say "[random held fabric token] (x[number of held fabric tokens]) "; [Even if there are 10 held we only want to write it once]
		if there is a held defiance token, say "[random held defiance token] (x[number of held defiance tokens]) "; [Even if there are 10 held we only want to write it once]
		say "[line break]";
	if there are carried uncatalogued clothing:
		if inventory-window-busy is 0, say "[bold type]Unworn clothing:[inventory style][line break]";
		repeat with T running through carried uncatalogued clothing:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued bottles:
		if inventory-window-busy is 0, say "[bold type]Drinks[if there is a worn bag of holding] (not in bag)[end if]:[inventory style][line break]";
		repeat with T running through held uncatalogued bottles:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued TQedible things:
		if inventory-window-busy is 0, say "[bold type]Food[if there is a worn bag of holding] (not in bag)[end if]:[inventory style][line break]";
		repeat with T running through held uncatalogued TQedible things:
			say "[T][line break]";
			now T is catalogued;
		repeat with T running through held uncatalogued pink pill:
			say "[T][line break]";
			now T is catalogued;
	if there are worn uncatalogued clothing:
		if inventory-window-busy is 0, say "[bold type]Worn clothing:[inventory style][line break]";
		repeat with T running through worn uncatalogued clothing:
			say "[T][line break]";
			now T is catalogued;
	if there are worn uncatalogued things:
		if inventory-window-busy is 0, say "[bold type]Other worn items:[inventory style][line break]";
		repeat with T running through worn uncatalogued things:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued things:
		if inventory-window-busy is 0, say "[bold type]Other:[inventory style][line break]";
		repeat with T running through held uncatalogued things:
			say "[T][line break]";
			now T is catalogued;
	now inventory-busy is 0.

ClothingListing is an action applying to nothing. Understand "clothing", "list clothing", "clothes", "list clothes", "c" as ClothingListing.

[!<CarryOutClothingListing>+

REQUIRES COMMENTING

+!]
Carry Out ClothingListing:
	reset entire catalogue;
	now inventory-busy is 1;
	if there are carried uncatalogued clothing:
		say "[bold type]Unworn:[inventory style][line break]";
		repeat with T running through carried uncatalogued clothing:
			unless T is plentiful accessory, say "[T][line break]";
			now T is catalogued;
	if there are worn uncatalogued clothing:
		say "[bold type]Worn:[inventory style][line break]";
		repeat with T running through worn uncatalogued clothing:
			unless T is plentiful accessory, say "[T][line break]";
			now T is catalogued;
	if inventory-window-busy is 1: [This means we want the summary of all items not just clothing, so we shorten the tattoo section]
		if there is a worn tattoo, say "[inventory style][number of worn tattoos] [TQlink]tattoos[TQdlink][line break]";
	otherwise:
		repeat with T running through worn uncatalogued things:
			say "[T][line break]";
			now T is catalogued;
	say "[inventory style][number of worn plentiful accessories] [TQlink]jewellery[TQdlink][line break]";
	if inventory-window-busy is 1:
		say "[inventory style][number of held uncatalogued TQedible things] [TQlink]edibles[TQdlink][if there is a held pink pill] (+1 pink pill)[end if], [number of held uncatalogued non-empty bottles] [TQlink]drinks[TQdlink] ([number of held uncatalogued empty bottles] empty)[line break]";
		try LootListing;
	now inventory-busy is 0.

JewelleryListing is an action applying to nothing. Understand "accessories", "list accessories", "jewels", "list jewels", "jewellery", "list jewellery", "j" as JewelleryListing.

[!<CarryOutJewelleryListing>+

REQUIRES COMMENTING

+!]
Carry Out JewelleryListing:
	reset entire catalogue;
	now inventory-busy is 1;
	[if there are carried uncatalogued plentiful accessories:
		say "[bold type]Unworn jewellery:[inventory style][line break]";
		repeat with T running through carried uncatalogued plentiful accessories:
			say "[T][line break]";
			now T is catalogued;
		repeat with T running through carried uncatalogued bracelets:
			say "[T][line break]";
			now T is catalogued;]
	if there are worn uncatalogued plentiful accessories:
		say "[bold type]Jewellery:[inventory style][line break]";
		repeat with T running through worn uncatalogued plentiful accessories:
			say "[T][line break]";
			now T is catalogued;
		repeat with T running through worn uncatalogued bracelets:
			say "[T][line break]";
			now T is catalogued;
	now inventory-busy is 0.

FoodListing is an action applying to nothing. Understand "edibles", "list edibles", "food", "list food", "drinks", "list drinks", "list cans", "vessels", "list vessels", "f" as FoodListing.

[!<CarryOutFoodListing>+

REQUIRES COMMENTING

+!]
Carry Out FoodListing:
	reset entire catalogue;
	now inventory-busy is 1;
	if there are carried uncatalogued bottles:
		say "[bold type]Drinks:[inventory style][line break]";
		repeat with T running through carried uncatalogued bottles:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued TQEdible things:
		say "[bold type]Food:[inventory style][line break]";
		repeat with T running through held uncatalogued TQedible things:
			say "[T][line break]";
			now T is catalogued;
		repeat with T running through held uncatalogued pink pill:
			say "[T][line break]";
			now T is catalogued;
	now inventory-busy is 0.

LootListing is an action applying to nothing. Understand "loot", "list loot", "collectibles", "list collectibles", "items", "list items" as LootListing.

[!<CarryOutLootListing>+

REQUIRES COMMENTING

+!]
Carry Out LootListing:
	reset entire catalogue;
	now inventory-busy is 1;
	repeat with T running through carried uncatalogued alchemy product:
		say "[T][line break]";
		now T is catalogued;
	repeat with T running through held uncatalogued collectibles:
		unless T is TQedible:
			unless T is mass collectible, say "[T][line break]";
			now T is catalogued;
	say MassCollectiblesList;
	say line break;
	now inventory-busy is 0.

To say MassCollectiblesList:
	let TokTypes be 0;
	if there is a held magic token, increase TokTypes by 1;
	if there is a held sanity token, increase TokTypes by 1;
	if there is a held defiance token, increase TokTypes by 1;
	if there is a held fabric token, increase TokTypes by 1;
	if there is a held magic token:
		decrease TokTypes by 1;
		say "[random held magic token][inventory style] (x[number of held magic tokens])[if TokTypes > 1], [otherwise if TokTypes is 1] and [end if]"; [Even if there are 10 held we only want to write it once]
	if there is a held sanity token:
		decrease TokTypes by 1;
		say "[random held sanity token][inventory style] (x[number of held sanity tokens])[if TokTypes > 1], [otherwise if TokTypes is 1] and [end if]"; [Even if there are 10 held we only want to write it once]
	if there is a held fabric token:
		decrease TokTypes by 1;
		say "[random held fabric token][inventory style] (x[number of held fabric tokens])[if TokTypes > 1], [otherwise if TokTypes is 1] and [end if]"; [Even if there are 10 held we only want to write it once]
	if there is a held defiance token:
		[decrease TokTypes by 1;] [currently unnecessary]
		say "[random held defiance token][inventory style] (x[number of held defiance tokens])". [Even if there are 10 held we only want to write it once]

TattooListing is an action applying to nothing. Understand "tattoo", "list tattoo", "tats", "list tats", "tattoos", "list tattoos" as TattooListing.

[!<CarryOutTattooListing>+

REQUIRES COMMENTING

+!]
Carry Out TattooListing:
	now inventory-busy is 1;
	repeat with T running through worn tattoos:
		say "[T][line break]";
	say "[unless there is a worn tattoo]You have no tattoos.[end if][line break]";
	now inventory-busy is 0.

To say ShortDesc of (L - a list of things):
	let E be the number of entries in L;
	repeat with C running through L:
		say "[ShortDesc of C][if E > 2], [otherwise if E is 2] and [end if]";
		decrease E by 1.

Taking Inventory ends here.
