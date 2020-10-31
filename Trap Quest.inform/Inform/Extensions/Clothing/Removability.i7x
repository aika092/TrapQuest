Removability by Clothing begins here.

Definition: a thing is removable: decide yes.
Definition: a tattoo is removable: decide no.

Definition: a thing is unremovable:
	if it is not removable, decide yes;
	decide no.

[!<ThingIsStealable>+

This definition performs 3 checks to determine whether or not a monster will actually be able to steal a given piece of clothing(called C):
1. Ensure that C can be removed
2. Ensure that C is not a type of bondage, which a monster would not want to remove
3. Ensure that C is not a super humiliating item a monster also wouldn't want to remove

@param <Object>:<C> The item that can potentially be stolen by an npc

@return <Boolean> returns true if C can be stolen, otherwise returns false

+!]

Definition: a thing (called C) is stealable: [Some clothing can never be stolen or destroyed, even by monsters.]
	if C is accessory and (the unworn outrage of C >= 5 or the unworn cringe of C >= 5), decide no;[Regardless of how you feel about regular clothes, most npcs would agree it's better not to be naked.]
	if C is overdress and the class of the player is not adventurer, decide no;
	if C is worn:
		if C is not actually strippable, decide no; [This checks if it can be removed by NPCs without destroying it]
	decide yes.
Definition: a thing is unstealable:
	if it is not stealable, decide yes;
	decide no.

[!<ThingIsDestructible>+

This definition determines whether or not an item can be conventionally "destroyed." Meant to be overridden.

@param <Object>:<C> The item to be potentially destroyed

@return <Boolean> returns true if C can be destroyed, otherwise returns false

+!]
Definition: a thing (called C) is destructible:
	if C is metal, decide no;
	decide yes.
Definition: a thing is indestructible:
	if it is not destructible, decide yes;
	decide no.

[!<ThingIsTearable>+

This definition determines whether or not a given item can be destroyed by being torn off by monsters

@param <Object>:<C> The item that can potentially be torn off

@return <Boolean> returns true if C can be taken, otherwise returns false

+!]
Definition: a thing (called C) is tearable:
	if C is indestructible, decide no;
	if C is worn and C is unremovable, decide no;
	decide yes.

the global removability rules is a rulebook.

Definition: a clothing (called C) is actually removable:
	now wearing-target is C;
	follow the global removability rules;
	if the rule failed, decide no;
	follow the removability rules of C;
	if the rule failed, decide no;
	decide yes.

[Definition: a clothing (called C) is actually unremovable:
	if C is actually removable, decide no;
	decide yes.]

Definition: a clothing (called C) is actually strippable:
	now summoning is 1; [suppresses removing text outputs, lets the game know this is being ripped off (some stuff can be ripped off but not put on)]
	if C is actually removable:
		now summoning is 0;
		decide yes;
	now summoning is 0;
	decide no.

autoremove is initially false.
autolayerremove is initially false.
Definition: a clothing (called C) is autoremovable: [Can it be removed right now]
	now autoremove is true;
	if C is actually removable:
		now autoremove is false;
		decide yes;
	now autoremove is false;
	decide no.
Definition: a clothing (called C) is usually autoremovable: [Can it be removed once the stuff on top has been displaced or removed]
	now autoremove is true;
	now autolayerremove is true;
	if C is actually removable:
		now autoremove is false;
		now autolayerremove is false;
		decide yes;
	now autoremove is false;
	now autolayerremove is false;
	decide no.

This is the not wearing rule:
	if wearing-target is not worn:
		if summoning is 0 and autoremove is false, say "But you are not wearing that!";
		rule fails.
The not wearing rule is listed in the global removability rules.

This is the sex doll struggles rule:
	if the latex-transformation of the player is 8 and summoning is 0 and wearing-target is not wrist bond and wearing-target is not ankle bond:
		if autoremove is false, say "You don't have the manual dexterity to do that!";
		rule fails.
The sex doll struggles rule is listed in the global removability rules.

This is the unremovable rule:
	if wearing-target is unremovable and wipeChecking is false:
		if summoning is 0 and autoremove is false, say "You can't find any way to take it off!";
		rule fails.
The unremovable rule is listed in the global removability rules.

This is the cursed unremovable rule:
	if wearing-target is cursed curse-sticky clothing and summoning is 0 and the class of the player is not cultist and (wearing-target is headgear or the player is not in Predicament20):
		if autoremove is false, say "It won't budge! It's magically forcing you to keep [if wearing-target is equippable]wielding[otherwise]wearing[end if] it.";
		rule fails.
The cursed unremovable rule is listed in the global removability rules.

Carry out taking off cursed clothing:
	if the player is in Predicament20 and the class of the player is not cultist and the raw strength of the player > 1:
		say "As you take off [NameDesc of the noun], it takes some of your strength with it, as if to make sure that you want to put it back on as soon as you're finished rearranging your outfit.";
		increase the stolen-strength of the noun by 1;
		decrease the raw strength of the player by 1.

This is the locked unremovable rule:
	if wearing-target is locked clothing:
		if autoremove is false and summoning is 0, say "It's locked on! You'll need to find someone with a key.";
		rule fails.
The locked unremovable rule is listed in the global removability rules.

This is the immobile unremovable rule:
	if summoning is 0 and the player is immobile and (the wearing-target is not shoes or the player is not dildo stuck):
		if autoremove is false, say "You're a bit tied up at the moment!";
		rule fails.
The immobile unremovable rule is listed in the global removability rules.

This is the people won't automatically remove glue rule:
	if wearing-target is glued clothing and (summoning is 1 or autoremove is true), rule fails.
The people won't automatically remove glue rule is listed in the global removability rules.

This is the removal blocking rule:
	repeat with C running through worn removal-blocking wearthings:
		if summoning is 0 and autoremove is false, say RemovalBlocked of C;
		rule fails.
The removal blocking rule is listed in the global removability rules.

To say RemovalBlocked of (C - a wearthing):
	say "Your [ShortDesc of C] is somehow preventing you from taking this off!".

This is the top layer removal rule:
	if wearing-target is top-layer-blocking:
		repeat with O running through worn top-layer-blocking clothing:
			if the top-layer of O > the top-layer of wearing-target:
				if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of O]!";
				if autolayerremove is false, rule fails.
The top layer removal rule is listed in the global removability rules.

This is the mid layer removal rule:
	if wearing-target is mid-layer-blocking:
		repeat with O running through worn mid-layer-blocking clothing:
			if the mid-layer of O > the mid-layer of wearing-target:
				if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of O]!";
				if autolayerremove is false, rule fails.
The mid layer removal rule is listed in the global removability rules.

This is the bottom layer removal rule:
	if wearing-target is bottom-layer-blocking:
		repeat with O running through worn bottom-layer-blocking unskirted clothing:
			if the bottom-layer of O > the bottom-layer of wearing-target:
				unless O is no protection and wearing-target is not crotch-pullup:
					if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of O]!";
					if autolayerremove is false, rule fails;
		repeat with C running through worn crotch-in-place crotch covering hobble-skirted clothing: [These will always be on top]
			unless wearing-target is C:
				if summoning is 0 and autoremove is false, say "You need to pull up your [printed name of C] first.";
				if autolayerremove is false, rule fails;
		repeat with A running through worn ankle bonds:
			if wearing-target is crotch-pullup:
				if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of A]!";
				if autolayerremove is false, rule fails.
The bottom layer removal rule is listed in the global removability rules.

Removability ends here.
