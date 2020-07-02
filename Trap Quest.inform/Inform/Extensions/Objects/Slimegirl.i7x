Slimegirl by Objects begins here.

slimegirl is a person. The printed name of slimegirl is "[TQlink of item described]slimegirl[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of slimegirl is "slgl". Understand "slime", "girl" as slimegirl. slimegirl is wearable.

Figure of slimegirl is the file "NPCs/Forest/slimegirl1.png".
Figure of Slimegirl Cutscene 1 is the file "Special/Cutscene/cutscene-slimegirl1.png".
Figure of Slimegirl Cutscene 2 is the file "Special/Cutscene/cutscene-slimegirl2.png".

To decide which figure-name is the examine-image of (C - slimegirl):
	decide on figure of slimegirl.

To say ExamineDesc of (C - slimegirl):
	say "A blue, semi-transparent creature made out of some kind of slimy liquid, in the shape of a buxom humanoid [boy of C]. It appears that [he of C] can shapeshift, but the extent of [his of C] powers is unclear. [if C is worn][big he of C] is currently living inside your belly. [end if][if C is worn and the intensity of C > 0][big he of C] is making you crave semen much more than usual![end if][line break]".

Definition: slimegirl is cult garb: decide yes.

Check wearing slimegirl:
	say "You can't wear that!" instead.

Check taking off slimegirl:
	say "[if the noun is worn][big he of the noun]'s inside you, that's not very straightforward...[otherwise]How would that work?[end if]" instead.

Check inserting slimegirl into:
	say "[if the noun is worn][big he of the noun]'s inside you, that's not very straightforward...[otherwise]I don't think [he of the noun] agrees.[end if]" instead.

To decide which number is the girth of (M - slimegirl):
	decide on 9. [This is how wide she forces you when she goes inside.]

[
The higher the number, the more desperate the slimegirl is to get some semen.
At hunger 10, the slimegirl dies.
A hunger of 999 means the slimegirl is permanently dead.]
slimegirl has a number called hunger.

[The higher the number here, the more the slimegirl is influencing the player's stats.]
slimegirl has a number called intensity.

[The higher this number, the longer it has been since the last time the hunger of the slimegirl changed.]
slimegirl has a number called timetaken.

slimegirl has a number called slime-favour.

An all time based rule (this is the compute slimegirl rule):
	if slimegirl is worn:
		let M be slimegirl;
		increase the timetaken of M by seconds;
		if the timetaken of M > a random number between (200 - (hunger of M * 10)) and 250:
			now the timetaken of M is 0;
			if the hunger of M < 2:
				increase the hunger of M by 1;
			otherwise if the hunger of M < 5:
				increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]I'm getting hungry in here... can you feed me with some [tasty] cum soon [please]?'[or]I'm hungry, give me some more cum!'[or]I need semen to live in here, you know? [big please] feed me soon!'[or]Hey baby, have you forgotten about me? I need feeding, you know...'[in random order][roman type][line break]";
				let R be a random number between 1 and 3;
				if R is 1:
					say "You feel [NameDesc of M] slightly influencing your love of [semen] and sex.";
					now the intensity of M is 1;
				if R is 2:
					say "You feel [NameDesc of M] significantly influencing your love of [semen] and sex.";
					now the intensity of M is 2;
				if R is 3:
					if weight gain fetish is 1:
						say "You feel [NameDesc of M] enlarging your ass cheeks, to make you more tempting to potential partners.";
						AssSwell 1;
					otherwise:
						say "You feel [NameDesc of M] widening your hips, to make you more tempting to potential partners.";
						HipUp 1;
			otherwise if the hunger of M < 7:
				if a random number between 1 and 2 is 1, increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]I'm getting sooo hungry in here... I really need some manly seed soon!'[or]I'm fed up of waiting, feed me now or else!!'[or]I'm going to keep fucking with you if you don't feed me, you slut!'[or]Are you enjoying what I'm doing to you or something? Just find a manly stud, and get him to assfuck you! It's not hard!'[in random order][roman type][line break]";
				let R be a random number between 1 and 3;
				if R is 1:
					say "You feel [NameDesc of M] massively influencing your love of [semen] and sex.";
					now the intensity of M is 3;
				if R is 2:
					if the hunger of M is 7:
						say "You feel [NameDesc of M] forcing your mind to think like a total anal slut.";
						now the intensity of M is 4;
						arouse 3000;
					otherwise:
						say "You feel [NameDesc of M] significantly influencing your love of [semen] and sex.";
						now the intensity of M is 2;
				if R is 3:
					if weight gain fetish is 1:
						say "You feel [NameDesc of M] enlarging your ass cheeks, to make you more tempting to potential partners.";
						AssSwell 1;
					otherwise:
						say "You feel [NameDesc of M] widening your hips, to make you more tempting to potential partners.";
						HipUp 1;
				if lactation fetish is 1:
					say "You feel some kind of toxin flowing through your body, which makes you feel all giddy, and almost euphoric. [if the lactation rate of the player > 0]You can feel your lactation rate increasing[otherwise]You can feel your breasts start to produce [milk][end if].";
					increase the lactation rate of the player by 1;
			otherwise if the hunger of M is 7:
				increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]Okay I give up, I guess you're really not going to feed me. Will you at least take me back to my pool? I'll die if you leave me in here...'[or]Okay okay I give up again! [big please] take me back to my pool?'[stopping][roman type][line break]";
				now the intensity of M is 0;
			otherwise if the hunger of M < 10:
				increase the hunger of M by 1;
				say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]Either feed me or let me out!!! I'm going to starve!'[or]I won't let you starve me to death!'[or]You bitch, let me out!'[or]Let me out of here, you fucking whore!'[in random order][roman type][line break]";
				now the intensity of M is 2;
				if lactation fetish is 1:
					say "You feel some kind of toxin flowing through your body, which makes you feel all giddy, and almost euphoric. [if the lactation rate of the player > 0]You can feel your lactation rate increasing[otherwise]You can feel your breasts start to produce [milk][end if].";
					increase the lactation rate of the player by 1;
				if watersports mechanics is 1:
					BladderUp 1;
				if a random number between 1 and 2 is 1:
					say "You feel [NameDesc of M] expanding your breasts!";
					BustUp 1;
				otherwise:
					say "You feel [NameDesc of M] widening your hips!";
					HipUp 1;
			otherwise:
				say "[bold type][BigNameDesc of M] shrivels up and dies inside of you. [big he of M] seems to disappear completely![roman type][line break]";
				remove M from play;
				now the hunger of M is 999;
				say "Your victory against the monster has strengthened your resolve to continue. You feel more at peace with yourself.";
				SexAddictDown 2;
				SemenAddictDown 2;
				say "You now have a [BellyDesc].".

WoodsScenery01 has a number called waterfall-timer.

[Locations: -1 under waterfall, 0 river, 1 wider river, 2 whirlpool]
To compute swimming in (WB - WoodsScenery01):
	let swimming be 1;
	let swim-turns be 0;[how long has the player been swimming]
	let swim-location be -1;[where is the player right now?]
	let S be the swimming challenge of the player;
	let M be slimegirl;
	if the waterfall-timer of WB > 0, now the waterfall-timer of WB is 0;[The player can make a deal with the slimegirl to temporarily slow the current. This wears off as soon as the player gets out.]
	while swimming is 1:
		let L be swim-location;
		if swim-turns is 0:
			if water-peeing is false, say "You [if the player is upright]wade[otherwise]crawl[end if] out into the water and begin to swim.";
			compute slimegirl noticing in WB;
			if the waterfall-timer of WB is -1:[ready to slow down]
				now swim-location is -1;
			otherwise if the waterfall-timer of WB is -2:[player met the slimegirl, was attacked, and jumped to get away]
				now the waterfall-timer of WB is 0;
				now swim-location is 0;
		otherwise:
			say "You are [if L is 0]swimming in a thinner part of the river. The current here is very strong, but the edges are close by and if you can reach the waterfall, you could probably find something to hold onto.[otherwise if L is 1]swimming in a wider part of the river. The current here is very strong, and the edges are far away, and would require an effort to swim to.[otherwise if L is 3]swimming near a whirlpool at the end of the river. The current here seems to lead underwater, and you have to resist it strongly to keep form being pulled under. The edges are far away, and would probably require a lot of effort to swim to.[otherwise]swimming directly underneath the waterfall. There are small metal rails sticking out of the water here, helping you resist the current.[end if]";
		reset multiple choice questions;
		set next numerical response to "swim toward edge";
		if L > -1:
			set next numerical response to "swim toward waterfall";
		otherwise:
			set next numerical response to "hold on";
		set next numerical response to "ride the current";
		if L > -1, set next numerical response to "dive";
		if L is -1 and the waterfall-timer of WB is -1 or M is worn by the player, set next numerical response to "slow the current";[With a little help from the slimegirl]
		compute multiple choice question;
		say "[line break]What should you do next?";
		let CNR be the chosen numerical response;
		if the printed name of CNR is "get out":
			say "You climb out of the river.";
			now swimming is 0;
		otherwise if the printed name of CNR is "swim toward waterfall":
			say "You take a deep breath and begin swimming against the current.";
			compute normal swimming check in WB;
			let DC be 40;
			if the waterfall-timer of WB > 0, increase DC by 30;[higher = easier]
			let R be a random number between S * 2 and S / 2 ;
			if R < DC:
				if L is 1:
					say "You reach the waterfall after a long struggle, and quickly find a place to hold onto the rocks.";
					if M is not worn by the player:
						compute slimegirl meeting in WB;
						if the waterfall-timer of WB is -1:[ready to slow down]
							now swim-location is -1;
						otherwise if the waterfall-timer of WB is -2:[player jumped]
							now swim-location is 0;
				otherwise:
					say "You make good progress toward the waterfall, but there's still a ways to go.";
					decrease swim-location by 1;
			otherwise if R < DC + 10:
				say "You try to swim toward the waterfall, but the current is just too strong. You don't make any progress.";
			otherwise:
				say "You try to swim toward the waterfall, but the current is just too strong, and it drags you even further down the river.";
				increase swim-location by 1;
		otherwise if the printed name of CNR is "swim toward edge":
			say "You take a deep breath and begin swimming against the current.";[The player will potentially rest here, so we defer the fatigue until the end.]
			let DC be 50;
			if the waterfall-timer of WB > 0, increase DC by 30;
			decrease DC by L * 10;[The edges are harder to reach the further down the river you go]
			let R be a random number between S * 2 and S / 2 ;
			if R < DC:
				say "You make it to the edge and grab on as you catch your breath. Do you want to get out?";
				if the player is consenting:
					say "You climb out of the river.";
					now swimming is 0;
				otherwise:
					say "You rest for a while longer before letting go.";
					FatigueDown 5;
			otherwise if R < DC + 10:
				say "You try to swim to the edge, but the current is just too strong.";
				compute normal swimming check in WB;
			otherwise:
				say "You try swim to the edge, but the current is just too strong, and it pushes you further down the river.";
				compute normal swimming check in WB;
				increase swim-location by 1;
		otherwise if the printed name of CNR is "ride the current":
			say "You allow the current to carry you down the river.";
			compute easy swimming check in WB;
			increase swim-location by 1;[always succeeds]
		otherwise if the printed name of CNR is "dive":
			say "You dive below the surface.";
			compute difficult swimming check in WB;
			compute treasure diving in WB at L;
			let DC be 30;
			if the waterfall-timer of WB > 0, now DC is 50;
			let R be a random number between S * 2 and S / 2 ;
			if R < DC:
				say "[line break]While you're underwater, you manage to resist the strong current pushing you back.";
			otherwise if R < DC + 15:[Its very hard not to get pushed at least a little]
				say "[line break]While you're underwater, the current pushes you further down the river.";
				increase swim-location by 1;
			otherwise:
				say "[line break]While you're underwater, the current pushes you much further down the river.";
				increase swim-location by 2;
		otherwise if the printed name of CNR is "hold on":
			compute bathing;
			say "You hold onto the rocks as the force of the waterfall crashes down above you. You feel a little less fatigued.";
			FatigueDown 5;
		otherwise if the printed name of CNR is "slow the current":
			if M is worn by the player:
				say "The slimegirl sticks a translucent appendage out of your butt and reaches into the waterfall. You hear a *click*, and a metal grate extends out above you, robbing the current of more than half of its force.";
			otherwise:
				say "The slimegirl sticks a translucent arm through the waterfall, and you hear a *click*. A metal grate extends out above you, robbing the current of more than half of its force.";
			now the waterfall-timer of WB is 50;
		say "[line break]";
		if swimming is 1:
			compute bathing;[Happens every turn]
			increase swim-turns by 1;
			if swim-location > 3:[You fell in the whirlpool. Send the player to the vine boss.]
				say "The whirlpool sucks you under, and your body is plunged into pitch blackness as you hurtle through an underground section of the river. Thankfully, your 'trip' is short and the river spits you out in a huge underground pit.[line break]";
				now the player is in WoodsBoss01;
				now swimming is 0;
			otherwise:
				compute swimming fatigue check in WB;
				if delayed fainting is 1, now swimming is 0;
			if the waterfall-timer of WB > 0 and swimming is 1:
				decrease the waterfall-timer of WB by 4;[you have roughly 12 turns of slow current]
				if the waterfall-timer of WB < 0:
					say "The current speeds back up.";
					now the waterfall-timer of WB is 0;
	allocate 12 + (swim-turns * 3) seconds;
	display entire map.

[if the slimegirl is around (or inside you), she reacts to you swimming in the river/waterfall.]
To compute slimegirl noticing in (WB - WoodsScenery01):
	let M be slimegirl;
	if M is worn by the player:
		if asshole is not actually occupied and the hunger of M > 7:
			say "[BigNameDesc of M] pushes [his of M] way out of your [asshole]!";
			now M is penetrating asshole;
			ruin asshole;
			now M is not penetrating asshole;
			now M is in Woods05;
			now the hunger of M is 0;
			now the intensity of M is 0;
			now the timetaken of M is 0;
			say "[second custom style]'Well, thanks for returning me to my pool, I guess...'[roman type][line break]";
		otherwise:
			say "[bold type][BigNameDesc of M] [bold type]telepathically communicates with you. [line break][second custom style]'[one of]So, you're barging into my old home like you own the place? ....Just kidding! I was a squatter!'[or]Hey, its my old digs! Feel free to hang out!'[or]I live inside you now, so if you want to move in, feel free!'[or]Ooh, yeah, I used to live here once. Don't worry, you're better.'[in random order][roman type][line break]";
	otherwise:
		compute slimegirl meeting in WB;
		

[You reach the waterfall, and the slimegirl says hey can I clean you]
To compute slimegirl meeting in (WB - WoodsScenery01):
	let F be the number of held food;
	let B be the number of glazed body parts;
	let M be slimegirl;
	if B > 0:
		if M is in the location of the player:
			say "The slimegirl gives you an expectant look.[line break][second custom style]'[one of]Sooo, can I clean you up?'[or]Hm. I am so hungry. If ONLY I had some jism to eat.'[or]Hey there precious food source- I mean...yeah, precious foodsource. Let me eat that cum.'[in random order][roman type][line break]Do you want to feed the slimegirl?";
		otherwise if the hunger of M is not -999:
			say "A humanoid monster completely made out of liquid leaps out of the water and onto a nearby rock.[line break][second custom style]'[one of]Hey human, are you willing to sacrifice any of that bukkake? If you share, I'll slow down this river for you!'[or]Hey, human, want to make a deal? Let me lick you clean and I'll slow down this river for you. Sounds really great, right? Riiight?[or]Hey human, I bet you wish you could safely dive in this river. I can make it much safer in exchange for all that cum you're wearing! Think about it!'[in random order][roman type][line break]Do you want to feed the slimegirl?";
			now M is in the location of the player;
	otherwise:
		if M is in the location of the player:
			if bukkake fetish is 1, say "The slimegirl glances at you.[line break][second custom style]'[one of]Oh, you're clean already...'[or]Oh don't mind me. Just a starving spermavore over here. Don't mind me~'[or]Oh. You looked pretty tasty when you got in....'[in random order][roman type][line break]";
			otherwise say "The slimegirl gives you an expectant look.[line break][second custom style]'[one of]Sooo, did you bring me anything?'[or]Hm. I am so hungry. Wow I sure would be happy if only I had some food!'[or]Hey there precious food source- I mean...yeah, precious foodsource. Feed me.'[in random order][roman type][line break][if F > 0]Do you want to feed the slimegirl?";
		otherwise if bukkake fetish is 0 and the hunger of M is not -999:[if bukkake is enabled, she only shows up if you have cum on your body somewhere]
			if F > a random number between 2 and 10:
				say "A humanoid monster completely made out of liquid leaps out of the water and onto a nearby rock.[line break][second custom style]'[one of]Foodmonger- I mean, human! You have food, don't you? If you give me some, I'll slow down this river for you!'[or]Hey, human, want to make a deal? Give me a tasty morsel and I'll slow down this river for you. Sounds really great, right? Riiight?[or]Hey human, I bet you wish you could safely dive in this river. I can make it much safer in exchange for a tiny morsel of food!'[in random order][roman type][line break]Do you want to feed the slimegirl?";
				now M is in the location of the player;
	if M is in the location of the player and F + B > 0:
		if the player is consenting:
			let LV be a list of things;
			repeat with V running through held food:
				add V to LV;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			if the number of entries in LV > 0:
				truncate LV to 9 entries;
				say "What do you want to feed [him of witch] with?[line break]";
				repeat with V running through LV:
					if V is bottle, set next numerical response to "The [ShortDesc of V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]";
					otherwise set next numerical response to "[BigNameDesc of V]";
				if B > 0, set numerical response (the number of entries in LV + 1) to "let [him of witch] engulf you";
				set numerical response 0 to "don't feed";
				compute multiple choice question;
				if player-numerical-response > 0:
					if player-numerical-response is (the number of entries in LV + 1), compute slimegirl engulfing in WB;
					otherwise compute slimegirl feeding on (entry player-numerical-response in LV) in WB;
				otherwise:
					compute slimegirl frustration in WB;
			otherwise:
				reset multiple choice questions; 
				set numerical response 0 to "let [him of witch] engulf you";
				set numerical response 1 to "don't feed.";
				compute multiple choice question;
				if player-numerical-response is 0, compute slimegirl engulfing in WB;
				otherwise compute slimegirl frustration in WB.

[When you feed the slimegirl with food. For now, lets say there's no risk of her hitching a ride here]
To compute slimegirl feeding on (F - a food) in (WB - WoodsScenery01):
	say "[line break][second custom style]'[one of]Dinner time!'[or]Breakfast time!'[or]Lunch lunch luuuuunch~'[or]Dinner~'[or]Supper time!'[in random order][roman type][line break][BigNameDesc of slimegirl] snatches the [printed name of F] from your hand and stuffs it in her mouth.";
	destroy F;
	increase the slime-favour of slimegirl by 3;
	now the waterfall-timer of WB is -1.

To compute slimegirl engulfing in (WB - WoodsScenery01):
	let S be 0;
	let M be slimegirl;
	repeat with C running through worn clothing:
		if the semen-soak of C > 0, increase S by the semen-soak of C;
		clean C;
		Drench C;
	say "[line break][second custom style]'[one of]Dinner time!'[or]Breakfast time!'[or]Lunch lunch luuuuunch~'[or]Dinner~'[or]Supper time!'[in random order][roman type][line break][BigNameDesc of M] pounces on you and quickly begins lapping up all the [semen] on your body[if S > 0] and clothes[end if]";
	cutshow figure of slimegirl cutscene 1 for M;
	if the total felchable volume of vagina > 0 and vagina is not actually occupied and the player is not pussy protected:
		say "[BigNameDesc of M] moves down to your [vagina], and laps away with great enthusiasm. ";
		stimulate vagina from M;
		increase S by the semen volume of vagina;
		now the semen volume of vagina is 0;
		if the pregnancy of the player is 0:
			increase S by the womb volume of vagina;
			WombEmpty the womb volume of vagina;
	if the semen volume of belly > 0 and asshole is not actually occupied and the player is not ass protected:
		say "[BigNameDesc of M] moves down to your [asshole], and licks with increased vigour. It feels incredible!";
		increase S by 1;
		stimulate asshole from M;
	if bukkake fetish is 1, say "[big he of M] continues licking you up and down until all the [semen] you had on you is gone. Everywhere [he of M] licks gives you a little tingle of pleasure.";
	repeat with B running through body parts:
		increase S by the semen coating of B;
		now the semen coating of B is 0;
	increase the slime-favour of M by S;
	if (S > 12 or the slime-favour of M > 30) and the player is not ass protected and asshole is not occupied and belly limit - the total fill of belly >= 10 and the latex-transformation of the player <= 2:
		compute slimegirl hitching a ride from WB;
	otherwise:
		say "[BigNameDesc of M] smacks [his of M] lips.[line break][second custom style]'That was [one of][tasty][or]scrumptious[or]yummy[in random order]! Come back any time, [one of]darling[or]baby[in random order]!'[roman type][line break]";
		now the waterfall-timer of WB is -1;

To compute slimegirl frustration in (WB - WoodsScenery01):
	say "The slimegirl pouts.[line break][second custom style]'[one of]Oh, well I wasn't really THAT hungry.'[or]I expected that. Humans are SELFISH after all.'[or]Oops! Looks like I mistook you for a generous person. Sorry~'[in random order][roman type][line break]";
	decrease the slime-favour of slimegirl by 5.

slimegirl has a number called slime-quest.

[We care about two outcomes here:
1 - Did the player try to escape?
2 - ok, then did the player make a deal with the slime?]
To compute slimegirl hitching a ride from (WB - WoodsScenery01):
	let R be 0;
	let M be slimegirl;
	say "[BigNameDesc of M] smacks [his of M] lips. [line break][second custom style]'That was [one of]the best feast I've had in a long time[or]just as great as last time[stopping]! I think I'm going to have to travel with you for a while...'[roman type][line break][one of]You are still trying to work out what that means when[or]Once again[stopping] [his of M] humanoid form dissolves as [he of M] engulfs your lower body, and suddenly you feel [him of M] poking forcefully at your [asshole]. [big he of M]'s... [he of M]'s trying to force [himself of M] in!";
	say "[bold type]Do you want to try and escape?[roman type] ";
	if the player is consenting:
		let S be the swimming challenge of the player;
		now R is a random number between S and the dexterity of the player;
		let D be the dexterity of the player;
		if debuginfo > 0, say "[input-style]Escape from slimegirl check: swimming challenge (S), dexterity ([D]) -> RNG([S]~[D]) = [R] | (7.5) slimegirl invasion skill[roman type][line break]";
		now the waterfall-timer of WB is -2;
	otherwise:
		now R is -9999;
		now the waterfall-timer of WB is -1;
	if R < 8:
		unless R <= -9999, say "You leap into the water and try to swim away, but it's no good! [big he of M]'s too fast for you! ";
		say "You feel [if the openness of asshole < 8]your [asshole] forced wide as [NameDesc of M] swims up inside you and into your belly![otherwise][him of M] wiggling as [NameDesc of M] swims up into your [asshole] and into your belly![end if]";
		cutshow figure of slimegirl cutscene 2 for M;
		say "[big he of M] somehow speaks to you telepathically.[line break][second custom style]'I hope you don't mind me living in here for a while, but I want to drink all the [tasty] cum that people are going to squirt inside you!'[roman type][line break]";
		say "[if the bimbo of the player < 7][line break][first custom style]Holy shit, what is this?![otherwise if the bimbo of the player < 11][line break][variable custom style]Err... okay? I think?[otherwise][line break][second custom style]Ooh, this could be fun![end if][roman type][line break]";
		now M is penetrating asshole;
		ruin asshole;
		now M is not penetrating asshole;
		now M is worn by the player;
		now the semen volume of belly is 0;
		cancel father material of asshole;
		say "[if the largeness of belly > 3][big his of M] residence inside your belly means that you now have a[PermanentBelly] [BellyDesc][otherwise if there is a worn corset]You can tell that if your weren't wearing a corset, the presence of the slimegirl would be distending your belly[otherwise]Your belly now feels very heavy, even though it's not showing any signs of distension[end if].";
	otherwise:
		say "You leap into the water before [he of M] can go any further, and use the strong current to quickly carry yourself out of [his of M] reach.[line break][second custom style]'No, wait, come back! Awww...'[roman type][line break]";

[
jewel (uncommmon)
nothing (common)
any token (common)
wasp wing (uncommon)
infernal gem (rare)
]
To compute treasure diving in (WB - WoodsScenery01) at (L - a number):
	let N be 0;
	if (L is 1 and the player is getting very lucky) or (L is 2 and the player is getting lucky) or (L is 3 and the player is not getting unlucky):[3 almost always has something, but it happens to be the most dangerous diving spot]
		now N is a random number between 1 and 30;
		say "[line break]You notice something glinting on the riverbed, and quickly swim toward it... [run paragraph on]";
		if L is 3 and N > 0, increase N by 2;[higher chance of something good]
		if N > 20:[jewels]
			let J be a random off-stage plentiful accessory;
			if J is accessory and L > 1:[You won't find jewels until you go further out]
				if N > 29:[Ruby]
					 now J is ruby;
				otherwise if N >= 27:[emerald]
					now J is emerald;
				otherwise:[sapphire]
					now J is sapphire;
				say "You find a [ClothingDesc of J]! You take it with you as you swim back to the surface.";
				now J is carried by the player;
			otherwise:
				say "You find a rusted out piece of jewelery. You leave it behind as you swim back to the surface.";
		otherwise if N > 18:
			let G be a random off-stage infernal gem;
			if G is infernal gem:
				say "You find an infernal gem among the rocks and carry it with you back to the surface.";
				now G is carried by the player;
			otherwise:
				say "You find a pretty gem, but it crumbles as soon as you touch it. You return to the surface empty handed.";
		otherwise if N > 15:[magic token]
			let T be a random off-stage magic token;
			if T is magic token:
				say "You find a magic token among the rocks. You take it with you as you swim back to the surface.";
				now T is carried by the player;
			otherwise:
				say "You find a rusted coin. You leave it behind as you swim back to the surface.";
		otherwise if N > 12:[sanity token]
			let T be a random off-stage sanity token;
			if T is sanity token:
				say "You find a sanity token among the rocks. You take it with you as you swim back to the surface.";
				now T is carried by the player;
			otherwise:
				say "You find a rusted coin. You leave it behind as you swim back to the surface.";	
		otherwise if N > 9:[defiance token]
			let T be a random off-stage defiance token;
			if T is defiance token:
				say "You find a defiance token among the rocks. You take it with you as you swim back to the surface.";
				now T is carried by the player;
			otherwise:
				say "You find a rusted coin. You leave it behind as you swim back to the surface.";
		otherwise if N > 5:[wasp wing, if possible]
			let W be a random off-stage wasp wing;
			if W is wasp wing and mythical creatures fetish is 1 and egg laying fetish is 1:
				say "You find a wasp wing among the rocks and carry it with you on your journey back to the surface.";
				now W is carried by the player;
			otherwise:
				say "You find a shard of glass among the rocks, and leave it where you found it as you head back to the surface.";
		otherwise:
			say "You find a really shiny rock, but can't think of any reason to keep it. You leave it in its place as you return to the surface.";
	otherwise:
		say "You spend a bit of time underwater before swimming back up.";

Carry out talking slimegirl:
	reset multiple choice questions;
	if the player is not able to speak:
		set numerical response 1 to the substituted form of "[gag sounds]";
		set numerical response 0 to "cancel";
		compute multiple choice question;
		if player-numerical-response is 1:
			allocate 3 seconds;
			say "[variable custom style][numerical-response-1][roman type][line break]";
			say "It doesn't seem like [NameDesc of slimegirl] [if slimegirl is uninterested]knows that you're speaking to [him of slimegirl][otherwise]can understand you[end if].";
	otherwise:
		set numerical response 1 to the substituted form of "[variable custom style]'Hello[if slimegirl is worn], can you hear me in there[end if]?'[roman type][line break]";
		set numerical response 2 to the substituted form of "[variable custom style]'Can you teach me anything useful?'[roman type][line break]";
		if the player is thirsty and slimegirl is worn, set numerical response 3 to the substituted form of "[variable custom style]'I'm thirsty! Do you have any way to help me find something to drink?'[roman type][line break]";
		if the player is hungry and slimegirl is worn, set numerical response 4 to the substituted form of "cancel";
		set numerical response 0 to "cancel";
		compute multiple choice question;
		if player-numerical-response is not 0:
			allocate 4 seconds;
			say "[chosen numerical response]";
			if slimegirl is worn, say "[big he of slimegirl] telepathically communicates with you.";
			if player-numerical-response is 1:
				if slimegirl is worn:
					say "[second custom style]'Are you talking to me? [one of]Yes, I can hear you.'[or]Say what you want to say, already!'[stopping][roman type][line break]";
				otherwise:
					say "[second custom style]'Why don't you come a bit closer, honey?'[roman type][line break]";
			if player-numerical-response is 2:
				if slimegirl is worn:
					if the hunger of slimegirl < 3:
						teach milkskill;
					otherwise:
						say "[second custom style]'Stop asking questions and feed me!'[roman type][line break]";
				otherwise:
					say "[second custom style]'I'm not telling you anything! What motivation do I have to help you out?'[roman type][line break]";
			if player-numerical-response is 3:
				if the hunger of slimegirl < 3:
					if lactation fetish is 1:
						say "[second custom style]'Here, maybe this will help!'[roman type][line break]You can feel the [milk] in your breasts increasing in volume[one of]![or].[stopping]";
						MilkUp 2;
					otherwise:
						say "[second custom style]'I don't, but you could always find a naughty monster and drink his yummy cum!'[roman type][line break]";
				otherwise:
					say "[second custom style]'Hah, now you know how I feel!'[roman type][line break]";
			if player-numerical-response is 4:
				if the hunger of slimegirl < 3:
					say "[second custom style]'I don't, but you could always find a naughty monster and eat his yummy cum!'[roman type][line break]";
				otherwise:
					say "[second custom style]'Hah, now you know how I feel!'[roman type][line break]".

Slimegirl ends here.
