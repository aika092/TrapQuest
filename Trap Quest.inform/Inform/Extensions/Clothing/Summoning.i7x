Summoning by Clothing begins here.



To summon (C - a wearthing):
	destroy C;
	now C is worn by the player.

To summon (C - a clothing):
	only destroy C; [This cleans up all potentially incorrect flags except ripped and various effects]
	layer C correctly;
	now C is worn by the player;
	now C is identified;
	now C is sure;
	compute unique summoning of C;
	if C is ass plugging or (C is vagina plugging and the player is male), now C is penetrating asshole;
	if C is vagina plugging and the player is female, now C is penetrating vagina;
	if C is ballgag, now C is penetrating face.[a ballgag is any gag that occupies the player's face. I.e. most gags]

To compute unique summoning of (C - a thing):
	do nothing.

To summon (S - a sex toy): [We can only use summon for asshole at the moment]
	only destroy S; [This cleans up all potentially incorrect flags]
	now S is not penetrating vagina; [Just in case]
	now S is worn by the player;
	now S is penetrating asshole;
	now S is identified;
	now S is sure;
	compute unique summoning of S.

To summon (P - a sex toy) vaginally:
	only destroy P; [This cleans up all potentially incorrect flags]
	now P is not penetrating asshole;
	now P is worn by the player;
	now P is penetrating vagina;
	now P is identified;
	now P is sure;
	compute unique summoning of P.

To summon (P - a sex toy) cursed vaginally:
	summon P vaginally;
	now P is cursed.

To summon (C - a clothing) uncursed:
	summon C;
	now the raw-magic-modifier of C is 0;
	now C is blandness;
	now C is bland.

To summon (C - a thing) cursed:
	summon C;
	if C is locked clothing, now C is unlocked;
	if C is clothing, now C is cursed.

To summon (C - a thing) cursed with quest:
	summon C cursed;
	if C is clothing, compute summoned quest of C.

To summon (C - a sex toy) cursed vaginally with quest:
	summon C cursed vaginally;
	compute summoned quest of C.

To summon (C - a thing) cursed with silent quest:
	summon C cursed;
	if C is clothing, compute quest of C.

To summon (C - a clothing) locked:
	summon C;
	if C is cursed, now C is bland;
	now C is locked;
	if newbie tips is 1, say "[one of][newbie style]Newbie Tip: Oh dear, this item is locked! You'll need a key rather than a blessing to make it removable. Unfortunately the prison guard [unless there is an alive prison guard]who is about to spawn [end if]in the Dungeon isn't going to give you the key immediately. Instead, he is going to wait until your 'sentence' is over, which will take a decent amount of time. Of course, if you could defeat him in combat I'm sure you'd be able to salvage a key from his corpse.[roman type][line break][or][stopping]".

Definition: a thing is removable: decide yes.
Definition: a tattoo is removable: decide no.

Definition: a thing is unremovable if it is not removable.

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
	if C is accessory and (the unworn outrage of C >= 5 or the unworn cringe of C >= 5), decide no;[Regardless of how you feel about regular clothes, most npcs would agree it's better not to be naked.]
	if C is sex toy, decide no;
	if C is overdress and the class of the player is not adventurer, decide no;
	decide yes.

[!<ThingIsDestructible>+

This definition determines whether or not an item can be conventionally "destroyed." Meant to be overridden.

@param <Object>:<C> The item to be potentially destroyed

@return <Boolean> returns true if C can be destroyed, otherwise returns false

+!]
Definition: a thing (called C) is destructible:
	if C is metal, decide no;
	decide yes.
Definition: a thing (called C) is indestructible:
	if C is destructible, decide no;
	decide yes.

[!<ThingIsTearable>+

This definition determines whether or not a given item can be destroyed by being torn off by monsters

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
Definition: a thing is unstealable if it is not stealable.

Definition: an object is actually wearable: decide no.

Definition: an object is actually summonable: decide no.

Definition: a clothing (called C) is actually summonable:
	now summoning is 1; [suppresses wearing text outputs, let the game know this is being summoned (some stuff can be summoned but not put on)]
	if C is actually wearable, decide yes;
	decide no.


Summoning ends here.

