Guest Bed by Furniture begins here.

A guest bed is a kind of furniture. There is 1 guest bed in Mansion02. The printed name of guest bed is "[TQlink of item described]guest bed[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "guest", "bed" as guest bed. The text-shortcut of guest bed is "pgb". A guest bed has a number called song. song is usually 0. A guest bed can be tended. A guest bed is usually not tended. A guest bed has a number called holeCount. The holeCount of a guest bed is usually 0.

To say ExamineDesc of (C - a guest bed):
	say "A comfortable looking bed with shale grey pillows and a solid black comforter. It looks surprisingly mundane[if there is a clairvoyant acolyte in the location of the player and bukkake fetish is 1], but [NameDesc of clairvoyant acolyte] has obviously been 'leaking' on the sheets[end if].".

To decide which figure-name is the examine-image of (C - a guest bed):
	decide on figure of hotel bed.

To compute rest ending of (F - a guest bed):
	if the holeCount of F > 0:
		let O be a random orifice penetrated by F;
		say "[if F is penetrating face]The feeling of [semen] spurting into your mouth[otherwise]The feeling of warm fluid flowing into you[end if] suddenly jars you from your stupor. [if the holeCount of F is 1]Your [variable O] is stuffed full of a giant purple tentacle, throbbing viciously as it pumps you full of [semen].[otherwise]You're being pinned down by several giant tentacles, which throb viciously as they pump your holes full of [semen].[end if] [BigNameDesc of clairvoyant acolyte] regards you from the side of the bed, gasping softly as feminine fluids dribble down [his of clairvoyant acolyte] bare legs. You feel a fog being lifted as the tentacles slowly retract, allowing you to finally throw aside the covers.";
		repeat with S running through orifices penetrated by F:
			now ghostly tentacle is penetrating S;
			now F is not penetrating S;
		if ghostly tentacle is penetrating face, StomachSemenUp the semen load of ghostly tentacle;
		if ghostly tentacle is penetrating vagina, PussyFill the semen load of ghostly tentacle;
		if ghostly tentacle is penetrating asshole, AssFill the semen load of ghostly tentacle;
		repeat with P running through orifices penetrated by ghostly tentacle:
			now ghostly tentacle is not penetrating P;
		now the holeCount of F is 0;
	otherwise:
		say "You eagerly throw off the covers and get to your feet.";
	if F is tended:
		if the song of F > 0 and the remainder after dividing the song of F by 4 is 0, IntDown 1;
		now F is not tended;
	now the song of F is 0.

To compute furniture resting on (F - a guest bed):
	[now song is 0]
	if clairvoyant acolyte is in the location of the player:
		let M be clairvoyant acolyte;
		say "[BigNameDesc of clairvoyant acolyte] sings smoothly as you pull up the covers, sliding off the bed as drowsiness takes a surprisingly quick hold on your body. Your arms go limp and droop off the side of the bed as the [man of M] sways around the room, your chest rising and falling with the lilting timbre of [his of M] voice. Hints of arousal creep into [his of M] tone as [he of M] gently lifts your arm back onto the bed and firmly tucks you in.";
		now F is tended;
	otherwise:
		say "You slip into the bed and pull up the covers.";
	compute normal rest of F.

player-hypno-great is a number that varies. player-hypno-great is usually 0.

[!<computeUniqueFurnitureFatigueEffect>+

By default, calls the UniqueFurnitureNormalEffect function

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute unique fatigue effect of (F - a guest bed):
	if F is tended, humiliate 6 + the song of F.

[!<computeUniqueFurnitureSorenessEffect>+

If there is a clairvoyant acolyte nearby, has an additional effect.

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute unique soreness effect of (F - a guest bed):
	if F is tended, humiliate 6.

To compute unique normal effect of (F - a guest bed):
	if F is tended:
		increase the song of F by 1;
		compute song effect of F.

To compute song effect of (F - a guest bed):
	let N be the song of F;
	if N < 10:
		if N is 4, say "Your field of view seems to darken, and you feel yourself slipping deeper and deeper into the sound of the cultists's voice.";
		if N is 7, say "You barely notice the sheets tightening as your vision fades completely, and the endless face of the void slowly leaks into your mind. Someone is singing.";
		if N is 10, say "Nothing. No light. No sound. Only them.".

To say RestingDesc of (F - a guest bed):
	let M be clairvoyant acolyte;
	let N be the song of F;
	say "[line break]";
	if N < 4:
		say "You [one of][or]continue to [stopping]rest on the comfortable mattress[if M is in the location of the player]. [BigNameDesc of M] [one of]twists [his of M] nipples[or]strokes [his of M] clit[or]fondles [himself of M][or]paws at [himself of M][or]fondles you through the covers[or][at random] [one of]as [he of M] whispers incomprehensible lyrics into your ear[or]as [he of M] moans [his of M] song into your ear[or]as [he of M] croons lecherously[at random][end if].";
	otherwise if N < 7:
		say "You continue to rest on the comfortable mattress, [one of]silently repeating [NameDesc of M][']s words.[or]watching every movement of [NameDesc of M][']s lips.[or], feeling yourself drifting to rhythm of [NameDesc of M][']s voice.[or], hanging onto [NameDesc of M][']s every word.[at random]";
	otherwise if N < 11 or diaper quest is 1:
		say "[if N is 10]You continue resting, [one of]treasuring the soothing blankness in your mind.[or]whispering to yourself into a language you do not know.[or]anticipating... them.[at random][end if]";
		now player-hypno-great is 1;
	otherwise:
		if the remainder after dividing N by 4 is 1:[every four turns, add another tentacle.]
			let O be a random orifice;
			if the player is not possessing a vagina and O is vagina:
				now O is asshole;
			now F is penetrating O;
			increase the holeCount of F by 1;
			humiliate the holeCount of F;
			if debugmode > 0, say "[input-style]increase tentacle count to [the holeCount of F].[roman type][line break]";
		if F is penetrating face:
			say "[one of]You taste them.[or]It tastes so good.[or]Filling your belly.[or]Only service.[then at random]";
		if F is penetrating a fuckhole:
			say "[one of]They are inside you.[or]Only penetration.[or]It feels so good.[or]It feels so big.[or]You feel them.[then at random]";
		if F is not penetrating a body part:
			say "You feel them [one of]clutching you[or]caressing you[or]cradling you[at random]. You are ready. They are ready.";
		if a random number between 1 and 3 is 1, RandomAddictUp 1.

Guest Bed ends here.
