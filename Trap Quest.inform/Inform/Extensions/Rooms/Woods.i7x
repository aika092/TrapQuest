Woods by Rooms begins here.

[!<JungleRoom>@

REQUIRES COMMENTING

@inherits <Room>

@!]
A jungle room is a kind of room. A jungle room has a labyrinth shape called shape. The shape of a jungle room is usually L2/0-0-1-1-1-1. The grid position of a jungle room is usually <0,0,0>. A jungle room is usually no-roof.

Woods01 is a pinned unspawnable untrappable jungle room. Woods01 is above Stairwell01. The printed name of Woods01 is "Dungeon Entrance". "You are in a clearing in [if the bimbo of the player > 8]a scary looking[otherwise]some[end if] woods. An open trap door reveals a stairwell downwards back into the dungeons.". Stairwell01 is below Woods01. The shape of Woods01 is L2/0-0-1-1-1-1.

Woods02 is a dodgy jungle room. The printed name of Woods02 is "Winding Pathway". "You are on a winding concrete pathway through the woods.". The shape of Woods02 is L2/0-0-1-0-1-0.

Woods03 is an important jungle room. The printed name of Woods03 is "Dead End". "Thick foliage surrounds all directions except back the way you came.". The shape of Woods03 is L2/0-0-1-0-0-0.

Woods04 is a dodgy jungle room. The printed name of Woods04 is "Twisting Pathway". "You are on a twisting dirt pathway through the woods.". The shape of Woods04 is L2/0-0-1-1-0-0.

Woods05 is a mandatory important water-bodied jungle room. The printed name of Woods05 is "Waterfall Clearing". "A beautiful clearing with a cliff above a fast-moving river. A steady stream of water is falling down from the top of the cliff, creating a steady crashing sound as it splashes down on the rocks.". The shape of Woods05 is L2/0-0-0-1-0-0. The first forbidden direction of Woods05 is west.

Woods06 is a dodgy jungle room. The printed name of Woods06 is "Grassy Clearing". "This clearing is mostly covered in short grass.". The shape of Woods06 is L2/0-0-1-1-1-1.

Woods07 is a jungle room. The printed name of Woods07 is "Empty Clearing". "This clearing in the woods is mostly bare.". The shape of Woods07 is L2/0-0-1-1-1-1.

Woods08 is a dodgy jungle room. The printed name of Woods08 is "Muddy Clearing". "This clearing is mostly covered in dry mud and dirt.". The shape of Woods08 is L2/0-0-1-1-1-1.

Woods09 is a dodgy jungle room. The printed name of Woods09 is "Stone Clearing". "This clearing seems to be man-made, as it is paved in stone.". The shape of Woods09 is L2/0-0-1-1-1-1.

Woods10 is a dodgy jungle room. The printed name of Woods10 is "Statue Clearing". "Right in the middle of this clearing is a [if diaper quest is 1]fountain of a peeing woman[otherwise]statue of a man and woman having sex[end if][if diaper quest is 0 and vine boss is off-stage]. The grass and trees here seems especially lush and vibrant.[otherwise]. Thick green vines are draped over the man's shoulders, giving him the appearance of having a cape[end if].". The shape of Woods10 is L2/0-0-1-1-1-1.

Woods11 is a dodgy jungle room. The printed name of Woods11 is "Creepy Pathway". "The trees either side of this pathway look like they have faces and arms. It's almost as if they're alive...". The shape of Woods11 is L2/0-0-0-1-1-0.

Woods12 is a dodgy jungle room. The printed name of Woods12 is "Deep Woods". "The trees are particularly large and close together in this part of the woods.". The shape of Woods12 is L2/0-0-1-1-1-1.

Woods13 is a dodgy jungle room. The printed name of Woods13 is "Deep Woods". "The trees are particularly large and close together in this part of the woods.". The shape of Woods13 is L2/0-0-1-1-1-1.

Woods14 is a dodgy jungle room. The printed name of Woods14 is "Deep Woods". "The trees are particularly large and close together in this part of the woods.". The shape of Woods14 is L2/0-0-1-1-1-1.

Woods15 is a dodgy jungle room. The printed name of Woods15 is "Deep Woods". "The trees are particularly large and close together in this part of the woods.". The shape of Woods15 is L2/0-0-1-1-1-1.

Woods16 is a mandatory jungle room. The printed name of Woods16 is "Hole in the Ground". "There appears to be a hole in the ground here. You could climb down it, but something tells you it is extremely dangerous.". The shape of Woods16 is L2/0-0-1-1-1-1.
Report going when the player is in Woods16:
	if berri fetish is 1 and berriVineBossScene is 0 and stripy-blue-dress is worn and magic pistol is worn and vine boss is alive:
		say "[bold type]Suddenly, a green vine whips out of the hole in the ground and grabs your ankle![line break][BerriCutsceneFlav]It yanks you hard, pulling you down into the pit! In your panic, [NameDesc of magic pistol] slips out of your hand!";
		now magic pistol is in the location of the player;
		now the stance of the player is 1;
		mapcutshow figure of berri cutscene 2 for magic pistol;
		say "[second custom style]Oh crap, am I really gonna get pulled down into this pit with some kind of vine monster?![roman type][line break]";
		reset multiple choice questions;
		set numerical response 1 to "Call for help";
		say "";
	otherwise if clumsy is 1 and the player is upright and the noun is not up and (a random number between 1 and 5 is 1 or clumsy april fools is 1):
		say "In a rare moment of clumsiness, your toe hits a snag and you accidentally tumble down into the giant hole in the centre of this area!";
		say aprilFoolsClumsyFlav;
		if seconds is 0, allocate 3 seconds; [Just in case]
		try going down;
		try kneeling;

Woods17 is an important jungle room. The printed name of Woods17 is "Dark Area". "The trees are so tall and thick in this part of the woods that they mostly block out the sun.". The shape of Woods17 is L2/0-0-0-1-0-0.

Woods18 is a dodgy jungle room. The printed name of Woods18 is "Pine Clearing". "For some reason, all the trees around the edge of this clearing are pine trees.". The shape of Woods18 is L2/0-0-0-0-1-0.

Woods19 is a dodgy jungle room. The printed name of Woods19 is "Oak Clearing". "For some reason, all the trees around the edge of this clearing are oak trees.". The shape of Woods19 is L2/0-0-0-0-0-1.

Woods20 is a mandatory important roofed jungle room. The printed name of Woods20 is "Witch's Shack". "In the middle of another clearing, a small open air shack stands, sheltering a peculiar stone pillar.". The shape of Woods20 is L2/0-0-1-1-1-1.

Woods21 is a mandatory important jungle room. The printed name of Woods21 is "Mysterious White Wall". "At the other end of this area, is a white wall with a very unique statue of the bottom half of a human stuck through it. A ladder leads up to a huge hole in the statue which it looks like you could peek through.". The shape of Woods21 is L2/0-0-1-0-0-0. The first forbidden direction of Woods21 is south.

Woods22 is a dodgy jungle room. The printed name of Woods22 is "Shallow Woods". "The trees are particularly thin in this part of the woods.". The shape of Woods22 is L2/0-0-0-1-1-1.

Woods23 is a dodgy jungle room. The printed name of Woods23 is "Shallow Woods". "The trees are particularly thin in this part of the woods.". The shape of Woods23 is L2/0-0-1-0-1-1.

Woods24 is a dodgy jungle room. The printed name of Woods24 is "Shallow Woods". "The trees are particularly thin in this part of the woods.". The shape of Woods24 is L2/0-0-1-1-0-1.

Woods25 is a dodgy jungle room. The printed name of Woods25 is "Shallow Woods". "The trees are particularly thin in this part of the woods.". The shape of Woods25 is L2/0-0-1-1-1-0.

Woods26 is an important mandatory jungle room. The printed name of Woods26 is "Sword in the Stone". "A stone slab in the centre of this clearing [if which-sword is in Woods26]has a shining sword stuck in it. There's probably no harm in seeing if you can pull it out?[otherwise]no longer has its magic sword stuck in it[end if]". The shape of Woods26 is L2/0-0-1-1-1-1.

Woods27 is a dodgy jungle room. The printed name of Woods27 is "The Well". "[if vine boss is off-stage]An overgrown clearing with a brick well surrounded by four stone statues in the centre. Each statue is intricately carved, all depicting a blissfully masturbating nude woman.[otherwise]An overgrown clearing with a dilapidated brick well in the centre. It is surrounded by four pillars of varying height, all completely encased with solid vine.[end if]".

Woods28 is a dodgy jungle room. The printed name of Woods28 is "Abandoned Nest". "A small clearing, hidden underneath a dense canopy of trees. Broken eggs are strewn across the area, all brown and no smaller than a football.[line break][variable custom style][if egg laying fetish is 0]Looks like whatever was here is long gone now.[otherwise]You can't help the feeling that whatever came out of those eggs... is still here.[end if][roman type][line break]". The shape of Woods28 is L2/0-0-0-1-0-0.

Woods29 is a jungle room. The printed name of Woods29 is "Pumpkin Patch". "A patch of wild pumpkins, growing on the edges of a small clearing.". [The grid position of Woods29 is <?,?,?>.]

Woods30 is a mandatory dodgy jungle room. The printed name of Woods30 is "Giant Statue". "There is an enormous statue of a naked woman [if doomed is 5]laying in the centre of this clearing. Green vines are wrapped around her body, as if holding her down for the massive, sickly purple creepers plugging her holes.[otherwise if vine boss is off-stage]kneeling in the centre of this clearing.[otherwise]on all fours in the centre of this clearing. Massive green vines are crammed into her mouth and wrapped around her wrists and ankles.[end if]". The shape of Woods30 is L2/0-0-0-1-0-1.

Woods31 is a dodgy roofed jungle room. The printed name of Woods31 is "Cave of Divination". "A shallow cave, with a pair of [if diaper quest is 1]diapered [otherwise if pregnancy fetish is 1]pregnant [end if]women carved into the rock on either side of the entrance.". The shape of Woods31 is L2/0-0-0-0-0-1.

Stairwell03 is a mandatory untrappable jungle room. The printed name of Stairwell03 is "Spooky Mansion". "An imposing mansion, which rests at just the right angle to be completely hidden from the rest of the woods unless you're standing on the crude path leading up to the front stoop.". The shape of Stairwell03 is L2/0-0-0-0-1-0. [Stairwell03 is north of Woods29. The grid position of Stairwell03 is <?,?,?>]

Stairwell02 is a mandatory untrappable jungle room. The printed name of Stairwell02 is "Hotel Rear Entrance". "An entrance to what appears to be a hotel seems very out of place embedded in a cliff face. Stairs lead up to the doors; a sign above them says 'Hotel Premier Sinn - Backdoor Entrance'.[one of] [if the bimbo of the player < 9 and diaper quest is 0][line break][first custom style]Oh look, another anal sex pun. This is getting old fast.[otherwise if the bimbo of the player < 9][first custom style]Is that supposed to be another butthole pun? This is getting old fast.[otherwise][line break][second custom style]*Snigger* Backdoor entrance...[end if][roman type][line break][or][stopping]". The shape of Stairwell02 is L2/0-0-0-1-0-0. The first forbidden direction of Stairwell02 is west.

WoodsBoss01 is a bossed room. The printed name of WoodsBoss01 is "Underground Chamber". "This appears to be the home of the body of the monster controlling the vines.". WoodsBoss01 is below Woods16.
Definition: WoodsBoss01 is nonstandard: decide yes.

Sky01 is a no-roof room. The printed name of Sky01 is "Up in the Sky". "You can see all of the Woods from up here!".
Definition: Sky01 is nonstandard: decide yes.

[Selkie wonders: what happens if you add a new room here, but forget to add it to the statement: "The Woods is a region. Woods01,..., Woods30, Stairwell02 are in The Woods." Bad things? If so: remember to adjust that definition, if you add new rooms here. Like uncommenting "Stairwell03"...]

WoodsScenery01 is a water-body-scenery. WoodsScenery01 is in Woods05. The printed name of WoodsScenery01 is "River". Understand "waterfall", "pool", "fall", "stream", "river" as WoodsScenery01. Instead of entering WoodsScenery01, try showering WoodsScenery01. The text-shortcut of WoodsScenery01 is "wtfl".
To say ExamineDesc of (C - WoodsScenery01):
	say "A fast-moving river connected to a clear waterfall. You could swim in it, but [bold type]each thing you're wearing that retains water and isn't specifically designed for swimming will increase how quickly you gain fatigue.[roman type][line break]".
To decide which figure-name is the examine-image of (C - WoodsScenery01):
	decide on figure of DungeonScenery03.

[woodsscenery02 is a statue]

WoodsScenery04 is a thing. WoodsScenery04 is scenery. WoodsScenery04 is in Woods27. Understand "well", "brick", "wishing well" as WoodsScenery04.

To say ExamineDesc of (C - WoodsScenery04):
	say "A dilapidated brick well.".

WoodsScenery05 is a thing. WoodsScenery05 is scenery. WoodsScenery05 is in Woods31. Understand "statue", "women", "woman", "statues" as WoodsScenery05.

To say ExamineDesc of (C - WoodsScenery05):
	say "A pair of [if diaper quest is 1]diapered [otherwise if pregnancy fetish is 1]pregnant [end if] women carved out of stone, with [if vine boss is alive]green vines wrapping up their bodies like ropes.[otherwise]with their arms positioned to cover up their bodies.[end if]".

The Woods is a region. Woods01, Woods02, Woods03, Woods04, Woods05, Woods06, Woods07, Woods08, Woods09, Woods10, Woods11, Woods12, Woods13, Woods14, Woods15, Woods16, Woods17, Woods18, Woods19, Woods20, Woods21, Woods22, Woods23, Woods24, Woods25, Woods26, Woods27, Woods28, Woods29, Woods30, Woods31, Stairwell02, Stairwell03 are in The Woods.

Woods ends here.
