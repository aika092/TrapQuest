Executing Fainting by Fainting begins here.


[!<sexChanged:Integer>*

Set to 1 when the player is sex changed, telling us that the next time the player faints, we should mention it. Then it gets set to 2 so we don't do that again the following time the player faints.

*!]
Sex-changed is a number that varies. Sex-changed is 0.

[!<newlyTattooed:Integer>*

Set to 1 when the player gets a property tattoo as they faint so that we know to mention it.

*!]
Newly-tattooed is a number that varies. Newly-tattooed is 0.

[!<tentacled:Integer>*

This tells us that a tentacle monster saw us faint, and therefore we could get turned into a tentacle breeder potentially.

*!]

tentacled is a number that varies. tentacled is 0.

[!<ExecuteFainting>+

Called when the player faints. We reset a lot of variables.

+!]
To Execute Fainting:
	repeat with M running through monsters in the location of the player:
		dislodge M;
	now another-turn is 0;
	if the player is in WoodsBoss01, now the player is in Woods16;
	if the player is in UrinalBlindfolded, now the player is in Hotel31;
	if the player is in DiamondLessonBlindfolded, now the player is in School12;
	if the player is in Iron Maiden, now the player is in the location of a random iron-maiden;
	if the player is in HoleInWall, now the player is in the location of hole-in-wall;
	if the player is in DiaperPail, now the player is in the location of most-recent-pail;
	if the player is in MimicCrib, now the player is in the location of memic;
	if playerRegion is Mansion and there is an off-stage mindless acolyte:
		let A be a random off-stage mindless acolyte;
		set up A;
		summon A in the mansion;
	if the number of worn lower back tattoos is 0 and there is a worn tattoo and the player can see a royal guard:
		summon property-tattoo;
		now newly-tattooed is 1;
	if there is a tentacle monster in the location of the player, now tentacled is 1;
	let J be the biggest jewel;
	if J is a plentiful accessory:
		say "[if J is held]You feel your [J] ripped from you by an invisible force![otherwise if J is in the location of the player]You watch the [J] disintegrate in front of your eyes![end if]";
		remove J from play;
	if crashdebug is 1:
		say "Checkpoint 1.";
	if sex-changed is 1 and tg fetish >= 1:
		if the faint count of the player is 0, say "[First Time TG Fainting Story]";
		otherwise say "[TG Fainting Story]";
		now sex-changed is 2;
	otherwise:
		say "[if the faint count of the player is 0][First Time Fainting Story][otherwise][Next Time Fainting Story][end if]";
	say "[second custom style]'[one of]Oh yeah... when you come back here, we are supposed to give you a chance to, well, give up. If you want to. You'll leave with no winnings[or]Also we're going to keep giving you the option to quit with no winnings every time you come back here[stopping]. So, are you sure you want to keep playing? That means say [bold type]yes [second custom style] to keep playing and [bold type]no [second custom style]to give up.'[roman type][line break][line break]";
	unless the player is consenting:
		repeat with A running through worn plentiful accessories:
			now A is carried by the player; [You can't just bail and then win! You lose all your money]
		end the story finally saying "You have lost.";
	decrease the extra lives of the player by 1;
	unless earnings is starting-earnings:
		Set Leftovers;
		increase the faint count of the player by 1;
		if debugmode is 1, say "[line break][bold type]RECOVERING MONSTERS[roman type][line break]";
		Recover Monsters;
		if crashdebug is 1:
			say "Checkpoint 2.";
		if debugmode is 1, say "[line break][bold type]RECOVERING CLOTHING[roman type][line break]";
		Recover Clothing;
		if debugmode is 1, say "[line break][bold type]RECOVERING TRAPS[roman type][line break]";
		Recover Traps;
		if map reset is 1:
			if crashdebug is 1:
				say "Checkpoint 3.";
			if debugmode is 1, say "[line break][bold type]RECOVERING DRINKS[roman type][line break]";
			Recover Drinks;
			if crashdebug is 1:
				say "Checkpoint 4.";
			Recover Collectibles;
			if crashdebug is 1:
				say "Checkpoint 5.";
			if debugmode is 1, say "[line break][bold type]RECOVERING CONTAINERS[roman type][line break]";
			Recover Containers;
			if crashdebug is 1:
				say "Checkpoint 6.";
			if debugmode is 1, say "[line break][bold type]RECOVERING ROOMS[roman type][line break]";
			Recover Rooms;
			if crashdebug is 1:
				say "Checkpoint 7.";
		if debugmode is 1, say "[line break][bold type]RECOVERING PLAYER[roman type][line break]";
		Recover the Player;
		if crashdebug is 1:
			say "Checkpoint 8.";
		scramble items;
		set up monsters;
		if debugmode is 1, say "Finished setting up monsters.";
		if the location of the player is unplaced or the location of the player is unspawnable: [To stop a gamebreaking bug where the tile of the player was not used]
			if playerRegion is Woods:
				now the player is in Woods01;
			otherwise if playerRegion is Hotel:
				now the player is in Hotel01;
			otherwise if playerRegion is Mansion:
				now the player is in Mansion01;
			otherwise:
				now the player is in Dungeon11;
		now the location of the player is discovered;
		say "[one of]You wake up, and realise you are lying face down, still in the [printed name of the location of the player][if the urine-puddle of the location of the player > 0], surrounded by a puddle of [urine][end if]. Your body feels like it has significantly recovered and there are no monsters or traps anywhere to be seen. The world around you looks different, suggesting that the entire game world may have been reset, but with you still in it!  [if pubic hair images visible is 0][otherwise if the extra lives of the player <= 0]You notice that your pubic hair has completely gone, which reminds you that this is your last life. [otherwise if pubic hair images visible > the extra lives of the player]You notice that your pubic hair has gotten shorter and smaller, a cruel way to track how few tries you have left. [end if][line break][variable custom style]How long was I out for?[roman type][line break]A hologram of yourself in the virtual chamber shimmers into existence above you for a few seconds. It looks like you get to see exactly what they have done to you.[or]You wake up, again lying face down, this time in the [printed name of the location of the player]. Once again a hologram of your real self appears in front of you.[stopping]";
		say "You are [RealDesc]";
		if the pink pill is not held by the player:
			say "You [one of][or]once again [stopping]find a pink pill inside your clenched fist.";
			now the pink pill is held by the player;
		if Newly-tattooed is 1:
			say "Your lower back feels sore, and when you look you realize you[']ve had the word 'PROPERTY' tattooed on your back! Oh no!";
			now Newly-tattooed is 0;
		if inhuman pregnancy is 2 and tentacled is 1:
			now tentacled is 0;
			now player-breeder is in the location of the player;
			now the growth of player-breeder is 0;
			say "You see a suspiciously familiar body wrapped up by tentacles and stuck to the wall. Oh dear...";
		check immobility;
		refresh windows;
		zero focus stuff;
		display focus stuff;
		stop the action.


[!<SetLeftovers>+

We put an object in the room that contains some description about how the player fainted there in the past.

+!]
To Set Leftovers:
	repeat with X running through leftovers in the location of the player:
		remove X from play;
	let L be a random off-stage leftover;
	now L is in the location of the player;
	now the leftover-type of L is the fainting reason of the player.

[!<AThingIsImmuneToChange>+

Some things don't get reset when the player faints.

+!]
Definition: A thing (called I) is immune to change:
	if I is worn by the player or I is carried by the player or I is in the location of the player or I is in pink wardrobe or I is in HoleInWall or I is penetrating a body part or I is store clothing or I is in a pedestal, decide yes;
	if I is in School15:
		if I is rare clothing or I is evening dress or I is fetish dress, decide yes;
	decide no.

[!<RecideWhichObjectIsTheBiggestJewel>+

We remove the biggest jewel in the game universe when the player faints, this is how we calculate which jewel is the biggest jewel.

+!]
To decide which object is the biggest jewel:
	let N be 0;
	let bigJ be nothing;
	repeat with J running through in-play plentiful accessories:
		if the price of J > N and J is not in holding pen:
			now N is the price of J;
			now bigJ is J;
	decide on bigJ.

[!<RecideWhichObjectIsTheBiggestHeldJewel>+

Maybe an NPC wants to take away the player's best jewel.

+!]
To decide which object is the biggest held jewel:
	let N be 0;
	let bigJ be nothing;
	repeat with J running through held plentiful accessories:
		if the price of J > N:
			now N is the price of J;
			now bigJ is J;
	decide on bigJ.



Executing Fainting ends here.

