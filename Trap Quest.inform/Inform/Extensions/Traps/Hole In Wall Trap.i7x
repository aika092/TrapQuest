Hole In Wall Trap by Traps begins here.

hole-in-wall is a trap. The printed name of hole-in-wall is "[TQlink of item described]hole[TQxlink of item described][verb-desc of item described]". hole-in-wall is sticky. Understand "hole", "hole in", "wall" as hole-in-wall. The text-shortcut of hole-in-wall is "hiw". hole-in-wall has a number called times-stuck.

Figure of hole is the file "Env/MultiFloor/hole1.jpg".

To say ExamineDesc of (C - hole-in-wall):
	say "There is a medium sized hole in one wall a couple feet above the ground. [if the times-stuck of C is 0]You can see a shiny golden ring sparkling in the darkness through the hole. [end if]You would struggle to crawl through but it might be possible.".

This is the holeinwall prevents standing rule:
	if the player is in HoleInWall:
		if auto is 0, say "You're stuck halfway in a hole, there's no way you can stand up!";
		rule fails.
The holeinwall prevents standing rule is listed in the ability to stand rules.

Definition: hole-in-wall is father material: decide yes.


To say unique-verb-desc of (T - hole-in-wall):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link]".

To say EnvironmentDesc of (T - hole-in-wall):
	say "There is a medium sized [printed name of T] in one wall a couple feet above the ground[if there is a solid gold ring in HoleInWall]. You can see a shiny golden ring sparkling in the darkness through the hole[end if]. ".

To say ShortDesc of (T - hole-in-wall):
	say "hole in the wall".

To say SuddenPregTitle of (M - hole-in-wall):
	say "anonymous man".

To say PregGrowth of (T - hole-in-wall):
	say "the unknown man's [child]".

To say FuckerDesc of (T - hole-in-wall):
	say "the anonymous [man of mechanic]".
To say BigFuckerDesc of (T - hole-in-wall):
	say "The anonymous [man of mechanic]".

Definition: hole-in-wall is live: decide yes.

Definition: hole-in-wall (called M) is family:
	if M is inseminating vagina and M is father material, decide yes; [the people that fuck you are human so we don't need to wall this off behind inhuman pregnancy]
	decide no.

This is the spawn hole-in-wall rule:
	let R be a random trappable placed modern room;
	let N be 0;
	while there is a trap in R and N < 50:
		now R is a random trappable placed modern room;
		increase N by 1;
	if N < 50:
		now hole-in-wall is in R;
		now hole-in-wall is revealed;
		if the number of rings in HoleInWall is 0:
			let A be a random off-stage ring;
			now A is solid gold;
			now A is in HoleInWall;
			set shortcut of A.
The spawn hole-in-wall rule is listed last in the set up hotel traps rules.

To compute HoleInWallEntrance:
	now hole-in-wall-turns is 0;
	now hole-in-wall-resists is 0;
	increase the times-stuck of hole-in-wall by 1;
	repeat with P running through hole-in-wall punishments:
		if P is not hole-punishment-not-found and the priority of P is 1, now the priority of P is 2;
	now the stance of the player is 1;
	now the source-room of HoleInWall is the location of the player;
	now the player is in HoleInWall;
	check immobility;
	refresh the map-window.

Check entering hole-in-wall:
	try HoleEntering the noun instead.

HoleEntering is an action applying to one thing.
Check HoleEntering:
	if the noun is warp portal, try entering the noun instead;
	if the noun is not hole-in-wall, say "This verb is for entering holes in walls." instead;
	if the hole-in-wall-scene of woman-player > 0 and woman-player is in HoleInWall, say "The hole is already occupied!" instead;
	if the player is at least partially immobile, say "You're currently immobile!" instead;
	if the player is upright or the player is flying, say "You'd need to be on your knees." instead;
	allocate 3 seconds;
	if the largeness of breasts > 15, say "You try but your [MediumDesc of breasts] are just too big, you won't be able to fit through!" instead.

Carry Out HoleEntering:
	say "Your top half makes it inside! But you struggle to get your [if the largeness of belly > 3][BellyDesc][otherwise if the thickness of hips > 4 and the total volume of hips > 4][MediumDesc of hips][otherwise if the thickness of hips > 4][ShortDesc of hips][otherwise if the total volume of hips > 4][AssDesc][otherwise]butt[end if] through. You try to push yourself back out but that doesn't work either; your [if the largeness of breasts > 3][BreastDesc][otherwise]shoulders[end if] are just too wide, you can't get them out! You've somehow managed to get yourself stuck halfway through this hole! [HoleTrappedFlav]";
	compute HoleInWallEntrance.

Understand "climb through [something]", "climb into [something]", "crawl into [something]", "climb in [something]", "crawl in [something]", "crawl through [something]" as HoleEntering.

To say StickyTriggerFlav of (T - hole-in-wall):
	now T is revealed;
	say "You find yourself sliding straight for the hole in the opposite wall at an alarming speed!";
	if diaper quest is 1 and hole-in-wall-scene of woman-player is 0 and the woman-bimbo of woman-player is 5 and the player is a june 2022 diaper donator and woman-player is relaxed redeploy appropriate:
		now woman-player is in HoleInWall;
		now the woman-status of woman-player is 25;
		now the hole-in-wall-scene of woman-player is 1;
		say "[bold type]In the hole in the wall in front of you, someone is stuck. You can't see their head, but their lower half consists of pink frilly socks and an absolutely massive diaper with a childish pattern[if diaper messing > 6]. At their feet, two empty enema syringes make it clear that their belly is full of water[end if].".

To say StickyTriggerFail of (T - hole-in-wall):
	say ". You manage to avoid falling over!";
	now T is revealed;
	if diaper quest is 1 and hole-in-wall-scene of woman-player is 0 and the woman-bimbo of woman-player is 5 and the player is a june 2022 diaper donator and woman-player is relaxed redeploy appropriate:
		now woman-player is in HoleInWall;
		now the woman-status of woman-player is 25;
		now the hole-in-wall-scene of woman-player is 1;
		say "[bold type]In the hole in the wall in front of you, someone is stuck. [roman type]You can't see their head, but their lower half consists of pink frilly socks and an absolutely massive diaper with a childish pattern[if diaper messing >= 7]. At their feet, two empty enema syringes make it clear that their belly is full of water[end if].".

To trigger (Y - hole-in-wall):
	if the hole-in-wall-scene of woman-player >= 1 and woman-player is in HoleInWall:
		say "And you're heading straight for them! Your face smashes straight into the back of that ultra-thick padding. Fortunately it's dry. For now.";
		let H be a random worn headgear;
		if H is headgear and the player is getting unlucky:
			say "[bold type][BigNameDesc of H] [bold type]has somehow got stuck on some tough stray fibres on the diaper! [roman type]It won't budge! Until you remove [NameDesc of H] or manage to pry it loose, your face is stuck smushed into the seat of the diaper in front of you! [GotUnluckyFlav][line break]To make things worse, the person stuck in the wall starts shaking their butt in panic, repeatedly smushing their padding into your face, and making it impossible for you to carefully detangle [NameDesc of H] from the diaper. [bold type]Until the person gets rescued from being stuck in the wall, you won't able to detangle [NameDesc of H][bold type]![roman type][line break]";
			now H is stuck;
		if the player is getting unlucky:
			say "[if there is worn stuck headgear]Double [end if]Uh-oh - before you can steady yourself and pull yourself away from the diaper, a lot happens! [GotUnluckyFlav]";
			compute DiaperFacesitStart of Y;
			now the hole-in-wall-scene of woman-player is 2;
		say "You can [bold type]pull[roman type] on the person in the wall to try and help them get out, if you like.";
	otherwise:
		let R be a random number between 2 and (50 - (the times-stuck of Y * 20));
		if the largeness of breasts > 15:
			say "Fortunately your breasts are just too big to fit through the hole and act as airbags as they cushion your collision with the wall.";
		otherwise if R > the dexterity of the player:
			say "Your front half crashes through the hole before you can stop yourself! You try to pull backward, but your [if the largeness of breasts > 3][BreastDesc][otherwise]shoulders[end if] are just too wide, you can't get back out! You try to go forward but your [if the thickness of hips > 4 and the total volume of hips > 4][MediumDesc of hips] are[otherwise]butt is[end if] too big. [HoleTrappedFlav]";
			compute HoleInWallEntrance;
		otherwise:
			say "You [if the times-stuck of Y > 0]are ready for it this time and [end if]manage to raise your hands in a way that prevents you from falling through the hole. Phew!".

To say HoleTrappedFlav:
	say "[one of]You're trapped like this[or]You're once again trapped[stopping] until someone comes and helps you out! You could try to escape by using [bold type][TQlink]resist[TQdlink][roman type] but if you make too much noise you'll probably just attract even more attention to yourself! Except for that, all you can do is [bold type][TQlink]wait[TQdlink][roman type] and hope that whoever does walk by next decides to rescue you.".

hole-in-wall-turns is a number that varies.
hole-in-wall-resists is a number that varies.

To decide which text is his of (M - hole-in-wall):
	decide on "his".

This is the hole-in-wall immobility rule:
	if the player is in HoleInWall, rule fails.
The hole-in-wall immobility rule is listed in the immobility rules.

Check resisting when the location of the player is HoleInWall:
	if hole-in-wall is not penetrating a fuckhole:
		say "You throw yourself back and forth as much as you can. It's not quiet, but it's your best chance of escape.";
		let D be a random number between 1 and the dexterity of the player;
		let H be a random number between 1 and 100;
		if debuginfo > 0, say "[input-style]Escape check: Dexterity roll d[dexterity of the player] ([D]) | ([H].5) d100 Difficulty roll[roman type][line break]";
		if D > H:
			allocate 6 seconds;
			say "All of a sudden, your body seems to manage to find the perfect orientation, and you begin to make progress. Within a few moments, you've escaped![line break][variable custom style]I'm free![roman type][line break]";
			dislodge hole-in-wall;
			now the player is in the source-room of the location of the player;
			refresh the map-window;
			check immobility;
		otherwise:
			increase hole-in-wall-resists by 1;
			say "You don't manage to make it out this time.";
			now the player-reaction of the player is resisting;
			HoleWait;
		do nothing instead.

To HoleWait:
	let break-wait be 0;
	increase hole-in-wall-turns by 1;
	say "You continue [one of]kneeling[or]waiting[or]waiting for someone to come save you[or]kneeling half inside the hole[or]waiting in the darkness[or]waiting, straining with your ears to try and hear anything[or]kneeling, your rear end poking vulnerably and maybe [i]enticingly[/i] into the room behind you[as decreasingly likely outcomes].";
	allocate 6 seconds;
	if the remainder after dividing hole-in-wall-turns by 3 is 0:
		choose hole-in-wall punishment;
		unless chosen hole-in-wall punishment is hole-punishment-not-found:
			compute punishment of chosen hole-in-wall punishment;
			now break-wait is 1;
	if hole-in-wall-turns >= 11:
		let M be a random alive robobellboy;
		if diaper quest is 0 and (tentacle fetish is 0 or inhuman pregnancy < 2) and composed-explorer is summon-available and composed-explorer is off-stage, now M is composed-explorer;
		if M is nothing, now M is a random robobellboy;
		set up M;
		now M is in the source-room of the location of the player;
		dislodge hole-in-wall;
		calm M;
		now M is moved;
		bore M for 100 seconds;
		say "A little while later you feel someone gripping you by your hips![line break][variable custom style]Are they going to help pull me out?[roman type][line break]You are pleased to find that indeed they are!";
		if M is composed-explorer:
			say "[speech style of M]'Hey are you okay? You looked like you needed a hand.'[roman type][line break]You look at the [man of M] who rescued you. [UniqueMonsterDesc of M][line break][speech style of M]'You are another adventurer, right? Not just another hotel slut? Yeah I thought so. Don't mention it. I wouldn't help you if there was any risk to myself, but when it's easy like that, we adventurers should look out for each other. I almost got caught in there myself, but [if pregnancy fetish is 1]I didn't fit through the hole in the first place. Because of, um, well, yeah.'[roman type][line break][big he of M] looks down at [his of M] massive pregnant belly[otherwise]got lucky.'[roman type][line break][end if]";
			now the player is in the source-room of the location of the player;
			say "[BigNameDesc of M] seems to decide that's all that needs to be said between you, and turns away from you, ready to move on.";
		otherwise:
			say "[speech style of M]'[caps please] REMAIN CALM, YOU ARE BEING RESCUED.'[roman type][line break]You are powerfully yet carefully extracted from your embarrassing prison.";
			now the player is in the source-room of the location of the player;
			say "You look around and see [NameDesc of M], having already lost interest with you after rescuing you, is busying itself with other things.";
		refresh the map-window;
		check immobility.

hole-in-wall punishment is a kind of object. hole-in-wall punishment has a number called priority. The priority of hole-in-wall punishment is usually 2.

chosen hole-in-wall punishment is hole-in-wall punishment that varies. hole-punishment-not-found is hole-in-wall punishment. The priority of hole-punishment-not-found is 0.

To compute punishment of (P - hole-in-wall punishment):
	say "BUG - the hole-in-wall punishment '[P]' has no execution function!".

Definition: hole-in-wall punishment is appropriate: decide no.

Definition: hole-in-wall punishment (called P) is prioritised:
	if the priority of P is current-priority, decide yes;
	decide no.

To choose hole-in-wall punishment:
	now chosen hole-in-wall punishment is hole-punishment-not-found;
	now current-priority is 3;
	while chosen hole-in-wall punishment is hole-punishment-not-found and current-priority >= 0:
		now chosen hole-in-wall punishment is a random prioritised appropriate hole-in-wall punishment;
		unless chosen hole-in-wall punishment is hole-in-wall punishment, now chosen hole-in-wall punishment is hole-punishment-not-found;
		decrease current-priority by 1.

hole-spank is hole-in-wall punishment.
Definition: hole-spank is appropriate: decide yes.

To compute punishment of (P - hole-spank):
	now the priority of P is 1;
	say "Suddenly you feel a hand groping your butt![line break][variable custom style][if the delicateness of the player < 8]What the fuck, let go of me! [otherwise]Who's this? [end if][roman type][line break]All of a sudden the anonymous hand pulls back, and comes down hard with a spank! Two, three, four, five, six! Your rear is assaulted by a series of blows.";
	compute strength 4 spanking;
	say "Just as suddenly as he or she began, the mysterious spanker stops. [one of]You wonder if they've gone, or whether they're still there, silently watching you.[or]You listen, but can't hear anyone. Are they still there?[or]You listen for footsteps, but hear nothing. Are they there, watching? Or did they simply walk off and leave you, still stuck?[or]You think - [italic type]hope[roman type] - they've gone.[at random]".

hole-wank is hole-in-wall punishment.
Definition: hole-wank (called P) is appropriate:
	if the player is not able to get horny or there is a worn chastity cage, decide no;
	if there is a worn total protection diaper, decide yes;
	decide no.

To compute punishment of (P - hole-wank):
	now the priority of P is 1;
	say "Suddenly you feel a hand groping your diaper![line break][variable custom style][if the diaper addiction of the player < 8]No, don't touch that! Gross...[otherwise]Ooh![end if][roman type][line break]The hand moves down towards your [genitals].";
	if the latex-transformation of the player > 3:
		say "You hardly feel anything thanks to your rubbery genitals. The hand soon gives up and leaves you alone.";
	otherwise:
		let wank-attempts be 0;
		while refractoryperiod <= 0 and wank-attempts < 3 and delayed fainting is 0 and the player is in HoleInWall:
			if wank-attempts is 0:
				say "The hand skilfully [if the player is herm]fondles your [genitals][otherwise if the player is possessing a penis]strokes your [player-penis][otherwise if the player is possessing a vagina]rubs your [vagina][otherwise]fondles your groin[end if] through your padding.";
			otherwise if wank-attempts is 1:
				say "The hand finds [if the player is barbie]the doll-like flatness of your [sissy-penis] and pauses as if in surprise, then presses and strokes[otherwise if the player is possessing a penis]the tip of your[player-penis] and tweaks[otherwise]your clit and rubs[end if] it carefully through your diaper.";
			otherwise:
				say "Your new tormentor goes all out, using both hands to rub circles in opposite directions all over your [if the player is herm][player-penis] and [vagina][otherwise if the player is possessing a penis][player-penis][otherwise if the player is possessing a vagina][vagina] and clit[otherwise]groin[end if]!";
			stimulate vagina from hole-in-wall;
			let D be a random worn perceived messed diaper;
			if D is diaper:
				say "[one of]The gross squishiness of your messy diaper being used to masturbate you makes you cringe and shudder as it oozes around your loins.[or][or][cycling]";
				GrossOut 8 with reason "" and sensation "feeling";
				GrossnessAddictUp 1;
			increase wank-attempts by 1;
			compute extra turn;
		if refractoryperiod > 0, say "The anonymous hand's owner is clearly satisfied with that as you feel it let go, lovingly pat your bottom a couple of times for good measure, and then leave you alone.";
		otherwise say "The anonymous hand's owner decides to leave you unsatisfied.[line break][variable custom style][if the humiliation of the player >= 40000]Denied release again, just like I always deserve.[otherwise if the player is not a pervert]I don't even know if I'm glad or not that I didn't cum...[otherwise]Nnng... so close... please come back...[end if][roman type][line break]".

hole-strip is hole-in-wall punishment.
Definition: hole-strip (called P) is appropriate:
	let C be a random top level protection clothing;
	if C is diaper, decide no;
	if C is tearable clothing, decide yes;
	decide no.

To compute punishment of (P - hole-strip):
	now the priority of P is 1;
	let C be a random top level protection clothing;
	say "You hear a masculine chuckle as two hands silently grab hold of your [ShortDesc of C] and ";
	if C is cursed and C is displacable:
		say "pull it away!";
		displace C;
	otherwise:
		say "yank it off of you, pushing it through the hole[one of] so that you can see what you're now missing[or][stopping]!";
		now C is in the location of the player;
		dislodge C;
	say "[variable custom style][if the humiliation of the player < 18500]Oh god, how embarrassing![otherwise]Hey, that's mean![end if][roman type][line break]";
	if there is a top level protection clothing and a random number between 1 and 2 is 1, now the priority of P is 2.

hole-enema is hole-in-wall punishment.
Definition: hole-enema (called P) is appropriate:
	if asshole is actually occupied, decide no;
	decide yes.

To compute punishment of (P - hole-enema):
	now the priority of P is 1;
	say "All of a sudden you feel a hand on your butt![line break][variable custom style]Uh-oh, what now?[roman type][line break]";
	let C be a random worn top level ass protection clothing;
	while C is clothing:
		if C is displacable:
			say "The anonymous man [DisplacesFlav of C].";
			displace C;
		otherwise:
			say "The unseen hands rip away your [C]!";
			destroy C;
		now C is a random worn top level ass protection clothing;
	let L be semen;
	if watersports fetish is 1 and a random number between 1 and 2 is 1:
		now L is urine;
	otherwise if diaper quest is 1:
		now L is water;
	otherwise if lactation fetish is 1 and a random number between 1 and 2 is 1:
		now L is milk;
	say "You feel the tip of some kind of thin hard cold object pushed inside your [asshole]. Moments later a warm liquid starts to fill you up! It must be some kind of enema syringe[if diaper quest is 0]! Somehow, maybe from the texture or consistency, you can tell you are being given a huge [L] enema[end if]!";
	assfill (belly limit / 2) with L;
	say "When the enema is finally complete, your head feels a lot lighter and your belly gurgles uncomfortably[if the humiliation of the player < public-squatting-limit]. But you can't bring yourself to expel it because you don't know who could be watching[end if]!".

hole-tattoo is hole-in-wall punishment.
Definition: hole-tattoo (called P) is appropriate:
	if there is worn belly covering clothing, decide no;
	if the number of worn tattoos is 0, decide no;
	if princess-tattoo is drawable, decide yes;
	decide no.

To compute punishment of (P - hole-tattoo):
	now the priority of P is 1;
	summon princess-tattoo;
	say "All of a sudden you hear a low electric buzzing![line break][variable custom style]That can't be good. [roman type][line break]Suddenly a sharp pain hits your lower back!";
	PainUp 10;
	say "You [if the delicateness of the player < 9]begrudgingly [end if]hold perfectly still as the stranger gives you a tramp stamp tattoo! When it is complete, you can feel the magic inside the ink come alive. Not only can you feel that it is affecting your body and mind, but even though you can't physically see the tattoo you can see a picture of it clearly in your inner mind.";
	try examining princess-tattoo.

hole-piercing is hole-in-wall punishment.
Definition: hole-piercing (called P) is appropriate:
	if diaper quest is 1, decide no;
	if the player is not possessing a vagina, decide no;
	if the player is pussy protected, decide no;
	if clitoris piercing is worn and clitoris lead is worn, decide no;
	decide yes.

To compute punishment of (P - hole-piercing):
	now the priority of P is 1;
	let C be normal clit piercing;
	say "You feel cold smooth fingers grab hold of your [if C is worn][ShortDesc of C][otherwise]clit[end if]![line break][variable custom style]Eek![roman type][line break]";
	if there is a worn clitoris piercing, now C is clitoris lead;
	summon C cursed with persistent quest;
	say "Suddenly, a hot burning sensation!";
	PainUp 20;
	say "You can't help but scream in pain as [if C is clitoris lead]it is heated up and a [ShortDesc of C] is attached to it[otherwise]your clitoris is pierced with a burning hot needle and a [ShortDesc of C] is slotted inside[end if].[line break][variable custom style][if the bimbo of the player < 12]This is not good.[otherwise]Uh-oh, I think I might be in a bit of a pickle here! *giggle*[end if][roman type][line break]";
	say FullExamineDesc of C.

hole-plug is hole-in-wall punishment.
Definition: hole-plug (called P) is appropriate:
	if asshole is actually occupied, decide no;
	decide yes.

To compute punishment of (P - hole-plug):
	now the priority of P is 1;
	let C be a random off-stage basic plug;
	if C is plug:
		[now the size of C is the openness of asshole + 2;
		if the size of C > 10, now the size of C is 10;]
		say "Suddenly you feel a hand groping your butt![line break][variable custom style][if the delicateness of the player < 8]What the fuck, get off of me![otherwise]Who's this?[end if][roman type][line break]The hand [if there is worn total protection clothing]quickly pulls your [list of worn total protection clothing] out of the way and then [end if]begins to slowly massage your [asshole] with a thumb.[line break][variable custom style][if the anal sex addiction of the player > 4 or (diaper quest is 1 and the player is a pervert)]Ooh, that feels good...[otherwise]No, get away from there![end if][roman type][line break]The thumb retreats and then something a lot harder and larger is pressed against your entrance. Your sphincter stretches around its bulbous body as it is slowly and smoothly pushed inside. You are now wearing a [ShortDesc of C], and it appears to be stuck in with glue!";
		repeat with D running through worn total protection clothing:
			if D is crotch-zipped:
				ZipDown D;
			otherwise if D is displacable:
				displace D;
			otherwise:
				now D is in the location of hole-in-wall;
		summon C cursed;
		gluify C;
		ruin asshole;
		say FullExamineDesc of C.

hole-gatling-fuck is hole-in-wall punishment.
Definition: hole-gatling-fuck is appropriate:
	if diaper focus is 0 and there is ass covering untearable clothing, decide no;
	if the player-reaction of the player is not resisting, decide no;
	if hole-in-wall-turns + (hole-in-wall-resists * 3) > a random number between 11 and 30, decide yes;
	decide no.
hole-in-wall has a number called gatling-girth.
To decide which number is the girth of (H - hole-in-wall):
	decide on gatling-girth of H.

To compute punishment of (P - hole-gatling-fuck):
	let M be a random ultimate-lesson-actor;
	now gatling-girth of hole-in-wall is 2;
	let F be asshole;
	if diaper quest is 1:
		now F is vagina;
		let C be a random thing filling asshole;
		while C is a thing:
			say "The [ShortDesc of C] is removed from your [asshole]!";
			now C is in the location of the player;
			dislodge C;
			now C is a random thing filling F;
		say "[bold type]You've made too much noise![roman type] A large amount of noise begins to grow from behind you, and soon you can hear the indistinct chatter of a huge group of [men of M].";
		let D be a random worn diaper;
		say "Then out of nowhere, you feel someone pushing an enema syringe into your [asshole]![variable custom style]Nooo![roman type][line break]";
		if D is diaper:
			say "After your belly is full to the brim, your [ShortDesc of D] is pulled back into place.";
		otherwise:
			let C be a random worn knickers;
			if C is clothing:
				say "The unseen hands rip away your [C]!";
				destroy C;
			let D be a random eligible diaper;
			summon D cursed;
			say "After your belly is full to the brim, you are made to wear a [ShortDesc of D].";
			compute summoned quest of D;
		say "Several hands rub on your belly until you are forced to expel your enema! ";
		if diaper messing >= 3:
			compute messing;
		otherwise:
			empty belly;
			WaterSoakUp D by (the soak-limit of D - 4);
			say "You now have a [D].";
		say "Next, you feel someone grab onto your hips!";
	otherwise:
		choose a sex method;
		if targeted-body-part is vagina and the number of pussy covering untearable clothing is 0, now F is vagina;
		if F is asshole and the player is possessing a vagina and pregnancy fetish is 1 and a random number between 1 and 2 is 1 and the number of pussy covering untearable clothing is 0, now F is vagina; [more chance to be vaginal if you like pregnancy]
		say "[bold type]You've made too much noise![roman type] A large amount of noise begins to grow from behind you, and soon you can hear the indistinct chatter of a huge group of [men of M]. Then out of nowhere, you feel someone gripping you by the hips![line break][variable custom style]Maybe they're going to help pull me out?[roman type][line break]";
		let C be a random top level protection clothing;
		if F is asshole, now C is a random top level ass protection clothing;
		say "Your question is answered as the hands begin to [if C is clothing]pull at your clothing[otherwise]find their way towards your [variable F][end if].[line break][variable custom style]No, [he of M][']s going to fuck me![roman type][line break]";
		while C is clothing:
			let PC be C;
			if C is displacable:
				say "The anonymous [man of M] [DisplacesFlav of C].";
				displace C;
			otherwise if C is tearable:
				say "The unseen hands rip away your [C]!";
				destroy C;
			if F is vagina, now C is a random top level protection clothing;
			otherwise now C is a random top level ass protection clothing;
			if C is diaper and diaper focus is 1, now C is nothing;
			if C is PC, now C is nothing;
		if (F is vagina and the player is not pussy protected) or (F is asshole and the player is not ass protected):
			now C is a random thing filling F;
			while C is a thing:
				say "The [ShortDesc of C] is removed from your [variable F]!";
				now C is in the location of the player;
				dislodge C;
				now C is a random thing filling F;
	if (F is vagina and the player is not pussy protected) or (F is asshole and the player is not ass protected):
		let men-fucked be 0;
		if diaper quest is 1, now hole-in-wall is penetrating F;
		otherwise now M is penetrating F;
		let D be a random worn diaper;
		let HIWT be 13;
		if D is diaper, now HIWT is 17;
		while hole-in-wall-turns < HIWT and the player is in HoleInWall and delayed fainting is 0:
			if men-fucked is 0:
				say "Soon you feel [if D is diaper]someone thrusting their hips back and forth against your squelchy padding[otherwise]a rock-hard [manly-penis] pushing against your [variable F]. There's absolutely nothing you can do as it squeezes its way in and starts pumping in and out[end if]. The faceless [man of M] quickly hits a very fast pace and [if diaper quest is 1]keeps going until [he of M] can hear you squealing with humiliation through the wall[otherwise]must really enjoy it because within seconds [he of M] is ejaculating[end if][if diaper quest is 0 and D is diaper] inside of you! You feel [semen] shoot into your [ShortDesc of D][otherwise if diaper quest is 0] inside of you! You feel [semen] shoot into your [variable F][end if].";
			otherwise if D is diaper:
				say "[one of]Another [man of M] takes [his of M] place[or]You feel another crotch bulge press against your [buttcheeks][or]Yet another [man of M] joins in[or]The [man of M]ly chatter in the [location of hole-in-wall] is still just as loud as ever, and another [manly-penis] pokes at your padding[then at random]! You [if the player is not a pervert][one of]grimace[or]squeal[or]groan[or]scrunch your eyes[or]growl[in random order][otherwise if the player is not a nympho][one of]squirm[or]shudder[or]curl your toes[or]can't help but moan[in random order][otherwise][one of]coo[or]sigh with pleasure[or]moan lewdly[or]squeal with glee[in random order][end if] as [one of]the anonymous [man of M][or]the next stranger[or]the nameless assailant[or]your new unnamed partner[or]the mystery [man of M][in random order] [one of]starts humping against[or]starts thrusting into[or]moves [his of M] hips back-and-forth[or]dry-humps[in random order] your [one of]soggy[or]squelchy[or]soiled[in random order] padding. [if diaper quest is 0][one of]Just like the [man of M] before [him of M][or]Again[or]Just like before[or]Once again[or]Just like [his of M] fellow quick-trigger friends[cycling] it only takes [him of M] [one of]about ten thrusts[or]a few moments[or]a matter of seconds[in random order] [one of]until [he of M] is filling your diaper with [his of M] [semen][or]before [he of M] is giving your padding another helping of [semen][or]before [he of M] climaxes inside your padding[or]and then suddenly [he of M] is finishing inside your diaper[in random order][otherwise][one of]Just like the [man of M] before [him of M][or]Again[or]Just like before[or]Once again[cycling] [he of M] spends a few seconds [one of]having fun before releasing you[or]doing this before moving on[or]teasing you and then backs off to make room for somebody else[cycling][end if].";
				AnnouncedExpel semen on D by 2;
			otherwise:
				say "[one of]Another [man of M] takes [his of M] place[or]You feel another hard [manly-penis] slap against your [buttcheeks][or]Yet another [man of M] joins in[or]The [man of M]ly chatter in the [location of hole-in-wall] is still just as loud as ever, and another [manly-penis] pokes at your hole[then at random]! You [if the relevant sex addiction of hole-in-wall < 4][one of]grimace[or]squeal[or]groan[or]scrunch your eyes[or]growl[in random order][otherwise if the relevant sex addiction of hole-in-wall < 7][one of]squirm[or]shudder[or]curl your toes[or]can't help but moan[in random order][otherwise][one of]coo[or]sigh with pleasure[or]moan lewdly[or]squeal with glee[in random order][end if] as [one of]the anonymous [man of M][or]the next stranger[or]the nameless assailant[or]your new unnamed partner[or]the mystery [man of M][in random order] [one of]shoves [his of M] [manly-penis] inside[or]pushes [his of M] way into[or]mercilessly forces [himself of M] into[or]eases [his of M] [manly-penis] inside[or]pushes forward, filling[in random order] your [variable F]. [one of]Just like the [man of M] before [him of M][or]Again[or]Just like before[or]Once again[or]Just like [his of M] fellow quick-trigger friends[cycling] it only takes [him of M] [one of]about ten thrusts[or]a few moments[or]a matter of seconds[in random order] [if condom fetish >= 1][one of]until [he of M] is filling you with [his of M] [semen]... no wait, [he of M] is wearing a condom at least. You haven't been creampied today[or]before [he of M] climaxes inside of you[or]and then suddenly [he of M] is finishing inside of you[or]before [he of M] is filling another condom up inside you[stopping][otherwise if the semen addiction of the player > 14][one of]until [he of M] is giving you that creampie you so desperately need[or]before [he of M] is giving you yet another amazing creampie[or]before [he of M] climaxes inside of you, giving you that amazing warm sticky feeling on the inside[or]and then suddenly [he of M] is finishing inside of you, marking you as [his of M] on the inside[in random order][otherwise][one of]until [he of M] is filling you with [his of M] [semen][or]before [he of M] is giving you another creampie[or]before [he of M] climaxes inside of you[or]and then suddenly [he of M] is finishing inside of you[in random order][end if].";
			if the number of worn diaper is 0:
				if F is asshole, AnalCount;
				otherwise FuckCount;
				if condom fetish >= 2:
					let C be a random worn condom pinnable stockings;
					if there is a worn belt, now C is a random worn belt;
					if C is nothing:
						summon string-belt uncursed;
						gluify string-belt;
						say "You feel someone sticking a string belt to your waist with glue!";
						now C is string-belt;
					compute M condom pinning on C;
				otherwise:
					if F is asshole, AssFill the girth of hole-in-wall;
					otherwise PussyFill the girth of hole-in-wall;
			ruin F;
			increase men-fucked by 1;
			increase hole-in-wall-turns by 1;
			compute extra turn;
		while hole-in-wall-turns < (HIWT + 3) and the player is in HoleInWall and delayed fainting is 0:
			if gatling-girth of hole-in-wall < 5:
				dislodge M;
				now hole-in-wall is penetrating F;
				now gatling-girth of hole-in-wall is 5 + (mythical creature fetish * 3);
				say "[if mythical creature fetish is 1]The ground trembles as something heavy stomps slowly towards you[otherwise][first custom style]'Ho ho ho.'[roman type][line break]A deep booming voice chuckles to [himself of M] behind you[end if].[line break][italic type]THUNK[roman type][line break]A semi-erect [manly-penis] that seems as thick and heavy as [if mythical creature fetish is 1]an elephant's trunk[otherwise]your arm[end if] slaps against your [AssDesc].[line break][variable custom style][one of]What the hell is that[if mythical creature fetish is 1]? It's definitely not human![otherwise]?![end if][or]Here we go again...[stopping][roman type][line break]The giant [manly-penis] pushes its tip up against your [variable F] [if the girth of hole-in-wall - the insertableGirthAcceptance of F > 3]stretching your hole impossibly as it forces its way inside[otherwise if the girth of hole-in-wall - the insertableGirthAcceptance of F > 0]stretching your hole wider as it pushes its way inside[otherwise]slipping inside your stretchy hole with a loud slurping sound[end if].";
			otherwise:
				say "You lie still as the giant dong [one of]uses your [variable F] as a handy warm cocksleeve[or]thrusts in and out of your poor stretched [variable F][or]fucks you in the [variable F][in random order].";
			ruin F;
			if hole-in-wall-turns is HIWT + 2:
				say "Finally it reaches its peak, pulling out before slamming all the way in with one powerful thrust, where it begins pumping shot after shot of hot [semen].[if condom fetish >= 1][variable custom style]Wait... [one of]the condom burst[or]they ran out of condoms[at random]?![roman type][line break][end if]";
				if F is asshole:
					AssFill the girth of hole-in-wall + 2;
					AnalCount;
				otherwise:
					PussyFill the girth of hole-in-wall + 2;
					FuckCount;
				increase men-fucked by 1;
			increase hole-in-wall-turns by 1;
			compute extra turn;
		say "[if diaper quest is 0 and F is vagina]Huge spurts of [semen] begin noisily and powerfully ejecting themselves from your [vagina]. [strongHumiliateReflect][end if]Finally the loud sound of the crowd of [men of M] begins to die away as they bore of you and dissipate.";
	otherwise:
		say "You can hear the [men of M] roaring with frustration at being unable to get at your [fuckholes]. Finally the loud sound of the crowd of [men of M] begins to die away as they bore of you and dissipate.";
		increase hole-in-wall-turns by 20;
	dislodge hole-in-wall.

Hole In Wall Trap ends here.
