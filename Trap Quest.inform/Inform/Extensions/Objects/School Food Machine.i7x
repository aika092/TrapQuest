School Food Machine by Objects begins here.

food machine is a thing. The printed name of food machine is "[TQlink of item described]food machine[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of food machine is "fdm". food machine is in School17.

Definition: food machine is immune to change: decide yes.

To decide which figure-name is the examine-image of (C - food machine):
	decide on Figure of school foodhall.

To say MediumDesc of (C - food machine):
	say "mushy [if diaper quest is 0][semen]-glazed [end if]food machine".

To say ExamineDesc of (C - food machine):
	say "A conveyor belt running around the outside with bowls of food passing round them, much like in a sushi restaurant but slower. The meals pass through a large central metal unit which seems to be where empty bowls are restocked. [if diaper quest is 0]You notice that whenever the meals come out the other side they seem a little more... shiny. Closer inspection reveals that yes, each meal is slowly getting coated in more and more [semen][otherwise if the bimbo of the player < 10]To your dismay you realise all the bowls are filled with baby food such as mushy peas, mashed banana, oatmeal and so on[otherwise]All of the bowls are filled with baby food such as mushy peas, mashed banana, oatmeal and so on[end if]. What is clear from just looking at the machine is that the bowls are secured to the conveyor belt, and there is no cutlery, so you would be forced to eat with your hands or face.".

MachineFeeding is an action applying to one thing.

Check TQEating food machine:
	try MachineFeeding the noun instead.

Definition: a food machine is TQEdible: decide yes.

Check MachineFeeding:
	now food machine is in School17;
	if the player is immobile, say "You're a bit tied up at the moment!" instead;
	if the player is in danger, say "You can't do that while in combat!" instead;
	if the player is not able to eat, say "You are currently unable to eat." instead;
	if there is a worn gag, say "It's not really practical to eat from that while wearing the [random worn gag]." instead;
	unless the player is upright, say "You would need to be standing to get to a bowl." instead.

Carry out MachineFeeding:
	allocate 6 seconds;
	say "You pick a random bowl [run paragraph on][if the flesh volume of arms > 6]and greedily shove your face in it, not even bothering to use your hands as you messily chow down on the slimy mush[otherwise if the humiliation of the player >= 40000 or the player is not able to use their hands or the player is wrist bound behind]and shamelessly push your face into the mush, leaving your hands on the ground, just like a dog would[otherwise if the humiliation of the player < 23999]and push your face into the mush, using your hands to shovel it into your mouth[otherwise]and shudder as you scoop up a hearty helping of slimy mush, trying not to heave as you begin to eat[end if]. It tastes [if the semen taste addiction of the player > 12]rather incredible, thanks to the wonderful addition of [semen].[otherwise if the semen taste addiction of the player < 6 and diaper quest is 0]awful, mostly because of the [semen] glaze.[otherwise if the flesh volume of arms > 6][one of]terrible, but you don't care as long as it's food[or]delicious, almost like chicken[or]just like chocolate sauce, but honestly, it could taste like wet dog and you'd still eat it[at random]. Within moments, you've completely emptied the bowl of its contents, oily remnants of your meal clinging to your face.[otherwise if the humiliation of the player > 39999][one of]terrible, but it's the only thing you deserve to eat, so you continue until you feel relatively full[or]a bit like chicken. You eat messily without your hands until you feel relatively full.[or]delicious, like chocolate sauce! You eat messily without your hands until you feel relatively full.[at random][otherwise if diaper quest is 0][one of]disgusting. You can barely keep it down, but somehow you manage to keep eating until you feel relatively full.[or]like sugary sponge cake. You continue eating until you feel relatively full.[or]a bit like chicken. Normally you'd eat chicken off a plate, though. You continue eating until you feel relatively full.[at random][otherwise]much as you would expect from food designed for babies - slimy yet edible.[end if]";
	let M be a random monster in the location of the player;
	if M is monster:
		say "[if M is intelligent]The[otherwise]Even though you aren't sure how intelligent it is, the[end if] fact that [NameDesc of M] is watching you eat [if diaper quest is 0]something with [semen] in it, and [end if]so messily makes you shiver with shame.";
		strongHumiliate;
	StomachFoodUp 2;
	if diaper quest is 0, StomachSemenUp 1;
	if diaper quest is 1 and diaper messing >= 3 and the player is at least somewhat rectum continent and the player is getting unlucky, RectumIncontinenceUp 1;
	trigger bowl-wisp-quest;
	if the player is broken or the player is not able to use their hands or the player is wrist bound behind:
		let H be a random off-stage puppy ears;
		if H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly, a pair of [ShortDesc of H][bold type] appear on your head[if the bimbo of the player < 9]![line break][variable custom style]I am NOT a dog[end if]![roman type][line break]".

School Food Machine ends here.
