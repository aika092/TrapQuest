Real Life Patron by Monster begins here.

[
Slight retcon: The player's friends have an understanding that they are being called from within the VR game, but they may or may not know the /nature/ of that game.

essentially, they originally think they're here to observe your "testing", but really Nintendolls is just marketing their newest whore.
]

A real-life patron is a kind of patron. A real-life patron has a number called friend-max-appearance. The friend-max-appearance of a real-life patron is usually 1. A real-life patron has a text called friend-old-name. The friend-old-name of a real-life patron is usually "none".
A real-life patron can be real-seenNaked. A real-life patron is usually not real-seenNaked.
A real-life patron can be friend-shocked. A real-life patron is usually not friend-shocked.
A real-life patron can be reconciled. [The player and the patron are now (permanently) on good terms.]
A real-life patron has a number called times-called.

Definition: a real-life patron is wenchy:
	decide no.

Definition: a real-life patron is father material:
	decide no.

Definition: a real-life patron is generic-appropriate: decide no.[For now, real-life patrons shouldn't actually show up]

Definition: a real-life patron is uniquely unfriendly if it is friend-shocked.

To say NameDesc of (C - a real-life patron):
	say "[input-style][MediumDesc of C][roman type]".

To say BigNameDesc of (C - a real-life patron):
	say "[input-style][MediumDesc of C][roman type]".

To say RelationDesc of (M - a real-life patron):
	say "[PlatonicRole]";

Definition: a real-life patron is presenting as male:
	if PlatonicGender is "masculine gender", decide yes;
	decide no.

To say MonsterDesc of (M - a real-life patron):
	say "This is your [RelationDesc of M], [MediumDesc of M]. You know [him of M] from outside the game, but after seeing you act like a whore so many times, [he of M]'s paid a lot of money to try you out [himself of M]!".

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

[
The beginning of a video call looks something like this:

<monitor activation> <specific friend intro> <appearance reaction> <circumstance reaction> <player reaction to friend>
]

[represents the first part of the friend's greeting for the player]
To say NewAppearanceReaction of (M - a real-life patron):
	if a random number between 0 and the number of applicable humiliating situations is 0:
		say GenericSituationReaction of M;
	otherwise:
		say FriendReaction of M to a random applicable humiliating situation;
	let X be the appearance of the player - the friend-max-appearance of M;
	if X > 0:
		if X >= 6:[if you exceed the current max by nine, your friend is too shocked, and they're much more likely to share around your video]
			now M is friend-shocked;
			say "";
		now the friend-max-appearance of M is the appearance of the player;
	if the player is naked and M is not real-seenNaked, now M is real-seenNaked.

To say GenericSituationReaction of (M - a real-life patron):
	let P be the appearance of the player;
	let S be the friend-max-appearance of M;
	let B be the friend-old-name of M;
	say "[speech style of M]'[if P < 6 and S < 6]Wow, [B], it really is you. [otherwise if S > P]Hello, [B]. [otherwise][B]?! Is that really you?! [end if][run paragraph on]";
	if P < 3:
		if S >= 3, say "...You're definitely looking more presentable than you did last time. ";
		otherwise say "[one of]So this is the cutting edge VR game you were bragging about? [or]I still can't believe you're calling me from inside a game. [stopping] ";
	otherwise if the player is naked and P < 10:
		if M is real-seenNaked, say "Why are you naked?! ";
		otherwise say "...You're naked again. ";
	otherwise if P < 6 and the player is male and the largeness of breasts < 4:
		if S < 3, say "...are you trying to tell me something with that outfit? ";
		otherwise say "...is this how you're going to dress from now on? ";
	otherwise if P < 6:
		if S < 3, say "Is that what you wear when I'm not around? (What a slut...) ";
		otherwise say "So that really is what you like to wear. (Slut...) ";
	otherwise if P < 9:[possible update for DQ?]
		if S < 9, say "You look like a whore. ";
		otherwise say "So you're still dressing like a whore. ";
	otherwise if P < 12:
		if S < 9, say "...Is there a reason you look like a PORN STAR? [if the player is naked]I mean, you're naked. [otherwise]You might as well be naked. [end if]";
		otherwise say "This isn't a game at all, is it? You're probably just calling me from an adult film set right now. ";
	otherwise if P < 16:
		if S < 12, say "This has to be a trick. There's no way you would actually walk around like that.";
		otherwise say "...I hope you know I've lost respect for you.";
	otherwise:
		if S < 16, say "This can't be real! There's no way that's actually you! ";
		otherwise say "...No matter what kind of game this is, no self-respecting person would ever let anyone see them in such a state. I hope you know that. ".

To say FriendReaction of (M - a real-life patron) to (A - a humiliating situation):
	say GenericSituationReaction of M.

[Second part of the friend's greeting. Can change slightly depending on what monsters are around.]
To say NewCircumstanceReaction of (M - a real-life patron):
	let N be a random dangerous monster in the location of the player;
	if N is patron:
		if M is friend-shocked, say "[one of]I guess I have to believe what the developers told me now. You're really about to whore yourself out, aren't you?'[or]Are you whoring yourself AGAIN?'[at random][roman type][line break]";
		otherwise say "[one of]You wouldn't believe what the developers told me. They actually said you were whoring yourself out for this guy. That isn't true, right?'[or]This prostitution thing isn't funny, you know.'[stopping][roman type][line break]";
	otherwise:
		if the times-called of M < 2:
			if M is friend-shocked:
				say "Now I understand why the developers wanted me to record everything. Wow.'[roman type][line break]";
			otherwise:
				say "Anyway, the developers invited me to look in on your beta test, as long as I agreed to record it. I don't understand why they can't do it, but oh well.'[roman type][line break]";
		otherwise:
			if M is unfriendly:
				say "I can't wait to see how you're going to whore it up this time.'[roman type][line break]";
			otherwise:
				if M is friend-shocked, say "You know I'm recording all of this, right?'[roman type][line break]";
				otherwise say "Anyway, I'll be watching until you take down [NameDesc of N].[roman type][line break]".

[Displays player's response to whatever their friend says in NewCircumstanceReaction]
To say FriendRespond to (M - a real-life patron):
	let N be a random dangerous monster in the location of the player;
	if N is patron:
		if the player is able to speak:
			say "[variable custom style]'Well, [he of N]'s trying to pay me for sex- BUT! But, I'm not going to play along! This isn't even real-'-[roman type]Your attempt to explain the insane situation is hindered by a chuckle from [if the number of patrons in the location of the player > 1]one of the half-naked [men of N][otherwise]the half-naked [man of N][end if] behind you.[line break][speech style of M]'Haha, yeah, sure, I'm a figment of your imagination. Tell yourself whatever you have to, Sunshine, but you're not getting paid until [if diaper quest is 1]we've had some kinky fun[otherwise]my imaginary [DickDesc of M] has jizzed its imaginary load[end if].'[roman type][line break]You turn bright red.";
			humiliate SLIGHT-HUMILIATION;
		otherwise:
			say "[variable custom style]Oh no! Now [he of M] thinks I'm a prostitute![roman type][line break]";
	otherwise:
		say "[variable custom style]'What?! No, wait, you can't record this! Please just hang up!'[roman type][line break]You try talk your friend into ending the call, but [NameDesc of N] is still demanding your full attention. Looks like you'll have to deal with [him of N] first!".

To compute (M - a real-life patron) protecting against (X - a monster):
	if M is not in the location of the player, say BaseObservationFlav of M;
	if M is in the location of the player:
		do nothing;[for now]
	otherwise if there is a monster penetrating a body part:
		if X is penetrating a body part, say SexObserve of M with X;
		otherwise say SexObserve of M with (a random monster penetrating a body part);
	otherwise:
		say FightObserve of M with X.

To say BaseObservationFlav of (M - a real-life patron):
	say "[MediumDesc of M] continues to watch [one of]the action[or]you[purely at random][if M is unfriendly][one of], [his of M] hand moving just offscreen.[or].[or], clearly playing with [himself of M] offscreen.[or].[then at random][otherwise][one of], mouth wide open.[or].[or]in total disbelief.[or].[then at random][end if][line break]";

To say FightObserve of (M - a real-life patron) with (N - a monster):
	if the player is prone:
		say "[speech style of M]'[one of]Stand up and fight back, you pathetic whore!'[or]What are you doing down there? Are you giving up?'[or]You're not about to do what I think you are, are you, [OriginalNameBimbo]?'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - a real-life patron) with (N - a monster):
	say "[first custom style]'[one of]I hope you're ashamed of yourself.'[or]Do you even know this [man of N]'s name?!'[or]I can't believe I'm watching this. Disgusting!'[or]You're enjoying this, aren't you?'[or]How long is this going to take?!'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To compute HangUpUndisgraced of (C - a video-monitor) with (M - a monster):
	let B be the friend-old-name of M;
	say "[speech style of M]'Well, that certainly was something. By the next time I see you, I hope you have your act together, [B].'[roman type][line break]";

[when the friend shows up as a patron]

To compute appearance assessment of (M - a real-life patron):
	say NewNameReact of M.

To say SingleWaitingFlavTQ of (M - a real-life patron):
	if the times-submitted of M is 0:
		say "[one of]You stare up at [NameDesc of M], still in shock. [or]You sigh, having lost any real hope of negotiation being successful. [stopping][line break][variable custom style]'This has to be a misunderstanding...'[roman type][line break][line break]Unsurprisingly, [he of M] completely ignores you.";
	otherwise if the sex addiction of the player < 12:
		say "You stare at [NameDesc of M] nervously. [line break][variable custom style]'[one of]This has to be some kind of mistake. You wouldn't actually do this to me...'[or]This is all a misunderstanding...My reputation is going to be ruined.'[or]You actually paid to have sex with me...'[or]You're actually going to do this. This isn't just a joke....'[in random order][roman type][line break]";
	otherwise:
		say "You look up at [NameDesc of M] and smile gently. [line break][variable custom style]'[one of]If its you, I'd like to do it for free, but you know how it is.'[or]Go ahead and just treat me like a cheap whore. We're friends, its ok.'[or]Since we're friends, I'll do whatever you want.'[or]Don't worry, I'll make sure you enjoy this. That's what friends are for.'[in random order][roman type][line break]".

[Two important things:
Favour
	- If your friend's favour is too high when they see you doing something disgraceful, they will share the video, which is super damaging to your reputation
	- Once your friend's favour passes into the unfriendly area, they can show up as a patron
Remembered appearance
	- After they see you looking really shocking, seeing a lower appearance level will increase favour
	- Seeing an appearance level that's too much higher than the old one will decrease favour
]

Section - Platonic Friend

[This is a person who "would be weird to have sex with"; the original]

platonic-friend is a real-life patron.

To say MediumDesc of (M - platonic-friend):
	say PlatonicName;

To say RelationDesc of (M - platonic-friend):
	say PlatonicRole;

Definition: platonic-friend is presenting as male:
	if PlatonicGender is "masculine gender", decide yes;
	decide no.

To say LongDickDesc of (M - platonic-friend):
	say PlatonicEquipment.

To say FightObserve of (M - platonic-friend) with (N - a monster):
	let name be the friend-old-name of M;
	if the player is prone:
		say "[speech style of M]'[one of]Stand up and fight back, you pathetic whore!'[or]What do you think you're doing down there? Get up!'[or][name]...you better not be about to do what I think you are...'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - platonic-friend) with (N - a monster):
	if M is unfriendly, say "[first custom style]'[one of]What a disgrace.'[or]Is this [man of N] a stranger too?'[or]Even if I've seen it before, its still shocking!'[or]You seem like you're having a great time.'[or]Dragging it out, as always.'[then at random][roman type][line break][strongHumiliateReflect]";
	otherwise say "[first custom style]'[one of]I hope you're ashamed of yourself.'[or]Do you even know this [man of N][']s name?!'[or]I can't believe what I'm seeing!'[or]You're enjoying this, aren't you?'[or]How long is this going to take?!'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - platonic-friend):
	let B be the friend-old-name of M;
	if M is not friend-shocked:
		say "[speech style of M]'Well, [B], we both know what I just watched. You're a disgrace, and I've lost all respect for you.'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]I'm sorry, [B], but I'll be sharing what I saw here with everyone. Someone else has to see this.'[or]I think I'll be sharing this as well.'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and then the [MediumDesc of C] goes blank.";
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a screenshot of you in a video call, [the video-event of C],";
		now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment 'Yes, this is really, [OriginalNameBimbo]!'";
		now the severity entry is 500;
		now the popularity entry is 0;
		now the viewsfuzz entry is 0;
		now the timestamp entry is 0;[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]

To compute HangUpUndisgraced of (C - a video-monitor) with (M - platonic-friend):
	say "[second custom style]'[one of]When I heard what kind of game this was, I wasn't sure what to think of you playing it. I'm still not sure.'[or]Well, that certainly was something.'[or]Good enough. Now don't forget to keep your act together.'[at random][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - platonic-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'Well [NameBimbo], at first I was pretty disappointed when I found out what a whore you turned out to be, but when I thought about it, I realized it suits you. I've paid a lot of money to come here and make sure you don't try to back out of this new lifestyle you've chosen.'[roman type][line break][or][MediumDesc of M], this is-'[roman type][line break][speech style of M]'Enough, [NameBimbo]. You wanted to be a whore, and it doesn't matter what whores have to say.'[roman type][line break][stopping]".

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
	let name be the friend-old-name of M;
	if the player is prone:
		say "[speech style of M]'[one of]Do me a favour and stay down. I want to see how [NameDesc of N] messes with you!'[or]Giving up already? I can't say I'm surprised.'[or]Yes, I knew it! You were only pretending to fight so you could save face!'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - nemesis-friend) with (N - a monster):
	say "[first custom style]'[one of]I always knew you'd turn out to be a whore.'[or]This is too good to be true! Hahaha, oh my god...'[or]We both know you're enjoying this. Stop fucking kidding yourself.'[or]You're really dragging this out, aren't you.'[then at random][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - nemesis-friend):
	let B be the friend-old-name of M;
	if M is not friend-shocked:
		say "[speech style of M]'Well, that was some great blackmail material you just gave me. I can't wait to find out how you're going to disgrace yourself next!'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]Oh my god, [B], I have to share this with EVERYONE!'[or]I can't wait to update everyone on your progress!'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and then the PC Monitor goes blank.";
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a slideshow of you in a video call, [the video-event of C],";
		now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment '[OriginalNameBimbo] BEGGED me to share this with everyone!'";
		now the severity entry is 500;
		now the popularity entry is 0;
		now the viewsfuzz entry is 0;
		now the timestamp entry is 0;[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]

To compute HangUpUndisgraced of (C - a video-monitor) with (M - nemesis-friend):
	say "[second custom style]'[one of]That was a little...boring. I thought you were going to do something really gross and slutty. What a waste of time.'[or]Really, nothing again? I was so sure you were a whore deep down...'[or]I know you're whoring it up in there. I'll catch you eventually.'[at random][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - nemesis-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'I payed a ton of money to come into the game and fuck you. Isn't that great, [NameBimbo]? By the way, I hope you don't mind if I don't use protection.'[roman type][line break][or]I hate you so much, [MediumDesc of M]...'[roman type][line break][speech style of M]'Why should I care what a whore thinks?'[roman type][line break][stopping]".

Section - Distant Friend

[This is a person who "you rarely talk to"]

distant-friend is a real-life patron.

To say MediumDesc of (M - distant-friend):
	say "[DistantName]";

To say RelationDesc of (M - distant-friend):
	say "[DistantRole]";

Definition: a distant-friend is presenting as male:
	if DistantGender is "masculine gender", decide yes;
	decide no.

To say LongDickDesc of (M - distant-friend):
	say DistantEquipment.

To say FightObserve of (M - distant-friend) with (N - a monster):
	let B be the friend-old-name of M;
	if the player is prone:
		if M is unfriendly, say "[speech style of M]'[one of]Yes, give up! I want to see what happens next!'[or]I really wish there were more viewing angles...'[or]Yes, [B], stick your ass out just like that!'[at random][roman type][line break][moderateHumiliateReflect]";
		otherwise say "[speech style of M]'[one of][B], aren't you going to fight?'[or]Are you giving up? That was fast...'[or][B], don't tell me you're actualy going to let [NameDesc of N] do what [he of N] wants...'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - distant-friend) with (N - a monster):
	let B be the friend-old-name of M;
	if M is unfriendly, say "[first custom style]'[one of]You love it when I watch you, don't you?'[or][B], you're such a dirty whore...'[or]This is so fucking hot...'[or]I think I love this game...'[or]Thank you for the show...'[then at random][roman type][line break][strongHumiliateReflect]";
	otherwise say "[first custom style]'[one of]I can't believe you're actually having sex right in front of me.'[or]Um, isn't [NameDesc of M] a complete stranger?'[or]I had no clue this is what you were really like.'[or]You want me to see this, don't you. You like this.'[or]This has been going on for a long time, huh?'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - distant-friend):
	let B be the friend-old-name of M;
	if M is not friend-shocked:
		say "[speech style of M]'That was pretty...intense, but it can be our secret, [B]. Just between us.'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]I can't wait to see what everyone else thinks of this...'[or]Everyone really liked the last video, [B]. So, I think I'll share this one too.'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a video clip of you, [the video-event of C],";
		now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment '[OriginalNameBimbo] sex tape'";
		now the severity entry is 500;
		now the popularity entry is 0;
		now the viewsfuzz entry is 0;
		now the timestamp entry is 0.

To compute HangUpUndisgraced of (C - a video-monitor) with (M - distant-friend):
	let B be the friend-old-name of M;
	say "[second custom style]'[one of]Nice job! Keep it up!'[or]Nice going, [B]! (Damn, I was really sure I'd get to see something incredible...)'[or]It was really fun watching you cut it close like that, [B]!'[at random][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - distant-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'Watching you have sex with all those strangers really made me lose respect for you, but it also made me realize how much I've always wanted to fuck you. So, I payed a lot of money to come into the game and take my turn!'[roman type][line break][or][MediumDesc of M], you've got it-[roman type][line break][speech style of M]'Shut up, [NameBimbo].'[roman type][line break][stopping]".

Section - Fancied Friend

[This is a person who "you fancy/would like to have sex with"]

fancied-friend is a real-life patron.

To say MediumDesc of (M - fancied-friend):
	say "[FanciedName]";

To say RelationDesc of (M - fancied-friend):
	say "[FanciedRole]";

Definition: a fancied-friend is presenting as male:
	if FanciedGender is "masculine gender", decide yes;
	decide no.

To say LongDickDesc of (M - fancied-friend):
	say FanciedEquipment.

To say FightObserve of (M - fancied-friend) with (N - a monster):
	let B be the friend-old-name of M;
	if the player is prone:
		if M is unfriendly, say "[speech style of M]'[one of]Why do you even pretend to fight?'[or]Are you done trying to save face?'[or]Will you just hurry up and stay down?'[at random][roman type][line break][moderateHumiliateReflect]";
		otherwise say "[speech style of M]'[one of][B]? Are you seriously giving up already?'[or]Aren't you going to get up?'[or]Let me guess. You actually want to let [NameDesc of N] do what [he of N] likes.'[at random][roman type][line break][moderateHumiliateReflect]".

To say SexObserve of (M - fancied-friend) with (N - a monster):
	let B be the friend-old-name of M;
	if M is unfriendly, say "[first custom style]'[one of]Aren't you ashamed?'[or]I can't believe I ever respected you.'[or]You're disgusting.'[or]This is really starting to get old, [B].'[then at random][roman type][line break][strongHumiliateReflect]";
	otherwise say "[first custom style]'[one of]So, what sort of stuff do you do when I'm NOT watching?'[or]Just so we're clear on this, [NameDesc of N] is a stranger, right?'[or]Please tell me you aren't actually doing this.'[or]So this is what you like?'[or]Wow. You are REALLY dragging this thing out.'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

To compute HangUpDisgraced of (C - a video-monitor) with (M - fancied-friend):
	let B be the friend-old-name of M;
	if M is not friend-shocked:
		say "[speech style of M]'Who knew you were such a tart? I certainly didn't.'[roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[speech style of M]'[one of]Ok, [B], if you're going to act like such a disgrace, I might as well share this with everyone.'[or]I'm going to share this video too.'[stopping][roman type][line break][strongHumiliateReflect][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a screenshot of you in a video call, [the video-event of C],";
		now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of M], accompanied by the comment 'WTF, [OriginalNameBimbo]!'";
		now the severity entry is 500;
		now the popularity entry is 0;
		now the viewsfuzz entry is 0;
		now the timestamp entry is 0.

To compute HangUpUndisgraced of (C - a video-monitor) with (M - fancied-friend):
	let B be the friend-old-name of M;
	say "[second custom style]'[one of]Pretty interesting performance, [B].'[or]That was pretty good, [B]. Try to keep that up.'[or]This game is pretty interesting!'[at random][roman type][line break][MediumDesc of M] hangs up the call, and the [MediumDesc of C] turns off.".

To compute appearance assessment of (M - fancied-friend):
	say NewNameReact of M;
	say "[line break][variable custom style]'[one of][MediumDesc of M]?! What are YOU doing here?'[roman type][line break][speech style of M]'Does it matter? Does the weird thrill you get from having sex with strangers not extend to people you know, [NameBimbo]? I payed the money, and that's all that matters to a whore like you, right?'[roman type][line break][or][MediumDesc of M], please w-[roman type][line break][speech style of M]'Tell it to someone who respects you, [NameBimbo].'[roman type][line break][stopping]";

Real Life Patron ends here.
