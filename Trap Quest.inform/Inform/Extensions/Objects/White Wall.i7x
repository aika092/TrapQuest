White Wall by Objects begins here.

WoodsScenery03 is a thing. WoodsScenery03 is not portable. WoodsScenery03 is in Woods21. The printed name of WoodsScenery03 is "[TQlink of item described]wall statue[TQxlink of item described][verb-desc of item described]". Understand "wall", "statue", "wall statue", "white wall statue", "ladder", "statue ladder", "white wall" as WoodsScenery03. Figure of WoodsScenery03 is the file "Env/Forest/statue3.jpg". WoodsScenery03 has a number called uses. The uses of WoodsScenery03 is usually 1. The text-shortcut of WoodsScenery03 is "wst".

To decide which figure-name is the examine-image of (C - WoodsScenery03):
	decide on figure of WoodsScenery03.

To say ExamineDesc of (C - WoodsScenery03):
	say "This giant white stone statue is of the bottom half of a human female, up to her waist, as if she is stuck in the wall. A ladder allows you to climb up to her buttocks, where instead of a vagina is a gaping hole that you could fit your head into. You could [bold type]climb[roman type] the ladder to look in the hole if you wanted.".

Definition: WoodsScenery03 is immune to change: decide yes.

The block climbing rule is not listed in the check climbing rulebook.

Check drinking WoodsScenery03:
	try climbing the noun instead.

Check climbing something:
	if the noun is not WoodsScenery03, say "How would that work?" instead;
	if the player is prone, say "You need to be standing to climb a ladder." instead;
	if the player is ankle bound, say "You can't climb the ladder with your ankles bound." instead;
	if the player is at least partially immobile, say "Aren't you a bit busy?" instead;
	if the uses of WoodsScenery03 is 0, say "You've already seen what's through there, no need to look again." instead.

Carry out climbing WoodsScenery03:
	allocate 6 seconds;
	say "You climb the ladder and put your face through the statue's hole.";
	if the player is getting unlucky:
		repeat with M running through monsters in the location of the player:
			regionally place M;
		if fairy-witch is off-stage, set up fairy-witch;
		now fairy-witch is in the location of the player;
		interest fairy-witch;
		calm fairy-witch;
		now the boredom of fairy-witch is 200;
		increase the times-met of fairy-witch by 1;
		now current-monster is fairy-witch;
		say "You see nothing but more forest stretching forward in front of you. And then... From above, zooms [NameDesc of fairy-witch]![line break][speech style of fairy-witch]'[if lactation fetish is 1]Ooh, a cute cow has made herself ready for milking? So submissive[otherwise]You look fun to play with... Stay right there[end if]!'[roman type][line break][BigNameDesc of fairy-witch] zooms straight up to you before you can pull away! [GotUnluckyFlav]";
		if lactation fetish is 1 and the player is not a flatchested trap:
			say "[BigNameDesc of fairy-witch] brushes up against your [BreastDesc], which balloon outwards as they are filled with enormous amounts of milk!";
			BustUp 3;
			say "Now that your breasts are bigger, you can't fit back through the hole - you're stuck!!!";
			Milkup the milk capacity of breasts - the milk volume of breasts;
			if face is fairy targetable, compute fairy meddling on face;
			if hair is fairy targetable, compute fairy meddling on hair;
			compute fairySuckling of fairy-witch;
			increase the lactation rate of breasts by 2;
			say "Your breasts now feel weirdly [']active[']...[paragraph break]";
			if the milk volume of breasts >= the milk capacity of breasts, trigger lactation;
			say "Finally, your breasts have shrunk to just small enough that you can wriggle yourself back through the hole.[line break][variable custom style]PHEW!!![roman type][line break]";
		otherwise:
			if the player is not top heavy:
				say "[BigNameDesc of fairy-witch] brushes up against your [BreastDesc], which magically balloon outwards!";
				BustUp 3;
				say "Now that your breasts are bigger, you can't fit back through the hole - you're stuck!!!";
			if face is fairy targetable, compute fairy meddling on face;
			if hair is fairy targetable, compute fairy meddling on hair;
			let W be a random regional giant wasp;
			let assholeBlocked be false;
			if W is monster and the number of untearable ass covering clothing is 0 and asshole is not actually occupied:
				now W is in the location of the player;
				interest W;
				increase the times-met of W by 1;
				let C be a random top level ass protection clothing;
				while C is clothing:
					if C is displacable:
						say "You feel something displace your [C]!";
						displace C;
					otherwise if C is rippable:
						say "You feel something rip a hole in your [C]!";
						rip C;
					otherwise:
						say "You feel something rip your [C] off!";
						destroy C;
					now C is a random top level ass protection clothing;
				say "You feel something shoving its ovipositor up inside your [asshole] - this must be a Giant Wasp!";
				now W is penetrating asshole;
				anger W;
				set up sex length of W in asshole;
				ruin asshole;
				while W is penetrating a body part:
					repeat with M running through regional monsters:
						say "[BigNameDesc of fairy-witch] points and [one of]giggles[or]cackles[cycling].";
						if M is not W, now M is moved; [we don't want NPCs entering the player's location during this phase]
						compute extra turn;
						if M is not W and M is in the location of the player, regionally place M; [failsafe]
			otherwise:
				say "[BigNameDesc of current-monster] whizzes towards you and flicks you on the forehead.";
				if diaper lover > 0:
					RandomIncontinenceUp 2;
				otherwise:
					IntDown 2;
					say "You suddenly feel significantly less intelligent...";
			say "With a sudden pop, you manage to fit yourself back out of the hole.[line break][variable custom style]PHEW!!![roman type][line break]";
		say "You clamber back down the ladder, only to find that [NameDesc of fairy-witch] has flown round to this side too, just in time to greet you at the bottom.[line break][speech style of fairy-witch]'That was fun. You're funny!'[roman type][line break]It seems that [he of fairy-witch] has grown bored of tormenting you, and now is no longer hostile...";
	otherwise if the player is getting lucky:
		say "You can't believe what you see - beyond the wall is a beautiful green meadow, with the sun shining on a glittering lake. Fluffy rabbits roam the grass and graceful swans drift freely on its surface. You desire nothing more than to find a way to the other side of the wall. The sight is so uplifting that you feel more wholesome inside.";
		SemenAddictDown 2;
		IntUp 1;
		Dignify 5000;
		say GotLuckyFlav;
	otherwise if diaper quest is 0 and ungape is 0 and a random number between 1 and 2 is 1:
		say "The statue appears to continue on the other side of the wall - you can't see what's inside.[if the openness of asshole < 10][line break]While your head is in the statue's asshole, you feel your own sphincter suddenly stretch![end if]";
		gape asshole times 5;
	otherwise:
		say "The statue appears to continue on the other side of the wall - the belly of the statue is filled with [if diaper quest is 0][semen][otherwise if diaper messing >= 4 and there are worn knickers]food[otherwise]water[end if]![if the largeness of belly < 10][line break]While your head is in there, you feel your own belly suddenly fill from the inside![end if]";
		if diaper quest is 1:
			if diaper messing >= 4 and there are worn knickers:
				increase rectum by 12;
			otherwise:
				increase the water volume of belly by belly limit - the total fill of belly;
		otherwise:
			AssFill 8;
	decrease the uses of WoodsScenery03 by 1.

White Wall ends here.
