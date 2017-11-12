Summoning by Clothing begins here.



To summon (C - a wearthing):
	destroy C;
	now C is worn by the player.

To summon (C - a clothing):
	destroy C; [This cleans up all potentially incorrect flags except ripped and various effects]
	layer C correctly;
	now C is worn by the player;
	now C is identified;
	now C is sure;
	compute unique summoning of C;
	if C is ass plugging, now C is penetrating asshole;
	if C is vagina plugging and the player is female, now C is penetrating vagina;
	if C is ballgag, now C is penetrating face.

To compute unique summoning of (C - a thing):
	do nothing.
	
To summon (S - a sex toy): [We can only use summon for asshole at the moment]
	now S is not penetrating vagina; [Just in case]
	now S is worn by the player;
	now S is penetrating asshole;
	now S is identified;
	now S is sure;
	compute unique summoning of S.

To summon (P - a sex toy) vaginally:
	now P is not penetrating asshole;
	now P is worn by the player;
	now P is penetrating vagina;
	now P is identified;
	now P is sure;
	compute unique summoning of P.

To summon (C - a thing) cursed:
	summon C;
	if C is locked clothing, now C is unlocked;
	now C is cursed.

To summon (C - a clothing) locked:
	summon C;
	if C is cursed, now C is bland;
	now C is locked;
	if newbie tips is 1, say "[one of][item style]Oh dear, this item is locked!  You'll need a key rather than a blessing to make it removable.  Unfortunately the prison guard [unless there is an alive prison guard]who is about to spawn [end if]in the Dungeon isn't going to give you the key immediately.  Instead, he is going to wait until your 'sentence' is over, which will take a decent amount of time.  Of course, if you could defeat him in combat I'm sure you'd be able to salvage a key from his corpse.[roman type][line break][or][stopping]".
	
Definition: a thing (called C) is removable: [Some clothing can never be removed, even by monsters.]
	unless C is tattoo, decide yes;
	decide no.

Definition: a thing (called C) is unremovable:
	if C is removable, decide no;
	decide yes.

[!<ThingIsStealable>+

This definition performs 3 checks to determine whether or not a monster will actually be able to steal a given piece of clothing(called C):
1. Ensure that C can be removed
2. Ensure that C is not a type of bondage, which a monster would not want to remove
3. Ensure that C is not a super humiliating item a monster also wouldn't want to remove

@param <Object>:<C> The item that can potentially be stolen by an npc

@return <Boolean> returns true if C can be stolen, otherwise returns false

+!]

Definition: a thing (called C) is stealable: [Some clothing can never be stolen or destroyed, even by monsters.]
	if C is unremovable, decide no;
	if C is bondage, decide no;
	if C is accessory and (the unworn outrage of C >= 5 or the unworn cringe of C >= 5), decide no;[Regardless of how you feel about regular clothes, most npcs would agree it's better not to be naked.]
	decide yes.

[!<ThingIsDestructible>+

This definition determines whether or not an item can be conventionally "destroyed." Meant to be overridden.

@param <Object>:<C> The item to be potentially destroyed

@return <Boolean> returns true if C can be destroyed, otherwise returns false

+!]
Definition: a thing (called C) is destructible:
	decide yes.

[!<ThingIsTearable>+

This definition determines whether or not a given item can be destroyed by being torn off the player

@param <Object>:<C> The item that can potentially be torn off

@return <Boolean> returns true if C is both destructible and stealable, otherwise returns false

+!]
Definition: a thing (called C) is tearable:
	if C is stealable and C is destructible, decide yes;
	decide no.

[!<ThingIsStealable>+

This definition determines whether or not an item is unable to be stolen by an npc

@param <Object>:<C> The item that can potentially be stolen

@return <Boolean> returns false if C can be stolen, otherwise returns true

+!]
Definition: a thing (called C) is unstealable:
	if C is stealable, decide no;
	decide yes.

Definition: an object (called O) is actually wearable:
	decide no.

Definition: an object (called O) is actually summonable:
	decide no.

Definition: a clothing (called C) is actually summonable:
	if roleplay fetish is 1 and C is off-stage roleplay headgear, decide no;
	now summoning is 1; [suppresses wearing text outputs, let the game know this is being summoned (some stuff can be summoned but not put on)]
	if C is actually wearable, decide yes;
	decide no.


Summoning ends here.
