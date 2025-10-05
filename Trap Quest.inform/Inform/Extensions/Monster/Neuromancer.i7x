Neuromancer by Monster begins here.

neuromancer is a monster. neuromancer is intelligent. The leftover-type of neuromancer is 120.
The text-shortcut of neuromancer is "neu". Understand "neuro" as djinn.

Definition: neuromancer is wenchy:
	if the player is not an april 2025 top donator, decide no;
	decide yes.

Definition: neuromancer is willing to urinate: decide yes.
Definition: neuromancer is willing to do licking: decide yes.
Definition: neuromancer is dark skinned: decide yes.
Definition: neuromancer is willing to potion forcefeed: decide yes.

Definition: neuromancer is mansion dwelling:
	if diaper quest is 0, decide yes;
	if the player is a july 2024 diaper donator, decide yes;
	decide no.

To say ShortDesc of (M - neuromancer):
	say "neuromancer".

To say MediumDesc of (M - neuromancer):
	say "neuromancer".

Figure of neuromancer is the file "NPCs/Mansion/Neuromancer/neuromancer1.png".

To decide which figure-name is the monster-image of (M - neuromancer):
	decide on figure of neuromancer.
To decide which figure-name is the pacified-image of (M - neuromancer):
	decide on figure of defeated neuromancer.

To say MonsterDesc of (M - neuromancer):
	if M is sex-enslaved:
		say "This once-dangerous white-haired cat[boy of M] has been utterly bimbofied. [big his of M] [if lady fetish is 2]flat chest is[otherwise]giant breasts are[end if] poorly contained by a pink skin-tight bunny suit, with the crotch section pulled aside to reveal a hairless, [if lady fetish is 2]leaking [sissy-penis]. [otherwise]soaking wet cunt. [end if]And [his of M] cunt isn't the only thing that's actively drooling - [his of M] thick, pillowy lips are fixed in a permanent pout, with saliva constantly oozing out of the gap in the middle - a sign that [he of M] may not be all there in the head any more. [big his of M] eyes are now a vibrant shade of pink, as are [his of M] long, delicate bimbo nails, and the tight slutty stockings clenching [his of M] thighs, with a roll of unused condoms tucked into one side, communicating just how ready this slut is to be laid down on [his of M] back and taken to pound-town. The bell around the cat collar on [his of M] neck no longer feels like the adornment of a playful cat, but rather the mark of a submissive pet pussy.[line break][variable custom style]I guess [he of M] found out that [he of M][']s not the Top Dog around here any more... And found out the hard way.[roman type][line break]";
	otherwise if M is diaper-enslaved:
		say "This once-dangerous white-haired cat[boy of M] has been utterly babified. Not only is [he of M] stuck in a thick, soggy diaper, but [his of M] humiliating and constricting onesie still exposes [his of M] giant breasts, to maximise [his of M] exposure and humiliation. The onesie has a large inflatable tail at the back, which waggles obnoxiously as [he of M] waddles. The fist mittens and pacifier gag complete [his of M] diaper enslavement.";
	otherwise:
		say "A sharp-clawed, brown-skinned, white-haired cat[boy of M], complete with matching white cat ears and cat tail. [if lady fetish is 2]Obscenely wide hips and strong thighs contrast[otherwise]Big bouncy round breasts and obscenely wide hips with strong thighs frame[end if] a seemingly impossibly tiny waist, giving [him of M] the most alluring [if lady fetish is 2]pear-shaped[otherwise]hourglass[end if] figure you've ever seen. [big his of M] outfit is immensely provocative as well - an impossibly perfectly figure-hugging black bodice, reminiscent of a playdude bunny suit, exposes most of [his of M] [if lady fetish is 2]chest[otherwise]cleavage[end if] and the entirety of [his of M] hips and ass cheeks. Matching thigh-highs grip [his of M] thick, alluring legs with style and ooze sex appeal. A short black hooded sorcerer's robe sits on top of [his of M] white hair (with holes for [his of M] ears), framing [his of M] shoulders and clasped together at the front by a softly tinkling catbell.".

[To say MonsterComment of (M - neuromancer):] [TODO]

To set up (M - neuromancer):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	add hex dress to the tradableItems of M, if absent;
	add hex collar to the tradableItems of M, if absent;
	add hex gloves to the tradableItems of M, if absent;
	add resistance-powder to the tradableItems of M, if absent;
	add magic-potion to the tradableItems of M, if absent;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - neuromancer):
	decide on 11.

Definition: neuromancer is human: decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - neuromancer):
	if M is in the location of the player:
		say "The teleporter emits a definitive sounding hum, and light fills the room as a [man of M] covered head to toe in shiny latex materialises on the pad.[line break][speech style of M]'I hope my [literalMistress of dominatrix] is ready for me.'[roman type][line break]";
	otherwise:
		say "You hear the sound of squeaky rubber clothing coming from another part of the hotel.".

To compute kneeling reaction of (M - neuromancer):
	say "[BigNameDesc of M] grins.[line break][speech style of M]'[one of]Nya… good slut.'[or]What a good [boy of the player], nya.'[or]What a good little fucktoy, nya!'[in random order][roman type][line break]";
	say strongHumiliateReflect.

To say SubmissionFlav of (M - neuromancer): [The player has done something submissive like remove an item of clothing while the NPC is aggressive.]
	say "[BigNameDesc of M] touches [himself of M] and purrs loudly as [he of M] watches.[line break][speech style of M]'That's it, nya, keep going.'[roman type][line break]".

To compute delay of (M - neuromancer): [NPCs, when they're confident that the player can't escape, will sometimes get the player a chance to request a certain type of sex.]
	say "[BigNameDesc of M] puts a palm on [his of M] hip.[line break][speech style of M]'I am a kind Mistress. How will you [please] me?'[roman type][line break]".

To say ToiletReactionFlav of (M - neuromancer):
	say "[BigNameDesc of M] licks [his of M] lips.[line break][speech style of M]'[if watersports fetish is 1]You know, it's unusual getting to watch someone else pee without me being on my knees underneath them[otherwise]Is the big [boy of the player] trying to prove [he of the player] doesn't need diapers? How adorable[end if]!'[roman type][line break]".

To say IdentifiablePosterReactionFlav of (M - neuromancer):
	say "[BigNameDesc of M] stares at the poster with [his of M] mouth open wide.[line break][speech style of M]'You really let them photograph you as you did that, nyaaa?! You're way more of a slut than I ever dreamed.'[roman type][line break]".

To say UnidentifiablePosterReactionFlav of (M - neuromancer) with (P - a poster):
	say "[speech style of M]'Nyaaa..! Wow, that [if old-gender of P is 1]broad[otherwise]guy[end if] would make an excellent servant. I'd love to mold their mind into my plaything!'[roman type][line break]".

To say SuddenTransformTrapReactFlav of (M - neuromancer):
	say "[BigNameDesc of M] looks delighted.[line break][speech style of M]'Oh wow, you look so [beautiful] now!'[roman type][line break]".

To say GroundPeeReaction of (M - neuromancer):
	say "[speech style of M]'[if diaper lover > 0]Uh-oh! Looks like someone should be diapered, like me! Maybe I should take you to Mommy[otherwise]What a waste! If you piss in a cup, then you can savour the smell for as long as you want, and then when you get thirsty, you can practice being a good little toilet! Hmm, maybe you need help learning to be a better toilet[end if]...'[roman type][line break]";
	FavourDown M with consequences.

To say BecomesAggressive of (M - neuromancer):
	say "[speech style of M]'[one of]You've been asking for this, nyaaa!'[or]Nyaaaa! I'm going to break your mind!'[in random order][roman type][line break][big he
 of M] begins chanting as magic swirls around [him of M]!".

To compute sudden objectification of (M - neuromancer): [The player's appearance just jumped to completely unacceptable standards right in front of your NPC, and your NPC has noticed, and now wants to bang.]
	say "Something seems to change in the way [NameDesc of M] is looking at you.[line break][speech style of M]'[if M is penetrating a body part]Yes, that's right, I'm the Mistress, nya, and you're my little [whore]...'[otherwise if the player is monster fucked]That does look like a lot of fun, nyaa! Maybe it's time I joined in...'[otherwise]You know what, nya? I think you've swirled far enough down the drain of slutdom that it's finally worth breaking your little mind! Nyaa!'[end if][roman type][line break]".

To compute sudden babification of (M - neuromancer): [The player's cringe appearance just jumped to completely unacceptable standards right in front of your NPC, and your NPC has noticed, and now wants to baby you.]
	say "Something seems to change in the way [NameDesc of M] is looking at you.[line break][speech style of M]'[if M is grabbing the player or M is not doing nothing special]Yes, that's right, I'm the Mommy, nya, and you're my little baby...'[otherwise]You know what, nya? I think you've swirled far enough down the drain of slutdom that it's finally worth breaking your little mind! Nyaa!'[end if][roman type][line break]".

To compute MasturbationReaction of (M - neuromancer):
	if M is awake:
		if M is penetrating a body part:
			if M is friendly-fucking:
				say "[BigNameDesc of M] grins, and starts thrusting even faster.";
			otherwise:
				say "[BigNameDesc of M] [if M is penetrating a fuckhole]spanks[otherwise]slaps[end if] you angrily.[line break][speech style of M]'Nya? Did I give you permission to do that? This is supposed to be a punishment!'[roman type][line break]";
				PainUp 10;
				say "[bold type]Your masturbation session has been interrupted![roman type][line break]";
				follow the masturbation ended rule;
		otherwise:
			say "[BigNameDesc of M] stares, wide-eyed.[line break][speech style of M]'[if M is friendly]Nyaaa? You want to be mind broken?'[otherwise]Yes you shall make a fine servant! Nya!'[end if][roman type][line break][big he of M] begins warming up her magic in anticipation.";
			interest M;
			anger M.

To say CurtseyReactionFlav of (M - neuromancer):
	let K be a random worn currently visible knickers;
	unless K is nothing:
		say "[BigNameDesc of M] [']Nya[']s.[line break][speech style of M]'I can see your [ShortDesc of K], [if diaper quest is 1]you saucy sausage[otherwise]slut[end if]!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] smirks.[line break][speech style of M]'Yesss... Nyaaaa. About time you gave me the proper respect.'[roman type][line break]".

To say DisapprovalFlav of (M - neuromancer): [This is when the player is in some way looking suddenly more lewd in front of the NPC, maybe because they pulled out their tits, or maybe because a trap pulled up their skirt, or jizzed on them, or similar.]
	say "[BigNameDesc of M] [one of]glances over at you and smirks.[or]blinks then grins wide as [his of M] eyes take in the sight.[line break][speech style of M]'Nyaa… I see…'[roman type][line break][or]cackles as [he of M] watches you, amused.[or]begins to purr loudly.[line break][speech style of M]'Oh yesss, nyaaa. You would make a fine servant.'[roman type][line break][in random order]".

To say EnemaFloorReactionFlav of (M - neuromancer): [When the player squirts an anal creampie / enema onto the ground in front of the NPC]
	say "[BigNameDesc of M] [if M is interested]looks disgusted[otherwise]turns to look at you with an expression of disgust[end if].[line break][speech style of M]'Why would you do that in front of me, nya?! You trashy skank, nya!'[roman type][line break][moderateHumiliateReflect]".

To say EnemaReactionFlav of (M - neuromancer) into (C - a clothing): [When the player squirts an anal creampie / enema into worn clothing in front of the NPC]
	say "[BigNameDesc of M] [if M is interested]looks disgusted[otherwise]turns to look at you with an expression of disgust[end if].[line break][speech style of M]'Into your own [ShortDesc of C]?! Have you absolutely no shame or class, nyaaa?!'[roman type][line break][moderateHumiliateReflect]".


Part 2 - Perception

To decide which number is the outrage tolerance of (M - neuromancer):
	decide on 7.

To compute perception of (M - neuromancer):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise if M is unfriendly:
		say AlreadyUnfriendlyPerception of M;
	otherwise if the class of the player is living sex doll:
		if M is strapped:
			say "[big he of M] doesn't seem interested in you.";
			bore M;
		otherwise:
			say SexDollPerception of M;
			anger M;
	otherwise:
		if april fools content is 1, say "[speech style of M]'Happy [april fools]!'[roman type][line break][BigNameDesc of M] smirks.";
		if diaper quest is 1:
			compute dq appearance assessment of M;
		otherwise:
			compute appearance assessment of M.

To compute appearance assessment of (M - neuromancer):
	if the appearance of the player > the outrage tolerance of M:
		FavourDown M by 2;
		if M is unfriendly:
			say "[UnfriendlySluttyPerception of M][big he of M] takes an aggressive pose.";
		otherwise if M is groping:
			compute grope of M;
		otherwise:
			say FriendlySluttyPerception of M;
	otherwise if the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
	otherwise:
		say BoringPerception of M;
	if M is friendly:
		say "[BigNameDesc of M] [one of]seems to intend to follow you around for a while[or]begins to follow you around again[stopping].".

To compute dq appearance assessment of (M - neuromancer):
	if the cringe appearance of the player > the cringe tolerance of M:
		FavourDown M by 2;
		if M is unfriendly:
			say "[UnfriendlyBabyPerception of M][big he of M] takes an aggressive pose.";
		otherwise if M is groping:
			compute grope of M;
		otherwise:
			say FriendlySluttyPerception of M;
	otherwise if the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
	otherwise:
		say BoringPerception of M;
	if M is friendly:
		say "[BigNameDesc of M] [one of]seems to intend to follow you around for a while[or]begins to follow you around again[stopping].".

To say AlreadyUnfriendlyPerception of (M - neuromancer): [The NPC has just spotted the player, and has already decided they're best used as a cumdump]
	say "[speech style of M]'[one of]A perfect slave if I’ve ever seen one, nyaa! Get on your knees.'[or]It[']s time to break your mind, slut nyaaa!'[or]How would you like another fetish? Nya.'[or]I am going to mold your pathetic little mind into my plaything, nyaaaa yes!'[in random order][roman type][line break]".

To say FriendlySluttyPerception of (M - neuromancer): [The NPC has just spotted the player while the player looks slutty, but hasn't witnessed enough to decide to fuck them.]
	say "[speech style of M]'[one of]Hmmm. You might make an interesting toy, nya.'[or]You are just begging to have your little mind broken, aren[']t you? Nya.'[or]You have potential. With a few… adjustments. Nya.'[in random order][roman type][line break]".

To say UnfriendlySluttyPerception of (M - neuromancer): [The NPC has just spotted the player while the player looks slutty, but hasn't had much of a chance to start disapproving of them yet.]
	say "[speech style of M]'[one of]Oh dear, nya what a pathetic little slave. Here let me help you, nyaaa.'[or]Ah, you must be my new slave. Nya. Hold still while I make a few changes...'[or]Nya, hold still and consider the following:'[in random order][roman type][line break]".

To say UnfriendlyBabyPerception of (M - neuromancer): [The NPC has just spotted the player while the player looks slutty, but hasn't had much of a chance to start disapproving of them yet.]
	say "[speech style of M]'[one of]Oh dear, nya what a pathetic little kitten. Here let me help you, nyaaa.'[or]Ah, you must be my new kitten. Nya. Hold still while I make a few changes...'[or]Nya, hold still and consider the following:'[in random order][roman type][line break]".

To say BoringPerception of (M - neuromancer): [The NPC has spotted the player who doesn't look slutty enough to decrease their friendliness]
	say "[speech style of M]'[one of]Ooh, an adventurer! But not quite as slutty as the type I'm looking for. Nya[or]Nya? Hmmm[stopping].'[roman type][line break]Despite sounding uninterested, it seems that [NameDesc of M] intends to follow you around for a bit, to see what you get up to.".


Part 3 - Combat

Section 1 - Protection

To compute (M - neuromancer) protecting against (X - a monster):
	say "[speech style of M]'Haha, that looks like fun! Can I join in?'[roman type][line break]";
	anger M;
	compute attack of M.

Section 2 - Attack

To compute the default taunting of (M - neuromancer):
	say "[BigNameDesc of M] watches, making no attempt to hide [his of M] glee.".

To compute the dildo stuck taunting of (M - neuromancer):
	say "[BigNameDesc of M] puts [his of M] hand to [his of M] chin as if admiring an art exhibit.[line break][speech style of M]'[one of]Nya, yes, you're clearly going to do REALLY well in this game. Haha[or]Have you considered NOT getting caught by traps? Someone might be led to think that you're enjoying this, nya.[or]Perhaps you should leave the adventuring to the people with brains, nya.[or]Nya, I can't believe you got caught by such a basic trap[in random order]!'[roman type][line break]".

To compute flying player taunting of (M - neuromancer):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] jeers at you.[line break][speech style of M]'[one of]Look at this [if weight gain fetish is 1]fat [end if]bitch stuck on the ceiling! Haha![or]When you get down I'll show you who's boss![or]I can't believe you're still up there![or]I hope you're as disgusted with yourself as I am with you. You can't even move![or]What kind of dumb bitch gets [himself of the player] stuck on the ceiling?[or]You look absolutely disgraceful, you know that, right?[or][if weight gain fetish is 1]Fatty[otherwise]Someone[end if][']s going to get a pounding when [he of the player] gets back down here![in random order]'[roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		slightHumiliate.

To say LandingTaunt of (M - neuromancer):
	say "[BigNameDesc of M] giggles.[line break][speech style of M]'That's it, come here [if weight gain fetish is 1]fatty[otherwise][bitch][end if]...'[roman type][line break]";
	moderateHumiliate.

To say PresentAcceptanceFlav of (M - neuromancer):
	say "[BigNameDesc of M] grins.[line break][speech style of M]'An excellent suggestion!'[roman type][line break]".

To say PresentRejectionFlav of (M - neuromancer):
	say "[BigNameDesc of M] seems deep in thought.[line break][speech style of M]'Your opinion doesn't matter, nya. The real question is, what do *I* want to do?'[roman type][line break]".

To say angry punishment insult of (M - neuromancer):
	say "[speech style of M]'You DARE to defy me?! Nyaaa!'[roman type][line break]".

The neuromancer unique punish rules is a rulebook.
This is the neuromancer unique punishment rule:
	follow the neuromancer unique punish rules;
	if the rule succeeded, rule succeeds.
The unique punishment rule of neuromancer is the neuromancer unique punishment rule.

This is the neuromancer sissification rule:
	if the player is gendered male and a random number between 1 and 2 is 1:
		let M be neuromancer;
		say "[speech style of M]'Don't you know [if the health of M < the maxhealth of M]I beat you with techniques that only work on girls, [otherwise]you have a girl's brain, [end if]nya~!'[roman type][line break][BigNameDesc of M][']s words reverberate in your head.[line break][variable custom style]R.. right... I'm more like a girl...[roman type][line break]";
		compute sissification.
The neuromancer sissification rule is listed in the neuromancer unique punish rules.

This is the neuromancer short skirt summon rule:
	let S be a random worn skirted clothing;
	if S is a destructible clothing or (S is nothing and the number of worn unskirted themed clothing is 0):
		let neuro-action-success be false;
		if debuginfo > 0, say "[input-style][MediumDesc of neuromancer] has identified the [ShortDesc of S] as destructible.[roman type][line break]";
		if (S is shin-length-or-longer clothing) or (short skirts permanent fetish > 0 and S is short-skirt-disallowed):
			now neuro-action-success is true;
			say "[speech style of neuromancer]'Your skirt is much too long. NYA!'[roman type][line break][BigNameDesc of neuromancer] swipes at your [S] with [his of neuromancer] claws, and rapidly rips to shreds!";
			destroy S;
		if the number of worn skirted clothing is 0:
			let C be a random off-stage fetish appropriate plentiful short-skirt-allowed actually summonable skirt;
			if C is nothing or S is overdress:
				if short skirts permanent fetish is 0, now C is a random off-stage fetish appropriate plentiful knee-length-or-shorter actually summonable overdress;
				otherwise now C is a random off-stage fetish appropriate plentiful short-skirt-allowed actually summonable overdress;
			if C is nothing or (S is not overdress and short skirts permanent fetish is 0):
				now C is a random off-stage fetish appropriate plentiful knee-length-or-shorter actually summonable skirt;
			if C is actually summonable:
				say "[speech style of neuromancer]'You should wear something [if C is super-short-or-shorter]SUPER [end if]slutty, like this!'[roman type][line break][BigNameDesc of neuromancer] hands you a [MediumDesc of C]! To your [horror the humiliation of the player / 2000], as soon as you touch it, your hands begin immediately putting it on, without you even telling them to![line break]...And of course, once it is on, you can immediately tell that it is cursed, and can't be removed until you fulfill the conditions of the curse.";
				summon C cursed with quest;
				now neuro-action-success is true;
		if neuro-action-success is true:
			if short skirts permanent fetish is 1 or (short skirts permanent fetish < 4 and there is worn crotch-in-place skirted clothing and the player is not fighting against short skirts) or the player is getting lucky:
				satisfy neuromancer;
				unless short skirts permanent fetish is 1 or (short skirts permanent fetish < 4 and there is worn crotch-in-place skirted clothing and the player is not fighting against short skirts), say GotLuckyFlav;
			rule succeeds.
The neuromancer short skirt summon rule is listed in the neuromancer unique punish rules.

This is the neuromancer short skirt fetish rule:
	if (short skirts permanent fetish is 0 or short skirts permanent fetish > 1) and the number of currently uncovered unglued skimpy-underwear-disallowed autoremovable knickers is 0:
		unless short skirts permanent fetish > 0 and short skirts permanent fetish < 4 and there is worn crotch-in-place skirted clothing and the player is not fighting against short skirts:
			say "[BigNameDesc of neuromancer] stares right into your pupils and deep down into your soul.[line break][speech style of neuromancer]'A little tweak in your mind here, a nudge there... And you'll soon be wearing [if diaper quest is 1]silly[otherwise]sexy[end if] clothing ALL the time!'[roman type][line break][BigNameDesc of neuromancer] snaps [his of neuromancer] fingers, and you blink rapidly in confusion, as a new mantra fills your mind.";
			if short skirts permanent fetish is 0:
				say "[second custom style]Skirts are so lovely... Skirts are the best... I love wearing skirts... I only wear skirts...[roman type][line break]";
			otherwise if short skirts permanent fetish > 3:
				say "[second custom style]Long skirts are for prudes... Long skirts are for prudes... Long skirts are for prudes...[roman type][line break]";
			otherwise:
				say "[second custom style]I keep my skirts super short... I keep my skirts super short... I keep my skirts super short...[roman type][line break]";
			if short skirts permanent fetish is 0, now short skirts permanent fetish is 6;
			otherwise decrease short skirts permanent fetish by 1;
			follow the short skirt addiction description rule;
			satisfy neuromancer;
			rule succeeds.
The neuromancer short skirt fetish rule is listed in the neuromancer unique punish rules.

This is the neuromancer panties destruction rule:
	let S be a random currently uncovered unglued panties;
	if S is autoremovable clothing and (S is skimpy-underwear-disallowed or the assModesty of S > 3):
		say "[speech style of neuromancer]'[if diaper quest is 1]Babies[otherwise]Sluts[end if] like you shouldn't be wearing such boring, unrevealing underwear, silly! I think you should give me your [ShortDesc of S], don't you? Nya~'[roman type][line break][BigNameDesc of neuromancer][']s words reverberate in your head.[line break][variable custom style]Give [him of neuromancer] my... [ShortDesc of S]...[roman type][line break]";
		now autoremove is true;
		try taking off S;
		now autoremove is false;
		say "Before you know what's happening, you find yourself placing your [S] into [NameDesc of neuromancer][']s outstreched hand!";
		now S is carried by neuromancer;
		if (skimpy underwear fetish < 0 or skimpy underwear fetish > 3 or skimpy underwear fetish >= the assModesty of S) and the player is not no-panties-allowed:
			if skimpy underwear fetish < 0 or skimpy underwear fetish > 3:
				now skimpy underwear fetish is 3;
			otherwise:
				decrease skimpy underwear fetish by 1;
			if the assModesty of S >= skimpy underwear fetish, now skimpy underwear fetish is the assModesty of S - 1;
			say "[speech style of neuromancer]'What a good [if diaper quest is 1]baby[otherwise]slut[end if]! I'm proud of you, nya! But I think I should make sure that you don't just put something else on after I let you go...'[roman type][line break][BigNameDesc of neuromancer][']s eyes become twice as bright, as [he of neuromancer] pushes a strong suggestion deep into your subconcious. You find yourself focused on a new [if diaper quest is 0]slutty [end if]mantra:[paragraph break]";
			if diaper quest is 1, say "[second custom style][if skimpy underwear fetish >= 3]I love skimpy hotpants, and big poofy diapers...[otherwise if skimpy underwear fetish > 0]I love tiny thongs, and big poofy diapers...[otherwise]Underwear is for prudes... Unless it's a diaper[end if]...[roman type][paragraph break]";
			otherwise say "[second custom style][if skimpy underwear fetish >= 3]I love skimpy hotpants and thongs... I love skimpy hotpants and thongs[otherwise if skimpy underwear fetish > 0]I love thongs... I love thongs[otherwise]Underwear is for prudes... Underwear is for prudes[end if]...[roman type][paragraph break]";
			say "When you are able to focus your vision again, you see that [NameDesc of neuromancer] looks very pleased with [himself of neuromancer].";
			if the bimbo of the player < 10 and the player is able to speak:
				say "[variable custom style]'What have you done?!'[roman type][line break]You immediately demand, audibly very concerned.[line break][speech style of neuromancer]'You know exactly what I've done... Nyahahahaha!'[roman type][line break]";
		otherwise:
			say "[speech style of neuromancer]'What a good [if diaper quest is 1]baby[otherwise]slut[end if]! I'm proud of you, nya!'[roman type][line break]";
		satisfy neuromancer;
		rule succeeds;
	otherwise if (skimpy underwear fetish < 0 or skimpy underwear fetish > 3) and the player is not no-panties-allowed:
		if skimpy underwear fetish < 0 or skimpy underwear fetish > 3:
			now skimpy underwear fetish is 3;
		otherwise:
			decrease skimpy underwear fetish by 1;
		say "[speech style of neuromancer]'I'm gonna do something funny to your brain now, nyehehehe...'[roman type][line break][BigNameDesc of neuromancer][']s eyes become twice as bright, as [he of neuromancer] pushes a strong suggestion deep into your subconcious. You find yourself focused on a new slutty mantra:[paragraph break]";
		if diaper quest is 1, say "[second custom style][if skimpy underwear fetish >= 3]I love skimpy hotpants, and big poofy diapers...[otherwise if skimpy underwear fetish > 0]I love tiny thongs, and big poofy diapers...[otherwise]Underwear is for prudes... Unless it's a diaper[end if]...[roman type][paragraph break]";
		otherwise say "[second custom style][if skimpy underwear fetish >= 3]I love skimpy hotpants and thongs... I love skimpy hotpants and thongs[otherwise if skimpy underwear fetish > 0]I love thongs... I love thongs[otherwise]Underwear is for prudes... Underwear is for prudes[end if]...[roman type][paragraph break]";
		say "When you are able to focus your vision again, you see that [NameDesc of neuromancer] looks very pleased with [himself of neuromancer].";
		if the bimbo of the player < 10 and the player is able to speak:
			say "[variable custom style]'What have you done?!'[roman type][line break]You immediately demand, audibly very concerned.[line break][speech style of neuromancer]'You'll find out the next time you put on underwear... Nyahahahaha!'[roman type][line break]";
		satisfy neuromancer;
		rule succeeds.
The neuromancer panties destruction rule is listed in the neuromancer unique punish rules.


To say MindingOwnBusinessCombatFlav of (M - neuromancer): [Your NPC was minding their own business and not even looking at the player when they attacked]
	say "[big he of M] tilts her head in confusion as she stares at you.[line break][speech style of M]'Nyaaa? What’s this? A volunteer to be my new servant? I’m going to have fun breaking your pathetic little mind, [bitch]!'[roman type][line break]".


To say RudeAwakeningFlav of (M - neuromancer): [Your NPC was sleeping when the player attacked]
	say "[big he of M] wakes up, rubbing [his of M] eyes.[line break][speech style of M]'Nyaaa?!'[roman type][line break]".

To say DamageReactHealthy of (M - neuromancer):
	say "[BigNameDesc of M] [one of]cackles with amusement[or]grins and licks [his of M] lips[at random].".

To say DamageReactDamaged of (M - neuromancer):
	say "[BigNameDesc of M] growls and hisses.[one of][line break][speech style of M]'You’re just making me angry! Nya!'[roman type][line break][or][stopping]".

To say DamageReactTired of (M - neuromancer):
	say "[BigNameDesc of M] [one of]hisses and screeches in a cat-like manner![or]screeches in pain.[line break][speech style of M]'NYAAA!!'[roman type][line break][at random]".

To say DamageReactWeak of (M - neuromancer):
	say "[BigNameDesc of M] [one of]is having trouble standing![or]looks like [he of M][']s in pain.[or]wobbles and moans as [he of M] tries to keep standing![at random]".

To say MovementBlock of (M - neuromancer):
	say "[BigNameDesc of M] waves [his of M] palm and [one of]you find yourself suddenly heading in the wrong direction, back towards [him of M].[line break][variable custom style]Huh?![roman type][line break][or]your eyes lock with [his of M] own. And suddenly... You don’t feel like running at this moment.[cycling]".

To say StandingBlock of (M - neuromancer):
	say "[BigNameDesc of M] stares into your eyes, and you suddenly don’t feel like standing up at this moment.".

To say BanishFleeFlav of (M - neuromancer):
	say "[speech style of M]'Nyaaaa!!! No! Don’t send me back!!I don’t want to go back!!! NYAAAA!!!'[roman type][line break]Those are [NameDesc of M][']s final words before [he of M] explodes in a shower of magic.".

To say SexResistSlapFlav of (M - neuromancer):
	say "[BigNameDesc of M] [one of]cackles[or]laughs deeply[or]chuckles[or]snorts[at random] at your [one of]fruitless display[or]vain efforts[or]pointless attempts[or]futile resistance[at random] before [if M is male and M is penetrating face]slapping you harshly on the cheek[otherwise if M is male and M is penetrating breasts]painfully slapping your [BreastDesc][otherwise]roughly spanking your [buttcheeks][end if] [one of]to get you to behave[or]in order to keep you under control[or]as punishment[or]to discourage further disobedience[at random].".


To say MonsterTripAnnounceFlav of (M - neuromancer):
	say "[BigNameDesc of M] pushes you with magic to try and trip you up!".

To say MonsterFailedTripFlav of (M - neuromancer):
	say "You manage to keep your balance.".

To say StrikingSuccessFlav of (M - neuromancer) on (B - a body part):
	say "[BigNameDesc of M] blasts you with a magic bolt on the [TargetName of B]! Ouch!!".

To say StrikingFailureFlav of (M - neuromancer) on (B - a body part):
	say "[BigNameDesc of M] tries to blast you with a magic bolt on the [TargetName of B] but you manage to swiftly dodge it!".

Definition: neuromancer (called M) is uniquely ready to entice:
	if the player is able to orgasm, decide yes;
	decide no.

To compute enticing of (M - neuromancer):
	say "[speech style of M]'Power word: CUM!'[roman type][line break][BigNameDesc of M] yells, staring directly into your eyes.[paragraph break]Before you can even fully comprehend what [he of M] said, you are thrown into an extremely pleasurable full body orgasm!";
	now forced-multi-turn-orgasm is true;
	now multi turn orgasm turns is a random number between 1 and 3;
	vaginally orgasm shamefully.

This is the neuromancer uses your diaper rule:
	let M be current-monster;
	if the player is diaper focused:
		let D be a random worn diaper;
		if watersports fetish is 1:
			let C be the coverer of D;
			if C is clothing:
				compute M attacking C;
			otherwise:
				now C is a random worn overdress;
				say "[BigNameDesc of M] pulls up the rear of the waistband of your [D] and squats over your back. [big he of M] starts peeing!";
				PissSoak 6 on D;
				if C is clothing, PissSoak 6 on C;
				satisfy M;
		otherwise:
			say "[BigNameDesc of M] gives you a strong spanking through your [D]![line break][speech style of M]'[one of]Do you like to get treated like a bad [boy of the player], huh? Take this!'[or]Time for your punishment, loser!'[or]When you're in a big nappy like that, there's only one appropriate way to punish you!'[in random order][italic type][line break]SMACK SMACK THWACK SMACK[roman type][line break]";
			PainUp 10;
			satisfy M;
		rule succeeds.
The diaper punishment rule of neuromancer is the neuromancer uses your diaper rule.

Section 2 - Damage

To say PityOfferResponse of (M - neuromancer):
	say "[speech style of M]'Hmm... I guess we can put this behind us... Nya.'[roman type][line break]".

To say TaxReturnDismay of (M - neuromancer):
	say "[speech style of M]'Nobody robs Nakashi Darkatt and gets away with it! I'll be back!'[roman type][line break]".

Section 3 - Dominant sex

To say DominanceFailure of (M - neuromancer):
	say "You [if the player is wrist bound]dive[otherwise]get[end if] behind [NameDesc of M] and try to grab [if the player is wrist bound][his of M] tail with your teeth. [otherwise]ahold of [his of M] tail. [end if]Unfortunately, [he of M]'s too quick for you, and you land on the ground instead.";

To compute failed dominance punishment of (M - neuromancer):
	if the player is getting unlucky:
		say "[BigNameDesc of M] sits on your chest and begins blasting your junk with bolts of magic. PLeasure ripples through your whole body as your [if the player is possessing a penis]penis[otherwise]pussy[end if] is completely saturated with magic.";
		Arouse 3000;
		if the player is possessing a penis, PenisObedienceUp 1;
		otherwise VaginalSexAddictUp 1;
	otherwise:
		compute sissy punishment of M.

To penetration dominate (M - neuromancer):
	let C be a random worn bottom level protection clothing;
	say "You [if the player is wrist bound]dive[otherwise]get[end if] behind [NameDesc of M] and grab [if the player is wrist bound][his of M] tail with your teeth.[otherwise]ahold of [his of M] tail.[end if][line break][speech style of M]'NYA-AAHH?! L-LET GO! LET GO RRRIGHT NYEOW!'[roman type][line break][big he of M] claws at the ground, shaking [his of M] obscenely fat ass in your face as [he of M] clumsily tries to crawl away from your grip. Naturally, you tighten it, [if the player is wrist bound]pressing the head of your [SexDesc of penis][otherwise if C is clothing]freeing your [SexDesc of penis] from your [ShortDesc of C] and pressing it[otherwise if penis is penis-erect]pressing the head of your [SexDesc of penis][otherwise]pressing your hardening [sexual-player-penis][end if] against [his of M] ring.";
	if sexual-penis-length > 8:
		say "[line break][speech style of M]'Nya, you wanna put it in my nyasshole too? Nya, get away~'[roman type][line break][big he of M] yowls dramatically, slamming [his of M] hips back as if to shove you away. Naturally, that results in your [SexShaft] being forced into [his of M] [asshole], and your hips slamming into [hers of M]. Keeping [his of M] tail in your grasp, you don't allow [him of M] to leave you in the dust, fiercely pounding [his of M] hole until you blow your [load] inside [him of M].";
	otherwise if sexual-penis-length > 3:
		say "[line break][speech style of M]'Nya, you wanna put it in my nyasshole too? Nya, you're so meeean!'[roman type][line break][big he of M] yowls, slams [his of M] hips back as if to shove you away. Naturally, that results in your [SexShaft] being smashed between [his of M] buttcheeks, and [his of M] tail very nearly slipping your grasp as you struggle to penetrate [him of M]. You do manage to 'pierce' [him of M] despite [his of M] squirming, but the struggle leaves you blowing your [load] far sooner than you would have liked.";
		now player-fucking is DOMINANT-NEUTRAL;
	otherwise:
		say "[line break][speech style of M]'Nya, you're putting it in my nyasshole too? It's too biiiig~'[roman type][line break][big he of M] squeals, gasping and moaning as if you've already begun to fuck [him of M]. You try to *actually* fuck [him of M], but [he of M] manages to slip [his of M] tail from your grasp at the perfect moment and make you grind your [SexShaft] against [his of M] buttcheeks. All bets are off from there, your continued efforts eventually resulting in your [load] being blown into [his of M] asscrack.";
		now player-fucking is DOMINANT-SHAMEFUL;
	say AfterDominationComment 2 of M;
	orgasm;
	AnalGet.

To facesit dominate (M - neuromancer):
	let F be asshole;
	if the player is possessing a vagina, now F is vagina;
	let C be a random worn bottom level protection clothing;
	say "You [if the player is wrist bound]dive for[otherwise]grab for[end if] [NameDesc of M]'s tail, successfully snatching it [if the player is wrist bound]between your teeth. [otherwise]with your fist. [end if][big his of M] head bumps up against your [if F is vagina]crotch[otherwise]butt[end if] as [he of M] yowls and arches [his of M] back, and you trap [his of M] face with your thighs.[line break][speech style of M]'NYAAAOOW, m-my tail! Nya have to let go of my tail!'[roman type][line break]";
	if the semi-dominance roll for M >= 0:
		say "You release [him of M] right away, and [his of M] eyes flicker with mischief as [he of M] smoothes out [his of M] tail.[line break][speech style of M]'So nyice of you~! Nya, I guess I'll let you remember all the cool sex stuff we totally just did![roman type][line break][BigNameDesc of M] shoots a pink bolt into your chest, and suddenly you remember having sex with [him of M] in all sorts of positions (all with [him of M] on top), and at the end, you even remember climaxing! Wow, that sure was great... though it feels kind of like you lost somehow.";
		now player-fucking is DOMINANT-SHAMEFUL;
		slightDignify;
		passively stimulate F times 2;
		if F is vagina, VaginalSexAddictUp 1;
		otherwise AnalSexAddictUp 1;
		say AfterDominationComment 1 of M;
	otherwise:
		say "You think for a moment before releasing [his of M] tail, but NOT [his of M] face.[line break][speech style of M]'Nya, fine.'[roman type][line break][BigNameDesc of M] grumbles, [his of M] tail swishing in agitation as [his of M] tongue skillfully strokes your [if F is vagina]folds. [otherwise]ring. [end if][big he of M] REALLY knows what [he of M]'s doing, and within moments, you are moaning as you [if F is vagina]squirt all over[otherwise]climax against[end if] [his of M] face.";
		moderateDignify;
		orgasm;
		say AfterDominationComment 2 of M;
	LickGet.

To say AfterDominationComment (N - a number) of (M - unicorn):
	if N is 1:
		say "[speech style of M]'[one of]Nya, see you later!'[or]That was fun, wasn't it, nya?'[or]Nyaahh, that felt sooo good!'[in random order][roman type][line break]";
	otherwise if N is 2:
		say "[speech style of M]'[one of]Nya, you're so mean!'[or]Nya, meanie!'[or]Nya, I'll remember this!'[in random order][roman type][line break]".

Part 5 - DQ


neuromancer-hypno is a diaper punishment. The priority of neuromancer-hypno is 5.

To say EnticeFlav of (M - a monster) for (P - neuromancer-hypno):
	say "[line break][speech style of M]'We don't have to do this the hard way, you know, nya. Just get on your knees, and let me tweak your brain~'[roman type][line break]".

To decide which number is the relevant addiction of (P - neuromancer-hypno):
	decide on the bimbo of the player.

Definition: neuromancer-hypno is appropriate:
	if current-monster is neuromancer, decide yes;
	decide no.

To compute punishment of (P - neuromancer-hypno):
	follow the neuromancer unique punish rules;
	unless the rule succeeded, satisfy current-monster.



Part 6 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - neuromancer):
	say "[speech style of M]'Hi, nya! You're cute! I wonder what makes you tick...'[roman type][line break]";

To say RepeatResponse of (M - neuromancer):
	if M is unfriendly:
		say "[BigNameDesc of M] giggles.[line break][speech style of M]'You're mostly-broken already, aren't you?'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Ooh, I am having so much fun meeting all the cute little sluts around here!'[roman type][line break]";

To say SubmissiveResponse of (M - neuromancer):
	if M is friendly:
		say RepeatResponse of M;
	otherwise:
		say "[speech style of M]'[one of]Ooh, I remember you. Does this mean you want more?'[or]Hi! I hope you're ready for another brain tweak...'[stopping][roman type][line break]";

To say UnAnnoyedResponse of (M - neuromancer):
	say "[speech style of M]'[one of]Haha! This is so much fun!'[or]I knew you'd love this!'[at random][roman type][line break]";

To say MildAnnoyedResponse of (M - neuromancer):
	say "[speech style of M]'[one of]Haha! Take it!'[or]Take it, loser!'[or]I know you love it!'[or]Wow, are you this talkative when guys fuck you?'[or]Scream, loser! I won't let up!'[at random][roman type][line break]";

To say AnnoyedResponse of (M - neuromancer):
	say "[speech style of M]'[one of]Stop being such a sore loser!'[or]Shut up, you're being such a bad sport!'[or]Are you ever going to stop complaining?!'[at random][roman type][line break]".

To compute annoyed punishment of (M - neuromancer):
	say "[speech style of M]'[one of]Ooh, you are SO going to regret this.'[or]Haha, I'm so going to get you later.'[at random][roman type][line break]";
	SilentlyDifficultyUp M by 2.

Section 2 - Questioning

To say WhereAnswer of (M - neuromancer):
	say "[speech style of M]'This is a lovely little region full of silly little SUGGESTIBLE ladies. So, exactly where I wanna be. Hehehe. Nya.'[roman type][line break]";

To say WhoAnswer of (M - neuromancer):
	say "[speech style of M]'Hi, I'm Nakashi, pleased to make your acquaintance, nya!'[roman type][line break]";

To say StoryAnswer of (M - neuromancer):
	say "[speech style of M]'I wanted to find a place with a little bit of a power vaccuum, where I can exert my will over the submissives! And the soon-to-be submissives...'[roman type][line break]";

To say EscapeAnswer of (M - neuromancer):
	say "[speech style of M]'Hehehe, places like this are my favourite. Getting in is easy, getting out... Much less so, nyahaha!'[roman type][line break]";

To say AdviceAnswer of (M - neuromancer):
	say "[speech style of M]'There's a couple of statues in this mansion with some incredible powers, if you know how to exploit them well. Touching the back of the dark one every now and then will help make your magic stronger and stronger. I should know, nya!'[roman type][line break]";

To compute teaching of (M - neuromancer):
	if diaper quest is 0:
		say "[speech style of M]'When someone's shoving their massive cock up your you-know-where, it's important to be able to stay loose and let it happen, otherwise you won't enjoy it properly! Here, let me show you how...'[roman type][line break]";
		teach relaxing;
	otherwise:
		say "[speech style of M]'Hmm, maybe in a future version I'll have thought of something to teach you.'[roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - neuromancer):
	if the player is prone and watersports fetish is 1:
		say "[BigNameDesc of M][']s eyes light up.[line break][speech style of M]'One Piss Slut Special, coming right up!'[roman type][line break][BigNameDesc of M] doesn't give you a chance to react before [he of M] is pissing straight at you! [variable custom style][if the urine taste addiction of the player < 6]Shit shit shit![otherwise if the urine taste addiction of the player < 13]That's not what I meant...[otherwise]Ooh, yum![end if]";
		FacePiss from M;
	otherwise:
		say "[if watersports fetish is 1]You notice a naughty look in [his of M] eyes.[line break][speech style of M]'[one of]Get on your knees and ask me again.'[or]Haha, sure! But only if you get on your knees first!'[or]Of course, why didn't you ask sooner? Get on your knees and open wide!'[or]Totally. Get on your knees and say the word, I've got plenty for you.'[at random][otherwise][speech style of M]'Haha, no, does it look like this outfit has pockets?'[end if][roman type][line break]";

To compute unfriendly drink of (M - neuromancer):
	say "[speech style of M]'[if watersports fetish is 1]Oh I'll give you a drink all right!'[otherwise]You should stop talking and start moving if you want any chance of beating me in a fight!'[end if][roman type][line break]";
	interest M.

Section 5 - Trading

To say MonsterOfferAcceptFlav of (M - neuromancer) to (T - a thing):
	say "[speech style of M]'Oh wow, [if T is clothing]that'll look amazing on me[otherwise]that's so generous of you[end if]!'[roman type][line break]";

To say MonsterOfferRejectFlav of (M - neuromancer) to (T - a thing):
	say "[BigNameDesc of M] refuses.[line break][speech style of M]'Nyaa... I don't like to do trades.'[roman type][line break]".

To say ErrandThanksFlav of (T - a thing) from (P - neuromancer):
	say "[speech style of P]'Nyahaha. Perfect. Here you go, then.'[roman type][line break]".


Neuromancer ends here.
