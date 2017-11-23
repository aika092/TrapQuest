Submitting by Actions begins here.

[!<YourselfIsHavingMaritalSex>+

REQUIRES COMMENTING

+!]
Definition: yourself is having marital sex:
	unless the player is a princess, decide no;
	unless princess-consort is monster, decide no;
	if princess-consort is grabbing the player or princess-consort is penetrating a body part, decide yes;
	decide no.

[!<submitting:Action>*

REQUIRES COMMENTING

*!]
Submitting is an action applying to nothing.

[!<CheckSubmitting>+

REQUIRES COMMENTING

+!]
Check submitting:
	if the number of live things penetrating a body part is 0 and the number of things grabbing the player is 0, say "You are not being fucked, so there is nothing to submit to!" instead;
	if there is a fucking daddy's hole monster:
		try resisting instead; [See resisting for more info on this mechanic]

[!<CarryOutSubmitting>+

REQUIRES COMMENTING

+!]
Carry out submitting:
	now the the player-reaction of the player is submitting;
	if the player is live fucked:
		if the player-class is succubus: 
			humiliate 125; [Implemented increased humiliation for any demoness submitting]
		otherwise if the relevant sex addiction of the player < 7:
			if the player is having marital sex, dignify 5;[princesses are humiliated less by sex with consorts.]
			otherwise humiliate 25;
		otherwise if the relevant sex addiction of the player < 14:
			if the player is having marital sex, dignify 10;
			unless the player is having marital sex, humiliate 15;
		otherwise:
			if the player is having marital sex, dignify 20;[princesses who accept their role fully are more confident after sex with their consorts]
	now seconds is 6.

[!<ReportSubmitting>+

REQUIRES COMMENTING

+!]
Report submitting:
	let M be a random thing grabbing the player;
	if M is nothing, now M is a random live thing penetrating a body part;
	unless M is nothing:
		if forced submit is 1:
			do nothing;[handled by the resisting function.]
		if the player is friendly fucked:
			say FriendlySexSubmissionFlav of M;
		otherwise:
			say SexSubmissionFlav of M.

[!<SaySexSubmissiveFlavOfThing>+

REQUIRES COMMENTING

+!]
To say SexSubmissionFlav of (T - a thing):
	if T is penetrating a body part, say "[one of]You lie still and accept the invasion.[or]You submit to being used as a plaything.[or]You don't resist being used.[purely at random]";
	otherwise say "[if T is live]You don't resist against the [T]'s acts[otherwise]You keep still and wait[end if].".

Understand "submit", "surrender", "resign", "give up", "give in", "forfeit", "yy", "yesway", "fuck" as submitting.

[!<ComputePlayerSubmission>+

REQUIRES COMMENTING

+!]
To compute player submission:
	repeat with M running through enjoys sex dangerous monsters in the location of the player:
		if the last-interaction of M is 0, say SubmissionFlav of M;
		if the player is having marital sex, dignify the sex addiction of the player * 3;
		otherwise humiliate 125;
		compute submission reaction of M;
	if there is an enjoys sex dangerous monster in the location of the player, say "[if the sex addiction of the player < 12]You feel incredibly [one of]self-conscious[or]nervous[or]shy[at random].[otherwise]In a moment of clarity, you are horrified to see what you have become.  The feeling soon fades and is replaced by shy enthusiasm.[end if]".

[!<ComputeSubmissionReactionOfMonster>+

REQUIRES COMMENTING

+!]
To compute submission reaction of (M - a monster):
	make M expectant.

[!<SaySubmissionFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say SubmissionFlav of (M - a monster):
	if M is intelligent:
		say "The [M] laughs at your submissiveness and prepares to [if diaper quest is 1]play with[otherwise]fuck[end if] you.  ";
	otherwise:
		say "The [M] prepares to assault you.  ".


To make (M - a monster) expectant: [This is in a function so that you can override it in a particular monster's definition if required.]
	unless M is survived, now M is triumphant;
	now the last-interaction of M is 2.

	
[!<ResetSubmittedMonsters>+

REQUIRES COMMENTING

+!]
To reset submitted monsters: [This means that making an aggressive move breaks any mini-cutscene where the player is slowly submitting to an NPC]
	repeat with M running through interested alive monsters:
		now the last-interaction of M is 0.



Submitting ends here.
