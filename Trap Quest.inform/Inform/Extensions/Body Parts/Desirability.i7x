Desirability by Body Parts begins here.

blowjob-slut is a number that varies.

pussy-slut is a number that varies.

butt-slut is a number that varies.

tit-slut is a number that varies.

targeted-body-part is an object that varies.

To decide which number is total desirability:
	let N be 0;
	repeat with B running through actual target body parts:
		unless B is presented-orifice and the number of actual target body parts > 1, increase N by the desirability of B;
	decide on N.

To choose a sex method:
	now targeted-body-part is nothing;
	if current-monster is butt slut immune:
		now targeted-body-part is a random actual target body part;
	otherwise:
		let targeting-RNG be a random number between 1 and total desirability;
		repeat with B running through actual target body parts:
			unless B is presented-orifice and the number of actual target body parts > 1:
				decrease targeting-RNG by the desirability of B;
				if targeting-RNG <= 0:
					now targeted-body-part is B;
					break.

Definition: a body part (called B) is most desirable:
	repeat with P running through body parts:
		if B is not P and the desirability of P >= the desirability of B, decide no;
	decide yes.

An all time based rule (this is the determining desirability rule):
	if diaper quest is 0:
		now the desirability of face is 5 + the number of worn oral sex themed wearthings;
		now the desirability of breasts is 0;
		now the desirability of asshole is 5;
		now the desirability of vagina is 0;
		now the desirability of penis is 0;
		now the desirability of belly is 0; [remember that belly = urination]
		if the largeness of breasts > 7:
			now the desirability of breasts is the largeness of breasts / 2;
			follow the tit slut eligibility rules;
		if the player is possessing a vagina:
			now the desirability of vagina is 5;
			follow the pussy slut eligibility rules;
		if the player is possessing a penis:
			now the desirability of penis is 5;
			follow the penis slut eligibility rules;
		if watersports fetish is 1:
			now the desirability of belly is 5;
			follow the piss slut eligibility rules;
		follow the butt slut eligibility rules;
		follow the blowjob slut eligibility rules;
		repeat with B running through body parts:
			if the desirability of B < 0, now the desirability of B is 0.

[!<YourselfIsATitSlut>+

Let's check if the player has a huge magical influence towards titfucks.

+!]
Definition: yourself is a tit slut:
	if the desirability of breasts >= 25 and breasts is most desirable, decide yes;
	decide no.

[!<titSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of titfucks.

*!]
the tit slut eligibility rules is a rulebook.

[!<YourselfIsABlowjobSlut>+

Let's check if the player has a huge magical influence towards oral sex.

+!]
Definition: yourself is a blowjob slut:
	if the desirability of face >= 25 and face is most desirable, decide yes;
	decide no.

[!<BlowjobSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of oral sex.

*!]
the blowjob slut eligibility rules is a rulebook.

[!<YourselfIsAPissSlut>+

Let's check if the player has a huge magical influence towards watersports.

+!]
Definition: yourself is a piss slut:
	if the desirability of belly >= 25 and belly is most desirable, decide yes;
	decide no.

[!<PissSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of watersports.

*!]
the piss slut eligibility rules is a rulebook.

[!<YourselfIsAPussySlut>+

Let's check if the player has a huge magical influence towards vaginal sex.

+!]
Definition: yourself is a pussy slut:
	if the desirability of vagina >= 25 and vagina is most desirable, decide yes;
	decide no.

[!<pussySlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of vaginal sex.

*!]
the pussy slut eligibility rules is a rulebook.

[!<YourselfIsAButtSlut>+

Let's check if the player has a huge magical influence towards anal sex.

+!]
Definition: yourself is a butt slut:
	if the desirability of asshole >= 25 and asshole is most desirable, decide yes;
	decide no.

[!<buttSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of anal sex.

*!]
the butt slut eligibility rules is a rulebook.

Definition: yourself is a penis slut:
	if the desirability of penis >= 25 and penis is most desirable, decide yes;
	decide no.

The penis slut eligibility rules is a rulebook.

Volume - Gropability

groping-person is a person that varies.
The gropability rules is a rulebook.

To decide which number is total gropability:
	let N be 0;
	repeat with B running through body parts:
		let G be the the gropability of B;
		if G > 0, increase N by G;
	decide on N.

[Definition: a body part (called B) is most gropable:
	repeat with P running through body parts:
		if B is not P and the gropability of P >= the gropability of B, decide no;
	decide yes.]

To update gropability:
	if diaper quest is 0:
		repeat with B running through body parts:
			now the gropability of B is 0;
		now the gropability of breasts is cleavage outrage + the breasts grope preference of groping-person;
		if the player is a tit slut, increase the gropability of breasts by 8;
		now the gropability of asshole is the asshole grope preference of groping-person;
		if the player is a butt slut, increase the gropability of asshole by 8;
		now the gropability of vagina is the vagina grope preference of groping-person;
		if the player is a pussy slut, increase the gropability of vagina by 8;
		now the gropability of penis is the penis grope preference of groping-person;
		if the player is a penis slut, increase the gropability of penis by 8;
		if penis is at least partially exposed, increase the gropability of penis by 10 - the size of penis;
		now the gropability of belly is the largeness of belly + the belly grope preference of groping-person;
		if the player is a piss slut, increase the gropability of belly by 8;
		now the gropability of face is the lewdly exposed outrage of face + the face grope preference of groping-person;
		if the player is a blowjob slut, increase the gropability of face by 8;
		now the gropability of thighs is 5 + the thighs grope preference of groping-person;
		now the gropability of hips is the thickness of hips + the total volume of hips + ass grope preference of groping-person;
		repeat with B running through body parts:
			if B is lewdly exposed:
				if B is fuckhole, increase the gropability of B by the openness of B / 2;
				unless B is face or B is hair, increase the gropability of B by 10;
			otherwise if B is at least partially lewdly exposed:
				if B is fuckhole, increase the gropability of B by the openness of B / 3;
				unless B is face or B is hair, increase the gropability of B by 5;
		follow the gropability rules;
		if there is worn rigid actually breast covering clothing, now the gropability of breasts is 0;
		if there is worn rigid belly covering clothing, now the gropability of belly is 0;
		if there is ass covering rigid clothing:
			now the gropability of asshole is 0;
		otherwise:
			let A be a random thing penetrating asshole;
			if A is anal beads and the player is not ass protected and (A is uncursed or groping-person is able to remove cursed plugs monster):
				if asshole is at least partially lewdly exposed, increase the gropability of asshole by 10; [beads can be pulled out, and this can be seen]
			otherwise if A is a thing:
				now the gropability of asshole is 0;
		if vagina is actually occupied or there is pussy covering rigid clothing, now the gropability of vagina is 0;
		repeat with B running through body parts:
			if the gropability of B < 0, now the gropability of B is 0.

To decide which number is the breasts grope preference of (M - a person):
	decide on 0.
To decide which number is the asshole grope preference of (M - a person):
	decide on 0.
To decide which number is the vagina grope preference of (M - a person):
	decide on 0.
To decide which number is the penis grope preference of (M - a person):
	decide on 0.
To decide which number is the belly grope preference of (M - a person):
	decide on 0.
To decide which number is the face grope preference of (M - a person):
	decide on 0.
To decide which number is the thighs grope preference of (M - a person):
	decide on 0.
To decide which number is the ass grope preference of (M - a person):
	decide on 0.

To decide which number is the groping threshold of (M - a person):
	decide on a random number between 10 and 20.
Definition: a person (called M) is groping:
	if grope-me-skirt is worn, decide yes;
	if diaper quest is 1, decide no;
	if M is monster and the times-met of M is 0, decide no;
	if M is interested-in-groping, decide yes;
	decide no.
Definition: a person (called M) is interested-in-groping:
	if groping-person is not M: [For efficiency, we only need to update gropability if the NPC we are looking at has changed this turn.]
		now groping-person is M;
		update gropability;
	let GT be the groping threshold of M;
	if debuginfo > 0, say "[input-style]Grope check: Total gropability ([total gropability]) | ([GT - 1].5) Groping threshold of [ShortDesc of M][roman type][line break]";
	if total gropability >= the groping threshold of M, decide yes;
	decide no.

specificBodyPartChosen is initially false.
To choose a grope target:
	if specificBodyPartChosen is false:
		now targeted-body-part is nothing;
		let targeting-RNG be a random number between 1 and total gropability;
		if debugmode > 1, say "Targeting RNG (d[total gropability]) = [targeting-RNG].";
		repeat with B running through body parts:
			let G be the gropability of B;
			if G > 0:
				if debugmode > 1, say "Checking if [B] (gropability [G]) is our randomly chosen target...";
				decrease targeting-RNG by G;
				if targeting-RNG <= 0 or G >= 100:
					if debugmode > 1, say "Chose [B]!";
					now targeted-body-part is B;
					break;
	now specificBodyPartChosen is false.

To compute grope of (M - a person):
	if current-predicament is team-scissor-lift-predicament and the player is in a predicament room and there is a student in the location of the player: [this is a bystander reacting to a player on a scissor lift tour]
		say "[speech style of M]'Holy shit[one of], look at those two sluts up there[or], I can see their tits and everything[or], what the fuck[or][stopping]!'[roman type][line break]";
	otherwise:
		let RF be refractoryperiod; [this is how we check if the player orgasmed from the grope]
		if groping-person is not M:
			now groping-person is M;
			update gropability;
		choose a grope target;
		let gropeSuccess be 1;
		if targeted-body-part is breasts:
			compute breasts grope of M;
			say BreastsGropeFlav of M;
			stimulate breasts from M;
			progress quest of titfuck-desirability-quest;
		otherwise if targeted-body-part is asshole:
			say AssholeGropeFlav of M;
			compute asshole grope of M;
			stimulate asshole from M;
		otherwise if targeted-body-part is vagina:
			say VaginaGropeFlav of M;
			compute vagina grope of M;
			stimulate vagina from M;
		otherwise if targeted-body-part is penis:
			say PenisGropeFlav of M;
			compute penis grope of M;
			stimulate penis from M;
		otherwise if targeted-body-part is belly:
			compute belly grope of M;
			say BellyGropeFlav of M;
			stimulate belly from M;
		otherwise if targeted-body-part is face:
			compute face grope of M;
			stimulate face from M;
		otherwise if targeted-body-part is thighs:
			compute thighs grope of M;
			say ThighsGropeFlav of M;
			stimulate thighs from M;
		otherwise if targeted-body-part is hips:
			compute ass grope of M;
			say AssGropeFlav of M;
			stimulate hips from M;
			repeat with ST running through worn sex toys penetrating a fuckhole:
				compute gripping of ST;
		otherwise:
			now gropeSuccess is 0;
		if targeted-body-part is body part:
			if debugmode is 1, say "Reacting to a grope on [targeted-body-part] ([gropability of targeted-body-part] gropability out of a total of [total gropability]).";
			if refractoryperiod > RF, compute grope orgasm reaction of M;
			otherwise compute grope reaction of M;
		if M is unfriendly monster:
			bore M;
			say "[BigNameDesc of M] seems satisfied, for now...".

To compute seduction grope of (M - a monster):
	let RF be refractoryperiod; [this is how we check if the player orgasmed from the grope]
	if groping-person is not M:
		now groping-person is M;
		update gropability;
	choose a grope target;
	if targeted-body-part is breasts:
		compute breasts grope of M;
		stimulate breasts from M;
		progress quest of titfuck-desirability-quest;
	otherwise if targeted-body-part is asshole:
		compute asshole grope of M;
		stimulate asshole from M;
	otherwise if targeted-body-part is vagina:
		compute vagina grope of M;
		stimulate vagina from M;
	otherwise if targeted-body-part is penis:
		compute penis grope of M;
		stimulate penis from M;
	otherwise if targeted-body-part is belly:
		compute belly grope of M;
		stimulate belly from M;
	otherwise if targeted-body-part is face:
		compute face grope of M;
		stimulate face from M;
	otherwise if targeted-body-part is thighs:
		compute thighs grope of M;
		stimulate thighs from M;
	otherwise if targeted-body-part is hips:
		compute ass grope of M;
		stimulate hips from M;
	if targeted-body-part is body part:
		if refractoryperiod > RF, compute grope orgasm reaction of M.

To say BreastsGropeFlav of (M - a person):
	if M is not unintelligent monster, say "[speech style of M]'[one of]My my my, what a lovely pair!'[or]These funbags are just begging to be played with!'[or]Do you really expect people to just leave these alone when you walk around looking like this?'[or]Wow, today is my lucky day!'[or]Whoops, my hands must have slipped...'[or]Honk honk!'[in random order][roman type][line break]".
To compute breasts grope of (M - a person):
	say "[BigNameDesc of M] [one of]roughly[or]lewdly[or]eagerly[in random order] [one of]grabs[or]molests[or]gropes[or]squeezes[in random order] your [ShortDesc of breasts] with both hands[unless there is worn rigid actually nipple covering clothing], making sure to tweak your nipples hard[end if]!".

To say AssholeGropeFlav of (M - a person):
	if M is not unintelligent monster:
		let A be a random uncursed anal beads penetrating asshole;
		if A is nothing and M is able to remove cursed plugs monster, now A is a random anal beads penetrating asshole;
		say "[speech style of M]'[if A is anal beads][one of]How many beads have you got stuffed up your asshole, [slut]?'[or]What happens if I pull on this, hmm?'[or]This is much too inviting...'[in random order][otherwise if asshole is lewdly exposed][one of]I can see the entirety of your butthole[or]Your asshole is on complete display[in random order][one of], you know.'[or]. How... inviting.'[or], [slut].'[or]...'[or]. Disgraceful!'[in random order][otherwise if asshole is at least partially lewdly exposed][one of]I can see your butthole, you know.'[or]Your asshole is insufficiently protected right now, wouldn't you say?'[or]Why can I catch glimpses of this? You must be a real [slut]...'[in random order][otherwise][one of]Gotcha!'[or]Whoops, my finger slipped.'[or]I bet a [slut] like you loves anal!'[in random order][end if][roman type][line break]".
To compute asshole grope of (M - a person):
	let C be a random top level ass protection clothing;
	let S be a random worn skirted crotch-in-place clothing;
	let A be a random uncursed anal beads penetrating asshole;
	if A is nothing and M is able to remove cursed plugs monster, now A is a random anal beads penetrating asshole;
	say "[BigNameDesc of M] [one of]deftly[or]quickly[in random order] [if S is clothing and S is not C][one of]snakes[or]shoots[or]sneaks[in random order] a hand up under your [ShortDesc of S] and [end if][if C is clothing][one of]prods at[or]pokes[or]tickles[or]pushes against[in random order] your [asshole] through your [ShortDesc of C] with a wiggling finger[otherwise if A is a thing]pulls at the hook at the end of your anal beads[otherwise][one of]pushes[or]wiggles[or]slides[or]shoves[in random order] a finger into your [asshole][end if]!";
	if A is a thing:
		let N be the notch-taken of A;
		let R be a random number between 1 and N;
		if R > 3, now R is 3;
		say "[if R is 1]One [PlugSize the size of A] bead is[otherwise][R] [PlugSize the size of A] beads are[end if] roughly pulled out of your [asshole]!";
		decrease the notch-taken of A by R;
		ruin asshole times (R + 1) / 2;
		if the notch-taken of A <= 0:
			now A is in the location of the player;
			dislodge A;
			say "The [A] falls to the ground.";
		force immediate inventory-focus redraw.

To say VaginaGropeFlav of (M - a person):
	if M is not unintelligent monster, say "[speech style of M]'[if vagina is lewdly exposed][one of]Your [cunt] is on display[or]You're showing me your [pussy][in random order][one of], eh? Is that an invitation?'[or]. Most people would take that to mean you want to fuck...'[or], [slut].'[or]...'[or]. Disgraceful!'[in random order][otherwise if vagina is at least partially lewdly exposed][one of]My my, what can I spy, between a pair of saucy thighs?'[or]Is this really your [pussy] I can see the outline of down here?'[or]Did I just catch a glimpse of your [pussy]?'[in random order][otherwise][one of]Your [pussy] is calling to me, [slut]...'[or]Are you wet down there? I bet you're wet down there.'[or]When you walk around looking like that, you're asking for this.'[in random order][end if][roman type][line break]".
To compute vagina grope of (M - a person):
	let C be a random top level protection clothing;
	let S be a random worn skirted crotch-in-place clothing;
	say "[BigNameDesc of M] [one of]deftly[or]quickly[in random order] [if S is clothing and S is not C][one of]snakes[or]shoots[or]sneaks[in random order] a hand up under your [ShortDesc of S] and [end if][if C is clothing][one of]prods at[or]pokes[or]tickles[or]pushes against[in random order] your [vagina] through your [ShortDesc of C] with a wiggling finger[otherwise][one of]pushes[or]wiggles[or]slides[or]shoves[in random order] a finger into your [vagina][end if]!".

To say PenisGropeFlav of (M - a person):
	if M is not unintelligent monster:
		if penis is lewdly exposed:
			say "[speech style of M]'[if the size of penis < 4][one of]Aww, your little [sissy-penis] looks so cute!'[or]Hello, little guy!'[or]Oh my god, how adorable is this little thing!'[or]Why is this little thing hanging out and about? You have NOTHING to be proud of!'[in random order][otherwise if the size of penis < 7][one of]Is this supposed to impress me?'[or]I'm not sure why you're keeping this thing on display, it's nothing special...'[or]Oh hello, is someone happy to see me?'[in random order][otherwise if the size of penis < 9][one of]Well hello big [boy of the player]. Now THIS is a penis!'[or]Oooh, now this is a dick I could find some use for...'[or]Hmph. You must think you're quite the stud with this thing, huh?'[in random order][otherwise][one of]Holy SHIT...'[or]I can see why you keep this thing on show. Bloody hell. I'm getting turned on...'[or]Fucking hell, is this real?!'[in random order][end if][roman type][line break]";
		otherwise if penis is at least partially lewdly exposed:
			say "[speech style of M]'[if the size of penis < 4][one of]Aww, is that your little [sissy-penis] I can see down there?'[or]Hello, little guy! I spy you down there!'[or]I spy a tell-tale itty-bitty bump!'[or]Uh-oh, do I detect that someone has a tiny little [sissy-penis] trying to hide down there?'[in random order][otherwise if the size of penis < 7][one of]You should be hiding this thing a bit better. It's nothing to be proud of.'[or]What's this I can spy down here?'[or]Oh hello, is someone happy to see me?'[in random order][otherwise if the size of penis < 9][one of]Well hello big [boy of the player]. You're not hiding very well, are you?'[or]Oooh, now that is a nice big bulge...'[or]You look like you want to come out to play, big [boy of the player]...'[in random order][otherwise][one of]Holy SHIT...'[or]I can't keep my eyes away from that bulge!'[or]Fucking hell, is that real?!'[in random order][end if][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Let's find out what you're packing down here...'[or]I'm interested... how big is it?'[or]I wonder...'[in random order][roman type][line break]".
To compute penis grope of (M - a person):
	let C be a random top level protection clothing;
	let S be a random worn skirted crotch-in-place clothing;
	say "[BigNameDesc of M] [one of]deftly[or]quickly[in random order] [if S is clothing and S is not C][one of]snakes[or]shoots[or]sneaks[in random order] a hand up under your [ShortDesc of S] and [end if][one of]strokes[or]rubs[or]tickles[or]flicks[in random order] your [player-penis][if C is clothing] through your [ShortDesc of C][end if]!".

To say BellyGropeFlav of (M - a person):
	if M is not unintelligent monster:
		if the pregnancy of the player > 0 and the pregnancy of the player < 3:
			say "[speech style of M]'[if the largeness of belly > 10][one of]What in the world did you mate with, you crazy [whore]?'[or]What in [Azathot]'s name are you pregnant with?! What creatures have you been letting fuck you?! You're an even bigger slut than I realised.'[in random order][otherwise if the largeness of belly > 3][one of]Couldn't keep your legs together, eh? Well, this is what happens. Or did they never teach you that in school?'[or]Naughty Mommy must have done naughty things to get knocked up! What a [slut]!'[or]Well well well. Looks like someone should have used a condom.'[or]If you spread your [cunt] wide for every Tom, Dick, or Harry that wants a shag then this is what you get, you know.'[in random order][otherwise][one of]What's this I can feel? Is something growing in here?'[or]Something tells me this womb is already occupied! Someone's been very naughty.'[in random order][end if][roman type][line break]";
		otherwise if the pregnancy of the player is 3 or the total egg fill of belly > 0:
			say "[speech style of M]'[if the largeness of belly > 8][one of]What on earth did you mate with, you crazy [whore]?'[or]What in the world are you incubating in there?!'[in random order][otherwise][one of]Am I right in saying you're literally full of a monster's eggs right now?! [Azathot] above!'[or]Are those EGGS that I can feel?!'[or]Are you serious? Eggs?! You're a walking incubator for some disgusting monster's larvae?!'[in random order][end if][roman type][line break]";
		otherwise if slimegirl is worn:
			say "[speech style of M]'[one of]Who the fuck have you got INSIDE your belly? No, I don't even want to know.'[or]I can feel something weird inside here. Wait, is it MOVING? What the FUCK is inside your belly?!'[or]Your belly is looking suspiciously full. What are you smuggling in there? Or should I say... WHO are you smuggling in there?!'[in random order][roman type][line break]";
		otherwise if the total squirtable fill of belly > 0:
			say "[speech style of M]'[one of]Looks like someone is keeping themselves nice and full of their recent conquests. What a [slut] you are.'[or]I can't believe this. Is your belly really full of... you know what?'[or]Oh my god, you really are carrying around a belly full of... of... yuck!!!'[in random order][roman type][line break]";
		otherwise if M is willing to urinate monster:
			say "[speech style of M]'[one of]This belly would look even hotter if it was full of my piss, don't you think?'[or][if the largeness of belly > 3]Your belly looks nice and full[otherwise]Don't you think you should try and keep this belly nice and full of piss[end if], like a good little toilet...'[or]This tummy of yours, something tells me its destiny is to be a piss bucket. Hmm...'[or]Tell me, does your stomach crave to be filled to the brim with piss?'[in random order][roman type][line break]";
		otherwise if M is male monster:
			say "[speech style of M]'[one of]Something tells me you would be a lot happier if you were full of my cum.'[or][if pregnancy fetish > 0]Not pregnant yet? There's still time...'[otherwise]Are you thirsty, [honey of M]? If so, I could help...'[end if][or]I wonder, is this really a normal stomach, or is it just a cum receptacle in disguise?'[in random order][roman type][line break]";
		otherwise:
			say "[speech style of M]'Tell me what your stomach craves, [honey of M]...'[roman type][line break]".
To compute belly grope of (M - a person):
	say "[BigNameDesc of M] [one of]tenderly[or]almost lovingly[or]patronisingly[in random order] [one of]caresses[or]strokes[in random order] your [ShortDesc of belly][if there is worn belly covering clothing] through your [ShortDesc of random worn belly covering clothing][end if].";

[No "FaceGropeFlav" function, since there's a lot of different handling here.]
To compute face grope of (M - a person):
	if there is worn ringagged clothing or (the player is a nympho and the player is not feeling dominant):
		say "[BigNameDesc of M] [one of]pushes[or]worms[in random order] two fingers into your [if the player is a nympho and the player is not feeling dominant]willing and [end if]open mouth, [one of]prodding[or]inspecting[or]pushing down on[in random order] your [if the player is a nympho and the player is not feeling dominant]obedient[otherwise]defenceless[end if] tongue.";
		if M is not unintelligent monster and M is not seduced monster, say "[speech style of M]'[one of]Well isn't this just begging to be filled?'[or]Thirsty, [slut]?'[or][if M is willing to do oral monster]I know a good quality fuckhole when I see one.'[otherwise]Well don't you just look positively scrumptious...'[end if][or][if M is willing to urinate monster]Some day soon I'm going to use this cute little mouth as my personal toilet.'[otherwise]I bet you're a slobberer.'[end if][in random order][roman type][line break]";
	otherwise if the lips of face > a random number between 0 and 3:
		say "[BigNameDesc of M] runs a finger along your [LipDesc].";
		if M is not unintelligent monster and M is not seduced monster, say "[speech style of M]'[one of]These lips are just perfect for a [slut] like you.'[or][if the lips of face > 1]I wonder if you realise quite how ridiculous these make you look[otherwise]If you want to play the part of the PERFECT slut, you would let these grow even bigger[end if]...'[or][if M is willing to do oral male monster]I bet these would feel amazing around my [manly-penis]...'[otherwise]Well don't you just look positively scrumptious...'[end if][in random order][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] puts a hand to your chin, pulling your head up to look [him of M] in the eye.";
		if M is not unintelligent monster and M is not seduced monster, say "[speech style of M]'[one of]My my, does the [whore] think [he of the player] looks pretty?'[or]Yes, yes... I think we are going to get to know each other a lot better...'[or]With a face like that, you must get people chasing after you all the time. Well I should warn you, when I want something, I take it.'[or]With a face like that, you must really crave attention, hmm?'[in random order][roman type][line break]".

To say ThighsGropeFlav of (M - a person):
	if M is not unintelligent monster, say "[speech style of M]'[one of]Looking for a good time, [honey of M]?'[or]I've seen you around here before. Did you come back for a piece of me, hmm?'[or]Show [if the number of intelligent monsters in the location of the player > 1]us[otherwise]me[end if] your [cunt], [honey of M]!'[or]You look like you know how to have a good time...'[in random order][roman type][line break]".
To compute thighs grope of (M - a person):
	let C be a random worn crotch-in-place leg covering clothing;
	let S be a random worn skirted crotch-in-place clothing;
	say "[BigNameDesc of M] [one of]deftly[or]quickly[in random order] [if S is clothing and S is not C][one of]snakes[or]shoots[or]sneaks[in random order] a hand up under your [ShortDesc of S] and [end if][one of]strokes[or]rubs[or]grips[or]squeezes[in random order] your thigh[if C is clothing] through your [ShortDesc of C][end if]!".

To say AssGropeFlav of (M - a person):
	if M is not unintelligent monster, say "[speech style of M]'[one of]Looking for a good time, [honey of M]?'[or]How much do you charge for a piece of this ass, [slut]?'[or][if asshole is at least partially exposed]Oh how tempting it would be to spread these cheeks and go to town on that cute [asshole] of yours[otherwise]I bet you're hiding a well-used [asshole] between these cheeks, [slut]. One of these days I'm going to find out[end if]...'[or][if the total volume of hips > 8]What a deliciously juicy booty you've got, [slut][otherwise]I do enjoy a [slut] with nice tight perky cheeks[end if].'[or]What is someone like you doing walking around here dressed like this?'[in random order][roman type][line break]".
To compute ass grope of (M - a person):
	let C be the concealer of hips;
	if C is nothing, now C is the at least partial concealer of hips;
	let S be a random worn skirted crotch-in-place clothing;
	if C is rigid clothing or a random number between 1 and 3 is 1, say "[BigNameDesc of M] [one of]smacks[or]swats[in random order] you [one of]hard[or]roughly[or]playfully[or]lightly[in random order] on your [AssDesc][if C is clothing] through your [ShortDesc of C][end if]!";
	otherwise say "[BigNameDesc of M] [one of]deftly[or]quickly[in random order] [if S is clothing and S is not C][one of]snakes[or]shoots[or]sneaks[in random order] a hand up under your [ShortDesc of S] and [end if][one of]gropes[or]grabs[or]grips[or]squeezes[in random order] your [AssDesc][if C is clothing] through your [ShortDesc of C][end if]!".

To compute grope reaction of (M - a person):
	if M is unintelligent monster:
		say "[if the player is not a pervert]You [one of]squeal in shock, recoiling as quickly as you can[or]squeak with dismay[cycling]![otherwise if the player is not a nympho]You [one of]can't help but shiver[or]squirm uncomfortably[cycling].[otherwise]You [one of]shiver with delight[or]squirm with pleasure[cycling].[end if]";
	otherwise if the player is a nympho:
		say "You shiver with arousal.";
		if the player is able to speak, say "[second custom style]'[if the player is feeling submissive][one of]Thank you for giving my slutty body your attention, [stud of M].'[or]Thank you [stud of M]. Please feel free to fuck me whenever you want.'[or]Aah~! This disgusting whore is thankful for any and all attention!'[or]Oh thank you [stud of M]! I don't deserve such gentle treatment...'[in random order][otherwise if the player is not feeling dominant][one of]Oh is that it? I kind of thought you were going to fuck me...'[or]Oh my~! You know just how to touch me, [stud of M]!'[or]Oooh, is that your idea of foreplay, [stud of M]?'[or]Well aren't you quite the charmer!'[in random order][otherwise][one of]Is that a challenge? Don't expect me to go easy on you!'[or]Oh [stud of M], if we fuck, I'll be the one on top.'[or]Careful now, if you get me too worked up, you'll be the one that regrets it...'[in random order][end if][roman type][line break]";
	otherwise if the player is a pervert:
		say "[one of]You try to ignore the arousal that [his of M] touch has sent to your [genitals][or]You can't help but shiver with arousal[or]Your heart flutters[or]Your breath quickens[in random order].";
		if the player is able to speak, say "[variable custom style]'[if the player is feeling submissive][one of]T-thank you, I think...'[or]Aah~! Please be gentle with me...'[or]Haaaah~!'[or]Eek! That feels... Ooh...'[or]Eep! You surprised me!'[in random order][otherwise if the player is not feeling dominant][one of]Eep! What happened to asking someone first?!'[or]Oh my! How crude!'[or]Aah~! Well, I guess it's better than you trying to fuck me...'[or]Eek! Is this your crude attempt at flirting?!'[in random order][otherwise][one of]H-Hey! Don't touch what isn't yours, unless you want a fight.'[or]Careful [stud of M]. I might decide to do the same to you, or worse.'[or]Oi! Do I look like the kind of [man of the player] who is going to just bend over for the first [stud of M] who touches me there?!'[in random order][end if][roman type][line break]";
	otherwise:
		say "[if the player is feeling submissive]You squeal with indignation[otherwise if the player is not feeling dominant]You snarl with anger[otherwise if the player is not able to use their hands]You shake with anger[otherwise]You smack [his of M] hand away[end if].";
		if the player is able to speak, say "[if the player is feeling submissive][variable custom style]'[one of]T-that's much too forward...'[or]Nooo, please don't touch me there, [stud of M]!'[or]Haaaah~! Please, I'm not that kind of [boy of the player]...'[or]Eek! That feels wrong!'[or]Eep! You can't just do that to people with no warning!'[in random order][otherwise if the player is not feeling dominant][variable custom style]'[one of]Is that really how people treat each other around here?!'[or]H-hey! You can't just grope people like that!'[or]What the hell was that?!'[or]Hey, get off me!'[in random order][otherwise][variable custom style]'[one of]What the fuck! Did I say you could touch me?!'[or]Hey! No touching, motherfucker!'[or]What the fuck do you think you're doing?!'[or]Get the fuck away from me, creep!'[or]Hey! Keep your hands to yourself, you fucking pervert!'[or]What the fuck! Are you looking for a fight?!'[or]Don't fucking touch me! Step the fuck back before I cave in your skull.'[in random order][end if][roman type][line break]".

To compute grope orgasm reaction of (M - a person):
	say "You shiver with [if the player is disgraced]arousal[otherwise]shame[end if].";
	if the player is able to speak, say "[variable custom style]'Haaaaah~! [if a random number between 16000 and 24000 > the humiliation of the player and M is not seduced monster]How dare you!'[otherwise]Oooh...'[end if][roman type][line break]".

Volume - Seduction

[
* Some way to flag which NPCs can be 'seduced'
* Some way to flag that a seduction is in progress
* Variables in the minigame:
	* Some kind of mini-sex-addiction stat. Perhaps a chance of +1 sex addiction at the end depending on how it went.
	* NPC endurance
	* NPC tolerance
* How to code the minigame?
	* Objects? Multiple levels
	* Assume we can use current-monster and target-body-part
	* Perhaps we want a previous-body-part for combos
	* chosen-orifice and presented-orifice need to be used cleverly
* Different seduction moves:
	* Dancing
	* Stripping
	* Kissing
	* Grinding
		* Can turn into penetration
	* Stroking
	* Non-face-fucking oral
		* Can turn into normal oral
	* Non-titty-fucking paizuri
		* Can turn into normal paizuri
	* Condom Application
	* Soul Sucking (Succubus class)
	* Escaping
* NPC moves:
	* Degradation
	* Groping
	* Displacement / Stripping

]

turns-spent-seducing is a number that varies.

Seducing is an action applying to one thing.
Check seducing:
	if tutorial is 1, say "This verb lets you try to take control of sex with the NPC. It isn't available during the tutorial because it would mess things up." instead;
	if the noun is seduction-refused, say "You already tried that!" instead;
	if the noun is not seducable, say "This isn't the type of character you can seduce." instead;
	if the noun is not actually seducable, say "It looks like [he of the noun] isn't in the right state to consider such an invitation." instead;
	if royal scepter is worn and royal scepter is blacked and the noun is an interested friendly royal guard, compute princess guard tease of the noun instead.
Carry out seducing:
	allocate 6 seconds;
	now the noun is seduced;
	set up sex length of the noun in asshole;
	let BB be the aggro limit of the noun - the favour of the noun;
	if BB > 0 and BB > the blue-balls of the noun, now the blue-balls of the noun is BB; [The more unfriendly the NPC, the more difficult to placate with seduction]
	now turns-spent-seducing is 0;
	follow the core seduction rule.
Understand "seduce [a monster]", "appease [a monster]", "placate [a monster]" as seducing.

A body part has a number called seductions-performed. [Most body parts can only perform one seduction a turn.]

This is the core seduction rule:
	repeat with M running through actually seducable monsters:
		say "Do you want to try to [if there is a seduced reactive monster]also [end if][if M is friendly]seduce[otherwise]appease[end if] [NameDesc of M] at the same time?";
		if the player is consenting:
			now M is seduced;
			set up sex length of M in asshole;
	repeat with M running through seduced monsters:
		if M is seduced: [This can change if the player tries to escape]
			if M is in the location of the player:
				now groping-person is M;
				update gropability;
				compute seduction choice of M;
			otherwise:
				now M is seduction-refused;
	increase turns-spent-seducing by 1;
	repeat with B running through body parts:
		now the seductions-performed of B is 0;
	[if debugmode > 0, say "List of seduced monsters: [list of seduced monsters]; List of reactive monsters: [list of reactive monsters]; List of seduced reactive monsters: [list of seduced reactive monsters].";]
	if there is a seduced reactive monster:
		[if debugmode > 0, say "setting another-turn to 1.";]
		now another-turn is 1;
		add the core seduction rule to another-turn-rules;
		repeat with M running through unseduced reactive monsters:
			if the boredom of M < 470, compute seduction witness reaction of M. [NPCs that just climaxed aren't going to be unimpressed with the player. This 30s window gives them a chance to wander away]

To compute seduction choice of (M - a monster):
	compute default seduction choice of M.

To compute default seduction choice of (M - a monster):
	let succsucc be 0;
	if the class of the player is succubus and M is not soul-stolen and M is not infernal, now succsucc is 1;
	say "What do you want to do to [NameDesc of M]?";
	now current-monster is M;
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	if seconds is 6 and the number of seduced reactive monsters is 1: [Seconds should be 6 in the first turn, then 0 after that]
		set numerical response 0 to "cancel";
	otherwise if there is a dangerous monster in the location of the player:
		set numerical response 0 to "try to escape";
	otherwise:
		set numerical response 0 to "stop seducing [him of M]";
	if the player is upright:
		if the player is not immobile and the seductions-performed of thighs < 2 and M is seduce-satisfiable, set next numerical response to "dance for [him of M]";
		if face is not actually occupied and the seductions-performed of face is 0 and M is seduce-satisfiable:
			if succsucc is 1, set next numerical response to "try to coax out [his of M] soul with a kiss";
			set next numerical response to "[if succsucc is 1]just [end if]kiss [him of M]";
		set next numerical response to "get on your knees";
	let C be a random top level titfuck protection clothing;
	if C is top-displacable unglued clothing and the player is able to use their hands and the player is not wrist bound behind, set next numerical response to "pull away your [ShortDesc of C]";
	let K be a random top level protection clothing;
	if K is displacable unglued clothing and the player is able to use their hands and the player is not wrist bound behind, set next numerical response to "displace your [ShortDesc of K]";
	if the seductions-performed of arms < 2:
		if M is seduce-satisfiable, set next numerical response to "pleasure [him of M] with your hands";
		if M is unwrapped male monster and there is a held condom-providing thing:
			if the player is able to use manual dexterity:
				set next numerical response to "put a condom on [his of M] [DickDesc of M]";
			otherwise if M is intelligent:
				set next numerical response to "ask [him of M] to wear a condom";
	if the seductions-performed of hips is 0 and M is seduce-satisfiable, set next numerical response to "grind against [his of M] crotch";
	if the player is prone:
		if M is male and the largeness of breasts >= 5 and the seductions-performed of breasts is 0 and the number of things penetrating breasts is 0 and M is seduce-satisfiable:
			let T be a random top level titfuck protection clothing;
			unless T is clothing, set next numerical response to "massage [his of M] [DickDesc of M] with your [ShortDesc of breasts]";
		if face is not actually occupied and the seductions-performed of face is 0 and M is seduce-satisfiable:
			if succsucc is 1, set next numerical response to "try coaxing out [his of M] soul with your mouth";
			set next numerical response to "[if succsucc is 1]just [end if][if M is male]suck [his of M] [manly-penis][otherwise]pleasure [him of M] with your mouth[end if]";
		now auto is 1;
		now presenting-receiver is M;
		let PB be the list of actually presentable body parts;
		now auto is 0;
		let E be the number of entries in PB;
		if E > 0:
			let T be "suggest [he of M] takes control (";
			if E > 1:
				now T is "[T]you can choose between ";
			repeat with B running through PB:
				now T is "[T][if B is asshole]anal[otherwise if B is vagina]vaginal[otherwise if B is penis]your penis[otherwise if B is breasts]titfuck[otherwise if B is face]blowjob[otherwise]GLITCH[end if][if E > 2], [otherwise if E is 2] or [otherwise])[end if]";
				decrease E by 1;
			set next numerical response to "[T]";
	compute multiple choice question;
	let MCQ be the chosen numerical response;
	if player-numerical-response is 0:
		if seconds is 6 and the number of seduced reactive monsters is 1:
			allocate 0 seconds; [This should just cancel the action]
			now M is unseduced;
		otherwise if there is a dangerous monster in the location of the player:
			now Neighbour Finder is the location of the player;
			let LD be the list of N-viable directions;
			let D be entry 1 of LD;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			repeat with DX running through LD:
				set next numerical response to "Try going [DX]";
			set numerical response 0 to "don't attempt to move";
			compute multiple choice question;
			if player-numerical-response is 0:
				if the player is upright:
					say "You take a step back[if M is unfriendly] and get ready to fight[end if]! [big he of M] does not look happy.";
					now M is stalled;
				otherwise:
					now auto is 1;
					try standing;
					now auto is 0;
			otherwise:
				now D is entry player-numerical-response of LD;
				if the number of entries in LD > 0:
					try going D;
			repeat with N running through seduced reactive monsters:
				now N is seduction-refused;
		otherwise:
			compute friendly seduction end of M;
	otherwise if MCQ matches the text "dance":
		if turns-spent-seducing is 0, compute FirstTurnSeduceDanceAnnounce of M;
		compute SeductionDance of M;
	otherwise if MCQ matches the text "knees":
		if turns-spent-seducing is 0, compute FirstTurnSeduceSubmitAnnounce of M;
		now auto is 1;
		try kneeling;
		now auto is 0;
		increase the seductions-performed of thighs by 2;
	otherwise if MCQ matches the text "kiss":
		if turns-spent-seducing is 0, compute FirstTurnSeduceKissAnnounce of M;
		if MCQ matches the text "soul", compute SeductionSoulKiss of M;
		otherwise compute SeductionKiss of M;
	otherwise if MCQ matches the text "pull":
		if turns-spent-seducing is 0, compute FirstTurnSeduceSubmitAnnounce of M;
		let C be a random top level titfuck protection clothing;
		say TopDisplaceFlav of C;
		TopDisplace C;
	otherwise if MCQ matches the text "displace":
		if turns-spent-seducing is 0, compute FirstTurnSeduceSubmitAnnounce of M;
		let C be a random top level protection clothing;
		now auto is 1;
		try displacing C;
		now auto is 0;
		if C is crotch-in-place, say "Sorry, something I didn't code for seems to be preventing you from being allowed to displace that.";
	otherwise if MCQ matches the text "pleasure":
		if turns-spent-seducing is 0, compute FirstTurnSeduceMasturbateAnnounce of M;
		compute SeductionMasturbate of M;
		if the sex-length of M <= 0, compute SeductionMasturbateClimax of M;
	otherwise if MCQ matches the text "condom":
		increase the seductions-performed of arms by 1;
		increase the blue-balls of M by a random number between 1 and (the condom resistance of M + 2);
		say CondomRequestFlav of M;
		if M is convinced to wear a condom:
			say CondomAcceptFlav of M;
			now M is wrapped;
		otherwise:
			say CondomRejectFlav of M;
	otherwise if MCQ matches the text "grind":
		if turns-spent-seducing is 0, compute FirstTurnSeduceGrindAnnounce of M;
		compute SeductionGrind of M;
		if the blue-balls of M >= the blue-balls-limit of M and a random number between 1 and 3 > 1:
			now the selection-frustration of M is 0;
			if asshole is an actual target, now the chosen-orifice of M is asshole;
			if a random number between 1 and 2 is 1 and vagina is an actual target, now the chosen-orifice of M is vagina;
	otherwise if MCQ matches the text "massage":
		if turns-spent-seducing is 0, compute FirstTurnSeducePaizuriAnnounce of M;
		compute SeductionPaizuri of M;
		if the sex-length of M <= 0, compute SeductionPaizuriClimax of M;
		if the blue-balls of M >= the blue-balls-limit of M and a random number between 1 and 3 > 1 and breasts is an actual target:
			now the selection-frustration of M is 0;
			now the chosen-orifice of M is breasts;
	otherwise if MCQ matches the text "suck" or MCQ matches the text "mouth":
		if turns-spent-seducing is 0, compute FirstTurnSeduceOralAnnounce of M;
		if MCQ matches the text "soul", compute SeductionSoulOral of M;
		otherwise compute SeductionOral of M;
		if the oralvirgin of the player is 1:
			now M is penetrating face;
			check oral virginity loss with M;
			now M is not penetrating face;
		if the sex-length of M <= 0, compute SeductionOralClimax of M;
		if the blue-balls of M >= the blue-balls-limit of M and a random number between 1 and 3 > 1 and face is an actual target:
			now the selection-frustration of M is 0;
			now the chosen-orifice of M is face;
	otherwise if MCQ matches the text "suggest":
		now auto is 2; [no flavour output for being told you're not able, but yes flavour output when actually doing it]
		let PB be the list of actually presentable body parts;
		if the number of entries in PB > 1:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			repeat with B running through PB:
				set next numerical response to "[if B is asshole]anal[otherwise if B is vagina]vaginal[otherwise if B is penis]your penis[otherwise if B is breasts]titfuck[otherwise if B is face]blowjob[otherwise]GLITCH[end if]";
			compute multiple choice question;
		otherwise:
			now player-numerical-response is 1;
		let B be entry player-numerical-response of PB;
		try direct-presenting B to M;
		now auto is 0;
		now M is seduction-refused;
	otherwise:
		say "BUG - option not recognised.";
	if M is seduced:
		if the blue-balls of M >= the blue-balls-limit of M:
			if the blue-balls of M < the blue-balls-limit of M + 5:
				say BlueBallsTooFarFlav of M;
				now the blue-balls of M is the blue-balls-limit of M + 5;
			otherwise:
				say BlueBallsImpatientFlav of M;
			if the player is prone:
				if M is unfriendly:
					follow the sex attempt rules;
				otherwise:
					while M is interested and M is not penetrating a body part and the blue-balls of M >= the blue-balls-limit of M and M is seduced and M is friendly:
						follow the sex attempt rules;
			otherwise:
				anger M;
			if M is interested:
				if M is penetrating a body part:
					if M is friendly, now M is friendly-fucking;
					now M is stalled;
					now M is seduction-refused;
				otherwise if M is unfriendly:
					now M is seduction-refused;
		otherwise:
			now M is stalled;
			let BB be (a random number between -1 and 1) + the blue-balls-limit of M - the blue-balls of M;
			let SL be the sex-length of M;
			if M is seduce-satisfiable, say "[BigNameDesc of M] seems [if BB < 1]to have lost [his of M] patience[otherwise if BB < 2]on the brink of losing [his of M] patience[otherwise if BB < 3]close to getting frustrated[otherwise if BB < 4]like [he of M] is getting impatient[otherwise if BB < 5]like [he of M] wants to take control[otherwise if BB < 7]to be enjoying your performance[otherwise][one of]relaxed[or]entertained[or]amused[purely at random][end if] and like [he of M][']s [if SL < 1]ready to explode! Maybe try something a bit more stimulating?[otherwise if SL < 2]very close to cumming![otherwise if SL < 3]very worked up![otherwise if SL < 4]feeling great.[otherwise][one of]aroused[or]turned on[or]hot under the collar[at random].[end if]";
			otherwise say "[BigNameDesc of M] continues to wait.";
			if debuginfo > 0, say "[input-style]Stimulation ticks until orgasm: [SL]; Impatience: [the blue-balls of M] | [the blue-balls-limit of M][roman type][line break]";
			if (a random number between 1 and the sex-length of M) is 1 and M is groping:
				compute seduction grope of M;
			otherwise if M is unwrapped and M is male and there is a held condom-providing thing and M is condom-preferring and M is convinced to wear a condom:
				say AutomaticCondomFlav of M;
				now M is wrapped;
			otherwise if M is intelligent and the remainder after dividing earnings by 2 is 0: [Should happen every other turn]
				let C be a random currently top-displacable clothing;
				if C is clothing:
					compute M topdisplacing C;
					force immediate inventory-focus redraw;
				otherwise:
					let C be a random actually displacable clothing;
					if C is clothing:
						compute M displacing C;
						force immediate inventory-focus redraw.

To say BlueBallsTooFarFlav of (M - a monster):
	if M is intelligent, say "[if M is friendly][speech style of M]'Argh, I can't hold back any longer[otherwise][speech style of M]'That's it, stay right there[end if]!'[roman type][line break]";
	say "[BigNameDesc of M] seems to have gotten too worked up to wait any longer!";
	if the player is upright:
		say "Do you get on your knees? ";
		if the player is bimbo consenting:
			now auto is 1;
			try kneeling;
			now auto is 0.

To say BlueBallsImpatientFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Come on come on, I want to fuck now[or]Come on already[or]Let me fuck you already[in random order]!'[roman type][line break]";
	say "[BigNameDesc of M] ignores you and keeps trying to take control!";
	if the player is upright:
		say "Do you get on your knees? ";
		if the player is bimbo consenting:
			now auto is 1;
			try kneeling;
			now auto is 0.

To compute FirstTurnSeduceDanceAnnounce of (M - a monster):
	if the player is able to speak:
		if the health of M < the maxhealth of M and M is unfriendly, say "[variable custom style]'[if the player is a nympho]I was only kidding. You know what I want, don't you, [stud of M]?'[otherwise if the player is a pervert]We could keep fighting, or...?'[otherwise]Maybe there's another way to resolve our disagreement...'[end if][roman type][line break]";
		otherwise say "[variable custom style]'[if the player is a nympho]You want some of this, [stud of M]? Come and get it!'[otherwise if the player is a pervert]Like anything you see?'[otherwise][one of]I don't normally do this, but[or]Hi there, [stud of M][in random order]...'[end if][roman type][line break]".

To compute SeductionDance of (M - a monster):
	increase the seductions-performed of thighs by 1;
	if a random number between 1 and the flesh volume of hips > a random number between 1 and 10:
		say "You point your [AssDesc] towards [NameDesc of M] and twerk your butt for all that you're worth! [slightHumiliateReflect]";
		increase the blue-balls of M by a random number between 0 and (the square root of the gropability of hips);
		increase the gropability of hips by 100;
	otherwise if a random number between 1 and the largeness of breasts > a random number between 1 and 10:
		say "You bend over and shake your [ShortDesc of breasts] towards [NameDesc of M]. [slightHumiliateReflect]";
		increase the blue-balls of M by a random number between 0 and (the square root of the gropability of breasts);
		increase the gropability of breasts by 100;
		increase the seductions-performed of breasts by 1;
	otherwise:
		say "You seductively shake your [ShortDesc of hips] towards [NameDesc of M]. [trivialHumiliateReflect]";
		increase the blue-balls of M by a random number between 0 and (the square root of the gropability of hips);
		increase the gropability of hips by 100;
	if a random number between 1 and the sex-length of M > a random number between 1 and 3, compute WeakSexProgress of M;
	otherwise compute WeakSexFalter of M.

To compute FirstTurnSeduceKissAnnounce of (M - a monster):
	if the player is able to speak:
		if the health of M < the maxhealth of M and M is unfriendly, say "[variable custom style]'[if the player is a nympho]Oopsie, was my foreplay a bit rough for you? Let me make it up to you, [stud of M]...'[otherwise if the player is a pervert]Aww, I'm sorry. Here, can I kiss it better?'[otherwise]Okay, I regret challenging you. This is what you were hoping for, right?'[end if][roman type][line break]";
		otherwise say "[variable custom style]'[if the player is a nympho]Hey [stud of M], I've been waiting for you...'[otherwise if the player is a pervert]Come here, [stud of M]...'[otherwise]Hi, I know this is crazy, but I think we might have a connection...'[end if][roman type][line break]".

To compute SeductionKiss of (M - a monster):
	increase the seductions-performed of face by 1;
	if a random number between 7 and 20 <= the sex addiction of the player:
		say "You breathe seductively into [his of M] ear, before running your tongue down [his of M] cheek to [his of M] mouth, where you lock your [LipDesc] with [his of M] lips and enjoy a deep, tongue-focused kiss. [slightHumiliateReflect]";
		increase the blue-balls of M by a random number between 0 and 2;
		increase the gropability of face by 10;
	otherwise if a random number between 1 and 9 <= the sex addiction of the player:
		say "You lock your [LipDesc] against [hers of M], [if the player is feeling dominant]pushing your tongue into [his of M] mouth and playing with [his of M][otherwise]letting [him of M] explore your mouth and tongue with [his of M][end if]. [trivialHumiliateReflect]";
		increase the blue-balls of M by a random number between 0 and 3;
		increase the gropability of face by 10;
	otherwise:
		say "You press your mouth against [hers of M], but don't let [him of M] push [his of M] tongue in past your [LipDesc]. [trivialHumiliateReflect]";
		increase the blue-balls of M by a random number between 1 and 3;
		increase the gropability of face by 10;
	if a random number between 1 and the sex-length of M > (4 - the lips of face), compute WeakSexProgress of M;
	otherwise compute WeakSexFalter of M.

[Succubus class only]
To compute SeductionSoulKiss of (M - a monster):
	increase the seductions-performed of face by 1;
	let D be the soul addiction of the player;
	decrease D by the difficulty of M;
	if D < 0, now D is 0;
	say "You breathe seductively into [his of M] ear before locking your lips against [hers of M], mouth watering as you try to suck [his of M] soul out through [his of M] mouth.";
	if a random number between 1 and (5 + D) >= 5:[There's always a chance of success]
		say "[BigFuckerDesc of M] doesn't notice a thing until it's too late, only pushing you away when [his of M] [one of]fat, juicy[or]delicious[or]nutritious[at random] soul is already on its way down your gullet.";
		compute soulSucking from M;
		anger M;
		now M is seduction-refused;
	otherwise if a random number between -3 and D < 0:
		say "[BigFuckerDesc of M] notices something is off, pushing you away before you can fully coax [his of M] soul free! [slightHumiliateReflect]";
		anger M;
		now M is seduction-refused;
	otherwise:
		say "[BigFuckerDesc of M] doesn't notice a thing, eagerly exploring your mouth with [his of M] tongue as you unsuccessfully try to coax [his of M] soul free. [slightHumiliateReflect]";
		increase the blue-balls of M by a random number between 0 and 2;
		increase the gropability of face by 10;
		if a random number between 1 and the sex-length of M > (4 - the lips of face), compute WeakSexProgress of M;
		otherwise compute WeakSexFalter of M.

To compute FirstTurnSeduceMasturbateAnnounce of (M - a monster):
	if the player is able to speak:
		if the health of M < the maxhealth of M and M is unfriendly, say "[variable custom style]'[if the player is a nympho]I was only kidding. You know what I want, don't you, [stud of M]?'[otherwise if the player is a pervert]We could keep fighting, or...?'[otherwise]Okay fine, let's do this, but only if we take it slow.'[end if][roman type][line break]";
		otherwise say "[variable custom style]'[if the player is a nympho]Tell me how I can make you feel good, [stud of M]...'[otherwise if the player is a pervert]Hey, I wonder if there's a way we can make each other happy? What do you think?'[otherwise]Just this once, I was wondering if you'd let me...'[end if][roman type][line break]".

To compute SeductionMasturbate of (M - a monster):
	increase the seductions-performed of arms by 1;
	let G be the girth of M;
	let R be a random number between 0 and 2;
	if the seductions-performed of arms > 1, now G is (the girth of M + 1) / 2;
	if G > 4:
		say "It's difficult to properly pump [his of M] [DickDesc of M][if the seductions-performed of arms is 1], even with both hands[otherwise]with one hand[end if], because it's so thick[one of] compared to the size of your palm[or][stopping]!";
		increase the blue-balls of M by a random number between 1 and 2;
		now R is a random number between 0 and 4;
	otherwise if a random number between 7 and 20 <= the sex addiction of the player and the seductions-performed of arms is 1:
		say "You run both hands up and down [his of M] [if M is male][LongDickDesc of M][otherwise]thighs, pussy and clit[end if] while staring at [him of M] with a naughty expression. [moderateHumiliateReflect]";
		increase the blue-balls of M by 1;
		increase the seductions-performed of arms by 1;
	otherwise if a random number between 1 and 9 <= the sex addiction of the player:
		say "You delicately [if M is male]pump [his of M] [LongDickDesc of M][otherwise]finger [his of M] pussy and clit[end if] with one hand. [slightHumiliateReflect]";
		increase the blue-balls of M by a random number between 1 and 2;
	otherwise:
		say "You hesitantly tickle [his of M] [if M is male]balls and shaft[otherwise]thigh and labia[end if] with one hand. [slightHumiliateReflect]";
		increase the blue-balls of M by 2;
	if the player is upright:
		say "Your upright position makes this act a bit more awkward and fumbling.";
		if R is 0 and a random number between 1 and 2 is 1, now R is a random number between 3 and 4;
	if a random number between 1 and the sex-length of M > R, compute StrongSexProgress of M;
	otherwise compute StrongSexFalter of M.

To compute SeductionMasturbateClimax of (M - a monster):
	say "[BigNameDesc of M] [one of]squeals[or]roars[or]growls[or]shudders[in random order] as [he of M] [one of]orgasms[or]climaxes[or]cums[in random order]! ";
	if M is male:
		say "[big his of M] load is spilled onto the floor.";
		SemenPuddleUp the semen load of M;
		if M is pale skinned and the bbc addiction of the player > 11, say "[variable custom style]Hmph! White [men of shopkeeper].[roman type][line break]";
	orgasm satisfy M;
	progress quest of greet-quest.

To compute FirstTurnSeduceGrindAnnounce of (M - a monster):
	if the player is able to speak:
		if the health of M < the maxhealth of M and M is unfriendly, say "[variable custom style]'[if the player is a nympho]Haha, OK! How do you want me, [stud of M]?'[otherwise if the player is a pervert]Is this what you wanted, huh?'[otherwise]Maybe there's another way to resolve our disagreement...'[end if][roman type][line break]";
		otherwise say "[variable custom style]'[if the player is a nympho]How do you want me, [stud of M]?'[otherwise if the player is a pervert]I wonder, can you resist a cute little minx like me?'[otherwise]Um... hi there...'[end if][roman type][line break]".

To compute SeductionGrind of (M - a monster):
	increase the seductions-performed of hips by 1;
	let V be the anal sex addiction of the player + (the sex addiction of the player / 2);
	if the player is not possessing a vagina, increase V by the anal sex addiction of the player;
	otherwise increase V by the vaginal sex addiction of the player;
	let G be the gropability of asshole + the gropability of hips;
	if the player is not possessing a vagina, increase G by the gropability of asshole;
	otherwise increase G by the gropability of vagina;
	increase the blue-balls of M by a random number between 1 and (the square root of G);
	increase the gropability of hips by 20;
	increase the gropability of asshole by 20;
	if the player is possessing a vagina, increase the gropability of vagina by 20;
	if a random number between 10 and 25 <= V:
		say "You hungrily grind your [AssDesc] into [his of M] [if M is male][DickDesc of M][otherwise]crotch[end if]. [moderateHumiliateReflect]";
		if a random number between 1 and (the sex-length of M + 2) > 1, compute StrongSexProgress of M;
		otherwise compute StrongSexFalter of M;
	otherwise if a random number between 4 and 10 <= V:
		say "You straddle [his of M] lap, facing away from [him of M], and wiggle your [AssDesc]. [slightHumiliateReflect]";
		if a random number between 1 and (the sex-length of M + 1) > 1, compute StrongSexProgress of M;
		otherwise compute StrongSexFalter of M;
	otherwise:
		say "You shyly brush your [AssDesc] against [his of M] crotch. [trivialHumiliateReflect]";
		if a random number between 1 and the sex-length of M > 1, compute WeakSexProgress of M;
		otherwise compute WeakSexFalter of M.

To compute FirstTurnSeducePaizuriAnnounce of (M - a monster):
	if the player is able to speak:
		if the health of M < the maxhealth of M and M is unfriendly, say "[variable custom style]'[if the player is a nympho]I'm sorry [stud of M]! Will you let me make it up to you with my soft, cushiony tits?'[otherwise if the player is a pervert]Okay fine, I'll do it with my tits. Is that good enough?'[otherwise]Okay, you win. But if we have to do it, I'd like to do it like this...'[end if][roman type][line break]";
		otherwise say "[variable custom style]'[if the player is a nympho]Ready for the time of your life, [stud of M]? This is how I do foreplay...'[otherwise if the player is a pervert]I've seen you looking at my tits. Fine, just this once I'll let you take them for a spin!'[otherwise if M is unfriendly]If we have to do it, I'd like to do it like this...'[otherwise]If I do this for you, you'll do a favour for me, right?'[end if][roman type][line break]".

To compute SeductionPaizuri of (M - a monster):
	increase the seductions-performed of breasts by 1;
	let G be the gropability of breasts;
	increase the blue-balls of M by a random number between 1 and (the square root of G);
	increase the gropability of breasts by 30;
	if a random number between 4 and 10 <= the titfuck addiction of the player:
		say "You energetically pump [his of M] [DickDesc of M] between your boobs, throwing your whole torso up and down with reckless abandon! [strongHumiliateReflect]";
	otherwise:
		say "You squeeze [his of M] [DickDesc of M] between your boobs and slowly move them up and down. [moderateHumiliateReflect]";
	stimulate breasts from M;
	if a random number between 0 and the sex-length of M > 0, compute StrongSexProgress of M;
	otherwise compute StrongSexFalter of M.

To compute SeductionPaizuriClimax of (M - a monster):
	now M is penetrating breasts;
	follow the default cleavage climax rule;
	[orgasm M. This is handled in the cleavage climax function]
	progress quest of greet-quest.

To compute FirstTurnSeduceOralAnnounce of (M - a monster):
	if the player is able to speak:
		if the health of M < the maxhealth of M and M is unfriendly, say "[variable custom style]'[if the player is a nympho]Ooh, [stud of M], let me show you just how sorry I am...'[otherwise if the player is a pervert]Okay, you've earned this. You'd better enjoy it.'[otherwise]Okay, fine, it's clear I can't beat you, so I'll pay the forfeit. Man, I can't believe I'm going to do this...'[end if][roman type][line break]";
		otherwise say "[variable custom style]'[if the player is a nympho]Don't say a thing, [stud of M]. I know what you need...'[otherwise if M is male and M is unfriendly]Fine, I'll suck your [manly-penis], this time.'[otherwise if M is unfriendly]Fine, but don't think be doing this every time...'[otherwise if the player is a pervert]You're special to me. Let me show you just how special...'[otherwise]If I do this for you, you'll do a favour for me, right?'[end if][roman type][line break]".

To compute SeductionOral of (M - a monster):
	increase the seductions-performed of face by 1;
	increase the blue-balls of M by a random number between 1 and 2;
	if a random number between 4 and 10 <= the oral sex addiction of the player:
		say "You [if M is male]devour [his of M] [DickDesc of M], pushing it as far as it can get down your throat[otherwise]spread [his of M] cheeks and push your tongue as far as it can reach up [his of M] asshole, swirling it around as if trying to not miss the tiniest spot[end if]! [severeHumiliateReflect]";
	otherwise if a random number between 2 and 5 <= the oral sex addiction of the player and the seductions-performed of arms is 0:
		say "You [if M is male]work hard to pleasure [his of M] [LongDickDesc of M], working the shaft with both hands while diligently stimulating the head with your [LipDesc] and tongue[otherwise]spread [his of M] labia with your fingers so that you dive as deep as possible into [his of M] sex with your tongue[end if]. [strongHumiliateReflect]";
		increase the seductions-performed of arms by 2;
	otherwise:
		say "You [if M is male]put the upper half of [his of M] [LongDickDesc of M] into your mouth, and slightly bob your head back and forth[otherwise]delicately tongue [his of M] labia and clit[end if]. [moderateHumiliateReflect]";
	if a random number between 0 and the sex-length of M + the lips of face > 0, compute StrongSexProgress of M;
	otherwise compute StrongSexFalter of M.

[Succubus class only]
To compute SeductionSoulOral of (M - a monster):
	increase the seductions-performed of face by 1;
	let D be the soul addiction of the player;
	decrease D by the difficulty of M;
	if D < 0, now D is 0;
	say "You [if M is male]devour [his of M] [DickDesc of M], pushing it as far as it can get down your throat[otherwise]grind your face into [his of M] labia, lips pressed flat against [his of M] entrance[end if] as you use your powers to suck out [his of M] soul! [run paragraph on]";
	if a random number between 1 and (8 + D) >= 5 or the sex-length of M is 0:[Higher chance of success than kissing]
		say "[BigFuckerDesc of M] doesn't notice anything is wrong until it's far too late, unsuccessfully trying to push you away as [his of M] soul flows out of [his of M] [if M is male][manly-penis][otherwise]pussy[end if] and into your waiting mouth. You look up at [him of M] triumphantly as your newly obtained soul slides down your gullet.";
		compute soulSucking from M;
		now the sex-length of M is 0;
		now M is seduction-refused;
		anger M;
	otherwise if a random number between 1 and D < 0:[lower backfire chance than kissing as well]
		say "[BigFuckerDesc of M] notices something is off, and shoves you away before you can coax [his of M] soul free! [severeHumiliateReflect]";
		now M is seduction-refused;
		anger M;
	otherwise:
		say "[BigFuckerDesc of M] doesn't seem to notice anything is off, grinding [his of M] hips against you as you unsuccessfully try to coax out [his of M] soul. [severeHumiliateReflect]";
		if a random number between 0 and the sex-length of M + the lips of face > 0, compute StrongSexProgress of M;
		otherwise compute StrongSexFalter of M.

To compute SeductionOralClimax of (M - a monster):
	now M is penetrating face;
	now M is friendly-fucking;
	follow the default facial climax rule;
	[orgasm M. handled in the climax function]
	progress quest of greet-quest.

To compute StrongSexProgress of (M - a monster):
	decrease the sex-length of M by 1;
	say "[BigNameDesc of M] loved that! You can tell that [he of M] is closer to orgasm!".
To compute StrongSexFalter of (M - a monster):
	say "[BigNameDesc of M] is clearly enjoying that, but it doesn't seem like it brought [him of M] any closer to orgasm this time.".
To compute WeakSexProgress of (M - a monster):
	decrease the sex-length of M by 1;
	say "[BigNameDesc of M] enjoyed that! [big he of M][']s getting more worked up!".
To compute WeakSexFalter of (M - a monster):
	say "[BigNameDesc of M] didn't seem to enjoy that enough to grow significantly more aroused this time.".

To compute FirstTurnSeduceSubmitAnnounce of (M - a monster):
	if the player is able to speak:
		if the health of M < the maxhealth of M and M is unfriendly, say "[variable custom style]'[if the player is a nympho]Ooh, [stud of M], let me show you just how sorry I am...'[otherwise if the player is a pervert]Okay okay, you win. Just give me a chance to satisfy you...'[otherwise]Okay, fine, it's clear I can't beat you, so I'll pay the forfeit.'[end if][roman type][line break]";
		otherwise say "[variable custom style][if the player is a nympho]'Get ready, [stud of M], I'm going to take you to heaven...'[otherwise if M is unfriendly]'Okay fine, just give me a moment...'[otherwise if the player is a pervert]'Want to have a piece of this? One time offer, [stud of M].'[otherwise]'Don't get me wrong, I'm not usually this type of [boy of the player], but...'[end if][roman type][line break]".

To compute friendly seduction end of (M - a monster):
	now M is seduction-refused;
	if M is intelligent, say "[speech style of M]'Oh come on... you're stopping now?!'[roman type][line break]";
	say "[BigNameDesc of M] seems upset.";
	FavourDown M by 1 with consequences.

To compute seduction witness reaction of (M - a monster):
	if M is not dangerous, say LewdTrapReactFlav of M.

[todo: intelligence, fatigue, souls addiction]
To compute soulSucking from (M - a monster):
	increase the total-souls of the player by 1;[Checks how many souls the player has pulled out, total.]
	now M is soul-stolen;
	say "You feel a surge of power as your body absorbs the soul!";
	MagicPowerUp 1;
	increase the stomach-food of the player by 1;
	unless (the player is craving souls or a random number between 1 and 2 is 1):
		if the soul addiction of the player < 10, increase the soul addiction of the player by 1;
	now cold souly is 0;
	let S be soulstone;
	if S is not soul-embedded and the player is soulless:
		say "Your soulstone shivers as it once again merges with your skin.";
		now S is soul-embedded;
	progress quest of soul-consume-quest.

Desirability ends here.
