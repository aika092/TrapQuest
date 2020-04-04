Sanity Token by Collectibles begins here.

a sanity token is a kind of mass collectible. There are 20 sanity tokens. The printed name of sanity token is "[TQlink of item described]sanity token[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of sanity token is "[TQlink of item described]sanity tokens[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of sanity token is "sntk".
To say ExamineDesc of (B - a sanity token):
	say "A small metal coin with a Buddha figure etched into it. [if the number of held sanity token > 1]You have [number of held sanity token] of these in your possession. [end if] If you take them all to a crafting station, something good will happen.".

Figure of sanity token is the file "Items/Collectibles/token3.png".

To decide which figure-name is the examine-image of (C - a sanity token):
	decide on figure of sanity token.

To say ShortDesc of (C - sanity token):
	say "sanity token".

To compute mass collectible reward of (T - a sanity token):
	allocate 6 seconds;
	let N be (the number of held sanity tokens + 1) / 2;
	say "You place [if number of held sanity tokens is 1]the metal token[otherwise if number of held sanity tokens is 2]both metal tokens[otherwise]all [number of held sanity tokens] metal tokens[end if] into the bowl and there [if number of held sanity tokens is 1]it instantly turns[otherwise]they instantly turn[end if] into a silvery gas. ";
	if diaper quest is 1:
		say "As this gas fills the room and you breathe it in, you feel that your [if the diaper addiction of the player > 12]addiction to wearing diapers[otherwise if the diaper addiction of the player > 7]fondness for diapers[otherwise]attitude towards diapers[end if] and [if the player is a pervert]perverted nature[otherwise]your libido[end if] have become [if N > 7]massively [otherwise if N > 3]significantly [end if]lessened.";
		let M be N / 2;
		SilentlyDiaperAddictDown M;
		if the remainder after dividing N by 2 is 1, increase M by 1;
		SilentlySexAddictDown M;
	otherwise:
		say "As this gas fills the room, you breathe it in.";
		while N > 0:
			decrease N by 1;
			let A be the raw sex addiction of the player / 2;
			let B be the raw titfuck addiction of the player;
			let C be the raw anal sex addiction of the player;
			let D be the raw vaginal sex addiction of the player;
			let E be the raw oral sex addiction of the player;
			let F be the raw bbc addiction of the player;
			if A > B and A > C and A > D and A > E and A > F:
				SexAddictDown 1;
			otherwise if B > C and B > D and B > E and B > F:
				TitfuckAddictDown 1;
			otherwise if C > D and C > E and C > F:
				AnalSexAddictDown 1;
			otherwise if D > E and D > F:
				VaginalSexAddictDown 1;
			otherwise if E > F:
				OralSexAddictDown 1;
			otherwise:
				BBCAddictDown 1;
	repeat with X running through held sanity tokens:
		destroy X;
	reset alchemy charge.

Sanity Token ends here.
