Recovering Clothing by Fainting begins here.


[!<RecoverClothing>+

REQUIRES COMMENTING

+!]
To Recover Clothing:
	repeat with I running through clothing:
		now I is not stuck;
		unless I is immune to change or map reset is 0:
			only destroy I;
		[if I is carried by the player:
			now I is in the location of the player;
			now the curse-ID of I is unsure;
			now the magic-ID of I is unidentified;]
		if I is worn yoga pants:
			if I is cursed:
				let G be a random off-stage cock pacifier;
				if G is actually summonable:
					summon G cursed;
					say "[bold type]As you are being warped back into the game, you feel your mouth filled with a [printed name of G][bold type]![roman type]  Somehow you know this is the doing of your [printed name of I]...";
			otherwise:
				now I is cursed;
		if I is worn store clothing, now I is stolen.

Recovering Clothing ends here.
