Med Bay Bed by Furniture begins here.

med bay bed is furniture. The printed name of med bay bed is "[TQlink of item described]med bay bed[TQxlink of item described][shortcut-desc][verb-desc of item described]". med bay bed is permanent fixture. med bay bed is in School12. The description of med bay bed is "[MedBayDesc]". med bay bed has a number called charge. The text-shortcut of med bay bed is "med".

Figure of med bay bed is the file "Env/School/medbaybed1.png".

Definition: med bay bed (called C) is immune to change:
	decide yes.

To say MedBayDesc:
	if images visible is 1, display figure of med bay bed;
	say "What looks like a huge torture contraption, with several [if diaper quest is 1]nozzles[otherwise]phallic shaped insertables and shockers[end if] and spanking implements attached by metal arms to a gynaecologist's chair. Knowing this game, there's probably a chance of something good happening, and a bigger chance of something [if the bimbo of the player < 15]not so good[otherwise]FUN[end if] happening.".

To compute furniture resting on (F - med bay bed):
	say "You lie down on the bed. ";
	if nurse is not in the location of F:
		compute normal rest of F;
	otherwise:
		say "[BigNameDesc of nurse] makes quick work of pushing your wrists down into the pink straps which immediately click into place[one of], seemingly automatically[or][stopping]. ";
		now F is grabbing the player;
		if nurse is aware that the player needs a change:
			anger nurse;
			compute diaper change of nurse;
		otherwise if the breast-enhancement of nurse is 1:
			let B be the largeness of breasts;
			if artificial enhancements fetish is 1, say "[big he of nurse] holds two large fillets of see-through silicone in [his of nurse] hands.[line break][speech style of nurse]'I think you know where these are going, huh?'[roman type][line break]You watch as [he of nurse] places one on top of each of your [BreastDesc]. ";
			say "[big he of nurse] then brings over a large phallic metal device which kind of reminds of you a magic wand, but looks much more... technical. [big he of nurse] holds it over your chest and clicks a button, and it begins to hum. You watch with [horror the bimbo of the player] as ";
			if artificial enhancements fetish is 1, say "the silicone blobs shake and then begin to sink downwards, through your skin! Moments later, they seem to have perfectly settled and merged with [if the silicone volume of breasts > 0]your existing implants[otherwise]your flesh[end if]. ";
			otherwise say "your boobs shake too, as if resonating with the device. ";
			if artificial enhancements fetish is 1, BustImplantsUp 6;
			otherwise BustUp 6;
			say "[if the largeness of breasts > B and artificial enhancements fetish is 1]You now have [BreastDesc][otherwise]Your breasts feel noticeably bigger[end if]![line break][speech style of nurse]'Oh wow don't they look amazing? You must be very proud!'[roman type][line break]After that, the [nurse] unbuckles the straps holding you down and allows you to leave.";
		otherwise if the body soreness of the player > 0 or the player is tired:
			now the body soreness of the player is 0;
			now the fatigue of the player is 0;
			let R be a random number between 1 and 2;
			if R is 1 and face is not occupied:
				if diaper quest is 0:
					say "[line break][speech style of nurse]'Now darling, while you're resting there, why don't you do something for me?'[roman type][line break][big he of nurse] doesn't bother to wait for you to respond! ";
					anger nurse;
					compute nurse entering mouth;
					now another-turn is 1;
					say "You already feel fully rested and healed, but you're still strapped to the chair and the [nurse] is still sitting on your face, so you can't even begin to try and get up!";
				otherwise:
					say "[line break][speech style of nurse]'Now darling, while you're resting there, why don't you have something to eat?'[roman type][line break][big he of nurse] doesn't bother to wait for you to respond! ";
					anger nurse;
					compute forcefeed of nurse;
			otherwise:
				say "[big he of nurse] lovingly massages your shoulders as you lie stuck there.[line break][speech style of nurse]'Does that feel good, [honey of nurse]?'[roman type][line break][one of]Actually, it[or]It[stopping] really does!  Within moments you feel rested and healed. The [nurse] unbuckles the straps holding you down and allows you to leave.";
		otherwise if the boost-cooldown of nurse <= 0:
			say "[big he of nurse] opens a locked cabinet [one of]revealing an array of different coloured syringes[or]and peruses [his of nurse] different coloured syringes[stopping].[line break][speech style of nurse]'What to give you [one of]today[or]this time[stopping]...'[roman type][line break]";
			let R be a random number between 1 and 3;
			say "The [nurse] takes a syringe filled with a [if R is 1]green[otherwise if R is 2 and watersports mechanics is 1]golden[otherwise]pink[end if] liquid from the cabinet before closing and locking it. You can't do anything but watch as [he of nurse] approaches you and jabs it into your [if there is a worn rigid arm covering clothing]neck[otherwise]arm[end if]. You feel stronger and faster!  ";
			now the boost-cooldown of nurse is 300;
			if R is 1:
				say "But at the same time your mind clouds over and you struggle to think straight. Uh-oh, looks like you'll have to rely on your brute strength for a while, and not your wits...";
				now the boost-int-drain of nurse is 1;
			otherwise if R is 2 and watersports mechanics is 1:
				if the bladder of the player < 10, now the bladder of the player is 10;
				say "[if the player is bursting]At the same time, you feel your bladder swelling and swelling to the point of bursting![otherwise][line break][end if]";
			otherwise:
				say "But you also feel your loins tingle strongly and your eyes glaze over as a huge rush of sexual arousal floods through you...";
				arouse 3500;
			say "After that, the [nurse] unbuckles the straps holding you down and allows you to leave.";
		otherwise:
			compute normal rest of F;
	dislodge F.

Med Bay Bed ends here.

