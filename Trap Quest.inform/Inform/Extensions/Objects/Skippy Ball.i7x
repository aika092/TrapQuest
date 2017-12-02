Skippy Ball by Sex Toys begins here.

Include Rideable Vehicles by Graham Nelson. [a rideable vehicle because we want to say that the player is on it rather than in it.]

The skippy ball is a kind of rideable vehicle. It is portable and pushable between rooms. The carrying capacity is always 1. A skippy dildo is a kind of dong. It is scenery. It is part of every skippy ball. There is 1 skippy ball. The text-shortcut of golden phallus is "skpb". Understand "skippy" as the skippy ball.

Understand the command "bounce" as "walk" when the player is on a skippy ball. Understand the command "jump" as "walk" when the player is on a skippy ball.

Check entering a skippy ball:
	if the player is staggering, say "You[']re bound to fall over with the size of your belly." instead;
	if there are worn heels, say "You cannot use the skippy bally when you're wearing heels." instead;
	if the player is ankle bound say "You[']re wearing ankle cuffs!" instead;

After entering the skippy ball (called S):
	if a skippy dildo (called D) is part of the S:
		if the size of D > 0:
			if the vagina is at least partially exposed:
				if the asshole is at least partially exposed:
					let R be the openness of the vagina;
					increase R by the openness of the asshole;
					now R is a random number between 0 and R;
					if R > the openness of the vagina:
						now D is penetrating the vagina;
					otherwise:
						now D is penetrating the asshole;
				otherwise:
					now D is penetrating the vagina;
				now D is worn by the player;
				humiliate 50;
			otherwise:
				if the asshole is at least partially exposed:
					now D is penetrating the asshole;
					now D is worn by the player;
					humiliate 50;
	say "Now you[']re sitting on the skippy ball.";
	now the stance of the player is 2.

A procedural rule: if the skippy ball encloses the player then ignore the standard report exiting rule.

After exiting when the skippy ball (called S) encloses the player:
	if a skippy dildo (called D) is part of the S:
		if D is worn by the player:
			if D is penetrating the asshole, now D is not penetrating the asshole;
			if D is penetrating the vagina, now D is not penetrating the vagina;
	say "Ok, you[']re no longer on it.";
	silently try standing.

[TODO: falling from the skippy ball]

Instead of throwing the skippy ball at:
	say "You don[']t want to break anything in here.".

Instead of attacking the skippy ball:
	say "You push the ball, and the ball pushes you back.".

Instead of touching the skippy ball:
	say "It feels like rubber, as expected.".

Instead of pushing, pulling or turning the skippy ball:
	say "The ball turns a bit.".

Instead of squeezing the skippy ball:
	say "You can only squeeze it a little.".

Instead of burning the skippy ball:
	say "Nope.".

Instead of cutting the skippy ball:
	say "Why would you?".

Instead of swinging the skippy ball:
	say "No, better not do that here.".

Instead of rubbing the skippy ball:
	say "It makes a squeaking sound.".

Instead of buying the skippy ball:
	say "It[']s not for sale.".

Instead of climbing the skippy ball:
	say "Are you trying to break your neck?".


Skippy Ball ends here.
