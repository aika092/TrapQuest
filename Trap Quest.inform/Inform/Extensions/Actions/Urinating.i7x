Urinating by Actions begins here.

Urinating is an action applying to nothing.

delayed urination is a number that varies.
delayed urination flav is a text that varies.

target-poster is an object that varies.

[!<diaperReactionSaid:Boolean>*

Has the player been noticed to be urinating into their diaper? Should be set to true at the end of each urination session, ready for the next one.

Set to false when the player automatically wets from messing - no need to have the NPC react to both the mess and the urination separately.

Set to true if the player is far-gone enough to declare that they're wetting themselves out loud - this does provoke an extra reaction from the NPC.

*!]
diaper-reaction-said is initially true.

player-urinating is a number that varies.

[!<overflowed:Integer>*

We may need to flag that the thing that was collecting the player's pee overflowed, in order to trigger the correct NPC reaction.

*!]
overflowed is a number that varies.

[Is the player peeing into a body of water?]
water-peeing is initially false.

toilet is a backdrop. Understand "potty", "throne", "bathroom" as toilet. The text-shortcut of toilet is "toilet". Figure of toilet is the file "Env/MultiFloor/toilet1.png". Figure of school toilets is the file "Env/School/toilets1.jpg". Figure of school toilets locked is the file "Env/School/toilets2.jpg".
urinal is a backdrop. Understand "potty", "urinals", "bathroom" as urinal. The text-shortcut of urinal is "urinal".



To say ExamineDesc of (T - toilet):
	say "A toilet[if watersports mechanics is 1]. You can [bold type]use[roman type] this to relieve yourself[end if].".
To say ExamineDesc of (T - urinal):
	if the hotel-urinal-scene of woman-player > 0 and the player is in Hotel31:
		say "[if there is a wrestler in Holding Pen][BigNameDesc of random wrestler in Holding Pen] and [NameDesc of woman-player] are here, bound in latex bodysuits as diapered human urinals[otherwise][BigNameDesc of woman-player] is here, bound in a latex bodysuit as a diapered human urinal[end if].";
	otherwise if woman-status of woman-player is 98 and playerRegion is woods and woman-player is in the location of the player:
		say "[BigNameDesc of woman-player] is buried up to [his of woman-player] neck here. You could probably use [him of woman-player] as a urinal.";
	otherwise if diaper quest is 1 and the player is in Dungeon41:
		say "This poor black [man of shopkeeper] has been encased in a red latex catsuit, complete with matching ring-gagged hood. A stupidly thick diaper sits between [his of shopkeeper] legs underneath the catsuit, keeping [his of shopkeeper] thighs far apart. [big his of shopkeeper] wrists and neck are trapped inside holes inside one of the shelves attached to the wall of [his of shopkeeper] own shop, preventing [him of shopkeeper] from standing up or moving away. [big he of shopkeeper] can't speak, can't move, can't do anything but sit there, moan, and fill [his of shopkeeper] huge diaper over time, relying on visitors to feed [him of shopkeeper] food or drink through [his of shopkeeper] permanently open mouth. A men's toilets sign on [his of shopkeeper] bib encourages people to serve [him of shopkeeper] drinks directly from their bladders.";
	otherwise:
		say "A urinal[if watersports mechanics is 1]. You can [bold type]use[roman type] this to relieve yourself[end if].".

To decide which figure-name is the examine-image of (T - toilet):
	if the player is in the location of ex-princess and ex-princess is caged, decide on examine-image of ex-princess;
	if playerRegion is school and the player is not in a predicament room:
		if locked-toilets is true, decide on figure of school toilets locked;
		otherwise decide on figure of school toilets;
	if diaper quest is 1 and the player is in Hotel38 and the human-toilet-scene of woman-player is 2, decide on figure of human toilet;
	if diaper quest is 0 and the player is in Hotel38 and watersports fetish is 1 and a2m fetish >= 2 and the human-toilet-scene of woman-player is not 1, decide on figure of human toilet;
	if diaper quest is 0 and the player is in Toilet01, decide on figure of male toilet;
	if diaper quest is 0 and playerRegion is not Dungeon, decide on figure of female toilet;
	decide on figure of toilet.

This is the toilet gets focused rule:
	if watersports mechanics is 1 and the location of the player is toilets and the player is not in Dungeon11, focus-consider toilet.
The toilet gets focused rule is listed in the focus finding rules.
This is the urinal gets focused rule:
	if watersports mechanics is 1 and the location of the player is urinals and (ex-princess is not in the location of the player or ex-princess is not caged) and (woman-player is not in the location of the player or the woman-status of woman-player is not 98), focus-consider urinal.
The urinal gets focused rule is listed in the focus finding rules.

To construct normal buttons for (T - toilet):
	if ButtonTableFull is 0 and watersports mechanics is 1 and the player is not incontinent:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of ToiletButton;
		now the ButtonCommand entry is "use toilet";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is prone, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player needs to stand]
	if ButtonTableFull is 0 and the human-toilet-scene of woman-player > 1 and there is a held unlock-key and the player is in Hotel38:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is the examine-image of a random held unlock-key;
		now the ButtonCommand entry is "unlock toilet";
		now the ButtonColour entry is lightModeFullGreen;
	if ButtonTableFull is 0 and the total volume of face > 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of SpitButton;
		now the ButtonCommand entry is "spit";
		now the ButtonColour entry is lightModeFullGreen;
		if face is actually occupied, now the ButtonColour entry is lightModeFullRed; [mouth blocked]
	repeat with E running through held eggs:
		if ButtonTableFull is 0 and the location of the player is toilets:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is the examine-image of E;
			now the ButtonCommand entry is "drop [text-shortcut of E]";
			now the ButtonColour entry is lightModeFullGreen;
			if the player is immobile, now the ButtonColour entry is lightModeFullRed.
To construct normal buttons for (T - urinal):
	if ButtonTableFull is 0 and watersports mechanics is 1 and the player is not incontinent:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of ToiletButton;
		now the ButtonCommand entry is "use urinal";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is prone, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player needs to stand]
	if ButtonTableFull is 0 and the total volume of face > 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of SpitButton;
		now the ButtonCommand entry is "spit";
		now the ButtonColour entry is lightModeFullGreen;
		if face is not actually occupied, now the ButtonColour entry is lightModeFullRed. [mouth blocked]

Definition: yourself is able to use a urinal:
	if the player is potentially able to use a urinal:
		if delayed urination is 1 or the player is immobile or the player is in danger or the player is flying, decide no;
		if watersports mechanics is 0 or there is pee covering actually unavoidable clothing, decide no;
		decide yes;
	decide no.

Definition: yourself is able to use a toilet:
	if the player is potentially able to use a toilet:
		if delayed urination is 1 or the player is immobile or the player is in danger or the player is flying, decide no;
		if (toilet allowance is 1 or diaper lover is 0) and (watersports mechanics is 0 or there is pee covering actually unavoidable clothing) and (asshole is actually occupied or the total squirtable fill of belly <= 0 or there is ass covering actually unavoidable clothing), decide no;
		decide yes;
	decide no.

Definition: yourself is potentially able to use a toilet:
	if diaper quest is 1 and watersports fetish is 0 and the player is in Hotel38 and the human-toilet-scene of woman-player is 2, decide no; [can't use Berri without watersports enabled!]
	if locked-toilets is true and the player is in School10 and academy-toilet-key is not held, decide no; [toilet is locked]
	if diaper lover > 0 and the times-terrorised of toilet-monster > 1 and the number of intelligent friendly monsters in the location of the player is 0, decide no; [scared of toilets]
	if the player is upright and the location of the player is toilets, decide yes;
	decide no.

Definition: yourself is potentially able to use a urinal:
	if the player is upright and the location of the player is urinals, decide yes;
	decide no.

Definition: yourself is able to use the toilet past their diaper:
	if toilet allowance is 0 and diaper lover > 0 and the player is not in a predicament room and (the player is able to use a toilet or the player is able to use a urinal), decide yes;
	decide no.

Report going when the player is able to use the toilet past their diaper:
	let PC be a random pee covering actually unavoidable clothing;
	let AC be a random ass covering actually unavoidable clothing;
	if (AC is clothing and the player is feeling full) or (PC is clothing and the player is bursting):
		if PC is a clothing, now AC is PC;
		say "[bold type]As you enter this room, the leg holes of your [ShortDesc of AC] [bold type][one of]seem to [or][stopping]temporarily loosen. [roman type][if AC is cursed][one of]You can't take them off because the waist is still tightly sealed, but you could probably displace the crotch in order to use the loo.[or][stopping][otherwise]You could probably pull it to the side and use the toilet without removing it if you liked.[end if]".

Toileting is an action applying to one thing.
Check toileting:
	if the noun is not toilet and the noun is not urinal, say "This verb is for using the toilet." instead;
	if the player is prone, say "You can only do that while on two feet." instead;
	if the player is immobile or the player is in danger or the player is flying, say "Aren't you a bit busy?" instead;
	if locked-toilets is true and the player is in School10 and academy-toilet-key is not held, say "You don't have the key!" instead;
	let PC be a random pee covering actually unavoidable clothing;
	let AC be a random ass covering actually unavoidable clothing;
	if the player is able to use the toilet past their diaper:
		now PC is the player;
		now AC is the player;
	if the location of the player is urinals:
		if watersports mechanics is 0, say "You have no need to use that!" instead;
		if the player is bladder incontinent, say "You have no control over that - you are [one of]fully[or]hopelessly[or]utterly[or]totally[or]completely[at random] incontinent." instead;
		if PC is clothing, say "You can't because of your [ShortDesc of PC]!" instead;
	otherwise if the location of the player is toilets:
		if the total squirtable fill of belly <= 0 and the player is totally incontinent, say "You can't use the toilet normally because you are [one of]fully[or]hopelessly[or]utterly[or]totally[or]completely[at random] incontinent." instead;
		let P be a random thing penetrating asshole;
		if PC is clothing and (P is a thing or AC is a clothing):
			say "You can't pee in the toilet because of [NameDesc of PC][run paragraph on]";
			if the total squirtable fill of belly > 0 or rectum > 0, say " and you can't expel the contents of your belly because of [if P is a thing][NameDesc of P][otherwise][NameDesc of AC][end if][run paragraph on]";
			say "." instead;
		if P is a thing or AC is a clothing:
			if watersports mechanics is 0, say "You can't expel the contents of your belly because of [if P is a thing][NameDesc of P][otherwise][NameDesc of AC][end if]." instead;
		if PC is clothing or watersports mechanics is 0:
			if (the player is not full or diaper messing < 4) and the total squirtable fill of belly <= 0:
				say "You [if watersports mechanics is 1]can't pee in the toilet because of your [ShortDesc of PC] and you [end if]don't need to expel anything from your [asshole]." instead;
			otherwise if watersports mechanics is 1 and P is not a thing and AC is not a clothing:
				say "If you sit on the toilet and push, you might accidentally wet your [ShortDesc of PC] at the same time. Do you want to risk it?";
				if the player is not consenting, say "Action cancelled." instead;
		if the player is toilet traumatised:
			if the number of intelligent awake friendly monsters in the location of the player is 0, say "After your traumatising experience with [NameDesc of toilet-monster], you're too scared to use the toilet all by yourself!" instead;
		otherwise if the player is proud:
			let M be a random reactive monster;
			if M is monster, say "I can't [if PC is clothing]pull my [ShortDesc of PC] down and [end if]sit on the toilet and use it with [NameDesc of M] right there!!!" instead.

Definition: yourself is toilet traumatised:
	if diaper lover > 0 and the times-terrorised of toilet-monster > 1, decide yes;
	decide no.
Definition: yourself is toilet traumatised bursting:
	if (the player is bursting or the player is feeling full or the total squirtable fill of belly > 0) and the player is toilet traumatised, decide yes;
	decide no.

Carry out toileting:
	if the location of the player is toilets:
		compute toilet use;
	otherwise if the location of the player is urinals:
		compute urinal use.

Check entering toilet:
	try Toileting toilet instead.

Check drinking toilet:
	try toileting toilet instead.

Check entering urinal:
	try Toileting urinal instead.

Check drinking urinal:
	try toileting urinal instead.

Check drinking diaper:
	try urinating instead.

toilet-sitting is initially false. [the player can sit on the toilet while using a diaper to avoid leakage onto the floor]

[!<CheckUrinating>+

Delayed urination:
0 - Purposeful
1 - Accidental
2 - Automatic, DOESN'T count as failing to hold it in. e.g. wetting oneself when expelling belly or orgasming

+!]
Check urinating:
	now delayed urination flav is "";
	if the bladder of the player is 0 and the number of worn prostate massager plugs is 0:
		if delayed urination is 0, say "You don't feel the need." instead;
		if debugmode is 1, say "resetting accidental urination flag.";
		now delayed urination is 0; [We've accidentally forced the player to pee when they can't, oops! Oh well, let's not break the game.]
		say "[one of]Player was forced to urinate when they had nothing in their bladder, please report the bug to Aika![or][stopping]";
		do nothing instead;
	[if diaper lover is 0 and (the player is not bursting or the bladder of the player is 0):
		if delayed urination is 0, say "You don't feel the need." instead;
		do nothing instead;]
	if the player is bladder incontinent and delayed urination is 0, say "You are [one of]fully[or]hopelessly[or]utterly[or]totally[or]completely[at random] incontinent; you can't control this at all any more! Pushing just does nothing." instead;
	if the latex-transformation of the player > 4, say "[if delayed urination is 0]You can't pee, you're a sex doll![end if]" instead;
	[if the player is not bursting and delayed urination is 0, say "You don't feel the need." instead;]
	let toilet-refused be 0;
	if delayed urination is 0 and (the player is able to use a toilet or the player is able to use a urinal):
		say "Did you want to use the [if the location of the player is urinals]urinal[otherwise]toilet[end if]? ";
		if the player is consenting:
			if the location of the player is urinals, try toileting urinal instead;
			try toileting toilet instead;
		otherwise:
			now toilet-refused is 1;
	if delayed urination is 0 and the player is pee protected:
		if toilet-refused is 1 or (the player is not able to use a toilet and the player is not able to use a urinal):
			let P be a random bottom level pee protection clothing;
			now auto is 1;
			if there is pee covering actually unavoidable clothing or (there is a worn diaper and the diaper addiction of the player >= 3):
				if P is pants pee refusal inducing and debugmode is 0, do nothing instead;
				if P is not diaper or the diaper addiction of the player < 3:
					say "Do you really want to try to pee inside your [printed name of P]? ";
					if the player is bimbo consenting, say "";
					otherwise say "Then you should probably get it out of the way first." instead;
			otherwise if P is clothing:
				now the noun is P;
				if the player is able to displace:
					say "Do you want to get your clothes out of the way first? ";
					if the player is bimbo consenting:
						repeat with C running through pee covering clothing:
							if C is crotch-zipped:
								try unzipping C;
								if C is crotch-unzipped, now C is temporarily-displaced;
							otherwise if C is displacable and C is crotch-in-place:
								try displacing C;
								if C is crotch-displaced, now C is temporarily-displaced;
					otherwise:
						now auto is 0;
						if P is pants pee refusal inducing and debugmode is 0, do nothing instead;
				otherwise:
					say "You can't displace [NameDesc of P] right now, so you'll have to pee in it. Are you sure that's what you want to do? ";
					now auto is 0;
					if the player is not consenting, say "You change your mind." instead;
			now auto is 0;
	if the player is prone and the location of the player is bathroom and delayed urination is 0:
		say "Do you really want to try to pee [if the player is pee protected]your pants[otherwise]on the floor here[end if], while kneeling? ";
		if the player is bimbo consenting:
			let M be a random reactive person;
			if (the delicateness of the player < 4 or (the player is modest and M is a person)):
				if debugmode > 0, say "If debugmode was disabled, the player would refuse to pee.";
				otherwise say "[first custom style]I'm NOT peeing on the floor[if M is a person and the delicateness of the player >= 4] in front of [NameDesc of M][first custom style].[otherwise].[end if][roman type][line break]" instead;
		otherwise:
			say "Then you should probably stand up first." instead;
	if a random lake monster is in the location of the player and the bimbo of the player < 14 and delayed urination is 0:
		say "Do you really want to try to pee on the floor here? ";
		if the player is bimbo consenting:
			let M be a random reactive person;
			if (the delicateness of the player < 4 or (the player is modest and M is a person)):
				if debugmode > 0, say "If debugmode was disabled, the player would refuse to pee.";
				otherwise say "[first custom style]I'm NOT peeing on the floor[if M is a person and the delicateness of the player >= 4] in front of [NameDesc of M][first custom style].[otherwise].[end if][roman type][line break]" instead;
		otherwise:
			say "Then you should probably go elsewhere, you don't dare go near the lake with the tentacle monster still lurking in these waters." instead.

Definition: a clothing (called P) is pants pee refusal inducing:
	let M be a random reactive person;
	if the urine-soak of P <= 0 and P is not diaper and (the delicateness of the player < 6 or (the player is not disgraced and M is a person)) and (diaper quest is 0 or M is a person):
		if debugmode > 0, say "If debugmode was disabled, the player would refuse to pee.";
		otherwise say "[first custom style]I'm NOT peeing my pants[if M is a person and the delicateness of the player >= 6] in front of [FuckerDesc of M][first custom style].[otherwise].[end if][roman type][line break]";
		decide yes;
	decide no.
[In DQ players will always pee their pants just not in front of people. This is to make sure that the 'never wet myself involuntarily' bonus is always attainable.]

toiletJustUsed is initially false. [Used in the DQ ultimate lesson.]

To compute toilet use:
	if seconds is 0, allocate 6 seconds;
	let too be "";
	let initialBladder be the bladder of the player;
	if the location of the player is School10 and locked-toilets is true and academy-toilet-key is held, say "You unlock the toilet lid with the key.";
	if watersports mechanics is 1 and the player is not bladder incontinent and (the number of pee covering actually unavoidable clothing is 0 or the player is able to use the toilet past their diaper):
		if the bladder of the player > 0:
			let C be a random pee covering clothing;
			if C is clothing, say "Pulling the crotch fabric of your [ShortDesc of C] to one side, you ";
			otherwise say "You ";
			if diaper quest is 1 and the player is in Hotel38 and the human-toilet-scene of woman-player is 2:
				say "sit on the Punishment Potty above [NameDesc of woman-player][']s face and release your hold on your bladder.[line break][speech style of woman-player]'Wait please, no, [one of]let's talk about this[or]not again[stopping]- FFFFFFFFBBBBBFFFFFTTTT!'[roman type][line break][BigNameDesc of woman-player][']s pleas are drowned out by the heavy flow of your [urine].[line break][speech style of woman-player]'You [bitch]!'[roman type][line break]";
				now too is "NOPE";
			otherwise:
				say "sit on the [if the player is in Dungeon11]training potty throne[otherwise]nearby toilet[end if] [if the player is in Hotel38 and the human-toilet-scene of woman-player is 2]above [NameDesc of woman-player][']s ring-gagged face [end if]and release your hold on your bladder.";
				now too is " too";
			now the bladder of the player is 0;
			now toiletJustUsed is true;
	let incontinent-and-no-enema be false;
	if the player is rectum incontinent and the total squirtable fill of belly is 0, now incontinent-and-no-enema is true;
	if (rectum > 3 or the total squirtable fill of belly > 0 or suppository > 0) and incontinent-and-no-enema is false and asshole is not actually occupied and (the number of ass covering actually unavoidable clothing is 0 or the player is able to use the toilet past their diaper) and too is not "NOPE":
		if the player is in Hotel38 and the human-toilet-scene of woman-player is 2:
			say "With an embarrassing sound, you evacuate your bowels[too], kind of cream-pie-ing [him of woman-player]. [if the bimbo of the player < 10][one of]You blush at the thought [he of woman-player]'ll know how you've been used back there.[or]Once again you've sort of creampied [him of woman-player].[or][variable custom style]I hope [he of woman-player] doesn't think my ass is always filled with [BellyContentsAlone]![roman type][line break][or][variable custom style]Why does this keep happening?[roman type][line break][or][variable custom style][big he of woman-player] must think I'm such an anal slut![roman type][line break][or]Again.[stopping][otherwise if the humiliation of the player > 20]You have a vague feeling this might have once embarrassed you, but, really, it's kinda hot.[otherwise]You bite your lip, wondering if [he of woman-player] appreciates how hard you worked to get that![end if]"; [Mainly added so we can feel Barbara's not eating poo. Eww.]
		otherwise:
			say "With an embarrassing sound, you evacuate your bowels[too]. ";
		if the large egg count of belly > 0:
			let X be the large egg count of belly;
			say "Your [asshole] is stretched obscenely by the giant egg[if X > 1]s[end if]!";
			let E be a random large egg;
			now E is penetrating asshole; [For size calculations]
			ruin asshole times X;
			now E is not penetrating asshole;
		otherwise if the medium egg count of belly > 0:
			let X be the medium egg count of belly;
			say "Your [asshole] is stretched wide by the uncomfortably large egg[if X > 1]s[end if]!";
			let E be a random medium egg;
			now E is penetrating asshole; [For size calculations]
			ruin asshole times X;
			now E is not penetrating asshole;
		otherwise if the small egg count of belly > 0:
			let X be the small egg count of belly;
			let E be a random small egg;
			say "Your [asshole] is stimulated as the [ShortDesc of E][if X > 1]s come[otherwise] comes[end if] popping out!";
			now E is penetrating asshole; [For size calculations]
			ruin asshole times X;
			now E is not penetrating asshole;
		say "[if the diaper addiction of the player < 10 and the bimbo of the player < 10][line break][variable custom style]Well I'm glad that's taken care of.[roman type][line break][otherwise][line break][end if]";
		reset rectum;
		empty belly;
		now toiletJustUsed is true;
	otherwise if initialBladder is 0:
		say "You squeeze your bladder but nothing comes out!";
	if the player is bursting and wetting-valued <= 0 and the bladder-incontinence of the player < 5 and the rectum-incontinence of the player < 5: [This happens if the player uses the toilet with undisplacable pee covering clothing, in order to empty their belly]
		say "As you push the contents of your belly out, you can't help but also release hold on your bladder!";
		now delayed urination is 2;
		try urinating;
	otherwise if toiletJustUsed is true:
		if there is intelligent monster in the location of the player:
			repeat with M running through intelligent monsters in the location of the player:
				compute toilet reaction of M;
		otherwise:
			dignify 350;
		progress quest of careful-peeing-quest;
	if the player is in Dungeon11:
		let R be a random number from 1 to 5;
		let D be a random off-stage eligible disposable diaper;
		if D is nothing, now D is a random eligible diaper;
		if R is 1 and the player is not diapered:
			repeat with K running through worn knickers:
				only destroy K;
			summon D cursed with quest;
			say "As you finish your business, you suddenly feel a burst of energy and blinding light from the seat of the potty. Before you can react, you find a [ShortDesc of D] wrapped around your waist! Tugging at the waistband, you confirm your suspicion: it's cursed![line break][variable custom style][if the diaper addiction of the player < 11]But I just proved I can use the [otherwise]I got to go like a grown-up AND I got fresh protection! Thanks, [end if]potty![roman type][line break]";
		otherwise if R is 2:
			say "As you finish your business, you suddenly feel a burst of energy rush from the seat of the potty to your head. ";
			let H be a random off-stage rubber-baby-bonnet;
			if H is actually summonable:
				say "Before you know it, your head and mouth are encased in rubber. You're now wearing a pink latex baby's bonnet!";
				summon H cursed;
			otherwise if skimpy underwear fetish is not 0:
				now skimpy underwear fetish is 0;
				say "Your mind suddenly clouds for a second... As you shake it off, you suddenly feel a strange aversion to wearing underwear thinner than diapers!";
			otherwise:
				DiaperAddictUp 1;
				say "Your mind suddenly clouds for a second... As you shake it off, you suddenly feel more comfortable wearing and using diapers!";
		otherwise if R is 3 and the raw-bladder-incontinence of the player > 0:
			decrease the raw-bladder-incontinence of the player by 5;
			say "You suddenly feel a rush of energy from the throne to your crotch. ";
			BladderIncontinenceDown 5;
		otherwise if (R is 3 or R is 4) and the diaper addiction of the player > 0:
			SilentlyDiaperAddictDown 1;
			say "You suddenly feel a rush of energy to your head, and your mind suddenly feels a little clearer. It seems the training potty has helped reduce your addiction to wearing and using diapers!";
		otherwise:
			let C be a random off-stage eligible disposable diaper;
			if the raw-bladder-incontinence of the player > 8:
				now C is a random off-stage plentiful massive diaper;
			otherwise if the raw-bladder-incontinence of the player > 7:
				now C is a random off-stage plentiful huge diaper;
			otherwise if the raw-bladder-incontinence of the player > 5:
				now C is a random off-stage plentiful large diaper;
			otherwise if the raw-bladder-incontinence of the player > 2:
				now C is a random off-stage plentiful medium diaper;
			otherwise if the raw-bladder-incontinence of the player > 0:
				now C is a random off-stage training pants;
			otherwise:
				now C is a random off-stage plentiful fetish appropriate undies;
			if C is nothing, now C is a random off-stage eligible diaper;
			if C is diaper:
				destroy C;
				now C is blessed;
				say "Suddenly a bright light flashes from the potty throne. When your vision is restored, you see a [ShortDesc of C] on the floor in front of you.[line break][variable custom style]Maybe this is [if the player is diapered]my reward for being properly diapered[otherwise]what the throne thinks I should be wearing?[end if][roman type][line break]";
				now C is in the location of the player;
				compute autotaking C;
	if toiletJustUsed is true:
		trigger pee-wisp-trigger;
		check woman toilet;
		if locked-toilets is true, check school toilet supervision.

To compute urinal use:
	if seconds is 0, allocate 6 seconds;
	if there is displacable pee covering clothing, say "Pulling the crotch fabric of your [ShortDesc of random displacable pee covering clothing] to one side, you ";
	otherwise say "You ";
	if the location of the player is urinals, say "[if the player is possessing a penis]walk up to[otherwise]squat in front of[end if] [if the player is in Dungeon41][NameDesc of shopkeeper][otherwise]the urinal[end if] and ";
	say "release your hold on your bladder.";
	if the bladder of the player > 0:
		if the hotel-urinal-scene of woman-player > 0 and the player is in Hotel31:
			let M be a random wrestler in Holding Pen;
			if M is monster:
				reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
				set numerical response 1 to "urinate on [WomanName], letting [him of woman-player] drink it";
				set numerical response 2 to "urinate on [WomanName], NOT letting [him of woman-player] drink it";
				set numerical response 3 to "urinate on [NameDesc of M], letting [him of M] drink it";
				set numerical response 4 to "urinate on [NameDesc of M], NOT letting [him of M] drink it";
				compute multiple choice question;
				if player-numerical-response is 1 or player-numerical-response is 3:
					if player-numerical-response is 1, now M is woman-player;
					say "Your [urine] fills [NameDesc of M][']s mouth, and [he of M] obediently gulps as much down as [he of M] can. Shortly afterwards you hear a hissing sound as [NameDesc of M] fills [his of M] diaper. At the same time, [he of M] squeals with a high pitched note as [his of M] vibrating wand brings [him of M] to another powerful orgasm.";
					if M is wrestler:
						compute WrestlerUrinalCompletion;
						say "Poor [NameDesc of woman-player] is still stuck there, now all on [his of woman-player] own!";
					otherwise:
						say "The bar on the screen at the front of [his of M] diaper increases, but doesn't reach 100%. [big he of M][']s still stuck!";
						if M is woman-player, now the hotel-urinal-scene of M is 9;
					FavourUp M by 5;
					now M is a random wrestler in Holding Pen;
				if player-numerical-response > 2, now M is woman-player;
				say "[if player-numerical-response is 2 or player-numerical-response is 4]Both human urinals groan as[otherwise]Some of[end if] the [urine] trickles down the latex bodysuit into the drain. And then, [one of]much to your surprise, [or][stopping]it's [NameDesc of M][']s wand vibrator that suddenly kicks into turbo mode, now vibrating even more loudly and powerfully. [one of][bold type]This must mean that each urinal's drain is somehow hooked up to the other human urinal's vibrator! [roman type][or][stopping][big he of M] screams in a mixture of panic and pleasure as [his of M] mind begins to melt from the excessive overstimulation.";
				if M is woman-player:
					WomanSluttify;
					FavourDown woman-player;
			otherwise:
				let M be woman-player;
				reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
				set numerical response 1 to "urinate on [WomanName], letting [him of M] drink it";
				set numerical response 2 to "urinate on [WomanName], NOT letting [him of M] drink it";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "Your [urine] fills [NameDesc of M][']s mouth, and [he of M] obediently gulps as much down as [he of M] can. Shortly afterwards you hear a hissing sound as [NameDesc of M] fills [his of M] diaper. At the same time, [he of M] squeals with a high pitched note as [his of M] vibrating wand brings [him of M] to another powerful orgasm.";
					say "The bar on the screen at the front of [his of M] diaper increases, but doesn't reach 100%. [big he of M][']s still stuck for now!";
					now the hotel-urinal-scene of M is 9;
					FavourUp M by 5;
				otherwise:
					say "[BigNameDesc of M] groans in frustration as the [urine] trickles down [his of M] latex bodysuit into the drain.";
					FavourDown woman-player;
		otherwise if diaper quest is 0 and the woman-status of woman-player is 98 and woman-player is in the location of the player:
			say "[speech style of woman-player]'[one of]What are you doing?! No no no wait-'[or]Not again?! Eeeek!'[stopping][roman type][line break][BigNameDesc of woman-player] shrieks with panic, before [his of woman-player] words are replaced with a strained gargle as your [urine] hits [his of woman-player] face and mouth.";
			DelicateDown 1;
			FavourDown woman-player;
			womanSluttify;
			say "[speech style of woman-player]'[NameBimbo], you bitch! I thought we were friends!'[roman type][line break][BigNameDesc of woman-player] cries angrily as [he of woman-player] spits out a mouthful of [urine].[line break][speech style of woman-player]'Gross gross gross!'[roman type][line break]";
		otherwise if the player is in Dungeon41:
			say "[BigNameDesc of shopkeeper] groans in frustration as the [urine] floods [his of shopkeeper] mouth, and [he of shopkeeper] is forced to swallow. But there's absolutely nothing [he of shopkeeper] can do about it but drink it down, and wait until it comes out [his of shopkeeper] own bladder a bit later and joins the rest of the [urine] soaking [his of shopkeeper] extra-thick padding. You can't help but feel a bit better about yourself in comparison to this pathetic human toilet!";
			Dignify 1000;
			DelicateDown 1;
		otherwise if the player is in School27:
			say "The human urinal whimpers as the [urine] floods their mouth, and they are forced to swallow. But there's absolutely nothing they can do about it but drink it down, and wait until it comes out their own bladder a bit later and joins the rest of the [urine] soaking their extra-thick padding. You can't help but feel a bit better about yourself in comparison to this pathetic human toilet!";
			Dignify 1000;
			DelicateDown 1;
		now the bladder of the player is 0;
		unless the location of the player is School35: [princess urinal]
			repeat with M running through reactive monsters:
				compute toilet reaction of M;
		progress quest of careful-peeing-quest;
		trigger use-urinal-wisp-quest;
	otherwise:
		say "Nothing comes out!".

To compute toilet reaction of (M - a monster):
	say ToiletReactionFlav of M.

To say ToiletReactionFlav of (M - a monster):
	if M is friendly, say "[BigNameDesc of M] politely looks away. [trivialHumiliateReflect]";
	otherwise say "[BigNameDesc of M] stares at you[if M is human], frowning[end if]. [moderateHumiliateReflect]".

Carry out urinating:
	start urination.

This is the urination continues rule:
	if the player is in danger, say "You try to stop the flow but you can't! You continue to [urinate]. ";
	otherwise say "[one of]Time passes as you[or]You[cycling] continue to [urinate]. ";
	compute urination.

To start urination:
	if seconds is 0, allocate 6 seconds;
	now player-urinating is 1;
	now overflowed is 0;
	now water-peeing is false;
	now toilet-sitting is false;
	if pee-bottling is 1: [We are automatically urinating so we set delayed urination to 1 to make sure we skipped the check functions. But we don't want to tell the player that the urination was involuntary because that's not actually true.]
		now pee-bottling is 0;
		if debugmode is 1, say "resetting accidental urination flag.";
		now delayed urination is 0;
	if (there is a camera trap in the location of the player and refractoryperiod < maxrefractoryperiod) or there is a camera-bystander in the location of the player:
		let D be a random worn diaper;
		if D is diaper and D is not currently visible, now target-poster is nothing; [peeing into a diaper that can't be seen shouldn't cause a reaction from cameras]
		otherwise now target-poster is a random off-stage wetting poster;
	otherwise:
		now target-poster is nothing;
	if the player is not pee protected:
		if the player is flying:
			say "You urinate freely from the air onto the ground below.[line break][variable custom style]Well this is a new experience...[roman type][line break]";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
		otherwise if the player is able to use a body of water and delayed urination is 0:
			say "Get into the water (people won't be able to see you peeing but you'll get wet)? ";
			if the player is consenting:
				say "You walk past the edge, wading into the water until you can discreetly [urinate]. ";
				progress quest of careful-peeing-quest;
				now water-peeing is true;
			otherwise:
				compute urinal use;
				say PeeReaction 0;
		otherwise if player-currently-resting is 1 and there is a hotel bed in the location of the player:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. Your [urine] soaks into the sheets and mattress.";
			now a random hotel bed in the location of the player is soggy;
			say PeeReaction 1;
		otherwise if gloryhole is grabbing the player and gloryhole is blowjob portal:
			say "[if the urine taste addiction of the player > 11 and delayed urination is 0]With an eager grin you[otherwise]You[end if] [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. Your [urine] goes straight into your own mouth at full force!";
			FaceFill urine by 3;
		otherwise if gloryhole is grabbing the player and gloryhole is normal glory hole:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. You are [one of][or]UN[stopping]surprised to find that your new anonymous oral servant doesn't pull away!";
		otherwise if diaper quest is 1 and the player is in Iron Maiden:
			say "Your [urine] soaks into the thick Iron Maiden padding pressed against your crotch.";
			DiaperAddictUp 1;
			say "The spell of your [urine] in the cramped room floods your nostrils.";
			if watersports fetish is 1, SlowUrineTasteAddictUp 1;
			otherwise SlowSexAddictUp 1;
		otherwise:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. Your [urine] [if the player is possessing a vagina and the player is dildo stuck]trickles around the dildo and down your thighs.[otherwise if playerRegion is Dungeon]flows to the ground, creating a puddle on the floor.[otherwise]flows to the ground.[end if]";
			say PeeReaction 1;
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
				punish puddle pissing;
	otherwise:
		let K be a random bottom level pee protection clothing;
		if the player is potentially able to use a toilet and delayed urination is 0 and the player is not immobile and the player is not in danger and the player is not flying:
			say "Would you like to sit on the toilet while you soil your [ShortDesc of K] (to avoid wetting the floor if you leak)?";
			if the player is consenting:
				say "You sit on the toilet. ";
				now toilet-sitting is true;
			otherwise:
				say "You stay where you are. ";
		say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. ";
		compute pee protected urination;
		if K is diaper:
			if diaper quest is 1 and the class of the player is priestess:
				repeat with S running through worn potentially at least partially asshole covering displacable clothing:
					if S is not K:
						say "A holy glow surrounds your [ShortDesc of S] as it [if S is skirted]billows upwards[otherwise]falls down[end if], exposing the rapidly yellowing diaper underneath!";
						displace S;
				[progress quest of priestess-service-quest;]
			if the class of the player is priestess and the player is in the location of dungeon altar and K is currently visible:
				let M be a random uninterested willing to change diapers intelligent undefeated monster in the dungeon;
				if M is monster:
					now M is in the location of the player;
					interest M;
					say "[BigNameDesc of M] walks into the altar room![line break][speech style of M]'Blessed sister, I am here for my prayer... oh.'[roman type][line break]";
					FavourDown M by 3 with consequences;
		if K is diaper and K is total protection and overflowed is 0, say PeeReaction 2;
		otherwise say PeeReaction 3;
	[Process punishments for involuntary wetting]
	if diaper lover >= 1:
		if temporary-bladder-incontinence > 0:
			progress temporary incontinence;
		otherwise if delayed urination is 1 and the bladder-incontinence of the player < the max-bladder-incontinence of the player and the diaper addiction of the player > the bladder-incontinence of the player + 10 and there is a worn total protection diaper:
			say "[one of]You can't help but notice that losing control and wetting your diaper feels weirdly nice and comforting. [or][stopping][bold type]You feel your bladder weakening[one of][or] further[stopping], in support of your growing addiction to and dependence for diapers.[roman type][line break]";
			SilentlyBladderIncontinenceUp 1;
	if delayed urination is 1:
		now wetting-valued is -1;
		if diaper bonus > 0, compute wetting failure;
		progress quest of adult-baby-quest;
		progress quest of bursting-quest;
	otherwise if delayed urination is 0 and wetting-valued >= 0 and wetting-valued <= 2 and diaper lover >= 1:
		increase wetting-valued by 1;
		if wetting-valued is 3, diaperreward;
	if delayed urination is 0 and diaper lover >= 1 and diaper quest is 0:
		if there is a worn total protection diaper and a random number between 7 and 12 >= the diaper addiction of the player:
			DiaperAddictUp 1;
		otherwise if the number of worn diapers is 0 and a random number between 7 and 12 <= the diaper addiction of the player:
			DiaperAddictDown 1;
	[Check if we need to continue urination]
	if the bladder of the player > 6:
		decrease the bladder of the player by 6;
		now another-turn is 1;
		add the urination continues rule to another-turn-rules, if absent;
	otherwise:
		end urination.

To compute pee protected urination:
	if WC-plug-panties is worn:
		say "Your plug panties [one of]seem to somehow absorb the [urine], and also vibrate powerfully in response! [or]absorb the [urine], vibrating powerfully as they do. [stopping]";
		say "[one of][WCPantiesVibeFlav][or][or][cycling]";
		if the player is possessing a vagina, stimulate vagina;
		otherwise stimulate asshole;
	otherwise if quiz-partner is worn and there is a worn diaper:
		compute quiz partner messing;
	otherwise:
		let K be a random worn bottom level soakable pee protection clothing;
		let oldSoak be 99;
		unless K is nothing, let oldSoak be the urine-soak of K;
		let N be 6;
		if the bladder of the player < 6, now N is the bladder of the player;
		if the bladder of the player > 12 and K is clothing and the bladder of the player >= the soak-limit of K, now N is the soak-limit of K - the total-soak of K; [Fill up the underwear in one turn if this is going to take forever]
		if diaper quest is 1 and K is diaper and the player is in Hotel38 and the human-toilet-scene of woman-player is 2 and delayed urination is 0 and the player is not immobile and the player is not in danger:
			say "Sit on the Punishment Potty?";
			if the player is bimbo consenting:
				say "You sit on the Punishment Potty, smushing your [K] into [NameDesc of woman-player][']s face.[line break][speech style of woman-player]'Wait please, no, [one of]let's talk about this[or]not again[stopping]- FFFFFFFFBBBBBFFFFFTTTT!'[roman type][line break][BigNameDesc of woman-player][']s pleas are blocked out by your padded butt.[line break][speech style of woman-player]'You [bitch]!'[roman type][line break][BigNameDesc of woman-player] chastises you when you pull up and allow [him of woman-player] to breathe again.";
				DelicateDown 1;
				FavourDown woman-player by 1;
		if K is portal-pants or K is portal-hotpants or K is quiz-partner or K is giant-teddy:
			say "Your [urine] flows out of your [genitals]. ";
			AnnouncedExpel urine on K by N;
		otherwise:
			let flav-said be 0;
			let totalOverflow be 0;
			repeat with X running from 1 to N:
				if K is nothing:
					if player-currently-resting is 1 and there is a hotel bed in the location of the player:
						if flav-said is 0, say "Your [urine] soaks into the sheets and mattress.";
						now a random hotel bed in the location of the player is soggy;
					otherwise if toilet-sitting is true:
						if flav-said is 0, say "Your [urine] drips through your clothing and into the toilet.";
					otherwise:
						increase totalOverflow by 1;
						if flav-said is 0, say "Your [urine] drips through your clothing!";
						if there is bottom level pee protection clothing, now overflowed is 2; [TODO: work out why I thought that there sometimes might not be pee protection clothing here]
					[if there is a worn diaper and diaper quest is 1, progress quest of priestess-service-quest;] [this isn't properly using a diaper! not sure why this was put here]
					trigger pee-wisp-trigger;
				otherwise:
					if flav-said is 0, say "Your [urine] flows into your [ShortDesc of K][unless K is fluid immune or K is diaper], soaking it[end if].";
					UrineSoakUp K by 1;
					if X is 1:
						if K is diaper and there is a worn I love my wet nappies T-shirt and the diaper addiction of the player > 10, appropriate-cutscene-display figure of wet nappies diaper cutscene 1;
						if K is cursed diaper and the location of the player is toilets, appropriate-cutscene-display figure of toilet diaper cutscene 1;
						if K is diaper and the location of the player is UrinalBlindfolded and the class of the player is human toilet, appropriate-cutscene-display figure of human toilet diaper cutscene 1;
						if K is diaper and rattle is worn and the raw-magic-modifier of rattle < 3:
							say "Your rattle glows blue for a moment! It feels more powerful.";
							increase the raw-magic-modifier of rattle by 1;
					let sK be a random worn bottom level soakable pee protection clothing;
					if K is not sK and X < N: [We now need to soak past the original thing we were urinating into and this isn't the last unit of urine]
						say urinationoverflow of K;
						if diaper quest is 1 and overflowed is 0, progress quest of priestess-service-quest;
						now overflowed is 1;
						if diaper lover >= 1 and delayed urination is 0 and the player is not in a predicament room:
							let H be a random off-stage victorian-baby-bonnet;
							if H is actually summonable:
								say "[bold type]As your [ShortDesc of K] overflows, you feel your head suddenly surrounded by soft silky fabric. You're now wearing a large pink baby's bonnet![roman type][line break]";
								summon H cursed;
						now K is sK;
						trigger pee-wisp-trigger;
					otherwise if K is diaper-stack and diaper quest is 1 and X is N:
						let dK be entry 1 in the list of stacked diapers;
						if the total-soak of dK >= the soak-limit of dK, progress quest of priestess-service-quest; [only the innermost diaper needs to be full]
				now flav-said is 1;
			if totalOverflow > 0, AnnouncedExpel urine on thighs by totalOverflow.

To compute urination:
	if (there is a camera trap in the location of the player and refractoryperiod < maxrefractoryperiod) or there is a camera-bystander in the location of the player, now target-poster is a random off-stage wetting poster;
	otherwise now target-poster is nothing;
	if seconds is 0, allocate 6 seconds;
	if the player is not pee protected or the player is able to use a toilet:
		if the player is flying:
			say "You continue to urinate onto the ground below.";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
		otherwise if the player is able to use a toilet:
			if the location of the player is toilets:
				say "You continue to use the toilet.";
			otherwise:
				say "You continue to use the urinal.";
		otherwise if the player is able to use a body of water:
			say "You continue to pee into the water. ";
		otherwise if gloryhole is grabbing the player and gloryhole is blowjob portal:
			FaceFill urine by 3;
		otherwise if gloryhole is grabbing the player and gloryhole is normal glory hole:
			do nothing;
		otherwise if diaper quest is 1 and the player is in Iron Maiden:
			say "Your [urine] continues to soak into the thick Iron Maiden padding.";
		otherwise:
			say "Your [urine] continues to [if the player is possessing a vagina and the player is dildo stuck]trickle around the dildo and down your thighs.[otherwise if playerRegion is Dungeon]flow to the ground, creating a puddle on the floor.[otherwise]flows to the ground.[end if]";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
				punish puddle pissing;
	otherwise:
		let old-overflow be overflowed;
		compute pee protected urination;
		if old-overflow is 0 and overflowed is 1, say PeeReaction 3; [Player began to leak, NPCs will be unimpressed]
		let K be a random bottom level pee protection clothing;
		if K is not diaper and diaper lover >= 1 and the bladder of the player <= 6:
			let N be a random off-stage unique nightie;
			if N is actually summonable and a random number between 1 and 6 - (unlucky * 4) is 1:
				summon N cursed with quest;
				now N is bed wetting;
				compute quest of N;
				say "[bold type]As you finish peeing, a flimsy [ShortDesc of N] shimmers into existence around you![roman type][line break][variable custom style]Because I wet myself?[roman type][line break]";
	if the diaper addiction of the player >= 14 and there is a worn total protection diaper:
		let DA be the delayed arousal of the player;
		passively stimulate vagina;
		if DA < the delayed arousal of the player, say "Your arousal grows.";
	if the bladder of the player > 6:
		decrease the bladder of the player by 6;
		now another-turn is 1;
		add the urination continues rule to another-turn-rules, if absent;
	otherwise:
		end urination.

To end urination:
	now player-urinating is 0;
	force clothing-focus redraw; [This forces the clothing window to redraw]
	update appearance level;
	if target-poster is a wetting poster:
		if the old-peereaction of target-poster > 0:
			let Y be a random camera trap in the location of the player;
			if Y is not a thing, now Y is a random camera-bystander in the location of the player;
			say "[FlashFlav of Y]";
			if Y is camera trap, say "It was in a perfect position to capture a full shot of you peeing.";
			say "[one of][line break][variable custom style][if the humiliation of the player < HUMILIATION-SHAMELESS - 1000]Oh no! No no no! Not one of me peeing! Fuck.[otherwise]Now everyone will know what a pervert I am.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][line break][second custom style]I bet that pic looks FILTHY![end if][stopping][roman type][line break]";
			set up target-poster;
	let T be a random worn I love my wet nappies T-shirt;
	if T is clothing and diaper lover >= 1 and the player is not in a predicament room:
		let D be a random eligible diaper;
		if there is a worn diaper:
			if T is cursed and the urine-soak of a random worn diaper is 0 or the urine-soak of a random worn diaper is the soak-limit of a random worn diaper:
				say "[bold type]Your [ShortDesc of T] [bold type]seems to uncurse itself.[line break][variable custom style]I guess I'm finally allowed to change my diaper?[roman type][line break]";
				bless T;
			otherwise if T is not cursed:
				say "[bold type]Your [ShortDesc of T] [bold type]seems to curse itself - it seems very eager to stay on your body right now![roman type][line break]";
				now T is cursed;
		otherwise if D is actually summonable and the player is not able to use a body of water: [Don't want it getting summoned and therefore the player somehow hasn't actually entered the body of water!]
			say "[bold type]Your [ShortDesc of T] [bold type]summons a diaper onto your crotch! It doesn't seem happy that you weren't wearing one when you peed...[roman type][line break]";
			summon D cursed with quest;
	if player-currently-resting is 1 and diaper lover >= 1:
		if there is a worn tattoo and bed-wetter tattoo is not worn and a random number between 1 and 2 is 1:
			summon bed-wetter tattoo;
			say "A tattoo appears on you that says 'BED WETTER'.[line break][variable custom style][if the diaper addiction of the player < 10]I can't believe this! The fuck![otherwise if the diaper addiction of the player < 14]I can't deny it's true...[otherwise]I am a naughty bedwetter, and now everyone will know that![end if][roman type][line break]";
	if debugmode is 1, say "resetting accidental urination flag.";
	now delayed urination is 0;
	now the bladder of the player is 0;
	if the player is able to automatically masturbate and the player is horny and the player is not in danger and there is a worn total protection diaper and the diaper addiction of the player >= a random number between 15 and 19:
		say "You are so turned on... you really want to masturbate!";
		now auto is 1;
		try masturbating;
		now auto is 0;
		if the player is horny and wanking is 0, say "You overcome your urge and behave yourself.";
	if the player is able to use a body of water and water-peeing is true:
		try showering water-body;
		now water-peeing is false;
	let TP be a random worn training pants;
	if TP is training pants and there is a worn T-shirt:
		let D be a random plentiful eligible diaper;
		if D is diaper, transform TP into D;
	unless gloryhole is grabbing the player:
		if there is worn temporarily-displaced clothing, say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
		repeat with C running through temporarily-displaced clothing:
			if C is worn:
				if C is crotch-unzipped, ZipUp C;
				otherwise Replace C;
			now C is not temporarily-displaced.

Understand "pee", "piss", "urinate", "wee" as urinating.

To say urinationoverflow of (K - a clothing):
	say "But your [ShortDesc of K] [if K is fluid immune]is waterproof, so the [urine] seeps through the leg-holes[otherwise]became so thoroughly sodden that the [urine] seeps through the fabric[end if].".

To say urinationoverflow of (K - a diaper):
	say "But your poor diaper is so completely full for your [urine] that it can't hold any more! You feel the diaper overflow through the leg holes.".

To punish puddle pissing:
	if playerRegion is Woods and the player is prone:
		let H be a random off-stage puppy ears;
		if H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly, a [H][bold type] appear on your head![if the bimbo of the player < 9][line break][variable custom style]Oh no... I this because I was peeing like a dog?[end if][roman type][line break]";
	check urine maidification.

To check (L - a liquid-object) maidification:
	unless the player is in a predicament room:
		if the class of the player is maid:
			say "[bold type]Your [ShortDesc of a random worn headgear] causes you to feel deep shame at causing messes rather than cleaning them![roman type][line break]";
			if (L is not urine or watersports fetish is 1) and bukkake fetish is 1 and a random number between 1 and 2 is 1:
				say "A bucket full of [L] appears above your head, and tips over, dousing you in the warm stuff.";
				AnnouncedSquirt L on hair by 50;
			otherwise if L is not urine or watersports fetish is 1:
				let N be the number of carried vessels;
				if N > 0:
					say "Your [if N is 1][ShortDesc of a random carried vessel] is[otherwise]drinking vessels are all[end if] filled to the brim with [L]!";
					repeat with V running through carried vessels:
						if L is semen, now the fill-colour of V is creamy;
						if L is urine, now the fill-colour of V is golden;
						if L is milk, now the fill-colour of V is white;
						if L is murkwater, now the fill-colour of V is murky;
						DoseFill V;
				compute service spill punishment;
			otherwise if the player is not bladder incontinent:
				say "You feel a twinge from behind your bladder, as if it is punishing you by making you gradually more incontinent...";
				SilentlyBladderIncontinenceUp 1;
		otherwise if (there is a worn maid headdress or (black maid headdress is off-stage and black maid headdress is not listed in the list of headgear recycling and black maid headdress is actually summonable)):
			compute maidification of pink-spraybottle.

To check pee leaking:
	check pee leaking with reason "".

player-just-leaked is initially false.
To check pee leaking with reason (T - a text):
	now player-just-leaked is false;
	if diaper lover > 0 and the player is not incontinent:
		let B be the bladder of the player;
		if B > 0 and T is not "", increase B by the expulsion weakness of the player;
		let I be bladder-squirty-level;
		if B > I:
			decrease B by I;
			let R be a random number between bladder-difficulty and B;
			if debuginfo > 0, say "[input-style]Pee leak check: bladder ([bladder of the player]) - continence rating ([I]) = [B] ---> RNG([bladder-difficulty] ~ [B]) = [R] | positive number[roman type][line break]";
			if R > 0:
				now player-just-leaked is true;
				compute pee leaking with reason T;

To compute pee leaking with reason (T - a text):
	if the bladder of the player > 0:
		let KSK be -1;
		let K be a random bottom level pee protection clothing;
		let CK be nothing;
		if K is clothing:
			now KSK is the total-soak of K;
			now CK is the concealer of K; [this is the thing that could have a pee stain]
			if CK is clothing, now KSK is the total-soak of CK;
		say bold type;
		if T is "", say "[one of]You spontaneously leak a little pee[or]All of a sudden, your bladder spasms and you squirt out a little wee[or]Completely beyond your control, your [if the player is possessing a penis][player-penis][otherwise]bladder[end if] lets out a squirt of pee[in random order]. ";
		otherwise say "[T] [one of]you squirt out a little bit of pee[or]you leak a little squirt of pee[or]your bladder muscles tense and accidentally let out a little pee[in random order]. ";
		say roman type;
		if K is clothing, AnnouncedExpel urine on K by 1;
		otherwise AnnouncedExpel urine on thighs by 1;
		decrease the bladder of the player by 1;
		let SK be K; [this is the thing that could have a pee stain]
		if CK is clothing and K is not currently visible, now SK is CK;
		if KSK is 0 and the total-soak of SK > 0, say "There is now a visible [if SK is diaper]yellow patch[otherwise]stain[end if] in the front of your [ShortDesc of SK].";
		compute sudden squirt into K disapproval.

To check full wetting:
	check full wetting with reason "".

To check full wetting with reason (T - a text):
	if the player is bladder incontinent and (temporary-bladder-incontinence is 0 or the bladder-incontinence of the player >= 8): [every single unit of pee immediately gets peed out unless it's temporary incontinence]
		if the bladder of the player > 0, now delayed urination is 1;
	otherwise:
		let I be bladder-risky-level;
		let B be bladder-bursting-level; [difference between bladder and risky level]
		let resting-wetter be 0;
		if T is not "", now resting-wetter is the expulsion weakness of the player;
		if player-currently-resting is 1 and (there is a worn bed wetting clothing or bed-wetter tattoo is worn) and the bladder of the player > 2, now resting-wetter is 3;
		if the player is in Iron Maiden, now resting-wetter is 5;
		if B >= 0 or resting-wetter > 0:
			if resting-wetter > 0 and B < resting-wetter, now B is resting-wetter; [bed wetters always have a high chance of wetting while resting]
			let R be (a random number between bladder-difficulty and B) + (a random number between bladder-difficulty and B);
			if debuginfo > 1, say "[input-style]Automatic wetting check: [if resting-wetter > 0 and B is resting-wetter]magic bed wetting effect ([resting-wetter])[otherwise]bladder ([bladder of the player]) - continence rating ([I]) = [B][end if] ---> RNG([bladder-difficulty] ~ [B]) + RNG([bladder-difficulty] ~ [B]) = [R] | positive number[roman type][line break]";
			if R > 0 and the bladder of the player > 0:
				now delayed urination is 1;
				now delayed urination flav is T;
			otherwise if the player is bursting and (R is 0 or the remainder after dividing time-earnings by 120 < time-seconds): [Once every now and then we reward the player for holding it while it's risky]
				progress quest of bursting-quest.

To check pee pressure:
	check pee pressure with reason "".

To check pee pressure with reason (T - a text):
	if player-urinating is 0:
		check full wetting with reason T;
		if delayed urination is 0, check pee leaking with reason T.

Definition: yourself is able to use a body of water:
	if delayed urination is 1 or the player is pee protected, decide no;
	if there is a lake monster in the location of the player, decide no;
	if the location of the player is water-bodied, decide yes;
	decide no.

[
Pee Reaction Numbers:
0: Non-humiliating urination into toilet or body of water
1: Urination onto ground
2: Urination into diaper
3: Urination into other clothing
]

[!<SayPeeReaction0>+

Urination into body of water

+!]
To say PeeReaction (N - 0):
	let M be a random reactive monster;
	if M is monster:
		say WaterBodyPeeDeclaration of M;
		repeat with Z running through reactive monsters:
			strongHumiliate;
			say WaterBodyPeeReaction of Z;
	otherwise:
		say "You sigh pleasantly, and now feel much more comfortable.".

To say WaterBodyPeeDeclaration of (M - a monster):
	say "[if the player is not disgraced]You squirm uncomfortably, not used to anyone watching you, never mind [NameDesc of M].[otherwise]You hang your head submissively, not looking [NameDesc of M] in the eyes.[end if]".

To say WaterBodyPeeReaction of (M - a monster):
	say "[BigNameDesc of M] frowns with distaste.[line break][speech style of M]'[one of]Disgusting[or]Gross[or]Ugh[in random order]! [one of][if M is interested]You couldn't wait until we had parted ways[otherwise]I can't believe you'd do that with me standing here... Did you think I was deaf or something[end if][or]Do you enjoy peeing in front of [if M is buddy]friends[otherwise]strangers[end if] or something[or]I'm standing right here, and you just start going to the toilet like that[in random order]?!'[roman type][line break]";
	unless M is staff member, FavourDown M with consequences.

[!<SayPeeReaction1>+

Urination onto ground

+!]
To say PeeReaction (N - 1):
	let M be a random monster penetrating a body part;
	if M is monster:
		if M is intelligent or the number of reactive monsters is 0:
			say GroundPeeSexDeclaration of M;
		otherwise:
			let M2 be a random reactive monster;
			say GroundPeeSexDeclaration of M2;
		repeat with Z running through reactive monsters:
			obsceneHumiliate;
			if Z is penetrating a body part or Z is grabbing the player, say GroundPeeSexReaction of Z;
			otherwise say GroundPeeReaction of Z;
	otherwise:
		now M is a random reactive monster;
		if delayed urination is 0: [Purposeful urination]
			if M is monster:
				say GroundPeeDeclaration of M;
				repeat with Z running through reactive monsters:
					strongHumiliate;
					say GroundPeeReaction of Z;
			otherwise if playerRegion is Woods:
				say "You sigh pleasantly, and now feel much more comfortable. ";
			otherwise:
				say "[variable custom style][if the humiliation of the player < HUMILIATION-MODEST - 1000 and playerRegion is Dungeon]How embarrassing! I need to find a toilet next time.[otherwise][one of]This isn't even the most humiliating thing I've been through today.[or]Ahh, sweet release.[stopping][end if][roman type][line break]";
		otherwise: [Accidental urination]
			if M is monster:
				say GroundPeeDeclaration of M;
				repeat with Z running through reactive monsters:
					severeHumiliate;
					say GroundPeeReaction of Z;
			otherwise if M is in the Woods:
				say "You sigh pleasantly, and now feel much more comfortable. ";
			otherwise:
				say "[variable custom style][if the humiliation of the player < HUMILIATION-MODEST - 1000 and playerRegion is Dungeon]How embarrassing! I need to find a toilet next time.[otherwise][one of]This isn't even the most humiliating thing I've been through today.[or]Ahh, sweet release.[stopping][end if][roman type][line break]";
				moderateHumiliate;
	strongHumiliate;
	if target-poster is a poster:
		now old-monster of target-poster is M;
		now old-peereaction of target-poster is N.

To say GroundPeeDeclaration of (M - a monster):
	if delayed urination is 0: [Voluntary urination]
		say "[if the humiliation of the player < HUMILIATION-DISGRACED + 3500]You shudder in shame as you allow [NameDesc of M] to watch you.[otherwise]You hang your head submissively, not looking [NameDesc of M] in the eyes.[end if]";
	otherwise: [Accidental urination]
		if the humiliation of the player < HUMILIATION-DISGRACED + 3500, say "[if the player is able to speak][line break][variable custom style]'Eek! Don't watch!'[roman type][line break][end if]You stay still like a deer in headlights as [NameDesc of M] watches you pee.";
		otherwise say "You shudder[if the humiliation of the player < HUMILIATION-BROKEN], finding that the humiliation of [NameDesc of M] seeing you lose control is actually turning you on[otherwise] with a weird mixture of shame and pleasure[end if].".

To say GroundPeeReaction of (M - a monster):
	if M is intelligent:
		say "[speech style of M]'[one of]Gross[or]Disgusting[or]Ugh[in random order]. [if diaper quest is 1][one of]Are you sure you don't need diapers?!'[or]This wouldn't happen if you were kept in diapers, you know.'[or]Do your parents know that you still pee on the floor?!'[in random order][otherwise][one of]Can't you find a toilet to do that?!'[or]Next time use a toilet, you tramp!'[or]How shameless do you have to be to urinate on the floor in front of others?!'[in random order][end if][roman type][line break]";
		FavourDown M;
		if diaper quest is 1:
			now M is diaper-committed;
			interest M;
			if M is friendly and M is not student and M is not staff member:
				anger M;
				say BecomesAggressive of M.

To say GroundPeeSexDeclaration of (M - a monster):
	if the humiliation of the player < HUMILIATION-DISGRACED + 3500, say "[if the player is able to speak][line break][variable custom style]'Oh god, not now!'[roman type][line break][end if]You are brought to tears in shame as you are forced to let go right in front of [NameDesc of M].";
	otherwise say "[BrokenPeeFlav during sex with M]".

To say GroundPeeSexReaction of (M - a monster):
	say GroundPeeReaction of M.

[!<SayPeeRection2>+

Urination into diaper

+!]
To say PeeReaction (N - 2):
	let M be a random reactive monster;
	let D be a random worn diaper;
	if M is a monster:
		say DiaperDeclaration of M;
		if diaper-reaction-said is true: [NPCs are aware that the player is wetting themselves]
			repeat with Z running through reactive monsters:
				now diaper-reaction-said is true;
				say DiaperReaction of Z;
	otherwise if delayed urination is 0:
		say "[if the diaper addiction of the player < 7][line break][first custom style][one of]I guess if I'm wearing it, I might as well use it.[or]This isn't sexy, but I guess it's practical.[or]I will not be telling my friends this part of the story when I get home.[in random order][otherwise if the diaper addiction of the player < 12]You put your hands on the front of the diaper so that you can feel the warmth spread outwards.[line break][variable custom style][one of]Why does it feel so good?[or]The warmth is really nice against my skin...[or]Diapers are pretty cool, I guess.[or]That was so much easier than having to find a loo![in random order][otherwise]As you pee, your eyes roll to the back of your head in pleasure.[line break][second custom style][one of]I love my diaper so much![or]It feels so good![or]I'm such a good [boy of the player]![or]Mmmmm, yes!!![in random order][end if][roman type][line break]";
	otherwise:
		say "[if the diaper addiction of the player < 7][line break][first custom style][one of]Oh shit! Well I guess I'm glad I was wearing this thing.[or]This isn't sexy! But, I guess it is necessary, evidently...[or]Crap! I guess I really do need diapers right now.[in random order][otherwise if the diaper addiction of the player < 12][line break][variable custom style][one of]This diaper is coming in really useful![or]I could get used to this feeling.[or]I don't even need to pay attention to my bladder![or]That was so much easier than having to find a loo![in random order][otherwise if the bladder-incontinence of the player > 5][line break][second custom style][one of]*giggle*, that was easy![or]So calming...[or]I hardly felt that one. Maybe soon I won't feel myself going at all![in random order][otherwise][line break][second custom style][one of]*giggle*, that was fun![or]Again again![or]Ooh I just LOVE that feeling![in random order][end if][roman type][line break]";
	if target-poster is a poster:
		now old-monster of target-poster is M;
		now old-peereaction of target-poster is N;
	now diaper-reaction-said is true.

To say DiaperDeclaration of (M - a monster):
	if diaper-reaction-said is true:
		let D be a random worn diaper;
		if D is not currently visible or (D is diaper-stack and entry (number of entries in the list of stacked diapers) in the list of stacked diapers is dry diaper): [Player managed to stealth-pee]
			now diaper-reaction-said is false;
			if the player is not disgraced:
				say "You [if delayed urination is 1]freeze in place and [end if]try as hard as possible to act casual, to prevent [NameDesc of M] from knowing what you are doing.[if the diaper addiction of the player < 7][line break][first custom style][one of]Next time, I'm NOT going this in front of anyone! It's way too scary.[or]Am I making any noise? Eek![or]Am I holding my body weirdly?[in random order][otherwise][line break][variable custom style][one of]I'm a diaper ninja![or]This is intense, but fun.[or]I wonder what I'd say if I got caught?[in random order][end if][roman type][line break]";
			otherwise if the player is not shameless:
				say "You [if delayed urination is 1]freeze in place and [end if]try to act casual, but you can't help but stare at [NameDesc of M] coyly, tempting fate to get you caught.[if the diaper addiction of the player < 9][line break][first custom style][one of]What am I doing?![or]Why can't I stop myself?![or]Oh my god, I need to get myself under control![in random order][otherwise][line break][variable custom style][one of]I'm a diaper ninja![or]Come on, say something![or]Next time, I'm going to make it even more obvious![in random order][end if][roman type][line break]";
			otherwise if the player is able to speak:
				say "You stare directly at [NameDesc of M].[line break][variable custom style]'[one of][if the intelligence of the player < 6][NameBimbo] is going tinkles!'[otherwise]Can you guess what I'm doing right now?'[end if][or]Please watch me as I pee in my diaper!'[or]I'm peeing right now, and it feels so good!'[in random order][roman type][line break]";
				now diaper-reaction-said is true; [The player ruined their own game. The NPC knows to react because they were told to.]
			progress quest of stealth-diaper-quest;
		otherwise: [Diaper is fully visible, NPCs can see it]
			now diaper-reaction-said is true;
			if the player is not disgraced:
				say "You [if delayed urination is 1]freeze in place and [end if]try as hard as possible to act casual, to prevent [NameDesc of M] from knowing what you are doing. But you feel extremely paranoid that [he of M] knows anyway.[line break][variable custom style][one of]The front of my diaper is turning yellow![or][big he of M][']ll be able to see it turning yellow![or]It's no good, [he of M] can see it getting soggy at the front![in random order][roman type][line break]";
				now diaper-reaction-said is false;
			otherwise if the player is not shameless:
				say "You [if delayed urination is 1]freeze in place and [end if]stare at [NameDesc of M] coyly, drawing [his of M] attention down to your rapidly dampening diaper.[if the diaper addiction of the player < 9][line break][first custom style][one of]What am I doing?![or]Why do I want [him of M] to notice?![in random order][otherwise][line break][variable custom style][one of]I'm so naughty![or]Come on, say something![or]That's right, down here! Now watch me wet myself![in random order][end if][roman type][line break]";
			otherwise if the player is able to speak:
				say "You stare directly at [NameDesc of M].[line break][variable custom style]'[one of][if the intelligence of the player < 6][NameBimbo] is going tinkles!'[otherwise]Watch me wet myself!'[end if][or]Please watch me as I pee in my diaper!'[or]Are you watching me wet myself?'[in random order][roman type][line break]".

[!<SayPeeReaction3>+

Urination into non-diaper clothing

+!]
To say PeeReaction (N - 3):
	let M be a random awake monster penetrating a body part;
	let K be a random bottom level pee protection clothing;
	if diaper-reaction-said is true: [Some situations e.g. messing don't require extra NPC reaction flavour]
		if M is monster:
			if the humiliation of the player < HUMILIATION-DISGRACED + 3500, say "[if the player is able to speak][line break][variable custom style]'Oh god, not now!'[roman type][line break][end if]You are brought to tears in shame as you are forced to let go into your [K] right in front of [NameDesc of M].";
			otherwise say "[BrokenPeeFlav during sex with M]";
			obsceneHumiliate;
		otherwise:
			now M is a random reactive monster;
			if delayed urination is 0: [Purposeful urination]
				if M is monster:
					say ClothesPeeDeclaration of M;
					repeat with Z running through reactive monsters:
						say ClothesPeeReaction of Z;
						say severeHumiliateReflect;
				otherwise:
					unless K is WC-plug-panties, say "[one of][line break][variable custom style]Yuck.[or][variable custom style]Eww![or][if the bimbo of the player > 9][line break][second custom style]Uh-oh, I'm a bad girl![otherwise][line break][first custom style]Err, whoops.[end if][purely at random][roman type][line break]";
			otherwise: [Accidental urination]
				if M is monster:
					say ClothesPeeDeclaration of M;
					repeat with Z running through reactive monsters:
						say ClothesPeeReaction of Z;
						say strongHumiliateReflect;
				otherwise:
					unless K is WC-plug-panties, say "[one of][line break][variable custom style]Err, whoops![or][if saved-flat-intelligence < 6][line break][second custom style]Uh-oh, I had a little accident![otherwise][line break][first custom style]I can't believe I just let that happen...[end if][or][variable custom style]I guess I should try and find a toilet next time...[purely at random][roman type][line break]";
					severeHumiliate;
		humiliate 275;
	if target-poster is a poster:
		now old-monster of target-poster is M;
		now old-peereaction of target-poster is N.

To say ClothesPeeDeclaration of (M - a monster):
	if delayed urination is 0: [Voluntary urination]
		say "[if the humiliation of the player < HUMILIATION-SHAMELESS - 2000]You shudder in shame as you allow [NameDesc of M] to watch you.[otherwise]You hang your head submissively, not looking [NameDesc of M] in the eyes.[end if]";
	otherwise: [Accidental urination]
		if the humiliation of the player < HUMILIATION-SHAMELESS - 2000, say "[if the player is able to speak][line break][variable custom style]'Eek! Don't watch!'[roman type][line break][end if]You stay still like a deer in headlights as [NameDesc of M] watches you wet yourself.";
		otherwise say "[BrokenPeeFlav during sex with M]".

To say ClothesPeeReaction of (M - a monster):
	if diaper quest is 1:
		if M is friendly:
			say "[BigNameDesc of M] frowns.[line break][speech style of M]'What are you doing?! It looks to me like you need diapers, little girl. I am very unimpressed.'[roman type][line break]";
			FavourDown M by 2;
			if M is unfriendly:
				say "[speech style of M]'Yes in fact, I think you need training. [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], baby!'[roman type][line break]";
				interest M;
				now M is diaper-committed;
		otherwise:
			say "[BigNameDesc of M] frowns angrily.[line break][speech style of M]'This is why you need to be in diapers!'[roman type][line break][if M is uninterested]Uh-oh...[end if]";
			interest M;
	otherwise:
		if M is interested, say "[BigNameDesc of M] frowns, but doesn't say anything.";
		otherwise say "[BigNameDesc of M] doesn't look at you directly or say anything, so it's hard to gauge [his of M] reaction.".

To say DiaperReaction of (M - a monster):
	let D be a random currently visible diaper;
	if D is not diaper and the player is not shameless and M is not concealment immune:
		say "You're confident that [NameDesc of M] has no idea [one of]what's happening underneath your clothes[or]that you're currently wetting yourself[or]that you're going to the toilet in your pants right in front of [him of M][at random].";
	otherwise if M is interested:
		say "[BigNameDesc of M] seems to give you an odd look, but doesn't say anything. [if the player is not shameless]Maybe [he of M] didn't notice?[otherwise][line break][variable custom style]I'm such a good [boy of the player]![roman type][line break][end if]";
	otherwise:
		say "[BigNameDesc of M] doesn't look at you directly or say anything, so it's hard to gauge [if the player is not shameless]if [he of M] could tell[otherwise][his of M] reaction[end if].".

To say BrokenPeeFlav during sex with (M - a monster):
	say "You shudder[if the humiliation of the player < HUMILIATION-BROKEN], finding that the humiliation of [NameDesc of M] seeing you lose control is actually turning you on[otherwise] with a weird mixture of shame and pleasure[end if].".

[This is where we process the fact that the player is wetting themselves this turn.]
This is the compulsory urination rule:
	if delayed urination is 1 and busy is 0:
		let diaper-happened be 0;
		if the player is diapered and (the player is not bursting or the player is bladder incontinent): [The player can be bursting and incontinent at the same time thanks to the prostate plug]
			let D be a random worn diaper;
			if the bladder of the player > 0 and the urine-soak of D + the bladder of the player <= the soak-limit of D: [The player always notices properly if the diaper overflows.]
				let bladder-before be the bladder of the player;
				let urine-before be the urine-soak of D;
				StealthUrineSoakUp D by the bladder of the player;
				now the bladder of the player is 0;
				if (bladder-before > 1 and the player is bladder diaper aware) or wetting-valued > 3:
					if delayed urination flav is "", say "A ";
					otherwise say "[delayed urination flav] a";
					say "warm wet feeling lets you know that you just [one of]used[or]went number one in[or]peed in[or]wet[at random] your diaper.[line break][variable custom style][if the diaper addiction of the player < 8][one of]Oh shit![or]Oh crap! Not again...[stopping][otherwise if the diaper addiction of the player < 12][one of]Uh-oh.[or]Oh dear, it looks like I really am incontinent![stopping][otherwise][one of]Wearing this diaper means I never have to worry about my bladder![or]This is great! I just need to make sure I don't run out of diapers.[or]It feels nice and warm![or]Thank you Mr. Diaper![or]I can't imagine life without diapers![then at random][end if][roman type][line break]";
					if wetting-valued > 3, compute wetting failure;
					if a random number between 1 and 4 - (unlucky * 2) is 1 and D is not bed wetting:
						say "Your [D] glows softly. Something tells you it is now making you even more incontinent!";
						now D is bed wetting;
					DiaperAddictUp 1;
					progress quest of bursting-quest;
					progress quest of adult-baby-quest;
				otherwise if bladder-before > 1:
					SilentlyDiaperAddictUp 1;
					progress quest of bursting-quest;
					progress quest of adult-baby-quest;
				otherwise:
					say "You can feel that your diaper is [one of]slightly[or]a little[or]a tad[or]a tiny bit[in random order] [one of]heavier[or]wetter[or]more soggy[in random order] than before.";
					if the total-soak of D >= the soak-limit of D:
						progress quest of bursting-quest;
						progress quest of adult-baby-quest;
				if diaper quest is 1 and the total-soak of D >= the soak-limit of D, progress quest of priestess-service-quest;
				if D is not currently visible and there is an intelligent monster in the location of the player, progress quest of stealth-diaper-quest;
				if rattle is worn and the raw-magic-modifier of rattle < 4:
					say "Your rattle glows blue for a moment! It feels more powerful.";
					now the raw-magic-modifier of rattle is 4;
				now diaper-happened is 1;
		if diaper-happened is 0:
			if delayed urination flav is not "":
				say "[bold type][delayed urination flav] you completely lose control of your bladder.[roman type][line break]";
			otherwise if the player is bursting or diaper lover is 0:
				say "[bold type]You can't hold your bladder any more![roman type][line break]";
			otherwise:
				say "[bold type]A warm wet feeling makes you realise that you're currently peeing yourself.[roman type][line break]";
			let old-bladder be the bladder of the player;
			try urinating;
			if the bladder of the player < old-bladder, now another-turn is 1; [Urination successful. We can force a delayed turn without risking a loop.]
		otherwise:
			progress temporary incontinence;
		trigger wet-yourself-wisp-trigger;
		if debugmode > 1, say "resetting accidental urination flag.";
		now delayed urination flav is "";
		now delayed urination is 0.
The compulsory urination rule is listed in the compulsory action rules.

Urinating ends here.
