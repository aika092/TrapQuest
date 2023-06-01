Real Life Patron by Monster begins here.

[
The player's friends have an understanding that they are being called from within the VR game, but they may or may not know the /nature/ of that game.

Essentially, they think they're here to observe "testing" until they see you doing something really slutty. Also, Nintendolls marketing ploy!?
]

A real-life patron is a kind of patron. A real-life patron has a number called friend-max-appearance. The friend-max-appearance of a real-life patron is usually 1. A real-life patron has a text called friend-old-name. The friend-old-name of a real-life patron is usually "none".
A real-life patron can be real-seenNaked. A real-life patron is usually not real-seenNaked.
A real-life patron can be friend-shocked. A real-life patron is usually not friend-shocked.
A real-life patron can be reconciled. [The player and the patron are now (permanently) on good terms.]
A real-life patron has a number called times-called.

Definition: a real-life patron is wenchy: decide no.
Definition: a real-life patron is father material: decide no.

To unique reset (M - a real-life patron):
	now the blue-balls of M is 0;
	now the text-shortcut of M is the substituted form of "[MediumDesc of M]".

Definition: a real-life patron (called P) is generic-appropriate:
	if the player is the donator:
		if P is unfriendly, decide yes;
	otherwise:
		decide no.

Definition: a real-life patron is uniquely unfriendly:
	if it is friend-shocked, decide yes;
	decide no.

To say NameDesc of (C - a real-life patron):
	say "[input-style][MediumDesc of C][roman type]".

To say BigNameDesc of (C - a real-life patron):
	say "[input-style][MediumDesc of C][roman type]".

To say FuckerDesc of (C - a real-life patron):
	say MediumDesc of C.

To say BigFuckerDesc of (C - a real-life patron):
	say MediumDesc of C.

To say RelationDesc of (M - a real-life patron):
	say "[PlatonicRole]".

Definition: a real-life patron is presenting as male:
	if PlatonicGender is "masculine gender", decide yes;
	decide no.

To say MonsterDesc of (M - a real-life patron):
	say "This is your [RelationDesc of M], [MediumDesc of M]. You know [him of M] from outside the game, but after seeing you act like a [if diaper quest is 1]baby[otherwise]whore[end if] so many times, [he of M][']s paid a lot of money to [if diaper quest is 1]degrade you[otherwise]try you out[end if] [himself of M]!".

To compute patronEncounter of (M - a real-life patron):
	if M is in the location of the player:
		say "You hear the sound of a camera shuttering, and turn to see [if the times-met of M is 0]what looks like [end if]your [RelationDesc of M], [MediumDesc of M] in the corner of the room, snapping pictures. [if the times-met of M is 0]Before you can be sure it's even [him of M], [otherwise]Before you can even try to stop [him of M], [end if][he of M] smirks and leaves the room!";
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a candid snapshot of you wearing [if there is a worn overdress]a [ShortDesc of a random worn overdress][otherwise]your birthday suit[end if]";
		now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment 'Yes, this is really [friend-old-name of M]!'";
		if there is a worn overdress:
			let W be a random worn overdress;
			let O be the unique outrage of W;
			now the severity entry is O * 50;
		otherwise:
			now the severity entry is 500;
		now the popularity entry is 0;
		now the viewsfuzz entry is 0;
		now the lastwitnessed entry is 0;
		now the deletedtime entry is 0;
		now the timestamp entry is 0;[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]
	otherwise:
		compute genericPatronEncounter of M.

[Describes the player's friend reacting to their current name.]
To say NewNameReact of (M - a real-life patron):
	if the friend-old-name of M is not NameBimbo, say "[speech style of M]'Hello, ['][NameBimbo][']. Your new name really suits you.'[roman type][line break][moderateHumiliateReflect]";
	otherwise say "[speech style of M]'Hello again, ['][NameBimbo]['].'[roman type][line break][moderateHumiliateReflect]";
	now the friend-old-name of M is the substituted form of "[NameBimbo]".

To say LongDickDesc of (M - a real-life patron):
	say PlatonicEquipment.

To decide which number is the girth of (M - a real-life patron):
	let L be the substituted form of "[LongDickDesc of M]";
	if L is "small strapon" or L is "small penis":
		decide on 2;
	otherwise if L is "huge strapon" or L is "huge penis":
		decide on 4;
	otherwise:
		decide on 3.

To say PatronPaymentFlav of (M - a real-life patron):
	say "[speech style of M]'See you, [NameBimbo].'[roman type][line break]";

To say PissedOffFlav of (M - a real-life patron):
	say "[speech style of M]'[one of]Sorry, [NameBimbo]. I'm not supposed to pay if you don't behave.'[or]I'm not going to pay, [NameBimbo]. I can't reward your behaviour.'[or]I'll have to complain about this, [NameBimbo].'[or]I can only pay if you're obedient. Sorry, [NameBimbo].'[in random order][roman type][line break]".

[
The beginning of a video call looks something like this:

<monitor activation> <specific friend intro> <appearance reaction> <circumstance reaction> <player reaction to friend>
]

[represents the first part of the friend's greeting for the player]
To say NewAppearanceReaction of (M - a real-life patron):
	if domino-mask is worn:
		say "[speech style of M]'This is a weird pop-up. What the hell sort of livestream is this? A cosplay superhero battle?'[roman type][line break]";
	otherwise:
		let P be the appearance of the player;
		if diaper quest is 1, now P is the cringe appearance of the player;
		let S be the friend-max-appearance of M;
		let B be the friend-old-name of M;
		say "[speech style of M]'[if P < 6 and S < 6]Wow, [B], it really is you. [otherwise if S > P or the times-called of M > 0]Hello, [B]. [otherwise][B]?! Is that really you?! [end if][run paragraph on]";[we always start by using the player's last known name, and giving the player a hint about shock.]
		if a random number between 0 and the number of applicable humiliating situations is 0:
			say GenericSituationReaction of M;
		otherwise:
			say FriendReaction of M to a random applicable humiliating situation;
		let X be P - the friend-max-appearance of M;
		if X > 0:
			if X >= 6:[if you exceed the current max by nine, your friend is too shocked, and they're much more likely to share around your video]
				now M is friend-shocked;
			now the friend-max-appearance of M is the appearance of the player;
		if the player is naked and M is not real-seenNaked, now M is real-seenNaked.

[generic reaction to seeing the player]
To say GenericSituationReaction of (M - a real-life patron):
	let P be the appearance of the player;
	let CA be -1;
	if diaper quest is 1, now CA is the cringe appearance of the player;
	let S be the friend-max-appearance of M;
	if P > CA and P < 3:
		if S >= 3, say "... You're definitely looking more presentable than you did earlier. ";
		otherwise say "[one of]So this is the cutting edge VR game you were bragging about? [or]I still can't believe you're calling me from inside a game. [stopping] ";
	otherwise if the player is naked and P < 10 and CA < 10:
		if M is real-seenNaked, say "Why are you naked?! ";
		otherwise say "... You're naked again. ";
	otherwise if P > CA and P < 6 and the player is gendered male and the largeness of breasts < 4:
		if S < 3, say "... are you trying to tell me something with that outfit? ";
		otherwise say "... is this how you're going to dress from now on? ";
	otherwise if CA >= P and CA < 6:
		if S < 3, say "Is that what you wear when I'm not around? (What a weirdo...) ";
		otherwise say "So that really is what you like to wear. (Weirdo...) ";
	otherwise if P > CA and P < 6:
		if S < 3, say "Is that what you wear when I'm not around? (What a slut...) ";
		otherwise say "So that really is what you like to wear. (Slut...) ";
	otherwise if CA >= P and CA < 9:
		if S < 9, say "You look like a baby?! ";
		otherwise say "So you're still dressing like a baby. ";
	otherwise if P > CA and P < 9:
		if S < 9, say "You look like a whore. ";
		otherwise say "So you're still dressing like a whore. ";
	otherwise if CA >= P and CA < 12:
		if S < 9, say "... Is there a reason you look so DISGUSTING?";
		otherwise say "This isn't a game to you, is it? It's just your fantasy. ";
	otherwise if P > CA and P < 12:
		if S < 9, say "... Is there a reason you look like a PORN STAR? [if the player is naked]I mean, you're naked. [otherwise]You might as well be naked. [end if]";
		otherwise say "This isn't a game at all, is it? You're probably just calling me from an adult film set right now. ";
	otherwise:
		if S < 16, say "This can't be real! There's no way that's actually you! ";
		otherwise say "... No matter what kind of game this is, no self-respecting person would ever let anyone see them in such a state. I hope you know that. ".


[Allows the player's friends to react to specific situations like "covered in semen", stuff like that.]
To say FriendReaction of (M - a real-life patron) to (A - a humiliating situation):[BIG TODO]
	say GenericSituationReaction of M.

[Second part of the friend's greeting. Can change slightly depending on what monsters are around.]
To say NewCircumstanceReaction of (M - a real-life patron):
	if domino-mask is not worn:
		let N be a random combative monster;
		if N is patron and diaper quest is 0:
			say "[one of][if M is friend-shocked]I thought the developers were lying when they told me you were about to whore yourself out, but the truth is right here in front of me.'[otherwise]You wouldn't believe what the developers told me. They actually said you were whoring yourself out for this guy. That isn't true, right?'[end if][or][if M is friend-shocked]Are you whoring yourself AGAIN?'[otherwise]This prostitution thing isn't funny, you know.'[end if][at random][roman type][line break]";
		otherwise:
			if the times-called of M < 2:
				if M is friend-shocked:
					say "Now I understand why the developers wanted me to record everything. Wow.'[roman type][line break]";
				otherwise:
					say "Anyway, the developers invited me to look in on your beta test, as long as I agreed to record it. I don't understand what they need me for, but oh well.'[roman type][line break]";
			otherwise:
				if M is unfriendly:
					say "I can't wait to see how you're going to [if diaper quest is 1]disgrace yourself[otherwise]whore it up[end if] this time.'[roman type][line break]";
				otherwise:
					if M is friend-shocked, say "You know I'm recording all of this, right?'[roman type][line break]";
					otherwise say "Anyway, I'll be watching until you take down [NameDesc of N][speech style of M].[roman type][line break]".

[Displays player's response to whatever their friend says in NewCircumstanceReaction]
To say FriendRespond to (M - a real-life patron):
	if domino-mask is not worn:
		let N be a random combative monster;
		if N is patron and diaper quest is 0:
			if the player is able to speak:
				say "[variable custom style]'Well, [he of N]'s trying to pay me for sex- BUT! But, I'm not going to play along! This isn't even real-'-[line break][roman type]Your attempt to explain the insane situation is hindered by a chuckle from [if the number of patrons in the location of the player > 1]one of the half-naked [men of N][otherwise]the half-naked [man of N][end if] behind you.[line break][speech style of M]'Haha, yeah, sure, I'm a figment of your imagination. Tell yourself whatever you have to, Sunshine, but you're not getting paid until my imaginary [DickDesc of M] has jizzed its imaginary load.'[roman type][line break]You turn bright red.";
				slightHumiliate;
			otherwise:
				say "[variable custom style]Oh no! Now [he of M] thinks I'm a prostitute![roman type][line break]";
		otherwise:
			if the player is not able to speak, say "[variable custom style]'[if there is a worn ballgag]Mmm?! Mm-mm! Mm-mm!'[otherwise]Uuooah?! Uh-uh! Uh-uh!'[end if][roman type][line break]You desperately try to let your friend know that you don't want to be recorded, but with no ability to speak, you know you aren't going to get your message through to them. Looks like you'll have to deal with [NameDesc of N] first!";
			otherwise say "[variable custom style]'What?! No, wait, you can't record this! Please just hang up!'[roman type][line break]You try talk your friend into ending the call, but [NameDesc of N] is still demanding your full attention. Looks like you'll have to deal with [him of N] first!".

To compute (M - a real-life patron) protecting against (X - a monster):
	if M is not in the location of the player, say BaseObservationFlav of M;
	if M is in the location of the player:
		do nothing;[for now]
	otherwise if there is a monster penetrating a body part or there is a monster grabbing the player:
		if X is penetrating a body part or (diaper quest is 1 and X is grabbing the player):
			if domino-mask is worn, say MaskedSexObserve of M with X;
			otherwise say SexObserve of M with X;
		otherwise:
			let N be a random monster penetrating a body part;
			if N is nothing, now N is a random monster grabbing the player;
			if domino-mask is worn, say MaskedSexObserve of M with N;
			otherwise say SexObserve of M with N;
	otherwise:
		if domino-mask is worn, say MaskedFightObserve of M with X;
		otherwise say FightObserve of M with X.

To say BaseObservationFlav of (M - a real-life patron):
	say "[MediumDesc of M] continues to watch [one of]the action[or]you[purely at random][if M is unfriendly][one of], [his of M] hand moving just off-screen.[or].[or], clearly playing with [himself of M] off-screen.[or].[then at random][otherwise][one of], mouth wide open.[or].[or]in total disbelief.[or].[then at random][end if][line break]";

[Each turn spent fighting, this will display]
To say FightObserve of (M - a real-life patron) with (N - a monster):
	if the player is prone, say "[speech style of M]'[one of]Stand up and fight back, you pathetic [if diaper quest is 1]baby[otherwise]whore[end if]!'[or]What are you doing down there? Are you giving up?'[or]You're not about to do what I think you are, are you, [friend-old-name of M]?'[at random][roman type][line break][moderateHumiliateReflect]".

To say MaskedFightObserve of (M - a real-life patron) with (N - a monster):
	if the player is prone:
		say "[speech style of M]'[one of]Stand up and fight back, you pathetic hero!'[or]What are you doing down there? Are you giving up?'[at random][roman type][line break]".

[Each turn spent having sex with a monster, this will display]
To say SexObserve of (M - a real-life patron) with (N - a monster):
	say DefaultSexObserve of M with N.

To say DefaultSexObserve of (M - a real-life patron) with (N - a monster):
	say "[speech style of M]'[one of]I hope you're ashamed of yourself.'[or]Do you even know this [man of N][']s name?!'[or]I can't believe I'm watching this. Disgusting!'[or]You're enjoying this, aren't you?'[or]How long is this going to take?!'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To say MaskedSexObserve of (M - a real-life patron) with (N - a monster):
	say "[speech style of M]'[one of]What a pathetic [if diaper quest is 1]display[otherwise]slut[end if]! This is what happens when you let a villain get the better of you, you idiot superhero!'[or]You'd better hope [he of N] doesn't unmask you, you stupid bitch!'[stopping][if the player is not disgraced][line break][variable custom style]'[one of]Thank god I'm masked right now!'[or]Please no!'[stopping][end if][roman type][line break]".

[The player's friend hangs up the call without anything super humiliating happening.]
To compute HangUpUndisgraced of (C - a video-monitor) with (M - a monster):
	say "[speech style of M]'Well, that certainly was something. By the next time I see you, I hope you have your act together, [friend-old-name of M].'[roman type][line break]".

[when the friend shows up as a patron]
To compute appearance assessment of (M - a real-life patron):
	say NewNameReact of M.

To say SingleWaitingFlavTQ of (M - a real-life patron):
	if the times-submitted of M is 0:
		say "[one of]You stare up at [NameDesc of M], still in shock. [or]You sigh, having lost any real hope of negotiation being successful. [stopping][line break][variable custom style]'This has to be a misunderstanding...'[roman type][line break][line break]Unsurprisingly, [he of M] completely ignores you.";
	otherwise if the sex addiction of the player < 12:
		say "You stare at [NameDesc of M] nervously.[line break][variable custom style]'[one of]This has to be some kind of mistake. There's no way you'd actually agree to this...'[or]This is all a misunderstanding... My reputation is going to be ruined.'[or]You actually paid to have sex with me...'[or]We're actually going to do this. This isn't just a joke....'[in random order][roman type][line break]";
	otherwise:
		say "You look up at [NameDesc of M] and smile gently.[line break][variable custom style]'[one of]If it's you, I'd like to do it for free, but you know how it is.'[or]Go ahead and just treat me like a cheap whore. We're friends, it's OK.'[or]Since we're friends, I'll do whatever you want.'[or]Don't worry, I'll make sure you enjoy this. That's what friends are for.'[in random order][roman type][line break]".

Section - Platonic Friend

[This is a person who "would be weird to have sex with"; the original]

platonic-friend is a real-life patron.

To say MediumDesc of (M - platonic-friend):
	say "[PlatonicName]".

To say RelationDesc of (M - platonic-friend):
	say "[PlatonicRole]".

Definition: platonic-friend is presenting as male:
	if PlatonicGender is "masculine gender", decide yes;
	decide no.

To say LongDickDesc of (M - platonic-friend):
	say PlatonicEquipment.

To say FightObserve of (M - platonic-friend) with (N - a monster):
	if the player is prone, say "[speech style of M]'[one of]Stand up and fight back, you pathetic whore!'[or]What do you think you're doing down there? Get up!'[or][friend-old-name of M]... you better not be about to do what I think you are...'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - platonic-friend) with (N - a monster):
	if M is unfriendly, say "[speech style of M]'[one of]What a disgrace.'[or]Isn't this [man of N] a stranger?'[or]I can't believe you'd enjoy something like this.'[or]I just can't approve of this.'[or]I'm ashamed I'm watching you do this.'[then at random][roman type][line break][strongHumiliateReflect]";
	otherwise say "[speech style of M]'[one of]I hope you're ashamed of yourself.'[or]Do you even know this [man of N][']s name?!'[or]I can't believe what I'm seeing!'[or]You're enjoying this, aren't you?'[or]You *do* know I can see everything you're doing, right?'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - platonic-friend):
	if M is not friend-shocked:
		say "[speech style of M]'Well, [friend-old-name of M], we both know what I just watched. You're a disgrace, and I've lost all respect for you.'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]I'm sorry, [friend-old-name of M], but I'll be sharing what I saw here with everyone. Someone else has to see this.'[or]I think I'll be sharing this as well.'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and then the [MediumDesc of C] goes blank.";
		if the number of blank rows in the Table of Published Disgraces > 0:
			choose a blank row in Table of Published Disgraces;
			now the content entry is the substituted form of "a screenshot of you in a video call, [the video-event of C],";
			now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment 'Yes, this is really [friend-old-name of M]!'";
			now the severity entry is 500;
			now the popularity entry is 0;
			now the viewsfuzz entry is 0;
			now the lastwitnessed entry is 0;
			now the deletedtime entry is 0;
			now the timestamp entry is 0;[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]

To compute HangUpUndisgraced of (C - a video-monitor) with (M - platonic-friend):
	say "[second custom style]'[one of]When I heard what kind of game this was, I wasn't sure what to think of you playing it. I'm still not sure.'[or]Well, that certainly was something.'[or]Good enough. Now don't forget to keep your act together.'[at random][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - platonic-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'Well [NameBimbo], at first I was pretty disappointed when I found out what a whore you turned out to be, but when I thought about it, I realised it suits you. I've paid a lot of money to come here and make sure you don't try to back out of this new lifestyle you've chosen.'[roman type][line break][or][MediumDesc of M], this is-'[roman type][line break][speech style of M]'Enough, [NameBimbo]. You wanted to be a whore, and it doesn't matter what whores have to say.'[roman type][line break][stopping]".

To say PrepTaunt of (M - platonic-friend) in (F - asshole):
	say "[speech style of M]'Let's try anal this time.'[roman type][line break]".

To say PrepTaunt of (M - platonic-friend) in (F - vagina):
	say "[speech style of M]'I'll start in just a second, [NameBimbo].'[roman type][line break]".

To say AnalVirginityTaunt of (M - platonic-friend):
	say "[speech style of M]'Get used to it now, [NameBimbo]. We'll be doing this outside the game too.'[roman type][line break]".

To say VaginalVirginityTaunt of (M - platonic-friend):
	say "[speech style of M]'Be thankful it was with someone you knew.'[roman type][line break]".

Section - Nemesis Friend

[This is a person who "you don't get along with"]

[They think this is SO perfect.]

nemesis-friend is a real-life patron.

To say MediumDesc of (M - nemesis-friend):
	say "[NemesisName]";

To say RelationDesc of (M - nemesis-friend):
	say "[NemesisRole]";

Definition: nemesis-friend is presenting as male:
	if NemesisGender is "masculine gender", decide yes;
	decide no.

To say LongDickDesc of (M - nemesis-friend):
	say NemesisEquipment.

To say FightObserve of (M - nemesis-friend) with (N - a monster):
	if the player is prone, say "[speech style of M]'[one of]Do me a favour and stay down. I want to see how [FuckerDesc of N] messes with you!'[or]Giving up already? I can't say I'm surprised.'[or]Yes, I knew it! You were only pretending to fight so you could save face!'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - nemesis-friend) with (N - a monster):
	say "[speech style of M]'[one of]I always knew [if diaper quest is 1]you must be some kind of pervert[otherwise]you'd turn out to be a whore[end if].'[or]This is too good to be true! Hahaha, oh my god...'[or]We both know you're enjoying this. Stop fucking kidding yourself.'[or]Aren't you proud? [BigFuckerDesc of N] seems like [he of N][']s really enjoying that!'[then at random][roman type][line break][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - nemesis-friend):
	if M is not friend-shocked:
		say "[speech style of M]'Well, that was some great blackmail material you just gave me. I can't wait to find out how you're going to disgrace yourself next!'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]Oh my god, [friend-old-name of M], I have to share this with EVERYONE!'[or]I can't wait to update everyone on your progress!'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and then the PC Monitor goes blank.";
		if the number of blank rows in the Table of Published Disgraces > 0:
			choose a blank row in Table of Published Disgraces;
			now the content entry is the substituted form of "a slideshow of you in a video call, [the video-event of C],";
			now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment '[friend-old-name of M] BEGGED me to share this with everyone!'";
			now the severity entry is 500;
			now the popularity entry is 0;
			now the viewsfuzz entry is 0;
			now the lastwitnessed entry is 0;
			now the deletedtime entry is 0;
			now the timestamp entry is 0;[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]

To compute HangUpUndisgraced of (C - a video-monitor) with (M - nemesis-friend):
	say "[second custom style]'[one of]That was a little... boring. I thought you were going to do something really gross and slutty. What a waste of time.'[or]Really, nothing again? I was so sure you were a whore deep down...'[or]I know you're whoring it up in there. I'll catch you eventually.'[stopping][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - nemesis-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'I paid a ton of money to come into the game and fuck you. Isn't that great, [NameBimbo]? By the way, I hope you don't mind if I don't use protection.'[roman type][line break][or]I hate you so much, [MediumDesc of M]...'[roman type][line break][speech style of M]'If you don't want this to happen, why not use your safeword? You aren't fooling anybody.'[roman type][line break][stopping]".

To say PrepTaunt of (M - nemesis-friend) in (F - asshole):
	say "[speech style of M]'Bite the pillow, [NameBimbo], I have some resentment I want to work out here.'[roman type][line break]".

To say PrepTaunt of (M - nemesis-friend) in (F - vagina):
	say "[speech style of M]'Ready to get your [pussy] destroyed, [NameBimbo]?'[roman type][line break]".

To say AnalVirginityTaunt of (M - nemesis-friend):
	say "[speech style of M]'How is it, [NameBimbo]? I'm not a whore, so I have no clue how it feels on the receiving end.'[roman type][line break]".

To say VaginalVirginityTaunt of (M - nemesis-friend):
	if the class of the player is virgin warrior, say "[speech style of M]'Oops, guess your little [']virgin['] playthrough is ruined! Hahaha!'[roman type][line break]";
	otherwise say "[speech style of M]'Guess you're not a virgin anymore! Hahaha, SLUT!'[roman type][line break]".

Section - Distant Friend

[This is a person who "you rarely talk to"]

distant-friend is a real-life patron.

To say MediumDesc of (M - distant-friend):
	say "[DistantName]".

To say RelationDesc of (M - distant-friend):
	say "[DistantRole]".

Definition: a distant-friend is presenting as male:
	if DistantGender is "masculine gender", decide yes;
	decide no.

To say LongDickDesc of (M - distant-friend):
	say DistantEquipment.

To say FightObserve of (M - distant-friend) with (N - a monster):
	if the player is prone:
		if M is unfriendly, say "[speech style of M]'[one of]Yes, give up! I want to see what happens next!'[or]I really wish there were more viewing angles...'[or]Yes, [friend-old-name of M], stick your [AssDesc] out just like that!'[at random][roman type][line break][moderateHumiliateReflect]";
		otherwise say "[speech style of M]'[one of][friend-old-name of M], aren't you going to fight?'[or]Are you giving up? That was fast...'[or][friend-old-name of M], don't tell me you're actually going to let [NameDesc of N][speech style of M] do what [he of N] wants...'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - distant-friend) with (N - a monster):
	if M is unfriendly, say "[speech style of M]'[one of]You love it when I watch you, don't you?'[or][friend-old-name of M], you're such a dirty [if diaper quest is 1]pervert[otherwise]whore[end if]...'[or]This is so fucking hot...'[or]I think I love this game...'[or]Thank you for the show...'[then at random][roman type][line break][strongHumiliateReflect]";
	otherwise say "[speech style of M]'[one of]I can't believe you're actually having [if diaper quest is 1]that done to you[otherwise]sex[end if] right in front of me.'[or]Um, isn't [FuckerDesc of N][speech style of M] a complete stranger?'[or]I had no clue this is what you were really like.'[or]You want me to see this, don't you. You like this.'[or]It's still so hard to believe you're really [friend-old-name of M].'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - distant-friend):
	if M is not friend-shocked:
		say "[speech style of M]'That was pretty... intense, but it can be our secret, [friend-old-name of M]. Just between us.'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]I can't wait to see what everyone else thinks of this...'[or]Everyone really liked the last video, [friend-old-name of M]. So, I think I'll share this one too.'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
		if the number of blank rows in the Table of Published Disgraces > 0:
			choose a blank row in Table of Published Disgraces;
			now the content entry is the substituted form of "a video clip of you, [the video-event of C],";
			now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment '[friend-old-name of M] [if diaper quest is 1]fetish[otherwise]sex[end if] tape'";
			now the severity entry is 500;
			now the popularity entry is 0;
			now the viewsfuzz entry is 0;
			now the lastwitnessed entry is 0;
			now the deletedtime entry is 0;
			now the timestamp entry is 0.

To compute HangUpUndisgraced of (C - a video-monitor) with (M - distant-friend):
	say "[speech style of M]'[one of]Nice job! Keep it up!'[or]Nice going, [friend-old-name of M]! (Damn, I was really sure I'd get to see something incredible...)'[or]It was really fun watching you cut it close like that, [friend-old-name of M]!'[at random][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - distant-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'Watching you have sex with all those strangers really made me lose respect for you, but it also made me realise how much I've always wanted to fuck you. So, I paid a lot of money to come into the game and take my turn!'[roman type][line break][or][MediumDesc of M], you've got it all wr-'[roman type][line break][speech style of M]'Shut up, [NameBimbo], we both know you want this.'[roman type][line break][stopping]".

To say PrepTaunt of (M - distant-friend) in (F - asshole):
	say "[speech style of M]'I'm going to try out your [AssDesc].'[roman type][line break]".

To say PrepTaunt of (M - distant-friend) in (F - vagina):
	say "[speech style of M]'[if the player is able to get pregnant]I really wish I could get you pregnant.'[otherwise]I can't believe I'm about to fuck [NameBimbo]!'[end if][roman type][line break]".

To say AnalVirginityTaunt of (M - distant-friend):
	say "[speech style of M]'How does it feel, [NameBimbo]?'[roman type][line break]".

To say VaginalVirginityTaunt of (M - distant-friend):
	say "[speech style of M]'Thank you for giving me your first!'[roman type][line break]".

Section - Fancied Friend

[This is a person who "you fancy/would like to have sex with"]

fancied-friend is a real-life patron.

To say MediumDesc of (M - fancied-friend):
	say "[FanciedName]".

To say RelationDesc of (M - fancied-friend):
	say "[FanciedRole]".

Definition: fancied-friend is presenting as male:
	if FanciedGender is "masculine gender", decide yes;
	decide no.

To say LongDickDesc of (M - fancied-friend):
	say FanciedEquipment.

To say FightObserve of (M - fancied-friend) with (N - a monster):
	if the player is prone:
		if M is unfriendly, say "[speech style of M]'[one of]Why do you even pretend to fight?'[or]Are you done trying to save face?'[or]Will you just hurry up and stay down?'[at random][roman type][line break][moderateHumiliateReflect]";
		otherwise say "[speech style of M]'[one of][friend-old-name of M]? Are you seriously giving up already?'[or]Aren't you going to get up?'[or]Let me guess. You actually want to let [NameDesc of N][speech style of M] do what [he of N] likes.'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - fancied-friend) with (N - a monster):
	let B be the friend-old-name of M;
	if M is unfriendly, say "[speech style of M]'[one of]Aren't you ashamed?'[or]I can't believe I ever respected you.'[or]You're disgusting, [friend-old-name of M].'[or]The fact that I'm watching adds to the thrill, doesn't it.'[or]You can't be satisfied if you don't have an audience, right, [friend-old-name of M]?'[then at random][roman type][line break][strongHumiliateReflect]";
	otherwise say "[speech style of M]'[one of]So, what sort of stuff do you do when I'm NOT watching?'[or]Just so we're clear on this, [NameDesc of N][speech style of M] is a stranger, right?'[or][big please] tell me you aren't actually doing this.'[or]So this is what you really like?'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - fancied-friend):
	let B be the friend-old-name of M;
	if M is not friend-shocked:
		say "[speech style of M]'Who knew you were such a [if diaper quest is 1]weirdo[otherwise]tart[end if]? I certainly didn't.'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]OK, [friend-old-name of M], if you're going to act like such a disgrace, I might as well share this with everyone.'[or]You obviously want me to share this, I know.[or]I'm going to share this video too.'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
		if the number of blank rows in the Table of Published Disgraces > 0:
			choose a blank row in Table of Published Disgraces;
			now the content entry is the substituted form of "a screenshot of you in a video call, [the video-event of C],";
			now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment 'WTF, [friend-old-name of M]!'";
			now the severity entry is 500;
			now the popularity entry is 0;
			now the viewsfuzz entry is 0;
			now the lastwitnessed entry is 0;
			now the deletedtime entry is 0;
			now the timestamp entry is 0.

To compute HangUpUndisgraced of (C - a video-monitor) with (M - fancied-friend):
	let B be the friend-old-name of M;
	say "[second custom style]'[one of]Pretty interesting performance, [friend-old-name of M].'[or]That was pretty good, [friend-old-name of M]. Try to keep that up.'[or]This game is pretty interesting!'[at random][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - fancied-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'Does it matter? Does the weird thrill you get from having sex with strangers not extend to people you know, [NameBimbo]? I paid the money, and that's all that matters to a whore like you, right?'[roman type][line break][or][MediumDesc of M], please w-'[roman type][line break][speech style of M]'Shut up. You and I both know you've always wanted to fuck me.'[roman type][line break][stopping]";

To say PrepTaunt of (M - fancied-friend) in (F - asshole):
	say "[speech style of M]'You like anal, don't you. Disgusting.'[roman type][line break]".

To say PrepTaunt of (M - fancied-friend) in (F - vagina):
	say "[speech style of M]'I expect to get my money's worth here.'[roman type][line break]".

To say AnalVirginityTaunt of (M - fancied-friend):
	say "[speech style of M]'Don't lie to me, [NameBimbo]. You've always wanted to try this.'[roman type][line break]".

To say VaginalVirginityTaunt of (M - fancied-friend):
	say "[speech style of M]'It's hard to believe you were still a virgin. I mean, you've acted like such a whore.'[roman type][line break]".







Real Life Patron ends here.
