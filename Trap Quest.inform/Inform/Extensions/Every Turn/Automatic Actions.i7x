Automatic Actions by Every Turn begins here.


[!<continuedUrination:Integer>*

REQUIRES COMMENTING

*!]
continued urination is a number that varies.

[!<ComputeContinuedUrination>+

REQUIRES COMMENTING

+!]
To compute continued urination:
	if the player is in danger, say "You try to stop the flow but you can't!  You continue to [urinate]. ";
	otherwise say "[one of]Time passes as you[or]You[cycling] continue to [urinate]. ";
	compute urination;
	now another-turn is 1.

The compulsory action rules is a rulebook.

To compute compulsory actions:
	follow the compulsory action rules.

This is the compulsory urination rule:
	if continued urination is 1:
		compute continued urination;
	otherwise if delayed urination is 1 and busy is 0:
		let diaper-happened be 0;
		if the player is diapered and (the player is not bursting or the player is incontinent): [The player can be bursting and incontinent at the same time thanks to the prostate plug]
			let D be a random diaper worn by the player;
			if the bladder of the player > 0 and the urine-soak of D + the bladder of the player <= the soak-limit of D: [The player always notices properly if the diaper overflows.]
				let urine-before be the urine-soak of D;
				increase the urine-soak of D by the bladder of the player;
				now the bladder of the player is 0;
				say "You reach down to feel the front of your [printed name of D] and realise that it's [one of]much warmer and heavier than before. You must have used your diaper recently without even realising it![or]once again [if urine-before is 0]now quite damp[otherwise]much fuller than before[end if]. You must have wet yourself again![stopping][line break][variable custom style][if the diaper addiction of the player < 8][one of]Oh shit![or]Oh crap! Not again...[stopping][otherwise if the diaper addiction of the player < 12][one of]Uh-oh.[or]Oh dear, it looks like I really am incontinent![stopping][otherwise][one of]Wearing this diaper means I never have to worry about my bladder![or]This is great!  I just need to make sure I don't run out of diapers.[or]It feels nice and warm![or]Thank you Mr Diaper![or]I can't imagine life without diapers![then at random][end if][roman type][line break]";
				if diaper bonus > 0, compute wetting failure;
				let W be a random worn giant rattle;
				if W is a thing:
					if the raw-magic-modifier of W < 4:
						say "Your rattle glows blue for a moment!  It feels more powerful.";
						increase the raw-magic-modifier of W by 1;
				if a random number between 1 and 4 - (unlucky * 2) is 1 and D is not bed wetting:
					say "Your [D] glows softly. Something tells you it is now making you even more incontinent!";
					now D is bed wetting;
				now diaper-happened is 1;
				DiaperAddictUp 1;
		if diaper-happened is 0:
			if the player is bursting or diaper lover is 0, say "[bold type]You can't hold your bladder any more![roman type][line break]";
			otherwise say "[bold type]A warm wet feeling makes you realise that you're currently peeing yourself.[roman type][line break]";
			let old-bladder be the bladder of the player;
			try urinating;
			if old-bladder > the bladder of the player, now another-turn is 1;[We need to check this to verify that urination was successful. If it was prevented for any reason, then we don't want to create an infinite loop!]
		if debugmode is 1, say "resetting accidental urination flag.";
		now delayed urination is 0.
The compulsory urination rule is listed in the compulsory action rules.

This is the compulsory change rule:
	if diaper lover is 3 and there is worn messed knickers and (there is a changing the player monster or there is a spanking the player monster): [If the player is only into scene messing then we need to prevent the player from getting a chance to escape e.g. with the pink pill]
		now another-turn is 1.
The compulsory change rule is listed in the compulsory action rules.

This is the compulsory pussy expulsion rule:
	if the semen volume of vagina > 6 and vagina is not actually occupied, compute pussy expulsion.
The compulsory pussy expulsion rule is listed in the compulsory action rules.

[!<ComputeAutomaticActions>+

REQUIRES COMMENTING

+!]
To compute automatic actions:
	if delayed stand is 1:
		if there is a revealed hypno trap in the location of the player or there is a revealed haunted mirror trap in the location of the player or there is a revealed sprinkle trap in the location of the player or the location of the player is smoky: [The player might prefer to move first]
			now delayed stand is 0;
		otherwise:
			now seconds is 0;
			[say "[bold type]You try to stand up.[roman type][line break]";]
			try standing;
			now delayed stand is 0;
			now another-turn is 1.


Automatic Actions ends here.

