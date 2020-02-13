Begging for Mercy by Actions begins here.

[!<begging:Action>*

REQUIRES COMMENTING

*!]
Begging is an action applying to nothing.

[!<CheckBegging>+

REQUIRES COMMENTING

+!]
Check begging:
	if the mercyskill of the player is 0 and the class of the player is not cheerleader and the player is not a sissy, say "You don't know this ability. Try [bold type]submit[roman type]ting for now." instead;
	if the player is not monster fucked and the number of monsters grabbing the player is 0:
		if there is a live thing penetrating a body part, try submitting instead;
		say "You are not being fucked, so there is nobody to beg to!" instead;
	if the player is friendly fucked, say "You don't need to beg for mercy, this is consensual sex!" instead;
	unless the player is able to speak:
		if the player is gagged:
			allocate 6 seconds;
			say "You try to beg for mercy, but all that comes out around your [ShortDesc of random thing filling face] is [line break][variable custom style]'Mm mm mmm mmmmph!'[roman type][line break]";
		otherwise if there is a live thing penetrating face:
			let M be a random live thing penetrating face;
			if M is a male intelligent monster:
				allocate 6 seconds;
				say "[variable custom style]'GGHGPHMMN!'[roman type][line break][big he of M] probably didn't understand that.";
			otherwise:
				say "[one of]How are you going to beg? Your mouth is full![or]You can't beg now, your mouth is full, silly![in random order]";
		otherwise if the player is able to trigger manual speech:
			do nothing; [Player has chosen to speak, so we allow it]
		otherwise:
			say "You can't do that while you can't speak." instead;
		now the player-reaction of the player is submitting instead;
	if the player is not able to speak, say "You can't speak right now!" instead.

[!<CarryOutBegging>+

REQUIRES COMMENTING

+!]
Carry out begging:
	let X be 0;
	allocate 6 seconds;
	now the player-reaction of the player is begging for mercy;
	humiliate 100;
	let N be a random monster penetrating a body part;
	if N is nothing, now N is a random monster grabbing the player;
	if the player is not having marital sex, humiliate 50;
	if N is monster:
		say MercyAsk of N;
		follow the speech penalties rules;
	repeat with M running through alive monsters:
		if M is penetrating a body part or M is grabbing the player, say MercyReaction of M.
Understand "beg", "beg for mercy", "beg mercy", "mercy", "pls", "grovel", "cry", "ny", "yn", "ty" as begging.

[!<SayMercyAskOfMonster>+

REQUIRES COMMENTING

+!]
To say MercyAsk of (N - a monster):
	if N is penetrating a fuckhole:
		if N is male and the rounds of sex left of N is 0 and N is unwrapped:
			say "[variable custom style]'[if the bimbo of the player < 8][one of]Don't cum in meee!'[or]Please, I can't take a creampie! I can't!'[or]Please, you're not wearing a condom! Please, you have to pull out![in random order][otherwise if the bimbo of the player < 13][one of]Wait, don't cum inside! Please, finish anywhere else!'[or]Pull out! I'll even let you cum on my face!'[or]Please pull out! Please, I'll let you finish on my tits!'[or]Please, don't cum inside! I'll let you finish ANYWHERE!'[or]Pull out! Come on, I let you do it raw the whole time![or]Can you pull out? You're not wearing a condom, you know...'[in random order][otherwise][one of]Why don't you pull out and cum on my tits, baby?'[or]Finish on my face! Finish on my FUCKING face!'[or]Babe, can you pull out? I promise I'll let you finish inside next time.'[in random order][end if][roman type][line break]";
		otherwise:
			say "[variable custom style]'[if the bimbo of the player < 8][one of]Do whatever you want, just don't hurt me!'[or]Please! You'll tear me apart!'[or]Please, you're hurting me!'[or]I can't take it! You win, just be gentle!'[in random order][otherwise if the bimbo of the player < 13][one of]Please, be gentle! I'll do ANYTHING!'[or]You win. Just be gentler, ok?'[or]Don't be so rough!'[or]You're hurting me!'[or]We both know you earned it, but be gentle!'[in random order][otherwise][one of]Come on, enjoy it! I already know I've been naughty.'[or]Hold on, [stud]! I want to feel good too!'[or]Slow down, sexy. I want to get punished RIGHT!'[or]Don't hurt me! I want you to fuck me just as much as you do!'[or]You're in charge! Enjoy this as MUCH as you want.'[or]Don't be too rough, I want to be tight for you next time!'[in random order][end if][roman type][line break]";
	otherwise:
		say "[variable custom style]'Please don't hurt me!'[roman type][line break]".

[!<SayMercyReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say MercyReaction of (M - a monster):
	if M is unintelligent, say "It doesn't look like [NameDesc of M] understands you.".


Begging for Mercy ends here.

