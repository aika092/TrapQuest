Summoning by Clothing begins here.

To summon (C - a wearthing):
	destroy C;
	now C is worn by the player;
	force immediate clothing-focus redraw;
	update appearance level.

To summon (C - a clothing):
	only destroy C; [This cleans up all potentially incorrect flags except ripped and various effects]
	soft summon C.

To soft summon (C - a clothing): [No clothing reset]
	only summon C;
	force immediate clothing-focus redraw;
	update appearance level.

To only summon (C - a clothing):
	layer C correctly;
	now C is worn by the player;
	now C is identified;
	now C is sure;
	compute unique summoning of C;
	if C is total protection and C is not-butt-windowed and there is a worn tail plug:
		if C is displacable:
			now C is crotch-displaced;
		otherwise:
			say "BUG - undisplacable item [C] was summoned even though player was wearing a tail plug. Please report.";
	if C is total protection and there is an embodied thing penetrating a fuckhole:
		if C is displacable:
			now C is crotch-displaced;
		otherwise:
			say "BUG - undisplacable item [C] was summoned even though player is currently penetrated. Please report.";
	if C is pussy protection and there is an embodied thing penetrating vagina:
		if C is displacable:
			now C is crotch-displaced;
		otherwise:
			say "BUG - undisplacable item [C] was summoned even though player is currently vaginally penetrated. Please report.";
	if C is ass plugging or (C is vagina plugging and the player is not possessing a vagina), now C is penetrating asshole;
	if C is vagina plugging and the player is possessing a vagina, now C is penetrating vagina;
	if C is ballgag, now C is penetrating face; [a ballgag is any gag that occupies the player's face. I.e. most gags]

To compute unique summoning of (C - a thing):
	do nothing.

To only summon (S - a sex toy): [We can only use summon for asshole at the moment]
	now S is not penetrating vagina; [Just in case]
	now S is worn by the player;
	now S is penetrating asshole;
	now S is identified;
	now S is sure;
	compute unique summoning of S.

To summon (P - a sex toy) vaginally:
	only destroy P; [This cleans up all potentially incorrect flags]
	only summon P vaginally;
	force immediate clothing-focus redraw;
	update appearance level.

To only summon (P - a sex toy) vaginally:
	if the player is possessing a vagina:
		now P is not penetrating asshole;
		now P is worn by the player;
		now P is penetrating vagina;
		now P is identified;
		now P is sure;
		compute unique summoning of P;
	otherwise: [redirect to asshole]
		only summon P.

To summon (P - a sex toy) cursed vaginally:
	summon P vaginally;
	now P is cursed.

To summon (P - a sex toy) uncursed vaginally:
	summon P vaginally;
	now the raw-magic-modifier of P is 0;
	now P is blandness;
	now P is bland.

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

To summon (C - a thing) cursed with persistent quest:
	summon C cursed;
	if C is clothing, compute summoned persistent quest of C.

To summon (C - a sex toy) cursed vaginally with quest:
	summon C cursed vaginally;
	compute summoned quest of C.

To summon (C - a thing) cursed with silent quest:
	summon C cursed;
	if C is clothing, compute quest of C.

To summon (C - a thing) cursed with silent persistent quest:
	summon C cursed;
	if C is clothing, compute persistent quest of C.

To summon (C - a clothing) locked:
	summon C uncursed;
	lock C.

Definition: an object is actually wearable: decide no.

Definition: an object is actually summonable: decide no.

Definition: a clothing (called C) is actually summonable:
	now summoning is 1; [suppresses wearing text outputs, let the game know this is being summoned (some stuff can be summoned but not put on)]
	if C is actually wearable:
		now summoning is 0;
		decide yes;
	otherwise:
		now summoning is 0;
		decide no.

Summoning ends here.
