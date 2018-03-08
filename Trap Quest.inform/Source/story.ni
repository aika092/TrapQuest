"Trap Quest" by Aika

Release along with cover art.
The story genre is "Erotica".
Use BRIEF room descriptions.
The story creation year is 2017.

Include Compiler Settings by Miscellaneous Backend.
Include Third Party Extensions by Third Party Extensions.

[!<SetUpDebugStuff>+

Used for testing, to modify the starting state.

+!]
To set up debug stuff:
	do nothing.
[
 Beginning InformDoc specification:

 Any variable documentation starts with the tag [!<VARIABLENAME:VARIABLETYPE>* (closed in reverse order). *!]
 Any function documentation starts with the tag [!<FUNCTIONNAME>+ (again, closed in reverse order). +!]
 Any class documentation (including variables and functions within classes) starts with the tag [!<CLASSNAME>@ @!]
 Class tags for variables/functions within classes should be expanded to [!<ClassName>@<VARIABLENAME:VARIABLETYPE|FUNCTIONNAME>*|+ (as appropriate) +|*!]
"
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
* Mysterious mummy
* Dual classes
* Fuckholes (heheh)
]

[
Big reworks:
* Break up removal checks into functions like wearability
* Mansion generates randomly like other regions
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


Volume 2 - Game Setup

Include Output Text by Miscellaneous Frontend.
Include Variable Text by Miscellaneous Frontend.
Include Parser Errors by Miscellaneous Frontend.
Include Links by Miscellaneous Frontend.
Include Status Bar by Miscellaneous Frontend.
Include Player Title by Miscellaneous Frontend.
Include Disclaimer by Miscellaneous Frontend.

Include Room Descriptions by Miscellaneous Backend. [TODO: Move to Rooms Framework]

Include Game Settings by Miscellaneous Backend. 
Include Fetish Settings by Miscellaneous Backend. 

Include Static Rooms by Rooms.
Include Help by Miscellaneous Frontend.

Include Engine Initialisation by Miscellaneous Backend.
Include Prologue by Miscellaneous Frontend.
Include Game Universe Initialisation by Miscellaneous Backend.

Book 1 - Randomly Generated Regions

Include Spatial Vectors and Shape by Rooms.
Include Solid Rock by Rooms.
Include Terra Incognita by Rooms.
Include Region Building by Rooms.
Include Deploying by Rooms.

Book 2 - Fainting

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

Volume 3 - Rooms

Include Room Adjectives by Rooms.
Include Room Descriptions by Rooms.
Include Puddles by Rooms.
Include Dungeon by Rooms.
Include Woods by Rooms.
Include Hotel by Rooms.
Include Mansion by Rooms.
Include School by Rooms.

An introductory room is a kind of room.  An introductory room has a labyrinth shape called shape.  The shape of an introductory room is usually L3/0-0-1-1-1-1.  The grid position of an introductory room is usually <0,0,0>.


Volume 4 - The Player

Include Gender by Player.
Include Fatigue by Player.
Include Misc Variables by Player.

Book 1 - Body Parts

Include Body Parts Definitions by Body Parts.
Include Breasts by Body Parts.
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

Include Liquid Movements by Miscellaneous Backend.

Include Taking Inventory by Miscellaneous Frontend.


Book 3 - Player Description

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




Volume 5 - Every Turn (MAIN CODE BLOCK)

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
Include Semen Movements by Every Turn.
Include Diaper Orgasms by Every Turn.
Include Hypnotic Suggestion by Every Turn.



Volume 6 - Things

Include Things Framework by Objects.
Include Destroying by Objects.
Include Containers by Objects.
Include Mimic by Objects.
Include MimicInvestigating by Actions.
Include Candy Machine by Objects.

Include Trap Framework by Traps.
Include Dildo Pole Trap by Traps.
Include Bukkake Traps by Traps.
Include Makeup Pad Trap by Traps.
Include Ass Hook Trap by Traps.
Include Wooden Horse Traps by Traps.
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

Include Drinks Framework by Drinks.
Include Bottles by Drinks.
Include Cans by Drinks.
Include Vessels by Drinks.
Include Drink Effects by Drinks.
Include Dispensers by Drinks.

Include Crafting Framework by Crafting.
Include Tinctures by Crafting.
Include Elixirs by Crafting.
Include Potions by Crafting.
Include Salves by Crafting.

Include Drinking by Actions.
Include Quaffing by Actions.
Include Decanting by Actions.
Include Extracting by Actions.
Include Squirting by Actions.
Include Minibar Restocking by Actions.

Include Furniture Framework by Furniture.
Include Kneeling Stool by Furniture.
Include Milking Bench by Furniture.
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

Include Throne by Objects.
Include Altars by Objects.
Include Lake Monster by Objects.
Include Slimegirl by Objects.
Include Sacred Pool by Objects.
Include Pink Wardrobe by Objects.
Include Alchemist's Table by Objects.
Include Podium by Objects.
Include Well by Objects.
Include Dungeon Statue by Objects.
Include Woods Statue by Objects.
Include Pink Sphere by Objects.
Include Summoning Portals by Objects.
Include Knife by Objects.
Include Cross Trainer by Objects.
Include Stop Button by Objects.
Include Gloryhole by Objects.
Include White Wall by Objects.
Include Warp Portal by Objects.
Include Tentacle Breeder by Objects.
Include Sewing Bench by Objects.


Include Collectible Definition by Collectibles.

Include Lubricant by Consumables.
Include Pink Pill by Consumables.
Include Christmas Gift by Consumables.
Include Make Up Kit by Consumables.
Include Electric Fan by Consumables.
Include Squeezy Bottle by Consumables.
Include Skeleton Key by Consumables.
Include Bandage by Consumables.
Include Dark Scroll by Consumables.

Include Doom Stuff by Collectibles.
Include Ectoplasm by Collectibles.
Include Condom Pack by Collectibles.
Include Magic Lamp by Collectibles.
Include Eggs by Collectibles.
Include Piece of Rubber by Collectibles.
Include Infernal Gem by Collectibles.
Include Wasp Wing by Collectibles.
Include Pink Hair by Collectibles.
Include Writhing Vine by Collectibles.
Include Mechanical Joint by Collectibles.
Include Metal Disc by Collectibles.
Include Royal Sigil by Collectibles.
Include Playing Cards by Collectibles.

Include Teleporting and Dragging by Miscellaneous Backend.

A food is a kind of collectible.  Food is edible.

Include Fae Mushroom by Food.
Include Candy by Food.
Include Toffee by Food.
Include Fudge by Food.
Include Creme Egg by Food.
Include Pink Nugget by Food.
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
Include Chocolates Bag by Objects.
Include School Food Machine by Objects.

Include Snacks by Food.
Include Banana by Food.
Include Apple by Food.
Include Pack of Crisps by Food.
Include Lemon by Food.
Include Pack of Nuts by Food.

Include Recipes by Crafting.
Include Currently Craftable by Crafting.
Include Memorising by Actions.
Include Crafting by Actions.

Volume 7 - Clothes

Include Clothing Adjectives by Clothing.
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

Include Shoes Framework by Shoes.
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
Include White Bikini Top by Bra.
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
Include Demon Lord's Codpiece by Knickers.

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
Include Business Dresses by Dresses.
Include Rompers by Dresses.
Include Dining Dresses by Dresses.
Include Rubber Dress by Dresses.
Include Gingham Dress by Dresses.
Include Magical Dress by Dresses.
Include Christmas Dress by Dresses.

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

Include Skirts Framework by Skirts.
Include Microskirts by Skirts.
Include Miniskirt by Skirts.
Include Gown of Purity by Skirts.
Include Sequins Belt by Skirts.
Include Chainmail Skirt by Skirts.
Include Latex Skirt by Skirts.
Include Naughty Leather Skirt by Skirts.
Include Punishment Latex Hobble Skirt by Skirts.
Include Office Skirt by Skirts.
Include Flowing White Skirt by Skirts.

Include Belt Framework by Belts Suspenders.
Include Living Belt of Sturdiness by Belts Suspenders.
Include Suspenders Framework by Belts Suspenders.
Include Sissy Suspenders by Belts Suspenders.
Include Bridal Sissy Suspenders by Belts Suspenders.
Include White Suspenders by Belts Suspenders.
Include Black Suspenders by Belts Suspenders.
Include Red Suspenders by Belts Suspenders.
Include String Belt by Belts Suspenders.
Include Demon Belt by Belts Suspenders.

Include Stockings Framework by Stockings.
Include Mesh Stockings by Stockings.
Include Nylon Stockings by Stockings.
Include Latex Stockings by Stockings.
Include Cotton Stockings by Stockings.
Include Wool Stockings by Stockings.
Include Striped Stockings by Stockings.
Include Magical Stockings by Stockings.
Include Christmas Socks by Stockings.

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


Include Piercing Framework by Piercings Modules.
Include Nipple Piercings by Piercings Modules.
Include Tongue Piercing by Piercings Modules.
Include Earrings by Piercings Modules.
Include Clitoris Piercing by Piercings Modules.
Include Nose Piercing by Piercings Modules.
Include Lip Piercing by Piercings Modules.
Include Clitoris Lead by Piercings Modules.
Include Cow Nipple Piercing by Piercings Modules.
			
Include Equippables Framework by Equippables.
Include Whip of Domination by Equippables.
Include Magic Wand by Equippables.
Include Kitty Claws by Equippables.
Include Mittens by Equippables.
Include Swords by Equippables.

Include Pink Spraybottle by Equippables.
Include Mopping by Actions.
Include Spritzing by Actions.

Include Wasp Cloud by Equippables.
Include Vampiric Claws by Equippables.
Include Royal Scepter by Equippables.
Include Pocketbooks by Equippables.
Include Midnight Tanto by Equippables.
Include Puppy Mittens by Equippables.
Include Fairy Wand by Equippables.
Include Fake Nails by Equippables.
Include Totem of Purity by Equippables.
Include Pom Poms by Equippables.
Include Heart Wand by Equippables.

Include Bondage Framework by Bondage.
Include Wrist Bondage by Bondage.
Include Ankle Bondage by Bondage.
Include Gags by Bondage.
Include Chastity Cage by Bondage.
Include Pet Collar by Bondage.

Include Sex Toy Framework by Sex Toys.
Include Golden Phallus by Sex Toys.
Include Throbbing Tentacle by Sex Toys.
Include Vibrator by Sex Toys.
Include Jelly Dildo by Sex Toys.
Include Mamba by Sex Toys.
Include Johnson by Sex Toys.
Include Cat Tail Plug by Sex Toys.
Include Puppy Tail Plug by Sex Toys.
Include Demon Tail Plug by Sex Toys.
Include Prostate Massager Plug by Sex Toys.
Include Anal Beads by Sex Toys.
Include Ben Wa Balls by Sex Toys.

Include Condom of Kings by Clothing.

Include Tattoos Framework by Tattoos.

Include Buttslut Tattoo by Tattoos.
Include Freedom Tattoo by Tattoos.
Include Spank Me Tattoo by Tattoos.
Include Spank My Kitty Tattoo by Tattoos.
Include Just The Tip Tattoo by Tattoos.

Include Funcenter Tattoo by Tattoos.
Include Daddy's Cock Only Tattoo by Tattoos.
Include Anal Dragon Tattoo by Tattoos.
Include Anal Star Tattoo by Tattoos.
Include Butt Slut Asshole Tattoo by Tattoos.
Include Spit First Tattoo by Tattoos.
Include Asshole Cupid Tattoo by Tattoos.

Include No Panties Tattoo by Tattoos.
Include Topless Tattoo by Tattoos.
Include Hundred Percent Cunt Tattoo by Tattoos.
Include For Deposit Only Tattoo by Tattoos.
Include Born To Lose Tattoo by Tattoos.
Include Lucky You Tattoo by Tattoos.
Include Forever Tattoo by Tattoos.
Include Slut Tattoo by Tattoos.
Include Womb Diagram Tattoo by Tattoos.
Include Zip Tattoo by Tattoos.
Include Bird Nest Tattoo by Tattoos.
Include Demon Tattoo by Tattoos.
Include Let it Die Tattoo by Tattoos.
Include Daddy's Little Girl Tattoo by Tattoos.
Include Whore is my Mind Tattoo by Tattoos.
Include Pussy Deluxe Tattoo by Tattoos.
Include Worthless Cunt Tattoo by Tattoos.
Include Xavier's Cunt Tattoo by Tattoos.
Include Slut for Black Cock Tattoo by Tattoos.
Include Cumlust Tattoo by Tattoos.

Include Wet Dream Tattoo by Tattoos.
Include You Live You Learn Tattoo by Tattoos.
Include Overcome Tattoo by Tattoos.
Include Cupcake Tattoo by Tattoos.
Include Sissy Black Cock Whore Tattoo by Tattoos.
Include Atlas Tattoo by Tattoos.
Include True Love Tattoo by Tattoos.
Include Unfaithful Tattoo by Tattoos.
Include Bat Tattoo by Tattoos.
Include Target Tattoo by Tattoos.
Include Showtime Tattoo by Tattoos.

Include Heavyweight Tattoo by Tattoos.
Include Witchcraft Tattoo by Tattoos.
Include White Trash Tattoo by Tattoos.
Include Ribbon Bow Tattoo by Tattoos.

Include Semen Demon Tattoo by Tattoos.
Include Stupid Whore Tattoo by Tattoos.
Include Tear It Up Daddy Tattoo by Tattoos.
Include Anal Slut Tattoo by Tattoos.
Include Princess Tattoo by Tattoos.
Include Property Tattoo by Tattoos.
Include Bitch Tattoo by Tattoos.

Include Virgin Void Tattoo by Tattoos.
Include Black Hole Tattoo by Tattoos.
Include Cum Dumpster Lip Tattoo by Tattoos.
Include Nothing's Sacred Tattoo by Tattoos.
Include Fuckin Classy Tattoo by Tattoos.
Include No Regrets Tattoo by Tattoos.
Include Angel Tattoo by Tattoos.
Include Demongirl Tattoo by Tattoos.
Include Bed Wetter Tattoo by Tattoos.
Include Bred Bull Tattoo by Tattoos.
Include Ink Me Tattoo by Tattoos.
Include Abyssal Tattoo by Tattoos.
Include Nintendolls Brand Tattoo by Tattoos.
Include Bright Hair Tattoo by Tattoos.
Include Pentagram Tattoo by Tattoos.
Include Tally Tattoos by Tattoos.
Include Black Owned Tattoo by Tattoos.
Include Black Cock Only Tattoo by Tattoos.
Include Failed Potty Training Tattoo by Tattoos.
Include Weakness Tattoo by Tattoos.
Include Dolly Tattoo by Tattoos.
Include Thorny Tattoo by Tattoos.

Include Empty Mind Tattoo by Tattoos.
Include Cheating Whore Tattoo by Tattoos.
Include Fuck Me Tattoo by Tattoos.
Include Free Ride Tattoo by Tattoos.

Include Safety Pin Tattoo by Tattoos.
Include Cloth Revolution Tattoo by Tattoos.
Include Take It Easy Tattoo by Tattoos.
Include Flower Ballerina Tattoo by Tattoos.
Include Bird Kitty Tattoo by Tattoos.
Include Paw Print Tattoo by Tattoos.
Include Tribal Diaper Tattoo by Tattoos.
Include Unicorn Horn Finger Tattoo by Tattoos.
Include Cupcake Wrist Tattoo by Tattoos.
Include Lipstick Crystal Tattoo by Tattoos.
Include DrinkMe Tattoo by Tattoos.
Include Babygirl Tattoo by Tattoos.
Include Royal Hearts Tattoo by Tattoos.
Include Princess Castle Tattoo by Tattoos.
Include Kitty Cat Tattoo by Tattoos.
Include Birds Tattoo by Tattoos.
Include Ribbon Bow Neck Tattoo by Tattoos.
Include Teapot Tattoo by Tattoos.
Include Elephant Tattoo by Tattoos.
Include Diapered Dinosaur Tattoo by Tattoos.
Include Daddys Wild Child Tattoo by Tattoos.
Include Can't Change Self Tattoo by Tattoos.
Include Cum When Messing Tattoo by Tattoos.

Include Demon Belly Mark by Tattoos.
Include Demon Link Mark by Tattoos.

Include Whip Tattoo by Tattoos.

Include Inking by Actions.

Include Bags of Holding Framework by Bags of Holding.
Include Sacks of Holding by Bags of Holding.
Include Patterned Sacks of Holding by Bags of Holding.
Include Pink Sacks of Holding by Bags of Holding.
Include Slutty Clutches of Holding by Bags of Holding.
Include Clutches of Holding by Bags of Holding.
Include Ultra Slutty Bags of Holding by Bags of Holding.
Include Handbags of Holding by Bags of Holding.

[DQ bags begin here]
Include Satchels of Holding by Bags of Holding.
Include Backpacks of Holding by Bags of Holding.
Include Childish Backpacks of Holding by Bags of Holding.
Include Diaper Bags of Holding by Bags of Holding.
Include Baby Diaper Bags of Holding by Bags of Holding.

Include Wearing by Actions.
Include Taking Off by Actions.
Include Displacing Replacing by Actions.
Include TopDisplacing TopReplacing by Actions.
Include Zipping by Actions.

Volume 8 - Various Definitions

Include Relations by Miscellaneous Backend.
Include Immobility by Player.
Include Manual Dexterity by Player.
Include Dungeon Shop by Rooms.
Include Nearby Simulated Danger by Miscellaneous Backend.

Volume 9 - Actions

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

Volume 10 - Monsters

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
Include Dominating Monsters by Monster Framework.

Include Royal Guard by Monster.
Include Wench by Monster.
Include Sex Doll by Monster.
Include Mannequin by Monster.
Include Demoness by Monster.
Include Gladiator by Monster.
Include Minotaur by Monster.
Include Shopkeeper by Monster.
Include Vine Boss by Monster.
Include Fairy by Monster.
Include Witch by Monster.
Include Giant Wasp by Monster.
Include Aeromancer by Monster.
Include Tentacle Monster by Monster.
Include Patron by Monster.
Include Matron by Monster.

Include Robots Framework by Monster Framework.
Include RoboBellboy by Monster.
Include RoboButler by Monster.
Include RoboChef by Monster.
Include RoboMatron by Monster.

Include Wrestler by Monster.
Include Mechanic by Monster.
Include Demon Lord Xavier by Monster.
Include Slutty Sisters by Monster.
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
Include Gargoyle by Monster.
Include Boogeymonster by Monster.
Include Golem by Monster.
Include Pimp by Monster.

Include Staff Framework by Monster Framework.
Include Receptionist by Monster.
Include Headmistress by Monster.
Include Nurse by Monster.
Include Teachers Sapphire by Monster.

Include Student Framework by Monster Framework.
Include Students Amicable by Monster.
Include Students Tryhard by Monster.
Include Students Innocent by Monster.
Include Students Nasty by Monster.
Include Students Ditzy by Monster.

Include Woman Barbara by Monster.

Include Talking by Actions.

Volume 11 - Other

Include Forbidden Actions by Actions.

Include Actions with Missing Nouns by Actions.

Include Tutorial by Miscellaneous Frontend.

Volume 12 - Version

Include Public Version Stuff by Miscellaneous Backend.

