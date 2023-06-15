Receptionist by Monster begins here.

receptionist is a staff member. receptionist is unconcerned. receptionist is female. The leftover-type of receptionist is 129.

receptionist is in School01. The text-shortcut of receptionist is "rcp".

Figure of receptionist is the file "NPCs/School/receptionist1.png".
Figure of enslaved diapered receptionist is the file "NPCs/School/receptionist3.png".

To decide which figure-name is the monster-image of (M - receptionist):
	decide on figure of receptionist.

To decide which figure-name is the pacified-image of (M - receptionist):
	if M is sex-enslaved, decide on figure of enslaved receptionist;
	if M is diaper-enslaved, decide on figure of enslaved diapered receptionist;
	decide on figure of Missing NPC.

To say ShortDesc of (M - receptionist):
	say "receptionist".

To say MediumDesc of (M - receptionist):
	say "receptionist".

To say MonsterDesc of (M - receptionist):
	if M is sex-enslaved:
		say "[BigNameDesc of M][']s smart dress has been torn at the crotch, completely exposing [his of M] [if lady fetish is 2]bright pink chastity cage[otherwise]naked pussy[end if]. It's also been torn over one breast. [big his of M] armband, instead of showing a picture of [his of M] face, and the word 'STAFF', now just reads 'SPANK ME'. [big his of M] left hand is still raised with an adorable pointing finger, but the fury on [his of M] face tells you it's not hanging there of [his of M] own volition. In fact both of [his of M] arms and hands seem magically frozen in place. [big his of M] face and mouth have been left free to allow [him of M] to frown and snarl[if M is in School01], and [he of M] would be able to walk around if one of [his of M] ankles wasn't bound to the back of [his of M] reception desk with a strong metal chain[end if].";
	otherwise if M is diaper-enslaved:
		say "[BigNameDesc of M][']s blue outfit has had several subtle changes made. There's a blue ribbon in [his of M] hair and blue flowers on the hem of [his of M] shortened dress. [big he of M]'s got girly frills at the top of [his of M] blue socks and a blue choker around [his of M] neck. [big his of M] hands are encased in fingerless elbow-length mittens. The most notable change, however, is the rather giant blue diaper bulging out from underneath the short skirt section of [his of M] dress. It's so big that [he of M] has to keep [his of M] feet a metre apart just to be able to walk at all[if M is in School01] - not that [he of M] can go very far anyway, since one of [his of M] ankles is bound to the back of [his of M] reception desk with a strong metal chain[end if]. [big he of M] can't seem to stop rubbing the front and back of [his of M] diaper with [his of M] two mittened hands, with a vacant drooling facial expression. Whatever [his of M] mega-diaper is full of, it sloshes around rather noisily as [he of M] rubs it into [himself of M].";
	otherwise:
		say "This [man of M] looks like [he of M]'s in [his of M] mid-thirties, but [his of M] complexion and physique are completely perfect in every way. A made up face and long wavy blonde hair sit on top of a Barbie-doll body with an impossibly small waist, covered by a tight-fitting very short blue dress that manages to ooze sex appeal and still look at least slightly professional.".

To say MonsterComment of (M - receptionist):
	say "[if the bimbo of the player <= 10 and the player is gendered female][line break][first custom style]That's not fair, we can't all be born with perfect genes like that...[otherwise if the bimbo of the player <= 7]Oh, mama! What a fox![otherwise if the bimbo of the player <= 12][line break][variable custom style][one of][big he of M] looks so good in that dress.[or]What an amazing look![purely at random][otherwise][line break][second custom style][one of]Wow, [he of M]'s probably like, the perfect shape for a bimbo![or]Oh, how I wish I looked like that![or]Maybe I can look like that one day, too![at random][end if][roman type][line break]".

To set up (M - receptionist):
	reset M;
	now the monstersetup of M is 1;
	now M is in [School01] Dungeon10;
	now M is guarding;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - receptionist):
	decide on 5.

To say ArmbandCalming of (M - receptionist):
	say "[if M is unfriendly][BigNameDesc of M] calms down, and [his of M] sweet smile returns. [speech style of M]'That's better[otherwise][speech style of M]'There's a good kid[end if]. ";
	if the armband-print of armband is "new recruit", say "Now you need to go see the headmistress for initiation. [big his of headmistress] door is the last one on the left, you can't miss it. ";
	say "Now trot along!'[roman type][line break]".

To compute monstermotion of (M - receptionist):
	if M is in School01, now M is guarding;
	otherwise compute room leaving of M.

Definition: receptionist (called M) is dangerous:
	if M is interested and M is unfriendly and M is awake and the boredom of M is 0 and the health of M > 0:
		if the scared of M is 0 or M is penetrating a body part:
			decide yes;
	decide no.

To say rank-colour of (M - receptionist):
	say "sapphire".

To compute teaching of (M - receptionist):
	say "[speech style of M]'Oh, haha, no, I'm afraid I'm just the receptionist. The teachers are inside.'[roman type][line break]".

Definition: receptionist is dismissable: decide no.

Part - Perception

To compute perception of (M - receptionist):
	calm M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if (M is in Dungeon10 or M is in Hotel40) and armband is off-stage and M is friendly:
		say "[line break][speech style of M]'[one of]Well hello there, I've been looking for you everywhere! You must be the new recruit, right? I was told you'd be dressed rather... [']interestingly['][run paragraph on][if the appearance of the player > 3], but I see you've really taken that instruction to heart![otherwise].[end if] Excellent, I'll get you enrolled right away. You start at rank 1 but I'm sure a person like you will be climbing the ranks in no time!'[or]You there, you've got to be the new student I'm looking for, right?'[stopping][roman type][line break][big he of M] hands you a neon reflective pink armband and gestures for you to strap it on.[line break][speech style of M]'Quickly now, strap this on and jump through the portal. It'll take you straight to the Principal's office.'[roman type][line break]";
		now armband is carried by the player;
		now the armband-print of armband is "new recruit";
		say ExamineDesc of armband;
		if newbie tips is 1, say "[newbie style]Newbie tip: This will teleport you to the start of the '[Slut School]' region side-quest. [one of]The School is a separate region that you'll be warped to at regular intervals. It's a safe space pretty much free from combat (unless you start it) but every time you go there, you have to attend a [']class['], and if you've taken too long to arrive you'll instead be sent to [']detention['], both of which can have negative effects. However if you get promoted to the top of the school's ladder, the conclusion will be very rewarding.[paragraph break]But if[or]This is usually your last chance to engage with this side quest. As I said before, if[stopping] this is your first ever game, I'd recommend selecting 'No', because including this side quest will just make the game more complicated and less easy to pick up.[roman type][line break]";
		say "Do you do what [he of M] says? ";
		if the player is bimbo consenting:
			try wearing armband;
			if armband is worn and headmistress is alive:
				say "[big he of M] pushes you through the warp portal. Colours rush all around you, and then suddenly you're standing on a marble floor in front of a large oak desk!";
				let R be the location of headmistress;
				teleport to R;
				now shocked-monsters is 0;
				check guaranteed perception of headmistress;
				increase the times-met of headmistress by 1;
				display entire map;
				now receptionist is not interested;
				now the boredom of receptionist is 0;
			now receptionist is in School01;
		otherwise:
			say "[speech style of M]'Oh sorry, you're not the one I'm looking for? My mistake. Have a nice day!'[roman type][line break]";
			destroy armband;
			bore M for 999999 seconds;
		display entire map; [needs to update because the portal is now closed]
	otherwise if the times-met of M <= 1 and armband is not worn and the number of fucked-silly monsters in the school is 0 and M is in School01:
		say "[line break][speech style of M]'Well hello there, you're a new face! Welcome to [slut school]! Did your [if diaper quest is 1]Daddy[otherwise]boyfriend[end if] send you along? Excellent, I'll get you enrolled right away. You start at rank 1 but I'm sure a person like you will be climbing the ranks in no time!'[roman type][line break][big he of M] hands you a neon reflective pink armband and gestures for you to strap it on.";
		now armband is carried by the player;
		now the armband-print of armband is "new recruit";
		say ExamineDesc of armband;
		say "Do you wear the armband? ";
		if the player is bimbo consenting:
			try wearing armband;
		otherwise:
			say "The receptionist looks disappointed.[line break][speech style of M]'It was not a request. Put it on right now or I'll make you!'[roman type][line break][big he of M] looks ready to fight.";
			anger M;
	otherwise if playerRegion is School:
		if armband is worn:
			if the class of the player is princess:
				say "[line break][speech style of M]'[one of]Hello again... Princess?! I thought you were locked up in the... oh wait it's you, [NameBimbo]! Never mind that. I hope you're enjoying your studies[or]You! Oh, right, it's just you, [NameBimbo]. Phew. I keep mistaking you for someone else[stopping]!'[roman type][line break]";
			otherwise if the player is the donator and there is an appropriate eligible predicament and predicamentJustDone is false and the player is predicament-ready:
				say "[line break][speech style of M]'Hello again [NameBimbo], I hope you're enjoying your studies! [one of]Have you considered trying the extra credit zone? [or]You should consider the extra credit zone again. [stopping][if the number of worn cursed removable clothing > the number of worn cursed removable headgear]Not only would you get a bracelet, a trophy and potentially some useful tokens, but you could escape from that annoying cursed clothing[otherwise]You can earn some tokens, a new bracelet and a cool trophy[end if]!'[roman type][line break]";
			otherwise:
				say "[line break][speech style of M]'Hello again [NameBimbo], I hope you're enjoying your studies!'[roman type][line break]";
		otherwise:
			say "[line break][speech style of M]'Hey, I recognise you! Where is your armband?!'[roman type][line break][big he of M] takes an aggressive stance.";
			anger M;
	otherwise:
		anger M;
		say "[line break][speech style of M]'I'm afraid I've been sent here because you've neglected your studies. I've been ordered to ensure that you return with me. You're not going to put up a fight, are you?'[roman type][line break]";
		make M expectant.

To say EnslavedDominationFlav of (M - receptionist):
	say "You force [NameDesc of M] to bend over [his of M] desk. With [his of M] ankle chained down, there's not much [he of M] can do to stop you. ";
	if the player is possessing a penis and the number of worn pussy covering actually unavoidable clothing is 0:
		if penis is penis-erect or penis is erect-at-will:
			say "Holding your [if penis is penis-erect]erect[otherwise]rapidly hardening[end if] [ShortDesc of penis] in one hand, you guide it into [his of M] well-lubricated snatch, and thrust away until you bring yourself to a well-earned climax.";
			orgasm quietly;
			check virginity with M;
		otherwise:
			say "Holding your [player-penis] up against [his of M] well-lubricated snatch, you are dismayed to find that you can't seem to get hard right now. Slightly disheartened, you settle for teasing [him of M] by rubbing the tip up and down [his of M] slit until [he of M][']s practically begging to be railed, and then backing away while laughing mockingly.";
	otherwise:
		say "You begin exploring [his of M] holes with your fingers, trying to extract as many squeaks, squeals and grunts as you can from the poor [man of M] before you get bored. Which you eventually, do, of course.";
	say "[speech style of M]'H...haaah~ Thank you for punishing me, [if the player is presenting as male]Master[otherwise]Mistress[end if] [NameBimbo]...'[roman type][line break]".

To decide which number is the EnslavedDominationThreshold of (M - receptionist):
	decide on a random number between 3000 and 8000.

Part - Combat

To say CombatProvokedReaction of (M - receptionist):
	if M is in Dungeon10 or M is in Hotel40:
		say "[speech style of M]'Eek!'[roman type][line break][BigNameDesc of M] hops backwards into the portal, and to safety!";
		set up M;
		now M is in School01;
		let W be a random warp portal in the location of the player;
		if W is warp portal and the destination of W is school and armband is not worn, now the destination of W is playerRegion;
	otherwise:
		say "[BigNameDesc of M] instantly [if M is awake]reacts[otherwise]wakes up[end if], taking a fighting stance!".

Definition: receptionist (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if (M is in School01 or M is not in the School) and the noun is north, decide yes; [The (unfriendly) receptionist always blocks the entrance into the school unless you kill her]
	let R be (a random number from 1 to (the difficulty of M * 2)) + the movement reduction of the player; [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
	if debuginfo > 0, say "[input-style][ShortDesc of M][']s movement block check: player movement penalty ([movement reduction of the player]) + block skill d[difficulty of M * 2] ([R - the movement reduction of the player]) = [R] | ([the dexterity of the player].5) dexterity[roman type][line break]";
	if R > the dexterity of the player, decide yes;
	decide no.

To say MovementBlock of (M - receptionist):
	say "[BigNameDesc of M] moves into the doorway, completely blocking your path![line break][speech style of M]'No [honey of M], you're not allowed [if the noun is north]into the school[otherwise]to just skip classes[end if] [if armband is worn and playerRegion is School]with that attitude[otherwise if armband is worn]without consequences for your actions[otherwise]without an armband[end if][if the class of the player is princess]. Don't expect to get special treatment just because you're a princess[otherwise if the class of the player is maid]. I do not care what mess you're trying to clean up[otherwise if the class of the player is schoolgirl]. If you got away with this sort of thing at your old school, you're in for a rude awakening here[otherwise if the class of the player is cheerleader]. Don't worry, I'm sure someone like you can catch up in no time[otherwise if the player is a hooker in training]. I already know you're eager to learn, but that doesn't mean you don't have to follow the same rules as everyone else[end if].'[roman type][line break]";

To compute (M - a monster) stomping (N - receptionist):
	if M is in the location of the player, say "Before [he of N] can react, [NameDesc of N] has been pinned to the wall by [NameDesc of M], and [his of M] [manly-penis] slid into [his of N] asshole. [big he of N] shrieks[line break][speech style of N]'I don't get paid enough for this!'[roman type][line break]but this turns into an undecipherable wail as [he of M] starts cumming. [big his of N] belly stretches to contain all the [semen]. After [he of N] is full, [he of M] tosses [him of N] to the ground, where [he of N] promptly faints.";
	otherwise say "You hear a [man of N] screech[line break][speech style of N]'I don't get paid enough for this!'[roman type][line break][if N is nearby]nearby, [otherwise]somewhere in the dungeon, [end if] followed by a wail of shame.";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

To say LeftoverDesc (N - 129):
	say "[BigNameDesc of receptionist]is on the ground here, unconscious. [big he of receptionist] has a [if pregnancy fetish is 1]pregnant looking[otherwise]fully stretched[end if] belly and [semen] slowly flowing out of [his of receptionist] [asshole].".

receptionist-armband is a diaper punishment. The priority of receptionist-armband is 5.

Definition: receptionist-armband is appropriate:
	if current-monster is receptionist and current-monster is in the school and armband is not worn, decide yes;
	decide no.

To compute punishment of (P - receptionist-armband):
	compute receptionist forcing armband.

The receptionist unique punishment rules is a rulebook. The unique punishment rule of a receptionist is usually the receptionist unique punishment rules.

[The staff detention rule is listed first in the receptionist unique punishment rules.]

To say GenericDetention of (M - receptionist):
	say "[BigNameDesc of M] looks disappointed.[line break][speech style of M]'[one of]I'm sorry if you don't like me very much[or]I'd rather we got along[or]I'm sorry you feel that way[at random], but you just earned yourself a detention for that, young miss. Come with me.'[roman type][line break]";
	now M is unconcerned.

This is the receptionist forces armband rule:
	if armband is not worn and playerRegion is School and ex-princess is not guarding: [if princess is guarding this is the final fight]
		compute current-monster forcing armband;
		rule succeeds.
The receptionist forces armband rule is listed first in the receptionist unique punishment rules.

The staff member unique punishment rule is listed last in the receptionist unique punishment rules. [Detention / Dungeon]

To compute (M - receptionist) forcing armband:
	say "[BigNameDesc of M] twists your left arm so it's held painfully behind your back. [unless armband is in the location of the player or armband is held][big he of M] presses some kind of cold metal device against your biceps and a beeping sound occurs. A few moments later a nearby printer has somehow... 'printed' your pink armband! Or at least an identical one. [end if][big he of M] reaches for the armband and then places it on your right hand, pulling your arm tighter until you are forced to comply.";
	now armband is worn by the player;
	compute armband replacement.

Receptionist ends here.
