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
Definition: a person is virtual:
	if gameover-flag is 1, decide no;
	if the player is in the dungeon or the player is in the woods or the player is in the hotel or the player is in the mansion or the player is in woodsboss01 or the player is in iron maiden or the player is in blindfolded or the player is in sky01 or the player is in HoleInWall, decide yes.

[!<Player>@<travelDirection:Direction>*

REQUIRES COMMENTING

*@!]
The player has a direction called travel-direction.

[!<Player>@<travelOpposite:Direction>*

REQUIRES COMMENTING

*@!]
The player has a direction called travel-opposite.

[!<Player>@<roomEntering:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called room-entering.

[!<Player>@<motion:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called motion.

[!<milking:Integer>*

REQUIRES COMMENTING

*!]
milking is a number that varies.  milking is usually 0.

[!<Player>@<alert:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called alert.  The alert of the player is usually 0.

[!<Player>@<faintCount:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called faint count.  The faint count of the player is usually 0.

[!<Player>@<crawlCount:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called crawl count.  The crawl count of the player is usually 0.


[!<Player>@<pregnancy:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called pregnancy.  The pregnancy of the player is usually 0.

[!<Player>@<pregnancyRate:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called pregnancy rate.  The pregnancy rate of the player is usually 1.

[!<Player>@<children:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called children.  The children of the player is usually 0.

[!<Player>@<questionAsked:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called question-asked.  The question-asked of the player is usually 1.


[!<Player>@<delayedArousal:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called delayed arousal.

[!<Player>@<arousal:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called arousal.

[!<Player>@<bladder:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called bladder.

[!<Player>@<delayedBladder:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called delayed bladder.

[!<Player>@<lactationRate:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called lactation rate.

[!<Player>@<lactationCount:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called lactation-count.

[!<Player>@<latexTransformation:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called latex-transformation.

[!<Player>@<extraLives:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called extra lives.  The extra lives of the player is usually 3.


[!<Person>@<souled:Boolean>*

REQUIRES COMMENTING

*@!]
A person can be souled or soulless. A person is usually souled. [Implementation of soullessness]

[!<Player>@<souls:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called souls.

[!<Player>@<totalSouls:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called total-souls.

[!<Player>@<soulAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called soul addiction.

[!<Player>@<souledHumiliation:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called souled-humiliation.

[!<Person>@<vineCursed:Boolean>*

REQUIRES COMMENTING

*@!]
A person can be vine-cursed. A person is usually not vine-cursed.[Can vines pick on the player while they are standing? Inflicted by the witch]

[!<Player>@<enhanced:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called enhanced.

[!<PersonReaction>@

REQUIRES COMMENTING

@!]
person-reaction is a kind of value.  The person-reactions are unprepared, resisting, submitting, begging for mercy.

[!<Player>@<playerReaction:PersonReaction>*

REQUIRES COMMENTING

*@!]
The player has a person-reaction called player-reaction.

[!<DecideWhichNumberIsTheReactionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the reaction of the player: [TODO eventually remove]
	if the player-reaction of the player is resisting, decide on 0;
	if the player-reaction of the player is submitting, decide on 1;
	if the player-reaction of the player is begging for mercy, decide on 2;
	if the delicateness of the player > 8, decide on 1;
	decide on 0.

[!<stickiness:Integer>*

This represents how much the player is stuck to (the floor) by sticky stuff.
*!]
The player has a number called stickiness. The stickiness of the player is usually 0. [Originally used by ghost slime, then later by glue traps. Might also be used for wasps/spider npcs in the future]

This is the stickiness immobility rule:
	if the stickiness of the player > 0, rule fails.
The stickiness immobility rule is listed in the immobility rules.

[!<incontinence:Integer>*

REQUIRES COMMENTING

*!]
Incontinence is a number that varies.

[!<delayedStand:Integer>*

REQUIRES COMMENTING

*!]
Delayed Stand is a number that varies.  Delayed Stand is 0.

[!<delayedUrination:Integer>*

REQUIRES COMMENTING

*!]
Delayed Urination is a number that varies.  Delayed Urination is 0.

[!<delayedFainting:Integer>*

REQUIRES COMMENTING

*!]
Delayed Fainting is a number that varies.  Delayed Fainting is 0.

[!<startingEarnings:Integer>*

REQUIRES COMMENTING

*!]
Starting-earnings is a number that varies.  Starting-earnings is 999999.

[!<earnings:Integer>*

REQUIRES COMMENTING

*!]
Earnings is a number that varies.  Earnings is 0.

[!<seconds:Integer>*

REQUIRES COMMENTING

*!]
Seconds is a number that varies.  Seconds is 0.

[!<victory:Integer>*

REQUIRES COMMENTING

*!]
Victory is a number that varies.  Victory is 0.

[!<virginCursed:Integer>*

REQUIRES COMMENTING

*!]
Virgincursed is a number that varies.  Virgincursed is 0.

[!<lastLactatedTime:Integer>*

REQUIRES COMMENTING

*!]
last-lactated-time is a number that varies.  last-lactated-time is 0.
[The idea of last-lactated-time is that the player will smell of milk for a while after lactating, and possibly exciting some monsters when they scent it. At present, that's just the fairies.]

[!<decideToSuckle:Integer>*

REQUIRES COMMENTING

*!]
decideToSuckle is a number that varies. decideToSuckle is 0.

[!<fairySuckled:Integer>*

REQUIRES COMMENTING

*!]
FairySuckled is a number that varies. FairySuckled is 0.

[!<fairySuckleSlashes:Integer>*

REQUIRES COMMENTING

*!]
FairySuckleSlashes is a number that varies. FairySuckleSlashes is 0.

[!<Player>@<magicPower:Integer>*

This variable builds as you defeat tentacle monsters and allows you to purify the tentacle spawners

*!]
The player has a number called magic-power. The magic-power of the player is usually 0.

Misc Variables ends here.
