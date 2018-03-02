Requested Sex by Monster Framework begins here.

Definition: a thing (called T) is friendly fucking:
	if T is not monster, decide no;
	if T is not friendly-fucking, decide no;
	if T is unfriendly, decide no;
	if T is not penetrating a body part, decide no;
	decide yes;

Definition: yourself is friendly fucked:
	if the number of live things penetrating a body part is 0, decide no;
	repeat with T running through live things penetrating a body part:
		if T is not friendly fucking, decide no;
	decide yes.

To check consensual submissive sex of (M - a monster):
	now current-monster is M;
	follow the monster friendly convinced rule of M;
	if the rule succeeded:
		now the chosen-orifice of M is presented-orifice;
		now M is friendly-fucking;
		FavourUp M by the sex desire of M;
		follow the insertion rules of M;
	otherwise:
		if presented-orifice is nothing, say "The [M] can't seem to understand what you want from [him of M].".

To decide which number is the sex desire of (M - a monster):
	decide on 1. [How much favour does the player gain from fucking them?]

This is the default monster friendly convinced rule:
	if presented-orifice is a reasonable target and the refactory-period of current-monster <= 0:
		now the chosen-orifice of current-monster is presented-orifice;[This is on top so flavor can refer to chosen orifice.]
		say "[PresentFriendlyAcceptanceFlav of current-monster]";
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentFriendlyRejectionFlav of current-monster]".

To say PresentFriendlyAcceptanceFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'You're on!'[roman type][line break]";
	otherwise say "The [M] seems convinced by your request!".

To say PresentFriendlyRejectionFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[if presented-orifice is a reasonable target and the refactory-period of M > 0]I need some time to recover from our last session!'[otherwise if presented-orifice is a potential target]Not interested.'[otherwise]Not today, honey. I don't feel like it.'[end if][roman type][line break]";
	otherwise say "The [M] seems to ignore your request.".





To say FriendlyBreastsPenetrationFlav of (M - a monster):
	say "The [M] places [his of M] [manly-penis] in between your [ShortDesc of breasts], and begins thrusting!". [This needs changing for every monster!  It's boring and might not even be accurate if the monster isn't male.]

To say FriendlySexResistFlav of (T - a thing):
	say "You squirm but can't get away!".

To say FriendlySexResistFlav of (M - a monster):
	if the player is able to speak, say "[variable custom style]'[if the player is in danger][one of]Oh god, we have to stop now!'[or]Uh-oh. Please get off quickly, I need to deal with this!'[or]FUCK!'[at random][otherwise][one of]This was fun, but we need to stop now.'[or]I'm finished now, please let me go!'[or]I've changed my mind, I don't want this!'[or]Sorry, I'm not feeling it any more.'[at random][end if][roman type][line break]";
	otherwise say "[if the player is able to make sounds][variable custom style][muffled sounds][roman type][line break][end if]";
	if M is penetrating an orifice, say "[one of]You tap the [M] on the [if M is human]shoulder[otherwise]back[end if], trying to get [him of M] to stop.[or]You try to yank your [if M is penetrating a fuckhole]hips[otherwise if M is penetrating face]head[otherwise]body[end if] away from the [M]'s grasp.[or]You try and pull the [M] [if M is penetrating an orifice]out[otherwise]off[end if] of you.[or]You turn and try to push the [M] off you.[purely at random]";
	otherwise say "You squirm but can't get away!".

To say FriendlySexSubmissionFlav of (T - a thing):
	if number of body parts penetrated by T < 1:
		say "You let the [T] keep going.";
	if T is penetrating face and T is monster:
		do nothing;[handled by the monster itself, usually]
	otherwise if the player is feeling dominant:
		say "[one of]You lie still and allow the [T] to keep going.[or]You submit to the [T][if T is monster], hoping [he of T] won[']t realize you aren[']t really in charge[end if].[or]You stay still and let yourself be used.[or]You push back against the [T][if T is monster], eager to have this over and done with as soon as possible[end if].[or]You silently submit to the [T], forcing yourself not to resist.[or]You 'allow' the [T] to keep going unhindered.[in random order]";
	otherwise:
		say "[one of]You lie still and allow yourself to enjoy the stimulation.[or]You eagerly submit to the [T][if T is monster] - you know who's in charge[end if].[or]You are happy just staying still and letting yourself be used.[or]You push back against the [T][if T is monster] to get [him of T] nice and worked up[end if]![or]You clench your muscles, joining in the same rhythm of the [T].[or]You vigorously thrust your [random body part penetrated by T] back and forth![in random order]".

To compute FriendlySexRelease of (M - a monster):
	if M is willing to let go:
		say FriendlySexReleaseFlav of M;
		increase the blue-balls of M by 1;
		dislodge M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

Definition: a monster (called M) is willing to let go:
	if the blue-balls of M < the blue-balls-limit of M, decide yes;
	if M is mating, decide yes;
	decide no.

To say FriendlySexReleaseSpeech of (M - a monster):
	say "[speech style of M]'Oh, how disappointing.'[roman type][line break]";
	FavourDown M by the sex desire of M.

To say FriendlySexReleaseFlav of (M - a monster):
	if M is intelligent, say FriendlySexReleaseSpeech of M;
	say "The [M] pulls [if M is penetrating an orifice]out[otherwise]away[end if].".

To say FriendlySexReleaseRefusalSpeech of (M - a monster):
	say "[speech style of M]'[one of]Yeah, that's not going to happen.'[or]You've got to be kidding, I'm not done yet.'[or]We're done when I say we're done.'[or]Fuck you, I'm not stopping until I get my [if M is male]nut[otherwise]fill[end if].'[or]Ha ha ha, no way.'[or][if the sex-length of M is 1]I'm way too close to stop now!'[otherwise]Oh there's a long time to go yet before we can stop.'[end if][in random order][roman type][line break]".

To say FriendlySexReleaseRefusalFlav of (M - a monster):
	if M is intelligent, say FriendlySexReleaseRefusalSpeech of M;
	say "The [M] refuses to let you go!".



Requested Sex ends here.

