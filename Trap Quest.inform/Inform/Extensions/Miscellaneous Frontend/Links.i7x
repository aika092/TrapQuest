Links by Miscellaneous Frontend begins here.

Part 1 - Basic Links

[!<SayTQLink>+

REQUIRES COMMENTING

+!]
To say TQlink:
	if inline hyperlinks >= 1, say "[link]".

[!<SayTQlinkOfThing>+

REQUIRES COMMENTING

+!]
To say TQlink of (T - a thing):
	if inline hyperlinks >= 1 and the text-shortcut of T is not "", say "[link]".

[!<SayTQxlinkOfThing>+

REQUIRES COMMENTING

+!]
To say TQxlink of (T - a thing):
	if inline hyperlinks >= 1 and the text-shortcut of T is not "", say "[as]x [text-shortcut of T][end link]";
	if disambiguation-busy is true and inventory-busy is 0, say "[bold type][if T is worn] (worn)[otherwise if T is wearable] (unworn)[end if][roman type]".


[*<SayTQdlink>+

REQUIRES COMMENTING

+!]
To say TQdlink:
	if inline hyperlinks >= 1, say "[end link]".

[!<SayTQdlinkOfThing>+

REQUIRES COMMENTING

+!]
To say TQdlink of (T - a thing):
	if inline hyperlinks >= 1 and the text-shortcut of T is not "", say "[end link]".

[!<SayYesNoLink>+

REQUIRES COMMENTING

+!]
To say yesnolink:[Causes problems with the built in compiler.]
	[say "".]
	if inline hyperlinks >= 1, say "([link]yes[end link] / [link]no[end link])".

Part 2 - VerbDescs

[!<SayVerbDescOfThing>+

REQUIRES COMMENTING

+!]
To say verb-desc of (T - a thing):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[unique-verb-desc of T][if (T is ingredient or T is mass collectible) and T is carried and there is a ready for alchemy crafting table in the location of the player] [link][bracket]craft[close bracket][as]put [text-shortcut of T] in bowl[end link][end if][if the player is in Hotel16 and T is portable and T is not person] [link][bracket]chute[close bracket][as]put [text-shortcut of T] in chute[end link][end if][if T is portable and (T is not worn or T is not cursed clothing) and the number of interested intelligent monsters in the location of the player is 1 and the bartering value of T for a random interested intelligent monster in the location of the player > 0] [link][bracket]offer[close bracket][as]offer [text-shortcut of T] to [text-shortcut of random interested intelligent monster in the location of the player][end link][end if][if T is portable and T is held and there is an open pink wardrobe in the location of the player and (T is not worn or T is not cursed)] [link][bracket]wardrobe[close bracket][as]put [text-shortcut of T] in pink wardrobe[end link][end if]".

[!<SayUniqueVerbDescOfThing>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a thing):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is portable and T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is portable] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfContainer>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a container):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is closed] [link][bracket]op[close bracket][as]open [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfContainer>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - pink wardrobe):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is closed] [link][bracket]op[close bracket][as]open [text-shortcut of T][end link][otherwise if the number of things in T > 1] [link][bracket]take all[close bracket][as]take all[end link][end if]".

[!<SayUniqueVerbDescOfPedestal>+

REQUIRES COMMENTING

+!]	
To say unique-verb-desc of (T - a pedestal):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is erect] [link][bracket]suck[close bracket][as]drink [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfChristmasGift>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a christmas gift):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]op[close bracket][as]open [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfMinibar>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a minibar):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is closed] [link][bracket]op[close bracket][as]open [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfClothing>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a clothing):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is held and T is not piercing and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if T is worn and T is not piercing and (T is not cursed or newbie tips is 1)] [link][bracket]r[close bracket][as]rm [text-shortcut of T][end link][otherwise if T is not worn] [link][bracket]we[close bracket][as]we [text-shortcut of T][end link][end if][displacelinks of T][if the player is in Dungeon28 or the player is in Tutorial05] [link][bracket]altar[close bracket][as]put [text-shortcut of T] on altar[end link][end if][if the player is in Woods30 and T is not worn and T is dirty and the giant-statue is active] [link][bracket]statue[close bracket][as]place [text-shortcut of T] in front of statue[end link][end if][if the player is in Dungeon33 and T is not worn and T is dirty and the summoning-circle is active] [link][bracket]circle[close bracket][as]throw [text-shortcut of T] in circle[end link][end if][if the player is in Hotel19 and T is worn and the charge of a random knife <= 0] [link][bracket]cut[close bracket][as]cut [text-shortcut of T] with knife[end link][end if][if (the player is in Dungeon35 or the player is in Woods05 or the player is in Hotel19 or the player is in Mansion25 or the player is in School21) and T is carried and T is dirty] [link][bracket]wash[close bracket][as]wash [text-shortcut of T] in water[end link][end if][wipelinks of T][if there is glue in the location of the player and the stickiness of the player > 0] [link][bracket]scrub glue[close bracket][as]rub glue on [text-shortcut of T][end link][end if][if T is diaper and the urine-soak of T + the mess of T > 0 and there is an alive friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if]".

[!<SayDisplaceLinksOfClothing>+

REQUIRES COMMENTING

+!]
To say displacelinks of (T - a clothing):
	say "[if T is skirted and T is worn and T is displacable and T is crotch-in-place] [link][bracket]raise skirt[close bracket][as]displace [text-shortcut of T][end link][otherwise if T is worn and T is displacable and T is crotch-in-place] [link][bracket]displace[close bracket][as]displace [text-shortcut of T][end link][otherwise if T is skirted and T is worn and T is displacable] [link][bracket]fix skirt[close bracket][as]replace [text-shortcut of T][end link][otherwise if T is worn and T is displacable] [link][bracket]replace[close bracket][as]replace [text-shortcut of T][end link][end if][if diaper quest is 0 and T is not not-top-displacable and T is worn top-placed nipple covering clothing] [link][bracket]expose chest[close bracket][as]pull open [text-shortcut of T][end link][otherwise if diaper quest is 0 and T is worn top-displaced clothing] [link][bracket]cover chest[close bracket][as]fix [text-shortcut of T][end link][end if][if T is worn and T is zippable and T is crotch-zipped] [link][bracket]unzip[close bracket][as]unzip [text-shortcut of T][end link][otherwise if T is worn and T is zippable] [link][bracket]zip[close bracket][as]zip [text-shortcut of T][end link][end if]".

To say wipelinks of (T - a clothing):
	if T is not worn and T is appropriate for cleaning and the semen-soak of T + the urine-soak of T + the milk-soak of T < the soak-limit of T:
		unless the humiliation of the player > 28000 and the semen addiction of the player > 11 and the player is not craving and the player is not thirsty and the semen addiction of the player > the semen taste addiction of the player, say "[if the semen coating of face > 0] [link][bracket]wipe face[close bracket][as]wipe face with [text-shortcut of T][end link][otherwise if the semen coating of hair > 1] [link][bracket]wipe hair[close bracket][as]wipe hair with [text-shortcut of T][end link][otherwise if the semen coating of breasts > 0] [link][bracket]wipe chest[close bracket][as]wipe breasts with [text-shortcut of T][end link][otherwise if the semen coating of belly > 0] [link][bracket]wipe belly[close bracket][as]wipe belly with [text-shortcut of T][end link][otherwise if the semen coating of thighs > 0] [link][bracket]wipe thighs[close bracket][as]wipe thighs with [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfAccessory>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - an accessory):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is held and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [WornUnworn of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if T is worn and T is not cursed] [link][bracket]r[close bracket][as]rm [text-shortcut of T][end link][otherwise if T is not worn] [link][bracket]we[close bracket][as]we [text-shortcut of T][end link][end if][if the player is in Woods20] [link][bracket]altar[close bracket][as]put [WornUnworn of T] on altar[end link][end if][if the player is in Woods27] [link][bracket]wish[close bracket][as]put [WornUnworn of T] in well[end link][end if][if there is an open minibar in the location of the player and T is plentiful] [link][bracket]restock minibar[close bracket][as]restock minibar with [WornUnworn of T][end link][end if]".

[!<SayTQxlinkOfAccessory>+

Fixing an issue with disambiguity detailed below

+!]
To say TQxlink of (T - an accessory):
	if inline hyperlinks >= 1 and the text-shortcut of T is not "", say "[as]x [WornUnworn of T][end link]";
	if disambiguation-busy is true and inventory-busy is 0, say "[bold type][if T is worn] (worn)[otherwise] (unworn)[end if][roman type]".

[!<SayWornUnwornOfAccessory>+

If there are both some worn and some unworn of this item, we want to specify that we are manipulating an unworn one so that we avoid ambiguity.

+!]
To say WornUnworn of (T - an accessory):
	if T is plentiful:
		let some-worn be 0;
		let some-unworn be 0;
		repeat with A running through held accessories:
			if the text-shortcut of T is the text-shortcut of A:
				if A is worn, increase some-worn by 1;
				otherwise increase some-unworn by 1;
		if some-worn > 0 and some-unworn > 0, say "unworn ";
	say text-shortcut of T.

[!<SayUniqueVerbDescOfVessel>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a vessel):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if the doses of T > 0] [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][end if][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if there is a dispenser in the location of the player] [link][bracket]dip[close bracket][as]dip [text-shortcut of T][end link][end if][if the doses of T > 0 and there is a carried squirt dildo and T is not squirt dildo] [link][bracket]decant[close bracket][as]decant [text-shortcut of T] into squirt dildo[end link][end if][if the doses of T > 0 and the fill-type of T >= 20 and there is a friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if][if the doses of T > 0 and ((the class of the player is bunny and bunny waitress ears is worn) or serving table is worn) and there is a friendly human intelligent monster in the location of the player] [link][bracket]serve[close bracket][as]offer [text-shortcut of T] to [text-shortcut of random friendly human intelligent monster in the location of the player][end link][end if]".

[!<SayUniqueVerbDescOfSquirtDildo>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a squirt dildo):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if the doses of T > 0] [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][end if][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if there is a dispenser in the location of the player] [link][bracket]dip[close bracket][as]dip [text-shortcut of T][end link][end if][if T is penetrating an orifice and the doses of T > 0] [link][bracket]squeeze[close bracket][as]squeeze [text-shortcut of T][end link][end if][if the doses of T > 0 and the fill-type of T >= 20 and there is a friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if]".

[!<SayUniqueVerbDescOfAlchemyProduct>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - an alchemy product):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfCan>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a can):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]dri[close bracket][as]dr [fill-colour of T] can[end link][if T is held] [link][bracket]dr[close bracket][as]drop [fill-colour of T] can[end link][otherwise] [link][bracket]ta[close bracket][as]ta [fill-colour of T] can[end link][end if]".

[!<SayUniqueVerbDescOfMonster>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a monster):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "" and hyperlink extras is 1:
		if T is friendly and T is intelligent:
			[if the player is able to speak, ]
			say "[run paragraph on] [link][bracket]greet[close bracket][as]greet [text-shortcut of T][end link][if T is interested] [link][bracket]ask[close bracket][as]ask [text-shortcut of T][end link][end if][if T is interested and the player is thirsty] [link][bracket]request drink[close bracket][as]ask [text-shortcut of T] for drink[end link][end if][if T is interested and the player is hungry and the number of held food is 0] [link][bracket]request food[close bracket][as]ask [text-shortcut of T] for food[end link][end if]";
		otherwise if the player is upright:
			say " [link][bracket]sl[close bracket][as]sl [text-shortcut of T][end link] [link][bracket]kn[close bracket][as]kn [text-shortcut of T][end link] [link][bracket]ki[close bracket][as]ki [text-shortcut of T][end link]";
		otherwise if T is uninterested:
			say " [link][bracket]poke[close bracket][as]poke [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfFairy>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a fairy):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "" and hyperlink extras is 1:
		[if the player is able to speak, ]
		say "[run paragraph on] [link][bracket]greet[close bracket][as]greet [text-shortcut of T][end link][if T is interested] [link][bracket]ask[close bracket][as]ask [text-shortcut of T][end link][end if][if the player is thirsty and T is interested] [link][bracket]request drink[close bracket][as]ask [text-shortcut of T] for drink[end link][end if][if T is interested and the player is hungry] [link][bracket]request food[close bracket][as]ask [text-shortcut of T] for food[end link][end if]";
		if the player is upright, say " [link][bracket]sl[close bracket][as]sl [text-shortcut of T][end link] [link][bracket]kn[close bracket][as]kn [text-shortcut of T][end link] [link][bracket]ki[close bracket][as]ki [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a vine boss):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "" and hyperlink extras is 1:
		if the player is upright, say " [link][bracket]sl[close bracket][as]sl [text-shortcut of T][end link][unless there is a vine grabbing the player] [link][bracket]kn[close bracket][as]kn [text-shortcut of T][end link] [link][bracket]ki[close bracket][as]ki [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfSlimegirl>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a slimegirl):
	if inline hyperlinks >= 2, say " [link][bracket]greet[close bracket][as]greet [text-shortcut of T][end link] [link][bracket]ask[close bracket][as]ask [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfDildoTrap>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a dildo trap):
	if inline hyperlinks >= 2 and T is penetrating a fuckhole, say " [link][bracket]jump[close bracket][as]jump[end link][if doll-stuck-num > 0] [link][bracket]submit[close bracket][as]submit[end link][end if]".

[!<SayUniqueVerbDescOfBabyBouncer>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a baby bouncer):
	if inline hyperlinks >= 2, say "[if T is grabbing the player] [link][bracket]submit[close bracket][as]submit[end link] [link][bracket]resist[close bracket][as]resist[end link] [link][bracket]jump[close bracket][as]jump[end link][end if]".

[!<SayUniqueVerbDescOfPaintedHorse>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a painted horse):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole] [link][bracket]push[close bracket][as]push horse button[end link][end if]".

[!<SayUniqueVerbDescOfWoodenHorse>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a wooden horse):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole] [link][bracket]pull[close bracket][as]pull reins[end link][end if]".

[!<SayUniqueVerbDescOfRockingHorse>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a rocking horse):
	if inline hyperlinks >= 2, say " [if T is grabbing the player][link][bracket]rock[close bracket][as]rock[end link][otherwise][link][bracket]rest[close bracket][as]rest on [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfAssHook>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - an ass hook):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole] [link][bracket]pull[close bracket][as]pull hook[end link][end if]".

[!<SayUniqueVerbDescOfVine>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a vine):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole or T is grabbing the player] [link][bracket]pull[close bracket][as]pull vine[end link][end if]".

[!<SayUniqueVerbDescOfthrone>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - throne):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole and the throne is untriggered] [link][bracket]pull[close bracket][as]pull binds[end link][otherwise if T is penetrating a fuckhole] [link][bracket]stand[close bracket][as]stand[end link][otherwise] [link][bracket]sit[close bracket][as]sit on throne[end link][end if]".

[!<SayUniqueVerbDescOfFurniture>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - furniture):
	if inline hyperlinks >= 2, say " [link][bracket]rest[close bracket][as]rest on [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfHotelChairs>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - hotel chairs):
	if inline hyperlinks >= 2, say " [link][bracket]sit[close bracket][as]sit on [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfLectureChairs>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - lecture chair):
	if inline hyperlinks >= 2, say " [link][bracket]sit[close bracket][as]sit on [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfModificationMachine>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - modification machine):
	if inline hyperlinks >= 2, say " [link][bracket]sit[close bracket][as]sit on [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfPodium>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - podium):
	if inline hyperlinks >= 2, say " [link][bracket]get on[close bracket][as]get on stage[end link]".

[!<SayUniqueVerbDescOfLubricant>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - lubricant):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [if the player is male][link][bracket]use[close bracket][as]use lube[end link][otherwise][link][bracket]pussy[close bracket][as]use lube on vagina[end link] [link][bracket]ass[close bracket][as]use lube on butthole[end link][end if]".

[!<SayUniqueVerbDescOfSalve>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - salve):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]breasts[close bracket][as]rub [text-shortcut of T] on breasts[end link] [link][bracket]belly[close bracket][as]rub [text-shortcut of T] on belly[end link] [link][bracket]butt[close bracket][as]rub [text-shortcut of T] on hips[end link]".

[!<SayUniqueVerbDescOfSalveOfConcealment>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - salve of concealment):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [if the player is male][link][bracket]use[close bracket][as]rub [text-shortcut of T] on butthole[end link][otherwise][link][bracket]pussy[close bracket][as]rub [text-shortcut of T] on vagina[end link] [link][bracket]ass[close bracket][as]rub [text-shortcut of T] on butthole[end link][end if]".

[!<SayUniqueVerbDescOfPowder>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - powder):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfPinkPill>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - pink pill):
	if inline hyperlinks >= 2, say " [link][bracket]eat[close bracket][as]eat pink pill[end link]".

[!<SayUniqueVerbDescOfFeedingBowls>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - feeding bowls):
	if inline hyperlinks >= 2, say " [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link]".

To say unique-verb-desc of (T - food machine):
	if inline hyperlinks >= 2, say " [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfDungeonScenery06>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - DungeonScenery06):
	if inline hyperlinks >= 2, say " [link][bracket]pull[close bracket][as]pull lever[end link]".

[!<SayUniqueVerbDescOfWoodsScenery03>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - WoodsScenery03):
	if inline hyperlinks >= 2, say " [link][bracket]climb[close bracket][as]climb ladder[end link]".

[!<SayUniqueVerbDescOfCrossTrainer>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - cross trainer):
	if inline hyperlinks >= 2, say " [link][bracket]use[close bracket][as]use cross[end link]".

[!<SayUniqueVerbDescOfCandyMachine>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - candy machine):
	if inline hyperlinks >= 2, say " [link][bracket]use[close bracket][as]push candy button[end link]".
	
[!<SayUniqueVerbDescOfMagicLamp>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - magic lamp):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if the wishes of T > 0] [link][bracket]rub[close bracket][as]rub lamp[end link][end if]".

[!<SayUniqueVerbDescOfStopButton>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - stop button):
	if inline hyperlinks >= 2, say " [link][bracket]push[close bracket][as]push stop button[end link]".

[!<SayUniqueVerbDescOfMakeUpKit>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a make up kit):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]use[close bracket][as]use make up[end link]".

[!<SayUniqueVerbDescOfGloryhole>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - gloryhole):
	if inline hyperlinks >= 2 and the player is not immobile, say " [link][bracket][if the player is prone]suck[otherwise]use[end if][close bracket][as]use glory[end link]".

[!<SayUniqueVerbDescOfPocketbook>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a pocketbook):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]browse[close bracket][as]browse [text-shortcut of T][end link]".

[!<SayUniqueVerbDescOfElectricFan>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - an electric fan):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]use[close bracket][as]use fan[end link]".	

[!<SayUniqueVerbDescOfSqueezyBottle>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a squeezy bottle):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]dri[close bracket][as]drink squeezy[end link]".	

[!<SayUniqueVerbDescOfFood>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a food):
	if inline hyperlinks >= 2, say "[if T is held and T is not candy] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link]".		

[!<SayUniqueVerbDescOfSnack>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a snack):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link][if there is an interested friendly robochef in the location of the player] [link][bracket]chef[close bracket][as]offer [text-shortcut of T] to chef[end link][end if]".		

[!<SayUniqueVerbDescOfRecipe>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a recipe):
	if inline hyperlinks >= 2, say "[if T is not memorised] [link][bracket]mem[close bracket][as]learn [text-shortcut of T][end link][end if]".	

[!<SayUniqueVerbDescOfSexToy>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - sex toy):
	if inline hyperlinks >= 2, say "[if T is held and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if the player is male and T is not worn] [link][bracket]plug[close bracket][as]plug butthole with [text-shortcut of T][end link][otherwise if T is not worn] [link][bracket]pussy[close bracket][as]plug vagina with [text-shortcut of T][end link] [link][bracket]ass[close bracket][as]plug butthole with [text-shortcut of T][end link][end if][if the player is in Dungeon28] [link][bracket]altar[close bracket][as]put [text-shortcut of T] on altar[end link][end if][if the player is in Hotel19 and T is worn] [link][bracket]cut[close bracket][as]cut [text-shortcut of T] with knife[end link][end if]".

[!<SayUniqueVerbDescOfKnife>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a knife):
	if inline hyperlinks >= 2, say "[if diaper quest is 0 and the largeness of hair > favourite hair length] [link][bracket]cut hair[close bracket][as]cut hair[end link][end if]".

[!<SayUniqueVerbDescOfSummoningCircle>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a summoning-circle):
	if inline hyperlinks >= 2, say "[if T is active] [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfPullstringCollar>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - a pullstring collar):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is held and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if T is worn and T is not cursed] [link][bracket]r[close bracket][as]rm [text-shortcut of T][end link][end if][if T is worn] [link][bracket]pull[close bracket][as]pull [text-shortcut of T][end link][end if]".

[!<SayUniqueVerbDescOfWoodsScenery02>+

REQUIRES COMMENTING

+!]
To say unique-verb-desc of (T - WoodsScenery02):
	if inline hyperlinks >= 2, say " [link][bracket]touch head[close bracket][as]touch statue's head[end link] [link][bracket]touch hand[close bracket][as]touch statue's hand[end link] [link][bracket]touch foot[close bracket][as]touch statue's foot[end link]".

Part 3 - Smart Links


[!<uniqueOptionsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The unique options rules is a rulebook.

[!<uniqueOptionsUsed:Integer>*

REQUIRES COMMENTING

*!]
unique options used is a number that varies.

[!<hyperlinkExtras:Integer>*

REQUIRES COMMENTING

*!]
hyperlink extras is a number that varies.

[!<focusedThing:Object>*

REQUIRES COMMENTING

*!]
focused-thing is an object that varies.

[!<ComputeOptions>+

REQUIRES COMMENTING

+!]
To compute options:
	now hyperlink extras is 1;
	reset entire catalogue;
	if inline hyperlinks >= 2:
		say "[if there is a live thing penetrating a body part][list of live things penetrating a body part] [otherwise if there is a trap penetrating a body part][random trap penetrating a body part] [otherwise if there is a thing grabbing the player][random thing grabbing the player] [otherwise if there is a monster in the location of the player][list of monsters in the location of the player] [end if][if focused-thing is a thing][focused-thing] [end if]";
		if focused-thing is a thing, now focused-thing is catalogued;
		if the noun is a thing and the noun is not nothing and the noun is not penetrating a body part and the noun is not grabbing the player:
			say "[if the noun is yourself][link]yourself[as]x self[end link][otherwise if the noun is pink wardrobe][otherwise if the noun is open container][contentslist of the noun][otherwise if the noun is a direction][otherwise if the noun is monster][otherwise if the noun is shortcutless][otherwise if the noun is not visible][otherwise][noun][end if]";
			now the noun is catalogued;
		now Neighbour Finder is the location of the player;
		say "[line break]";
		if the player is virtual or the player is in Tutorial04, say "[if the player is prone and the player is not immobile][link]stand[end link] [link]rest[end link] [end if][if the player is upright][link]kneel[end link] [end if][if the player is in School34][link]long wait[end link][otherwise][link]wait[end link][end if] ";
		unless the player is immobile, say "[if west is N-viable][link]west[end link] [end if][if north is N-viable][link]north[end link] [end if][if south is N-viable][link]south[end link] [end if][if east is N-viable][link]east[end link] [end if][if the room up of the location is a room][link]up[end link] [end if][if the room down of the location is a room][link]down[end link] [end if]";
		if the player is prone and there is a worn pink spraybottle and the milk-puddle of the location of the player + the semen-puddle of the location of the player + the urine-puddle of the location of the player >= 1, say "[link]clean mess[end link] ";
		if the player is in Dungeon35 or the player is in Woods05 or the player is in Mansion25 or the player is in School21:
			if there is worn dirty clothing or the semen coating of hair > 0 or the semen coating of face > 0 or the semen coating of breasts > 0 or the semen coating of belly > 0 or the semen coating of thighs > 0 or (diaper quest is 1 and the make-up of face > 0) or the player is in School21, say "[link]wash in water[end link] ";
		say "[if the total squirtable fill of belly > 0 and the player is able to expel][link]expel[end link] [end if][if the player is bursting][link]pee[end link] [end if][if the player is horny and the number of worn chastity cages is 0 and (the player is female or the size of penis > 0)][link]wank[end link] [end if][if (the player is monster fucked or there is a live thing grabbing the player) and the player is broken][link]submit[end link] [otherwise if the player is monster fucked or there is a live thing grabbing the player][link]submit[end link] [link]resist[end link] [end if][link]look[end link]";
		if inline hyperlinks >= 3 and the player is not immobile:
			say "[line break]";
			if diaper quest is 0:
				if there is an interested unfriendly monster in the location of the player and the player is prone:
					now auto is 1;
					repeat with P running through actually presentable body parts:
						say "[link][if the delicateness of the player < 10]suggest[otherwise]offer[end if] [P][end link] ";
						now P is catalogued;
					now auto is 0;
					now summoning is 1;
					let C be a random worn top level ass protection clothing;
					if C is clothing and C is not catalogued:
						if C is displacable or C is actually removable:
							say "[C] ";
							now C is catalogued;
					otherwise if there is a wearthing penetrating asshole:
						now C is a random wearthing penetrating asshole;
						if C is actually removable:
							say "[C] ";
							now C is catalogued;
					if the player is female:
						now C is a random worn top level protection clothing;
						if C is clothing and C is not catalogued:
							if C is displacable or C is actually removable:
								say "[C] ";
								now C is catalogued;
						otherwise if there is a wearthing penetrating vagina:
							now C is a random wearthing penetrating vagina;
							if C is actually removable:
								say "[C] ";
								now C is catalogued;
					now summoning is 0;
				otherwise if there is a monster in the location of the player and the player is prone:
					now auto is 1;
					repeat with P running through actually presentable body parts:
						say "[link]present [P][end link] ";
						now P is catalogued;
					now auto is 0;
			[The entire segment of code above is to help the player expose and present their body parts to NPCs]
			unless the player is in danger:
				if the body soreness of the player > 0:
					repeat with F running through held candy:
						if F is toffee or F is fudge or F is chocolate bar:
							if F is not catalogued, say "[F] ";
							now F is catalogued;
				say "[if the body soreness of the player > 0 and there is a held bandage and the player is not in danger][link]use bandage[end link] [end if]";
				unless the humiliation of the player > 28000 and the semen addiction of the player > 11 and the player is not craving and the player is not thirsty and the semen addiction of the player > the semen taste addiction of the player, say "[if the semen coating of face > 0][link]wipe face[end link] [end if][if the semen coating of hair > 1][link]wipe hair[end link] [end if][if the semen coating of breasts > 0][link]wipe tits[end link] [end if][if the semen coating of belly > 0][link]wipe belly[end link] [end if][if the semen coating of thighs > 0][link]wipe thighs[end link] [end if]";
				if (the player is in Dungeon35 or the player is in Woods05):
					repeat with F running through carried dirty clothing:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				if the player is hungry:
					repeat with F running through held food:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				if the player is thirsty:
					repeat with F running through held bottles:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				otherwise if there is a dispenser in the location of the player and the player is upright:
					repeat with F running through held vessels:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				if there is worn crotch-displaced clothing:
					repeat with F running through worn crotch-displaced clothing:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				if there is worn top-displaced clothing:
					repeat with F running through worn top-displaced clothing:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				if there is a ready for alchemy crafting table in the location of the player:
					say "[link]list craftables[end link] ";
				if the player is in the location of the dungeon altar and the charge of the dungeon altar < 100:
					say "[link]list blessables[end link] [link]lie on altar[end link] ";
				if there is a friendly witch in the location of the player:
					repeat with F running through held diapers:
						if the urine-soak of F + the mess of F > 0:
							if F is not catalogued, say "[F] ";
							now F is catalogued;
					repeat with F running through held vessels:
						if F is non-empty and the fill-type of F >= 20:
							if F is not catalogued, say "[F] ";
							now F is catalogued;
				if the player is in Hotel16:
					say "[link]list clothing[end link] [link]list loot[end link] ";
			if the player is glue stuck and the player is not immobile, say "[link]scrub glue[end link] ";
			if there is held lubricant and (the soreness of asshole > 3 and asshole is not actually occupied) or (the soreness of vagina > 3 and vagina is not actually occupied):
				unless there is a held catalogued lubricant, say "[printed name of a random held lubricant] ";
				now a random held lubricant is catalogued;
			if (the player is in the location of the woods altar and (the altar-uses of witch > 0 or the curse-quest of witch >= 3 or witch is not in the location of the player or witch is unfriendly)) or the player is in the location of WoodsScenery04:
				repeat with F running through held plentiful accessories:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			if there is an interested mechanic in the location of the player:
				if mystical amulet is held:
					let G be mystical amulet;
					say "[G] ";
					now G is catalogued;
	now focused-thing is nothing;
	now hyperlink extras is 0.

[!<SayContentsListOfContainer>+

REQUIRES COMMENTING

+!]
To say contentslist of (C - a container):
	if there is a thing in C, say "[list of things in the noun]".

[!<ObjectIsShortcutless>+

REQUIRES COMMENTING

+!]
Definition: an object (called T) is shortcutless:
	decide yes.

[!<ThingIsShortcutless>+

REQUIRES COMMENTING

+!]
Definition: a thing (called T) is shortcutless:
	if the text-shortcut of T is "", decide yes;
	decide no.


[!<ThePullLeverUniqueOptionRule>+

REQUIRES COMMENTING

+!]
This is the pull lever unique option rule:
	if the player is in Dungeon06:
		say "[link]pull lever[end link] ";
		increase unique options used by 1.
The pull lever unique option rule is listed in the unique options rules.

CraftListing is an action applying to nothing.
Carry out CraftListing:
	repeat with F running through carried ingredient things:
		say "[F] ";
	if there is a held sanity token, say "[random held sanity token] ([number of held sanity tokens]) "; [Even if there are 10 held we only want to write it once]
	if there is a held fabric token, say "[random held fabric token] ([number of held fabric tokens]) "; [Even if there are 10 held we only want to write it once]
	if there is a held defiance token, say "[random held defiance token] ([number of held defiance tokens]) ". [Even if there are 10 held we only want to write it once]
Understand "list craftables" as CraftListing.

AltarListing is an action applying to nothing.
Carry out AltarListing:
	say "[bold type]Worn: [roman type]";
	repeat with F running through worn unblessed blessable clothing:
		say "[F] ";
	say "[line break][bold type]Not Worn: [roman type]";
	repeat with F running through carried sure unblessed blessable clothing:
		say "[F] ";
	repeat with F running through carried unsure blessable clothing:
		say "[F] ";
	say "[line break][if there are worn tattoos]You can also [bold type]place[roman type] a tattoo on the altar.[end if]".
Understand "list blessables" as AltarListing.


Links ends here.

