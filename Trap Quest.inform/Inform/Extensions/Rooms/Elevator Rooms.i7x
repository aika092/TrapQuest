Elevator Rooms by Rooms begins here.
An elevator-room is a kind of room. An elevator-room has a labyrinth shape called shape. The grid position of an elevator-room is usually <0,0,0>. An elevator-room is usually discovered. An elevator-room can be elevator-discovered. An elevator-room can be elevator-completed.

elevator-buttons is a list of rooms that varies.

Definition: an elevator-room is appropriate: decide yes.

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
				compute elevator entrance of E;
				now player-numerical-response is 0. [Just a failsafe, as it could change inside the compute elevator entrance function]

To compute elevator return:
	now playerRegion is hotel;
	now temporaryYesNoBackground is Figure of small image;
	now the player is in Hotel30;
	let all-completed be true;
	repeat with E running through elevator-buttons:
		if E is not elevator-completed, now all-completed is false;
	if all-completed is true, now FinalBoss01 is not elevator-completed.


FinalBoss01 is an elevator-room. FinalBoss01 is elevator-completed. The grid position of FinalBoss01 is <20,1,1>.  The shape of FinalBoss01 is L20/0-0-0-0-0-0. The printed name of FinalBoss01 is "Capsule Chamber". "This is an exact replica of the room that you started in, complete with the capsule that you were put into. You can see that the capsule has a giant STOP button on one side. It also has a number on a screen above it, which you can easily read by examining the button more closely.".

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
	now the player is in SurgeryRoom01;
	say "As the elevator door opens, you see a futuristic-looking room. It kind of looks like a Sci-Fi TV show's idea of what a room might look like on a futuristic space station. Silver metal walls filled with panels and cabinets, bright lights in the white metal ceiling, and a grey metal floor. But most notably, in the middle of the room, is a large metal cuboid structure that looks like you could climb inside the top. There are two buttons on the top - a green one with a sign that says 'TOGGLE COMFORT FEATURES', and a red one with a sign that says 'ABORT PROCEDURE'.[paragraph break]A robotic voice speaks to you from concealed speakers.[line break][first custom style]'WELCOME TO THE SURGERY ROOM. PLEASE REMOVE ALL CLOTHING PLACE YOUR LEGS AND TORSO IN THE SURGERY MACHINE TO RECEIVE A FREE UPGRADE. THE UPGRADE WOULD BE PAINFUL AND DISTRESSING TO WITNESS, SO PLEASE ENSURE THAT THE SENSATION BLOCKING COMFORT FEATURES REMAIN ENABLED UNTIL THE PROCEDURE IS OVER.'[line break][variable custom style]So I get in the machine and then it does something to me? And I don't get to SEE, or even FEEL what it's doing until the procedure is over? It's PROBABLY beneficial, but knowing this game, there's a chance it's actually a trap...[roman type][line break]";
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
				if dick-nipple-piercings is actually summonable:
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
				AssFill (belly limit - the total squirtable fill of belly) water;
				say "A tube has been inserted into your [asshole], and a liquid labelled as [']PLEASURE ENHANCEMENT GEL['] has been pumped inside, making your belly balloon and bloat outwards. It has made your body much more sensitive than normal... Which has meant that the vibrating wands on your nipples have been bringing your body to several orgasms per minute!";
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
		say "The machine releases your torso, allowing you to, legs shaking, waddle towards the elevator.[line break][first custom style]'WARNING: THIS ROOM WILL NOW FILL WITH STEAM AS PART OF ITS STERILIZATION CYCLE. WOULD ALL ORGANIC MATTER THAT WISHES TO REMAIN ORGANIC MATTER PLEASE IMMEDIATELY LEAVE VIA THE ELEVATOR PROVIDED.'[line break][variable custom style]Crap, I'm being kicked out right away![roman type][line break]";
		now SurgeryRoom01 is elevator-completed;
	otherwise if player-numerical-response is 3:
		say "You noisly slam large dents into the machine until you hear it power down.[line break][first custom style]'CRITICAL ERROR... ROOM OFFLINE.'[line break][variable custom style]That should stop that darned elevator from trying to suggest I come back here![roman type][line break]";
		now SurgeryRoom01 is elevator-completed;
	otherwise:
		if able-to-strip-naked is true, say "[variable custom style]It feels like too big a risk to take.[roman type][line break]";
	compute single choice question "Return to the hotel";
	compute elevator return.



Elevator Rooms ends here.
