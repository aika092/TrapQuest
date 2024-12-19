Vagina by Body Parts begins here.

Part 1 - Definitions

[!<Vagina>@

REQUIRES COMMENTING

@inherits <Fuckhole>

@!]
vagina is a fuckhole. vagina is everywhere. Understand "pussy", "fuckhole", "cunt", "fanny", "snatch", "muffin", "cum dump" as vagina. Understand "womb", "vulva", "cherry", "kitty", "slit", "clunge", "honey pot", "baby maker" , "crotch", "groin" as vagina when the player is possessing a vagina. The text-shortcut of vagina is "vagina".

To say FullExamineDesc of (B - vagina):
	say "[if the player is possessing a vagina][ImageDesc of vagina][TotalDesc of vagina][VaginaModesty][otherwise if the bimbo of the player > 6][description of asshole][otherwise]You don't have a vagina.[end if]".

Vagina has a number called semen volume.
Vagina has a number called womb volume.
Vagina has a number called small egg count.
Vagina has a list of things called small-egg-origins.
Vagina has a number called medium egg count.
Vagina has a list of things called medium-egg-origins.
Vagina has a number called large egg count.
Vagina has a list of things called large-egg-origins.
Vagina has a number called labia plumpness.

To decide which number is the total volume of (F - vagina):
	decide on the total semen volume of F + the total egg volume of F.

To decide which number is the total semen volume of (F - vagina):
	decide on the semen volume of F + the womb volume of F.

To decide which number is the total egg count of (F - vagina):
	decide on the small egg count of F + the medium egg count of F + the large egg count of F.

To decide which number is the total egg volume of (F - vagina):
	decide on the small egg count of vagina + (the medium egg count of vagina * 2) + (the large egg count of vagina * 4).

To decide which number is the total felchable volume of (F - vagina): [man I love that word]
	if the pregnancy of the player > 0, decide on the semen volume of F;
	otherwise decide on the total semen volume of F.

To decide which number is max labia plumpness:
	decide on 2 + artificial enhancements fetish.

To LabiaUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the labia plumpness of vagina < max labia plumpness:
			increase the labia plumpness of vagina by 1;
			[if X is 0:
				display labia cutscene;[Could have some nice cameltoes here.]]
	update appearance level.

[ LabiaUp, and make a comment about them swelling up.]
To LabiaUp (X - a number) with comment:
	if diaper quest is 0:
		let increased be 0;
		while X > 0:
			decrease X by 1;
			if the labia plumpness of vagina < max labia plumpness:
				increase the labia plumpness of vagina by 1;
				increase increased by 1;
				if X is 0:
					[display labia cutscene;[Could have some nice cameltoes here.]]
					say "You feel your [one of]labia[or]pussy lips[or]lady bits[or]coochie's lips[or][']flower petals['][at random] [one of]swell up[or]plump up[or]puff up[at random][if increased > 1] - a whole lot! - now[otherwise],[end if] tingling.";
					update appearance level;
					try examining vagina;
		if increased is 0:
			say "You feel your [vagina] tingle, but apparently you've already attained maximum cameltoe.".

To LabiaDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the labia plumpness of vagina > 0:
			decrease the labia plumpness of vagina by 1;
	update appearance level.

[ LabiaDown, and make a comment about them shrinking.]
To LabiaDown (X - a number) with comment:
	if diaper quest is 0:
		let decreased be 0;
		while X > 0:
			decrease X by 1;
			if the labia plumpness of vagina > 0:
				decrease the labia plumpness of vagina by 1;
				increase decreased by 1;
				if X is 0:
					say "You feel your [one of]labia[or]pussy lips[or]lady bits[or]coochie's lips[or][']flower petals['][at random] shrink back[if decreased > 1] - a whole lot! - now[otherwise],[end if] towards a more normal size.";
					update appearance level;
					try examining vagina;
		if decreased is 0:
			say "You feel your [vagina] tingle, but nothing else happens.".

[Can it be accessed right now with nothing blocking it?]
Definition: vagina is undefended:
	if vagina is actually occupied or the player is pussy protected or the player is not possessing a vagina, decide no;
	decide yes.

Definition: vagina is exposed:
	if the player is not possessing a vagina, decide no;
	if the at least partial concealer of vagina is a thing, decide no;
	decide yes.

Definition: vagina is at least partially exposed:
	if the player is not possessing a vagina, decide no;
	if the concealer of vagina is a thing, decide no;
	decide yes.

To decide which number is current cameltoe: [0 means no cameltoe, 1 means slight cameltoe, 2 means full cameltoe]
	if the player is not possessing a vagina, decide on 0;
	if vagina is exposed or vagina is not at least partially exposed, decide on 0;
	if there is worn actually dense at least slightly cameltoe creating clothing: [There's dense pussy covering clothing! So if it wasn't for the cameltoe effect, vagina wouldn't be visible at all. So we know we have a cameltoe.]
		if there is at least slightly cameltoe blocking clothing, decide on 1; [something worn is blocking full cameltoes]
		decide on 2;
	decide on 0.
Definition: vagina is slightly cameltoed:
	if current cameltoe is 1, decide yes;
	decide no.
Definition: vagina is cameltoed:
	if current cameltoe is 2, decide yes;
	decide no.

To decide which object is the concealer of (V - vagina):
	if water-fountain is penetrating asshole, decide on water-fountain;
	repeat with C running through worn potentially vagina covering clothing:
		decide on C.

To decide which object is the at least partial concealer of (V - vagina):
	if water-fountain is penetrating asshole, decide on water-fountain;
	if the player is upright and gloryhole is grabbing the player, decide on gloryhole;
	if vagina is listed in the armUses of arms, decide on arms;
	let C be a random worn potentially at least partially vagina covering clothing;
	decide on C.

Definition: a clothing (called C) is potentially vagina covering:
	if C is actually dense potentially pussy covering potentially cameltoe blocking clothing, decide yes;
	if C is actually dense skirt-covering-crotch clothing, decide yes;
	decide no.

Definition: a clothing (called C) is potentially at least partially vagina covering:
	if C is see-through, decide no; [if it protects your pussy, it must be covering it.]
	if C is skirt-partially-covering-crotch or C is potentially pussy covering, decide yes;
	if (C is crotch-ripped or C is crotch-unzipped) and C is crotch-in-place, decide yes;
	decide no.

the vagina presentable rules is a rulebook.
the presentable rules of vagina is usually the vagina presentable rules.

This is the vagina protected rule:
	repeat with O running through pussy covering actually unavoidable clothing:
		if auto is 0, say "Your [O] is preventing you from getting your [vagina] on display.";
		rule fails.
The vagina protected rule is listed in the vagina presentable rules.

This is the vagina occupied rule:
	if vagina is actually occupied:
		if auto is 0, say "Your vagina is a bit full already, don't you think?";
		rule fails.
The vagina occupied rule is listed in the vagina presentable rules.

This is the vagina doesn't exist rule:
	if the player is not possessing a vagina:
		if auto is 0, say "You don't have a vagina.";
		rule fails.
The vagina doesn't exist rule is listed in the vagina presentable rules.

This is the virginity is important rule:
	if flower hairclip is worn and there is a virginity taking monster in the location of the player:
		if auto is 0, say "[variable custom style]No way. My virginity is way too important to me.[roman type][line break]";
		rule fails.
The virginity is important rule is listed in the vagina presentable rules.

This is the sacrificial virginity is important rule:
	if sacrificial maiden dress is worn and there is a virginity taking monster in the location of the player and the number of virginity taking infernal monsters in the location of the player is 0:
		if auto is 0, say "[variable custom style]I... I can't... Something deep inside won't let me lose my virginity, unless it's to the right type of person.[roman type][line break]";
		rule fails.
The sacrificial virginity is important rule is listed in the vagina presentable rules.

[This is the too much dignity to present vagina rule:
	if the humiliation of the player < HUMILIATION-PROUD + 2000 and the player is not horny and debugmode < 1:
		if auto is 0, say "You have too much self respect to do that!";
		rule fails.
The too much dignity to present vagina rule is listed in the vagina presentable rules.]

[This is the player hates vaginal sex rule:
	if the vaginal sex addiction of the player + 2 < the soreness of vagina and the player is not horny and debugmode < 1:
		if auto is 0, say "You don't like vaginal sex enough to ask for it while you are already feeling so [if the soreness of vagina < 5]raw[otherwise]sore[end if]!";
		rule fails.
The player hates vaginal sex rule is listed in the vagina presentable rules.]
This is the monster doesn't do vaginal rule:
	if auto > 0 and ((presenting-receiver is monster and presenting-receiver is not willing to do vaginal) or the number of willing to do vaginal monsters in the location of the player is 0), rule fails.
The monster doesn't do vaginal rule is listed in the vagina presentable rules.

[!<DecideWhichNumberIsTheDesireOfVagina>+

How much does the player want this body part to be used?

+!]
To decide which number is the desire of (B - vagina):
	decide on the vaginal sex addiction of the player.

[having plump lips makes monsters want to fuck you more.]
This is the plumpness pussy slut rule:
	increase the desirability of vagina by (the labia plumpness of vagina * 3).
The plumpness pussy slut rule is listed in the pussy slut eligibility rules.

Definition: yourself is possessing a vagina:
	if the openness of vagina > -1, decide yes;
	decide no.

Definition: yourself is solely possessing a vagina:
	if the player is possessing a vagina and the player is not possessing a penis, decide yes;
	decide no.

[#LXorDD Only needed when reversing a M2F sex change.]
To devagina the player:
	now the player is male;
	now the openness of vagina is -1.

Part 2 - Description

To say ShortDesc of vagina:
	if the player is possessing a vagina:
		if diaper quest is 0:
			say "[PussyGape openness of vagina]";
			if the latex-transformation of the player < 4:
				if the soreness of vagina > 7:
					say ", very sore ";
				otherwise if the soreness of vagina > 3:
					say ", throbbing ";
				otherwise:
					say " ";
			otherwise:
				say ", [one of]tingly[or]sensitive[at random] "; [#LXorDD]
		say "[vagina]".

[!<SayMediumDescOfVagina>+

Less brief details (size, exposure, semen)

+!]
To say MediumDesc of (V - vagina):
	say "[if vagina is lewdly exposed]fully exposed [otherwise if vagina is at least partially lewdly exposed]slightly visible [otherwise if vagina is not exposed]concealed [end if][if the openness of vagina > 4 and diaper quest is 0][PussyGape openness of vagina] [end if][if the semen volume of vagina > 0]cum leaking [end if]pussy".

To say PussyGape (N - a number):
	if N < 2, say "virgin[if the vaginalvirgin of the player is 0]-like[end if]";
	if N is 2, say "very tight";
	if N is 3, say "tight";
	if N is 4, say "slightly open";
	if N is 5, say "relatively open and loose";
	if N is 6, say "loose";
	if N is 7, say "very loose and stretched";
	if N is 8, say "extremely loose and gaped";
	if N is 9, say "gaping wide";
	if N is 10, say "impossibly stretched".

To say TotalDesc of vagina:
	if the player is possessing a vagina:
		let plump be ""; [#LXorDD]
		if the labia plumpness of vagina is:
			-- 0: do nothing;
			-- 1: now plump is ", with its [LatexFlav][one of]pouting[or]plumped up[or][']enhanced['][or][']improved['][at random] [one of]coochie[or]pussy lips[or]labia[as decreasingly likely outcomes],";
			-- 2: now plump is ", its [LatexFlav][one of]pussy lips[or]labia[as decreasingly likely outcomes] [one of]inflated[or]exaggerated[or]bee-stung[at random] and pouting,";
			-- otherwise: now plump is ", its [one of]obscenely swollen [LatexFlav]lips a magnet for every eye[or]two swollen [LatexFlav]lips like fat sausages[or]swollen folds rubbing together at every movement[or]bulging [LatexFlav]folds begging for attention[or]engorged lips worthy of any porn star[at random], ";
		if the openness of vagina < 2, say "Your virgin[if the vaginalvirgin of the player is 0]-like[end if] [vagina][plump] ";
		if the openness of vagina is 2, say "Your very tight [vagina][plump] ";
		if the openness of vagina is 3, say "Your tight [vagina][plump] ";
		if the openness of vagina is 4, say "Your slightly aroused [vagina][plump] ";
		if the openness of vagina is 5, say "Your relatively aroused and loose [vagina][plump] ";
		if the openness of vagina is 6, say "Your aroused and open [vagina][plump] ";
		if the openness of vagina is 7, say "Your very loose and wet [vagina][plump] ";
		if the openness of vagina is 8, say "Your extremely loose [vagina][plump] ";
		if the openness of vagina is 9, say "Your gaping wide [vagina][plump] [if the semen volume of vagina > 7 and pregnancy fetish is 1]seems close to childbirth and [end if]";
		if the openness of vagina is 10, say "Your impossibly stretched [vagina][plump] [if the semen volume of vagina > 7 and pregnancy fetish is 1]seems ready for childbirth and [end if]";
		if the latex-transformation of the player < 4:
			if the soreness of vagina is 0, say "feels fine. ";
			if the soreness of vagina is 1, say "feels almost completely fine. ";
			if the soreness of vagina is 2, say "[one of]feels used[or]feels mostly fine[stopping]. ";
			if the soreness of vagina is 3, say "[if the bimbo of the player > 9]is begging for more[otherwise]is gently tingling[end if]. ";
			if the soreness of vagina is 4, say "[if the bimbo of the player > 9]feels like it needs filling[otherwise]is tingling[end if]. ";
			if the soreness of vagina is 5, say "[if the bimbo of the player > 9]loves being satisfied by [manly-penis][otherwise]is gently throbbing[end if].";
			if the soreness of vagina is 6, say "[if the bimbo of the player > 9]is gently tingling[otherwise]is starting to feel sore[end if].";
			if the soreness of vagina is 7, say "is aching[if the bimbo of the player > 9], but in a good way[end if]. ";
			if the soreness of vagina is 8, say "feels very sore. ";
			if the soreness of vagina is 9, say "feels ruined. ";
			if the soreness of vagina is 10, say "feels completely destroyed. It is so sensitive, it hurts just to touch it. ";
		otherwise:
			say "feels [LatexFlav]but [one of]at least as sensitive as ever[or]still tingly[or]deliciously sensitive[or][i]nice[/i] to touch[at random][if the soreness of vagina > 4], despite the [one of]heavy use it's seen[or]fun abuse it's taken[or]the pounding it's welcomed[or]fun times it's seen[at random][end if]. "; [#LXorDD]
		if the semen volume of vagina > 0, say "It [if the semen volume of vagina > 4]is completely full of [semen][otherwise]has some [semen] in it[end if]. ";
		if the pregnancy of the player >= 3:
			let EN be the total egg count of vagina;
			say "Your womb is currently the incubator of [if EN > 5]a rather large number of eggs[otherwise if the large egg count of vagina > 1][large egg count of vagina] giant monster eggs[otherwise if the large egg count of vagina is 1]a single giant monster egg[otherwise if EN > 1][EN] eggs[otherwise]a single monster egg[end if].";
		otherwise if the womb volume of vagina > 0:
			if the pregnancy of the player > 0, say "[if inhuman pregnancy is 0]A baby[otherwise]Something[end if] [if the womb volume of vagina is 30 or the womb volume of vagina >= 50]has been[otherwise if slow pregnancy is 0]is rapidly[otherwise]is slowly[end if] growing inside your womb[if the womb volume of vagina is 30 or the womb volume of vagina >= 50] and has reached full term[end if]. [if the pregnancy of the player is 2]You can feel that your pregnancy has somehow magically been paused. [end if]";
			otherwise say "[if the womb volume of vagina > 3]A huge amount of[otherwise]Some[end if] [semen] has made it into your [if pregnancy fetish is 1 and the pregnancy of the player is 0]fertile [end if]womb. ";
		if there is a lubricant covering vagina, say "It is dripping with slippery [lubricant]. ".

[ COMMENTED OUT
#LXorDD: some fragments that might turn into something useful by Aika's hand:

say "It [if C is a thing]can't be seen thanks to [NameDesc of C][otherwise]is partially concealed by [NameDesc of P][end if][if C is not a thing and the labia plumpness of the vagina > 1], [one of]especially given[or]largely due to[at random] your [LatexFlav][one of]inflated[or]exaggerated[or]plumped up[or]bulging[or]swollen[at random] [one of]coochie[or]pussy lips[or]labia[as decreasingly likely outcomes][end if]. ";

say "[if the labia plumpness of the vagina > 1]Thanks to your [LatexFlav][one of]inflated[or]exaggerated[or][']enhanced['][or][']improved['][at random] [one of]coochie[or]pussy lips[or]labia[as decreasingly likely outcomes], it's[otherwise if the labia plumpness of the vagina > 0]Thanks to your [LatexFlav][one of]plumped up[or][']enhanced['][or][']improved['][at random] [one of]coochie[or]pussy lips[or]labia[as decreasingly likely outcomes], it's[otherwise]It is[end if] clearly visible through your [ShortDesc of W][if the labia plumpness of the vagina > 1], [one of]bulging in a lush, swollen[or]swollen into an obscene[or]plumped up into a magnetic[at random] porn star style cameltoe[otherwise if the labia plumpness of the vagina > 0][one of]bulging in a swollen[or]swollen into a prominent[or]plumped up into an eye-catching[at random] cameltoe[end if].";
]

To say LabiaDesc:
	if the labia plumpness of vagina is:
		-- 0: say "[one of]labia[or]pussy lips[in random order]";
		-- 1: say "[one of]pouting[or]plumped up[at random] [one of]pussy lips[or]labia[as decreasingly likely outcomes]";
		-- 2: say "[one of]inflated[or]exaggerated[or]bee-stung[at random] and pouting [one of]pussy lips[or]labia[as decreasingly likely outcomes]";
		-- otherwise: say "[one of]obscenely swollen pussy lips[or]fat sausage-like pussy lips[or]bulging pussy folds[in random order]";

To say VaginaModesty:
	if vagina is lewdly exposed:
		if there is a pussy covering clothing:
			let W be a random pussy covering clothing;
			say "It is clearly visible through your [ShortDesc of W]. ";
		otherwise if vagina is not actually occupied:
			say "It is completely unprotected. ";
	otherwise:
		let C be the concealer of vagina;
		if C is a thing:
			say "It can't be seen thanks to [NameDesc of C]. ";
		otherwise:
			now C is the at least partial concealer of vagina;
			let CC be current cameltoe;
			say "It [if CC is 1 and C is arms]can be slightly made out, thanks to a slight cameltoe, but is partially concealed by [NameDesc of C][otherwise if CC is 2 and C is arms]is creating an extremely prominent cameltoe but is partially concealed by [NameDesc of C][otherwise if CC is 1]can be slightly made out, thanks to a slight cameltoe through your [NameDesc of C][otherwise if CC is 2]is creating an extremely prominent cameltoe through [NameDesc of C][otherwise]is partially concealed by [NameDesc of C][end if]. ";
	if vagina is actually occupied:
		let P be a random thing penetrating vagina;
		if P is monster:
			say "It is currently being pounded by [FuckerDesc of P].";
		otherwise:
			say "It is currently [if P is players-detached-dick and the size of players-detached-dick is 0]being magically stimulated by[otherwise if the girth of P > the openness of vagina]the snug home of[otherwise]the home of[end if] [FuckerDesc of P].";
	if the player is a pussy slut:
		let P be a random thing penetrating vagina;
		if P is a monster and P is male:
			say "You have a feeling that no matter what you do, you're going to be creampied.";
		otherwise:
			if P is monster, say "Monsters are definitely paying extra attention to it.";
			otherwise say "You have a feeling that monsters are paying extra attention to it.".

Part 3 - Modify Vagina Stats

Chapter 1 - Gape

To gape (A - vagina) times (X - a number):
	now the previous openness of vagina is the openness of vagina;
	while X > 0:
		decrease X by 1;
		if the vaginalvirgin of the player is 1 and there is a live virginity taking thing penetrating vagina:
			compute virginity loss;
		otherwise if the openness of vagina < 10:
			if the openness of vagina is 0:
				say "[variable custom style][line break]Ow ow ow[if the vaginalvirgin of the player is 0], it feels like I'm losing my virginity again[end if]![roman type][line break]";
			if the openness of vagina is 3:
				say "[variable custom style][line break][one of]Oh no, my [vagina] is starting to get wet...[or]My [vagina] is getting wet again...[stopping][roman type][line break]";
			if the openness of vagina is 5:
				say "[if the player is not a pervert][line break][variable custom style][one of]My [vagina] is sopping wet... am I enjoying this?![or]Oh my [vagina] is so loose and wet again...[stopping][otherwise][line break][second custom style][line break][one of]My [vagina] is so wet... I feel horny...[or]I love how horny my [vagina] is making me feel...[stopping][end if][roman type][line break]";
			if the openness of vagina is 7:
				say "[variable custom style][line break][one of]My [vagina] is so wet and stretched, it's as if it's just begging to be stretched even further...[or]Uh-oh, my cunt is pretty much gaping wide again![stopping][roman type][line break]";
			if the openness of vagina is 9:
				say "[variable custom style][line break]My [vagina] is permanently gaping wide, I really am the ultimate slut![roman type][line break]";
			increase the openness of vagina by 1;
			now ruined is 2.

To PussyClose (X - a number):
	now the previous openness of vagina is the openness of vagina;
	if the latex-transformation of the player > 2, now X is 0;
	while X > 0:
		decrease X by 1;
		if the openness of vagina > 0:
			if the number of things filling vagina > 0:[We force out any existing item when the player tightens up.]
				let I be a random insertable thing penetrating vagina;
				if I is an insertable thing and the insertableGirthAcceptance of vagina + 1 < the girth of I and I is not glued clothing and I is not maybe-cursed:
					say "Your [printed name of I] shoots out of your [vagina] with some force[run paragraph on]";
					if there is pussy covering clothing:
						if there is possession pussy covering clothing:
							say ", phasing through your [ShortDesc of a random possession covering clothing]!";
							repeat with C running through pussy covering clothing:
								if C is fluid vulnerable and C is not possession:
									if a random number between 1 and the number of worn possession clothing is 1, now the magic-type of C is possession;[Possessed items will protect your clothing, because it gets hairy to describe only one of 2-3 items not getting ripped. To compensate, the possession has a chance to "spread"]
						otherwise:
							say ", ripping through your [ShortDesc of random worn not possession pussy covering clothing]!";
							repeat with C running through pussy covering clothing:
								if C is rippable:
									now C is crotch-ripped;
								otherwise:
									destroy C;
					dislodge I;
					now I is in the location of the player;
				otherwise if I is an insertable thing:
					decrease the openness of vagina by 1;[in the next clause we assume anything penetrating the player is a monster, so we leave the player untightened.]
			if the number of things filling vagina is 0, decrease the openness of vagina by 1.[if this isn't 0, it wasn't an item, so we leave it in.]

Chapter 2 - Expulsion

continued-pussy-expulsion is initially false.

This is the continued pussy expulsion rule:
	say "[bold type]You [if the vaginal sex addiction of the player * 1000 > 9000 - the arousal of the player]don't move, lost in pleasure[otherwise]are unable to move[end if][roman type] as [semen] [if continued-pussy-expulsion is true]continues to flood[otherwise]floods[end if] out of your [vagina] and [if there is a bottom level pee protection clothing and bukkake fetish is 1]onto your [ShortDesc of random bottom level pee protection clothing][otherwise if the player is prone]onto the ground[otherwise]splatters all over your thighs[end if].";
	if continued-pussy-expulsion is false: [We only say reflection flavour once, on the first turn of the expulsion]
		say "[variable custom style][if the semen addiction of the player > 14 and pregnancy fetish is 1 and the pregnancy of the player is 0][second custom style][one of]Omigod I hope I get pregnant![or]Nooo, stay inside me and help me get pregnant![or]Oh no, what a waste! Stay inside me, I need to get pregnant first![in random order][otherwise if the semen addiction of the player > 14][second custom style][one of]Nooo, I want it to stay inside me![or]Unf, it feels so good to be so full of [semen]![or]I wish I could have plugged myself in time, to keep it all inside me...[cycling][otherwise if the pregnancy of the player > 0][one of]No wonder I got pregnant, if this is how I allow my [vagina] to be treated...[or]If I keep getting creampies like this, I'm going to be perpetually pregnant for the rest of my life...[cycling][otherwise if the semen addiction of the player > 7 and pregnancy fetish is 1][one of]If I keep this up, I'm at a real risk of getting knocked up.[or]Oh geez, I'm practically certain to get pregnant now, aren't I?[or]Oh my, I'm practically begging to get knocked up, aren't I?[cycling][otherwise if the semen addiction of the player > 7][one of]Why does this feel so good?![or]Unf, I can't believe how good this feels...[or]I could get addicted to this feeling...[cycling][otherwise if pregnancy fetish is 1][one of]No, no no... I can't allow this to happen and more, I'll get knocked up for sure![or]Oh no, please tell me I haven't got pregnant from this...[or]There's so much! Gross! Get it out of me![or]Please say nothing got into my womb...![in random order][otherwise][one of]There's so much! Gross! Get it out of me![or]Yuck yuck yuck yuck![or]You can't be serious?! There's so much![or]What the hell? This can't be real...[in random order][end if][roman type][line break]";
	ruin vagina; [This needs to go before PussySquirt in order for the stimulation to be calculated properly]
	if the semen volume of vagina >= 12, PussySquirt 6;
	otherwise PussySquirt the semen volume of vagina - 6; [so we always leave 6 behind for dripping over time]
	commence animation of PussyExpelAnimation;
	if the semen volume of vagina > 6 and (vagina is not actually occupied or the player is in a predicament room), now continued-pussy-expulsion is true;
	otherwise now continued-pussy-expulsion is false.

This is the compulsory pussy expulsion rule:
	if the semen volume of vagina > 6 and (vagina is not actually occupied or the player is in a predicament room): [cum squirts out the sides in the extra credit zone]
		now another-turn is 1;
		add continued pussy expulsion rule to another-turn-rules.
The compulsory pussy expulsion rule is listed in the compulsory action rules.

Chapter 3 - Contents and Pregnancy

pussyfilled is initially false. [has the player ever had cum in their pussy?]

[!<PussyFillX>+

This function should be called whenever semen enters the player's vagina

+!]
To PussyFill (X - a number):
	if lipstick collar is worn, increase X by 1;
	[let flav-said be 0;]
	let M be a random wrapped monster penetrating vagina;
	if M is monster:
		now X is 0;
		compute condom filling of M;
	if X > 0:
		now pussyfilled is true;
		if invigoration-timer of invigoration-elixir > 0 and the soreness of vagina > 0:
			say "The lining of your [vagina] is somehow healed as the [semen] rushes in!";
			if the soreness of vagina > X, decrease the soreness of vagina by X;
			otherwise now the soreness of vagina is 0;
			now the tolerated of vagina is 0;
		otherwise if an infernal monster is penetrating vagina or a demonic thing is penetrating vagina:
			if the class of the player is not worshipper and the class of the player is not succubus:[demonic classes won't be harmed]
				say "The infernal [semen] stings the lining of your [vagina]!";
				if the class of the player is priestess, increase the soreness of vagina by X / 2;
				otherwise increase the soreness of vagina by X / 3;
			if the soreness of vagina > 10, now the soreness of vagina is 10;
	let R be a random number between 0 and 5;
	if there is a live thing penetrating vagina, decrease R by 1;
	SlowSemenAddictUp 1;
	if X > 0 and vagina is accepting womb semen: [First drop of semen makes it into womb if possible]
		WombFill 1;
		decrease X by 1;
	let VS be 0;
	while X > 0:
		decrease X by 1;
		increase VS by 1;
		if vagina is accepting womb semen and VS >= a random number between 3 and (3 + the womb volume of vagina):
			WombFill 1; [Too big a creampie causes more cum to get into the womb]
			now VS is 0;
		otherwise:
			increase the semen volume of vagina by 1;
	now M is a random thing penetrating vagina;
	if M is a thing, progress quest of vaginal-creampie-quest from M.

Definition: vagina is accepting womb semen:
	if the womb volume of vagina < 5 and the pregnancy of the player is 0, decide yes;
	decide no. [If the womb is full or carrying a child then it can't get more semen in it via the old fashioned way]
Definition: vagina is accepting womb eggs:
	if the pregnancy of the player is 0 or the pregnancy of the player is 3, decide yes;
	decide no.
Definition: yourself is able to get pregnant:
	if pregnancy fetish is 1 and the player is possessing a vagina and the pregnancy of the player is 0 and the player is not in a predicament room and the latex-transformation of the player <= 3, decide yes;
	decide no.

[!<WombFillX>+

This function should be called whenever semen enters the player's womb.

+!]
To WombFill (X - a number):
	while X > 0:
		decrease X by 1;
		if vagina is accepting womb semen:
			increase the womb volume of vagina by 1;
			compute father material of vagina;
			if the number of things inseminating vagina >= 2, compute cumdumpsterification;
			if the class of the player is faerie and the pregnancy of the player is 0:
				say "[one of]Powerful[or]More[stopping] magic courses up through your [vagina] to the rest of your body!";
				MagicPowerUp 1;
			if there is an infernal monster penetrating vagina or there is a demonic thing penetrating vagina:
				if the class of the player is priestess:
					say "You feel yourself being weakened as [semen] enters your womb!";
					if a random number between 1 and 2 is 1, StrengthDown 1;
					otherwise DexDown 1;
				otherwise:
					say "You feel yourself being corrupted as [semen] enters your womb!";
					if a random number between 1 and 2 is 1, DelicateUp 1;
					otherwise SexAddictUp 1;
		let IG be 0;
		if slow pregnancy > 2, now IG is 1;
		if tentacles tattoo is worn and (there is a tentacle monster penetrating vagina or there is a vine penetrating vagina or there is a creampie pole trap penetrating vagina), now IG is 1;
		if IG is 0 and the player is pheromonal and there is a musky monster penetrating vagina:
			if a random number between 1 and 4 is 1, now IG is 1;
		if IG is 1 and the player is able to get pregnant:
			compute father material of vagina;
			compute sudden pregnancy.

To check sudden pregnancy:
	if slow pregnancy > 2:
		compute sudden pregnancy;
	otherwise if the pregnancy of the player > 0:
		check goddess eligibility;
		trigger conception-wisp-trigger.

forcedFertility is initially false.

To compute sudden pregnancy:
	if the latex-transformation of the player <= 3:
		if the pregnancy of the player is 0:
			let M be a random family thing penetrating vagina;[Whatever just jizzed in the player should already by inseminating vagina thanks to the fact that we just computed the father material of vagina above]
			let R be a random number between 1 and (5 - the pregnancy rate of the player);
			if forcedFertility is true:
				now R is 0;
				now forcedFertility is false;
			otherwise if debuginfo > 0 and M is a thing:
				say "[input-style]Instant pregnancy avoidance check for [ShortDesc of M]: [if womb volume of vagina >= 5]max womb volume of 5 = automatic failure[otherwise]10 - pregnancy rate ([pregnancy rate of the player]) ==> d[10 - pregnancy rate of the player] ([R]) | (1.5) conception avoidance difficulty level[end if][roman type][line break]";
			if (R < 2 or the womb volume of vagina >= 5) and M is a thing: [Max womb volume = instant guaranteed preggers]
				now the father is M;
				now the pregnancy of the player is 1;
		if the pregnancy of the player is 1:
			now the womb volume of vagina is 30;
			check for extreme pregnancies;
			say SuddenPregFlav of the father;
			check goddess eligibility;
			trigger conception-wisp-trigger.

To say SuddenPregTitle of (M - a thing):
	say "[ShortDesc of M]".

To say SuddenPregFlav of (M - a thing):
	say "Suddenly[one of] and impossibly,[or][stopping] your belly bulges out to a [if the semen volume of vagina is 50]gigantic[otherwise]huge[end if] size! [one of][unless the father is the throne]You instinctively know that the [SuddenPregTitle of the father] has just made you pregnant.[end if][line break][variable custom style][if the semen addiction of the player < 7]Oh COME ON! You're seriously telling me that[otherwise]So[end if] this is how pregnancy works in this game?[or]You are once again instantly brought to full term pregnancy.[line break][variable custom style][if the semen addiction of the player > 14]Yippee![otherwise]Oof! So heavy...[end if][stopping][roman type][line break]".

To PussyEmpty (X - a number):
	while X > 0:
		decrease X by 1;
		if the semen volume of vagina > 0, decrease the semen volume of vagina by 1;
	[cancel father material of vagina.][Should really only happen if we use the WombEmpty function]

To PussySquirt (X - a number):
	PussyEmpty X;
	leak vagina semen X.

To WombEmpty (X - a number):
	while X > 0:
		decrease X by 1;
		if the womb volume of vagina > 0, decrease the womb volume of vagina by 1;
	if the womb volume of vagina is 0, cancel father material of vagina. [If the womb is empty, we forget the list of things that have jizzed inside it]

To WombSquirt (X - a number):
	WombEmpty X;
	leak vagina semen X.

To leak vagina semen (X - a number):
	let K be a random bottom level pee protection clothing worn by the player;
	if K is clothing and bukkake fetish is 1:
		CumSoak X on K;
	otherwise if the player is prone:
		SemenPuddleUp X;
	otherwise:
		UnannouncedExpel semen on thighs by X.

To compute father material of (T - a thing):
	do nothing.

To compute father material of (F - a body part):
	repeat with M running through things penetrating F:
		if F is fuckhole and portal-pants is worn and M is ultimate-lesson-actor, now the pedestal-user of pimp-pedestal-1 is inseminating F;
		otherwise now M is inseminating F;
	if the number of things inseminating F >= 2, compute cumdumpsterification.

To say inseminators of (T - a thing):
	let LX be the list of things inseminating T;
	let LXN be the number of entries in LX;
	repeat with X running through LX:
		say "[FuckerDesc of X][if LXN > 2], [otherwise if LXN is 2] and [end if]";
		decrease LXN by 1.


To compute father material of (F - vagina):
	if the pregnancy of the player is 0: [Once pregnant you don't get any more potential fathers!]
		if pregnancy fetish is 1:
			repeat with M running through father material things penetrating F:
				if portal-pants is worn and M is ultimate-lesson-actor, now the pedestal-user of pimp-pedestal-1 is inseminating F;
				otherwise now M is inseminating F;
		otherwise:
			repeat with M running through things penetrating F:
				if portal-pants is worn and M is ultimate-lesson-actor, now the pedestal-user of pimp-pedestal-1 is inseminating F;
				otherwise now M is inseminating F;
	let N be the number of things inseminating F;
	if N >= 2:
		compute cumdumpsterification;
	otherwise if N is 1:
		repeat with M running through father material things penetrating F:
			if M is not inseminating F, compute cumdumpsterification. [It's new cum, even if it's not officially on the list of potential fathers]



To compute father material of (F - a thing) into (T - a thing):
	if the pregnancy of the player is 0 or T is not vagina: [Just in case]
		repeat with M running through things inseminating F:
			now M is inseminating T.

To compute father material of (F - a thing) into (T - vagina):
	if the pregnancy of the player is 0: [Once pregnant you don't get any more potential fathers!]
		repeat with M running through things inseminating F:
			now M is inseminating T.

To cancel father material:
	repeat with F running through body parts:
		cancel father material of F;
	repeat with F running through off-stage vessels:
		cancel father material of F.

To cancel father material of (T - a thing):
	repeat with M running through things inseminating T:
		now M is not inseminating T.

To cancel father material of (F - asshole):
	if the semen volume of belly is 0:
		repeat with M running through things inseminating F:
			now M is not inseminating F.

To cancel father material of (F - vagina):
	if the womb volume of F is 0:
		repeat with M running through things inseminating F:
			now M is not inseminating F;
		if the pregnancy of the player is 0:
			now the father is the throne.

To wombfill (X - a number) small eggs:
	while X > 0:
		decrease X by 1;
		increase the small egg count of vagina by 1;
		let M be a random egg-fathering thing penetrating vagina;
		if M is a thing, add M to the small-egg-origins of vagina;
	EggPregCheck.
To wombfill (X - a number) medium eggs:
	while X > 0:
		decrease X by 1;
		increase the medium egg count of vagina by 1;
		let M be a random egg-fathering thing penetrating vagina;
		if M is a thing, add M to the medium-egg-origins of vagina;
	if carrot daggers is worn and carrot daggers is not blessed and there is a live thing penetrating vagina:
		bless carrot daggers;
		say "You sense that your [ShortDesc of carrot daggers] have become more powerful!";
	EggPregCheck.
To wombfill (X - a number) large eggs:
	while X > 0:
		decrease X by 1;
		increase the large egg count of vagina by 1;
		let M be a random egg-fathering thing penetrating vagina;
		if M is a thing, add M to the large-egg-origins of vagina;
	EggPregCheck.
To EggPregCheck:
	if the pregnancy of the player > 0 and the pregnancy of the player < 3: [If the player is already pregnant then we need to get rid of these eggs instantly.]
		compute forced womb egg laying;
	otherwise:
		now maximum-pregnancy-delay-tracker is 0; [Timer before they are laid resets]
		now the pregnancy of the player is 3. [Flag that we've got an egg pregnancy underway]

To compute forced womb egg laying:
	repeat with P running through things penetrating vagina:
		say "[BigNameDesc of P] is pushed out of the way!";
		dislodge P;
	repeat with C running through pussy covering unskirted clothing:
		if C is displacable:
			say "[BigNameDesc of C] is pushed out of the way!";
			displace C;
		otherwise if C is rippable:
			say "[BigNameDesc of C] is ripped at the crotch!";
			now C is crotch-ripped;
		otherwise:
			say "[BigNameDesc of C] fizzles into thin air!";
			destroy C;
	compute womb egg laying;

To compute womb egg laying:
	let C be a random pussy covering unskirted clothing;
	if C is clothing or vagina is actually occupied:
		say "BUG - game tried to make the player lay eggs when the exit wasn't clear. Please report this to Aika!";
	otherwise:
		say "All of a sudden, the eggs inside your womb rush out of you, roughly stimulating your [vagina] on the way out!";
		while the small egg count of vagina > 0:
			decrease the small egg count of vagina by 1;
			let E be a random available small egg;
			if E is egg:
				now E is in the location of the player;
				now E is laid;
				let EO be the number of entries in the small-egg-origins of vagina;
				if EO > 0:
					now the egg-origin of E is entry EO in the small-egg-origins of vagina;
					truncate the small-egg-origins of vagina to EO - 1 entries;
				otherwise:
					now the egg-origin of E is nothing;
				if a random number between 1 and 5 is 1, now the hatching of E is 1;
				if the pregnancy of the player is 3 and a random number between 1 and 4 is 1, now the hatching of E is a random number between 100 and 130;
				if the egg-origin of E is ghost or the egg-origin of E is ghostly dildo pole trap or the egg-origin of E is the throne, now the hatching of E is 1;
				if the remainder after dividing small egg count of vagina by 3 is 0: [1 ruin for 3 eggs]
					now E is penetrating vagina;
					ruin vagina;
					dislodge E;
		while the medium egg count of vagina > 0:
			decrease the medium egg count of vagina by 1;
			let E be a random available medium egg;
			if E is egg:
				now E is in the location of the player;
				now E is laid;
				let EO be the number of entries in the medium-egg-origins of vagina;
				if EO > 0:
					now the egg-origin of E is entry EO in the medium-egg-origins of vagina;
					truncate the medium-egg-origins of vagina to EO - 1 entries;
				otherwise:
					now the egg-origin of E is nothing;
				if a random number between 1 and 5 is 1, now the hatching of E is 1;
				if the pregnancy of the player is 3 and a random number between 1 and 4 is 1, now the hatching of E is a random number between 100 and 130;
				if the remainder after dividing medium egg count of vagina by 2 is 0: [1 ruin for 2 eggs]
					now E is penetrating vagina;
					ruin vagina;
					dislodge E;
		while the large egg count of vagina > 0:
			decrease the large egg count of vagina by 1;
			let E be a random available large egg;
			if E is egg:
				now E is in the location of the player;
				now E is laid;
				let EO be the number of entries in the large-egg-origins of vagina;
				if EO > 0:
					now the egg-origin of E is entry EO in the large-egg-origins of vagina;
					truncate the large-egg-origins of vagina to EO - 1 entries;
				otherwise:
					now the egg-origin of E is nothing;
				if a random number between 1 and 5 is 1, now the hatching of E is 1;
				if the pregnancy of the player is 3 and a random number between 1 and 4 is 1, now the hatching of E is a random number between 100 and 130;
				now E is penetrating vagina;
				ruin vagina;
				dislodge E;
		if the pregnancy of the player <= 0 or the pregnancy of the player is 3:
			now the pregnancy of the player is 0;
			WombSquirt the womb volume of vagina;
		say "[variable custom style][if the soreness of vagina > 8]My poor pussy...[otherwise if the player is a nympho][one of]I'm a walking, talking incubator. How hot is that![or]It feels so fucking good to lay eggs from my womb![stopping][otherwise if the player is a pervert][one of]This is so fucking weird, but also kind of kinky[or]I can't believe I keep letting this happen to me[stopping]...[otherwise]How did I let this happen?![end if][roman type][line break]";
		progress quest of egg-laying-quest;
		progress quest of egg-holding-quest.

Section - Image for graphics window

Figure of PussyObject0 is the file "CharWins/FocusWin/Vagina/pussy0.jpg".
Figure of PussyObject1 is the file "CharWins/FocusWin/Vagina/pussy1.jpg".
Figure of PussyObject2 is the file "CharWins/FocusWin/Vagina/pussy2.jpg".
Figure of PussyObject3 is the file "CharWins/FocusWin/Vagina/pussy3.jpg".
Figure of PussyObjectCum is the file "CharWins/FocusWin/Vagina/pussy1b.jpg".

To decide which figure-name is the examine-image of (T - vagina):
	if the semen volume of vagina > 0, decide on Figure of PussyObjectCum;
	if the labia plumpness of vagina is 0:
		decide on Figure of PussyObject0;
	otherwise if the labia plumpness of vagina is 1:
		decide on Figure of PussyObject1;
	otherwise if the labia plumpness of vagina is 2:
		decide on Figure of PussyObject2;
	otherwise:
		decide on Figure of PussyObject3.

Vagina ends here.
