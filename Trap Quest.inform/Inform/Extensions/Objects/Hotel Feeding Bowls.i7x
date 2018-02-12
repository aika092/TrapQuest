Hotel Feeding Bowls by Objects begins here.


A feeding bowls is a kind of thing. The printed name of feeding bowls is "[TQlink of item described]feeding bowls[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of feeding bowls is "fb". The description of feeding bowls is "Several pink dog bowls, secured to the floor. You feel that nothing good is likely to come of eating from any of them.". 1 feeding bowls is in Hotel18. 

BowlFeeding is an action applying to one thing.

Check TQEating feeding bowls:
	try bowlfeeding the noun instead.

Definition: a feeding bowls (called F) is TQEdible:
	decide yes.

Check BowlFeeding:
	now a random feeding bowls is in Hotel18;
	if the player is immobile, say "You're a bit tied up at the moment!" instead;
	if the player is in danger, say "You can't do that while in combat!" instead;
	if the player is not able to eat, say "You are currently unable to eat." instead;
	unless the player is prone, say "You would need to be on your knees to feed from these." instead.

Carry out BowlFeeding:
	now seconds is 6; [Selkie: does the "run paragraph on" have *any* effect here?  Aika: the "the player is not able to use their hands" uses a rulebook. Using a rulebook causes the game to assume you've probably finished saying what you've saying, and force new text to appear on a new line. This was an attempt to prevent that line break. If I remember correctly though, it didn't work and there's currently still an annoying line break.]
	say "You pick a random bowl [run paragraph on][if the flesh volume of arms > 6]and greedily shove your face in it, not even bothering to use your hands as you messily chow down on the slimy mush[otherwise if the humiliation of the player > 39999 or the player is not able to use their hands]and shamelessly push your face into the mush, leaving your hands on the ground, just like a dog would[otherwise if the humiliation of the player < 23999]and push your face into the mush, using your hands to shovel it into your mouth[otherwise]and shudder as you scoop up a hearty helping of slimy mush, trying not to heave as you begin to eat[end if]. It tastes [if the flesh volume of arms > 6][one of]terrible, but you don't care as long as it's food.[or]delicious, almost like chicken![or]just like chocolate sauce, but honestly, it could taste like wet dog and you'd still eat it.[at random] Within moments, you've completely emptied the bowl of its contents, oily remnants of your meal clinging to your face.[otherwise if the humiliation of the player > 39999][one of]terrible, but it's the only thing you deserve to eat, so you continue until you feel relatively feel[or]a bit like chicken. You eat messily without your hands until you feel relatively full.[or]delicious, like chocolate sauce! You eat messily without your hands until you feel relatively full.[at random][otherwise][one of]disgusting. You can barely keep it down, but somehow you manage to keep eating until you feel relatively full.[or]like chocolate sauce, but regardless of the flavour, you're still eating dog food out of a bowl on the floor, like an animal. You continue eating until you feel relatively full.[or]a bit like chicken. Normally you'd eat chicken off a plate, though. You continue eating until you feel relatively full.[at random][end if]";
	let M be a random monster in the location of the player;
	if M is monster:
		say "[if M is intelligent]The[otherwise]Even though you aren't sure how intelligent it is, the[end if] fact that the [M] is watching you messily eat from a dog bowl makes you shiver with shame.";
		Humiliate 100;
	StomachFoodUp 1;
	while the stomach-food of the player < 4 or the stomach of the player < 6:
		StomachFoodUp 1;
	if diaper quest is 0 and a random number between 1 and 2 is 1:
		let H be a random off-stage puppy ears;
		if H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly, a pair of [ShortDesc of H][bold type] appear on your head[if the bimbo of the player < 9]!  [line break][variable custom style]I am NOT a dog[end if]![roman type][line break]".

Hotel Feeding Bowls ends here.

