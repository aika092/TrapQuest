Throne by Objects begins here.

The throne is in Dungeon11. The printed name of throne is "[TQlink of item described]throne[TQxlink of item described][shortcut-desc][verb-desc of item described]". The throne is a trap. The throne is not portable. The throne is not triggered. The throne is untriggered. The throne is revealed. Understand "bind","binds","tentacle","tentacles" as the throne. The description of the throne is "[ThroneDesc]". The throne has a number called charge. The charge of the throne is usually 0. The throne has a number called turns. The throne can be untransformed or transformed. The throne is untransformed. The text-shortcut of throne is "thr".

To say ThroneDesc:
	if the noun is untransformed:
		if images visible is 1, display figure of throne;
		say "A pink and gold throne clearly fit for a royal lady. Pink frills at the bottom obscure what could be underneath the throne.";
	otherwise:
		if images visible is 1, display figure of potty throne;
		say "A pink chair cheaply fashioned into a princess theme, with the words 'Lil Lady' below a black bow on the backrest. A hole in the middle of the seat contains a potty.".

To say EnvironmentDesc of (T - throne):
	say "A pink [throne] is sitting proudly at the west end of the room. ".

To say ShortDesc of (T - throne):
	say "throne".

[!<YourselfIsThroneStuck>+

Returns yes if the player is trapped on the throne.

+!]
Definition: yourself is throne stuck:
	if the throne is triggered and the throne is untriggered, decide yes;
	decide no.

First-throne is a number that varies.

Does the player mean entering the throne: it is very likely.

Figure of throne is the file "Env/Dungeon/throne1.png".
Figure of potty throne is the file "Env/Dungeon/throne2.png".
[
Definitions for the throne:
Triggered - Player is interacting with the throne in some way.
Important - Player has not already sat on the throne.
Untriggered - Player has not broken tentacle bonds.
TrapNo:
0 - Nothing
1 - Belly being filled, level 1
2 - Belly being filled, level 2
3 - Belly being filled, level 3
4 - Belly being filled, level 4
5 - Belly being filled, level 5
6 - Belly being filled, level 6
7 - Belly being filled, level 7
8 - Belly full.
]
Check entering the throne:
	if the player is flying, say "You're not even on the ground!" instead;
	if the player is prone, say "You can't while you are on your hands and knees." instead;
	if the throne is triggered, say "You already are!" instead;
	now seconds is 2;
	if newbie tips is 1, say "[one of][item style]Newbie tip: The throne has a lot of different possible outcomes when you sit on it, but you can only try it once in a while. Come back in a bit and try again![roman type][line break][or][stopping]";
	say "You sit on the throne. ";
	if the charge of the throne <= 0:
		now the charge of the throne is 300;
		let R be a random number from 1 to 6;
		let R-old be R;
		if debuginfo > 0, say "[input-style]Throne roll: d6 ([R]) ";
		if there is worn headgear:
			increase R by 1;
		if debuginfo > 0, say "+ headgear bonus ([if there is worn headgear]1[otherwise]0[end if]) ";
		if the class of the player is princess:
			increase R by 1;
		if debuginfo > 0, say "+ Princess bonus ([if the class of the player is princess]1[otherwise]0[end if]) ";
		if R is 2 and asshole is actually occupied:
			now R is 3;
			if debuginfo > 0, say "+ plugged bonus (1) ";
		if R < 3 and (the latex-transformation of the player > 3 or the noun is transformed):
			if debuginfo > 0, say "+ transformed bonus ([3 - R]) ";
			now R is 3;
		if first-throne is 0:
			now first-throne is 1;
			if tough-shit is 0:
				now R is a random number between 4 and 6;
				now R-old is R;
				if debuginfo > 0, say "; FIRST TIME REROLL d3+3 ([R]) ";
		if debuginfo > 0:
			if diaper quest is 0, say "[if R is not R-old] = [R] [end if]| 1) Tiara; 2) Tentacle Trap; 3) [if the class of the player is princess]Guard dream[otherwise]Body expansion[end if]; 4) Intelligence + 1; 5) Strength + 1; 6) Dexterity + 1; 7) Hair reduction; 8) Humiliation reduction[roman type][line break]";
			otherwise say "[if R is not R-old] = [R] [end if]| 1) Tiara; 2-3) Potty; 4) Intelligence + 1; 5) Strength + 1; 6) Dexterity + 1; 7) Humiliation reduction[roman type][line break]";
		if R is 1:
			let H be a random tiara;
			summon H cursed;
			say "A silver tiara appears on your head. You feel important.[line break][second custom style][line break]Is this game turning me into a princess?[roman type][line break]" instead;
		otherwise if R is not 4 and R is not 5 and R is not 6 and (there is a worn diaper or (diaper quest is 1 and R <= 3) or (diaper lover >= 1 and the noun is not transformed and ((the class of the player is princess and diaper quest is 1) or the player is an adult baby or the player is a sissy))):
			if debuginfo > 0 and diaper quest is 0, say "[input-style]Player is a bab - Potty override![roman type][line break]";
			if the noun is transformed:
				let K be a random worn knickers;
				if rectum > 3:
					say "All of a sudden, you suddenly completely lose control over your sphincter!  You try to stand up but your [if K is clothing][K][otherwise]butt[end if] is somehow stuck in the potty!  You shudder as your butt begins to empty itself, forcing the mushy contents of your guts into your [if K is diaper]nappy[otherwise if K is clothing][K][otherwise]new toilet[end if]. ";
					if K is knickers, say "[if the diaper addiction of the player < 10]You are completely powerless to stop it, so you end up just sitting there awkwardly whilst your poop chute gets to work. There's so much!  By the time you finish, you are very confident that you are now empty.[otherwise if the diaper addiction of the player < 15][one of]You can't help but almost enjoy messing yourself - the warm feeling spreading over your butt and thighs actually feels kind of nice.[or]You give into the pleasurable feelings and sigh gently as you feel the warmth spreading beneath you.[stopping][otherwise]You giggle like a naughty schoolgirl and rub your butt into the mush as you continue to fill your [K]. It feels so good - you wish it could last for ever!  Once you've finished pooping yourself, you sit there with a massive grin on your face, wiggling your bum in the seat to keep feeling the weight of it sagging beneath you in the potty.[end if]";
					now rectum is 0;
					now the urine-soak of K is 1; [to make sure it's cleaned directly below]
				if K is clothing and (the urine-soak of K > 0 or K is messed):
					say "Suddenly, a wave of magic flows through the potty to your [K] and you feel that it has been magically cleaned. It's like it was brand new!";
					now the urine-soak of K is 0;
					now the mess of K is 0;
				otherwise:
					if the bladder of the player < 10, now the bladder of the player is 10;
					say "[if the player is bursting and K is clothing]You suddenly feel a desperate need to use your [K]![otherwise if the player is bursting]You suddenly feel a desperate need to pee![otherwise]Nothing seems to happen. Strange...[end if]";
			otherwise:
				say "The shape of the throne twists and morphs beneath you!  You gasp as you realise it has now transformed into a throne shaped potty!  [line break][variable custom style][if the diaper addiction of the player < 4]What the FUCK is going on in this sick game?![otherwise if the diaper addiction of the player < 10]I don't know what would be worse, using a diaper or using this thing...[otherwise if the diaper addiction of the player < 15]Why would I use this when I have my diaper?[end if][roman type][line break]";
			now the noun is transformed instead;
		otherwise if R is not 4 and R is not 5 and R is not 6 and the noun is transformed and (the bladder of the player > 0 or rectum > 1):
			say "Suddenly, you feel the magic of throne working on your crotch!  You suddenly realise that you desperately need the loo!  [if rectum <= 1]Maybe the throne is counteracting your incontinence?  [end if]";
			say "You let go of the hold on your bladder[if rectum > 1] and sphincter[end if], using the potty for its intended purpose. After a few [if rectum > 1]embarrassing noises coming from your rear end[otherwise]awkward moments listening to yourself tinkle[end if], you're done. The potty makes a weird gurgling sound, and then is suddenly completely empty and clean again!";
			if rectum > 0, reset rectum;
			if incontinence > 0, decrease incontinence by 1;
			now the bladder of the player is 0 instead;
		otherwise if R is 2:
			now the throne is untriggered;
			now the TrapNo of the throne is 0;
			now the turns of the throne is 0;
			now busy is 1;
			say "Two tentacle-like binds wrap around your thighs and hold your legs in place.[paragraph break][if the bimbo of the player < 13][line break][first custom style]Oh shit.[otherwise][line break][second custom style]Ooh, what now?[end if][line break][roman type][line break]A dildo shoots up from a hidden hole in the seat of the throne!  ";
			let A be a random number between 12 and 22;
			if debuginfo > 0, say "[input-style]Throne dildo attack check: d11+11 ([A]) | ([the anal defence of the player].5) anal defence[roman type][line break]";
			if A > the anal defence of the player:
				say "The dildo shoots up from the hole in the seat of the throne!  ";
				if the player is ass protected:
					let K be a random worn top level ass protection clothing;
					if K is rippable:
						say "You gasp as the dildo goes straight through your [if K is zippable]zipper[otherwise][printed name of K][end if]!  Your [printed name of K] [if K is zippable]is now open[otherwise]now has a tear in it,[end if] at the crotch.";
						rip K;
					otherwise:
						say "You gasp as the dildo goes straight through your [printed name of K]!  Your [printed name of K] is destroyed.";
						Destroy K;
				if the player is not ass protected:
					say "You gasp as the dildo goes straight into your [asshole]!  ";
					say "It begins pumping your [asshole] full of some kind of gooey liquid!";
					now the throne is filling asshole;
			otherwise:
				if the player is ass protected:
					let K be a random worn top level ass protection clothing;
					say "Your [printed name of K] block[if the armour of K < 7]s[end if] the dildo which retreats, ready to try again. The [clothing-material of K] is stretched a little by the attack.";
					Damage K;
				otherwise:
					say "The dildo bounces harmlessly off your [HipDesc]. It retreats, ready to try again.";
			if image cutscenes is 1, display figure of throne cutscene 1;
			now the throne is triggered instead;
		otherwise if R is 3:
			if the class of the player is princess and the throne is not expired:
				say "[if the bimbo of the player < 7]You straighten your back and cross your legs to keep anyone from peering up your skirt. A strange aura begins to emanate from your tiara, distorting the bleak grey stone of the walls around you into pure white marble. You hear slow, measured footsteps from outside the room, just as a member of your royal guard enters through the doorway. He bows respectfully.[otherwise if the bimbo of the player < 12]You straighten your back and pull down your skirt to make it a little challenging to see your goods. A strange aura begins to emanate from your tiara, distorting the bleak grey stone of the walls around you into pure white marble. You hear slow, measured footsteps from outside the room, just as a member of your royal guard enters through the doorway. He bows respectfully.[otherwise if there is worn knickers]You straighten your back and splay your legs so anyone passing by can see your [printed name of a random worn knickers]. A strange aura begins to emanate from your tiara, distorting the bleak grey stone of the walls around you into pure white marble. You hear slow, measured footsteps from outside the room, just as a member of your royal guard enters through the doorway. He bows respectfully.[otherwise if the player is male]You straighten your back and splay your legs so anyone passing by can see your [ShortDesc of penis] and [ShortBallsDesc]. A strange aura begins to emanate from your tiara, distorting the bleak grey stone of the walls around you into pure white marble. You hear slow, measured footsteps from outside the room, just as a member of your royal guard enters through the doorway. He bows respectfully.[otherwise]You straighten your back and splay your legs so anyone passing by can see your [vagina]. A strange aura begins to emanate from your tiara, distorting the bleak grey stone of the walls around you into pure white marble. You hear slow, measured footsteps from outside the room, just as a member of your royal guard enters through the doorway. He bows respectfully.";
				say "[first custom style]'[one of]Milady.'[or]Your Highness.'[or]My liege.'[or]Princess.'[or]My lady.'[purely at random][roman type][line break]";
				[say "[bold type]Press enter to continue.[roman type][line break]";
				unless text delay is 999, wait 30000 * text delay ms before continuing;]
				say "You stare down at him haughtily, a word leaving your mouth unbidden.[line break][variable custom style]'Disrobe.'[roman type][line break]";
				say "[if the bimbo of the player < 6]The guard nods and pulls off his clothes, dropping them in a crumpled heap at your feet, as if this was something that had happened many times before. To your further horror, you find yourself pulling down your dress with one hand and grabbing his [manly-penis] with the other. The tiara seems to vibrate, making it even more obvious that it's turned you into a passenger in your own body.[otherwise if the bimbo of the player < 9]The guard nods and pulls off his clothes, dropping them in a crumpled heap at your feet, as if this was something that had happened many times before. To your further...interest, you find yourself pulling down your dress with one hand and grabbing his [manly-penis] with the other. The tiara seems to vibrate, making it even more obvious that it's turned you into a passenger in your own body.[otherwise]The guard nods and pulls off his clothes, dropping them in a crumpled heap at your feet, as if this was something that had happened many times before. To your further delight, you find yourself pulling down your dress with one hand and grabbing his [manly-penis] with the other. The tiara seems to vibrate, making it even more obvious that it's turned you into a passenger in your own body.[end if]";
				[say "[bold type]Press enter to continue.[roman type][line break]";
				unless text delay is 999, wait 30000 * text delay ms before continuing;]
				if the bimbo of the player < 8:
					say "You draw your hand from the base of his shaft all the way to the top, teasing his cockhead with your palm. A fat dollop of pre appears at his opening and dribbles down between your fingers. Every moment of your wrist is accompanied by a lewd squelch, and a hushed grunt of pleasure from your consort. Despite your position of obvious power, [if the player is female]you still find the act of pleasing men sexually to be very degrading,[otherwise]you still find the act of pleasing other men sexually to be very degrading,[end if] especially when they're so much bigger and stronger than you. With muscles like that, the guard could easily overpower you, but since your hand is already wrapped around his [manly-penis] and soaked with his slippery pre-cum, there's no need! Your free hand wanders [if the player is female]between your legs, discovering an absolutely mollifying level of warmth and wetness[otherwise]down to your crotch, discovering a shameful hardness [end if] as the guard's [manly-penis] begins to twitch and throb in your grip. He grabs you by the shoulders. You can feel your mouth opening, as his [manly-penis] closes in on your lips, which disobey your mental plea to shut. His sweaty musk overwhelms your senses as it slides into your mouth, and you begrudgingly suck until his salty [semen] begins spurting down your throat.";
				otherwise if the bimbo of the player < 11:
					say "You draw your hand from the base of his shaft all the way to the top, teasing his cockhead with your palm. A fat dollop of pre appears at his opening and dribbles down between your fingers. Every moment of your wrist is accompanied by a lewd squelch, and a hushed grunt of pleasure from your consort. Despite your position of obvious power, you can't shake the feeling that there's something inherently submissive about pleasuring [if the player is male]another man[otherwise]men[end if], especially when they're so much bigger and stronger than you. With muscles like that, the guard could easily overpower you, but since your hand is already wrapped around his [manly-penis] and soaked with his slippery pre-cum, there's no need! Your cheeks grow hot as the guard's strong hands grasp your shoulders, his [manly-penis] twitching and throbbing in your grip. You can feel your mouth opening, and although you know it's wrong, you don[']t do anything to stop it as the soft, spongy head pushes its way between your lips. Without a second thought you begin to suck, sweaty musk overwhelming your senses as thick, salty [semen] spurts down your throat.";
				otherwise:
					say "You draw your hand from the base of his shaft all the way to the top, teasing his cockhead with your palm. A fat dollop of pre appears at his opening and dribbles down between your fingers. Every moment of your wrist is accompanied by a lewd squelch, and a hushed grunt of pleasure from your consort. Despite your apparent position of power, there's something so *naughty* about willingly pleasuring [if the player is male]other [end if]men, especially when they're so much bigger and stronger than you. With big, [line break][second custom style]sexy[roman type][line break]muscles like that, the guard could easily overpower you, but since your hand is already wrapped around his [manly-penis] and soaked with his slippery pre-cum, there's no need! You smile and lick your lips as the guard's [manly-penis] begins to twitch and throb in your grip. He grabs you by the shoulders, giving you the only hint you need to keep your mouth wide open as his proud cockhead slides in. Without so much as second thought you begin to suck, relishing the musky scent of his sweat in your nostrils as [tasted-semen] spurts down your oh-so-willing throat.";
				[say "[bold type]Press enter to continue.[roman type][line break]";
				unless text delay is 999, wait 30000 * text delay ms before continuing;]
				say "The room abruptly snaps back to the familiar bleak gray of the dungeon you have come to recognize. A translucent pink tentacle withdraws from your mouth, trailing [semen] down your chin as it retreats underneath the throne.[line break][if the bimbo of the player < 8][line break][first custom style]'What just happened?'[otherwise if the bimbo of the player < 12][line break][variable custom style]'That was...really arousing.'[otherwise][line break][second custom style]'That was fun! I want to do that again!'[end if][roman type][line break]";
				now the throne is expired;
				StomachSemenUp 4;
				SexAddictUp 1;
				repeat with M running through royal guards:
					increase the favour of M by a random number between 1 and 2;
				IntUp 4 instead;
			otherwise:
				say "The throne makes you more womanly. You feel your [if the player is a flatchested trap and weight gain fetish is 0]hips expand[otherwise]body expand in all directions[end if]![if the bimbo of the player is 1][one of][line break][first custom style]What the fuck is this game?![roman type][line break][or][stopping][end if]";
				HipUp 1;
				if weight gain fetish is 1 and the flesh volume of belly < 9, increase the flesh volume of belly by 2;
				BustUp 2 instead;
		otherwise if R is 4:
			say "The throne imbues you with extra knowledge!  [if the raw intelligence of the player < 30]You're getting[otherwise]but you can't get any[end if] smarter.";
			IntUp 1 instead;
		otherwise if R is 5:
			say "The throne pumps up your muscles. [if the raw strength of the player < 30]You're getting[otherwise]but you can't get any[end if] stronger!";
			StrengthUp 1 instead;
		otherwise if R is 6:
			say "A shiver of energy runs down your arms. [if the raw dexterity of the player < 30]You're getting[otherwise]but you can't get any[end if] faster!";
			DexUp 1 instead;
		otherwise if R is 7:
			if the largeness of hair > 6:
				say "You hear a metal slice from behind you. You turn around and see that your hair has been cut back down to shoulder length!  You can see the cut strands of your [HairColour] hair on the floor behind the throne.";
				now the raw largeness of hair is 6;
			otherwise if the redness of hair > 0:
				say "Your hair feels pleasant, and you feel somewhat less stiff.";
				HairRedDown 1;
			otherwise if the blondeness of hair > 0:
				say "Your hair feels pleasant, and your mind feels somewhat more clear.";
				HairBlondeDown 1;
			otherwise if the brightness of hair > 0:
				say "Your hair feels pleasant, and you feel somewhat less weak.";
				HairBrightDown 1;
			otherwise:
				dignify 2500;
				say "[if the humiliation of the player < 40000]This makes you feel more dignified[otherwise]Nothing happens[end if].";	
			do nothing instead;	
		otherwise if R is 8:
			dignify 2500;
			say "[if the humiliation of the player < 40000]This makes you feel more dignified[otherwise]Nothing happens[end if]." instead;
	otherwise:
		say "Nothing happens." instead.
Understand "mount [something]" as entering.

Part - Escaping the Throne

[!<CheckPullingTheThrone>+

REQUIRES COMMENTING

+!]
Check pulling the throne:
	if the player is not throne stuck, say "Why would you want to do that?" instead;
	if the throne is not untriggered, say "You've already escaped from the tentacles!" instead;
	if the bimbo of the player > 14:
		now seconds is 6;
		if debuginfo > 0, say "[input-style]Binds rip check: bimbo ([bimbo of the player]) > 14; automatic failure[roman type][line break]";
		say "You're enjoying the sensation in your belly too much to fight against it." instead;
	now seconds is 6;
	let T be the TrapNo of the throne;
	let S be the strength of the player;
	let B be the turns of the throne;
	let X be a random number from 1 to S;
	increase X by B;
	if debuginfo > 0, say "[input-style]Binds rip check: strength d[S + 0] ([X - B]) + turns ([B + 0]) = [X] | (12.5) throne binds toughness[roman type][line break]";
	if X < 13:
		say "You struggle to break the bonds of the tentacles[if B > 3] with increasing urgency[end if], but you can't break free!" instead;
	otherwise:
		say "With an incredible display of strength, you manage to rip the tentacles off your thighs. You can stand up freely now.";
		now the throne is not untriggered instead.

[!<CheckAttackingTheThrone>+

REQUIRES COMMENTING

+!]
Check attacking the throne:
	try pulling the throne instead.

[!<ComputeThroneRule>+

REQUIRES COMMENTING

+!]
A time based rule (this is the compute throne rule):
	if the throne is triggered:
		if the player is throne stuck and the throne is not filling asshole:
			let A be a random number between 12 and 22;
			if debuginfo > 0, say "[input-style]Throne dildo attack check: d11+11 ([A]) | ([the anal defence of the player].5) anal defence[roman type][line break]";
			if A > the anal defence of the player:
				say "The dildo shoots up from the hole in the seat of the throne for another attempt!  ";
				if the player is ass protected:
					let K be a random worn top level ass protection clothing;
					if K is rippable:
						say "You gasp as the dildo goes straight through your [if K is zippable]zipper[otherwise][printed name of K][end if]!  Your [printed name of K] [if K is zippable]is now open[otherwise]now has a tear in it,[end if] at the crotch.";
						rip K;
					otherwise:
						say "You gasp as the dildo goes straight through your [printed name of K]!  Your [printed name of K] is destroyed.";
						destroy K;
				if the player is not ass protected:
					say "You gasp as the dildo goes straight into your [asshole]!  ";
					say "It begins pumping your [asshole] full of some kind of gooey liquid!";
					now the throne is filling asshole;
					now the throne is triggered;
			otherwise:
				if the player is ass protected:
					let K be a random worn top level ass protection clothing;
					say "Your [printed name of K] block[if the armour of K < 7]s[end if] the dildo which retreats, ready to try again. The [clothing-material of K] is stretched a little by the attack.";
					Damage K;
				otherwise:
					say "The dildo bounces harmlessly off your [HipDesc]. It retreats, ready to try again.";
		otherwise if the throne is filling asshole:
			increase the TrapNo of the throne by 1;
			if egg laying fetish is 1:
				Assfill 1;
				if the TrapNo of the throne > 2, assfill 1 medium eggs;
			otherwise:
				assfill 3;
			now the turns of the throne is the TrapNo of the throne;
			if the semen volume of belly >= belly limit - 2:
				say "The throne is keeping your [BellyDesc] completely full. It rumbles worryingly.";
				if the TrapNo of the throne is 8, decrease the TrapNo of the throne by 1;
				if the throne is untriggered:
					say "The binds holding your [ShortDesc of thighs] are finally released. You should probably try and stand up now before you burst!";
					now the throne is not untriggered;
			otherwise:
				if the TrapNo of the throne is 1, say "The fake [manly-penis] in your [asshole] keeps filling you up. You can feel it start to fill your [BellyDesc].";
				if the TrapNo of the throne is 2, say "The liquid keeps coming. You can feel your [BellyDesc] expanding.";
				if the TrapNo of the throne is 3, say "The throne continues to fill up your [asshole]. [if egg laying fetish is 1]You feel something solid enter your ass along with the liquid!  What the hell?!  [end if]Your [BellyDesc] keeps expanding.";
				if the TrapNo of the throne is 4, say "Your [BellyDesc] now feels fully stretched, surely no more can fit in?!  [if egg laying fetish is 1]You can feel more solid objects make their way into your body. [end if]The liquid keeps going...";
				if the TrapNo of the throne is 5, say "Your [BellyDesc] just keeps stretching!";
				if the TrapNo of the throne is 6:
					say "Your [BellyDesc] is still expanding...";
					if image cutscenes is 1 and the throne is untriggered and the largeness of belly > 5, display figure of throne cutscene 2;
				if the TrapNo of the throne is 7:
					while the total fill of belly < 20 and the number of worn slimegirls is 0:
						assfill 1;
					say "You [if pregnancy fetish is 1 and the largeness of belly > 6]now look like you are in the late stages of pregnancy[otherwise if the largeness of belly > 6]feel more full then you realised it was possible to feel[otherwise]feel weird[end if]. [if the largeness of breasts > 10 and extreme proportions fetish is 1]In combination with your [BreastDesc] which have now been squashed above it, you can see nothing but your own swollen flesh. [end if][if the throne is untriggered]The binds holding your [ShortDesc of thighs] are finally released. You should probably try and stand up now before you burst![end if]";
					if image cutscenes is 1:
						if the largeness of belly > 7:
							display figure of throne cutscene 4;
						otherwise if the largeness of belly > 5:
							display figure of throne cutscene 3;
					now the throne is not untriggered;
				if the TrapNo of the throne is 8, decrease the TrapNo of the throne by 1;
		otherwise if the squirt timer of belly > -1: [This is to prevent this coming up several times due to the missed turns caused by ass expulsion.]
			now the throne is not triggered;
			Strengthup 2;
			say "You feel stronger for having survived that ordeal, ";
			if the turns of the throne > 6:
				say "but your head is feeling very light, and your [asshole] is feeling a bit worse for wear!";
				ruin asshole;
				Intdown 1;
				SemenAddictUp 1;
			otherwise:
				if the turns of the throne > 4:
					say "but your head is feeling very light.";
					Intdown 1;
					SemenAddictUp 1;
				otherwise:
					if the turns of the throne > 2:
						say "and you feel a bit more used to the strong smell of [semen].";
						SemenAddictUp 1;
					otherwise:
						say "and you wonder [if the bimbo of the player < 10]in fear [end if]what could have happened if you hadn't managed to escape so quickly!".


To Dethrone The Player:
	let B be the largeness of breasts;
	now seconds is 2;
	let T be the TrapNo of the throne;
	if the player is throne stuck:
		if the throne is not untriggered:
			ThroneDisconnect;
		otherwise:
			if the flat strength of the player < 26:
				say "You struggle to stand but the tentacles holding your thighs won't budge!";
			otherwise:
				say "You struggle to stand, and with inhuman strength you manage to force the tentacles off your legs with just your thigh muscles!  You can now stand up freely.";
				now the throne is not untriggered;
	otherwise if the throne is triggered:
		ThroneDisconnect;

Check getting off the throne:
	Dethrone the player instead.

To ThroneDisconnect:
	now busy is 0;
	now the throne is not filling asshole;
	if a random number between -1 and the TrapNo of the throne < 1:
		say "[bold type]As you get up, the insertable part of the throne breaks off into your [asshole].[roman type]  As it detaches from the throne you feel it shifting in form as the [unless the class of the player is princess]Princess['] [end if]magic leaves it.";
		let P be a random off-stage plentiful plug;
		assign size (the openness of asshole + 2) to P;
		summon P cursed;
		if the openness of asshole < 9, say "You can feel your [asshole] being kept open more than you can take comfortably!";
	otherwise if the largeness of belly > 3:
		display figure of throne cutscene 6;
	if the weight of belly > 18:
		say "After you stand up, you immediately fall over under the weight of your [BellyDesc][if the weight of breasts > 18] and [BreastDesc][end if]. ";
		try kneeling.



Throne ends here.

