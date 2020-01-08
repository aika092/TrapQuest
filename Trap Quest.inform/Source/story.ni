"Trap Quest" by Aika

[PUBLIC VERSION]

Release along with cover art.
The story genre is "Erotica".
Use BRIEF room descriptions.
The story creation year is 2019.
Use scoring.

Include Save File Control by Nathanael Marion.
The binary file of save data is called "DoNotTouchMe".
Include Roguelike Saving by Miscellaneous Backend.

Use ALLOC_CHUNK_SIZE of 3200000.
Use SYMBOLS_CHUNK_SIZE of 100000.
Use MAX_EXPRESSION_NODES of 20000.
Use MAX_SYMBOLS of 500000.
Use MAX_PROP_TABLE_SIZE of 4000000.
Use MAX_NUM_STATIC_STRINGS of 300000.
Use MAX_STATIC_DATA of 100000000.
Use MAX_CLASSES of 2000.
Use MAX_OBJECTS of 10000.
Use MAX_LABELS of 20000.
Use MAX_ARRAYS of 1000000.
Use MAX_ZCODE_SIZE of 1000000.
Use MAX_ACTIONS of 512.
Use MAX_VERBS of 512.
Use MAX_VERBSPACE of 80000.
[Use maximum file based undo count of at least 30.]
Use MAX_OBJ_PROP_COUNT of 256.
Use MAX_DICT_ENTRIES of 10000.

Use MAX_LINK_DATA_SIZE of 20000.

Use dynamic memory allocation of at least 1738400.
[Use maximum indexed text length of at least 200000.]

Include Flexible Windows by Jon Ingold.
Include Inline Hyperlinks by Erik Temple.
Include Glimmr Drawing Commands by Erik Temple.
Include Undo Output Control by Erik Temple.
Include Glimmr Canvas-Based Drawing by Erik Temple.
Include Glimmr Graphic Hyperlinks by Erik Temple.
Include Menus by Emily Short.

links-disabled is a truth state that varies. [When you want to briefly disable links]


[Include Version 3 of Fixed Point Maths by Third Party Extensions.
Include Version 4 of Glulx Text Effects by Third Party Extensions.
Include Basic Screen Effects by Third Party Extensions.
Include Glulx Text Effects by Third Party Extensions.
Include Plurality by Third Party Extensions.
Include Questions by Third Party Extensions.
Include Real-Time Delays by Third Party Extensions.
Include Glulx Image Centering by Third Party Extensions.
Include Basic Screen Effects by Third Party Extensions.
Include Glimmr Canvas-Based Drawing by Third Party Extensions.
Include Glimmr Graphic Hyperlinks by Third Party Extensions.
Include Glimmr Bitmap Font by Third Party Extensions.
Include Numbered Disambiguation Choices by Third Party Extensions.
Include Undo Output Control by Third Party Extensions.
Include Menus by Third Party Extensions.
Include Basic Help Menu by Third Party Extensions.
Include Ultra Undo by Third Party Extensions.
Include Text Capture by Third Party Extensions.
Include Inline Hyperlinks by Third Party Extensions.
Include Default Messages by Third Party Extensions.]

[!<SetUpDebugStuff>+

Used for testing, to modify the starting state.

+!]
To set up debug stuff:
	[try RegionPlacing;
	now armband is worn by the player;
	now the armband-title of armband is "[NameBimbo]";
	now the armband-print of armband is "submissive in training";
	now armband is emerald;
	update students;
	now armband is ruby;
	update students;
	now the player is in School26;
	try waiting;
	display entire map;]
	do nothing.
	[now virgincursed is 1;
	now the size of penis is 4;
	summon a random rubber top hat cursed;
	summon a random heels cursed;
	summon a random bikini top cursed;
	summon pouch-panties cursed;
	summon a random nylon leggings cursed;
	summon a random pink rubber dress;
	summon a random sissifying suspenders cursed;
	summon a random cumslut collar cursed;]
	[summon a random chastity cage cursed;]
	[virginpunish;
	virginpunish;
	virginpunish.]
[
 Beginning InformDoc specification:

 Any variable documentation starts with the tag [!<VARIABLENAME:VARIABLETYPE>* (closed in reverse order). *!]
 Any function documentation starts with the tag [!<FUNCTIONNAME>+ (again, closed in reverse order). +!]
 Any class documentation (including variables and functions within classes) starts with the tag [!<CLASSNAME>@ @!]
 Class tags for variables/functions within classes should be expanded to [!<ClassName>@<VARIABLENAME:VARIABLETYPE|FUNCTIONNAME>*|+ (as appropriate) +|*!]

 All annotations associated with normal JavaDocs should still work within these tags. ALL ANNOTATIONS MUST OCCUR AFTER THE GENERAL FUNCTION/CLASS DESCRIPTION. The main annotations to take note of are:
	 @param <CLASSNAME>:<VariableName> -> For any parameter/argument used within the function, describe the class it belongs to and the name of the variable within the function immediately after the annotation.
	 @return <CLASSNAME> -> If the function returns a variable, describe the class of that variable immediately after the annotation.
	 @inherits <CLASSNAME> -> (For classes only) If the class directly inherits another object, note the object down (no description required).
	 @deprecated -> If the function has been deprecated, say why.
	 @throws -> Probably not used, but should be something to consider when having functions that can be erroneous.
	 @since <MAJOR.MINOR.PATCH> -> Describe when a new function was added according to the released version that it first appeared in.

Any descriptor can be written using the markdown syntax to apply stylistics and format everything. If you do not know what the markdown syntax is... I would suggest Google is a great place to start. The following is an example for all listed possibilities:
]

[!<testingVariable:Integer>*

This variable is an *integer* that sits around and does very little.
*!]

[!<TestingFunction>+

This is a testing function that doesn't really do much in the way of anything.

 @param <Integer>:<a> The integer, **a**, also doesn't do much within this function.

 @return <NULL> Yep... this function is definitely so very useful...
+!]

[!<Testing>@
This is the testing class description. It's mostly empty because the testing class
doesn't exactly do much, but it sits here and looks pretty anyway...

Probably...

+ We Hope
+ Or Something
@!]

[!<Testing>@<canDocument:bool>*

This is the description for the canDocument boolean within the Testing class.
Once again, it does very little.
*@!]

[!<Testing>@<CanDocument>+

This is the description for the CanDocument function within the Testing Class.
Apparently, because I am writing these things now, that would indicate that I
can document things. Woop!

 @param <Integer>:<a> The integer, a, is given to the function as a gift from
					three wise programmers.
 @param  <String>:<b> The String, b, is given to the function by a wandering
					shepherd.
 @param <Boolean>:<c> The boolean, c, is given to the function by a daft old
					geezer that appeared from nowhere.

 @return <Boolean> Returns whether the programmer can document things or not.
  Mainly not since this is kinda a fake function...

+@!]

[
Needs Testing:
*
]

[
Big reworks:
* Break up removal checks into functions like wearability
]

[
Minor changes:
* More tattoos - tattoos forced on the player by hotel NPCs
* More piercings
* Different flavour for submitting when a sex doll
* More ways to influence hair colour and make up
* Glued clothing can't be displaced
]

[
Features to implement:
* Some intelligent NPCs can rip off breast covering / low outrage clothing if the player resists during sex.
* Add a "level 2" repairing area in the mansion
* Witch can enchant clothing with "durability" (for a price)
]

[CURRENT PLANNED EXTENSIONS:
REGIONS:
Area 1: Dungeon
Area 2: Woods
Area 2b: Haunted mansion
Area 3: Hotel
Area 3b: Slut School
Area 4: Nintendolls R&D Facility
]

[HINTS TO ADD:
]

[THINGS TO ADD TO THE FAQ
]


Include Cutscene Figures by Miscellaneous Frontend.

Volume 1 - Graphics (Private Version Only)

Include Graphics Window Stuff by Miscellaneous Frontend.

Include Main Map Window Code by Map Window.
Include Generic Map Window Code by Map Window.

Include Dungeon Map Window by Map Window.
Include Woods Map Window by Map Window.
Include Hotel Map Window by Map Window.
Include Mansion Map Window by Map Window.
Include School Map Window by Map Window.

Include ASCII Map by Miscellaneous Frontend.

Volume 2 - Game Setup


Include Output Text by Miscellaneous Frontend.
Include Variable Text by Miscellaneous Frontend.
Include Parser Errors by Miscellaneous Frontend.
Include Links by Miscellaneous Frontend.
Include Status Bar by Miscellaneous Frontend.
Include Player Name by Miscellaneous Frontend.
Include Player Title by Miscellaneous Frontend.
Include Disclaimer by Miscellaneous Frontend.
Include Announcements by Miscellaneous Frontend.

Include Prologue by Miscellaneous Frontend.


[Include Menus by Third Party Extensions.
Include Basic Help Menu by Third Party Extensions.
Include Help by Miscellaneous Frontend.]

Include Timer Stuff by Miscellaneous Backend.

Include Game Settings by Miscellaneous Backend.
Include Fetish Settings by Miscellaneous Backend.

Include Fetish Options by Fetish Settings.
Include Handicap Options by Fetish Settings.
Include Benefit Options by Fetish Settings.
Include DQ Benefit Options by Fetish Settings.
Include Background Options by Fetish Settings.
Include Secret Options by Fetish Settings.
Include Body Limit Options by Fetish Settings.
Include Festive Options by Fetish Settings.

Include Engine Initialisation by Miscellaneous Backend.
Include Game Universe Initialisation by Miscellaneous Backend.


Include Executing Fainting by Fainting.
Include Fainting Flavour by Fainting.
Include Recovering the Player by Fainting.
Include Recovering Rooms by Fainting.
Include Recovering Clothing by Fainting.
Include Recovering Drinks by Fainting.
Include Recovering Collectibles by Fainting.
Include Recovering Traps by Fainting.
Include Recovering Containers by Fainting.
Include Recovering Monsters by Fainting.
Include Fainting Reasons by Fainting.


Include Static Rooms by Rooms.


Include Spatial Vectors and Shape by Rooms.
Include Solid Rock by Rooms.
Include Terra Incognita by Rooms.

Include Region Building Dungeon by Rooms.
Include Region Building Woods by Rooms.
Include Region Building Hotel by Rooms.
Include Region Building Mansion by Rooms.
Include Region Building School by Rooms.
Include Region Building by Rooms.
Include Deploying by Rooms.


Include Room Adjectives by Rooms.
Include Room Descriptions by Rooms.
Include Puddles by Rooms.
Include Dungeon by Rooms.
Include Woods by Rooms.
Include Hotel by Rooms.
Include Laundry Robots by Objects.
Include Barriers by Rooms.
Include Mansion by Rooms.
Include School by Rooms.

An introductory room is a kind of room. An introductory room has a labyrinth shape called shape. The shape of an introductory room is usually L3/0-0-1-1-1-1. The grid position of an introductory room is usually <0,0,0>.


Volume 1 - The Player

Include Gender by Player.
Include Fatigue by Player.
Include Misc Variables by Player.

Book 1 - Body Parts

Include Body Parts Definitions by Body Parts.
Include Desirability by Body Parts.
Include Breasts by Body Parts.
Include Stomach by Player.
Include Belly by Body Parts.
Include Hips by Body Parts.
Include Vagina by Body Parts.
Include Asshole by Body Parts.
Include Face by Body Parts.
Include Thighs by Body Parts.
Include Arms by Body Parts.
Include Hair by Body Parts.
Include Penis by Body Parts.

Book 2 - Stats and Status

Include Calculating Stats by Player.
Include Strength by Player.
Include Dexterity by Player.
Include Intelligence by Player.
Include Sex Addiction by Player.
Include Anal Sex Addiction by Player.
Include Vaginal Sex Addiction by Player.
Include Semen Taste and Oral Sex Addiction by Player.
Include Titfuck Addiction by Player.
Include BBC Addiction by Player.
Include Semen Addiction by Player.
Include Milk Taste Addiction by Player.
Include Urine Taste Addiction by Player.
Include Diaper Addiction by Player.
Include Delicateness by Player.
Include Appearance by Player.
Include Cringe Appearance by Player.
Include Heel Skill by Player.
Include Humiliation by Player.
Include Bimbo by Player.
Include Orifice Soreness by Player.
Include Body Soreness by Player.
Include Bladder by Player.
Include Weight Gain by Player.
Include Arousal by Player.
Include Classes by Player.
Include Skills by Player.
Include Magic Power by Player.

Include Short Skirt Addiction by Player.
Include Exposure Addiction by Player.

Include Rectum by Player.
Include Virginity by Player.
Include Avoiding Accidental Wetting by Player.
Include Orgasms by Player.

Volume 1.5 - Things that have to go after The Player in the code

Include Liquid Movements by Miscellaneous Backend.
Include Teleporting and Dragging by Miscellaneous Backend.
Include Taking Inventory by Miscellaneous Frontend.

Volume 2 - Player Description

Include Overall Description by Player Description.
Include Soreness by Player Description.
Include Bimbo by Player Description.
Include Appearance by Player Description.
Include Heel Skill by Player Description.
Include Humiliation by Player Description.
Include Sex Addiction by Player Description.
Include Delicateness by Player Description.
Include TG by Player Description.
Include Status by Player Description.
Include Addictions by Player Description.


Volume 3 - Every Turn (MAIN CODE BLOCK)

Include Compute Turn by Every Turn.
Include Player Standing by Every Turn.
Include Player Kneeling by Every Turn.
Include Automatic Actions by Every Turn.
Include Instinctive Actions by Every Turn.
Include Periodical Clothing Effects by Every Turn.
Include Periodical Other Effects by Every Turn.
Include Traps by Every Turn.
Include Creepiness by Every Turn.
Include Stomach by Every Turn.
Include Reflection by Every Turn.
Include Flight by Every Turn.
Include Lactation by Every Turn.
Include Dressup by Every Turn.
Include Advance Counters by Every Turn.
Include Reset Flags by Every Turn.
Include Latex Curse by Every Turn.
Include Mindflayer Quest by Every Turn.
Include Doom by Every Turn.
Include Absorption by Every Turn.
Include Pregnancy by Every Turn.
Include Semen Movements by Every Turn.
Include Diaper Orgasms by Every Turn.
Include Hypnotic Suggestion by Every Turn.

Volume 4 - Things

Include Things Framework by Objects.

Include Drinks Framework by Drinks.

Include Bottles by Drinks.
Include Cans by Drinks.
Include Vessels by Drinks.
Include Drink Effects by Drinks.
Include Dispensers by Drinks.

Include Destroying by Objects.
Include Containers by Objects.
Include Mimic by Objects.
Include MimicInvestigating by Actions.

Include Candy Machine by Objects.


Include Altars by Objects.
Include Sacred Pool by Objects.
Include Hot Tub by Objects.
Include Swimming Pool by Objects.
Include Pink Wardrobe by Objects.
Include Crafting Table by Objects.
Include Podium by Objects.

Include WellWishing by Actions.
Include Well by Objects.
Include Dungeon Statue by Objects.
Include Woods Statue by Objects.
Include Pink Sphere by Objects.
Include Summoning Portals by Objects.
Include Knife by Objects.
Include Cross Trainer by Objects.
Include PC Monitor by Objects.
Include Stop Button by Objects.
Include Gloryhole by Objects.
Include White Wall by Objects.
Include Warp Portal by Objects.
Include Tentacle Breeder by Objects.
Include Sewing Bench by Objects.

Part - Collectibles

Include Collectible Definition by Collectibles.

Include Sanity Token by Collectibles.
Include Defiance Token by Collectibles.
Include Fabric Token by Collectibles.

Include Doom Stuff by Collectibles.
Include Ectoplasm by Collectibles.
Include Condom Pack by Collectibles.
Include Magic Lamp by Collectibles.
Include Eggs by Collectibles.
Include Piece of Rubber by Collectibles.
Include Infernal Gem by Collectibles.
Include Wasp Wing by Collectibles.
Include Pink Hair by Collectibles.
Include Mechanical Joint by Collectibles.
Include Metal Disc by Collectibles.
Include Royal Sigil by Collectibles.
Include Playing Cards by Collectibles.
Include Chess Piece by Collectibles.
Include Soul Gem by Collectibles.
Include Soiled Diaper by Collectibles.

Include Lubricant by Consumables.
Include Pink Pill by Consumables.
Include Christmas Gift by Consumables.
Include Make Up Kit by Consumables.
Include Electric Fan by Consumables.
Include Squeezy Bottle by Consumables.
Include Skeleton Key by Consumables.
Include Bandage by Consumables.
Include Dark Scroll by Consumables.

Part - Traps

Include Trap Framework by Traps.


Include Makeup Pad Trap by Traps.
Include Ass Hook Trap by Traps.
Include Rocking Horse Trap by Traps.
Include Slingshot Trap by Traps.
Include Pink Smoke Pad Trap by Traps.
Include Needle Trap by Traps.
Include Paddle Trap by Traps.
Include Summoning Trap by Traps.
Include Sprinkle Trap by Traps.
Include Hypno Traps by Traps.
Include Tripwire Trap by Traps.
Include Camera Trap by Traps.
Include Magic Dust Trap by Traps.
Include Vines by Traps.
Include Baby Bouncer by Traps.
Include Discombobulator Laser Trap by Traps.
Include Haunted Mirror Trap by Traps.
Include Iron Maiden Trap by Traps.
Include Glue Trap by Traps.
Include Hole In Wall Trap by Traps.

Include Throne by Objects.

Part - Crafting

Include Crafting Framework by Crafting.


Include Powder by Crafting.
Include Bombs by Crafting.
Include Tinctures by Crafting.
Include Elixirs by Crafting.
Include Potions by Crafting.
Include Salves by Crafting.

Include Salve Rubbing by Actions.

Include Recipes by Crafting.
Include Currently Craftable by Crafting.
Include Memorising by Actions.
Include Crafting by Actions.

Part - Furniture

Include Furniture Framework by Furniture.

Include Kneeling Stool by Furniture.
Include Hammock by Furniture.
Include Hotel Bed by Furniture.
Include Royal Bed by Furniture.
Include Prison Guard's Bed by Furniture.
Include Hotel Chairs by Furniture.
Include Modification Machine by Furniture.
Include Cot by Furniture.
Include Bunk Bed by Furniture.
Include Lecture Chair by Furniture.
Include Guest Bed by Furniture.
Include Master Bed by Furniture.
Include Med Bay Bed by Furniture.
Include Detention Chair by Furniture.

Part - Food


Include Food Framework by Food.
Include Fae Mushroom by Food.
Include Candy by Food.
Include Toffee by Food.
Include Fudge by Food.
Include Creme Egg by Food.
Include Pink Nougat by Food.
Include Chocolate Bar by Food.
Include Liquorice by Food.
Include Strawberry Lace by Food.
Include Digestive Biscuit by Food.
Include Bag Lunch by Food.
Include Chef Foods by Food.
Include Truffle by Food.
Include Cookie by Food.
Include Stuffed Mushroom by Food.
Include Gelatin by Food.
Include Candy Corn by Food.

Include Hotel Feeding Bowls by Objects.
Include School Food Machine by Objects.
Include School Drink Machine by Objects.

Include Snacks by Food.
Include Banana by Food.
Include Apple by Food.
Include Pack of Crisps by Food.
Include Lemon by Food.
Include Pack of Nuts by Food.

Part - Clothing

Include Clothing Adjectives by Clothing.
Include Orifice Protection by Clothing.
Include Clothing Functions by Clothing.
Include Clothing Setup by Clothing.


Include Outrage by Clothing.
Include Cringe by Clothing.
Include Price by Clothing.
Include Printed Names by Clothing.
Include Description by Clothing.
Include Layering by Clothing.
Include Visibility by Clothing.
Include Summoning by Clothing.
Include Wearability by Clothing.
Include Removability by Clothing.
Include Magic State by Clothing.
Include Transformation by Clothing.
Include Influence by Clothing.
Include Imprinting by Clothing.
Include Quests by Clothing.
Include Themes by Clothing.


Include Headgear Framework by Headgear.

Include Tiara by Headgear.
Include Maid Headdress by Headgear.
Include Scrunchies by Headgear.
Include Cow Ears by Headgear.
Include Runic Headband by Headgear.
Include Flower Hairclip by Headgear.
Include Laurel Wreath by Headgear.
Include Royal Circlet by Headgear.
Include Rubber Top Hat by Headgear.
Include Hoods by Headgear.
Include Cat Ears by Headgear.
Include Sissy Bow by Headgear.
Include Baby Bonnet by Headgear.
Include Santa Hat by Headgear.
Include Demon Horns by Headgear.
Include Severed Tentacle by Headgear.
Include Wasp Antennae by Headgear.
Include Cultist Veil by Headgear.
Include Vampiric Fangs by Headgear.
Include Fox Ears by Headgear.
Include Puppy Ears by Headgear.
Include Glittering Rose by Headgear.
Include Cumdumpster Hat by Headgear.
Include Heart Hairpin by Headgear.
Include Combat Visor by Headgear.


Include Shoes Framework by Shoes.

Include Rollerskates Framework by Shoes.
Include White Rollerskates by Shoes.
Include Nonwhite Rollerskates by Shoes.
Include Heels Framework by Shoes.


Include Thigh High Boots by Shoes.
Include Peep Toe Heels by Shoes.
Include Platform Heels by Shoes.
Include Supertall Platform Heels by Shoes.
Include Dildo Heels by Shoes.
Include Court Heels by Shoes.
Include Girly Bow Court Heels by Shoes.
Include Wedge Heels by Shoes.
Include Ballet Heels by Shoes.
Include Queen of Hearts Heels by Shoes.
Include Cow Pattern Boots by Shoes.
Include Ballet Shoes by Shoes.
Include Lipstick Heels by Shoes.
Include Armadillo Heels by Shoes.
Include Baby Booties by Shoes.
Include Bunny Booties by Shoes.
Include Mary Janes by Shoes.
Include Sandals by Shoes.
Include Trainee Boots by Shoes.

Include Bra Framework by Bra.


Include Training Bra by Bra.
Include Wonder Bra by Bra.
Include Exercise Bra by Bra.
Include Fetish Bra by Bra.
Include Maternity Bra by Bra.
Include Chastity Bra by Bra.
Include Bikini Top by Bra.
Include White String Bikini Top by Bra.
Include Red String Bikini Top by Bra.
Include Cow Print Bikini Top by Bra.
Include Purple Bikini Top by Bra.
Include Leopard Print Bikini Top by Bra.
Include Silver Bikini Top by Bra.
Include Cream Bikini Top by Bra.
Include Skimpy Pink Bikini Top by Bra.
Include Pink Bikini Top by Bra.
Include Purple String Bikini Top by Bra.
Include Nipple Ring Bikini Top by Bra.
Include Cupless Bra by Bra.
Include Ribbon Bra by Bra.
Include Spike Bra by Bra.
Include Sheer Bra by Bra.
Include Trainee Bra by Bra.
Include Pasties by Bra.


Include Knickers Framework by Knickers.

Include Plug Panties by Knickers.
Include Cutoffs by Knickers.
Include Bikini Bottoms by Knickers.
Include Crotch Rope by Knickers.
Include Pouch Panties by Knickers.
Include Crotchless Panties by Knickers.
Include Cum Dump's Undergarment by Knickers.
Include Hotpants by Knickers.
Include Bloomers by Knickers.
Include Microshorts by Knickers.
Include Strapon by Knickers.

Include Undies by Knickers.
Include G-strings by Knickers.
Include Thongs by Knickers.
Include Briefs by Knickers.
Include Panties by Knickers.


Include Diaper Framework by Knickers.
Include Diapers by Knickers.
Include Diaper Covers by Knickers.


Include Trousers Framework by Trousers.
Include Yoga Pants by Trousers.
Include PJ Bottoms by Trousers.
Include Jeans by Trousers.
Include Buttocksless Pants by Trousers.
Include Leggings by Trousers.
Include Latex Pants by Trousers.
Include Bloomers by Trousers.
Include Teddy Bear Pantyhose by Trousers.
Include Exercise Shorts by Trousers.

Part - Dresses

Include Dresses Framework by Dresses.

Include Swimsuit Framework by Dresses.
Include Swimming Top by Dresses.
Include Monokinis by Dresses.
Include Slutty Monokinis by Dresses.

Include Royal Dress by Dresses.
Include Catsuit by Dresses.
Include Leotard by Dresses.
Include Fishnet Dress by Dresses.
Include Maid Outfit by Dresses.
Include Blouse by Dresses.
Include Fetish Dress by Dresses.
Include Tube Top by Dresses.
Include Nighties by Dresses.
Include Cheerleader Outfit by Dresses.
Include Priestess Outfit by Dresses.
Include Schoolgirl Outfit by Dresses.
Include Evening Dress by Dresses.
Include Maternity Dress by Dresses.
Include Basque by Dresses.
Include Milking Harness by Dresses.
Include Fertility Goddess Outfit by Dresses.
Include Pink Rubber Dress by Dresses.
Include Warrior's Chestpiece by Dresses.
Include T-Shirts by Dresses.
Include Superheroine Outfit by Dresses.
Include Clubbing Dress by Dresses.
Include Rope Harness by Dresses.
Include Negligee by Dresses.
Include Chainmail Top by Dresses.
Include Bodysuit by Dresses.
Include Shirt by Dresses.
Include Fishnet Top by Dresses.
Include Crop Top by Dresses.
Include Onesie by Dresses.
Include Blazing Dress by Dresses.
Include Striped Top by Dresses.
Include Cultist Robe by Dresses.
Include Vest Top by Dresses.
Include Sequins Outfit by Dresses.
Include Kimonos by Dresses.
Include Butterfly Wings by Dresses.
Include Lycra Bodysuit by Dresses.
Include Diaper Dresses by Dresses.
Include Ribbon Dress by Dresses.
Include Slave Dress by Dresses.
Include Business Dresses by Dresses.
Include Rompers by Dresses.
Include Dining Dresses by Dresses.
Include Rubber Dress by Dresses.
Include Gingham Dress by Dresses.
Include Magical Dress by Dresses.
Include Christmas Dress by Dresses.
Include Bunny Outfit by Dresses.
Include Open Front Dress by Dresses.
Include Latex Dungarees by Dresses.

Part - Corsets

Include Corsets Framework by Corsets.
Include Gothic Corset by Corsets.
Include Satin Corset by Corsets.
Include Vinyl Corset by Corsets.
Include Leather Corset by Corsets.
Include Fetish Corset by Corsets.
Include Bat Corset by Corsets.
Include Santa Corset by Corsets.
Include Spike Corset by Corsets.
Include Ballet Corset by Corsets.

Part - Skirts

Include All Skirts by Skirts.


Part - Belts and Suspenders

Include All Belts by Belts Suspenders.


Part - Stockings

Include All Stockings by Stockings.

Part - Accessories

Include Accessories Framework by Accessories.

Include Rings by Accessories.
Include Necklaces by Accessories.
Include Bracelets by Accessories.
Include Stethoscope by Accessories.
Include Cowbell by Accessories.
Include Catbell by Accessories.
Include Slave Collar by Accessories.
Include Necktie by Accessories.
Include Pullstring Collar by Accessories.
Include Focus Band by Accessories.
Include Steel Collar by Accessories.
Include Mystical Amulet by Accessories.
Include Soulstone by Accessories.
Include Bib by Accessories.
Include Vampiric Cape by Accessories.
Include Lipstick Collar by Accessories.
Include Cumslut Collar by Accessories.
Include Fuckdoll Collar by Accessories.
Include Research Airhancer by Accessories.

Include Armband by Accessories.


Part - Piercing

Include All Piercings by Piercings Modules.


Part - Equippables

Include Equippables Framework by Equippables.


Include Whip of Domination by Equippables.
Include Magic Wand by Equippables.
Include Kitty Claws by Equippables.
Include Mittens by Equippables.
Include Swords by Equippables.
Include Prayer Beads by Equippables.

Include Pink Spraybottle by Equippables.
Include Mopping by Actions.
Include Spritzing by Actions.

Include Wasp Cloud by Equippables.
Include Vampiric Claws by Equippables.
Include Carrot Daggers by Equippables.
Include Royal Scepter by Equippables.
Include Pocketbooks by Equippables.
Include Midnight Tanto by Equippables.
Include Puppy Mittens by Equippables.
Include Fairy Wand by Equippables.
Include Nintendolls Wand by Equippables.
Include Fake Nails by Equippables.
Include Totem of Purity by Equippables.
Include Pom Poms by Equippables.
Include Heart Wand by Equippables.
Include Magic Pistol by Equippables.
Include Wrench by Equippables.

Part - Bondage

Include Bondage Framework by Bondage.


Include Wrist Bondage by Bondage.
Include Ankle Bondage by Bondage.
Include Dungeon Chains by Objects.
Include Gags by Bondage.
Include Pacifiers by Bondage.
Include Puppy Gag by Bondage.
Include Rubber Duck Gag by Bondage.
Include Ring Gag by Bondage.
Include Chastity Cage by Bondage.
Include Pet Collar by Bondage.
Include Ball and Chain by Bondage.
Include Wrist Collar Bar by Bondage.

Part - Sex Toys


Include Sex Toy Framework by Sex Toys.

Include Golden Phallus by Sex Toys.
Include Throbbing Tentacle by Sex Toys.
Include Vibrator by Sex Toys.
Include Jelly Dildo by Sex Toys.
Include Mamba by Sex Toys.
Include Johnson by Sex Toys.
Include Cat Tail Plug by Sex Toys.
Include Bunny Tail Plug by Sex Toys.
Include Puppy Tail Plug by Sex Toys.
Include Demon Tail Plug by Sex Toys.
Include Prostate Massager Plug by Sex Toys.
Include Anal Beads by Sex Toys.
Include Ben Wa Balls by Sex Toys.
Include Unicorn Horn by Sex Toys.
Include Writhing Vine by Sex Toys.

Include Condom of Kings by Clothing.

Part - Tattoos

Include Tattoos Framework by Tattoos.
Include All Tattoos by Tattoos.

Include Inking by Actions.


Part - Bags of Holding

Include Bags of Holding Framework by Bags of Holding.
Include Sacks of Holding by Bags of Holding.
Include Handbags of Holding by Bags of Holding.


Volume 5 - More Backend Stuff

Include Relations by Miscellaneous Backend.
Include Immobility by Player.
Include Manual Dexterity by Player.
Include Dungeon Shop by Rooms.
Include Nearby Simulated Danger by Miscellaneous Backend.


Volume 6 - Other Actions

Include Wearing by Actions.
Include Taking Off by Actions.
Include Displacing Replacing by Actions.
Include TopDisplacing TopReplacing by Actions.
Include Zipping by Actions.

Include Drinking by Actions.
Include Quaffing by Actions.
Include Decanting by Actions.
Include Extracting by Actions.
Include Squirting by Actions.
Include Minibar Restocking by Actions.

Include Searching by Actions.
Include Opening by Actions.
Include Items Found in Containers by Miscellaneous Backend.

Include Pulling by Actions.
Include Jumping by Actions.
Include Standing by Actions.
Include Kneeling by Actions.
Include Going by Actions.
Include Returning by Actions.
Include Waiting by Actions.
Include Long Waiting by Actions.
Include Resting by Actions.
Include Taking by Actions.
Include Dropping by Actions.
Include Strutting by Actions.
Include Resisting by Actions.
Include Submitting by Actions.
Include Begging for Mercy by Actions.

Include Masturbating by Actions.
Include Showering by Actions.
Include Paying by Actions.
Include Giving by Actions.
Include Urinating by Actions.
Include Urinating Into Bottles by Actions.
Include Cleaning by Actions.
Include Eating by Actions.
Include Presenting by Actions.
Include Rinsing by Actions.
Include Self Drinking by Actions.
Include Squatting by Actions.
Include Offering Trading by Actions.
Include Repairing by Actions.
Include Invoking by Actions.
Include Poking by Actions.
Include Fainting by Actions.

Volume 7 - Monsters

Include Monster Adjectives by Monster Framework.
Include Monster Descriptions by Monster Framework.
Include Monster Functions by Monster Framework.
Include Blocking by Monster Framework.
Include Set Up Monsters by Monster Framework.
Include Compute Monsters by Monster Framework.
Include Motion by Monster Framework.
Include Perception by Monster Framework.

Include Conversation by Monster Framework.
Include Interacting Protecting by Monster Framework.
Include Combat by Monster Framework.
Include DQ Punishments by Monster Framework.
Include Special Events by Monster Framework.
Include Diaper Events by Monster Framework.
Include Requested Sex by Monster Framework.
Include Penetrative Sex by Monster Framework.
Include Attacking Monsters by Monster Framework.

Include Attacking by Actions.
Include Slapping by Actions.
Include Kneeing by Actions.
Include Kicking by Actions.

Include Dominating Monsters by Monster Framework.

Include Royal Guard by Monster.
Include Mannequin by Monster.
Include Demoness by Monster.
Include Gladiator by Monster.
Include Shopkeeper by Monster.
Include Vine Boss by Monster.
Include Fairy by Monster.
Include Witch by Monster.
Include Patron by Monster.
Include Matron by Monster.

Include Robots Framework by Monster Framework.
Include RoboBellboy by Monster.
Include RoboButler by Monster.
Include RoboChef by Monster.

Include Wrestler by Monster.
Include Mechanic by Monster.
Include Demon Lord Xavier by Monster.
Include Dominatrix by Monster.
Include Mind Flayer by Monster.
Include Acolyte Cultist by Monster.
Include Ghost by Monster.
Include Deep One by Monster.
Include Vampiress by Monster.
Include Adult Baby Slave by Monster.
Include Herald Valleyhotep by Monster.
Include Djinn by Monster.
Include Kitsune by Monster.
Include Hellhound by Monster.
Include Pimp by Monster.
Include Princess by Monster.

Include Staff Framework by Monster Framework.
Include Receptionist by Monster.
Include Headmistress by Monster.
Include Nurse by Monster.
Include Teachers Sapphire by Monster.
Include Teachers Emerald by Monster.
Include Teachers Ruby by Monster.
Include Teachers Pink Diamond by Monster.

Include Student Framework by Monster Framework.
Include Students Amicable by Monster.
Include Students Tryhard by Monster.
Include Students Innocent by Monster.
Include Students Nasty by Monster.
Include Students Ditzy by Monster.

Include Supporter Framework by Monster Framework.
Include Supporters by Monster.

Include Woman Barbara by Monster.

Include Talking by Actions.


Volume 8 - Other

Include Forbidden Actions by Actions.

Include Actions with Missing Nouns by Actions.

Include Tutorial by Miscellaneous Frontend.


The clothingFocusPriority of headgear is -10.

The clothingFocusPriority of combat visor is -9.

The clothingFocusPriority of pair of earrings is -8.

The clothingFocusPriority of nose piercing is -7.

The clothingFocusPriority of tongue piercing is -6.

The clothingFocusPriority of gag is -5.

The clothingFocusPriority of lip piercing is -4.

The clothingFocusPriority of lips module is -4.

The clothingFocusPriority of neckwear is -3.

[The clothingFocusPriority of serving-bondage is -2.]

The clothingFocusPriority of bracelet is -1.

The clothingFocusPriority of wrist bond is 0.

The clothingFocusPriority of gloves is 2.

The clothingFocusPriority of nipple piercing is 4.

The clothingFocusPriority of bra is 5.

The clothingFocusPriority of an underdress is 6.

The clothingFocusPriority of dress is 7.

The clothingFocusPriority of corset is 8.

The clothingFocusPriority of belt is 11.

The clothingFocusPriority of sex toy is 12.

The clothingFocusPriority of knickers is 13.

The clothingFocusPriority of diaper cover is 14.

The clothingFocusPriority of trousers is 15.

The clothingFocusPriority of skirt is 16.

The clothingFocusPriority of stockings is 18.

The clothingFocusPriority of an ankle bond is 19.

The clothingFocusPriority of shoes is 20.

The clothingFocusPriority of bag of holding is 24.


Volume 3 - Version

Include Public Version Stuff by Miscellaneous Backend.