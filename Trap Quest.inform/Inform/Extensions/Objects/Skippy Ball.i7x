Skippy Ball by Objects begins here.

Include Rideable Vehicles by Graham Nelson. [a rideable vehicle because we want to say that the player is on it rather than in it.]

The skippy ball is a kind of rideable vehicle. It is portable and pushable between rooms. The carrying capacity is always 1. A skippy dildo is a kind of dong. It is scenery. It is part of every skippy ball. There is 1 skippy ball. The text-shortcut of skippy ball is "skpb". Understand "skippy" as the skippy ball. The skippy ball can be glue-stuck. The skippy ball is usually not glue-stuck. The skippy ball has a number called stickiness. The stickiness of the player is usually 0.

Does the player mean getting off the skippy ball when the player is on a skippy ball:
	It is very likely.

[Does the player mean getting on the skippy ball when there is a skippy ball:
	It is likely.]

Check an actor entering the skippy ball:
	if the player is staggering, say "You[']re bound to fall over with the size of your belly. " instead;
	if there are worn heels, say "You cannot use the skippy bally when you're wearing heels. " instead;
	if the player is ankle bound, say "That won[']t while wearing ankle cuffs. " instead.

[Before doing something other than greeting something (called O) when the player is on a Skippy Ball (called S):
	if O is not S:
		try getting off S;
		if the player is on S:
			say "You[']re currently on a skippy ball." instead.]

Check an actor getting off the skippy ball (called S):
	if the player is not on S, say "You're not on the skippy ball. " instead;
	if the stickiness of S > 0, say "You cannot get off the skippy ball, you are still glued to it! " instead.

To get thrown off (S - a skippy ball):
	if the player is mounted and the player is on S:
		if the stickiness of S > 0:
			decrease the stickiness of S by 1;
		if the stickiness of S > 0:
			say "The glue on S prevents you from falling off. ";
		otherwise:
			let X be the trip hazard of the player;
			let D be a random number between 5 and 25;
			if D < X:
				silently try kneeling;
				say " ..and you fall on the ground. ";
				if autostand is 1 and the player is prone, now delayed stand is 1;
			otherwise:
				increase the fat-burning of the player by 2;
				silently try standing;
				say "You somehow keep your footing. ";
			say "[bold type]You[']re still in the [location of the player].[roman type]".

To pick the penetration of (D - a skippy dildo):
	if the size of D > 0:
		if the vagina is at least partially exposed:[always false for male]
			let X be the vagina;
			if the asshole is at least partially exposed:
				let R be the openness of X;
				increase R by the openness of the asshole;
				if a random number between 0 and R < the openness of X:
					now X is the asshole;
			now D is penetrating X;
			now D is worn by the player;
			humiliate 50;
			say "As you mount the skippy ball, you feel the dildo mounted on it sliding itself in your [ShortDesc of X]. ";
		otherwise:
			if the asshole is at least partially exposed:
				now D is penetrating the asshole;
				now D is worn by the player;
				humiliate 50;
				say "As you sit down on the skippy ball, the dildo mounted on it drives itself in your [ShortDesc of asshole]. ".

To end the penetration of (D - a skippy dildo):
	if D is worn by the player:
		let X be the vagina;
		if D is penetrating the asshole, now X is the asshole;
		now D is not penetrating X;
		say "As you get off the skippy ball, the dildo mounted on it leaves your [ShortDesc of X], still slick with your juices. ".

After entering the skippy ball (called S):
	if a skippy dildo (called D) is part of S, pick the penetration of D;
	say "Now you[']re sitting on the skippy ball.";
	now the stance of the player is 2.

A procedural rule: if the skippy ball encloses the player then ignore the standard report exiting rule.

After exiting when the skippy ball (called S) encloses the player:
	if a skippy dildo (called D) is part of S, end the penetration of D;
	say "Ok, you[']re no longer on it.";
	silently try standing.

Instead of throwing the skippy ball at:
	say "You don[']t want to break anything in here.".

Instead of attacking the skippy ball:
	say "You push the ball, and the ball pushes you back.".

Instead of touching the skippy ball (called S):
	if the stickiness of S > 0:
		say "The skippy ball feels a bit sticky.";
	otherwise:
		say "It feels like rubber, as expected.".

Instead of pushing, pulling or turning the skippy ball (called S):
	if the player is mounted and the player is on S:
		if the stickiness of S > 0:
			decrease the stickiness of S by 1;
		if the stickiness of S is 0:
			say "You managed to pull yourself free from the skippy ball";
			increase the fat-burning of the player by 1;
			try getting off S;
	if S is not glue-stuck:
		say "The ball turns a bit.";
	otherwise:
		if the strength of the player > a random number between 1 and 5:
			now S is not glue-stuck;
			if a skippy dildo (called D) is part of S:
				now D is glued;
			say "You managed to pull the skippy ball loose. ";
		otherwise:
			say "You weren't able to pull it free. ";

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

Instead of climbing the skippy ball (called S):
	try entering S;


Skippy Ball ends here.
