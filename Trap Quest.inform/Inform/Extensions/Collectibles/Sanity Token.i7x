Sanity Token by Collectibles begins here.

a sanity token is a kind of mass collectible. There are 20 sanity tokens. The printed name of sanity token is "[TQlink of item described]sanity token[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of sanity token is "[TQlink of item described]sanity tokens[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of sanity token is "sntk". The description of sanity token is "A small metal coin with a buddha figure etched into it. [if the number of held sanity token > 1]You have [number of held sanity token] of these in your possession. [end if] If you take them all to a crafting station, something good will happen.".

To say ShortDesc of (C - sanity token):
	say "sanity token".

To compute mass collectible reward of (T - a sanity token):
	let N be (the number of held sanity tokens + 1) / 2;
	say "You place [if number of held sanity tokens is 1]the metal token[otherwise]all [number of held sanity tokens] metal tokens[end if] into the bowl and there [if number of held sanity tokens is 1]it instantly turns[otherwise]they instantly turn[end if] into a silvery gas. As this gas fills the room and you breathe it in, ";
	if diaper quest is 1:
		say "you feel that your [if the diaper addiction of the player > 12]addiction to wearing diapers[otherwise if the diaper addiction of the player > 7]fondness for diapers[otherwise]attitude towards diapers[end if] has become [if N > 7]massively [otherwise if N > 3]significantly [end if]lessened.";
		DiaperAddictDown N;
	otherwise:
		say "you feel that your [if the player is a nympho]nymphomania[otherwise if the player is a pervert]perverted attitude[otherwise]tolerance for lewdness[end if] has become [if N > 7]massively [otherwise if N > 3]significantly [end if]lessened.";
		SexAddictDown N;
	repeat with X running through held sanity tokens:
		destroy X;
	now seconds is 6;
	reset alchemy charge.
		

Sanity Token ends here.
