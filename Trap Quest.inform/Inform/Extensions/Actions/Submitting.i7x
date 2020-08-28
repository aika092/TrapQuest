Submitting by Actions begins here.

Definition: yourself is having marital sex:
	unless the class of the player is princess, decide no;
	unless princess-consort is monster, decide no;
	if princess-consort is grabbing the player or princess-consort is penetrating a body part, decide yes;
	decide no.

Submitting is an action applying to nothing.

Check submitting:
	if the number of live things penetrating a body part + the number of things grabbing the player + the number of things wrangling a body part is 0, say "You are not being held in place, so there is nothing to submit to!" instead;
	if there is a fucking daddy's hole monster or there is a wrong race fucking monster:
		try resisting instead; [See resisting for more info on these mechanics]

Carry out submitting:
	now the player-reaction of the player is submitting;
	if diaper quest is 1 and there is a live thing grabbing the player:
		moderateHumiliate;
	otherwise if the player is live fucked:
		if the player-class is succubus:
			humiliate 125; [Implemented increased humiliation for any demoness submitting]
		otherwise if (the player is shameless or the player is feeling submissive) and the player is not having marital sex:
			do nothing; [shameless players don't find submissive sex to be embarrassing]
		otherwise if the relevant sex addiction of the player < 7:
			if the player is having marital sex, dignify 5;[princesses are humiliated less by sex with consorts.]
			otherwise humiliate 25;
		otherwise if the relevant sex addiction of the player < 14:
			if the player is having marital sex, dignify 10;
			otherwise humiliate 15;
		otherwise:
			if the player is having marital sex, dignify 20;[princesses who accept their role fully are more confident after sex with their consorts]
	allocate 6 seconds.

Report submitting:
	let M be a random thing grabbing the player;[prioritize anyone holding the player down]
	if M is nothing, now M is a random live thing penetrating a body part;[next, prioritize anyone inside the player]
	if M is nothing, now M is a random thing wrangling a body part;[Lastly, we take a look at any holders on.]
	unless M is nothing or (diaper quest is 1 and M is live):
		if forced submit > 0:
			if forced submit > 1, do nothing instead;[handled by the resisting function, since we don't know the reason why the player can't resist unless we do it there]
			now forced submit is 0;
		if the player is friendly fucked:
			say FriendlySexSubmissionFlav of M;
		otherwise:
			if M is penetrating a body part or M is grabbing the player:
				say SexSubmissionFlav of M;
			otherwise:
				compute wrangled submitting of M.

To compute wrangled submitting of (T - a thing):
	say SexSubmissionFlav of T.

To say SexSubmissionFlav of (T - a thing):
	if T is penetrating a body part, say "[one of]You lie still and accept the invasion.[or]You submit to being used as a plaything.[or]You don't resist being used.[purely at random]";
	otherwise say "[if T is live]You don't resist against the [T]'s acts[otherwise]You keep still and wait[end if].".

Understand "submit", "surrender", "resign", "give up", "give in", "forfeit", "yy", "yesway", "fuck" as submitting.

To compute player submission:
	repeat with M running through awake monsters in the location of the player:
		if the last-interaction of M is 0 and M is enjoys sex dangerous monster, say SubmissionFlav of M;
		if the player is having marital sex, dignify the sex addiction of the player * 5;
		otherwise humiliate 125;
		compute submission reaction of M;
	if there is an enjoys sex dangerous monster in the location of the player, say "[if the player is feeling dominant]You grit your teeth and try to suppress your rage.[otherwise]In a brief moment of clarity, you are horrified to see what you have become. The feeling soon fades and is replaced by shy enthusiasm.[end if]".

To compute submission reaction of (M - a monster):
	make M expectant.

To say SubmissionFlav of (M - a monster):
	if M is intelligent:
		say "[BigNameDesc of M] laughs at your submissiveness and prepares to [if diaper quest is 1]play with[otherwise]fuck[end if] you. ";
	otherwise:
		say "[BigNameDesc of M] prepares to assault you. ".

To make (M - a monster) expectant: [This is in a function so that you can override it in a particular monster's definition if required.]
	if M is unfriendly and M is not survived, now M is triumphant;
	if M is unfriendly or the player is in danger, now the last-interaction of M is 2.

To reset submitted monsters: [This means that making an aggressive move breaks any mini-cutscene where the player is slowly submitting to an NPC]
	repeat with M running through interested alive monsters:
		now the last-interaction of M is 0.

Submitting ends here.
