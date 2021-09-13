Misc Variables by Player begins here.

[!<gameoverFlag:Integer>*

Has the game ended?

*!]
gameover-flag is a number that varies.

[!<debugMode:Integer>*

Are we in debug mode?

*!]
debugmode is a number that varies.

[!<APersonIsVirtual>+

A person is classed as virtual if they are actually in the game that the person is playing within the game

...

*BWAAAAAAMP*

+!]
Definition: yourself is virtual:
	if gameover-flag is 1 or tutorial is 1, decide no;
	if the player is in capsule or the player is in start, decide no;
	decide yes.

The player has a direction called travel-direction.

The player has a direction called travel-opposite.

The player has a number called room-entering.

The player has a number called player-motion.

milking is a number that varies.

[!<Player>@<alert:Integer>*

Tells the game that something has happened that should interrupt resting / longwaiting. Needs to be set to 0 when resting / longwaiting starts.

*@!]
The player has a number called alert.

The player has a number called faint count.

The player has a number called crawl count.

[!<Player>@<pregnancy:Integer>*

0: Not pregnant
1: Normal pregnancy
2: Paused pregnancy
3: Egg pregnancy

*@!]
The player has a number called pregnancy.

The player has a number called pregnancy rate. The pregnancy rate of the player is 1.

The player has a number called children.

The player has a number called delayed arousal.

The player has a number called arousal.

The player has a number called bladder.

The player has a number called delayed bladder.

The player has a number called latex-transformation.

The player has a number called extra lives. The extra lives of the player is usually 3.

A person can be souled or soulless. A person is usually souled. [Implementation of soullessness]

[Keeps track of how many souls the player has removed, in total.]
The player has a number called total-souls.

[The player's addiction to eating souls. See the Demon Horns extension]
The player has a number called soul addiction.

A person can be vine-cursed. A person is usually not vine-cursed.[Can vines pick on the player while they are standing? Inflicted by the witch]

The player has a number called enhanced.

person-reaction is a kind of value. The person-reactions are unprepared, resisting, submitting, begging for mercy.

The player has a person-reaction called player-reaction.

To decide which number is the reaction of the player: [TODO eventually remove]
	if the player-reaction of the player is resisting, decide on 0;
	if wanking is 1 or the player-reaction of the player is submitting or the number of seduced reactive monsters > 0, decide on 1;
	if the player-reaction of the player is begging for mercy, decide on 2;
	[below here is for when the player is 'unprepared']
	if the delicateness of the player > 8, decide on 1;
	decide on 0.

[!<stickiness:Integer>*

This represents how much the player is stuck to (the floor) by sticky stuff.
*!]
The player has a number called stickiness. The stickiness of the player is usually 0. [Originally used by ghost slime, then later by glue traps. Might also be used for wasps/spider npcs in the future]

This is the stickiness immobility rule:
	if the stickiness of the player > 0, rule fails.
The stickiness immobility rule is listed in the immobility rules.

Incontinence is a number that varies.

Delayed Stand is a number that varies. Delayed Stand is 0.

Delayed Fainting is a number that varies. Delayed Fainting is 0.

Starting-earnings is a number that varies. Starting-earnings is 999999.

Earnings is a number that varies. Earnings is 0.

Seconds is a number that varies. Seconds is 0.

Victory is a number that varies. Victory is 0.

Virgincursed is a number that varies. Virgincursed is 0.

last-lactated-time is a number that varies. last-lactated-time is 0.
[The idea of last-lactated-time is that the player will smell of milk for a while after lactating, and possibly exciting some monsters when they scent it. At present, that's just the fairies.]

decideToSuckle is a number that varies. decideToSuckle is 0.

FairySuckled is a number that varies. FairySuckled is 0.

FairySuckleSlashes is a number that varies. FairySuckleSlashes is 0.

Misc Variables ends here.
