Overall Description by Player Description begins here.


The description of yourself is "".

To say FullExamineDesc of (C - yourself):
	update player region;
	say "[PlayerDescription][ClothesDescription][OptionalDescription]".

To say RealDesc:
	say "inside a metal chamber filled with a transparent liquid. You are motionless and have your eyes closed. You have straight black [RealHairDesc], [RealBreastDesc] and what look like [RealHipDesc]. [RealGapeDesc].".

Check examining the player:
	if the player is in Start or the player is in Capsule:
		say "Not now!" instead;

To say PlayerDescription:
	say "You are [TitleBimbo]. ";
	let hair-check be 0;
	let X be the largeness of hair;
	if there is a worn headgear, compute SelfExamineDesc of a random worn headgear;
	otherwise say "[TotalDesc of hair]";
	say "[TotalDesc of face][TotalDesc of breasts][TotalDesc of arms]";
	say "Below this [TotalDesc of Belly][TotalDesc of hips][TotalDesc of thighs]";
	say "[if the player is possessing a penis][TotalDesc of penis][otherwise][TotalDesc of vagina][end if][TotalDesc of asshole]".

To say ClothesDescription:
	if the player is naked:
		say "You are completely naked. [if the bimbo of the player > 6 and diaper quest is 1][line break][variable custom style]I'm going to get in trouble![roman type][line break][otherwise if the humiliation of the player > 15000 and the humiliation of the player < 40000][line break][second custom style]How naughty![roman type][line break][end if]";
	if the latex-transformation of the player >= 7:
		say "You are not able to speak due to your latex mouth being kept in a permanent O-shape";
	if cowbell is worn:
		say "A loud clanging accompanies your movement thanks to a cowbell attached to your neck. ";
	repeat with S running through worn shoes:
		compute SelfExamineDesc of S;
	repeat with B running through worn bondage:
		compute SelfExamineDesc of B;
	repeat with O running through worn overdresses:
		compute SelfExamineDesc of O;
	repeat with S running through worn skirts:
		compute SelfExamineDesc of S;
	if a random stethoscope is worn by the player, say "You have a fancy looking stethoscope hanging around your neck. ";
	if there is a worn tattoo:
		let images-saved be images visible;
		now choice in row 2 of the Table of Settings is 0; [we temporarily disable images so we can use the descriptions of tattoos.]
		repeat with T running through worn tattoos:
			say "[tattoo-desc of T]";
		now choice in row 2 of the Table of Settings is images-saved;
	if the player is glue stuck:
		say "Oh. And you've also managed to glue yourself to the floor.";
	if debugmode is 1, explain appearance.

To say PregDescription:
	if the number of family things is 1:
		say "[PregGrowth of the father] inside your womb";
	otherwise:
		say "an unknown[if inhuman pregnancy is 2] (and hopefully human)[end if] child".

To say OptionalDescription:
	if the pregnancy of the player > 0, say "You are currently carrying [PregDescription].[if the latex-transformation of the player > 0 or the pregnancy of the player is 2]The pregnancy doesn't seem to be growing any bigger.[end if]";
	if the player is glue stuck:
		say "You are embedded in a mass of stretchy glue holding you helplessly down on the ground. ";
	if the player is drill stuck:
		say "You are stuck on a spinning drill!  [if the latex-transformation of the player < 4]Your poor fuckhole is getting more and more sore by the second!  [end if]";
	if the player is pole stuck:
		say "You are stuck on a dildo!  [if the latex-transformation of the player < 3]Your hole is getting stretched further and further. [end if]";
	otherwise if the player is dildo stuck:
		if doll-stuck is "":
			say "You are impaled on a dildo mounted on a pole!";
		otherwise:
			say "Tinkly music plays as you gracefully [doll-stuck]";
	if the player is anally hook stuck:
		say "An ass hook is pulling your [asshole] apart from the inside! ";
	otherwise if the player is wedgie hook stuck:
		say "A wedgie hook is painfully holding your underwear up your butt crack! ";
	if the player is horse stuck:
		say "You are currently [if the latex-transformation of the player < 4]in significant pain, [end if]stuck on a wooden horse torture device!  ";
	if the player is vine stuck:
		if the player is vine fucked:
			say "Vines are holding you still and fucking your [if the player is not possessing a vagina][asshole]! [otherwise][vagina]! [end if]";
		otherwise:
			if the player is upright, say "Vines are holding your ankles still!  ";
			otherwise say "Vines are holding your wrists and ankles down, keeping you on your knees. ";
	otherwise if the player is live fucked:
		say "[BigFuckerDesc of random live thing penetrating a body part] is [if diaper quest is 1]punishing you[otherwise][one of]having fun with your body[or]using your body as a playground[or]currently defiling your body[at random][end if]. ";
	otherwise if there is a monster grabbing the player:
		say "[BigNameDesc of a random monster grabbing the player] [if diaper quest is 1]is punishing you[otherwise][GrabStatus of a random monster grabbing the player][end if]. ";
	if diaper quest is 1, say "[PerceivedAdultDesc][InternalsDesc][SorenessDesc][DiaperDisciplineDesc]";
	otherwise say "[PerceivedBimboDesc][InternalsDesc][SorenessDesc][line break][StatusDesc][BimboDesc]".

To say GrabStatus of (M - a monster):
	say "is restraining you".


Overall Description ends here.

