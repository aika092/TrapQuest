Guest Bed by Furniture begins here.


A guest bed is a kind of furniture. There is 1 guest bed. The printed name of guest bed is "[TQlink of item described]guest bed[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "guest", "bed" as guest bed. The text-shortcut of guest bed is "pgb". The description of guest bed is "A comfortable looking bed with shale grey pillows and a solid black comforter. It looks surprisingly mundane[if there is a clairvoyant acolyte in the location of the player and bukkake fetish is 1], but [NameDesc of clairvoyant acolyte] has obviously been 'leaking' on the sheets[end if].". A guest bed has a number called song. song is usually 0. A guest bed can be tended. A guest bed is usually not tended. A guest bed has a number called holeCount; The holeCount of a guest bed is usually 0.

To say RestingDesc of (F - a guest bed):
	say "You [one of]get into the bed and [or]continue to [stopping]relax on the comfortable mattress.[one of][if bukkake fetish is 1 and clairvoyant acolyte is in the location of the player]You are so comfortable that you appreciate the warm, moist feeling within the bed without really thinking too hard about it[otherwise]It's pleasant and warm underneath the covers[end if].[or][stopping]".

To compute rest ending of (F - a guest bed):
	if the holeCount of F > 0:
		let O be a random orifice penetrated by F;
		say "[if F is penetrating face]The feeling of [semen] spurting into your mouth[otherwise]The feeling of warm fluid flowing into you[end if] suddenly jars you from your stupor. [if the holeCount of F is 1]Your [variable O] is stuffed full of a giant purple tentacle, throbbing viciously as it pumps you full of [semen].[otherwise]You're being pinned down by several giant tentacles, which throb viciously as they pump your holes full of [semen].[end if] [BigNameDesc of clairvoyant acolyte] regards you from the side of the bed, gasping softly as feminine fluids dribble down her bare legs. You feel a fog being lifted as the tentacles slowly retract, allowing you to finally throw aside the covers.";
		repeat with S running through orifices penetrated by F:
			now ghostly tentacle is penetrating S;
			now F is not penetrating S;
		if ghostly tentacle is penetrating face, StomachSemenUp the semen load of ghostly tentacle;
		if ghostly tentacle is penetrating vagina, PussyFill the semen load of ghostly tentacle;
		if ghostly tentacle is penetrating asshole, AssFill the semen load of ghostly tentacle;
		repeat with P running through orifices penetrated by ghostly tentacle:
			now ghostly tentacle is not penetrating P;
		now the holeCount of ghostly tentacle is 0;
	otherwise:
		say "You eagerly throw off the covers and get to your feet.";
	if F is tended:
		if bukkake fetish is 1, CumBellyUp 1;
		if the song of F > 0 and the remainder after dividing the song of F by 4 is 0, IntDown 1;
		now F is not tended;
	now the song of F is 0.

To compute furniture resting on (F - a guest bed):
	let M be a random alive clairvoyant acolyte in the location of the player;
	[now song is 0]
	if M is a monster:
		say "[BigNameDesc of M] sings smoothly as you pull up the covers, sliding off the bed as drowsiness takes a surprisingly quick hold on your body. Your arms go limp and droop off the side of the bed as the woman sways around the room, your chest rising and falling with the lilting timbre of her voice. Hints of arousal creep into her tone as she gently lifts your arm back onto the bed and firmly tucks you in.";
		now F is tended;
	compute normal rest of F.

player-hypno-great is a number that varies. player-hypno-great is usually 0.

[!<computeUniqueFurnitureFatigueEffect>+

By default, calls the UniqueFurnitureNormalEffect function

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute unique fatigue effect of (F - a furniture):
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
		say "You [one of][or]continue to [stopping]rest on the comfortable mattress[if M is monster]. [BigNameDesc of M] [one of]twists her nipples[or]strokes her clit[or]fondles herself[or]paws at herself[or]fondles you through the covers[or][at random][one of] as she whispers incomprehensible lyrics into your ear.[or] as she moans her song into your ear.[or] as she croons lecherously.[at random][otherwise].[end if][line break]";
	otherwise if N < 7:
		say "You continue to rest on the comfortable mattress[one of], silently repeating [NameDesc of M]'s words.[or] drowsily watching [NameDesc of M]'s lips as the form her song.[or], feeling yourself drifting to rhythm of [NameDesc of M]'s voice.[or], hanging onto the steadily fading lilt of [NameDesc of M]'s voice.[at random]";
	otherwise if N < 11:
		say "[if N is 10]You feel them clutching you. Holding you. Cradling you. You are ready. They are ready.[otherwise]You continue resting,  [one of]treasuring the soothing....blankness in your mind.[or]whispering yourself into a language you do not know.[or]anticipating...them.[at random][end if]";
		now player-hypno-great is 1;
	otherwise if N > 10:
		if the remainder after dividing N by 4 is 1:[every four turns, add another tentacle.]
			let O be a random orifice;
			if the player is male and O is vagina:
				now O is asshole;
			now F is penetrating O;
			increase the holeCount of F by 1;
			humiliate the holeCount of F;
			if debugmode > 0, say "[input-style]increase tentacle count to [the holeCount of F].[roman type][line break]";
		if F is penetrating face:
			say "[one of]You taste them.[or]It tastes so good.[or]Filling your belly.[or]Only service.[then at random]";
		if F is penetrating a fuckhole:
			say "[one of]They are inside you.[or]Only penetration.[or]It feels so good.[or]It feels so big.[or]You feel them.[then at random]";
		if a random number between 1 and 3 is 1, RandomAddictUp 1.


Guest Bed ends here.

