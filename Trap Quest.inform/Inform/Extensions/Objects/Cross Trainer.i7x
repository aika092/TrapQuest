Cross Trainer by Objects begins here.

cross trainer is a thing. The printed name of cross trainer is "[TQlink of item described]cross trainer[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of cross trainer is "ct". a cross trainer is not portable. cross trainer is in Hotel23. Understand "gym", "gymnasium", "machine" as cross trainer. cross trainer has a number called charge.

Figure of cross trainer is the file "Env/Hotel/crosstrainer1.png".

To decide which figure-name is the examine-image of (C - cross trainer):
	decide on figure of cross trainer.

To say ExamineDesc of (C - cross trainer):
	say "A standard looking high quality exercise machine. In the real world, a few months of regular use would result in an observable improvement in your fitness. In this world, you can only guess as to how it will affect you.".

Definition: cross trainer is immune to change: decide yes.

Check entering cross trainer:
	if the fatigue of the player > the buckle threshold of the player / 2 or the body soreness of the player > 4, say "You don't feel like you have enough energy." instead;
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the class of the player is the living sex doll, say "You're a sex doll, you're made for getting fucked. You don't need to exercise." instead;
	if the player is prone, say "You would need to be standing up." instead;
	if the charge of cross trainer > 0:
		allocate 6 seconds;
		say "You stand on the cross trainer and try to push forward, but the entire device won't budge. It looks like it's disabled for now, maybe it's recharging or something? You should try again later." instead;
	otherwise:
		let T be 0;
		let B be the buckle threshold of the player / (6 + the number of worn exercise themed wearthings);
		while the player is not in danger and the player is upright and T < 10:
			allocate 6 seconds;
			if B < the weight of the player, now B is the weight of the player;
			FatigueUp B;
			increase the fat-burning of the player by 70 + (50 * the number of worn exercise themed wearthings);
			increase the fat-burning of hips by 30 + (20 * the number of worn exercise themed wearthings);
			increase the fat-burning of arms by 50 + (30 * the number of worn exercise themed wearthings);
			increase the charge of cross trainer by 40;
			if T is 0, say "You stand on the cross trainer and push forward. The cross trainer kicks into motion and you start striding forward, exercising all your important muscles. [if the bimbo of the player > 14][line break][second custom style]All my important muscles except my butthole, tee-hee! [roman type][line break][end if]You [one of]get into a great rhythm, enjoying the exercise so much that you don't want to stop![or]once again slip into an enjoyable rhythm that makes you feel great![stopping]";
			otherwise say "[one of]You continue to enthusiastically exercise on the machine.[or][cycling][one of]You're slowly getting tired, but it's worth it to feel so great![or][stopping]";
			increase T by 1;
			compute arm fat burning;
			compute hip fat burning;
			compute extra turn;
		if the player is in danger, say "[bold type]You notice that you are in danger, so you stop.[roman type][line break]" instead;
		otherwise say "[variable custom style][one of]Well, that was an interesting experience![or]I feel great![stopping][roman type][line break]" instead.

Check drinking cross trainer:
	try entering the noun instead.

Cross Trainer ends here.
