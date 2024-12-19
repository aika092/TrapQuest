Elevator Rooms by Rooms begins here.
An elevator-room is a kind of room. An elevator-room has a labyrinth shape called shape. The grid position of an elevator-room is usually <0,0,0>. An elevator-room is usually discovered. An elevator-room can be elevator-discovered. An elevator-room can be elevator-completed.

elevator-buttons is a list of rooms that varies.

Definition: an elevator-room is appropriate: decide yes.

To say FurutisticRoomSentence:
	say "[one of]It kind of looks like a Sci-Fi TV show's idea of what a room might look like on a futuristic space station. Silver metal walls[or]It's another futuristic room[stopping] filled with panels and cabinets, bright lights in the white metal ceiling, and a grey metal floor. ".

To compute elevator use:
	if the number of entries in elevator-buttons is 0:
		repeat with E running through appropriate elevator-rooms:
			add E to elevator-buttons;
		sort elevator-buttons in random order;
		add FinalBoss01 to elevator-buttons;
	allocate 6 seconds;
	let N be 0;
	let LA be a list of numbers;
	let LC be a list of numbers;
	repeat with E running through elevator-buttons:
		increase N by 1;
		if E is elevator-completed, add N to LC;
		otherwise add N to LA;
	let LE be the number of entries in LA;
	say "You enter the elevator, and the doors close behind you. Button[if LE > 1]s[end if] ";
	repeat with X running through LA:
		say "[X][if LE > 2], [otherwise if LE is 2] and [otherwise] [end if]";
		decrease LE by 1;
	now LE is the number of entries in LC;
	say "[if the number of entries in LA > 1]are[otherwise]is[end if] illuminated, while button[if LE > 1]s[end if] ";
	repeat with X running through LC:
		say "[X][if LE > 2], [otherwise if LE is 2] and [otherwise] [end if]";
		decrease LE by 1;
	say "seem[if the number of entries in LC is 1]s[end if] disabled. ";
	say "Which button do you want to press?";
	reset multiple choice questions;
	let N be 0;
	repeat with E running through elevator-buttons:
		increase N by 1;
		if E is not elevator-completed, set numerical response N to the substituted form of "[if E is elevator-discovered][printed name of E][otherwise]Unknown floor[end if]";
		set numerical response 0 to "Stay on this floor";
	now player-numerical-response is -1;
	while player-numerical-response is -1:
		compute multiple choice question;
		if player-numerical-response is 0:
			say "You press button 0, and the elevator door re-opens.";
		otherwise:
			let E be entry player-numerical-response in elevator-buttons;
			if E is elevator-completed:
				say "This button doesn't seem to be working.";
				now player-numerical-response is 0;
			otherwise:
				say "You press the button, and feel the elevator begin to descend.";
				now the charge of security interface is 300;
				compute elevator entrance of E;
				now player-numerical-response is 0. [Just a failsafe, as it could change inside the compute elevator entrance function]

To compute elevator return:
	now playerRegion is hotel;
	temporaryYesNoBackgroundReset;
	now the player is in Hotel30;
	let all-completed be true;
	repeat with E running through elevator-buttons:
		if E is not elevator-completed, now all-completed is false;
	if all-completed is true, now FinalBoss01 is not elevator-completed.


FinalBoss01 is an elevator-room. FinalBoss01 is elevator-completed. FinalBoss01 is bossed. The grid position of FinalBoss01 is <20,1,1>.  The shape of FinalBoss01 is L20/0-0-0-0-0-0. The printed name of FinalBoss01 is "Capsule Chamber". "This is an exact replica of the room that you started in, complete with the capsule that you were put into. You can see that the capsule has a giant STOP button on one side. It also has a number on a screen above it, which you can easily read by examining the button more closely.".

Definition: FinalBoss01 is appropriate: decide no.

To compute elevator entrance of (ER - FinalBoss01):
	now the player is in FinalBoss01.

Check going up when the player is in an elevator-room:
	if the player is immobile or the player is in danger, say "You're a bit busy to be able to safely get back in the elevator right now!" instead;
	say "Return to the hotel?";
	if the player is consenting:
		allocate 6 seconds;
		say "You return to the elevator. The doors close, and you feel yourself going upwards. A moment later, and you are back in the hotel.";
		compute elevator return instead;
	otherwise:
		say "Action cancelled." instead.

SurgeryRoom01 is an elevator-room. The grid position of SurgeryRoom01 is <10,2,2>. The printed name of SurgeryRoom01 is "Surgery Room".

Figure of Surgery Comfort is the file "Special/Cutscene/cutscene-elevator-surgery1.jpg".
Figure of Surgery Injection Bored is the file "Special/Cutscene/cutscene-elevator-surgery2a.jpg".
Figure of Surgery Injection Revealed is the file "Special/Cutscene/cutscene-elevator-surgery2b.jpg".
Figure of Surgery Injection Sensed is the file "Special/Cutscene/cutscene-elevator-surgery2c.jpg".

To compute elevator entrance of (ER - SurgeryRoom01):
	now temporaryYesNoResetNeeded is false;
	now the player is in SurgeryRoom01;
	say "As the elevator door opens, you see a futuristic-looking room. [FurutisticRoomSentence]But most notably, in the middle of the room, is a large metal cuboid structure that looks like you could climb inside the top. There are two buttons on the top - a green one with a sign that says 'TOGGLE COMFORT FEATURES', and a red one with a sign that says 'ABORT PROCEDURE'.[paragraph break]A robotic voice speaks to you from concealed speakers.[line break][first custom style]'WELCOME TO THE SURGERY ROOM. PLEASE REMOVE ALL CLOTHING PLACE YOUR LEGS AND TORSO IN THE SURGERY MACHINE TO RECEIVE A FREE UPGRADE. THE UPGRADE WOULD BE PAINFUL AND DISTRESSING TO WITNESS, SO PLEASE ENSURE THAT THE SENSATION BLOCKING COMFORT FEATURES REMAIN ENABLED UNTIL THE PROCEDURE IS OVER.'[line break][variable custom style]So I get in the machine and then it does something to me? And I don't get to SEE, or even FEEL what it's doing until the procedure is over? It's PROBABLY beneficial, but knowing this game, there's a chance it's actually a trap...[roman type][line break]";
	let able-to-strip-naked be true;
	repeat with C running through worn clothing:
		if C is nudism-disabling or (diaper quest is 0 and C is chastity bond):
			if able-to-strip-naked is true and C is usually unautoremovable, now able-to-strip-naked is false;
	if able-to-strip-naked is false, say "It doesn't really matter anyway right now, as you can't remove all your clothes. You'll have to return another time.";
	reset multiple choice questions;
	set numerical response 1 to "Leave the machine alone";
	if able-to-strip-naked is true, set numerical response 2 to "Get in the machine";
	let E be a random worn metal equippable;
	if E is nothing, now E is a random carried metal equippable;
	if E is a thing, set numerical response 3 to "Damage the macine with [NameDesc of E]";
	compute multiple choice question;
	if player-numerical-response is 2:
		now the stance of the player is 1;
		say "You remove all your clothes, and get in the machine.";
		[repeat with C running through worn clothing:
			if C is nudism-disabling or C is penetrating a fuckhole or (diaper quest is 0 and C is chastity bond):
				now C is in Hotel30;
				dislodge C;]
		let surgery-turns be 0;
		let trap-surgery be false;
		let N be a random number between 1 and 6;
		if the player is getting unlucky:
			now trap-surgery is true;
			now N is 6;
		say "The machine's lid closes around your body, underneath your armpits, leaving your arms free but everything from your chest down obscured by the solid metal box.[line break][first custom style]'ENABLING SENSATION BLOCKING TECHNOLOGY. PLEASE NOTE, SENSATION BLOCKING TECHNOLOGY MUST BE DISABLED BEFORE THE PRODECURE CAN BE ABORTED.'[roman type][line break]A moment later, you lose all sensation below your armpits.[line break][first custom style]'PROCEDURE ENGAGED, PLEASE WAIT, THIS SHOULD ONLY TAKE A FEW MOMENTS...'[roman type][line break]And so you wait there, bored, with no way to tell exactly what's happening down below, but having to trust the fates that it's beneficial.[paragraph break]";
		while surgery-turns < N:
			increase surgery-turns by 1;
			say "What feels like about a minute passes.[line break][variable custom style][one of]How long is [']a few moments['], exactly?[or]I wish I knew how long this was going to take.[or]I've got to trust that the machine has my best interests at heart...[or]Are we not done yet?![or]This is taking too long, right?![or]There's just no way it should be taking this long! I've been tricked, haven't I?![cycling][roman type][line break]";
			now temporaryYesNoBackground is Figure of Surgery Comfort;
			reset multiple choice questions;
			set numerical response 1 to "Keep waiting...";
			set numerical response 2 to "Turn the [']comfort features['] off and find out what's happening to your body.";
			compute multiple choice question;
			if player-numerical-response is 2:
				say "You slam the green button.[line break][first custom style]'COMFORT FEATURES DISABLED.'[roman type][line break]A panel at the front of the box slides away, revealing your body inside, and in the same moment, your sensation returns.";
				if trap-surgery is false: [stat boosts]
					now temporaryYesNoBackground is Figure of Surgery Injection Sensed;
					say "You screech to high hell as multiple extreme stabbing pains in your limbs overwhelm you.";
					UnflinchingPainUp 80;
					say "It's too much! You can't take it for more than a split second!";
				otherwise: [body mod]
					now temporaryYesNoBackground is Figure of Surgery Trapped Sensed;
					let F be asshole;
					say "[variable custom style]'AIEEEEEEOOOOOAAAAAAAAAAAAAAAAAAAAAAAH!'[roman type][line break]";
					if diaper quest is 1:
						breasts orgasm shamefully;
					otherwise if the player is possessing a vagina:
						vaginally orgasm shamefully;
						now F is vagina;
					otherwise:
						anally orgasm shamefully;
					say "Your body explodes with the sensation of several awful things happening to it. [bold type]It was a trap after all.[roman type][line break]";
				now N is -1;
		if N >= 0, say "[first custom style]'THE PROCEDURE WILL END IN 10... 9...'[roman type][line break]As the robotic voice announces the end of the procedure, a panel at the front of the box slides away, revealing your body inside.";
		if trap-surgery is false: [stat boosts]
			say "There was no trap, and now you understand why the machine [if N is 0]is[otherwise]was[end if] blocking your sensations. The machine is operating four thick needles, which are injecting some kind of empowering serum directly into your muscles.";
			if N is -1:
				compute single choice question "ABORT PROCEDURE!!!";
				say "You slam the ABORT PROCEDURE button as quickly as you can, and the needles retreat.";
			otherwise:
				now temporaryYesNoBackground is Figure of Surgery Injection Bored;
				compute single choice question "Wow!";
				now temporaryYesNoBackground is Figure of Surgery Injection Revealed;
				say "When the needles have pulled away, your sensation returns. It stings a little, but nowhere near as much as it would have hurt if you'd been able to feel it while those needles were inside your body.";
			say "You feel [if surgery-turns >= 6]IMMENSELY [otherwise if surgery-turns is 5]HUGELY [otherwise if surgery-turns is 4]much [otherwise if surgery-turns is 3]significantly [otherwise if surgery-turns is 1]a bit [end if]stronger and faster!";
			StrengthUp surgery-turns;
			DexUp surgery-turns;
		otherwise:
			if diaper quest is 0:
				if the player is not a flatchested trap:
					say "Your [BreastDesc] have been injected with needles that have made them [if surgery-turns is 1]a bit[otherwise if surgery-turns is 2]significantly[otherwise if surgery-turns is 3]a lot[otherwise if surgery-turns is 4]hugely[otherwise if surgery-turns is 5]massively[otherwise]insanely[end if] more erogenous[if the player is not top heavy] and much much larger[end if].";
					BreastsSensitivityUp surgery-turns;
					if the player is not top heavy, BustImplantsUp surgery-turns;
				if the number of worn nipple piercings is 0:
					say "Two robotic arms are just finishing attaching a [MediumDesc of dick-nipple-piercings] to your freshly-pierced nipples.";
					if N is -1, UnflinchingPainUp 20;
					summon dick-nipple-piercings uncursed;
				let F be asshole;
				if the player is possessing a vagina, now F is vagina;
				if F is vagina:
					say "A needle is injecting some kind of special serum directly into your clitoris, making it permanently [if surgery-turns > 2]much [end if]more sensitive, and desperately throbbing for attention.";
					increase the raw sensitivity of vagina by (surgery-turns + 1) / 2;
				otherwise if the player is possessing a penis and the size of penis > min penis size:
					say "A needle is injecting some kind of special serum directly into your [player-penis], making it permanently smaller.";
					PenisDown (surgery-turns + 1) / 2;
				say "A huge, thick studded dildo is brutally punching in and out of your [variable F]. It is now sore, gaped and is leaving you reeling with the shockwave of the [if surgery-turns > 1][surgery-turns - 1][end if][a random number between 4 and 9] orgasms that your body has just endured. ";
				increase the soreness of F by surgery-turns;
				if the soreness of F > 10, now the soreness of F is 10;
				gape F times surgery-turns;
			otherwise:
				if diaper messing >= 3:
					say "One needle is injecting a serum directly into your bladder, and another is doing the same to your rectum.";
					RectumIncontinenceUp surgery-turns;
				otherwise:
					say "Two needles are injecting a serum directly into your bladder.";
				BladderIncontinenceUp surgery-turns;
				if enema fetish is 1:
					AssFill (belly limit - the total squirtable fill of belly) water;
					say "A tube has been inserted into your [asshole], and a liquid labelled as [']PLEASURE ENHANCEMENT GEL['] has been pumped inside, making your belly balloon and bloat outwards. It has made your body much more sensitive than normal... Which has meant that the vibrating wands on your nipples have been bringing your body to several orgasms per minute!";
				otherwise:
					say "[']PLEASURE ENHANCEMENT GEL['] has been applied to your skin, making your body much more sensitive than normal... Which has meant that the vibrating wands on your nipples have been bringing your body to several orgasms per minute!";
				say "And finally, it's impossible to ignore the sight of glue being squirted on the inside of a giant waddle diaper that is being pulled up your legs and pressed against your crotch!";
				repeat with C running through worn clothing:
					if C is nudism-disabling or C is penetrating a fuckhole:
						now C is in Hotel30;
						dislodge C;
				summon pink-waddle-diaper uncursed;
				gluify pink-waddle-diaper;
				force immediate clothing-focus redraw;
			if N is -1:
				compute single choice question "ABORT PROCEDURE!!!";
				say "You slam the ABORT PROCEDURE button as quickly as you can, and the robotic arms retreat.";
			otherwise:
				now temporaryYesNoBackground is Figure of Surgery Trapped Bored;
				compute single choice question "...What the FUCK?!";
				now temporaryYesNoBackground is Figure of Surgery Trapped Revealed;
				say "[variable custom style]What has this machine done to me?!?!?! Oh my god!!![roman type][line break]";
				compute single choice question "Experience countless orgasms in a split second";
				now temporaryYesNoBackground is Figure of Surgery Trapped Sensed;
				say "[variable custom style]HNNNNNNNNNNNNNNNNG COMINGCOMINGCOMINGCOMING[roman type][line break]Your mind goes blank for a moment as an impossibly intense euphoric experience washes over you.";
		say "The machine releases your torso, allowing you to, legs shaking, waddle towards the elevator.[line break][first custom style]'WARNING: THIS ROOM WILL NOW FILL WITH STEAM AS PART OF ITS STERILIZATION CYCLE. WOULD ALL ORGANIC MATTER THAT WISHES TO REMAIN ORGANIC MATTER PLEASE IMMEDIATELY LEAVE VIA THE ELEVATOR PROVIDED.'[line break][variable custom style]Crap, I'm being kicked out right away![roman type][line break]";
		now SurgeryRoom01 is elevator-completed;
	otherwise if player-numerical-response is 3:
		say "You noisly slam large dents into the machine until you hear it power down.[line break][first custom style]'CRITICAL ERROR... ROOM OFFLINE.'[line break][variable custom style]That should stop that darned elevator from trying to suggest I come back here![roman type][line break]";
		now SurgeryRoom01 is elevator-completed;
	otherwise:
		if able-to-strip-naked is true, say "[variable custom style]It feels like too big a risk to take.[roman type][line break]";
	compute single choice question "Return to the hotel";
	compute elevator return.


BellyRoom01 is an elevator-room. The grid position of BellyRoom01 is <10,3,3>. The printed name of BellyRoom01 is "Futuristic Room".

Definition: BellyRoom01 is appropriate:
	if enema fetish is 0, decide no;
	if diaper quest is 0 and the player is not a december 2023 top donator, decide no;
	if diaper quest is 1 and the player is not a december 2023 diaper donator, decide no;
	if pregnancy fetish is 1 and the player is possessing a vagina, decide yes;
	if egg laying fetish is 1 and the pregnancy of the player is not 1 and the pregnancy of the player is not 2, decide yes;
	if the player is able to expel, decide yes;
	decide no.

Figure of Belly Room is the file "Special/Cutscene/cutscene-elevator-belly1.jpg".
Figure of Belly Room Expel is the file "Special/Cutscene/cutscene-elevator-belly2.jpg".

belly-room-gloryhole is a thing. belly-room-gloryhole is in BellyRoom01. belly-room-gloryhole is not portable. The printed name of belly-room-gloryhole is "[TQlink of item described]gloryhole[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of belly-room-gloryhole is "gl". Understand "glory", "hole", "gloryhole" as belly-room-gloryhole.

Definition: belly-room-gloryhole is immune to change: decide yes.

belly-room-gloryhole can be gloryhole-wrapped.
belly-room-gloryhole has a number called cocks-appeared.
belly-room-gloryhole has a number called gloryhole-state.
[0: unoccupied
below 0: countdown to piss
above 0: countdown to ejaculation]

Figure of belly room gloryhole is the file "Env/Hotel/gloryhole1.jpg".
Figure of belly room gloryhole penis is the file "Env/Hotel/gloryhole2.jpg".

To decide which figure-name is the examine-image of (G - belly-room-gloryhole):
	if the gloryhole-state of G is not 0, decide on figure of belly room gloryhole penis;
	decide on figure of belly room gloryhole.

To say ExamineDesc of (G - belly-room-gloryhole):
	say "A hole in the wall at crotch height[if the gloryhole-state of G < 0]. A large [manly-penis] sits waiting in the hole[otherwise if the gloryhole-state of G > 0]. The head of a large [manly-penis] has been pushed through the hole, and from its movement, it seems likely that its owner is currently masturbating the bottom half[end if].".

Definition: belly-room-gloryhole is live: decide yes.
To say FuckerDesc of (T - belly-room-gloryhole):
	say "the anonymous [man of male-m]".
To say BigFuckerDesc of (T - belly-room-gloryhole):
	say "The anonymous [man of male-m]".

To construct normal buttons for (T - belly-room-gloryhole):
	if T is penetrating face:
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of OralButton;
			now the ButtonCommand entry is "submit";
			now the ButtonColour entry is lightModeFullGreen;
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of ResistButton;
			now the ButtonCommand entry is "resist";
			now the ButtonColour entry is lightModeFullGreen;
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of WaitButton;
			now the ButtonCommand entry is "wait";
			now the ButtonColour entry is lightModeFullGreen;
	otherwise:
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of SlapButton;
			now the ButtonCommand entry is "slap [text-shortcut of T]";
			now the ButtonColour entry is lightModeFullGreen;
			if the player is not able to use their hands, now the ButtonColour entry is lightModeFullRed; [turn red - player can't use their hands]
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of OralButton;
			now the ButtonCommand entry is "suck [text-shortcut of T]";
			now the ButtonColour entry is lightModeFullGreen;
			if face is actually occupied, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player needs empty mouth]
		repeat with C running through held condom-providing things:
			if ButtonTableFull is 0:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is the examine-image of C;
				now the ButtonCommand entry is "use [text-shortcut of C] on [text-shortcut of T]";
				now the ButtonColour entry is lightModeFullGreen;
				if the player is not able to use manual dexterity, now the ButtonColour entry is lightModeFullRed; [turn red - player can't use their hands]

Check drinking belly-room-gloryhole:
	if the gloryhole-state of the noun is 0, say "There's nothing there." instead;
	if face is actually occupied, say "That's difficult to do when there's already [NameDesc of random thing penetrating face] in your mouth." instead;
	if the player is upright, say "You would have to be on your knees." instead;
	allocate 6 seconds;
	say "You open wide and accept the head of [FuckerDesc of belly-room-gloryhole][']s [manly-penis] into your mouth.";
	now belly-room-gloryhole is penetrating face;
	do nothing instead.

Check inserting belly-room-gloryhole into face:
	try drinking belly-room-gloryhole instead.

Check resisting when belly-room-gloryhole is penetrating face:
	allocate 1 seconds;
	say "You pull away from [FuckerDesc of belly-room-gloryhole][']s [manly-penis].";
	dislodge belly-room-gloryhole instead.

Check submitting when belly-room-gloryhole is penetrating face:
	allocate 6 seconds;
	if the gloryhole-state of belly-room-gloryhole > 0:
		say "You submissively fellate [FuckerDesc of belly-room-gloryhole][']s [manly-penis]. [moderateHumiliateReflect]";
		now the gloryhole-state of belly-room-gloryhole is 1; [ejaculation time]
	otherwise:
		say "You obediently wait for what you know is soon coming. [slightHumiliateReflect]";
		now the gloryhole-state of belly-room-gloryhole is -1; [piss time]
	do nothing instead.

Check decanting a condom-providing thing with belly-room-gloryhole:
	if the gloryhole-state of belly-room-gloryhole is 0, say "There's no [manly-penis] there at the moment." instead;
	if belly-room-gloryhole is gloryhole-wrapped, say "You've already done that." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	allocate 6 seconds;
	say "[one of][variable custom style]I've got a good idea.[roman type][line break][or][stopping]You carefully apply a condom to the [manly-penis].";
	now belly-room-gloryhole is gloryhole-wrapped;
	do nothing instead.

Check orilubing something with belly-room-gloryhole:
	if the noun is a condom-providing thing, try decanting the noun with the second noun instead.

Check slapping belly-room-gloryhole:
	if the gloryhole-state of belly-room-gloryhole is 0, say "There's no [manly-penis] there at the moment." instead;
	if the player is not able to manually use their hands, do nothing instead;
	allocate 4 seconds;
	say "[one of][variable custom style]Fuck off.[roman type][line break][or][stopping]You bash the	[manly-penis] with the palm of your hand, trying to inflict as much pain as possible.[line break][first custom style]'[one of]OW[or]Yeouch[or]Aaah[cycling]!'[roman type][line break]You hear the [man of male-m] [one of]shout[or]yell[cycling].";
	if the player is getting lucky:
		say "[BigNameDesc of belly-room-gloryhole] quickly pulls out of the hole. [GotLuckyFlav]";
		now belly-room-gloryhole is not gloryhole-wrapped;
		now the gloryhole-state of belly-room-gloryhole is 0;
	otherwise if the player is getting unlucky:
		if the gloryhole-state of belly-room-gloryhole > 0:
			say "Unfortunately, it turns out that this [NameDesc of belly-room-gloryhole] is a masochist. [GotUnluckyFlav]";
			compute gloryhole orgasm of belly-room-gloryhole;
		otherwise:
			say "Unfortunately, it has the wrong effect, and causes the poor [NameDesc of belly-room-gloryhole] to wet [himself of male-m]. [GotUnluckyFlav]";
			compute gloryhole urination of belly-room-gloryhole;
	otherwise:
		say "But [he of male-m] doesn't pull out! Yet...";
	do nothing instead.


A time based rule (this is the belly room gloryhole rule):
	if the player is in BellyRoom01 and belly-room-gloryhole is in BellyRoom01:
		if the gloryhole-state of belly-room-gloryhole is 0:
			dislodge belly-room-gloryhole;
			increase the cocks-appeared of belly-room-gloryhole by 1;
			if the cocks-appeared of belly-room-gloryhole is 2 or the cocks-appeared of belly-room-gloryhole is 6 or the cocks-appeared of belly-room-gloryhole is 11:
				if a random number between 0 and watersports fetish is 1, now the gloryhole-state of belly-room-gloryhole is a random number between -25 and -7;
				otherwise now the gloryhole-state of belly-room-gloryhole is a random number between 7 and 25;
				say "[bold type]You suddenly notice that a large [manly-penis] has been pushed through the hole in the wall to your side[if the gloryhole-state of belly-room-gloryhole > 0], and its owner appears to be masturbating it[end if].[one of][line break][variable custom style]Wait what?! If it spills its load on the ground, is that going to get ME punished?![or][stopping][roman type][line break]";
		if the gloryhole-state of belly-room-gloryhole > 0:
			decrease the gloryhole-state of belly-room-gloryhole by time-seconds;
			if the gloryhole-state of belly-room-gloryhole <= 0:
				compute gloryhole orgasm of belly-room-gloryhole;
			otherwise:
				say "[BigFuckerDesc of belly-room-gloryhole] continues to masturbate.";
		otherwise if the gloryhole-state of belly-room-gloryhole < 0:
			increase the gloryhole-state of belly-room-gloryhole by time-seconds;
			if the gloryhole-state of belly-room-gloryhole >= 0:
				compute gloryhole urination of belly-room-gloryhole;
			otherwise:
				say "[BigFuckerDesc of belly-room-gloryhole] is whistling![one of][line break][variable custom style]Just what exactly is [he of male-m] planning?![roman type][line break][or][stopping]";
		if the total squirtable fill of belly is 0:
			say "[first custom style]'PLEASE WAIT WHILE YOU ARE REFILLED.'[roman type][line break]In the next moment, you can feel a sudden downward pressure in your rectum. You look down to discover that your belly has once again been filled to the brim with a mystery liquid!";
			compute maximum belly liquid fill;
			now the squirt timer of belly is a random number between 6 and 30;
	otherwise:
		if belly-room-gloryhole is penetrating a body part, dislodge belly-room-gloryhole.

To compute gloryhole orgasm of (M - belly-room-gloryhole):
	now the gloryhole-state of M is 0;
	say "[BigFuckerDesc of M] orgasms!";
	if M is gloryhole-wrapped:
		say "You watch as [his of male-m] [semen] fills the condom, and then [FuckerDesc of M] pulls out of the hole. ";
		now M is not gloryhole-wrapped;
		if the player is getting unlucky:
			say "As [he of male-m] does, [he of male-m] pushes the condom off [his of M] [manly-penis]. It quickly falls to the ground with a *splat*, where more than half the [semen] immediately spills out onto the ground. [GotUnluckyFlav]";
			SemenPuddleUp 2;
		otherwise:
			let BL be a random off-stage bag lunch;
			if BL is bag lunch:
				say "Afterwards, a [BL] is pushed through the hole. It lands on the ground with a noisy splat. ";
				if the player is getting unlucky:
					say "Oh no - as it landed on the ground, it burst open! More than half the [semen] immediately spills out onto the ground. [GotUnluckyFlav]";
					SemenPuddleUp 2;
				otherwise:
					say "Thankfully, it didn't burst, and so all the [semen] is still contained within.";
					now BL is in the location of the player;
	otherwise if M is penetrating face:
		say "[big his of male-m] [semen] fills your mouth.";
		FaceFill semen by 3;
		suggest swallowing;
		say "[BigFuckerDesc of M] pulls out of the hole.";
	otherwise:
		say "[big his of male-m] ejaculates onto the floor.";
		SemenPuddleUp 3;
		say "[BigFuckerDesc of M] pulls out of the hole.";
	dislodge M.

To compute gloryhole urination of (M - belly-room-gloryhole):
	now the gloryhole-state of M is 0;
	say "[BigFuckerDesc of M] starts urinating!";
	if M is gloryhole-wrapped:
		say "You watch as the condom fills... And fills... And fills... ";
		now M is not gloryhole-wrapped;
		if the player is getting unlucky:
			say "The condom bursts! [big his of male-m] [urine] flies everywhere, getting all over the floor. [GotUnluckyFlav]";
			UrinePuddleUp 8;
		otherwise:
			say "And then [he of male-m][']s finished! But now [he of male-m] is pulling out, and it's going to cause the condom to rip and burst!";
			compute single choice question "Quickly unsheath the condom and tie the end";
			if the player is getting unlucky:
				say "As you roll it off [NameDesc of M][']s [manly-penis], you try to pinch and tie the end. But you slip, and nearly all the [urine] quickly bursts out and onto the ground! [GotUnluckyFlav]";
				UrinePuddleUp 8;
			otherwise:
				say "You quickly manage to pinch and tie the end as you roll it off [NameDesc of M][']s [manly-penis]. All the [urine] is still contained within.";
				now water-bomb is carried by the player;
				now the cum-known of water-bomb is 2;
				now water-bomb is sure;
				now water-bomb is bland;
	otherwise if M is penetrating face:
		say "[big his of male-m] [urine] fills your mouth.";
		FaceFill urine by 8;
		suggest swallowing;
		say "[BigFuckerDesc of M] pulls out of the hole.";
	otherwise:
		say "[big his of male-m][']s [urine] flows straight onto the floor.";
		UrinePuddleUp 8;
		say "[BigFuckerDesc of M] pulls out of the hole.";
	dislodge M.

To compute elevator entrance of (ER - BellyRoom01):
	if diaper quest is 1, destroy belly-room-gloryhole;
	now BellyRoom01 is elevator-completed;
	say "The elevator door opens, and you step out into a futuristic-looking room. [FurutisticRoomSentence][paragraph break]As you begin to step into the room, a robotic voice speaks to you from concealed speakers.";
	let room-version be 0; [standard oromashi gameplay]
	if pregnancy fetish is 1 and the player is possessing a vagina and (the pregnancy of the player > 0 or a random number between 1 and 3 is 1):
		now room-version is 1; [pregnancy room]
	otherwise if egg laying fetish is 1 and the pregnancy of the player is not 1 and the pregnancy of the player is not 2 and a random number between 1 and 3 is 1:
		now room-version is 2; [egg laying room]
	otherwise if the player is not able to expel: [needs to be pregnancy or egg]
		if pregnancy fetish is 1 and the player is possessing a vagina and the pregnancy of the player <= 2, now room-version is 1;
		otherwise now room-version is 2;
	if room-version > 0:
		now the player is in BellyRoom01;
		if room-version is 1:
			if the pregnancy of the player > 0:
				say "[first custom style]'WELCOME TO THE PREGNANCY ACCELERATION ROOM. YOUR PREGNANCY IS NOW COMPLETE.'[roman type][paragraph break][variable custom style]What the hell does it mean by that?[roman type][line break]But all it takes is looking down to discover the answer. Your belly has exploded outwards, and you suddenly feel very, very, late term pregnant.";
				if the womb volume of vagina < 30:
					now the womb volume of vagina is 30;
					if inhuman pregnancy >= 3 and the father is not the throne: [Super-pregnancies are go]
						if the father is a minotaur or the father is vines or the father is lake monster or the father is clothing or the father is hellhound or the father is demon lord or the father is facehugger or the father is elder altar or the father is djinn or the father is tentacle monster or the father is centaur, now the womb volume of vagina is 31;
				if the womb volume of vagina > 30, now the womb volume of vagina is 50;
			otherwise:
				say "[first custom style]'WELCOME TO THE CHILDBIRTH EXPERIENCE ROOM. YOUR PREGNANCY IS NOW COMPLETE. PLEASE ENJOY YOUR BIRTHING EXPERIENCE.'[roman type][paragraph break][variable custom style]What the hell does it mean by that?[roman type][line break]But all it takes is looking down to discover the answer. Your belly has exploded outwards, and you suddenly feel very, very, late term pregnant.";
				now the womb volume of vagina is 30;
				now the pregnancy of the player is 1;
				if the father is the throne:
					now the father is the new father;
					if the father is the throne, now the father is a random creampie pole trap;
				check goddess eligibility;
		otherwise:
			say "[first custom style]'WELCOME TO THE INCUBATION EXPERIENCE ROOM. YOUR INCUBATION IS NOW IN PROGRESS.'[roman type][paragraph break][variable custom style]What the hell does it mean by that?[roman type][line break]But all it takes is looking down to discover the answer. Your belly has exploded outwards, and you suddenly feel very, very, late term pregnant. But something tells you that it's not a baby inside there, but a whole load of eggs.";
			if the player is possessing a vagina:
				while the total egg volume of vagina < 25:
					wombfill 1 small eggs;
					if a random number between 1 and 2 is 1, add the throne to the small-egg-origins of vagina; [slimeball]
					otherwise add crotch-hugger to the small-egg-origins of vagina; [slimeball]
					wombfill 1 medium eggs;
					if mythical creatures fetish is 1 and a random number between 1 and 2 is 1:
						add buzzing giant wasp to the medium-egg-origins of vagina; [wasp]
					otherwise if a random number between 1 and 3 is 1:
						add carrot daggers to the medium-egg-origins of vagina; [bunny]
					[otherwise it will be tentacle]
			otherwise:
				while the total egg fill of belly <= (belly limit - 3):
					assfill 1 small eggs;
					if a random number between 1 and 2 is 1, add the throne to the small-egg-origins of belly; [slimeball]
					otherwise add crotch-hugger to the small-egg-origins of belly; [slimeball]
					assfill 1 medium eggs;
					if mythical creatures fetish is 1 and a random number between 1 and 2 is 1:
						add buzzing giant wasp to the medium-egg-origins of belly; [wasp]
					otherwise if a random number between 1 and 3 is 1:
						add carrot daggers to the medium-egg-origins of belly; [bunny]
					[otherwise it will be tentacle]
		cutshow Figure of Belly Room;
		say "[variable custom style]What the actual fuck just happened?! This can't be real![roman type][paragraph break]You are given no time to even process this insanity before the machine speaks again.[line break][first custom style]'WARNING: THIS ROOM WILL NOW FILL WITH STEAM AS PART OF ITS STERILIZATION CYCLE. WOULD ALL ORGANIC MATTER THAT WISHES TO REMAIN ORGANIC MATTER PLEASE IMMEDIATELY LEAVE VIA THE ELEVATOR PROVIDED.'[line break][variable custom style]Crap, I'm being kicked out right away![roman type][line break]";
		compute single choice question "Return to the hotel";
		compute elevator return;
	otherwise:
		compute maximum belly liquid fill;
		now the squirt timer of belly is a random number between 6 and 30;
		if the number of on-stage pedestals <= 1, lock pedestals; [this should mean we haven't set up the pedestals yet, probably because the mansion isn't placed yet]
		let LC be a list of things;
		let P be a random pedestal in BellyRoom01;
		if P is a pedestal:
			blandify and reveal skirted-bondage-corset;
			now skirted-bondage-corset is autobinding;
			now skirted-bondage-corset is in P;
		let LS be a random large sack in Holding Pen;
		if LS is a thing, add LS to LC;
		let LS be a random wooden crate in Holding Pen;
		if LS is a thing, add LS to LC;
		let LS be a random metal crate in Holding Pen;
		if LS is a thing, add LS to LC;
		let LS be a random filing cabinet in Holding Pen;
		if LS is a thing, add LS to LC;
		let LS be a random antique trunk in Holding Pen;
		if LS is a thing, add LS to LC;
		let LS be a random safe in Holding Pen;
		if LS is a thing, add LS to LC;
		let LS be a random treasure chest in Holding Pen;
		if LS is a thing, add LS to LC;
		sort LC in random order;
		let RT be a random number between 1 and 4;
		repeat with C running through LC:
			now C is closed;
			now C is in BellyRoom01;
			let T be a random off-stage prank trap;
			if T is a thing:
				now T is in BellyRoom01;
				now T is click;
				now the click-trigger of T is C;
				if RT is 1:
					now T is jack-in-the-box;
				otherwise if RT is 2:
					now T is electric-shock;
				otherwise if RT is 3:
					now T is bukkake-hose;
				otherwise:
					now T is boxing-glove;
			increase RT by 1;
			if RT is 5, now RT is 1;
		let BP be a random off-stage fetish appropriate basic plug;
		if BP is a thing:
			blandify and reveal BP;
			now BP is in BellyRoom01;
			gluify BP;
		now RT is 1;
		sort LC in random order;
		repeat with C running through LC:
			now C is emptied; [prevents it from spawning more items]
			if RT < 4:
				let J be a random off-stage ring;
				if J is a thing:
					if RT is 1:
						now J is solid gold;
					otherwise if RT is 2:
						now J is pure diamond;
					otherwise:
						now J is pink diamond;
					set shortcut of J;
					now J is in C;
			otherwise:
				let E be a random off-stage electric fan;
				if E is a thing, now E is in C;
			increase RT by 1;
		now the player is in BellyRoom01;
		say "[first custom style]'WELCOME TO THE DESPERATION EXPERIENCE ROOM. PLEASE OPEN AS MANY CONTAINERS AS YOU LIKE. BUT PLEASE BE AWARE THAT ANY MOISTURE DETECTED ON THE FLOOR WILL TRIGGER THE FLUID RECOVERY SYSTEM.'[roman type][paragraph break][variable custom style]What the hell does it mean by that? And what does it mean by [']desperation[']?[roman type][line break]But in the next moment, you can feel a sudden downward pressure in your rectum. All it takes is looking down to discover that your belly has exploded outwards, and you can tell that you've been filled to the brim with a mystery liquid.";
		mapcutshow Figure of Belly Room for belly.

To compute maximum belly liquid fill:
	let AF be belly limit - the total fill of belly;
	let LQL be a list of liquid-objects;
	if diaper quest is 1, add water to LQL;
	otherwise add semen to LQL;
	if lactation fetish is 1, add milk to LQL;
	if watersports fetish is 1, add urine to LQL;
	sort LQL in random order;
	let LQ be entry 1 in LQL;
	AssFill AF with LQ.

To SemenPuddleUp (X - a number) in (R - BellyRoom01):
	if the player is in R:
		cutshow Figure of Belly Room Expel;
		say "A klaxon sounds, followed by a loud whoosing sound as the [semen] is sucked down into a drainage system. ";
		if (a2m fetish > 1 or currently-squirting is 0) and face is not actually occupied and a random number between 1 and 2 > condom fetish:
			say "Suddenly, a ring gag connected to a tube flies out of a panel in the ground and into your mouth! It begins pumping the collected [semen] into your mouth[if currently-squirting is 1] - you're being forcefed your own nasty expulsion[one of][or] once again[stopping][end if]!";
			now smoothie gag is penetrating face;
			FaceFill semen by X;
			if currently-squirting is 1, TasteGrossOut 12;
			dislodge smoothie gag;
			say "The gag releases itself from your mouth and retreats back into the ground.";
		otherwise if condom fetish is 1:
			say "Suddenly, a condom full of the collected [semen] is ejected from a panel in the ground, and flies towards you!";
			let C be a random worn condom pinnable clothing;
			if C is nothing, now C is string-belt;
			unless C is worn:
				summon C cursed;
				say "Suddenly, a [printed name of C] appears around your waist!";
			UsedCondomUp C by 1;
			say "The condom whizzes onto and attaches itself to your [MediumDesc of C]!";
			say CondomNewbieTip;
			force immediate clothing-focus redraw;
		otherwise:
			compute discombobulation;
	otherwise:
		increase the semen-puddle of R by X.

To UrinePuddleUp (X - a number) in (R - BellyRoom01):
	if the player is in R:
		cutshow Figure of Belly Room Expel;
		say "A klaxon sounds, followed by a loud whoosing sound as the [urine] is sucked down into a drainage system. ";
		if (a2m fetish > 1 or currently-squirting is 0) and face is not actually occupied:
			say "Suddenly, a ring gag connected to a tube flies out of a panel in the ground and into your mouth! It begins pumping the collected [urine] into your mouth[if currently-squirting is 1] - you're being forcefed your own nasty ass-piss[one of][or] once again[stopping][end if]!";
			now smoothie gag is penetrating face;
			FaceFill urine by X;
			if currently-squirting is 1, TasteGrossOut 12;
			dislodge smoothie gag;
			say "The gag releases itself from your mouth and retreats back into the ground.";
		otherwise:
			compute discombobulation;
	otherwise:
		increase the urine-puddle of R by X.

To MilkPuddleUp (X - a number) in (R - BellyRoom01):
	if the player is in R:
		cutshow Figure of Belly Room Expel;
		say "A klaxon sounds, followed by a loud whoosing sound as the [milk] is sucked down into a drainage system. ";
		if (a2m fetish > 1 or currently-squirting is 0) and face is not actually occupied:
			say "Suddenly, a ring gag connected to a tube flies out of a panel in the ground and into your mouth! It begins pumping the collected [milk] into your mouth[if currently-squirting is 1] - you're being forcefed your own nasty assmilk[one of][or] once again[stopping][end if]!";
			now smoothie gag is penetrating face;
			FaceFill milk by X;
			if currently-squirting is 1, TasteGrossOut 12;
			dislodge smoothie gag;
			say "The gag releases itself from your mouth and retreats back into the ground.";
		otherwise:
			compute discombobulation;
	otherwise:
		increase the milk-puddle of R by X.

Elevator Rooms ends here.
