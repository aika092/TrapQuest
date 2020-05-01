Princess by Monster begins here.

ex-princess is a monster. ex-princess is intelligent. ex-princess is caged. ex-princess is in School35. ex-princess has a number called torment-count. ex-princess has a number called current-torment. Understand "princess" as ex-princess. Understand "imprisoned" as ex-princess when the item described is caged. Understand "original" as ex-princess when the item described is unconcerned. Understand "enslaved" as ex-princess when the item described is defeated. Understand "button" as ex-princess when diaper quest is 1 and item described is caged.

The text-shortcut of ex-princess is "pri".
Figure of original princess is the file "NPCs/MultiFloor/Princess/princess1.jpg".
Figure of original diapered princess is the file "NPCs/MultiFloor/Princess/princess2.jpg".
Figure of enslaved princess is the file "NPCs/MultiFloor/Princess/princess3.jpg".
Figure of enslaved diapered princess is the file "NPCs/MultiFloor/Princess/princess4.jpg".
Figure of temporary caged princess is the file "NPCs/MultiFloor/Princess/cage5.jpg".

To decide which figure-name is the monster-image of (M - ex-princess):
	if M is caged:
		if diaper quest is 1:
			if diaper messing >= 7, decide on figure of caged pail princess messy;
			otherwise decide on figure of caged pail princess;
		if watersports fetish is 0, decide on figure of temporary caged princess;
		if the current-torment of M > 0, decide on figure of caged urinal princess piss;
		decide on figure of caged urinal princess;
	if diaper lover > 0, decide on figure of original diapered princess;
	decide on figure of original princess;

To decide which figure-name is the pacified-image of (M - ex-princess):
	if M is diaper-enslaved, decide on figure of enslaved diapered princess;
	decide on figure of enslaved princess.

To say ShortDesc of (M - ex-princess):
	say "princess".

To say MediumDesc of (M - ex-princess):
	say "[if M is caged]imprisoned[otherwise if M is defeated]enslaved[otherwise]original[end if] princess".

To say MonsterDesc of (M - ex-princess):
	if M is caged:
		if diaper quest is 1:
			say "[BigNameDesc of M] is stuck in a small cell behind a solid wall with a single viewing window. The cell is empty except for two pink blocks, which [his of M] ankles are strapped to, keeping [his of M] legs apart in a kneeling position, a foot off the ground. [big he of M][']s wearing nothing except for a thick diaper, a tiara, a pink arm binder and a pink collar. The arm binder is connected to a hole in the ceiling by a tight rope, and [his of M] collar is similarly connected to a hole in the ground by another tight rope. These two ropes serve to allow the [ShortDesc of M][']s captors to move [him of M] into any position of their choice and hold [him of M] there, without needing to go into the room themselves. A clear tube descends in front of the [ShortDesc of M][if the current-torment of M <= 0], with several soiled diapers ready to exit through the flap. However, they are currently being held in place thanks to [NameDesc of M][']s nose and face obstructing the exit, pressed unpleasantly into the worst part of the front most diaper[end if]. Several other used diapers litter the ground, no doubt having at some point descended from the tube, which is likely connected to the diaper pail in the nearby hallway. In summary, it would appear that every diaper used by a member of the school ends up in [NameDesc of M][']s cell, essentially making [his of M] cell into a giant diaper pail.[paragraph break]An intercom system has been set up to allow any speakers to communicate with [NameDesc of M]. You also notice a keyhole to the side of the viewing portal, presumably for use on the rare occasion that [he of M] is fed or [his of M] pail is cleaned out. A big button is also accessible to you, on a stand in front of the viewing portal. [if torment-count of M is 0]What could that do?[otherwise]You know that this forces [him of M] to face plant into the diapers below [him of M], covering [him of M] in more diapers from the tube above, and forcing [him of M] to orgasm.";
			if the current-torment of M > 0, say "[big he of M] is currently being held with [his of M] face to the ground, engulfed in soiled diapers, with a vibrator loudly buzzing away from within [his of M] diaper. You can hear [him of M] moaning with a mixture of arousal and disgust.";
		otherwise:
			say "[BigNameDesc of M] is stuck in a small cell behind a series of strong metal cage bars. The cell is empty except for a toilet in one corner. ";
			if watersports fetish is 1:
				say "[big he of M] is wearing a golden tiara and a pink silk royal dress with the symbol of a [if lady fetish is 0]men's toilets[otherwise]public toilet door[end if] on the chest. [if diaper lover > 0][big he of M] is wearing a thick white diaper under the very short skirt[otherwise]The hem of [his of M] dress is very short, making [his of M] lack of underwear fully visible[end if]. Attached to the front of one vertical metal bar is a large white urinal. On [NameDesc of M][']s side, the piping of the urinal leads through a clear tube to the top of a locked clear plastic box. There is some sort of meal, with a soup-like consistency, contained inside the box. Halfway along the tube, a hollow dildo protrudes, pointing at the [man of M].";
				if the current-torment of M > 0:
					say "The bowl section of the urinal and the top half of the tube are filled with [urine]. A timer on the locked box counts down from [current-torment of M] seconds. It looks like [he of M] has that long to suck the [urine] out of the tube system and transfer it mouthful by mouthful to the toilet. Anything [he of M] doesn't manage to bring [himself of M] to transfer by that time will become part of [his of M] next meal.";
				otherwise if the torment-count of M > 0:
					say "There's currently no [urine] in the tube, but once someone pisses in the urinal and presses the button on top, [he of M][']ll once again be forced to transfer it to [his of M] own toilet with [his of M] mouth, if [he of M] doesn't want it to become a part of [his of M] next meal.";
				otherwise:
					say "It looks like some sort of mechanism has been set up that will force [him of M] to suck up any [urine] that enters the urinal and transfer it to [his of M] own toilet, unless [he of M] wants it to end up part of [his of M] next meal.";
			otherwise: [temporary]
				say "[big he of M] is wearing a golden tiara and a very short pink silk royal dress, clearly revealing [his of M] lack of underwear. Attached to the front of one vertical metal bar is a large white tank of [semen]. On [NameDesc of M][']s side, the piping of the tank leads via a clear tube to the top of a locked clear plastic box. There is some sort of meal, with a soup-like consistency, contained inside the box. Halfway along the tube, a hollow dildo protrudes, pointing at the [man of M].";
				if the current-torment of M > 0:
					say "The top half of the tube is filled with [semen]. A timer on the locked box counts down from [current-torment of M] seconds. It looks like [he of M] has that long to suck the [semen] out of the tube system and transfer it mouthful by mouthful to the toilet. Anything [he of M] doesn't manage to bring [himself of M] to transfer by that time will become part of [his of M] next meal.";
				otherwise if the torment-count of M > 0:
					say "There's currently no [semen] in the tube, but once someone presses the button on top of the tank, [he of M][']ll once again be forced to transfer it to [his of M] own toilet with [his of M] mouth, if [he of M] doesn't want it to become a part of [his of M] next meal.";
				otherwise:
					say "It looks like some sort of mechanism has been set up that will force [him of M] to suck up any [semen] that enters the tube and transfer it to [his of M] own toilet, unless [he of M] wants it to end up part of [his of M] next meal.";
	otherwise if M is defeated:
		if M is diaper-enslaved, say "The [man of M] who used to be a proud powerful [ShortDesc of M] has been reduced to a long haired baby-bottle sucking bimbo, who wanders the school aimlessly with a calm vacant look on [his of M] face.";
		otherwise say "The princess has lost all power and all will to fight back against [his of M] captors. [big he of M] lies on [his of M] back, fully naked except for [his of M] tiara, [his of M] hands magically stuck to [his of M] asscheeks, unable to remove [his of M] knees from behind [his of M] shoulders, making it look like [he of M][']s begging anyone and everyone [he of M] sees to ruin [his of M] asshole. [big his of M] buttcheeks have been magically enhanced, and are now triple the size they first were when you met [him of M].";
	otherwise:
		say "The original princess that rules the dungeons of Bimbacia wears a regal pink silk dress, with a very low neckline and a skirt with a deep slit at the front. [big his of M] outfit seems to be magically fixed to this exact appearance, and no matter how much [he of M] pulls, the skirt of the dress refuses to be pulled any further forward than [his of M] sides, meaning that [his of M] [if diaper lover > 0]heavily diapered crotch[otherwise]bare pussy[end if] is kept fully visible from the front at all times.".

To say MonsterComment of (M - ex-princess):
	say "[line break][variable custom style][one of][big he of M] looks important. I wonder if [he of M] would reward me if I helped break [him of M] out of here...[or]Poor thing is still trapped here. Are they going to keep [him of M] here like this forever?[stopping][roman type][line break]".

To set up (M - ex-princess):
	now the monstersetup of M is 1;
	now the raw difficulty of M is 1;
	now the health of M is the maxhealth of M.

To decide which number is the difficulty of (M - ex-princess):
	if M is caged, decide on 1;
	if M is guarding, decide on 10;
	decide on 99.

Definition: ex-princess is human: decide yes.

Definition: ex-princess is able to remove cursed plugs: decide yes.

Definition: ex-princess is butt slut immune: decide yes.

Definition: ex-princess is uniquely unfriendly:
	decide no.

To decide which number is the aggro limit of (M - a ex-princess): [The number at which they turn unfriendly]
	decide on -999999.

Definition: ex-princess is motionless-when-defeated: decide yes.

Part 1 - Perception

To decide which number is the bimbo tolerance of (M - ex-princess):
	decide on 20.

To decide which number is the bab tolerance of (M - ex-princess):
	decide on 20.

To compute perception of (M - ex-princess):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if the times-met of M is 0:
		say "[big his of M] voice is dry, cracked and very quiet.[line break][speech style of M]'[if the class of the player is princess]Don't tell me... they're replacing me with you?! How cruel. Unless... could it be... my throne sent you here? [otherwise if there is a student in the location of the player]Have you come here to torment me? Or deep down, do you have kind hearts? [otherwise]Have you come here to torment me or are you another innocent? [end if][big please]... if you can... find a way to get me out of here, before it's too late...'[roman type][line break]";
		if prison guard is not in the dungeon, summon prison guard in the dungeon;
	otherwise if M is caged:
		say "[speech style of M]'[big please]... I can't stay sane much longer! You're my only hope...'[roman type][line break]";
	otherwise if M is defeated:
		say "[speech style of M]'Please don't look at my disgusting shame! [big please] don't watch!'[roman type][line break]";
	otherwise if M is messy:
		compute ChangeRequest of M;
	otherwise:
		say "[speech style of M]'Greetings [NameBimbo], saviour of Bimbacia!'[roman type][line break]";

Part 2 - Misc Flavour

To IdentifiablePosterReaction of (M - ex-princess):
	say "[BigNameDesc of M] looks at the poster and then presses [his of M] palm into [his of M] face.[line break][speech style of M]'THIS is the person who rescued me from [slut school]? REALLY?'[roman type][line break]";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - ex-princess):
	say "[BigNameDesc of M] looks at the banner with a big frown on [his of M] face. [big he of M] doesn't seem to realise it is you.[line break][speech style of M]'Has this world become overrun with harlots and whores like this one? Seriously, do they have no shame?'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Part 3 - Combat

To compute (M - ex-princess) protecting against (X - a monster):
	if M is in the school:
		if glittery-wand is not retained by M or glittery-wand is not cursed, say "[BigNameDesc of M] [one of]seems to have used the last of [his of M] energy for now, and can't help you with the rest of the fight.[or]is panting heavily.[or]is still too out-of-breath to help.[or]continues panting heavily, trying to recover [his of M] breath.[or]seems to be trying to gather enough magical energy for one last spell![or][PrincessHeal][or]coughs out a hoarse apology.[line break][speech style of M]'I'm sorry, there was no other way...'[roman type][line break][or]continues panting heavily.[stopping]";
		otherwise say "[BigNameDesc of M] [one of]is being forced to masturbate [himself of M] with the cursed wand![or]continues to fervently press the vibrating wand into [his of M] clit, no matter how much [he of M] tries to stop it with [his of M] other arm.[or]pushes the head of the cursed vibrating wand into [his of M] clit and makes small circles.[or]moans with a mixture of passion and despair as [he of M] brings [himself of M] closer to the bring with the powerful wand.[or]screams out as [he of M] has a powerful orgasm from the vibrating wand on [his of M] clit.[or]can't stop stimulating [his of M] clit, even after coming down from [his of M] orgasmic high![or]shudders as [his of M] oversensitive clit receives further vibrating punishment.[cycling]";
	otherwise:
		compute default protecting of M.

To say PrincessHeal:
	let M be ex-princess;
	say "weakly raises [his of M] wand and points it at you. You hear [him of M] cast a spell with the quietest whisper.[line break][speech style of M]'Final Spark...'[roman type][line break]You yelp in surprise as you feel your body fully heal[if the player is prone], and are raised back to your feet[end if]! But at what cost? You feel significant physical power leaving your body, and you doubt it will return after the fight is done.";
	BodyHeal 10;
	now the stance of the player is 0;
	now the fatigue of the player is 0;
	StrengthDown 4; [Deliberately harsh.]
	DexDown 4.

To compute failed damage of (M - ex-princess):
	say "[BigNameDesc of M] completely ignores your attack, as if [he of M] didn't even feel it!".

To decide which number is the damage modifier of (M - ex-princess):
	decide on (attack-damage * -1).

To compute (M - a monster) stomping (N - ex-princess): [TODO: Different interaction with Xavier]
	if N is in the location of the player and the health of M > 1:
		say "[BigNameDesc of N] looks up at [NameDesc of M] without fear or concern.[line break][speech style of N]'[one of]Who let [him of M] out? How annoying. I guess [he of M][']s too unsafe to leave wandering around like this. A shame, but I guess we should put [him of M] down[or]Weird, I could swear we'd done this already. Oh well, here we go again[stopping].'[roman type][line break][BigNameDesc of N] swirls [his of N] wand around several times and then blasts [NameDesc of M] with the largest beam of blinding white magic you've ever seen. [BigNameDesc of M] is burned and singed all over, and looks like [he of M][']s on the verge of defeat.[line break][speech style of N]'I'll leave the finishing blow for you.'[roman type][line break]";
		satisfy N;
		compute mandatory room leaving of N;
		now N is moved;
		now the health of M is 1.

Part 4 - Conversation

Section 1 - Greeting

To compute talk option (N - 1) to (M - ex-princess):
	if the times-met of M is 0, now the times-met of M is 1;[this is a failsafe to make sure the first time greeting never displays twice.]
	if M is caged and the current-torment of M > 0:
		if diaper quest is 0:
			say "You try to talk to [NameDesc of M], but [he of M]'s busy sucking up the [urine] and transferring it to [his of M] toilet.";
			say SubmissiveResponse of M;
	otherwise:
		if M is interested and breasts is exposed, progress quest of chest-exposing-quest from M;
		if the times-met of M < 2:
			say FirstGreeting to M;
			say FirstResponse of M;
		otherwise:
			say RepeatGreeting to M;
			say RepeatResponse of M;
		now the boredom of M is 0;
		now M is interested;
		check perception of M.

To say FirstResponse of (M - ex-princess):
	say "[speech style of M]'Who are you?'[roman type][line break]".

To say RepeatResponse of (M - ex-princess):
	say "[speech style of M]'[if M is caged][big please], you've got to help me get out of here!'[otherwise]Oh?'[roman type][line break]".

To say SubmissiveResponse of (M - ex-princess):
	say "[speech style of M]'[one of]*Glug glug glug*...'[or]*Hck hck hck*...'[or]Mmmmmmmph...'[in random order][roman type][line break]".

Section 2 - Questioning

To compute talk option (N - 2) to (M - ex-princess):
	if M is defeated:
		compute talk option 1 to M;
	otherwise if M is caged:
		if the number of monsters in the location of the player is 1:
			say "[variable custom style]'[one of]Who are you?'[line break][speech style of M]'I'm Princess Annie! [big please] help me!'[or]Why are you in there?'[line break][speech style of M]'I conjured up this entire pocket dimension and the people inside it... but I was sloppy and got overpowered by my own creation! Now hurry up and get me out of here!'[or]What are you going to do if you get out?'[line break][speech style of M]'I'm going to get my revenge on that fucking [ShortDesc of headmistress] and [his of headmistress] pawns. [big he of headmistress][']ll wish [he of headmistress][']d never been created...'[or]How can I help?'[line break][speech style of M]'I'm going to need you to unlock this cell. For that, you'll need a magical skeleton key. My prison guard has one, but [he of prison guard] might need... [']persuading['] to part with it. I happen to know that [he of prison guard] loves digestive biscuits. I'm also going to need something to fight with. Any magical wand will do, but my royal scepter would be our best chance. For that you'll need to first find my tiara. It should present itself to anyone worthy who sits on my throne. And then... you'll need to [if diaper quest is 1]pee in a dry diaper. Don't ask me why[otherwise]choose someone to get rather... familiar with[end if].'[or]Did I already ask how I could help you out?'[line break][speech style of M]'[Azathot] above... is this really the best chance I have? I need you to help me escape!'[stopping][roman type][line break]";
		otherwise: [She's not alone so you can't talk sincerely]
			say "You put on a vindictive act in front of your peers.[line break][variable custom style]'Having fun, slut?'[roman type][line break]You see [him of M] notice you're not alone, and [he of M] twitches [his of M] eyebrows at you.[line break][speech style of M]'Fuck you!'[roman type][line break]";
	otherwise:
		compute default questioning to M.

To compute annoyance of (M - ex-princess):
	if the questioned of M > the high-annoyance threshold of M:
		say "[speech style of M]'Uh...Unfortunately, I have something to do. We'll take more later...'[roman type][line break]";
		Bore M;
		now the scared of M is 30;
	otherwise:
		if questioned of M < the mild-annoyance threshold of M, ApplyFullConvoFatigue to M;
		say AnnoyedWarn of M;

To say WhereAnswer of (M - ex-princess):
	if the player is in the dungeon:
		say "[speech style of M]'This is my royal dungeon. It feels so nostalgic...'[roman type][line break]";
	otherwise if the player is in the hotel:
		let hb be mechanic;
		if demon lord is alive or demon lord is bossdefeated, now hb is demon lord;
		if hb is mechanic:
			say "[speech style of M]'This is Xavier's pleasure hotel. [if hb is alive]If [he of hb] asks you for an amulet, you must never bring it to [him of hb]. There is no telling how powerful [he of hb] would become...'[otherwise]It was unfortunate that [he of hb] had to die, but it is what [he of hb] deserved.'[end if][roman type][line break]";
		otherwise:
			say "[speech style of M]'This is the demon Xavier's pleasure hotel. [if hb is alive]Was [he of hb] this powerful before I sealed [him of hb]? Maybe I've grown weaker...'[otherwise]I'm not sure how you managed to defeat [him of hb]...'[end if][roman type][line break]";
	otherwise if the player is in the woods:
		let vb be vine boss;
		say "[speech style of M]'This is the forest of Bimbacia, which the vine lord calls its domain. [if the times-submitted of vb > 0]Naturally, that extends to all orifices in the forest as well...'[otherwise if vb is alive]I don't know why I created something so annoying...'[otherwise]Or- it used to. Defeating such a creature is quite a feat!'[end if][roman type][line break]";
	otherwise if the player is in the school:
		say "[speech style of M]'This is the Slut School. I can't wait to leave this place.'[roman type][line break]";
	otherwise:
		let mb be vampiress;
		if herald is alive or herald is bossdefeated, now mb is herald;
		if mb is vampiress, say "[speech style of M]'This is Aurora's mansion, although...[he of mb] never fights seriously, so it wouldn't be surprising if someone else defeated [him of mb] and started squatting while [he of mb] was recovering.'[roman type][line break]";
		otherwise say "[speech style of M]'This is Aurora's mansion[if mb is alive], but...something else is trying to claim ownership too. Even I don't know what it is.[otherwise], although I fear that the eldritch entitites that have their eyes on this place have something to say about that.'[roman type][line break]".

To say WhoAnswer of (M - ex-princess):
	say "[speech style of M]'I told you before, I'm Princess Annie! I created this dimension.'[roman type][line break]".

To say StoryAnswer of (M - ex-princess):
	if the player is in the dungeon:
		let db be minotaur;
		if diaper quest is 1, now db is boogeymonster;
		if db is minotaur:
			say "[speech style of M]'I created [NameDesc of db] as a perfect guard for my dungeon. For personal reasons, I gave [him of db] a larger [DickDesc of db] and inhuman stamina, and it made [him of db] impossible to control. Still, if I didn't have my responsibilities as a ruler...'[roman type][line break]";
		otherwise:
			say "[speech style of M]'I created [NameDesc of db] to guard my dungeon, but [he of db] was too scary...I had no choice but to put [him of db] under lock and key.'[roman type][line break]";
	otherwise if the player is in the hotel:
		let hb be mechanic;
		if demon lord is alive or demon lord is bossdefeated, now hb is demon lord;
		if hb is mechanic:
			say "[speech style of M]'Xavier is a criminal, I bound here as part of [his of hb] punishment.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Xavier is an invader from another dimension, who I defeated and sealed away. [if hb is alive][big he of hb] is even more powerful than [he of hb] was back then...I'll need your help[otherwise]Many of [his of hb] vassals remain in this world[end if].'[roman type][line break]";
	otherwise if the player is in the woods:
		say "[speech style of M]'When I created this forest, I was going through this phase where I was really into tentacles. Sorry.'[roman type][line break]";
	otherwise if the player is in the school:
		say "[speech style of M]'I never thought that headmistress would be able to overpower me like that. That bitch...'[roman type][line break]";
	otherwise:
		let mb be vampiress;
		if herald is alive or herald is bossdefeated, now mb is herald;
		if mb is vampiress:
			say "[speech style of M]'This mansion looked a lot cleaner when I created it. This is why you can't trust management to an undead.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'This mansion [first custom style]BELONGS TO THE GREAT ONES. SOON, OTHER PLACES WILL FALL.'[roman type][line break]".

To say EscapeAnswer of (M - ex-princess):
	say "[speech style of M]'You must defeat the masters of this game. They're beyond my jurisdiction, so I can't really help you.'[roman type][line break]".[TODO: work on]

To say AdviceQuestion of (M - ex-princess):
	let B be a random slutty sister;
	if the player is in the dungeon:
		if minotaur is alive, now B is minotaur;
		if boogeymonster is alive, now B is boogeymonster;
	if the player is in the hotel:
		if mechanic is alive, now B is mechanic;
		if demon lord is alive, now B is demon lord;
	if the player is in the woods:
		if vine boss is alive, now B is vine boss;
	if the player is in the mansion:
		if vampiress is alive, now B is vampiress;
		if herald is alive, now B is herald;
	if B is a slutty sister, say "[variable custom style]'How do I defeat the slutty sisters?'[roman type][line break]";
	otherwise say "[variable custom style]'How do I defeat [NameDesc of B]?'[roman type][line break]".

To say AdviceAnswer of (M - ex-princess):
	if the player is in the dungeon:
		if minotaur is alive:
			let db be minotaur;
			say "[speech style of M]'[big he of db] may be strong, but [he of db] tires easily. If you exhaust [him of db] first, [he of db] will die quickly.'[roman type][line break]";
		otherwise if boogeymonster is alive:
			say "[speech style of M]'You must ignore its evil visions and fight it head on.'[roman type][line break]";
	otherwise if the player is in the hotel:
		if demon lord is alive:
			let dl be demon lord;
			say "[speech style of M]'It will be difficult. [big he of dl] is immune to physical weapons, so if you don't have a magic weapon, you will need a blessing from the gods. [big he of M] has a weakness, but it isn't worth the risk.'[roman type][line break]";[he's also weak to demonic items]
		otherwise if mechanic is alive:
			let mec be mechanic;
			say "[speech style of M]'If you can separate [him of mec] from [his of mec] wrench, [he of mec] will be greatly weakened. After that, [he of mec] will be just like anyone else.'[roman type][line break]";
	otherwise if the player is in the woods:
		if vine boss is alive, say "[speech style of M]'You must enter its lair and face it in single combat. If you allow yourself to be violated, you may doom yourself to a horrible fate.'[roman type][line break]";
	otherwise if the player is in the mansion:
		if herald is alive:
			say "[speech style of M]'I...don't know. I have never seen that thing before.'[roman type][line break]";
		otherwise if vampiress is alive:
			let mb be vampiress;
			say "[speech style of M]'Do you really need to defeat [him of mb]? [big he of mb]'s harmless...Well, as a vampire, [he of mb] must feed in order to maintain [his of mb] strength. If you don't allow [him of mb] to feed, [he of mb] will eventually starve.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Hmm...I didn't create them, so I'm not sure. Let me think about it.'[roman type][line break]".[TODO: work on]

To say TeachQuestion of (M - ex-princess):
	say "[variable custom style]'So, is there anything you can do to help me?'[roman type][line break]";

To compute teaching of (M - ex-princess):
	say "[line break][speech style of M]'When the time comes, I will aid you, but until then, I need to conserve all my energy and strength.'[roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - ex-princess):
	if M is interested:
		if M is caged or M is defeated:
			compute unfriendly drink of M;
		otherwise:
			say "[speech style of M]'I'm sorry, while I can usually conjure up drinks for everyone, right now I need to conserve every ounce of my magical strength.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] acts as if [he of M] didn't even hear you.".

To compute unfriendly drink of (M - ex-princess):
	say "[speech style of M]'Do I look like I'm in a situation where I can be helping others?'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

Definition: ex-princess is willing to give snacks if it is not caged and it is not defeated.

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - ex-princess):
	if M is caged and the number of monsters in the location of M is 1:
		if T is vibe-wand, decide on 99;
		if T is skeleton key and there is a vibe-wand retained by M, decide on 99;
	decide on 0.

To say MonsterOfferAcceptFlav of (M - ex-princess) to (T - a vibe-wand):
	say "[BigNameDesc of M][']s eyes go wide.[line break][speech style of M]'[if T is royal scepter]Yes... Yes! You found it! Huzzah! With this, the fight will be easy[otherwise if there is a vibe-wand retained by T]This is an unnecessary extra, but it might help. I'll take it[otherwise]Hmm, yes, I can use this, I think. With your help, this should serve[end if]. Now [if diaper quest is 1]go drop that in the diaper pail and then [end if]get me out of here. You did bring a key, didn't you?'[roman type][line break]".

To say MonsterOfferAcceptFlav of (M - ex-princess) to (T - skeleton key):
	now the friendly boredom of M is 0;
	say "[BigNameDesc of M] is visibly elated.[line break][speech style of M]'Yes! You found one! This is exactly what I needed! Now, quick, let's go!'[roman type][line break]With the key, the door to [his of M] cell clicks open and [he of M] staggers out. As soon as [he of M] has crossed the threshold of the cell, you watch as pink sparks fizz across [his of M] outfit, transforming it into an elegant (if rather exposing) pink gown[if diaper lover > 0]. However, [his of M] outfit visibly includes a very bulky plain white diaper, fully visible from under the exposing segment of [his of M] skirt. It doesn't look like [he of M] intended to include the diaper in [his of M] transformation, and is equal parts confused and furious[end if].".

To say MonsterOfferRejectFlav of (M - ex-princess) to (T - a thing):
	say "[BigNameDesc of M] shakes [his of M] head.[line break][speech style of M]'[if M is caged and the number of monsters in the location of the player > 1]I don't want that! That's the sort of thing you'd give me if you were trying to help me escape, which would be a very silly thing to do IN FRONT OF PEOPLE, haha! Good joke!'[otherwise if T is skeleton key and M is caged]You'd better get me a magic wand first.'[otherwise if M is caged][big please], they'll just punish me more if they catch me with that. Just bring the things I asked for. A magic wand and a key...'[otherwise]Don't worry, honey, I don't need anything from you any more. You've done more than enough for me.'[end if][roman type][line break]";
	if T is vibe-wand or T is skeleton key, now M is not rejecting T.

To say MonsterTakeFlav of (M - ex-princess) to (T - a vibe-wand):
	if M is caged:
		if diaper quest is 1, say "You quickly [if the player is prone]crawl[otherwise]run[end if] over to the diaper pail in the hallway, and drop [NameDesc of T] into the chute. By the time you return to [NameDesc of M], you can't see it anywhere. It looks like [he of M] has somehow managed to hide it somewhere out of view of the window.";
		otherwise say "You push [NameDesc of T] through the bars, and [NameDesc of M] takes it.";
	otherwise:
		say "[BigNameDesc of M] takes [NameDesc of T].".

To compute resolution of (M - ex-princess) taking (T - a thing):
	do nothing.

To compute resolution of (M - ex-princess) taking (T - skeleton key):
	destroy T;
	now M is guarding;
	now School35 is use-the-floor;
	let LN be the list of alive undefeated staff members;
	sort LN in random order;
	repeat with N running through LN:
		now N is in School33;
		anger N;
		now N is guarding;
		now the scared of N is 0;
		if the number of unleashed staff member in the location of M < 2:
			now N is unleashed;
			try N going north;
			now N is interested;
	repeat with N running through alive students:
		now N is guarding; [This will stop them joining the fight]
	let STN be the number of staff members in the location of the player;
	if STN > 0:
		say "There is no time to talk to [NameDesc of M] about [his of M] outfit before [his of M] [if STN > 1]captors arrive[otherwise]captor arrives[end if], clearly somehow alerted to [his of M] escape!";
		let N be headmistress;
		if N is not in the location of the player, now N is a random staff member in the location of the player;
		say "[BigNameDesc of N] speaks.[line break][speech style of N]'Really, [NameBimbo]? After all the trust we put in you, and after all we've taught you, this is how you repay us? You WILL regret this.'[roman type][line break]";
		if armband is held:
			say "Your [MediumDesc of armband] vanishes!";
			destroy armband; [destroyed rather than in Holding Pen will allow the player back into the school]
		say "[speech style of M]'Not likely.'[roman type][line break]";
		now N is a random unleashed staff member in the location of M;
		compute M enslaving N;
		if STN > 1:
			if royal scepter is retained by M:
				repeat with STU running through staff members:
					if STU is unleashed and (STU is sapphire-teacher or STU is not teacher), compute M enslaving STU;
			otherwise:
				say "[BigNameDesc of M] falls to [his of M] knees with fatigue. [big he of M] looks up at you.[speech style of M]'You can take care of the [if STN > 2]others[otherwise]other one[end if], right?'[roman type][line break]";
				if the player is prone, say "With a final flick of [his of M] wand, [he of M] helps you to stand.";
				now the stance of the player is 0;

Check going while ex-princess is guarding:
	if ex-princess is in the location of the player, say "If you leave [NameDesc of ex-princess] here, [he of ex-princess] might get captured again. You should see this through to the end." instead.

An all later time based rule (this is the school rescue fight rule):
	if ex-princess is guarding:
		let M be ex-princess;
		let R be the location of M;
		let SMN be the number of alive unleashed staff members + the number of alive guarding staff members;
		if SMN > 0:
			if the number of undefeated staff members in the location of M > 0 and (M is not in the location of the player or the player is prone):
				let N be a random unleashed staff member in the location of M;
				if M is in the location of the player:
					say "As soon as you are on the ground, you find a heel pressed into your back.[line break][speech style of N]'That's enough. This rebellion is over.'[roman type][line break]With a few arcane gestures, [NameDesc of N] rips the wand from [NameDesc of M][']s hand and binds you both to the ground with ropes of light. ";
					let PSM be the number of pacified staff members in the location of the player;
					if PSM > 0, say "[big he of N] releases [his of N] bound comrade[if PSM > 1]s[end if].";
				repeat with SM running through monsters in the school:
					now SM is unleashed;
				if diaper focus > 0, now M is diaper-enslaved;
				otherwise now M is sex-enslaved;
				now M is in School34;
				compute N dungeon locking;
		if M is guarding:
			now the health of M is 1;
			repeat with SM running through fucked-silly staff members in the location of M:
				compute M enslaving SM;
			if headmistress is in the location of M and headmistress is unleashed and (glittery-wand is not retained by M or glittery-wand is not cursed): [Princess fights headmistress herself]
				compute M enslaving headmistress;
				if headmistress is in the location of the player and headmistress is not unleashed, say MonsterDesc of headmistress;
			let NUSM be the number of undefeated staff members in the location of M;
			if NUSM < a random number between 1 and 2: [A new NPC joins the fray]
				let LSM be the list of alive guarding staff members;
				if the number of entries in LSM > 0:
					sort LSM in random order;
					let SM be entry 1 in LSM;
					now SM is unleashed;
					now SM is in School33;
					now SM is interested;
					try SM going north;
			if the number of undefeated staff members in the location of M is 0:
				if M is in the location of the player:
					say "[BigNameDesc of M] folds [his of M] hands in triumph.[line break][speech style of M]'It is done. I have dreamed of this moment for such a long time!'[roman type][line break]With a wave of [his of M] hands, everyone else, including [himself of M], is teleported away.";
				now M is in Dungeon11;
				let LN be the list of monsters in the school;
				let NLN be 1;
				repeat with N running through LN:
					if N is defeated:
						if N is headmistress:
							now N is in Dungeon11;
						otherwise if N is receptionist:
							now N is in School01;
						otherwise if N is nurse:
							now N is in School12;
						otherwise:
							let PHR be a random unbossed placed haunted room;
							let PMR be a random unbossed placed modern room;
							if PHR is a room and the remainder after dividing NLN by 3 is 1:
								now N is in PHR;
							otherwise if PMR is a room and the remainder after dividing NLN by 3 is 2:
								now N is in PMR;
							otherwise:
								now N is in a random unbossed placed labyrinth room;
							increase NLN by 1;
					otherwise:
						destroy N;
				now M is unconcerned;
				now the raw difficulty of M is 99;
				now M is uninterested;
				now the refactory-period of M is the messRefactoryLimit of M + 40;
				now the boredom of M is 0.

To compute (M - ex-princess) enslaving (N - a monster):
	if diaper quest is 1 or a random number between 0 and diaper lover > 0, now N is diaper-enslaved;
	otherwise now N is sex-enslaved;
	if M is in the location of the player:
		let W be a random vibe-wand retained by M;
		if glittery-wand is retained by M, now W is glittery-wand;
		if royal scepter is retained by M, now W is royal scepter;
		say "[if W is not glittery-wand or W is not cursed][one of][BigNameDesc of M] spins [his of M] [ShortDesc of W] and then[or]Once again [NameDesc of M][stopping] blasts[otherwise][BigNameDesc of M] manages to pull the black vibrating wand away from [his of M] crotch for just long enough to hit[end if] [NameDesc of N] with a powerful wave of magical energy. [BigNameDesc of N] screeches in shock as [he of N] has [his of N] outfit transformed, [his of N] clothes becoming [if N is diaper-enslaved]babified[otherwise]ripped[end if] and items of bondage appearing on [his of N] person.";

To compute (M - ex-princess) enslaving (N - headmistress):
	let enslave-success be 1;
	if M is in the location of the player:
		let W be a random vibe-wand retained by M;
		if glittery-wand is retained by M, now W is glittery-wand;
		if royal scepter is retained by M, now W is royal scepter;
		if M is in the location of the player:
			if the health of N > 0:
				say "[BigNameDesc of N] notices you and [NameDesc of M] and a look of horror and disbelief crosses [his of N] face.[line break][speech style of N]'No, it can't be! I won't let you!'[roman type][line break]";
				if W is not glittery-wand or (a random number between 1 and 2 is 1 and W is not cursed):
					say "[BigNameDesc of N] tries to throw a magic cloud of shadow towards [NameDesc of M], but [he of M] sees it coming in time and defects it with [his of M] [ShortDesc of W], sending it hurtling back to its caster. [BigNameDesc of N] screams as [he of N] is engulfed in the darkness, and when it clears, [he of N] looks rather different.";
				otherwise:
					now enslave-success is 0;
					now glittery-wand is cursed;
					say "[BigNameDesc of N] throws a magic cloud of shadow towards [NameDesc of M], but [he of M] sees it coming in time and deflects it with [his of M] [ShortDesc of W].[line break][speech style of M]'Too easy!'[roman type][line break][BigNameDesc of M] smiles proudly as [he of M] strikes the shadow with the wand. Time seems to slow as [NameDesc of N] grins and says with a glint in [his of N] eye:[line break][speech style of N]'Oh, where did you get that wand from, I wonder?'[line break][speech style of M]'What? NOOOO!'[roman type][line break]That's all [NameDesc of M] has time to say before the shadow wraps itself around the [ShortDesc of W] turning its gems to a jet black. [BigNameDesc of M] shakes [his of M] hand, trying to drop the black wand, but is unable to. You watch with [horror the sex addiction of the player] as clearly against [his of M] will, [his of M] hand pushes the head of the vibrator towards [his of M] clitoris. There's nothing either of you can do to stop it as [he of M] begins to use the wand to masturbate rather than fight. It looks like you'll have to finish this fight all on your own...";
			otherwise:
				say "[BigNameDesc of M] laughs in gleeful triumph as [he of M] blasts [NameDesc of N] with a powerful wave of magical energy. [BigNameDesc of N] screeches in shock as [he of N] has [his of N] outfit transformed";
	if enslave-success is 1:
		if diaper focus > 0, now N is diaper-enslaved;
		otherwise now N is sex-enslaved.

An all later time based rule (this is the asscum annie rule):
	if ex-princess is sex-enslaved and playerRegion is School:
		if the current-torment of ex-princess <= 0:
			now the current-torment of ex-princess is a random number between 25 and 35;
			if ex-princess is in the location of the player:
				say "[BigNameDesc of ex-princess] squeaks as [his of ex-princess] belly fills up with [semen].[line break][speech style of ex-princess]'[one of]I can't hold it!'[or]Not again...'[or]Ergh... so gross...'[or]It's coming out! Don't look!'[then at random][roman type][line break]With a lewd squelch, [semen] starts to spurt out of [his of ex-princess] butthole. ";
				let semen-caught be 0;
				if the player is able to use their hands:
					repeat with B running through carried open topped vessels:
						if semen-caught is 0:
							say "Collect the [semen] in the [ShortDesc of B]?[if B is non-empty] You'll have to dump its current contents of [PotionType of B].[end if]";
							if the player is consenting:
								dump B;
								now the fill-colour of B is creamy;
								now the doses of B is the max-doses of B;
								now semen-caught is 2;
								say "You place the [ShortDesc of B] below [his of ex-princess] butthole and use it to collect all the asscum!";
								now B is monster-origin;
				if semen-caught is 0:
					now autodrink is 1;
					if the player is prone and the player is able to drink:
						say "Do you seal [his of ex-princess] butthole with your lips and drink the asscum?";
						if the player is bimbo consenting, now semen-caught is 1;
					now autodrink is 0;
				if semen-caught is 1:
					say "Opening your [LipDesc] wide, you push them against [NameDesc of ex-princess][']s [asshole], trying to make sure you don't miss a single gulp of the flow of [semen] that's spurting out of [his of ex-princess] backdoor. [if the semen taste addiction of the player < 8]Wincing, you[otherwise]You[end if] swallow down every last drop of [his of ex-princess] magic anal creampie.";
					StomachSemenUp 2;
					humiliate MODERATE-HUMILIATION;
					progress quest of creampie-drinking-quest;
				otherwise if semen-caught is 0:
					say "The [semen] splurts and splatters to the ground[if the player is upright]. If you were on your knees, you might have had a chance to catch it[end if].";
					if the player is in School34:
						say "Suddenly a condom soars in from the hallway. The [semen] on the ground begins to rise into the air, and is soon filling the condom!";
						let C be a random worn condom pinnable clothing;
						if C is nothing, now C is string-belt;
						unless C is worn:
							summon C cursed;
							say "Suddenly, a [printed name of C] appears around your waist!";
						increase the used condoms of C by 1;
						say "The condom whizzes onto and attaches itself to your [MediumDesc of C]!";
						progress quest of condom-eating-quest;
						say CondomNewbieTip;
						force immediate clothing-focus redraw;
					otherwise:
						let L be the location of ex-princess;
						PuddleUp semen by 3 in L;
			otherwise:
				let L be the location of ex-princess;
				PuddleUp semen by 3 in L;
				if ex-princess is in School34 and the player is not in School34 and the player is not in School19, now ex-princess is in School19;
		otherwise:
			decrease the current-torment of ex-princess by time-seconds.

An all later time based rule (this is the fannie facerub rule):
	if ex-princess is diaper-enslaved and playerRegion is School:
		if ex-princess is in the location of the player:
			if there is a worn dirty diaper:
				say "[BigNameDesc of ex-princess] groans as [he of ex-princess] can't help but rub [his of ex-princess] face into the seat of your diaper.[line break][speech style of ex-princess]'[one of]I can't stop myself... Noooo!'[or]I'm sorry, I'm so sorry!'[or]Eurgh, this is so disgusting!'[or][if the player is in School34]This is your fault, how could you let them defeat us?! I'm gong to be stuck doing this for centuries...'[otherwise]Please move away from me, don't make me do this!'[end if][or]I can't believe I'm doing this...'[or]Why me? Why me???'[or]Why did I even create this place? Did I secretly... Eurgh... Want this all along?'[or]No. No. It's too disgusting! Make it stop!'[or]Euuuuurgh, yuck yuck yuck...'[or]Ugh, the smell!'[then at random][roman type][line break]";
				ruin vagina;
			if the current-torment of ex-princess <= 0:
				now the current-torment of ex-princess is a random number between 25 and 35;
				say "[speech style of ex-princess]'[one of]Uh-oh[or]Oh god, not again, not so soon[stopping]...'[roman type][line break][BigNameDesc of ex-princess] makes a loud [if diaper messing < 4]hissing[otherwise]BLART[end if] sound from within [his of ex-princess] diaper as [he of ex-princess] soils [himself of ex-princess] again, adding more volume to [his of ex-princess] padding and once again flooding [his of ex-princess] brain with uncontrollable arousal. [big his of ex-princess] mittened hands quickly return to [his of ex-princess] erogenous zones and [he of ex-princess] begins masturbating once again.";
			otherwise:
				say "[BigNameDesc of ex-princess] continues to [one of]rub [his of ex-princess] padded crotch and breasts with [his of ex-princess] mittened hands[or]masturbate as much as [he of ex-princess] can through [his of ex-princess] extra-thick padding[or]pleasure [himself of ex-princess] through [his of ex-princess] thick diaper[or]rub [himself of ex-princess] through [his of ex-princess] soiled nappy[in random order].";
				decrease the current-torment of ex-princess by time-seconds;
				if the current-torment of ex-princess <= 0:
					say "You watch with [horror the sex addiction of the player] as [he of ex-princess] brings [himself of ex-princess] to a shivering, screaming orgasm, leaving [him of ex-princess] panting with exhaustion.";
					increase the torment-count of ex-princess by 1;
					if there is a worn dirty diaper and the player is not in School34:
						say "You feel more dominant!";
						DelicateDown 1;
		otherwise:
			if ex-princess is in School34 and the player is not in School34 and the player is not in School19, now ex-princess is in School19.

To construct unique buttons for (T - ex-princess):
	if ButtonTableFull is 0:
		if T is caged:
			if diaper quest is 1:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is Figure of PokeButton;
				now the ButtonCommand entry is "push button";
				now the ButtonColour entry is lightModeFullGreen;
			otherwise if watersports fetish is 1 and the player is not incontinent:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is Figure of ToiletButton;
				now the ButtonCommand entry is "use toilet";
				now the ButtonColour entry is lightModeFullGreen;
				if the player is prone, now the ButtonColour entry is lightModeFullYellow. [turn yellow - player needs to stand]

Check pushing ex-princess when ex-princess is caged:
	allocate 2 seconds;
	say "You push the button. ";
	if the current-torment of ex-princess <= 0:
		now the current-torment of ex-princess is 60;
		increase the torment-count of ex-princess by 1;
		say "[BigNameDesc of ex-princess] wails in despair as mechanical winches clunk into motion, forcing [his of ex-princess] arms up and [his of ex-princess] neck and head down, and down, and down until [his of ex-princess] face is pressed into the soiled diapers on the ground. The diapers queued up in the tube roll out, falling down on top of [his of ex-princess] head, half-burying [his of ex-princess] face in gross used nappies.[line break][speech style of ex-princess]'Nooooo! You fucking cunt!'[roman type][line break]That's all [he of ex-princess] has time to say before a loud vibrating sound can be heard through the intercom. A frustrated groan escapes [NameDesc of ex-princess][']s lips, which soon turns into a sexual moan[unless the player is broken]. You feel more dominant, and less ashamed of yourself[end if]!";
		DelicateDown 1;
		obsceneDignify;
	otherwise:
		say "Nothing more happens.";
	do nothing instead.

To compute toilet reaction of (M - ex-princess):
	if M is caged:
		say "[BigNameDesc of M] wails in despair as your [urine] flows towards [his of M] food.[speech style of M]'You fucking cunt!'[roman type][line break]That's all [he of M] has time to say before [he of M] has to begin sucking up your [urine] and transferring it, mouthful by mouthful, into [his of M] toilet[unless the player is broken]. You feel more dominant, and less ashamed of yourself[end if]!";
		DelicateDown 1;
		obsceneDignify;
		increase the torment-count of M by 1;
		increase the current-torment of M by 60;
	otherwise:
		say "[BigNameDesc of M] frowns but politely looks the other way.".

An all later time based rule (this is the caged princess torture continues rule):
	if ex-princess is caged and the current-torment of ex-princess > 0:
		let M be ex-princess;
		decrease the current-torment of M by time-seconds;
		if M is in the location of the player:
			if diaper quest is 1:
				say "You watch [NameDesc of M] continue trying to nudge the soiled diapers away from [his of M] face and head [one of]without success[or]in vain[or]but to no avail[at random]. [big his of M] vibrator powerfully and loudly buzzes away from within [his of M] padding.[line break][speech style of M]'[one of]Uhnnnnn[or]Aaaaaah[or]MMMMMMmmmmph[or]Mmmmmmm[at random]...'[roman type][line break]";
				if the current-torment of ex-princess <= 0:
					let N be a random threatening monster in the location of the player;
					say "You watch with [horror the bimbo of the player] as [NameDesc of M][']s thighs begin to shake uncontrollably, and moments later [he of M] is screaming into the gross padding in front of [his of M] mouth as [he of M] cums hard. Now out of breath, [he of M] is forced to take in several desperate gasps of pungent diaper air just to stay conscious. Finally, after [he of M] comes down from [his of M] high, the ropes re-activate, pulling [him of M] back up so that [his of M] face is pressed against the exit of the diaper pail tube[if N is monster]. [big he of M] looks at you and seems to be about to say something, but then looks nervously at [NameDesc of N] and seems to change [his of M] mind about what to say.[line break][speech style of M]'Thank you for making me cum over your fragrant diapers, I hope to smell your diapers again soon[otherwise].[line break][speech style of M]'Please, please, [please], I beg you, help me escape this torment. I'll forever be in your debt[end if]...'[roman type][line break]";
				otherwise if the player is feeling dominant or the player is a nympho:
					say "[one of]You can't help but find the sight rather arousing.[or][or][or][or][or][cycling]";
					arouse 300;
			otherwise:
				say "You watch [NameDesc of M] sucking up [if watersports fetish is 1][urine][otherwise][semen][end if] from the transparent tubing.[line break][speech style of M]'[one of]Hlk Hlk Hlk[or]Hlk Hlk Nnk[or]Gluk gluk gluk[at random]...'[roman type][line break][one of][or][or]With a mouthful of [if watersports fetish is 1][urine][otherwise][semen][end if], [he of M] turns around and spits it into the toilet behind [him of M]. [big he of M] gags in disgust.[line break][speech style of M]'[if a random number between 1 and 2 is 1]Yuck, disgusting[otherwise]Ergh, so gross[end if]!'[roman type][line break][or][or][or][big he of M] spits the mouthful of [if watersports fetish is 1][urine][otherwise][semen][end if] into the toilet. [big he of M] [if a random number between 1 and 2 is 1]half-coughs, half-chokes a few times before gasping for breath[otherwise]moans weakly[end if].[cycling]";
				if the current-torment of ex-princess <= 0:
					let N be a random threatening monster in the location of the player;
					say "Finally the tube is empty, and [NameDesc of M] collapses back to the ground, breathless and exhausted[if N is monster]. [big he of M] looks at you and seems to be about to say something, but then looks nervously at [NameDesc of N] and seems to change [his of M] mind about what to say.[line break][speech style of M]'Thank you for using this obedient toilet slut, I hope you'll come again[otherwise].[line break][speech style of M]'Please, please, [please], I beg you, help me escape this torment. I'll forever be in your debt[end if]...'[roman type][line break]";
				otherwise if the player is feeling dominant or the player is a nympho:
					say "[one of]You can't help but find the sight rather arousing.[or][or][or][or][or][cycling]";
					arouse 300.

An all time based rule (this is the caged princess tortured rule):
	if ex-princess is caged and the current-torment of ex-princess <= 0 and ex-princess is in the location of the player:
		let N be a random threatening friendly monster in the location of ex-princess;
		if N is monster:
			let M be ex-princess;
			say "[if N is student][one of][speech style of N]'Hmm, this looks fun!'[roman type][line break][or][stopping][end if][if watersports fetish is 1 and diaper quest is 0][BigNameDesc of N] waltzes up to the urinal and lets loose a stream of [urine] into the bowl. [BigNameDesc of M] watches on with a mixture of despair and anger.[end if]";
			increase the torment-count of M by 1;
			increase the current-torment of M by 60;
			say "[BigNameDesc of N] pushes the button and you watch with [horror the sex addiction of the player] as ";
			if diaper quest is 1, say "mechanical winches clunk into motion, forcing [his of ex-princess] arms up and [his of ex-princess] neck and head down, and down, and down until [his of ex-princess] face is pressed into the soiled diapers on the ground. The diapers queued up in the tube roll out, falling down on top of [his of ex-princess] head, half-burying [his of ex-princess] face in gross used nappies. A loud vibrating sound can be heard through the intercom.[line break][speech style of N]'[one of]Oooh, are you enjoying smelling our nasty used diapers?'[or]That's right bitch, get a good sniff of our diapers while you cum!'[in random order][roman type][line break]A frustrated groan escapes [NameDesc of ex-princess][']s lips, which soon turns into a sexual moan.";
			otherwise say "the [if watersports fetish is 1][urine][otherwise][semen][end if] begins to flow down the tube.[line break][speech style of N]'[one of]Get to work, [if watersports fetish is 1]toilet [boy of M][otherwise]cum-bucket[end if][or]Time's ticking, cunt[or]Grub's up, bitch[then at random]!'[roman type][line break][BigNameDesc of M] [one of]sobs quietly to [himself of M][or]mutters expletives under [his of M] breath[or]groans weakly[in random order] as [he of M] gets to work.".

Definition: ex-princess is messy if it is unconcerned and the refactory-period of it <= (the messRefactoryLimit of it) and diaper messing >= 7.

To say SuddenMessFlav of (M - ex-princess):
	say "[speech style of M]'Oh crap, here we go again...'[roman type][line break][BigNameDesc of M] grimaces and quickly adopts a squatting stance. Then you hear the loud sound of [his of M] butthole rasping and squelching as [he of M] fills [his of M] huge diaper.";
	if M is interested:
		compute ChangeRequest of M;
	otherwise:
		check perception of M.

To compute ChangeRequest of (M - ex-princess):
	if the player is not in danger and the player is not immobile:
		say "[BigNameDesc of M] looks at you bashfully.[line break][speech style of M]'I'm sorry to ask this of you[one of], but... it seems that I've been cursed to only get a change when someone else makes me... makes me cum... by letting me grind on their face. No matter what I try, I haven't managed to reverse the curse yet. Would you... would you let me... I'm really sorry to ask this of you, but... would you let me use your face[or] again, but is there any chance you'd be willing to let me use your face so that I can get a change[stopping]?'[roman type][line break]Let [NameDesc of M] grind [his of M] messy diaper on your face until [he of M] cums?";
		if the player is consenting:
			if the player is upright:
				say "[bold type]You get on your knees.[roman type][line break]";
				now the stance of the player is 1;
			say "[BigNameDesc of M] smiles with shy appreciation as she mounts your nose with the front of [his of M] diaper. The strong smell hits your nostrils as [he of M] begins to grind away. It's not a short process for [him of M] to build all the way to climax, and so by the time [he of M] finally does reach [his of M] peak, your nostrils and airways have been fully drenched in [his of M] shameful scent.";
			now the refactory-period of M is a random number between 0 and 200;
			DelicateUp 1;
			SexAddictUp 1;
		otherwise:
			say "You wrinkle your nose and step away from [him of M]. [big he of M] looks crestfallen and frustrated.[line break][speech style of M]'...Fine. I won't force you. But don't expect me to be able to help you while I'm stuck like this.'[roman type][line break]".

To compute diaper mess reaction of (M - ex-princess):
	say "[BigNameDesc of M] looks at you with a caring smile.".

Princess ends here.
