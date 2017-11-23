Begging for Mercy by Actions begins here.

[!<begging:Action>*

REQUIRES COMMENTING

*!]
Begging is an action applying to nothing.

[!<CheckBegging>+

REQUIRES COMMENTING

+!]
Check begging:
	if the mercyskill of the player is 0 and the player is not a cheerleader and the player is not a sissy, say "You don't know this ability.  Try [bold type]submit[roman type]ting for now." instead;
	if the player is not monster fucked and the number of monsters grabbing the player is 0:
		if there is a live thing penetrating a body part, try submitting instead;
		say "You are not being fucked, so there is nobody to beg to!" instead;
	if the player is friendly fucked, say "You don't need to beg for mercy, this is consensual sex!" instead;
	if the player is gagged:
		now seconds is 6;
		say "You try to beg for mercy, but all that comes out around your [printed name of random ballgag worn by the player] is [variable custom style]'Mm mm mmm mmmmph!'[roman type][line break]";
		now the the player-reaction of the player is submitting instead;
	if there is a live thing penetrating face:
		now seconds is 6;
		say "[one of]How are you going to beg? Your mouth is full![or][if a random live thing penetrating face is a male intelligent monster][variable custom style]'GGHGPHMMN!'[roman type] He probably didn't understand that.[otherwise]You can't beg now, your mouth is full, silly![end if][in random order]" instead;
	if the player is not able to speak, say "You can't speak right now!" instead.

[!<CarryOutBegging>+

REQUIRES COMMENTING

+!]
Carry out begging:
	let X be 0;
	now seconds is 6;
	now the the player-reaction of the player is begging for mercy;
	humiliate 100;
	let N be a random monster penetrating a body part;
	if the player is not having marital sex, humiliate 50;
	if N is monster, say MercyAsk of N;
	repeat with M running through monsters penetrating a body part:
		say MercyReaction of M.
Understand "beg", "beg for mercy", "beg mercy", "mercy", "pls", "grovel", "cry", "ny", "yn", "ty" as begging.

[!<SayMercyAskOfMonster>+

REQUIRES COMMENTING

+!]
To say MercyAsk of (N - a monster):
	if N is penetrating a fuckhole, say "[variable custom style]'[if the bimbo of the player < 8][one of]Do whatever you want, just don't hurt me!'[or]Please! You'll tear me apart!'[or]Please, you're hurting me!'[or]I can't take it! You win, just be gentle!'[in random order][otherwise if the bimbo of the player < 13][one of]Please, be gentle! I'll do ANYTHING!'[or]You win. Just be gentler, ok?'[or]Don't be so rough! That hurts!'[or]You're hurting me!'[or]We both know you earned it, but be gentle!'[in random order][otherwise][one of]Come on, enjoy it! I already know I've been naughty.'[or]Hold on, [stud]! I want to feel good too!'[or]Slow down, sexy. I want to get punished RIGHT!'[or]Don't hurt me! I want you to fuck me just as much as you do!'[or]You're in charge! Enjoy this as MUCH as you want.'[or]Don't be too rough, I want to be tight for you next time!'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style]'Please don't hurt me!'[roman type][line break]".

[!<SayMercyReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say MercyReaction of (M - a monster):
	if M is not intelligent, say "It doesn't look like the [M] understands you.".


Begging for Mercy ends here.
