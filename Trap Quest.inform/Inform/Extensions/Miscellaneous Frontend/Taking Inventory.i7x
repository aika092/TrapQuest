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
	repeat with T running through catalogued things:
		now T is not catalogued.

[!<itemListing:Action>*

REQUIRES COMMENTING

*!]
ItemListing is an action applying to nothing. Understand "items", "list items", "list inventory" as ItemListing.
inventory-busy is a number that varies.

[!<CarryOutItemListing>+

This function executes the "ItemListing" command, looping through each of the items in the player's inventory and displaying them to the player.

+!]
Carry Out ItemListing:
	reset entire catalogue;
	if inventory hyperlinks < 2, now disambiguation-busy is true; [disables hyperlinks until set to false]
	now inventory-busy is 1;
	if there are worn tattoos:
		say "[bold type]Inked tattoos:[roman type][line break]";
		repeat with T running through worn tattoos:
			say "[T][line break]";
			now T is catalogued;
	if there is a worn bag of holding:
		say "[bold type]Inventory expansion:[roman type][line break]";
		repeat with T running through worn bag of holding:
			say "[T][line break]";
			now T is catalogued;
	if there are carried uncatalogued recipes:
		say "[bold type]Recipes:[roman type][line break]";
		repeat with T running through carried uncatalogued recipes:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued collectibles:
		say "[bold type]Loot:[roman type][line break]";
		repeat with T running through held uncatalogued collectibles:
			unless T is TQedible:
				say "[T][line break]";
				now T is catalogued;
	if there are carried uncatalogued clothing:
		say "[bold type]Unworn clothing:[roman type][line break]";
		repeat with T running through carried uncatalogued clothing:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued bottles:
		say "[bold type]Drinks[if there is a worn bag of holding] (not in bag)[end if]:[roman type][line break]";
		repeat with T running through held uncatalogued bottles:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued TQedible things:
		say "[bold type]Food[if there is a worn bag of holding] (not in bag)[end if]:[roman type][line break]";
		repeat with T running through held uncatalogued TQedible things:
			say "[T][line break]";
			now T is catalogued;
		repeat with T running through held uncatalogued pink pill:
			say "[T][line break]";
			now T is catalogued;
	if there are worn uncatalogued clothing:
		say "[bold type]Worn clothing:[roman type][line break]";
		repeat with T running through worn uncatalogued clothing:
			say "[T][line break]";
			now T is catalogued;
	if there are worn uncatalogued things:
		say "[bold type]Other worn items:[roman type][line break]";
		repeat with T running through worn uncatalogued things:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued things:
		say "[bold type]Other:[roman type][line break]";
		repeat with T running through held uncatalogued things:
			say "[T][line break]";
			now T is catalogued;
	now inventory-busy is 0;
	now disambiguation-busy is false.

ClothingListing is an action applying to nothing. Understand "clothing", "list clothing", "clothes", "list clothes", "c" as ClothingListing.

[!<CarryOutClothingListing>+

REQUIRES COMMENTING

+!]
Carry Out ClothingListing:
	reset entire catalogue;
	if inventory hyperlinks is 0, now disambiguation-busy is true; [disables hyperlinks until set to false]
	now inventory-busy is 1;
	if there are carried uncatalogued clothing:
		say "[bold type]Unworn clothing:[roman type][line break]";
		repeat with T running through carried uncatalogued clothing:
			unless T is plentiful accessory, say "[T][line break]";
			now T is catalogued;
	if there are worn uncatalogued clothing:
		say "[bold type]Worn clothing:[roman type][line break]";
		repeat with T running through worn uncatalogued clothing:
			unless T is plentiful accessory, say "[T][line break]";
			now T is catalogued;
	now inventory-busy is 0;
	now disambiguation-busy is false.

JewelleryListing is an action applying to nothing. Understand "accessories", "list accessories", "jewels", "list jewels", "jewellery", "list jewellery", "j" as JewelleryListing.

[!<CarryOutJewelleryListing>+

REQUIRES COMMENTING

+!]
Carry Out JewelleryListing:
	reset entire catalogue;
	if inventory hyperlinks is 0, now disambiguation-busy is true; [disables hyperlinks until set to false]
	now inventory-busy is 1;
	if there are carried uncatalogued plentiful accessories:
		say "[bold type]Unworn jewellery:[roman type][line break]";
		repeat with T running through carried uncatalogued plentiful accessories:
			say "[T][line break]";
			now T is catalogued;
	if there are worn uncatalogued plentiful accessories:
		say "[bold type]Worn jewellery:[roman type][line break]";
		repeat with T running through worn uncatalogued plentiful accessories:
			say "[T][line break]";
			now T is catalogued;
	now inventory-busy is 0;
	now disambiguation-busy is false.

FoodListing is an action applying to nothing. Understand "edibles", "list edibles", "food", "list food", "drinks", "list drinks", "list cans", "vessels", "list vessels", "f" as FoodListing.

[!<CarryOutFoodListing>+

REQUIRES COMMENTING

+!]
Carry Out FoodListing:
	reset entire catalogue;
	if inventory hyperlinks is 0, now disambiguation-busy is true; [disables hyperlinks until set to false]
	now inventory-busy is 1;
	if there are carried uncatalogued bottles:
		say "[bold type]Drinks:[roman type][line break]";
		repeat with T running through carried uncatalogued bottles:
			say "[T][line break]";
			now T is catalogued;
	if there are held uncatalogued TQEdible things:
		say "[bold type]Food:[roman type][line break]";
		repeat with T running through held uncatalogued TQedible things:
			say "[T][line break]";
			now T is catalogued;
		repeat with T running through held uncatalogued pink pill:
			say "[T][line break]";
			now T is catalogued;
	now inventory-busy is 0;
	now disambiguation-busy is false.

To say ShortDesc of (L - a list of things):
	let E be the number of entries in L;
	repeat with C running through L:
		say "[ShortDesc of C][if E > 2], [otherwise if E is 2] and [end if]";
		decrease E by 1.
		
	



Taking Inventory ends here.

