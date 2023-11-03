Conversation by Monster Framework begins here.

currently-speaking is initially false. [some things don't make sense to get while you're speaking, e.g. a wisp that punishes you for speaking]

A talk-object is a kind of thing.
The printed name of a talk-object is "". [#LXorDD: Just to make Selkie's latex doll struggle easier to code.]

To consider (T - a talk-object) for (M - a monster):
	do nothing.
To execute (T - a talk-object) for (M - a monster):
	do nothing.

[#LXorDD: This would be the normal way to achieve this, but I want to try with a more direct intervention just in the more conversational function below.]
[
This is the latex transformation prevents speech rule:
	if the latex-transformation of the player < 8, rule fails.
The latex transformation prevents speech rule is listed in the player speech rules.
]

To compute multiple choice conversation of (M - a monster):
	now currently-speaking is true;
	reset multiple choice questions;
	if the player is not silently able to manually speak:
		set numerical response 1 to the substituted form of "[gag sounds]";
		set numerical response 0 to "cancel";
		compute multiple choice question;
		if player-numerical-response is 1:
			allocate 3 seconds;
			say "[variable custom style][chosen numerical response][roman type][line break]";
			compute gagged response of M;
	otherwise if M is uninterested or (M is woman-player and M is stranger):
		consider talk-greet for M;
		set numerical response 0 to "cancel";
		compute multiple choice question;
		if player-numerical-response is 1:
			allocate 4 seconds;
			say "[variable custom style][chosen numerical response][roman type][line break]";
			execute talk-greet for M;
		now the printed name of talk-greet is "";
	otherwise:
		let N be 0;
		repeat with T running through talk-objects:
			consider T for M;
			let TXT be the substituted form of "[printed name of T]";
			if TXT is not "": [Before setting (initial) printed name of talk-object to "" I had to test for: unless TXT matches the text "talk-"]
				increase N by 1;
				[if debugmode > 1, say "Added ['][printed name of T][run paragraph on]['] as question [N].[line break]";]
		set numerical response 0 to "cancel";
		compute multiple choice question;
		if M is intelligent and the latex-transformation of the player >= 7 and player-numerical-response is not 0: [#LXorDD: As per LATEX TRANSFORMATION GUIDELINES: at 7 they can't talk: I've tweaked it so that at level 7 they can't talk intelligibly, at 8, they are unintelligible.]
			if the latex-transformation of the player is 8:
				if M is not witch:
					say "[one of][BigNameDesc of M] tilts [his of M] head, shaking [his of M] head at your unintelligible response[or][BigNameDesc of M] looks puzzled by the sounds you're making[or]It looks like [NameDesc of M] is surprised by the inarticulate noises you produce[at random].[if M is intelligent][one of] [speech style of M]'Weird. It's almost like this sex doll is trying to talk to me.'[roman type][line break][or][speech style of M]'Huh, a new kind of doll that can almost talk.'[roman type][line break][or][speech style of M]'Sorry, I don't speak balloon-animal.'[roman type][line break][or][speech style of M]'Ugh. It'd be less creepy if they actually programmed this new kind of doll with some cute phrases, like [']Please fuck me.[']'[roman type][line break][or][speech style of M]'What's that, Slutty - [']Timmy's fallen in the well![']? Are you some kind of fuckdoll sidekick? That's different.'[roman type][line break][or][speech style of M]'Do you want to follow me? Are you meant to be my rubberdoll sidekick? I guess you can follow me around if you want to.'[roman type][line break][as decreasingly likely outcomes][end if]";
				otherwise:
					say "[one of][BigNameDesc of M] tilts [his of M] head, shaking [his of M] head at your unintelligible response[or][BigNameDesc of M] looks genuinely puzzled by the sounds you're making[at random].[one of] [speech style of M]'Look, there's no point trying to talk, you silly sex doll. Go and find the ingredients I told you about to reverse that curse.'[roman type][line break][or][speech style of M]'Fae mushroom; recipe for the curse reversal.'[roman type][line break][or][speech style of M]'You're making as much sense as a squeaky bath toy. Just go and get the things I told you to, like a good little doll.'[roman type][line break][or][speech style of M]'I'd advise you not to make those noises around other people, dolly: they'll probably think you're saying [']Fuck this sex doll.[']'[roman type][line break][in random order]";
			otherwise:
				say "[one of][BigNameDesc of M] tilts [his of M] head, trying to interpret your barely-intelligible response[or][BigNameDesc of M] struggles to interpret the sounds you're making[or]It looks like [NameDesc of M] is struggling to understand you[at random].";
				if a random number between the latex-transformation of the player and 8 is 8:
					[So a 1-in-2 chance since they're TF 7.]
					[if debugmode > 1, say "Number of entries in multiple choice question is [N][line break]";]
					now player-numerical-response is a random number between 1 and N; [They can be correctly understood by chance!]
					let S be the chosen numerical response;
					[I would prefer to say: replace the text "\"" in S with "'" but I'm not sure you can escape "?]
					replace character number 1 in S with "[']";
					now N is the number of characters in S;
					replace character number N in S with "[']";
					say "[one of][speech style of M]'You said [S].'[roman type][line break][or][S] Got it.'[roman type][line break][or][speech style of M]'I think you said [S]. Well...'[roman type][line break][at random]";
				compute chosen conversation of M;
		otherwise if player-numerical-response is not 0:
			[if debugmode > 1, say "About to compute chosen conversation for response to question [player-numerical-response][line break]";]
			compute chosen conversation of M;
	now currently-speaking is false.

To compute gagged response of (M - a monster):
	say "It doesn't seem like [NameDesc of M] [if M is uninterested]knows that you're speaking to [him of M][otherwise]can understand you[end if].".

To compute chosen conversation of (M - a monster):
	let B be a random number from 1 to 4;
	if the class of the player is cheerleader, decrease B by 1;
	if M is intelligent and the player is seductive and (diaper quest is 1 or M is actually seducable) and B < 2: [Bimbo greetings override the normal talking function]
		allocate 4 seconds;
		say BimboSeduce of M;
		if M is friendly, compute BimboSeduced of M;
	otherwise:
		let TXT be the chosen numerical response;
		if debugmode > 1, say "TXT is: [TXT][line break]";
		repeat with T running through talk-objects:
			if debugmode > 1, say "Checking against: [printed name of T][line break]";
			if TXT is not "" and the printed name of T matches the text TXT:
				unless T is talk-request: [talk request opens a new menu and so is handled in a special manner]
					allocate 4 seconds;
					say "[variable custom style][TXT][roman type][line break]";
				now TXT is ""; [makes sure there's no more matches somehow and means that the interpreter doesn't need to waste any more time doing any more complex string comparisons]
				execute T for M;
			otherwise:
				if debugmode > 1, say "No match found.";
			now the printed name of T is "".

Chapter 1 Greeting

A monster has a number called greeted-count.
A monster has a number called greet-window. [While this is above 0, the NPC has only recently noticed the player so we can credibly say hello without it being vain]

talk-greet is a talk-object.

To consider (T - talk-greet) for (M - a monster):
	if M is defeated:
		now the printed name of talk-greet is the substituted form of "[DefeatedGreet of M]";
	otherwise if M is unintelligent:
		now the printed name of talk-greet is the substituted form of "[MuteGreeting of M]";
	otherwise if (the greet-window of M > 0 and M is not penetrating a body part and M is not grabbing the player and M is not wrangling a body part) or M is uninterested:
		now the printed name of talk-greet is the substituted form of "[conventional greeting of M]";
	otherwise:
		now the printed name of talk-greet is the substituted form of "[vanity greeting of M]";
	set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-greet) for (M - a monster):
	if M is defeated: [Defeated monsters use a special greeting function]
		if M is uninterested, compute defeated perception of M;
		say DefeatedGreetResponse of M;
	otherwise:
		if M is a friendly interested human monster and breasts is exposed, progress quest of chest-exposing-quest from M;
		if M is unintelligent: [Dumb monsters use a special greeting function]
			say MuteGreetResponse of M;
		otherwise:
			if M is uninterested intelligent raunchy unfriendly monster, progress quest of greet-quest;
			compute basic greeting to M;
	compute unique greet effect for M;
	increase the greeted-count of M by 1;
	now the greet-window of M is -1.

To compute unique greet effect for (M - a monster):
	do nothing.

[!<SayDefeatedGreetOfMonster>+

Displayed when the player greets a monster that is defeated.

@param <Monster>:<M> The monster being greeted

+!]
To say DefeatedGreet of (M - a monster):
	if M is diaper-enslaved:
		say DiaperEnslavedGreet of M;
	otherwise if M is sex-enslaved:
		if M is bride-consort and key garter is worn, say CuckEnslavedGreet of M;
		otherwise say SexEnslavedGreet of M;
	otherwise:
		say FuckedSillyGreet of M.

[!<SayFuckedSillyGreetOfMonster>+

Displayed when the player greets a monster that has been fucked silly.

@param <Monster>:<M> The monster being greeted

+!]
To say FuckedSillyGreet of (M - a monster):
	say "'[one of]Anybody still in there?'[or]Gosh, you've seen better days, haven't you?'[or]Talk about a fall from grace.'[in random order]".

To say CuckEnslavedGreet of (M - a monster):
	say "'Well, if it isn't my little locked-up hubby.'".

[!<SaySexEnslavedGreetOfMonster>+

Displayed when the player greets a monster that has become a sex slave in trap quest.

@param <Monster>:<M> The monster being greeted

+!]
To say SexEnslavedGreet of (M - a monster):
	say FuckedSillyGreet of M.

[!<SayDiaperEnslavedGreetOfMonster>+

Displayed when the player greets a monster that has become a sex slave in diaper quest.

@param <Monster>:<M> The monster being greeted

+!]
To say DiaperEnslavedGreet of (M - a monster):
	say FuckedSillyGreet of M.

To say DefeatedGreetResponse of (M - a monster):
	if M is intelligent:
		if M is bride-consort and key garter is worn:
			say "[speech style of M]'Hello sweetheart... Please, is it time for you to unlock me yet?'[roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]MMMMMmmmnng!'[or]Mmmmmph'[or]Awoooo...'[or]Haaaah!'[in random order][roman type][line break]".

[!<SayMuteGreetingToMonster>+

Displayed when the player greets a monster that does not talk, or does not like to talk.

@param <Monster>:<M> The monster being greeted

+!]
To say MuteGreeting of (M - a monster):
	say "'Hello?'".

[!<SayMuteGreetResponseOfMonster>+

Displayed after the player greets a monster that does not talk, or does not like to talk.

@param <Monster>:<M> The monster being greeted

+!]
To say MuteGreetResponse of (M - a monster):
	say "A telepathic response cuts you off.[line break][speech style of M]'Speech is for humans.'[roman type][line break]".

[!<SayBimboSeduceOfMonster>+

Outputs some special text where the player invites a monster to punish them.

@param <Monster>:<M> The monster being greeted

+!]
To say BimboSeduce of (M - a monster):
	say "[if the class of the player is cheerleader]Unfortunately, the words that come out don't really sound like 'you' at all![otherwise]You try to say one thing, but somehow the words that come out of your mouth are completely different:[end if][line break]";
	if diaper quest is 1:
		if there is a worn pacifier:
			say "[variable custom style][muffled sounds][roman type][line break]";
		otherwise if the class of the player is santa's little helper:
			say "[second custom style]'[one of]Ooh, I'm a bad little elf, punish me!'[or]I've been very naughty this Christmas, I need a [daddy of M] to punish me!'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Ooh, I'm a bad [boy of the player], punish me!'[or]Please treat me like I deserve!'[or]Do you want to be my [daddy of M]?'[in random order][roman type][line break]";
	otherwise if the class of the player is santa's little helper:
		say "[second custom style]'Santa baby, slip a [if M is male][one of]hard[or]big[or]thick[in random order] cock[otherwise]finger[end if] [if there is a worn christmas dress]under the tree, in me[otherwise]inside of me, or three[end if]...'[roman type][line break]";
	otherwise if the class of the player is cheerleader:
		say CheerSeduce of M;
	otherwise if the class of the player matches the text "the law":
		say "[second custom style]'[one of]Someone's been a very naughty [boy of M]. I might have to punish you... With my butt...'[or]They don't call me the ['][player-class]['] for nothing...'[or]You're under arrest for being a big bad [boy of M]. I'm going to have to punish your [if M is male][DickDesc of M][otherwise]beautiful body[end if] directly... Using my body.'[cycling][roman type][line break]";
	otherwise if M is neuter:
		say "[second custom style]'[one of]Ooh, I'm a bad [boy of the player], punish me!'[or]Please fuck me!'[at random][roman type][line break]";
	otherwise if M is male:
		say "[second custom style]'[one of]Ooh, I'm a bad [boy of the player], punish me!'[or]Please fuck me!'[or]Wouldn't it be fun, to like, treat me like a fucktoy?'[or]Mmm, anal is my favourite...'[or]Can I suck your [manly-penis]?'[or]Can I please give you a blowjob?'[or]Hey baby, need a cumdump?'[or]Want to know what the back of my head looks like?'[or]Fuck me, I'm ready right now!'[or][if bukkake fetish is 0]When was the last time you got your [manly-penis] sucked, sexy?'[otherwise]Wouldn't it be fun, to like, jizz on my face?'[end if][or]I do anal.'[or]I'll let you cum inside!'[or]I've been a naughty [boy of the player] and I need a good hard fucking!'[purely at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Ooh, I'm a bad [boy of the player], punish me!'[or]Let me eat your pussy!'[or]I want to put my tongue in your ass!'[or]I'll go down on you!'[or]Please fuck me!'[or]Please sit on my face!'[or]Wouldn't it be fun, to like, treat me like a fucktoy?'[purely at random][roman type][line break]";
	if M is intelligent raunchy monster, progress quest of greet-quest.

[!<SayBimboSeduceOfMonster>+

Outputs some special text where a cheerleader invites a monster to punish them.

@param <Monster>:<M> The monster being greeted

+!]
To say CheerSeduce of (M - a monster):
	if M is unfriendly:
		say "[second custom style]'[one of]Aren't you like, excited to fuck a super hot cheerleader?[or]I love talking almost as much as I love fucking. And I reeeaally love fucking.'[or]Do you even want to have sex with me? I've been talking pretty long and you're not fucking me yet.'[or]People tell me to shut up all the time, but it's like, I have so many interesting things to say!'[or]My name is [NameBimbo], but most people call me shut up slut!'[or]I'm on the cheerleading team!'[or]Go Team!'[in random order][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Want to know why they call me the head cheerleader?'[or]Anal is like, waayy underrated. I can prove it if you want.'[or]Oooooh... I have a great idea. Let's have sex!'[or]I'm on the cheerleading team. Wanna fuck me?'[or]Cheerleading isn't hard, it's easy. Just like meee~'[or]I like to fuck bareback. Figured you would want to know.'[or]Hey cutie, want to be the top of the pyramid?'[at random][roman type][line break]".

[!<ComputeBimboSeducedOfMonster>+

Handles a monster reacting to a seductive greeting from the player.

@param <Monster>:<M> The monster being greeted

+!]
To compute BimboSeduced of (M - a monster):
	if M is not intelligent:
		say "Something seems to suddenly switch in [NameDesc of M][']s demeanour and [his of M] stance becomes aggressive.";
		anger M;
		now the boredom of M is 0;
	otherwise if M is actually seducable:
		if royal scepter is worn and royal scepter is blacked and M is a friendly royal guard:
			compute princess guard tease of M;
		otherwise:
			repeat with N running through monsters in the location of the player:
				now N is stalled;
			now M is seduced;
			set up sex length of M in asshole;
			if the class of the player is cheerleader, increase the blue-balls of M by 4; [They really want to fuck a cheerleader!]
			now turns-spent-seducing is 0;
			now another-turn is 1;
			add the core seduction rule to another-turn-rules;
			say "Completely out of your own control, you find yourself grinding your [AssDesc] up against [NameDesc of M][']s crotch. Suddenly, your control over your own body returns to you, but it's clear that [NameDesc of M] wants more...";
	otherwise:
		say "Something seems to suddenly switch in [NameDesc of M][']s head and [his of M] [if M is friendly]friendly[otherwise]idle[end if] smile changes into a devilish grin. Uh-oh...[line break][variable custom style]Was it something I said?![roman type][line break]";
		anger M;
		now the boredom of M is 0.

[!<ComputeBasicGreetingToMonster>+

Handles any special code to be run when the player greets a monster. If the monster has special rules regarding boredom or perception, this function should be replaced.

@param <Monster>:<M> The monster being greeted

+!]
To compute basic greeting to (M - a monster):
	if M is interested and the greet-window of M > 0:
		compute conventional response of M;
	otherwise if M is interested:
		compute vanity response of M;
	otherwise:
		GreetBoredomReset M;
		check guaranteed perception of M.

To GreetBoredomReset (M - a monster):
	now the boredom of M is 0.
To GreetBoredomReset (M - a fairy):
	do nothing. [fairies treat boredom differently than other monsters - they're friendly when bored of messing with you]

[!<ComputeVanityGreetingToMonster>+

Handles greeting monsters that are already paying attention to the player.

@param <Monster>:<M> The monster being greeted

+!]
To say vanity greeting of (M - a monster):
	let N be a random unfriendly monster penetrating a body part;
	unless N is monster, now N is a random monster penetrating a body part;
	if M is penetrating a body part:[Greeting for monsters the player is currently having sex with]
		if M is unfriendly:
			say PartnerGreeting to M;
		otherwise:
			say FriendlyPartnerGreeting to M;
	otherwise if N is a monster:[Greeting for when the player is currently having sex]
		if N is unfriendly:
			say HelpGreeting to M with N;[help me out here/help them out!]
		otherwise:
			say AttentionGreeting to M with N;["Please watch!"]
	otherwise if M is unfriendly:
		say UnfriendlyGreeting to M;[either a taunt, or a request to stop]
	otherwise:
		say VanityGreeting to M.["please follow me."]

[!<SayPartnerGreetingToMonster>+

Displayed when the player greets a monster they are currently having rough sex with.

@param <Monster>:<M> The monster being greeted

+!]
To say PartnerGreeting to (M - a monster):
	let F be a random body part penetrated by M;
	if the player is a masochist:
		say FriendlyPartnerGreeting to M;
	otherwise:
		let F be a random fuckhole penetrated by M;
		if the player is feeling dominant and the player is not a pervert:
			if the player is gendered female, say "'[one of]You'll hear from my lawyer[or]Stop it! This is SO unacceptable[or]Stop fucking me, you jerk[in random order]!'";
			otherwise say "'[one of]Get off me!'[or]This isn't cool at all[or]Stop! This is way uncool[or]Dude[as decreasingly likely outcomes]!'";
		otherwise if the player is not a pervert:
			say "'[one of][or]My [F] can't take much more[or]Please! There must be someone else you can do this to[or]Not my [F][in random order]!'";
		otherwise:
			say "'[one of]Cum already[or]Please, just hurry up[or]Ah-ah-fuck[or]Hurry up[in random order]!'".

[!<SayNonEnthusiasmResponseOfMonster>+

Displayed after the player greets a monster they are currently not enjoying having sex with.

@param <Monster>:<M> The monster being greeted

+!]
To say NonEnthusiasmResponse of (M - a monster):
	if M is buddy:
		say MildAnnoyedResponse of M;
	otherwise if M is friendly:
		say AnnoyedResponse of M;
	otherwise:
		compute annoyed punishment of M.

[!<SayEnthusiasmResponseOfMonster>+

Displayed after the player greets a monster they are currently enjoying having sex with.

@param <Monster>:<M> The monster being greeted

+!]
To say EnthusiasmResponse of (M - a monster):
	if M is acquaintance:
		if a random number between -1 and the charisma of the player > 3, FavourUp M;
		say UnAnnoyedResponse of M;
	otherwise if M is friendly:
		say AnnoyedResponse of M;
	otherwise:
		compute annoyed punishment of M.

[!<SayUnAnnoyedResponseOfMonster>+

Displayed after the player greets a monster they are currently having sex with, and the monster was not annoyed by it.

@param <Monster>:<M> The monster being greeted

+!]
To say UnAnnoyedResponse of (M - a monster):
	say "[speech style of M]'Take it you dirty slut!'[roman type][line break]".

[!<SayMildAnnoyedResponseOfMonster>+

Displayed after the player greets a monster they are currently having sex with, and the monster was annoyed by it.

@param <Monster>:<M> The monster being greeted

+!]
To say MildAnnoyedResponse of (M - a monster):
	say "[speech style of M]'Stop ruining the moment!'[roman type][line break]".

[!<SayAnnoyedResponseOfMonster>+

Displayed after the player greets a monster they are currently having sex with, and the monster is close to getting really annoyed.

@param <Monster>:<M> The monster being greeted

+!]
To say AnnoyedResponse of (M - a monster):
	say "[speech style of M]'[one of]Shut up already!'[or]Shut up, you're being so annoying!'[or]Are you ever going to shut up?!'[in random order][roman type][line break]".

[!<ComputeAnnoyedPunishmentOfMonster>+

Handles any code to be run after a monster gets really annoyed with the player.

@param <Monster>:<M> The monster being greeted

+!]
To compute annoyed punishment of (M - a monster):
	let B be a random off-stage fetish appropriate gag;
	if B is actually summonable:
		say "[speech style of M]'Maybe this will shut you up, slut!'[roman type][line break][BigNameDesc of M] pulls out a [printed name of B] and forces it into your mouth!";
		summon B locked;
	otherwise:
		say "[speech style of M]'Shut up already!'[roman type][line break][BigNameDesc of M] backhands you harshly in the face!";
		PainUp 20.

[!<SayFriendlyPartnerGreetingToMonster>+

Displayed when the player greets a monster they are currently having gentle sex with.

@param <Monster>:<M> The monster being greeted

+!]
To say FriendlyPartnerGreeting to (M - a monster):
	if the player is a pervert:
		let F be a random fuckhole penetrated by M;
		if the player is feeling submissive:[player is a masochist]
			say "'[one of]HARDER!'[or]FUCK MY [F]! FUCK MY [F]!'[or][if pregnancy fetish is 1 and F is vagina]Breed me!'[otherwise]Make me your fucking bitch!'[end if][or]Oooh! It feels so fucking good!'[or]That feels so fucking good!'[or]Do you like my [F], baby?'[in random order]";
		otherwise:
			say "'[one of]How am I, sexy?'[or]How do you like my fuckhole, baby?'[in random order]";
		Arouse 100;
	otherwise:
		if the player is feeling dominant:
			if the player is gendered male, say "'Don't tell anybody about this!'";
			otherwise say "'Just so you know, this is a one time thing.'";
		otherwise:
			say "'[one of]This is just a one-time thing... unless you really need to go again.'[or]And remember, you can't tell ANYONE about this...'[in random order]".

[!<SayHelpGreetingToMonsterWithMonster>+

Displayed when the player greets a monster whilst having rough sex with another monster. Either asks the first monster for assistance, or asks the first monster to join in.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say HelpGreeting to (M - a monster) with (N - a monster):
	if the player is a masochist:
		let G be nothing;
		if the player is fully occupied, now G is face;
		otherwise now G is a random fuckhole that is not actually occupied;
		say "'[one of]Join in!'[or]Want to make this a gangbang, sexy?'[or]Go ahead...'[or]Don't worry, I can handle another [if M is male]guy[otherwise]girl[end if]!'[or]Don't stand there, take my [G]!'[or]Don't just stand there, my [G] is empty!'[in random order]";
	otherwise:
		if the player is feeling dominant:
			say "'[one of]Are you really going to stand there and watch?'[or]Why are you watching? Do something!'[or]Don't just stand there, idiot! Help me!'[in random order]";
		otherwise if the player is feeling submissive:
			say "'[one of]What are you waiting for? You won't just let this happen, will you?'[or]Help me! Please! I'll do anything!'[or]Please, you can't just let this happen? Y-you'll help right?'[in random order]";
		otherwise:
			say "'[one of]I need help! Please, I'm not ready for this!'[or]HELP! Come on!'[or]Come on, you have to help me!'[in random order]".

[!<SayInvitationResponseOfMonsterWithMonster>+

Displayed after a masochistic player greets a monster whilst having rough sex with another monster. Invites the first monster to join in the sex.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say InvitationResponse of (M - a monster) with (N - a monster):
	FavourDown M;
	FavourDown N;
	if M is willing to shag and (M is unfriendly or the player is seductive):
		if M is friendly, anger M;
		say InvitationAccepted of M with N;
	otherwise:
		say InvitationRejected of M with N.

[!<SayInvitationAcceptedOfMonsterWithMonster>+

Displayed after the player invites a monster to join sex with another monster, and the first monster accepts.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say InvitationAccepted of (M - a monster) with (N - a monster):
	say "[speech style of M]'If you say so...'[roman type][line break]".

[!<SayInvitationRejectedOfMonsterWithMonster>+

Displayed after the player invites a monster to join sex with another monster, and the first monster refuses.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say InvitationRejected of (M - a monster) with (N - a monster):
	say "[speech style of M]'No, thanks.'[roman type][line break]".

[!<SayAssistanceResponseOfMonsterWithMonster>+

Displayed after the player asks a monster for assistance whilst having rough sex with another monster.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say AssistanceResponse of (M - a monster) with (N - a monster):
	if (M is guardian or (M is ally and the player is getting lucky)) and the rounds of sex left of N > 1:
		say AssistanceAccepted of M with N;
	otherwise:
		say AssistanceRejected of M with N.

[!<SayAssistanceRejectedOfMonsterWithMonster>+

Displayed after the player asks a monster for assistance whilst having rough sex with another monster, and the first monster refuses.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say AssistanceRejected of (M - a monster) with (N - a monster):
	if M is unfriendly:
		say "[speech style of M]'Oh I'll help you all right.'[roman type][line break]";
	otherwise:
		if M is not male, say "[speech style of M]'Help yourself, Skank.'[roman type][line break]";
		otherwise say "[speech style of M]'No.'[roman type][line break]".

[!<SayAssistanceRejectedOfMonsterWithMonster>+

Displayed after the player asks a monster for assistance whilst having rough sex with another monster, and the first monster accepts.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say AssistanceAccepted of (M - a monster) with (N - a monster):
	if M is willing to fluff right now and N is not tentacle monster:[They help by joining in.]
		say FluffResponse of M with N;
		compute M fluffing N;
	otherwise:
		say NonFluffResponse of M with N.[They help in a way that doesn't involve them joining in.]

To say FluffResponse of (M - a monster) with (N - a monster):
	say "[speech style of M]'I'll help, but you owe me for this!'[roman type][line break]".

To say NonFluffResponse of (M - a monster) with (N - a monster):[moral support!]
	say "[speech style of M]'You can get through this!'[roman type][line break][BigFuckerDesc of M] [one of]pats you on the back[or]gives you a thumbs-up[in random order] and immediately turns to leave. At least they support you...";
	slightDignify;
	Bore M;
	now the scared of M is 15.

To compute (M - a monster) fluffing (N - a monster):[they join in, help out, and continue helping until the sex is over.]
	now M is submission-assisting;
	compute submissive assistance of M with N.

[!<SayAttentionGreetingToMonsterWithMonster>+

Displayed when the player greets a monster whilst having gentle sex with another monster

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having sex with the player

+!]
To say AttentionGreeting to (M - a monster) with (N - a monster):
	if the player is broken:
		say "'[one of]Watch me...'[or]Please look at me...'[or]Please watch me...'[in random order]";
	if the player is feeling submissive:
		say "'[one of]Like what you see, baby?'[or]Is this turning you on, sexy?'[or]Do you like what you see?'[or]Enjoying the show, sexy?'[in random order]";
	otherwise:
		say "'[one of]Y-you're still watching, right?'[or]C-could you keep watching? I promise it's important.'[or]H-hey, don't leave. I really need you to watch this.'[in random order]".

[!<SayAttentionResponseOfMonsterWithMonster>+

Displayed after the player greets a monster whilst having gentle sex with another monster. The monster will respond differently depending on how annoyed they are.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having sex with the player

+!]
To say AttentionResponse of (M - a monster) with (N - a monster):
	FavourDown M;
	if M is unfriendly:
		say AttentionExceeded of M with N;
	otherwise:
		say AttentionAccepted of M with N.

[!<SayAttentionExceededOfMonsterWithMonster>+

Displayed when the player greets a monster whilst having gentle sex with another monster, and the first monster becomes aggressive.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having sex with the player

+!]
To say AttentionExceeded of (M - a monster) with (N - a monster):
	say "[speech style of M]'I'll do more than watch!'[roman type][line break]";
	unless M is unfriendly, anger M.

[!<SayAttentionExceededOfMonsterWithMonster>+

Displayed when the player greets a monster whilst having gentle sex with another monster, and the first monster does not become aggressive.

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having sex with the player

+!]
To say AttentionAccepted of (M - a monster) with (N - a monster):
	say "[speech style of M]'Looks fun, enjoy!'[roman type][line break]".

[!<SayUnfriendlyGreetingToMonster>+

Displayed when the player greets a monster that is currently aggressive. If the player is a sadist, they will taunt the monster. Otherwise, they will ask the monster to stop attacking.

@param <Monster>:<M> The monster being greeted

+!]
To say UnfriendlyGreeting to (M - a monster):
	if the player is a sadist:
		if the player is gendered male, say "'[one of]I can't wait to tear your [HoleDesc of M] up when I beat you.'[or]Just for this, I'm going in dry.'[or]I can't wait to make you gag on my [sexual-player-penis]!'[in random order]";
		otherwise say "'[one of]I'm pissed off right now, but don't worry. You'll be making it up to me.'[or]Get ready for a long apology!'[or]I can't wait to show you what I have in store for you!'[in random order]";
	otherwise:
		if the player is a masochist:
			say "'[one of]We don't have to fight, do we? Couldn't we do... something else?'[or]Why hit me when you could be hitting me!'[or]I'd rather fuck than fight, really.'[or]All I need to do is get on my knees and you'll forgive me?'[or]Can't you forgive me? I can make it worth your while...'[or]Couldn't we solve this with sex? Why aren't we doing that?'[in random order]";
		otherwise if the player is feeling submissive:
			say "'[one of]Don't hit me!'[or]Don't hurt me!'[or]Please, you don't have to hit me!'[or]Please, I bruise easily!'[or]I'm sorry! Don't hit me!'[in random order]";
		otherwise if the player is feeling dominant:
			if the player is gendered male, say "'[one of]Are you sure you want this fight, man?'[or]I'll kick your ass, man!'[or]I don't think you want to fight me dude.'[in random order]";
			otherwise say "'[one of]Leave me alone, I have my rights!'[or][if M is not male]Fucking bitch,[otherwise]Fucking ape,[end if] leave me alone!'[or]Hit me again and you'll hear from my lawyer.'[in random order]";
		otherwise:
			if the player is gendered male, say "'[one of]Damn, what the fuck did I do to piss you off?'[or]Come on man, we don't have to fight!'[or]Fighting is so uncool!'[in random order]";
			otherwise say "'[one of]Stop hitting me, jerk!'[or]If you hit me again I'm going to hit back.[or]We don't have to fight! Think about this!'[or]Why do we have to fight? This is ridiculous!'[in random order]".

[!<SayTauntResponseOfMonster>+

Displayed after the player taunts a monster. Depending on the monster's annoyance level, and their history with the player, they will be either angry or intimidated.

@param <Monster>:<M> The monster being greeted

+!]
To say TauntResponse of (M - a monster):
	if the times-dominated of M <= the times-submitted of M, FavourDown M by 2;
	otherwise FavourDown M;
	if the player is getting lucky:
		compute taunt acceptance effect of M;
		say TauntAccepted of M;
	otherwise:
		compute taunt rejection effect of M;
		say TauntRejected of M.

[!<SayTauntAcceptedOfMonster>+

Displayed after the player taunts a monster, and the monster is intimidated.

@param <Monster>:<M> The monster being greeted

+!]
To say TauntAccepted of (M - a monster):
	say "[speech style of M]'H-hey, there's no need for that. I'll just leave you alone, OK?'[roman type][line break]".

[!<ComputeTauntAcceptanceEffectOfMonster>+

Handles any code to be run when the player intimidates a monster with a taunt. Usually makes the monster want to run away.

@param <Monster>:<M> The monster being greeted

+!]
To compute taunt acceptance effect of (M - a monster):
	now the scared of M is 30;
	Bore M.

[!<SayTauntRejectedOfMonster>+

Displayed after the player taunts a monster, and the monster is angered.

@param <Monster>:<M> The monster being greeted

+!]
To say TauntRejected of (M - a monster):
	say "[speech style of M]'I'll make you eat those words!'[roman type][line break][BigNameDesc of M] seems even more determined to beat you!".

[!<ComputeTauntRejectionEffectOfMonster>+

Handles any code to be run when the player angers a monster with a taunt. By default, causes the monster to lose favour, and regain a small amount of health.

@param <Monster>:<M> The monster being greeted

+!]
To compute taunt rejection effect of (M - a monster):
	FavourDown M by 1;
	if the health of M < the maxhealth of M - 5, increase the health of M by 5.

[!<SayPleadingResponseOfMonster>+

Displayed after the player asks a monster to stop attacking.

@param <Monster>:<M> The monster being greeted

+!]
To say PleadingResponse of (M - a monster):
	[TODO: monsters can say, "I'll leave you alone if you give me your X"]
	say PleadRejected of M.

[!<SayPleadRejectedOfMonster>+

Displayed after the player asks a monster to stop attacking, and the monster refuses.

@param <Monster>:<M> The monster being greeted

+!]
To say PleadRejected of (M - a monster):
	say "[speech style of M]'Shut up.'[roman type][line break]".

[!<SayVanityGreetingToMonster>+

Displayed when the player greets a monster that is already paying attention to them. Usually asks the monster to follow them or keep following them.

@param <Monster>:<M> The monster being greeted

+!]
To say VanityGreeting to (M - a monster):
	if M is teacher and locked-toilets is true and academy-toilet-key is held:
		say "'[if the player is proud]I can't believe I'm saying this, but would you please accompany me so that I can use the toilet?'[otherwise if the diaper addiction of the player < 5]Please could you supervise me while I use the toilet?'[otherwise]Please can you help me use the potty?'[end if]";
	otherwise if the player is toilet traumatized bursting:
		say "'I need the toilet, but [if academy-toilet-key is held and M is teacher]academy rules say I need supervision[otherwise]I'm too scared to go alone[end if]. Would you please come with me?'";
	otherwise if the player is a masochist:
		say "'[one of]Are you getting used to seeing the back of my head?'[or]Maybe you and I should head somewhere more private, hmm?'[or]Where am I taking you, I wonder?'[at random]";
	otherwise:
		say "'[one of]Hey, can you follow me?'[or]Hey, follow me.'[or]Hey, you're following me, right?'[or]Follow me, please.'[at random]".

[!<ComputeVanityResponseOfMonster>+

Displayed after the player greets a monster that is already paying attention to them. Depending on how annoyed the monster is, they will respond differently.

@param <Monster>:<M> The monster being greeted

+!]
To compute vanity response of (M - a monster):
	now the friendly boredom of M is 0;
	let N be a random unfriendly monster penetrating a body part;
	unless N is monster, now N is a random monster penetrating a body part;
	if M is penetrating a body part:
		if (M is friendly and the player is a pervert) or the player is a masochist, say EnthusiasmResponse of M;[The player is enjoying it]
		otherwise say NonEnthusiasmResponse of M;[The player is not outwardly enjoying it.]
	otherwise if N is a monster:
		if N is unfriendly:
			if the player is a masochist, say InvitationResponse of M with N;[The player invited M to join]
			otherwise say AssistanceResponse of M with N;[The player asked M to help]
		otherwise:
			say AttentionResponse of M with N;[The player asked M to watch]
	otherwise if M is unfriendly:
		if the player is a sadist, say TauntResponse of M;[The player taunted M]
		otherwise say PleadingResponse of M;[The player asked M for a truce]
	otherwise:
		if M is ally:
			say VanityAccepted of M;
		otherwise if the player is toilet traumatized bursting:
			if there is a worn diaper:
				say VanityPointless of M;
			otherwise if M is diaper disciplining:
				say VanityDisciplined of M;
			otherwise:
				say VanityPitied of M;
		otherwise if M is acquaintance:
			say VanityAnnoyed of M;
		otherwise:
			favourDown M;
			say VanityRejected of M;
			if M is friendly, bore M.

[!<SayVanityAcceptedOfMonster>+

Displayed after the player greets a monster that is already paying attention to them, and the monster isn't annoyed.

@param <Monster>:<M> The monster being greeted

+!]
To say VanityAccepted of (M - a monster):
	if M is guarding or M is caged:
		say "[speech style of M]'Sorry, I can't.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Sure, I can follow you.'[roman type][line break]";
		now the friendly boredom of M is -10.

[!<SayVanityPointlessOfMonster>+

Displayed after the player greets a monster that is already paying attention to them, and needs accompanying to the toilet, but is already wearing a diaper.

@param <Monster>:<M> The monster being greeted

+!]
To say VanityPointless of (M - a monster):
	say "[speech style of M]'Why can't you just go in your diaper like the rest of the babies?'[roman type][line break]".

[!<SayVanityDisciplinedOfMonster>+

Displayed after the player greets a monster that is already paying attention to them, and needs accompanying to the toilet, but M is demanding they wear diapers.

@param <Monster>:<M> The monster being greeted

+!]
To say VanityDisciplined of (M - a monster):
	say "[speech style of M]'Are you mocking me?! I demanded you stay in diapers. That's it, come here!'[roman type][line break]";
	anger M.

[!<SayVanityPitiedOfMonster>+

Displayed after the player greets a monster that is already paying attention to them, and needs accompanying to the toilet.

@param <Monster>:<M> The monster being greeted

+!]
To say VanityPitied of (M - a monster):
	if M is guarding or M is caged:
		say "[speech style of M]'Sorry, I can't. You'll have to brave the toilet alone!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Aww, you poor sweet [boy of M]. Sure, I can hold your hand while you do your [if the player is feeling full or the total squirtable fill of belly > 0]poopies[otherwise]tinkles[end if].'[roman type][line break]";
		now the friendly boredom of M is -10.

[!<SayVanityAnnoyedOfMonster>+

Displayed after the player greets a monster that is already paying attention to them, and the monster is close to getting annoyed.

@param <Monster>:<M> The monster being greeted

+!]
To say VanityAnnoyed of (M - a monster):
	if M is guarding or M is caged or M is unconcerned:
		say "[speech style of M]'Unlike SOME people, I actually have a job to do.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'll follow you for a little bit, I guess.'[roman type][line break]".

[!<SayVanityRejectedOfMonster>+

Displayed after the player greets a monster that is already paying attention to them, and the monster is already annoyed.

@param <Monster>:<M> The monster being greeted

+!]
To say VanityRejected of (M - a monster):
	if M is unfriendly, say "[speech style of M]'I've had enough of this. It's time I put you in your place.'[roman type][line break]";
	otherwise say "[speech style of M]'I've had enough. Bye.'[roman type][line break]".

[!<ComputeConventionalGreetingToMonster>+

Handles greeting monsters that are not currently paying attention to the player.

@param <Monster>:<M> The monster being greeted

+!]
To say conventional greeting of (M - a monster):
	let N be a random unfriendly monster penetrating a body part;
	unless N is monster, now N is a random monster penetrating a body part;
	if M is penetrating a body part, now N is M;
	if N is a monster:[the player has special greetings for when they are having sex]
		if N is unfriendly, say InSexGreeting to M with N;
		otherwise say InFriendlySexGreeting to M with N;
	otherwise if the player is a sadist and the times-dominated of M > 0:[the player only taunts if they're a sadist]
		say DominantGreeting to M;
	otherwise if the player is a masochist and the times-submitted of M > 0:[the player only brings up previous sex if they enjoyed it]
		say SubmissiveGreeting to M;
	otherwise if the greeted-count of M is 0:[This should display the first time the player greets a monster.]
		say FirstGreeting to M;
	otherwise:
		say RepeatGreeting to M.

To compute conventional response of (M - a monster):
	let N be a random unfriendly monster penetrating a body part;
	unless N is monster, now N is a random monster penetrating a body part;
	if N is a monster:
		if N is unfriendly:
			if the player is a masochist, say InvitationResponse of M with N;[the player invited M to join]
			otherwise say AssistanceResponse of M with N;[the player asked M to get them free]
		otherwise:
			say AttentionResponse of M with N;[the player asked M to watch]
	otherwise if the player is a sadist and the times-dominated of M > 0:[the player only taunts if they're a sadist]
		say DominantResponse of M;
	otherwise if the player is a masochist and the times-submitted of M > 0:[the player only brings up previous sex if they enjoyed it]
		say SubmissiveResponse of M;
	otherwise if the greeted-count of M is 0: [This should display the first time the player greets a monster.]
		say FirstResponse of M;
	otherwise:
		say RepeatResponse of M.

[!<SayInSexGreetingToMonsterWithMonster>+

Displayed when the player catches the attention of a monster whilst having rough sex with another monster

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having rough sex with the player

+!]
To say InSexGreeting to (M - a monster) with (N - a monster):
	if the player is a masochist:
		let G be nothing;
		if the player is fully occupied, now G is face;
		otherwise now G is a random fuckhole that is not actually occupied;
		if the class of the player is princess:
			say "'[one of][big royal-subject of M]. Every moment my [G] remains empty is a further embarrassment for you.'[or]You there, [royal-subject of M]. You may assist in satisfying me. Chop chop.'[or]Greetings, [royal-subject of M]. I assume you are waiting for an invitation?'[at random]";
		otherwise:
			say "'[one of]Hey there. Wanna join in?'[or]Hey babe. Don't you think [NameDesc of N] could use a hand?'[or]Hey you! Take my [G]!'[at random]";
	otherwise:
		if the class of the player is princess:
			say "'[one of][big royal-subject of M]. I demand assistance.'[or]You there, [royal-subject of M]. I hereby order you to assist me.'[or]You there, [royal-subject of M]. I assume you are ready to assist?'[at random]";
		otherwise if the player is feeling dominant:
			say "'[one of]You there. Help me.'[or]Hey you. Get this [man of N] off me!'[or]Hey, I need some help. You can handle that, right?'[at random]";
		otherwise if the player is feeling submissive:
			say "'[one of]Oh I'm so glad you're here. You'll help me out, right?'[or]Hey, please help me out! Please!'[or]Hey you, help me! Y-you'll do it, right?'[at random]";
		otherwise:
			say "'[one of]Hey, help me out here!'[or]Hey, I need a little help here!'[or]H-hey, I could use some help!'[at random]".

[!<SayInSexGreetingToMonsterWithMonster>+

Displayed when the player catches the attention of a monster whilst having gentle sex with another monster

@param <Monster>:<M> The monster being greeted
@param <Monster>:<N> The monster currently having gentle sex with the player

+!]
To say InFriendlySexGreeting to (M - a monster) with (N - a monster):
	if the class of the player is princess:
		say "'[one of][big royal-subject of M]. I demand that you observe your princess.'[or][big royal-subject of M]. I hereby order you to watch me.'[or]Greetings, [royal-subject of M]. Do you perhaps like what you see?'[at random]";
	otherwise if the player is feeling submissive:
		say "'[one of]Yoo-hoo! Look over here!'[or]Hey, look over here!'[or]Hey, look over here for something fun!'[at random]";
	otherwise:
		say "'[one of]H-hey, could you look at me real quick?'[or]Look, this is really embarrassing, but can you look over here?'[or]Hey, I know this is weird, but I need you to watch this.'[at random]".

[!<SayDominantGreetingToMonster>+

Displayed when a sadistic player greets a monster they have a mostly dominant history with.

@param <Monster>:<M> The monster being greeted

+!]
To say DominantGreeting to (M - a monster):
	if the class of the player is princess:
		say "'[one of][big royal-subject of M]. I am aroused. Get on your knees, NOW.'[or][big royal-subject of M]. Your services are required. On your knees.'[or]Greetings, [royal-subject of M]. I have need of your body. On your knees, chop chop.'[at random]";
	otherwise:
		say "'[one of]Yo, bitch! Stay there, I want to fuck you again.'[or][if the player is possessing a penis]Hey bitch, how did it feel taking my BIG DICK[otherwise]Yo bitch! You might as well just get on your knees now[end if].'[or][if the player is possessing a penis]Hey bitch, how'd you like to suck my [manly-penis][otherwise]Hey bitch. Ready to go again[end if]?'[or]What's up bitch? Ready for round [the times-dominated of M + 1]?'[or]Hey bitch. Up for another round?'[at random]".

[!<SayDominantResponseOfMonster>+

Displayed after a sadistic player greets a monster a mostly dominant history with. Usually the same as a monster's response to taunting.

@param <Monster>:<M> The monster being greeted

+!]
To say DominantResponse of (M - a monster):
	say TauntResponse of M.

[!<SaySubmissveGreetingToMonster>+

Displayed when a masochistic player greets a monster they have a mostly submissive history with.

@param <Monster>:<M> The monster being greeted

+!]
To say SubmissiveGreeting to (M - a monster):
	let N be the times-submitted of M;
	let P be N + 1;
	if diaper quest is 1:
		if the diaper addiction of the player > 8, say "'[one of]Hey there. Are you going to do that thing to me again?'[or]Hey there [daddy of M].[or][if the player is diapered]Hey [daddy of M]. I wonder if my diaper needs checking?'[otherwise]Hey you. Remind me, what do you do to naughty babies who are being bad [boy of the player]s and not wearing diapers...?'[end if][at random]";
		otherwise say "'[one of]Uh-oh, it's you again...'[or]Why do we keep meeting at moments like this!'[or][if the player is diapered]Hi there. Yes I'm diapered. No I don't need you to check me[otherwise]Oh look, another [man of M] who's obsessed with making me wear a diaper[end if].'[at random]";
	otherwise if the class of the player is princess and M is bride-consort:
		say "'[one of][big royal-subject of M]. Our previous tryst was most satisfying, I will admit.'[or][big royal-subject of M]. Your status certainly belies your skill in the bedroom.'[or]Greetings, [royal-subject of M]. I would not mind it if you were to ravish me again at a later time.'[at random]";
	otherwise if M is mating:
		say "'[one of][if M is presenting as female]Hey there baby momma!'[otherwise]Hey there baby daddy.'[end if][or]Hey baby. Want to make out?'[or]Hey babe! Let's hold hands!'[or][if M is presenting as female]So, want to be girlfriend girlfriend now that we have a baby together?'[otherwise]Want to be boyfriend girlfriend now that we have a baby together?'[end if][at random]";
	otherwise if the player is not a nympho:
		say "'[one of]Hey there. You sure know how to have a good time.'[or]I can go another round, if you want.'[or]So, want to go again? That last fuck was pretty good.'[or]You sure know how to please a lady. Want to go for round [P]?'[at random]";
	otherwise:
		say "'[one of]Hey baby. Ready to put [if M is male]your [manly-penis][otherwise]something[end if] in me again?'[or]Feel like another round, [if M is male]big boy'[otherwise]sexy?'[end if][or]Hey baby. Do you want to go again?'[or]I'm always up for another round, sexy.'[at random]".

[!<SaySubmissveResponseOfMonster>+

Displayed after a masochistic player greets a monster they have a mostly submissive history with.

@param <Monster>:<M> The monster being greeted

+!]
To say SubmissiveResponse of (M - a monster):
	if diaper quest is 1:
		if M is unfriendly, say "[speech style of M]'Oh good, you're getting used to it, then? Here I come...'[roman type][line break]";
		otherwise say "[speech style of M]'Oh look, it's my favourite baby!'[roman type][line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'Time for another round!'[roman type][line break]";
	otherwise:
		if a random number between -1 and the charisma of the player > 3, FavourUp M;
		say "[speech style of M]'I'm always ready for another round, slut!'[roman type][line break]".

[!<SayFirstGreetingToMonster>+

Displayed when the player greets a monster for the first time.

@param <Monster>:<M> The monster being greeted

+!]
To say FirstGreeting to (M - a monster):
	if the class of the player is santa's little helper:
		say "'Merry Christmas!'";
	otherwise if the class of the player is princess:
		say "'[one of]Greetings. I am princess [NameBimbo].'[or]Good morrow, [royal-subject of M]. My name is princess [NameBimbo].'[at random]";
	otherwise:
		say DefaultFirstGreeting to M.

[!<SayFirstGreetingToMonster>+

Displayed when the player greets a monster for the first time, and there are no special rules for the greeting to follow.

@param <Monster>:<M> The monster being greeted

+!]
To say DefaultFirstGreeting to (M - a monster):
	if bimbo of the player < 4:
		if the player is gendered female:
			if M is neuter or M is male:
				say "'[one of]Hello.'[or]Hello, my name is [NameBimbo].'[or]Hello. I have something I want to ask you.'[at random]";
			otherwise:
				say "'[one of]Hi there, pleased to meet you.'[or]Hello, my name is [NameBimbo].'[or]I can't say I'm glad to meet another woman here, but hello anyway.'[at random]";
		otherwise:
			if M is neuter:
				say "'Hello there.'";
			otherwise if M is male:
				say "'[one of]Yo.'[or]Sup Dude.'[or]Hey man.'[at random]";
			otherwise:
				say "'[one of]Hey baby! What's going on?'[or]Sup girl? I'm [NameBimbo].'[or]Hey. What's up baby?'[at random]";
	otherwise if bimbo of the player < 7:
		if the player is gendered female:
			if M is neuter or M is male:
				say "'[one of]Hi. What's your name?'[or]Hello, I'm [NameBimbo].'[or]Hi! Do you have time to talk?'[at random]";
			otherwise:
				say "'[one of]Hi there, do you know if there's a way out?'[or]Hello, I'm [NameBimbo].'[or]Hello! I'm glad to see another woman here... you know what I mean.'[at random]";
		otherwise:
			if M is neuter:
				say "'Hi there.'";
			otherwise if M is not male:
				say "'[one of]Hello, I'm [NameBimbo].'[or]Hey. Are you trapped in here too?'[or]Hey, what's up?'[at random]";
			otherwise:
				say "'[one of]Hey man. Got some time?'[or]Hey, I'm [NameBimbo].'[or]Hey, do you have a minute?'[at random]";
	otherwise if bimbo of the player < 10:
		if M is neuter or M is male, say "'[one of]Hey there!'[or]Hi!'[at random]";
		otherwise say "'[one of]Hey girlfriend!'[or]What's going on, girlfriend?'[or]Hey girl!'[at random]";
	otherwise if bimbo of the player < 12:
		if M is not male, say "'[one of]Hey there cutie.'[or]Hey there. *wink*'[or]Hi. You're totally hot!'[at random]";
		otherwise say "'[one of]Hey there.'[or]Hey there cutie.'[or]Hey. Your muscles are really big.'[at random]'";
	otherwise if bimbo of the player < 15:
		say "'[one of]Mmm, I've never met you before, sexy.'[or]Hi there sexy.'[or]Hey sexy. I think I'd remember meeting you before...'[at random]";
	otherwise:
		say "'[one of]Hey there sexy. My name is [NameBimbo].'[or]Hey cutie. You want to get out of here?'[or]Hey sweetie. Looking for a good time?'[at random]".

[!<SayFirstResponseOfMonster>+

Displayed after the player greets a monster for the first time.

@param <Monster>:<M> The monster being greeted

+!]
To say FirstResponse of (M - a monster):
	say "[speech style of M]'Hello.'[roman type][line break]".

[!<SayRepeatGreetingToMonster>+

Displays when the player greets a monster they have already met.

@param <Monster>:<M> The monster being greeted

+!]
To say RepeatGreeting to (M - a monster):
	if the class of the player is princess:
		say "'[one of]Greetings, [royal-subject of M].'[or]Good morrow, [royal-subject of M].'[at random]";
	otherwise if the class of the player is santa's little helper:
		say "'Merry Christmas!'";
	otherwise:
		say DefaultGreeting to M.

[!<SayDefaultGreetingToMonster>+

Displays when the player greets a monster they have already met, and there are no special rules for greetings that the player must follow.

@param <Monster>:<M> The monster being greeted

+!]
To say DefaultGreeting to (M - a monster):
	if bimbo of the player < 4:
		if the player is gendered female:
			if M is neuter or M is male:
				say "'[one of]Hello. Again[or]Oh. You again[or]Hello[at random].'";
			otherwise:
				say "'[one of]Hi! Glad to see you again[or]Hello, glad to see you're still managing to stay alive in this hell-hole[or]Hello again. It's nice to see you[at random].'";
		otherwise:
			if M is neuter:
				say "'Hi there.'";
			otherwise if M is male:
				say "'[one of]Hey dude[or]Sup Dude[or]Hey man[at random].'";
			otherwise:
				say "'[one of]Hey baby! What's going on[or]Yo yo! Feeling lonely, baby[or]Hey, what's up baby[at random]?'";
	otherwise if bimbo of the player < 7:
		if the player is gendered female:
			if M is neuter or M is male:
				say "'[one of]Hey there[or]Hello[or]Hi[at random]!'";
			otherwise:
				say "'[one of]Hello again. At least I'm not the only one stuck here.'[or]Hello again.'[or]Hello! We met before, right?'[at random]";
		otherwise:
			if M is neuter or M is male:
				say "'[one of]Hi. It's always nice to see a friendly face.'[or]Hey, remember me? I'm [NameBimbo].'[or]Hey, do you have a minute?'[at random]";
			otherwise:
				say "'[one of]Hello again. At least I'm not the only one stuck here.'[or]Hello again.'[or]Hello! We met before, right?'[or]Hey, remember me? I'm [NameBimbo].'[at random]";
	otherwise if bimbo of the player < 10:
		if M is neuter:
			say "'Hi there.'";
		otherwise if M is not male:
			say "'[one of]Hi! You're pretty!'[or]Hello, I'm [NameBimbo].'[or]Hi. Nice to meet you again!'[at random]";
		otherwise:
			say "'[one of]Hey there. You're kind of cute.'[or]You can call me [NameBimbo]. Can I call you anything?'[or]Hi! You look smart.'[at random]";
	otherwise if bimbo of the player < 12:
		if M is neuter:
			say "'Hi there.'";
		otherwise if M is not male:
			say "'[one of][or]Hey there cutie.'[or]Hey there. *wink*'[at random]";
		otherwise:
			say "'[one of]Hey there.'[or]Hey there cutie.'[or]Hi! There's a pair big sexy shoulders I haven't seen in a while!'[at random]";
	otherwise if bimbo of the player < 15:
		if M is neuter:
			say "'Hi there.'";
		otherwise:
			say "'[one of]Hi. We should really get to know each other better.'[or]Hi there sexy. I know a fun way to pass some time.'[or]Hey sexy. Want to meet me somewhere?'[at random]";
	otherwise:
		if M is neuter:
			say "'Hi there.'";
		otherwise:
			say "'[one of]Hey there sexy. Up for a good time?'[or]Hey there big boy.'[or]Hey sexy. I know a fun way to pass some time.'[at random]".

[!<SayRepeatResponseOfMonster>+

Displayed after the player greets a monster they have already met.

@param <Monster>:<M> The monster being greeted

+!]
To say RepeatResponse of (M - a monster):
	say FirstResponse of M.

Chapter 2 Skill Questioning

talk-teach is a talk-object.
the player has a number called skillCooldown.

To consider (T - talk-teach) for (M - a monster):
	if M is not defeated and M is intelligent and the skillCooldown of the player <= 0 and M is friendly:
		now the printed name of talk-teach is the substituted form of "[TeachQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-teach) for (M - a monster):
	compute teaching of M.

To reset skill cooldown:
	if the skillCooldown of the player <= 0, say "That took a lot of concentration! You feel like you're going to need to wait a while before you can learn another skill from someone you meet.";
	now the skillCooldown of the player is 1000.

A time based rule (this is the skill cooldown rule):
	if the skillCooldown of the player > 0:
		decrease the skillCooldown of the player by 2 + the intelligence of the player;
		if the skillCooldown of the player <= 0:
			now the skillCooldown of the player is 0;
			say "[bold type]You feel ready to learn another skill.[roman type][line break]".

To compute teaching of (M - a monster):
	compute default teaching of M.

To compute default teaching of (M - a monster):
	say "[BigNameDesc of M] teaches you a fun magic trick. You're amazed and impressed at how much one can do with simple finesse! You feel a bit more nimble.";
	DexUp 1;
	reset skill cooldown.

[Skill question. This is in case there's an npc that wants this to be modular]
To say TeachQuestion of (M - a monster):
	say "'Can you teach me anything useful?'".

Chapter 3 Drink Requesting

talk-drink-request is a talk-object.

To consider (T - talk-drink-request) for (M - a monster):
	if M is intelligent and the player is thirsty and the player is not in a predicament room:
		if M is defeated:
			now the printed name of T is the substituted form of "[DefeatedDrinkRequest of M]";
		otherwise:
			now the printed name of T is the substituted form of "[DrinkRequest of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-drink-request) for (M - a monster):
	if M is defeated:
		say DefeatedDrinkResponse of M;
	otherwise if M is willing to urinate and watersports fetish is 1 and a random number between 1 and 20 < the urine taste addiction of the player:
		compute M urinating;
	otherwise if the semen taste addiction of the player > 5 and M is willing to do oral and (M is male or M is wench):
		now the player-reaction of the player is submitting;
		now presented-orifice is face;
		severeHumiliate;
		check consensual submissive sex of M;
	otherwise if M is friendly:
		compute friendly drink of M;
	otherwise:
		compute unfriendly drink of M.

To say DrinkRequest of (M - a monster):
	if the class of the player is santa's little helper:
		say "'I'm thirsty. Got any mulled wine?'";
	otherwise if watersports fetish is 1 and the urine taste addiction of the player > 5 and the urine taste addiction of the player >= the semen taste addiction of the player and M is willing to urinate:
		say "[if the urine taste addiction of the player < 9]Please, do you have anything I could drink? I would even drink your pee if you wanted...'[otherwise if the urine taste addiction of the player < 12]Please, do you have anything I could drink from? I'll even drink your [urine] if you'll let me.'[otherwise if the urine taste addiction of the player < 15]I'd love to drink your [urine] if you'll let me. Anything will do though, I'm very thirsty.'[otherwise]Please may I have the privilege of being your toilet? I promise I'll savour every last drop.'[end if]";
	otherwise if the semen taste addiction of the player > 5 and M is willing to do oral and (M is male or M is wench):
		say "[if the semen taste addiction of the player < 9]Please, do you have anything I could drink? I would even drink your cum if you wanted...'[otherwise if the semen taste addiction of the player < 12]Please, do you have anything I could drink from? I'll even drink your [semen] if you'll let me.'[otherwise if the semen taste addiction of the player < 15]I'd love to drink your [semen] if you'll let me. Anything will do though, I'm very thirsty.'[otherwise if M is male]Please may I have the privilege of sucking your cock? I promise I'll savour every last drop.'[otherwise]Please may I have the privilege of drinking from your [']tap[']? You seem to have a lot to spare...'[end if]";
	otherwise if the bimbo of the player < 3:
		say "Please, do you have anything I could drink?'";
	otherwise if the bimbo of the player < 6:
		say "Excuse me, I am really thirsty, do you have anything I could drink?'";
	otherwise if the bimbo of the player < 9:
		say "Please, do you have anything I could drink from?'";
	otherwise if the bimbo of the player < 12:
		say "I'd do anything for something to drink.'";
	otherwise if the bimbo of the player < 15:
		say "I just really need something to wet my throat...'";
	otherwise:
		say "I just need something to suck on... I'll swallow anything you give me...'".

To compute friendly drink of (M - a monster):
	say "[speech style of M]'Sorry, I don't have anything.'[roman type][line break]".

To compute unfriendly drink of (M - a monster):
	if M is not willing to shag:
		say "[speech style of M]'No way! Get your own drink.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'll give you something to drink all right!'[roman type][line break]";
		interest M.

[To compute desperate drinking to (M - a monster):
	say "You [if the player is upright]drop to your knees and [end if]beg [NameDesc of M] to give you something to drink.";
	now the stance of the player is 1;
	if M is unfriendly:
		compute unfriendly drink of M;
	otherwise:
		compute friendly drink of M.]

To say DefeatedDrinkRequest of (M - a monster):
	if M is diaper-enslaved:
		say DiaperEnslavedDrinkRequest of M;
	otherwise if M is sex-enslaved:
		say SexEnslavedDrinkRequest of M;
	otherwise:
		say FuckedSillyDrinkRequest of M.

To say FuckedSillyDrinkRequest of (M - a monster):
	say "'Any chance you've got something I could drink?'".

To say SexEnslavedDrinkRequest of (M - a monster):
	say FuckedSillyDrinkRequest of M.

To say DiaperEnslavedDrinkRequest of (M - a monster):
	say FuckedSillyDrinkRequest of M.

To say DefeatedDrinkResponse of (M - a monster):
	if M is bride-consort and key garter is worn, say "[BigNameDesc of M] shakes [his of M] sadly.[line break][speech style of M]'I'm sorry for being such a useless husband...'[roman type][line break]";
	otherwise say DefeatedGreetResponse of M.

Chapter 4 Food Requesting

talk-food-request is a talk-object.

To consider (T - talk-food-request) for (M - a monster):
	if M is intelligent and the player is hungry and the player is not in a predicament room:
		if M is defeated:
			now the printed name of T is the substituted form of "[DefeatedFoodRequest of M]";
		otherwise:
			now the printed name of T is the substituted form of "[FoodRequest of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-food-request) for (M - a monster):
	if M is defeated:
		say DefeatedFoodResponse of M;
	otherwise if M is friendly:
		compute friendly food of M;
	otherwise if M is unfriendly:
		compute unfriendly food of M.

To say FoodRequest of (M - a monster):
	if the bimbo of the player < 3:
		say "'Please, do you have anything I could eat?'";
	otherwise if the bimbo of the player < 6:
		say "'Excuse me, I am really hungry, do you have anything I could eat?'";
	otherwise if the bimbo of the player < 9:
		say "'Please, do you have anything I could eat from?'";
	otherwise if the bimbo of the player < 12:
		say "'I'd do anything for something to eat.'";
	otherwise if the bimbo of the player < 15:
		say "'I just really need something to fill my stomach...'";
	otherwise:
		say "'I just need something to put in my mouth... I'll swallow anything you give me...'".

Definition: a monster is willing to give snacks: decide no.

To compute friendly food of (M - a monster):
	if M is willing to give snacks:
		let C be a random off-stage standard tier candy;
		if there is held food or there is on-stage candy:
			say FriendlyFoodRefuseFlav of M;
		otherwise if C is candy:
			say "[FriendlyFoodAgreeFlav of M][line break][BigNameDesc of M] gives you a [C], which you eat immediately.";
			now C is held by the player;
			try TQeating C;
		otherwise:
			say FriendlyFoodEmptyFlav of M;
	otherwise:
		say FriendlyFoodApologiseFlav of M.

To say FriendlyFoodRefuseFlav of (M - a monster):
	say "[speech style of M]'Seems to me that you have food of your own. Why don't you eat that first?'[roman type][line break]".

To say FriendlyFoodAgreeFlav of (M - a monster):
	say "[speech style of M]'I guess you can have this.'[roman type][line break]".

To say FriendlyFoodEmptyFlav of (M - a monster):
	say "[speech style of M]'I do not have anything for you.'[roman type][line break]".

To say FriendlyFoodApologiseFlav of (M - a monster):
	say "[speech style of M]'Sorry, I don't have anything.'[roman type][line break]".

To say UnfriendlyFoodRefuseFlav of (M - a monster):
	say "[speech style of M]'No way! Get your own food.'[roman type][line break]".

To say UnfriendlyFoodLewdFlav of (M - a monster):
	say "[speech style of M]'I'll give you something to eat all right!'[roman type][line break]".

To compute unfriendly food of (M - a monster):
	if M is not willing to shag:
		say UnfriendlyFoodRefuseFlav of M;
	otherwise:
		say UnfriendlyFoodLewdFlav of M;
		interest M.

To compute desperate eating to (M - a monster): [Currently unused]
	say "You [if the player is upright]drop to your knees and [end if]beg [NameDesc of M] to give you something to eat.";
	now the stance of the player is 1;
	if M is unfriendly:
		compute unfriendly food of M;
	otherwise:
		interest M;
		compute friendly food of M.

To say DefeatedFoodRequest of (M - a monster):
	if M is diaper-enslaved:
		say DiaperEnslavedFoodRequest of M;
	otherwise if M is sex-enslaved:
		say SexEnslavedFoodRequest of M;
	otherwise:
		say FuckedSillyFoodRequest of M.

To say FuckedSillyFoodRequest of (M - a monster):
	say "'Um, I guess you don't have any food?'".

To say SexEnslavedFoodRequest of (M - a monster):
	say FuckedSillyFoodRequest of M.

To say DiaperEnslavedFoodRequest of (M - a monster):
	say FuckedSillyFoodRequest of M.

To say DefeatedFoodResponse of (M - a monster):
	say DefeatedDrinkResponse of M.

Chapter 5 Dismissal

dismissalConvincingPower is a number that varies.

Definition: a monster is dismissable:
	if it is unleashed or it is unconcerned, decide yes;
	decide no. [Some NPCs can't be told to leave even when they're friendly, like the shopkeeper and witch]

To say undismissable of (M - a monster):
	say "[BigNameDesc of M] raises an eyebrow.[line break][speech style of M]'[one of]I'm staying right here. You are free to leave my presence whenever you want...'[or]As if I'd pay attention to you, [NameBimbo].'[or]Don't try to give me orders!'[or]Why on Earth do you think I'd take orders from someone like you?'[in random order][roman type][line break]".

speakingOutLoud is a number that varies. [For tracking whether the player chose to speak out loud rather than wave goodbye]

talk-dismiss is a talk-object.

To consider (T - talk-dismiss) for (M - a monster):
	if M is intelligent and M is interested and M is not caged and the player is not in a predicament room:
		if M is defeated:
			now the printed name of T is the substituted form of "[DefeatedDismissal of M]";
		otherwise:
			now dismissalConvincingPower is -100;
			now the printed name of T is the substituted form of "[DismissalRequest of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-dismiss) for (M - a monster):
	[let F be the favour of M;
	let U be 0;
	if M is interested, now U is 1;
	if speakingOutLoud is 2:
		follow the speech penalties rules;
	if speakingOutLoud is 2 and (the favour of M is not F or (U is 0 and M is interested) or (U is 1 and M is not interested) or M is grabbing the player or M is penetrating a body part or M is not in the location of the player):
		do nothing;] [NPC has already reacted]
	if M is defeated:
		say "[BigNameDesc of M] stops following you around.";
		bore M;
	otherwise if M is friendly and M is not robot and M is not hellhound:
		if M is dismissable, compute friendly dismissal of M;
		otherwise say undismissable of M;
	otherwise:
		compute unfriendly dismissal of M.

Definition: yourself is thinking of relieving themselves:
	if the location of the player is use-the-floor, decide no;
	if watersports mechanics is 1 and (the player is male or the location of the player is not urinals), decide yes;
	if the total squirtable fill of belly > 0 and the location of the player is toilets, decide yes;
	decide no.

To say DismissalRequest of (M - a monster):
	[now speakingOutLoud is 0;
	if the player is able to speak:
		now speakingOutLoud is 1;
	otherwise if the player is silently able to manually speak:
		say "Do you want to speak out loud? [if incontinent-when-speaking tattoo is worn]If you do, you might soil yourself. [end if]If you don't, you won't be able to explain [italic type]why[roman type] you want [him of M] to leave.";
		if the player is bimbo consenting, now speakingOutLoud is 2;
	if speakingOutLoud > 0:]
	if M is robot or M is hellhound:
		say "'I don't suppose you'll leave me alone if I ask you to?'";
	otherwise if M is unfriendly:
		if the class of the player is princess, say DismissalDemandRoyal of M;
		otherwise say DismissalDemandDefault of M;
	otherwise if the class of the player is princess:
		now dismissalConvincingPower is the DismissalPowerRoyal of M;
		say DismissalRequestRoyal of M;
	otherwise if the class of the player is vixen:
		now dismissalConvincingPower is the DismissalPowerVixen of M;
		say DismissalRequestVixen of M;
	otherwise if the player is in danger:
		now dismissalConvincingPower is the DismissalPowerCombat of M;
		say DismissalRequestCombat of M;
	otherwise if the player is thinking of relieving themselves:
		now dismissalConvincingPower is the DismissalPowerToilet of M;
		say DismissalRequestToilet of M;
	otherwise if the player is bursting or the player is feeling full or the total squirtable fill of belly > 0:
		now dismissalConvincingPower is the DismissalPowerBursting of M;
		say DismissalRequestBursting of M;
	otherwise if the player is very horny and the player is able to automatically masturbate:
		now dismissalConvincingPower is the DismissalPowerHorny of M;
		say DismissalRequestHorny of M;
	otherwise if the friendly boredom of M > 10:
		now dismissalConvincingPower is the DismissalPowerStalker of M;
		say DismissalRequestStalker of M;
	otherwise:
		now dismissalConvincingPower is the DismissalPowerDefault of M;
		say DismissalRequestDefault of M;
	[otherwise:
		say "You try to [if the player is feeling dominant]aggressively shoo [NameDesc of M] out of the room[otherwise if the player is feeling submissive]politely wave goodbye to [NameDesc of M][otherwise]gesture to [NameDesc of M] that it's time for [him of M] to leave[end if].";
		now dismissalConvincingPower is 0.]

To decide which number is the DismissalPowerRoyal of (M - a monster):
	decide on 1.

To say DismissalDemandDefault of (M - a monster):
	say "'Fuck off!'";

To say DismissalDemandRoyal of (M - a monster):
	say "Enough of this! Begone, peasant!";

To say DismissalRequestRoyal of (M - a monster):
	say "'[if M is royal guard]Sir[otherwise]Citizen[end if], you are dismissed.'".

To decide which number is the DismissalPowerVixen of (M - a monster):
	decide on 2.

To say DismissalRequestVixen of (M - a monster):
	say "'[if the player is a nympho and diaper quest is 0]Look! Over there! That chick is totally fucking herself[otherwise if the player is a nympho]Look! Over there! That chick is totally wetting herself[otherwise if the intelligence of the player < 6]Look, over there! A distraction[otherwise][one of]Quick quick, you're needed over there[or]It's an emergency, please, quick, right over there[or]Oh my god, there's something CRAZY going on right over there! Go check it out right now[in random order][end if]!'".

To decide which number is the DismissalPowerToilet of (M - a monster):
	if the diaper-duration of M > 0, decide on -100;
	decide on 2.

To say DismissalRequestToilet of (M - a monster):
	if diaper quest is 0, say "'[if the player is feeling dominant]Give me some privacy in here, [fucker of M]!'[otherwise if the player is feeling submissive]Please [stud of M], would I be allowed to erm, you know, in private?'[otherwise if the player is a pervert]I'm about to relieve myself, hun. So unless that turns you on, perhaps you should probably look the other way?'[otherwise]Um, are you a pervert or something? Do you always watch people when they're trying to relieve themselves?'[end if]";
	otherwise say "'[if the diaper-duration of M > 0]Could you PLEASE just leave me alone in this room for a minute? I want to do... something.'[otherwise if the player is feeling dominant]Give me some privacy in here, [fucker of M]!'[otherwise if the player is feeling submissive]Please [stud of M], would I be allowed to go potty in private?'[otherwise if the player is a pervert]I'm about to relieve myself, hun. So unless that turns you on, perhaps you should probably look the other way?'[otherwise]Um, are you a pervert or something? Do you always watch people when they're trying to relieve themselves?'[end if]".

To decide which number is the DismissalPowerBursting of (M - a monster):
	if diaper quest is 1, decide on -1;
	decide on 2.

To say DismissalRequestBursting of (M - a monster):
	if diaper messing >= 3 and (the player is feeling full or the total squirtable fill of belly > 0):
		say "'[if the diaper addiction of the player > 14]Uh-oh, [NameBimbo] [one of]needs to doo-doo[or]gotta make poopies[or]gonna make mush[in random order]! Are you... going to watch me?'[otherwise]Fuck dude, I'm gonna do something really nasty soon, I can feel it coming! You should leave.'[end if]";
	otherwise if the player is bursting:
		say "'[if the diaper addiction of the player > 14][NameBimbo][']s gonna go tinkles... do you wanna watch?'[otherwise]Hey I gotta pee soon, please could you give me some privacy?'[end if]";
	otherwise:
		say "'[if the player is a nympho]Ooh fuck, it's coming out soon... Are you sure you wanna be here to watch this?'[otherwise]I can't hold it in for much longer, please, don't look!'[end if]".

To decide which number is the DismissalPowerHorny of (M - a monster):
	decide on 1.

To say DismissalRequestHorny of (M - a monster):
	if the player is a nympho:
		say "'Look honey, I'm so fucking horny I'm about to [if the size of penis > 2]jack[otherwise]jill[end if] myself raw, are you sure you want to be around for that?'";
	otherwise if the player is feeling submissive:
		say "'Please [stud of M], can I have permission to make myself cum? And erm, [if the player is disgraced]do you have to watch[otherwise]would you mind looking the other way[end if]?'";
	otherwise:
		say "'I need to see to some... needs... Would you please kindly [if the player is feeling dominant]fuck off and come back later[otherwise]allow me the decency of some privacy[end if]?'".

To decide which number is the DismissalPowerCombat of (M - a monster):
	decide on 2.

To say DismissalRequestCombat of (M - a monster):
	if the player is a nympho:
		say "'This might get [']messy['], are you sure you want to stick around?'";
	otherwise if the player is prone:
		say "'[if M is shameless]If you want to watch, that's okay, but please don't think you have to indulge in my shame[otherwise]Please, I don't want you to watch this[end if]...'";
	otherwise:
		say "'Hey, I'm a little busy kicking butt right now, [if M is not guardian]so if you're not going to help [end if]can you come back later?'".

To decide which number is the DismissalPowerStalker of (M - a monster):
	decide on 1.

To say DismissalRequestStalker of (M - a monster):
	if the player is a nympho:
		say "'Aren't there other sluts around here you need to spend some time stalking? Or is it just me?'";
	otherwise if the player is feeling submissive:
		say "'Thank you [literalMistress of M] for following me around and making sure that I [if diaper quest is 1]follow the rules[otherwise]don't get up to mischief[end if], but do you have to do it forever?'";
	otherwise:
		say "'[if the player is feeling dominant]Could you fuck off? You're beginning to feel like a stalker.'[otherwise]Don't you ever get bored of following me around?'[end if]".

To decide which number is the DismissalPowerDefault of (M - a monster):
	decide on 0.

To say DismissalRequestDefault of (M - a monster):
	if the player is feeling submissive:
		say "'[one of]Am I dismissed[or]Am I free to go[or]Please may I have some alone time[in random order], [stud of M]?'";
	otherwise if the player is a nympho and diaper quest is 0:
		say "'Sorry hun, I've got stuff to fuck, can we continue this later?'";
	otherwise if the player is feeling dominant and M is not buddy:
		say "'[one of]What, are we an item now? Get your own friends, weirdo[or]Do you mind?! I didn't ask you to follow me around, you know[or]Give me some privacy[in random order].'";
	otherwise:
		say "'[one of]Erm, would you mind giving me some privacy please?'[or]Are we travelling companions now? I was kind of planning to explore ahead on my own.'[or]I'm going to go on alone from here, I hope that's okay. See you later!'[in random order]".

To decide which number is the dismissalResistance of (M - a monster):
	let D be the difficulty of M;
	decrease D by a random number between 1 and 5;
	decrease D by (the favour of M - the aggro limit of M) / 3;
	if D < 1, now D is 1;
	decide on the square root of D - 1.

To compute friendly dismissal of (M - a monster):
	if the dismissRefused of M >= dismissalConvincingPower + 1:
		say DismissalResponseRefused of M;
	otherwise:
		let DCP be dismissalConvincingPower + the charisma of the player;
		let DR be the dismissalResistance of M;
		if debuginfo > 0, say "[input-style]Dismissal check: good excuse rating ([dismissalConvincingPower]) [if dismissalConvincingPower >= 100](Automatic success)[otherwise]+ charisma rating ([charisma of the player]) = [DCP] | ([DR - 1].5) NPC dismissal resistance[end if][roman type][line break]";
		if DCP >= DR or dismissalConvincingPower >= 100:
			bore M;
			if dismissalConvincingPower is 0, FavourDown M; [There was no good reason]
		say DismissalResponse of M;
		if M is not interested:
			if dismissalConvincingPower > 0, check motion of M; [They head off and they don't move again this turn]
			otherwise say "[BigNameDesc of M] stops following you around.";
		otherwise:
			now the dismissRefused of M is dismissalConvincingPower + 1;
			now the friendly boredom of M is 0.

To say DismissalResponse of (M - a monster):
	if the player is able to speak:
		if the class of the player is princess:
			say DismissalResponseRoyal of M;
		otherwise if the class of the player is vixen:
			say DismissalResponseVixen of M;
		otherwise if the player is in danger:
			say DismissalResponseCombat of M;
		otherwise if the player is thinking of relieving themselves:
			say DismissalResponseToilet of M;
		otherwise if the player is bursting or the player is feeling full or the total squirtable fill of belly > 0:
			say DismissalResponseBursting of M;
		otherwise if the player is very horny and the player is able to automatically masturbate:
			say DismissalResponseHorny of M;
		otherwise if the friendly boredom of M > 10:
			say DismissalResponseStalker of M;
		otherwise:
			say DismissalResponseDefault of M;
	otherwise:
		say DismissalResponseDefault of M.

To say DismissalResponseRefused of (M - a monster):
	say "[speech style of M]I've already said no.'[roman type][line break]".

To say DismissalResponseRoyal of (M - a monster):
	say DismissalResponseDefault of M.

To say DismissalResponseVixen of (M - a monster):
	say "[speech style of M]'[if M is interested]Hmph. I'm not falling for that one.'[otherwise]What? Where?!'[end if][roman type][line break]".

To say DismissalResponseToilet of (M - a monster):
	if diaper quest is 0, say "[speech style of M]'[if M is interested]Come on, just hold it in for a couple more minutes.'[otherwise]Oh. Um, I'll see you later then.'[end if][roman type][line break]";
	otherwise say "[speech style of M]'[if the diaper-duration of M > 0]Now now, we wouldn't be thinking of trying to use a grown-up potty, would we? You're to stay in diapers until you can prove you can stay dry, so if you really can't hold it, you'll just have to have an accident like a real baby.'[otherwise if M is not interested]Oh sorry, I didn't realise. Well done for making it in time!'[otherwise if the player is feeling submissive]Permission denied. Prove to me you can hold it in. If you really are a big [boy of the player], that is...'[otherwise]Pfft. Come on, surely you can hold it in for at least a couple more minutes? Unless you're just a big baby in disguise?'[end if][roman type][line break]".

To say DismissalResponseBursting of (M - a monster):
	if diaper messing >= 3 and (the player is feeling full or the total squirtable fill of belly > 0):
		say "[speech style of M]'[if M is interested]I don't believe it. Surely you would never do something as disgraceful as that right in front of me. You've got to be kidding.'[otherwise]Wait, seriously?! Fuck, I'm out of here!'[end if][roman type][line break]";
	otherwise if the player is bursting:
		if the diaper addiction of the player > 14, say "[speech style of M]'[if M is interested and there is a worn diaper]I would respect you more if you could hold it in. But I'm not leaving you alone, no.'[otherwise if M is interested]I think the question is, do you want to face the consequences?'[otherwise]Ugh! No, I think not.'[end if][roman type][line break]";
		otherwise say "[speech style of M]'[if diaper quest is 1 and M is interested]No, no, no! You hold it or you disgrace yourself. Up to you, [honey of M].[otherwise if M is interested]Privacy? No, I don't want to miss watching a silly [boy of the player] pissing [himself of the player] in front of me, that sounds hilarious!'[otherwise if there is a worn diaper]Hmm, well at least you're safely padded, I guess. See you in a bit.'[otherwise]I assume you know where the toilets are. See you later.'[end if][roman type][line break]";
	otherwise:
		if the player is a nympho, say "[speech style of M]'[if M is interested and there is a worn diaper]I would respect you more if you could hold it in. But I'm not leaving you alone, no.'[otherwise if M is interested]I think the question is, why can't you hold it in until I'm ready to leave you be?'[otherwise]Oh. No thank you. Nope.'[end if][roman type][line break]";
		otherwise say "[speech style of M]'[if M is interested and diaper lover > 0]Really? Only the biggest baby would really lose hold of their enema while in polite company!'[otherwise if M is interested]If you expel the contents of your belly in front of me, there will be consequences, young [man of the player].'[otherwise]Oh. I have no desire to see that right now, thank you very much.'[end if][roman type][line break]".

To say DismissalResponseCombat of (M - a monster):
	if the player is a nympho or M is prone:
		say "[speech style of M]'[if M is interested]A good-for-nothing slut like you doesn't need privacy to do something like that, I'm sure[otherwise]Ugh. No, I guess I don't[end if].'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Hmm. [if M is interested]I think I'll stay and watch[otherwise]Best of luck, then[end if].'[roman type][line break]".

To say DismissalResponseHorny of (M - a monster):
	if the player is a nympho:
		say "[speech style of M]'[if M is interested]A good-for-nothing slut like you doesn't need privacy to do something like that, I'm sure[otherwise]Ugh. No, I guess I don't[end if].'[roman type][line break]";
	otherwise if the player is feeling submissive:
		say "[speech style of M]'[if M is interested]If you are going to do such a naughty thing, you'll have to do it while I watch[otherwise]Hmm, I'm feeling kind right now. Enjoy yourself[end if].'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Hmm. [if M is interested]No, I don't think so[otherwise]Until next time, then[end if].'[roman type][line break]".

To say DismissalResponseStalker of (M - a monster):
	say "[speech style of M]'[if M is interested][one of]What can I say, it's fun to watch your adventure[or]I'm enjoying this, I think I'll stay for a while longer[in random order][otherwise][one of]Fine, I can take a hint[or]Don't flatter yourself. Obviously I don't want to hang out with you either[in random order][end if].'[roman type][line break]".

To say DismissalResponseDefault of (M - a monster):
	if the player is feeling submissive:
		say "[speech style of M]'Hmm. [if M is interested]No, I don't think so[otherwise]If you must[end if].'[roman type][line break]";
	otherwise if the player is a nympho and diaper quest is 0:
		say "[speech style of M]'[if M is interested]What? No[otherwise]Eww. Fine[end if].'[roman type][line break]";
	otherwise if the player is feeling dominant and M is not buddy:
		say "[speech style of M]'How rude. [if M is interested]You know what, I'm going to follow you around for even longer now[otherwise]And here I thought we were having a good time. I'll go then[end if].'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[if M is interested]Huh? No, we're having fun, aren't we?'[otherwise if M is buddy]Oh, you don't like hanging out with me? I thought we were friends. I guess not.'[otherwise]What are you trying to imply? I'm not following you around.'[end if][roman type][line break]".

To compute unfriendly dismissal of (M - a monster):
	say "[BigNameDesc of M] [if M is penetrating a body part or M is grabbing the player]just chuckles[otherwise]ignores you[end if].".

To say DefeatedDismissal of (M - a monster):
	say "'Leave me be, now.'".


[We put this talk object before the fluff questions to make sure it's never blocked by the fluff questions.]
talk-request is a talk-object.



Chapter - Fluff Questions

Definition: a monster is fluff-question-appropriate:
	if it is undefeated and it is intelligent and it is interested and it is friendly, decide yes;
	decide no. [Can they be asked fluff questions?]

talk-mute-question is a talk-object.

To consider (T - talk-mute-question) for (M - a monster):
	if M is unintelligent:
		now the printed name of T is the substituted form of "[MuteQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-mute-question) for (M - a monster):
	if the printed name of T matches the text "morality", say SexDollExplanation of M;
	otherwise say MuteResponse of M.

To say MuteQuestion of (M - a monster):
	say "'Are you [if the bimbo of the player < 10]sentient[otherwise]aware of what's going on and stuff[end if]?'".

To say MuteResponse of (M - a monster):
	say "The response comes telepathically.[line break][speech style of M]'Yes I am sentient. Yes I am of sexual [maturity] for my species. No more questions.'[roman type][line break]".

To say SexDollQuestion of (M - a monster):
	say "'So, should I be worried about the morality of engaging in sex with this thing?'".

To say SexDollExplanation of (M - a monster):
	say "The response comes telepathically from the Nintendolls, directly into your head.[line break][second custom style]'It's simply an animated object, controlled via magic. Just consider it like you would a very high-tech sex doll.'[roman type][line break]".

talk-where-question is a talk-object.

Definition: a monster is where-question-appropriate:
	if it is fluff-question-appropriate, decide yes;
	decide no.

To consider (T - talk-where-question) for (M - a monster):
	if M is where-question-appropriate:
		now the printed name of T is the substituted form of "[WhereQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-where-question) for (M - a monster):
	say WhereAnswer of M.

To say WhereQuestion of (M - a monster):
	say "'[if the class of the player is santa's little helper]Hmm, this isn't Lapland. [end if]Where [one of]are we?'[or]am I?'[at random]".
To say WhereAnswer of (M - a monster):
	say "[speech style of M]'We're here. Obviously.'[roman type][line break]".

talk-who-question is a talk-object.

Definition: a monster is who-question-appropriate:
	if it is fluff-question-appropriate, decide yes;
	decide no.

To consider (T - talk-who-question) for (M - a monster):
	if M is who-question-appropriate:
		now the printed name of T is the substituted form of "[WhoQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-who-question) for (M - a monster):
	say WhoAnswer of M.

To say WhoQuestion of (M - a monster):
	if the bimbo of the player < 11:
		say "'Who are you?'";
	otherwise:
		say "'Got a name, [if M is male]big boy?'[otherwise]sexy?'[end if]".

To say WhoAnswer of (M - a monster):
	say "[speech style of M]'Why, I'm Generic the npc!'[roman type][line break]".

talk-story-question is a talk-object.

Definition: a monster is story-question-appropriate:
	if it is fluff-question-appropriate, decide yes;
	decide no.

To consider (T - talk-story-question) for (M - a monster):
	if M is story-question-appropriate:
		now the printed name of T is the substituted form of "[StoryQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-story-question) for (M - a monster):
	say StoryAnswer of M.

To say StoryQuestion of (M - a monster):
	if the class of the player is santa's little helper:
		say "'How did you come to be here this Christmas?'";
	otherwise:
		say "'What's your story?'".

To say StoryAnswer of (M - a monster):
	say "[speech style of M]'Trapquest.'[roman type][line break]".

talk-escape-question is a talk-object.

Definition: a monster is escape-question-appropriate:
	if it is fluff-question-appropriate, decide yes;
	decide no.

To consider (T - talk-escape-question) for (M - a monster):
	if M is escape-question-appropriate:
		now the printed name of T is the substituted form of "[EscapeQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-escape-question) for (M - a monster):
	say EscapeAnswer of M.

To say EscapeQuestion of (M - a monster):
	if the class of the player is santa's little helper:
		say "'I need to get back to Santa's grotto. Any ideas?'";
	otherwise:
		say "'How do I get out of here safely?'".

To say EscapeAnswer of (M - a monster):
	say "[speech style of M]'Close the window.'[roman type][line break]".

talk-advice-question is a talk-object.

Definition: a monster is advice-question-appropriate:
	if it is fluff-question-appropriate, decide yes;
	decide no.

To consider (T - talk-advice-question) for (M - a monster):
	if M is advice-question-appropriate:
		now the printed name of T is the substituted form of "[AdviceQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-advice-question) for (M - a monster):
	say AdviceAnswer of M.

[This should make it easier to add more classes to this function in the future.]
To say AdviceQuestion of (M - a monster):
	if the class of the player is santa's little helper:
		say "'Any advice for [if the bimbo of the player > 6]a naughty[otherwise]an innocent[end if] little helper?'";
	otherwise if the class of the player is princess:
		say "'Any advice for an adventurous princess?'";
	otherwise if the class of the player is maid:
		say "'Any advice for a cunning maid?'";
	otherwise if the bimbo of the player > 13:
		say "'Any advice for a lonely girl?'";
	otherwise if the intelligence of the player > 10:
		say "'Any advice for an intrepid adventurer?'";
	otherwise:
		say "'Any advice for a brave explorer?'".

To say AdviceAnswer of (M - a monster):
	if watersports fetish is 1:
		say "[speech style of M]'Don't eat yellow snow. Unless you get off on it or something.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Don't eat yellow snow.'[roman type][line break]".


Volume - Errands

An errand is a kind of object. no-errand is an errand. rejected-errand is an errand.
To say ErrandFlav of (E - an errand) for (P - a person):
	say "I want you to do something, but I don't know how to phrase it. Oops, please report a bug. ".
To say ErrandFlav of (P - a person):
	let E be the current-errand of P;
	say ErrandFlav of E for P.
Definition: an errand is completed: decide no.
A reward is a kind of object. no-reward is a reward.
errand-giver is an object that varies.
A person has an object called the current-errand. The current-errand of a person is usually no-errand.
A person has an object called the current-reward.
Definition: an errand is appropriate: decide no. [Fetish wise and gamestate wise, should this be able to be given as an errand right now?]
Definition: an errand (called E) is available:
	repeat with M running through alive undefeated intelligent monsters:
		if the current-errand of M is E, decide no;
	decide yes.
To decide which number is the errand-weight of (E - an errand) for (P - a person): [chance the NPC will choose this errand]
	decide on 0.
To decide which number is the errand-desire of (E - an errand) for (P - a person): [The errand-desire must be at least as high as the requestability (tradability) of the desired requestable, in order to be eligible.]
	decide on 14.
To decide which number is the errand-value of (T - a thing) for (P - a person): [a way to flag that this item can be used to complete the errand]
	if T is stolen and the current-errand of P is theft-errand, decide on 1;
	decide on 0.
Definition: an errand (called E) is eligible:
	if errand-giver is a person:
		if E is not appropriate, decide no;
		if the requestability of the current-reward of errand-giver > the errand-desire of E for errand-giver, decide no;
		if the errand-weight of E for errand-giver > 0, decide yes;
	decide no.
To set up (E - an errand):
	do nothing.
To compute instant effect of (E - an errand) for (P - a person):
	do nothing.
To compute errand completion of (P - a person):
	if seconds is 0, allocate 6 seconds;
	if (P is mechanic or P is demon lord) and love-letters is held:
		calm P;
		compute special letter delivery;
	otherwise:
		compute completion of the current-errand of P for P.
To compute completion of (E - an errand) for (P - a person):
	now the current-errand of P is no-errand;
	if P is a monster, calm P;
	compute unique completion of E for P;
	compute errand reward of E for P.
To compute unique completion of (E - an errand) for (P - a person):
	say "BUG - this errand is missing its completion function for [NameDesc of P]!".
To compute errand reward of (E - an errand) for (P - a person):
	compute errand rewarding of the current-reward of P from P;
	now the current-reward of P is no-reward.
To choose an errand for (P - a person):
	now errand-giver is P;
	choose an errand.
To choose an errand:
	let chosen-errand be no-errand;
	let total-errand-weight be 0;
	let LE be the list of eligible errands;
	repeat with E running through LE:
		increase total-errand-weight by the errand-weight of E for errand-giver;
	if debugmode > 1, say "Total errand weight: [total-errand-weight].";
	if total-errand-weight > 0:
		sort LE in random order;
		let R be a random number between 1 and total-errand-weight;
		let E be entry 1 in LE;
		let EW be the errand-weight of E for errand-giver;
		while EW < R:
			decrease R by EW;
			remove E from LE;
			now E is entry 1 in LE;
			now EW is the errand-weight of E for errand-giver;
		now chosen-errand is E;
	now the current-errand of errand-giver is chosen-errand;
	set up chosen-errand.


vine-egg-errand is an errand.
Definition: vine-egg-errand is appropriate:
	if egg laying fetish is 1, decide yes;
	decide no.
Definition: vine-egg-errand is completed:
	repeat with E running through carried small eggs:
		if the egg-origin of E is a vine, decide yes;
	decide no.
To decide which number is the errand-weight of (E - vine-egg-errand) for (P - a person):
	if playerRegion is Woods, decide on 0; [they can get it themselves]
	if P is a robot or P is a student, decide on 0;
	decide on 1.
To decide which number is the errand-desire of (E - vine-egg-errand) for (P - a person):
	decide on 20.
To decide which number is the errand-value of (E - an egg) for (P - a person):
	if the current-errand of P is vine-egg-errand and the egg-origin of E is a vine, decide on 1;
	decide on 0.
To say ErrandFlav of (E - vine-egg-errand) for (P - a person):
	say "I need a small egg. Specifically, the kind you'll find inside a [']vitis ovipositus['], a type of vine that grows in the Woods near here. ".
To compute unique completion of (E - vine-egg-errand) for (P - a person):
	let EG be a random carried small egg;
	if the errand-value of EG for P is 0:
		repeat with EGX running through carried small eggs:
			if the errand-value of EG for P > 0, now EG is EGX;
	say "You hand [NameDesc of EG] to [NameDesc of P].[line break][speech style of P]'This is exactly what I need. Perfect.'[roman type][line break]";
	now EG is carried by P.

fertility-idol-errand is an errand.
Definition: fertility-idol-errand is appropriate:
	if playerRegion is mansion, decide no; [they could see it themselves]
	if diaper quest is 0 and Mansion01 is placed and fertility idol is off-stage, decide yes;
	decide no.
Definition: fertility-idol-errand is completed:
	if fertility idol is held, decide yes;
	decide no.
To decide which number is the errand-weight of (E - fertility-idol-errand) for (P - a monster):
	if P is a robot or P is a student, decide on 0;
	decide on 1.
To decide which number is the errand-desire of (E - fertility-idol-errand) for (P - a person):
	decide on 100.
To decide which number is the errand-value of (E - fertility idol) for (P - a person):
	if the current-errand of P is fertility-idol-errand, decide on 1;
	decide on 0.
To say ErrandFlav of (E - fertility-idol-errand) for (P - a person):
	say "Somewhere in the mansion, I believe you may find an ancient fertility idol. I want to see it. ".
To set up (E - fertility-idol-errand):
	if a random number between 1 and 2 is 1, now fertility idol is cursed;
	now fertility idol is in a random placed haunted room.
To compute unique completion of (E - fertility-idol-errand) for (P - a person):
	say "[BigNameDesc of P] looks at [NameDesc of fertility idol] with awe.[line break][speech style of P]'So it is real after all...'[roman type][line break]You try to hand it to [him of P], but [he of P] immediately backs away.[line break][speech style of P]'Are you crazy? I'm not touching that! It might be cursed!'[roman type][line break]".

giant-pencil-errand is an errand.
Definition: giant-pencil-errand is appropriate:
	if giant-pencil is off-stage, decide yes;
	decide no.
Definition: giant-pencil-errand is completed:
	if giant-pencil is carried, decide yes;
	decide no.
To decide which number is the errand-weight of (E - giant-pencil-errand) for (P - an aeromancer):
	decide on 10.
To decide which number is the errand-desire of (E - giant-pencil-errand) for (P - an aeromancer):
	decide on 8.
To decide which number is the errand-value of (E - giant-pencil) for (P - a person):
	if the current-errand of P is giant-pencil-errand, decide on 1;
	decide on 0.
To set up (E - giant-pencil-errand):
	now giant-pencil is in WoodsBoss01.
To say ErrandFlav of (E - giant-pencil-errand) for (P - a person):
	say "I dropped my favourite pencil down a big hole in the woods and, well, I didn't fancy risking getting knocked up by tentacle eggs so I decided not to go down and get it. But you look like you are a bit of a risk-taker... So yeah. Get my pencil for me. That's my price. ".
To compute unique completion of (E - giant-pencil-errand) for (P - a person):
	say "You hand [NameDesc of giant-pencil] to [NameDesc of P]. [BigNameDesc of P] squeals with delight.[line break][speech style of P]'Mr. Squiggles! You're all right!!!'[roman type][line break]You watch a grown [man of P] cuddle an inanimate pencil as it if was a pet.";
	now giant-pencil is carried by P.

get-pregnant-errand is an errand.
Definition: get-pregnant-errand is appropriate:
	if pregnancy fetish is 1 and the pregnancy of the player is 0 and the player is possessing a vagina, decide yes;
	decide no.
Definition: get-pregnant-errand is completed:
	if (the pregnancy of the player is 1 or the pregnancy of the player is 2) and the largeness of belly > 3, decide yes;
	decide no.
To decide which number is the errand-weight of (E - get-pregnant-errand) for (P - an acolyte):
	decide on 10.
To decide which number is the errand-weight of (E - get-pregnant-errand) for (P - a fairy):
	decide on 10.
To decide which number is the errand-value of (E - belly) for (P - a person):
	if the current-errand of P is get-pregnant-errand and get-pregnant-errand is completed,	decide on 1;
	decide on 0.
To say ErrandFlav of (E - get-pregnant-errand) for (P - a person):
	say "I want to see a cutie with a bun in [his of the player] oven! So I want you to come and see me when you're all knocked up, and showing. ".
To say ErrandFlav of (E - get-pregnant-errand) for (P - an acolyte):
	say "To properly serve the great ones, all [men of the player] must be [']blessed[']! So I want you to come and see me when you've conceived a child, and are showing. ".
To compute unique completion of (E - get-pregnant-errand) for (P - a person):
	say "You show your round pregnant belly to [NameDesc of P]. [BigNameDesc of P] squeals with delight.[line break][speech style of P]'Congratulations! You must be so proud!'[roman type][line break]".
To compute unique completion of (E - get-pregnant-errand) for (P - an acolyte):
	say "You show your round pregnant belly to [NameDesc of P]. [BigNameDesc of P] puts a hand to it, and purrs.[line break][speech style of P]'This pleases the Great Ones.'[roman type][line break]";
	if the pregnancy of the player is 1 and the player is getting unlucky:
		say "With one hand resting on your belly, [NameDesc of P] raises [his of P] other hand in the air and snaps [his of P] fingers. Suddenly, your pregnancy feels... Different.[line break][speech style of P]'Azathot has chosen you to be one of his disciples. Go and spread the good news. Carry your burden with pride. May you remain this way for the rest of your days.'[line break]Wait... What?! Has [he of P] just made me... PERMANENTLY PREGNANT?![roman type][line break][GotUnluckyFlav]";
		now the pregnancy of the player is 2.

get-drunk-errand is an errand.
Definition: get-drunk-errand is appropriate:
	if alcohol fetish is 1 and alcohol-level < 3, decide yes;
	decide no.
Definition: get-drunk-errand is completed:
	if alcohol-level >= 3, decide yes;
	decide no.
To decide which number is the errand-weight of (E - get-drunk-errand) for (P - an acolyte):
	decide on 10.
To say ErrandFlav of (E - get-drunk-errand) for (P - a person):
	say "To be closer to the Great Ones, you must cloud your mind. Drink, and be enlightened. Return to me in a heightened state of insobriety. ".
To compute unique completion of (E - get-drunk-errand) for (P - a person):
	say "You present yourself to [NameDesc of P], gently swaying and grinning. [BigNameDesc of P] nods.[line break][speech style of P]'Good work, acolyte! We will make a mindless vassal of you yet!'[roman type][line break]".

mess-yourself-errand is an errand.
Definition: mess-yourself-errand is appropriate:
	if diaper messing >= 3 and rectum > 1 and there is a worn total protection soilable knickers and asshole is not actually occupied and the number of live things penetrating vagina is 0 and (the number of things grabbing the player is 0 or diaper quest is 1) and the player is feeling full, decide yes;
	decide no.
To decide which number is the errand-weight of (E - mess-yourself-errand) for (P - an adult baby slave):
	decide on 10.
To decide which number is the errand-weight of (E - mess-yourself-errand) for (P - a wrestler):
	decide on 4.
To decide which number is the errand-weight of (E - mess-yourself-errand) for (P - a matron):
	decide on 3.
To say ErrandFlav of (E - mess-yourself-errand) for (P - a person):
	say "You need to poop right now, don't you? Well then, that's what I want to see. Squat down like a [if the player is upright]dumb pathetic toddler[otherwise]frog[end if]and push, and mess yourself. Right now. ".
To compute instant effect of (E - mess-yourself-errand) for (P - a person):
	let normal-refusal be false;
	if the diaper addiction of the player < 4 and suppository is 0 and the number of worn desperation clothing is 0, now normal-refusal is true;
	if the humiliation of the player < 20000 and there is an intelligent awake monster in the location of the player and the diaper addiction of the player < 15, now normal-refusal is true;
	say "Squat and mess yourself[if normal-refusal is true]? [bold type]You would normally be unable to bring yourself do such a thing in front of people. If you spend your willpower forcing yourself to debase yourself like this in order to get a reward, it may significantly affect your self-esteem moving forward.[roman type][line break][otherwise]?[end if]";
	if the player is bimbo consenting:
		now auto is 1;
		try messing;
		now auto is 0;
		if normal-refusal is true, obsceneHumiliate;
		compute errand reward of E for P;
		now the current-errand of P is no-errand;
	otherwise:
		say "[variable custom style]'I'm sorry, but there's no way I'm going to do that.'[line break][speech style of P]'Disappointing. Of course, this means you won't be getting anything from me.'[roman type][line break][BigNameDesc of P] turns up [his of P] nose towards you.";
		now the current-errand of P is rejected-errand;
	now the current-reward of P is no-reward.

royal-sigil-errand is an errand.
Definition: royal-sigil-errand is appropriate:
	if there is a summon-available royal guard, decide yes;
	decide no.
Definition: royal-sigil-errand is completed:
	if there is a carried royal sigil, decide yes;
	decide no.
To decide which number is the errand-weight of (E - royal-sigil-errand) for (P - a centaur):
	if there is a royal sigil held by P, decide on 0;
	decide on 10.
To decide which number is the errand-value of (E - a royal sigil) for (P - a person):
	if the current-errand of P is royal-sigil-errand, decide on 1;
	decide on 0.
To say ErrandFlav of (E - royal-sigil-errand) for (P - a person):
	say "The Princess named me an honorary guard of these woods, but [he of ex-princess] never gave me a royal sigil. And I really want one. I know each of the guards down in [his of ex-princess] dungeon has one. I want you to demand items from one until [he of a random royal guard] is forced to give you it, and then bring it to me. ".
To compute unique completion of (E - royal-sigil-errand) for (P - a person):
	let RS be a random carried royal sigil;
	say "You hand [NameDesc of RS] to [NameDesc of P].[line break][speech style of P]'Yes! Finally, people will believe me when I tell them I am the princess's knight!'[roman type][line break]";
	now RS is carried by P.

adventurer-attack-errand is an errand. adventurer-attack-errand has a number called old-bimbo-count.
To decide which number is bimbo-adventurer-count:
	let N be 0;
	repeat with M running through explorers:
		if the explorer-bimbo of M >= 2, increase N by 1;
	decide on N.
Definition: adventurer-attack-errand is appropriate:
	if the old-bimbo-count of adventurer-attack-errand is not 0, decide no;
	repeat with M running through alive explorers:
		if the explorer-bimbo of M < 2, decide yes;
		decide no.
Definition: adventurer-attack-errand is completed:
	if bimbo-adventurer-count > the old-bimbo-count of adventurer-attack-errand, decide yes;
	decide no.
To decide which number is the errand-weight of (E - adventurer-attack-errand) for (P - a demoness):
	decide on 10.
To decide which number is the errand-weight of (E - adventurer-attack-errand) for (P - a witch):
	decide on 5.
To decide which number is the errand-weight of (E - adventurer-attack-errand) for (P - pimp):
	decide on 10.
To say ErrandFlav of (E - adventurer-attack-errand) for (P - a person):
	say "There are these other cheeky adventurers running around this place at the same time as you. You might have bumped into some of them? [if P is pimp]Well, I think you should show them who's boss. Kick and slap them around a bit, until they give up on their goals and settle for some... 'gainful employment' up here with me[otherwise]Well, they are weak and pathetic, and pissing me off. I want you to kick and slap one of them around until they conclude that a life of adventuring isn't for them[end if]. ".
To compute unique completion of (E - adventurer-attack-errand) for (P - a person):
	now the old-bimbo-count of adventurer-attack-errand is 0;
	say "[speech style of P]'I heard that another of those dumb bitches has given up [his of a random explorer] dreams of being an adventurer and decided that a life as a [if diaper quest is 1]diaper slut[otherwise]whore[end if] is more appropriate for a slut like [him of a random explorer]. I assume that was your doing? Anyway, I'm happy!'[roman type][line break]".

satisfy-pimp-errand is an errand. satisfy-pimp-errand has an object called the satisfy-target. satisfy-pimp-errand can be woman-freed.
Definition: satisfy-pimp-errand is appropriate:
	repeat with M running through alive explorers:
		if the satisfy-target of satisfy-pimp-errand is M, decide no;
	if pimp is alive, decide yes;
	decide no.
Definition: satisfy-pimp-errand is completed:
	if satisfy-pimp-errand is woman-freed, decide yes; [TODO: fix exploit where you could gain both quest from barbara and quest from explorer, free only barbara, and then get reward from explorer and barbara in that order]
	if the satisfy-target of satisfy-pimp-errand is the pimp, decide yes;
	decide no.
To decide which number is the errand-weight of (E - satisfy-pimp-errand) for (P - an explorer):
	decide on 10.
To say ErrandFlav of (E - satisfy-pimp-errand) for (P - a person):
	say "Um, well, I'm currently in debt to the pimp in [if playerRegion is hotel]this[otherwise]the[end if] hotel. Perhaps you could ask [him of pimp] if there's anything you can do to pay off my debts? ".
To compute instant effect of (E - satisfy-pimp-errand) for (P - a person):
	now the satisfy-target of E is P.
To compute unique completion of (E - satisfy-pimp-errand) for (P - a person):
	if P is an explorer:
		now the satisfy-target of satisfy-pimp-errand is nothing;
		say "[speech style of P]'The pimp said we're all square now. Thanks a bunch!'[roman type][line break]";
	otherwise:
		now E is not woman-freed.

portal-clothes-errand is an errand. portal-clothes-errand has an object called the satisfy-target.
Definition: portal-clothes-errand is appropriate:
	if diaper quest is 1, decide no;
	if portal-hotpants is unclash summonable or (the largeness of breasts > 3 and portal-bra is unclash summonable), decide yes;
	decide no.
Definition: portal-clothes-errand is completed:
	if portal-hotpants is worn or portal-bra is worn, decide no;
	decide yes.
To decide which number is the errand-weight of (E - portal-clothes-errand) for (P - pimp):
	decide on 40.
To say ErrandFlav of (E - portal-clothes-errand) for (P - a person):
	say "Sure, I'll just add you to the list of bitches in debt to me. I have a special way of helping you pay it off over time. You don't even need to be in the hotel. It's that simple... ".
To compute instant effect of (E - portal-clothes-errand) for (P - a person):
	say "Agree to go into debt with [NameDesc of P]?";
	if the player is bimbo consenting:
		say "You nod, and then [NameDesc of pimp] produces [if portal-hotpants is worn and portal-bra is worn]two bizarre items[otherwise]a bizarre item[end if] of clothing made out of concrete and gold. [BigNameDesc of pimp] snaps [his of pimp] fingers.";
		if portal-hotpants is unclash summonable, unclash class summon portal-hotpants;
		if the largeness of breasts > 3 and portal-bra is unclash summonable, unclash class summon portal-bra;
		if portal-bra is worn, say "[BigNameDesc of portal-bra] appears against your chest. Your breasts disappear through the portal on the inside[if the player is in Hotel44], and appear on the right-hand mannequin beside you[end if]. ";
		if portal-hotpants is worn, say "[BigNameDesc of portal-hotpants] appears against your crotch. [if the player is in Hotel44]Your [player-crotch] appear on the left-hand mannequin beside you. [end if]";
		say "[line break][speech style of pimp]'Now I can sell you for sex at any time, and take ALL the profits for myself[if the player is not in Hotel44]. You'll see what I mean soon enough[end if].'[roman type][line break]";
		FavourSet pimp to the aggro limit of pimp - 7;
		compute errand reward of E for P;
		if P is interested monster, satisfy P;
	otherwise:
		say "[variable custom style]'I'm sorry, but I don't like the sound of that.'[line break][speech style of P]'Well then, this was a waste of my time.'[roman type][line break][BigNameDesc of P] shrugs with annoyance.";
		now the current-errand of P is rejected-errand;
	now the current-reward of P is no-reward.

breast-growth-errand is an errand. breast-growth-errand has a number called old-breasts-largeness.
Definition: breast-growth-errand is appropriate:
	if diaper quest is 1, decide no;
	if breast-growth-errand is not available, decide no;
	if the largeness of breasts <= old-breasts-largeness of breast-growth-errand, decide no;
	if the player is not top heavy, decide yes;
	decide no.
Definition: breast-growth-errand is completed:
	if the largeness of breasts > old-breasts-largeness of breast-growth-errand, decide yes;
	decide no.
To decide which number is the errand-weight of (E - breast-growth-errand) for (P - a gladiator):
	decide on 10.
To decide which number is the errand-value of (E - breasts) for (P - a person):
	if the current-errand of P is breast-growth-errand and breast-growth-errand is completed,	decide on 1;
	decide on 0.
To say ErrandFlav of (E - breast-growth-errand) for (P - a person):
	let BS be the old-breasts-largeness of E + 1;
	say "To be honest, I'm keen to see if you can grow your breasts [if the old-breasts-largeness of E <= 6]to at least a [BraSize BS] cup[otherwise]any bigger[end if]. Perhaps go breathe in some pink smoke or something, and then come back to me? ".
To set up (E - breast-growth-errand):
	if the largeness of breasts < 7:
		now the old-breasts-largeness of E is max breast size - 1;
		if the old-breasts-largeness of E > 6, now the old-breasts-largeness of E is 6;
	otherwise:
		now the old-breasts-largeness of E is the largeness of breasts.
To compute unique completion of (E - breast-growth-errand) for (P - a person):
	say "[BigNameDesc of P] admires your [BreastDesc].[line break][speech style of P]'Yep, they're definitely bigger! Bravo! How magnificent.'[roman type][line break]".

butt-growth-errand is an errand. butt-growth-errand has a number called old-hips-thickness.
Definition: butt-growth-errand is appropriate:
	if diaper quest is 1, decide no;
	if butt-growth-errand is not available, decide no;
	if the thickness of hips <= old-hips-thickness of butt-growth-errand, decide no;
	if the player is not top heavy, decide yes;
	decide no.
Definition: butt-growth-errand is completed:
	if the thickness of hips > old-hips-thickness of butt-growth-errand, decide yes;
	decide no.
To decide which number is the errand-weight of (E - butt-growth-errand) for (P - orc):
	decide on 10.
To decide which number is the errand-value of (E - hips) for (P - a person):
	if the current-errand of P is butt-growth-errand and butt-growth-errand is completed,	decide on 1;
	decide on 0.
To say ErrandFlav of (E - butt-growth-errand) for (P - a person):
	say "I like a [boy of the player] with thick wide hips. I wonder if you can find a way to make yours any thicker? ".
To set up (E - butt-growth-errand):
	now the old-hips-thickness of E is the thickness of hips.
To compute unique completion of (E - butt-growth-errand) for (P - a person):
	say "[BigNameDesc of P] admires your [HipDesc].[line break][speech style of P]'Yep, they're definitely thicker! Most delicious! Now I wonder if I'll ever be lucky enough to get a lapdance from a [boy of the player] like you.'[roman type][line break]".

dungeon-altar-errand is an errand. dungeon-altar-errand has a number called altar-used.
Definition: dungeon-altar-errand is appropriate: decide yes.
Definition: dungeon-altar-errand is completed:
	if the altar-used of dungeon-altar-errand is 1, decide yes;
	decide no.
To decide which number is the errand-weight of (E - dungeon-altar-errand) for (P - Icarus):
	decide on 10.
To say ErrandFlav of (E - dungeon-altar-errand) for (P - a person):
	say "To be honest, I don't want much. The Goddess provides everything I need. But... It would be nice if you could put in a good word for me. Perhaps by going to the dungeon altar and placing yourself upon it while thinking of me. ".
To compute unique completion of (E - dungeon-altar-errand) for (P - a person):
	now the altar-used of E is 0;
	say "[BigNameDesc of P] gives you a friendly rub on your head.[line break][speech style of P]'Thanks so much for your prayer. [one of]I'm getting a bigger room when I get back upstairs, and also the big G has agreed that once you arrive in the afterlife, you'll spend the first hundred thousand years in my room as my live-in fuckpuppet! How generous is that?! Huh? What's that face for?'[or]The big G has extended your afterlife fuckpuppet duty by an additional million years, and now I'm going to be allowed to invite friends to use you too! How awesome is that?!'[or]The big G has added another [one of]billion[or]trillion[or]quadrillion[or]googol[or]googleplex[stopping] years to your time with me in the afterlife as my fuckpuppet. We're going to have such a great time together!'[stopping][roman type][line break]".

theft-errand is an errand.
Definition: theft-errand is appropriate:
	if there is a stolen thing, decide no;
	decide yes.
Definition: theft-errand is completed:
	if there is a held stolen thing, decide yes;
	decide no.
To decide which number is the errand-weight of (E - theft-errand) for (P - a kitsune):
	decide on 10.
To say ErrandFlav of (E - theft-errand) for (P - a person):
	say "I want you to be brave and bold, and do something naughty. Steal something from the shop in the dungeon, and bring it here to prove it. ".
To compute unique completion of (E - theft-errand) for (P - a person):
	let ST be a random held stolen thing;
	say "You show [NameDesc of ST] to [NameDesc of P].[line break][speech style of P]'Hehe, good job! Now we're partners in crime!'[roman type][line break]".

abc-shortalls-errand is an errand.
Definition: abc-shortalls-errand is appropriate:
	if the number of worn diapers is 0, decide no;
	if ABC shortalls is on-stage, decide no;
	if there is a worn usually unautoremovable dress, decide no;
	if there is a worn usually unautoremovable trousers, decide no;
	if there is a worn usually unautoremovable skirt, decide no;
	if there is an off-stage specific-key and ABC shortalls is unclash summonable, decide yes;
	decide no.
To decide which number is the errand-weight of (E - abc-shortalls-errand) for (P - matron):
	decide on 10.
To say ErrandFlav of (E - abc-shortalls-errand) for (P - a person):
	say "I have this adorable new pair of shortalls I've been looking to try out on someone. I think it would fit you perfectly. So, the deal is: Be a good little munchkin and let me lock you in these shortalls. ".
To compute instant effect of (E - abc-shortalls-errand) for (P - a person):
	say "Allow [NameDesc of P] to lock you in childish shortalls?";
	if the player is bimbo consenting:
		let D be a random worn overdress;
		let U be a random worn underdress;
		let T be a random worn trousers;
		let S be a random worn skirt;
		say "You nod your consent[if D is a thing]. You remove your [ShortDesc of D][end if][if T is a thing]. You remove your [ShortDesc of T][end if][if S is a thing]. You remove your [ShortDesc of S][end if][if U is a thing]. You remove your [ShortDesc of U][end if]. [BigNameDesc of P] picks up the shortalls and flings them at you.";
		unclash class summon ABC shortalls;
		let K be a random off-stage specific-key;
		compute P locking ABC shortalls with K;
		compute errand reward of E for P;
		now the current-errand of P is no-errand;
	otherwise:
		say "[variable custom style]'Err, thank you, but no thanks.'[line break][speech style of P]'Hmm. I'm disappointed.'[roman type][line break][BigNameDesc of P] folds [his of P] arms and frowns.";
		now the current-errand of P is rejected-errand;
	now the current-reward of P is no-reward.

To say LockDeclarationFlav of (M - matron) for (C - ABC shortalls):
	say "".
To say LockCommentFlav of (M - matron) for (C - ABC shortalls):
	say "[speech style of M]'Oh it's so perfect on you! And I love that you can't take it off without my permission. I guess you'll need to come to me for your diaper changes from now on, hmm?'[roman type][line break]".

robochef-reboot-errand is an errand.
Definition: robochef-reboot-errand is appropriate:
	if robochef is alive and the raw difficulty of robochef is the starting difficulty of robochef, decide yes;
	decide no.
Definition: robochef-reboot-errand is completed:
	if robochef is awake, decide yes;
	decide no.
To decide which number is the errand-weight of (E - robochef-reboot-errand) for (P - mechanic):
	decide on 10.
To say ErrandFlav of (E - robochef-reboot-errand) for (P - a person):
	say "My tablet just informed me that my robot chef has encountered an error and needs a manual reboot. If you can find it, it just needs both of its eyes touched at the same time for five seconds. Just make sure you do it for exactly five seconds. ".
To set up (E - robochef-reboot-errand):
	now the sleep of robochef is 999999.
To compute unique completion of (E - robochef-reboot-errand) for (P - a person):
	say "[speech style of P]'Oh hey, thanks, I can see here that the robochef is back up and running.'[roman type][line break]".
To compute annoyed awakening of (M - robochef):
	say "You try to make sure that you hold its eyes for five seconds exactly. 5... 4... 3... 2... 1.[line break][speech style of M]'STANDBY, REBOOTING... REBOOTING COMPLETED. HOLD TIME: ";
	now seconds is 5;
	now the sleep of M is 0;
	if the player is getting lucky:
		say "5.0 SECONDS EXACTLY. ACTIVATING STANDARD CHEF MODE.'[roman type][line break]Looks like you did it properly! [GotLuckyFlav]";
		progress quest of poking-quest;
	otherwise:
		let DX be a random number between 1 and 6;
		say "5.[DX] SECONDS. ACTIVATING ENHANCED COMBAT MODE.'[roman type][line break]Its eyes turn red, and significantly increase in brightness. Uhhhh, that doesn't seem good...";
		increase the raw difficulty of M by DX;
		progress quest of poking-quest;
		now M is interested;
		anger M.

mystical-amulet-errand is an errand.
Definition: mystical-amulet-errand is appropriate:
	if there is a worn steel collar or the class of the player is succubus, decide no;
	if mystical amulet is on-stage and mystical amulet is not held by mechanic, decide yes;
	decide no.
Definition: mystical-amulet-errand is completed:
	if mystical amulet is held, decide yes;
	decide no.
To decide which number is the errand-weight of (E - mystical-amulet-errand) for (P - mechanic):
	decide on 4.
To say ErrandFlav of (E - mystical-amulet-errand) for (P - a person):
	say "There's an amulet somewhere in this world, maybe you've encountered it already. Last I heard it was being guarded by a large monster. I want you to retrieve it for me. ".
To compute completion of (E - mystical-amulet-errand) for (P - mechanic):
	say "[speech style of P]'The amulet! [if mystical amulet is currently-in-bag]I can sense that you have it! [end if]Give it to me at once!'[roman type][line break]Give [NameDesc of mystical amulet] to [NameDesc of P]?";
	if the player is consenting:
		follow the mechanic claims amulet rule;
		if P is alive:
			now the current-errand of P is no-errand;
			compute errand reward of E for P;
	otherwise:
		anger P;
		now P is interested;
		say "[speech style of P]'You will regret your insolence!'[roman type][line break]";
		now the current-errand of P is no-errand;
		now the current-reward of P is no-reward.

cock-candle-errand is an errand.
Definition: cock-candle-errand is appropriate:
	if cock candle is on-stage and cock candle is not carried, decide yes;
	decide no.
Definition: cock-candle-errand is completed:
	if cock candle is carried, decide yes;
	decide no.
To decide which number is the errand-weight of (E - cock-candle-errand) for (P - dominatrix):
	decide on 10.
To decide which number is the errand-value of (E - cock candle) for (P - a person):
	if the current-errand of P is cock-candle-errand, decide on 1;
	decide on 0.
To say ErrandFlav of (E - cock-candle-errand) for (P - a person):
	say "I've heard legends of magic candles that never extinguish. Such an artefact would be excellent for my wax play. Think you can find one for me? ".
To compute unique completion of (E - cock-candle-errand) for (P - a person):
	say "[speech style of P]'Unbelievable, you actually found one!'[roman type][line break][BigNameDesc of P] happily takes [NameDesc of cock candle] from you.";
	now cock candle is carried by P.

special-delivery-errand is an errand.
Definition: special-delivery-errand is appropriate:
	if golden-phallus is off-stage and shopkeeper is alive and shopkeeper is undefeated and ex-princess is not in the location of shopkeeper, decide yes;
	decide no.
Definition: special-delivery-errand is completed:
	if golden-phallus is carried, decide yes;
	decide no.
To decide which number is the errand-weight of (E - special-delivery-errand) for (P - ex-princess):
	if P is unconcerned, decide on 10;
	decide on 0.
To decide which number is the errand-value of (E - golden-phallus) for (P - a person):
	if the current-errand of P is special-delivery-errand, decide on 1;
	decide on 0.
To say ErrandFlav of (E - special-delivery-errand) for (P - a person):
	say "Sure, I'd be more than happy to. But first, I have something to ask of you... I ordered a special item to be delivered to the shop, for me to collect, but I'm currently in some minor legal disputes with the shopkeeper and I'm not supposed to talk to [him of shopkeeper] without our lawyers present. Could you be a doll and go collect it for me? It should be, erm, [bold type]long, hard, and made of gold, and on the floor of the Dungeon Shop.[speech style of P] ".
To set up (E - special-delivery-errand):
	now golden-phallus is in Dungeon41;
	now the size of golden-phallus is 3;
	if the player is getting unlucky:
		now golden-phallus is cursed;
		now golden-phallus is expansion;
	otherwise if the player is getting lucky:
		now golden-phallus is blessed;
		now golden-phallus is refreshment;
	otherwise:
		now golden-phallus is bland.
Report taking golden-phallus:
	if the current-errand of ex-princess is special-delivery-errand and shopkeeper is in the location of the player and shopkeeper is awake and shopkeeper is undefeated and shopkeeper is interested:
		if the player is able to speak, say "[variable custom style]'I'm collecting this for the Princess.'[roman type][line break]You explain to [NameDesc of shopkeeper], who nods pleasantly.";
		say "[speech style of shopkeeper]'Tell that money-grubbing, rent-hiking bitch that I hope [he of ex-princess] enjoys [his of ex-princess] new toy.'[roman type][line break]".
To compute unique completion of (E - special-delivery-errand) for (P - a person):
	say "You give [NameDesc of golden-phallus] to [NameDesc of P].[line break][speech style of P]'You're the best. Thank you so much, [NameBimbo].'[roman type][line break]";
	now golden-phallus is carried by P.

new-battery-errand is an errand.
Definition: new-battery-errand is appropriate:
	if spare-battery is off-stage, decide yes;
	decide no.
Definition: new-battery-errand is completed:
	if spare-battery is carried, decide yes;
	decide no.
To decide which number is the errand-weight of (E - new-battery-errand) for (P - a robot):
	decide on 10.
To decide which number is the errand-value of (E - spare-battery) for (P - a person):
	if the current-errand of P is new-battery-errand, decide on 1;
	decide on 0.
To decide which number is the errand-desire of (E - spare-battery) for (P - a person):
	decide on 100.
To say ErrandFlav of (E - new-battery-errand) for (P - a person):
	say "BATTERY LEVELS LOW. REQUESTED ITEM: SPARE BATTERY. LOCATION: UNKNOWN. ".
To set up (E - new-battery-errand):
	now spare-battery is in a random placed modern room;
	while spare-battery is nearby:
		now spare-battery is in a random placed modern room.
To compute unique completion of (E - new-battery-errand) for (P - a person):
	say "You give [NameDesc of spare-battery] to [NameDesc of P].[line break][speech style of P]'ANALYZING... SPARE BATTERY DETECTED. APPROPRIATE REWARD DISPENSION LOADING...'[roman type][line break]";
	now spare-battery is carried by P.
To say RequestAssign of (M - a robot):
	let E be the current-errand of M;
	say "[speech style of M]'[ErrandFlav of E for M]ERRAND ASSIGNATION COMPLETE.'[roman type][line break]".
To say RequestRejection of (M - a robot):
	say "[speech style of M]'ERROR: LIST OF ACCEPTABLE EXCHANGES IS EMPTY. CANNOT PRINT ITEM FROM EMPTY LIST.'[roman type][line break]".
To say RequestDuplicationRejection of (M - a robot):
	say "[speech style of M]'ERROR: REQUEST ALREADY LIVE. [ErrandFlav of M]ERRAND REPETITION COMPLETE.'[roman type][line break]".

chef-cookie-errand is an errand.
Definition: chef-cookie-errand is appropriate:
	if diaper quest is 0 and cookie is off-stage and vampiress is alive, decide yes;
	decide no.
Definition: chef-cookie-errand is completed:
	if cookie is carried by vampiress, decide yes;
	decide no.
To decide which number is the errand-weight of (E - chef-cookie-errand) for (P - robochef):
	decide on 25.
To decide which number is the bartering value of of (E - cookie) for (P - vampiress):
	if the quality of E <= -3 and the current-errand of robochef is chef-cookie-errand, decide on 10;
	decide on 0.
To say MonsterOfferAcceptFlav of (M - vampiress) to (T - cookie):
	say "[speech style of M]'Oh how wonderful! I'd forgotten I'd ordered this. Thank you for bringing it to me safely!'[roman type][line break]".
To compute offer reward of (M - vampiress) for (T - cookie):
	if M is in the location of the player and the player is able to eat:
		say "[speech style of M]'Would you like a bite?'[roman type][line break][BigNameDesc of vampiress] offers the cookie to you.";
		if the player is bimbo consenting:
			say "You shrug, and take a bite.";
			StomachFoodUp 1;
			if the player is getting unlucky:
				say "You start feeling a bit woozy as the food settles in your stomach, and you realise that there's some seriously unusual chemicals in this cookie. You feel your [asshole] tingling with enthusiastic sensitivity! [GotUnluckyFlav]";
				AnalSexAddictUp 3;
			otherwise:
				say "You feel great! You're fully healed, and you feel stronger, faster and smarter!";
				BodyHeal 10;
				StrengthUp 1;
				DexUp 1;
				IntUp 1;
				AnalSexAddictUp 1.
To say ErrandFlav of (E - chef-cookie-errand) for (P - a person):
	say "DELIVERY COURIER REQUIRED. DELIVERY ADDRESS: HAUNTED MANSION. CUSTOMER ENTITY: VAMPIRESS. ".
To compute instant effect of (E - chef-cookie-errand) for (P - a person):
	now the quality of cookie is -3;
	now the fat of cookie is 3;
	say "[BigNameDesc of robochef] takes a rather lewdly decorated cookie out of [his of robochef] compartment and places it on the ground in front of you.";
	now cookie is in the location of the player;
	compute autotaking cookie.
To compute unique completion of (E - chef-cookie-errand) for (P - a person):
	say "[speech style of P]'CUSTOMER REPORTED SUCCESSFUL DELIVERY. APPROPRIATE REWARD DISPENSION LOADING...'[roman type][line break]".

vampiress-cookie-errand is an errand.
Definition: vampiress-cookie-errand is appropriate:
	if diaper quest is 0 and cookie is held by vampiress and the current-errand of robochef is not chef-cookie-errand, decide yes;
	decide no.
Definition: vampiress-cookie-errand is completed:
	if cookie is carried and cookie is cookie-sliced, decide yes;
	decide no.
To decide which number is the errand-weight of (E - vampiress-cookie-errand) for (P - vampiress):
	decide on 25.
To decide which number is the errand-value of (E - cookie) for (P - vampiress):
	if E is cookie-sliced and the current-errand of P is vampiress-cookie-errand, decide on 1;
	decide on 0.
To say ErrandFlav of (E - vampiress-cookie-errand) for (P - a person):
	say "I want this lovely cookie neatly cut into slices, but I don't have a blade. ".
To compute instant effect of (E - vampiress-cookie-errand) for (P - a person):
	now the quality of cookie is -3;
	now the fat of cookie is 3;
	say "[BigNameDesc of vampiress] takes [his of P] lewdly decorated cookie and places it on the ground in front of you.";
	now cookie is in the location of the player;
	compute autotaking cookie.
To compute unique completion of (E - vampiress-cookie-errand) for (P - a person):
	say "[speech style of P]'That cookie is perfectly sliced! Thank you so much.'[roman type][line break]";
	compute offer reward of P for cookie.

pimp-delivery-errand is an errand.
Definition: pimp-delivery-errand is appropriate:
	if slave collar is off-stage and pimp is alive, decide yes;
	decide no.
Definition: pimp-delivery-errand is completed:
	if slave collar is carried by pimp, decide yes;
	decide no.
To decide which number is the errand-weight of (E - pimp-delivery-errand) for (P - shopkeeper):
	decide on 20.
To decide which number is the errand-value of (E - slave collar) for (P - a person):
	if P is pimp and the current-errand of shopkeeper is pimp-delivery-errand, decide on 1;
	decide on 0.
To say ErrandFlav of (E - pimp-delivery-errand) for (P - a person):
	say "Hey yeah, the pimp in the hotel wants this delivered to [him of pimp], but obviously I can't leave my shop. Could you please take care of the delivery? ".
To compute instant effect of (E - pimp-delivery-errand) for (P - a person):
	now slave collar is carried by the player;
	now slave collar is cursed;
	compute quest of slave collar;
	say "[BigNameDesc of P] hands you a [slave collar].".
To compute special collar delivery:
	say "[BigNameDesc of pimp] happily takes [NameDesc of slave collar] from you.[line break][speech style of pimp]'Thanks a lot! ";
	if pimp is normally buddy or slave collar is not actually summonable:
		say "I can't wait to find the right whore to lock this on.'[roman type][line break]";
		now slave collar is carried by pimp;
	otherwise:
		say "This is especially convenient because I have a deserving whore right here!'[roman type][line break][BigNameDesc of pimp] makes a leap for your neck as quick as lightning... And before you can react, [he of pimp] has managed to close [NameDesc of slave collar] around it!";
		summon slave collar cursed with quest;
		say "[speech style of pimp]'Couldn't have planned that better if I'd tried!'[roman type][line break][BigNameDesc of pimp] declares proudly.".
To compute unique completion of (E - pimp-delivery-errand) for (P - a person):
	say "[BigNameDesc of P] gives you a thumbs up.[line break][speech style of P]'I heard from the pimp that [he of pimp] got [his of pimp] delivery. Great job!'[roman type][line break]".

mechanic-delivery-errand is an errand.
Definition: mechanic-delivery-errand is appropriate:
	if love-letters is off-stage and mechanic is alive, decide yes;
	decide no.
Definition: mechanic-delivery-errand is completed:
	if love-letters is carried by mechanic, decide yes;
	if love-letters is carried by demon lord, decide yes;
	decide no.
To decide which number is the errand-weight of (E - mechanic-delivery-errand) for (P - unicorn):
	decide on 10.
To decide which number is the errand-value of (E - love-letters) for (P - a person):
	if the current-errand of unicorn is mechanic-delivery-errand and (P is mechanic or P is demon lord), decide on 1;
	decide on 0.
To say ErrandFlav of (E - mechanic-delivery-errand) for (P - a person):
	say "The mechanic in the hotel has told me I have to keep a low profile, and hide the fact that we're together... But I can't stop desperately wanting to tell [him of mechanic] how much I love [him of mechanic]! Could you please send these to [him of mechanic]? [big he of mechanic][']ll know who they're from. ".
To compute instant effect of (E - mechanic-delivery-errand) for (P - a person):
	now love-letters is carried by the player;
	say "[BigNameDesc of P] hands you a large stack of [love-letters].".
To compute special letter delivery:
	let M be mechanic;
	if demon lord is alive, now M is demon lord;
	say "[BigNameDesc of M] grumbles as [he of M] takes [NameDesc of love-letters] from you.[line break][speech style of M]'More letters! What am I going to do with that crazy nympho of mine...'[roman type][line break]".
To compute unique completion of (E - mechanic-delivery-errand) for (P - a person):
	say "[BigNameDesc of P] gives you a hug.[line break][speech style of P]'Thanks for delivering those letters. Have you got a reply for me? Not yet? Hmmmm... Well, I'm sure [he of mechanic][']ll have one to send back to me soon!'[roman type][line break]".

wench-cup-errand is an errand.
Definition: wench-cup-errand is appropriate:
	if there is an alive undefeated wench, decide yes;
	decide no.
Definition: wench-cup-errand is completed:
	repeat with B running through carried bottles:
		if the fill-colour of B is creamy and there is a wench inseminating B, decide yes;
	decide no.
To decide which number is the errand-weight of (E - wench-cup-errand) for (P - vampiress):
	decide on 10.
To decide which number is the errand-value of (B - a bottle) for (P - a person):
	if B is empty, decide on 0;
	if the current-errand of P is wench-cup-errand:
		if the fill-colour of B is creamy and there is a wench inseminating B, decide on 1;
	if the current-errand of P is milk-cup-errand:
		if the fill-colour of B is white, decide on 1;
	if the current-errand of P is energy-cup-errand:
		if the fill-type of B is 3, decide on 1;
	decide on 0.
To say ErrandFlav of (E - wench-cup-errand) for (P - a person):
	let M be a random wench;
	say "There was this slut who came here briefly once, with the most delicious semen inside [his of M] [if a2m fetish > 0 or M is presenting as male]ass[otherwise]pussy[end if]. But I think I scared [him of M] away, because [he of M] never came back. Maybe you've met [him of M]? Bleach blonde hair, blouse caked in cum? Well, I want you to find [him of M] and a cup of the cum from [his of M] [if a2m fetish > 0 or M is presenting as male]asshole[otherwise]coochie[end if]. ".
To compute unique completion of (E - wench-cup-errand) for (P - a person):
	let BO be a random carried bottle;
	repeat with B running through carried non-empty bottles:
		if the fill-colour of B is creamy and there is a wench inseminating B, now BO is B;
	say "You present [NameDesc of BO] to [NameDesc of P].[line break][speech style of P]'Don't tell me... You got some?!'[roman type][line break][BigNameDesc of P] brings [NameDesc of BO] to [his of P] lips, and has a taste.[line break][speech style of P]'This is it! This is that delicious cum I've dreamed of tasting again!'[roman type][line break][big he of P] swings [NameDesc of BO] back and downs the rest of the thick creamy [']drink['], ";
	DoseEmpty BO;
	say "and then hands [NameDesc of BO] back to you.".

wench-protection-errand is an errand. wench-protection-errand has a number called protected.
Definition: wench-protection-errand is appropriate:
	if playerRegion is not Dungeon, decide no;
	if the protected of wench-protection-errand is not 0, decide no;
	if there is an alive undefeated interested royal guard, decide no;
	if there is an alive undefeated uninterested royal guard, decide yes;
	decide no.
Definition: wench-protection-errand is completed:
	if the protected of wench-protection-errand is 1, decide yes;
	decide no.
To decide which number is the errand-weight of (E - wench-protection-errand) for (P - wench):
	decide on 10.
To decide which number is the errand-weight of (E - wench-protection-errand) for (P - an adult baby slave):
	decide on 10.
To decide which number is the errand-desire of (E - wench-protection-errand) for (P - a person):
	decide on 100.
To say ErrandFlav of (E - wench-protection-errand) for (P - a person):
	say "Um, I can't think of anything... No, wait! Yes! Protect me from [him of prison guard]!".
To compute instant effect of (E - wench-protection-errand) for (P - a person):
	let M be a random alive undefeated royal guard;
	now M is in the location of the player;
	now M is interested;
	now the sleep of M is 0;
	say "[BigNameDesc of M] has just entered the room![line break][speech style of M]'You, wench! It's time for your next punishment! Behold, the long [if diaper quest is 1]spanking paddle[otherwise]cock[end if] of the law!'[roman type][line break]Do you stand in front of [NameDesc of P] and protect [him of P]?";
	if the player is consenting:
		say "You put yourself between [NameDesc of M] and [his of M] target, making yourself the new target.[line break][speech style of M]'You want a taste of the law too?!'[roman type][line break]";
		anger M;
		now the protected of E is 1;
	otherwise:
		say "You timidly stand aside and let [NameDesc of M] fulfil [his of M] [']legal obligations['].[line break][speech style of P]'Goddammit! I'll remember this, [NameBimbo]!'[roman type][line break]That's all [he of P] manages to say before [if diaper quest is 0][his of P] mouth is filled with [NameDesc of M][']s [manly-penis]. After that, the only sounds [he of P] makes are gagging sounds, as [NameDesc of M][']s [manly-penis] repeatedly strikes the back of [his of P] throat... And then gargling sounds as [NameDesc of M] shoots [his of M] load down [NameDesc of P][']s gullet. [NameDesc of P] is left choking[otherwise][NameDesc of M][']s spanking paddle connects with [his of P] butt. After that, the only sounds [he of P] makes are yelping and wailing sounds, as [NameDesc of M][']s paddle repeatedly strikes [his of P] tender bottom through [his of P] padding. [NameDesc of P] is left sobbing[end if] and exhausted on the ground, and [he of P] eventually slowly crawls away.[line break][speech style of M]'Good choice, citizen.'[roman type][line break][BigNameDesc of M] nods in your direction.";
		anger P;
		bore P;
		regionally place P;
		satisfy M;
		now the protected of E is -1.
To compute unique completion of (E - wench-protection-errand) for (P - a person):
	say "[speech style of P]'Thank you for saving me back there!'[roman type][line break]".

human-urinal-errand is an errand.
Definition: human-urinal-errand is appropriate:
	if watersports fetish is 1 and face is not actually occupied, decide yes;
	decide no.
To decide which number is the errand-weight of (E - human-urinal-errand) for (P - a wrestler):
	decide on 10.
To decide which number is the errand-weight of (E - human-urinal-errand) for (P - a demoness):
	decide on 2.
To decide which number is the errand-weight of (E - human-urinal-errand) for (P - kitsune):
	decide on 2.
To say ErrandFlav of (E - human-urinal-errand) for (P - a person):
	say "Well, I really need to piss right now! Fancy being my urinal? ".
To compute instant effect of (E - human-urinal-errand) for (P - a person):
	say "Do you [if the player is upright]get on your knees in front of [NameDesc of P] and [end if]let [him of P] use you as a human urinal?";
	if the player is bimbo consenting:
		if the player is upright:
			now auto is 1;
			try kneeling;
			now auto is 0;
		say "You obediently open your mouth, and [NameDesc of P] steps up so that [his of P] crotch is in your face. [big he of P] [if P is a wrestler]unzips the crotch of [his of P] catsuit, and [end if]sighs pleasantly as [he of P] lets loose.";
		FacePiss from P;
		compute errand reward of E for P;
		now the current-errand of P is no-errand;
	otherwise:
		say "[variable custom style]'I'd really rather you didn't.'[line break][speech style of P]'[if P is demoness]You disappoint me, mortal! You have yet to learn your place! I am done with you, then.'[roman type][line break][BigNameDesc of P] seems offended.[otherwise]You want me to do things for you, but you won't even drink my piss?! What sort of friend are you?!'[roman type][line break][BigNameDesc of P] sounds hurt.[end if]";
		now the current-errand of P is rejected-errand;
	now the current-reward of P is no-reward.

cum-kiss-errand is an errand.
Definition: cum-kiss-errand is appropriate: decide yes.
Definition: cum-kiss-errand is completed:
	if face is not actually occupied:
		if diaper quest is 1 and the milk volume of face > 0, decide yes;
		if diaper quest is 0 and the semen volume of face > 0, decide yes;
	decide no.
To decide which number is the errand-weight of (E - cum-kiss-errand) for (P - a wrestler):
	decide on 3.
To decide which number is the errand-value of (E - face) for (P - a person):
	if the current-errand of P is cum-kiss-errand and cum-kiss-errand is completed, decide on 1;
	decide on 0.
To say ErrandFlav of (E - cum-kiss-errand) for (P - a person):
	say "Hmm... I want you to get a lovely amount of [if diaper quest is 1]milk[otherwise]cum[end if] in your mouth... And then give me a kiss. ".
To compute unique completion of (E - cum-kiss-errand) for (P - a person):
	say "You move your face close to [NameDesc of P][']s and [he of P] opens [his of P] mouth, clearly ready and willing. You lock lips in a nasty, sloppy wet kiss, and then [NameDesc of P] uses [his of P] tongue to lap the thick white [if diaper quest is 1][milk][otherwise]cock snot[end if] from yours. It's noisy, wet and nasty, but soon enough, [NameDesc of P] has finished receiving your [']snowball['], and merrily gulps it down. [big he of P] sighs dreamily.[line break][speech style of P]'That was perfect.'[roman type][line break]";
	MouthEmpty.

milk-cup-errand is an errand.
Definition: milk-cup-errand is appropriate:
	if lactation fetish is 1, decide yes;
	decide no.
Definition: milk-cup-errand is completed:
	repeat with B running through carried non-empty bottles:
		if the fill-colour of B is white, decide yes;
	decide no.
To decide which number is the errand-weight of (E - milk-cup-errand) for (P - a royal guard):
	decide on 3.
To decide which number is the errand-weight of (E - milk-cup-errand) for (P - a gladiator):
	decide on 3.
To decide which number is the errand-weight of (E - milk-cup-errand) for (P - an acolyte):
	decide on 3.
To decide which number is the errand-weight of (E - milk-cup-errand) for (P - a monster):
	if P is human and P is intelligent, decide on 1;
	decide on 0.
To decide which number is the errand-desire of (E - milk-cup-errand) for (P - a person):
	if P is royal guard, decide on 8;
	if P is gladiator or P is acolyte, decide on 6;
	decide on 4.
To say ErrandFlav of (E - milk-cup-errand) for (P - a person):
	say "I fancy a drink of milk... from a cup. ".
To say ErrandFlav of (E - milk-cup-errand) for (P - a royal guard):
	say "Mother always told me that milk is good for my muscles and bones... And having been stuck down here for so long, I've really struggled to keep it in my diet. So what I want is a drink of milk. Is that something you think you could get for me? ".
To compute unique completion of (E - milk-cup-errand) for (P - a person):
	let BO be a random carried bottle; [Selkie thinks: it would be very hot, and maybe humilaiting, that if your breasts currently contain a lot of milk, and aren't locked away, you could offer to let them suckle from you directly here, instead. Perhaps with a joke about "straight from the source, eh?" and going above and beyond the call of duty?
	Aika: Maybe, but it'd be a little more complicated than it sounds, because most NPCs are supposed to not actually be into breast feeding, but rather just want some milk. And then not know where the player got it from. So it'd have to be specific NPCs only that could do this.]
	repeat with B running through carried non-empty bottles:
		if the fill-colour of B is white, now BO is B;
	say "You present [NameDesc of BO] to [NameDesc of P].[line break][speech style of P]'[if P is royal guard]Oh, excellent. Just what the doctor ordered[otherwise]Excellent[end if]!'[roman type][line break][BigNameDesc of P] brings [NameDesc of BO] to [his of P] lips, and takes a sip.[line break][speech style of P]'[if P is royal guard]Hmm, this tastes... unique! Sweeter than I'm used to. What sort of special diet was this cow on, I wonder[otherwise]Nothing else tastes quite like human breast milk[end if].'[roman type][line break][big he of P] swings [NameDesc of BO] back and downs the rest of your thick creamy drink, ";
	DoseEmpty BO;
	say "and then hands [NameDesc of BO] back to you.".

energy-cup-errand is an errand.
Definition: energy-cup-errand is appropriate: decide yes.
Definition: energy-cup-errand is completed:
	repeat with B running through carried non-empty bottles:
		if diaper quest is 0 and the fill-type of B is 3, decide yes;
		if diaper quest is 1 and the fill-colour of B is white, decide yes;
	decide no.
To decide which number is the errand-weight of (E - energy-cup-errand) for (P - a student):
	decide on 9999999.
To decide which number is the errand-desire of (E - energy-cup-errand) for (P - a person):
	decide on 100.
To say ErrandFlav of (E - energy-cup-errand) for (P - a person):
	say "Okay. But first, I want [if diaper quest is 1]a drink of milk[otherwise]an energy drink[end if]. You know, from the vending machine in the food hall... ".
To compute unique completion of (E - energy-cup-errand) for (P - a person):
	let BO be a random carried bottle;
	repeat with B running through carried non-empty bottles:
		if diaper quest is 0 and the fill-type of B is 3, now BO is B;
		if diaper quest is 1 and the fill-colour of B is white, now BO is B;
	say "You present [NameDesc of BO] to [NameDesc of P].[line break][speech style of P]'Cheers.'[roman type][line break][BigNameDesc of P] brings [NameDesc of BO] to [his of P] lips, and takes a sip.[line break][speech style of P]'I feel better already!'[roman type][line break][big he of P] ";
	if BO is can:
		destroy BO;
		say "discards the empty can.";
	otherwise:
		DoseDown BO;
		say "hands [NameDesc of BO] back to you.".

chastity-errand is an errand.
Definition: chastity-errand is appropriate:
	if bondage protection is 2, decide no;
	if there is a worn chastity bond, decide no;
	if vagina is actually occupied, decide no;
	if there is pussy covering actually unavoidable clothing, decide no;
	if the player is not possessing a vagina and the player is not possessing a penis, decide no;
	if there is an off-stage specific-key, decide yes;
	decide no.
To decide which number is the errand-weight of (E - chastity-errand) for (P - dominatrix):
	decide on 10.
To decide which number is the errand-weight of (E - chastity-errand) for (P - matron):
	decide on 10.
To decide which number is the errand-desire of (E - chastity-errand) for (P - a person):
	decide on 20.
To say ErrandFlav of (E - chastity-errand) for (P - a person):
	say "I have a fun idea I thought we could try out... I want you to wear this chastity device for me. Just for a while... You'll be able to get the key back soon, I promise! It'll be like a fun kinky scavenger hunt. ".
To compute instant effect of (E - chastity-errand) for (P - a person):
	let C be a random off-stage fetish appropriate chastity cage;
	if the player is possessing a vagina,	now C is chastity-belt;
	if C is nothing, now C is a random fetish appropriate chastity cage;
	say "As soon as you have nodded your assent, [NameDesc of P] is excitedly fitting [NameDesc of C] to your [if C is chastity-belt]loins[otherwise][player-penis][end if]. After [he of P] has locked it on, [he of P] explains where the key is.";
	let K be a random off-stage specific-key;
	summon C locked;
	now K is covering C;
	if a random number between 1 and 2 is 1:
		say "[speech style of P]'I've left the key in a random bedroom in this Hotel. Or was it in the Mansion? I forget. Tee-hee! What? I told you, it's a scavenger hunt!'[roman type][line break]";
		if the player is getting lucky:
			now K is in a random placed guest modern room;
		otherwise:
			now K is in Mansion16;
	otherwise:
		let M be eager patron;
		if diaper quest is 1, now M is suited patron;
		say "[speech style of P]'I've left the key with a regular customer of the [']Brothel Beds['] here. Tee-hee! What? I told you, it's a scavenger hunt!'[roman type][line break]";
		now M is carrying K;
		add K to the taxableItems of M;
		add K to the tradableItems of M.


wisp-errand is an errand.
Definition: wisp-errand is appropriate: decide yes.
To decide which number is the errand-desire of (E - wisp-errand) for (P - a person):
	decide on 100.
Definition: wisp-errand is completed:
	if the number of stalking wisps is 0, decide yes;
	decide no.
To decide which number is the errand-weight of (E - wisp-errand) for (P - an acolyte):
	decide on 8.
To decide which number is the errand-weight of (E - wisp-errand) for (P - witch):
	decide on 4.
To decide which number is the errand-weight of (E - wisp-errand) for (P - a wench):
	decide on 4.
To decide which number is the errand-weight of (E - wisp-errand) for (P - djinn):
	decide on 6.
To decide which number is the errand-weight of (E - wisp-errand) for (P - a gladiator):
	decide on 2.
To decide which number is the errand-weight of (E - wisp-errand) for (P - a royal guard):
	decide on 2.
To decide which number is the errand-weight of (E - wisp-errand) for (P - a person):
	if P is robot or P is student, decide on 0;
	decide on 1.
To say ErrandFlav of (E - wisp-errand) for (P - a person):
	say "[if the errand-weight of E for P > 1]You have debts to other entities that are as of yet unpaid. Fulfill your promises to them, and then return to me, and I will consider your price paid. [otherwise]Some freaky-ass ghosts came to me in a vision just a minute ago, and told me you were going to ask that! They also said I have to do as you ask, after you've played their [']game[']. I don't know what that means, but I'm not going to argue with an evil spirit! Come back to me when you've not got any evil spirits floating around you. [end if]".
To say ErrandFlav of (E - wisp-errand) for (P - a wench):
	say "Um, there's some spooky things following you around... Please make them go away... ".
To say ErrandFlav of (E - wisp-errand) for (P - an adult baby slave):
	say "Um, dere's some spooky fings followin['] you aroun[']... Please make dem go away... ".
To compute instant effect of (E - wisp-errand) for (P - a person):
	while the number of stalking wisps < 2:
		notice a wisp.
To compute unique completion of (E - wisp-errand) for (P - a person):
	say "[BigNameDesc of P] nods.[line break][speech style of P]'[if the errand-weight of E for P > 1]The spirits that were following you seem settled. This is good[otherwise]I'm glad you were able to get those spirits to leave you alone[end if].'[roman type][line break]".
To compute unique completion of (E - wisp-errand) for (P - a wench):
	say "[BigNameDesc of P] sigh with relief.[line break][speech style of P]'Those spooky things don't seem to be flying around your head any more. Thank goodness.'[roman type][line break]".
To compute unique completion of (E - wisp-errand) for (P - an adult baby slave):
	say "[BigNameDesc of P] sighs with relief.[line break][speech style of P]'Dose spooky fings don't seem to be flying aroun['] your head no more. Fank goodness!'[roman type][line break]".

soiled-diaper-errand is an errand.
Definition: soiled-diaper-errand is appropriate:
	if diaper messing >= 6 and there is an off-stage soiled-diaper, decide yes;
	decide no.
Definition: soiled-diaper-errand is completed:
	if there is a soiled-diaper in the location of the player or there is a held soiled-diaper, decide no;
	decide yes.
To decide which number is the errand-weight of (E - soiled-diaper-errand) for (P - an adult baby slave):
	decide on 2.
To decide which number is the errand-weight of (E - soiled-diaper-errand) for (P - an acolyte):
	decide on 3.
To decide which number is the errand-weight of (E - soiled-diaper-errand) for (P - a wrestler):
	decide on 4.
To decide which number is the errand-weight of (E - soiled-diaper-errand) for (P - matron):
	decide on 4.
To decide which number is the errand-weight of (E - soiled-diaper-errand) for (P - dominatrix):
	decide on 3.
To decide which number is the errand-weight of (E - soiled-diaper-errand) for (P - shopkeeper):
	decide on 5.
To say ErrandFlav of (E - soiled-diaper-errand) for (P - a person):
	say "Could you take this messy diaper away for me, please? ".
To compute instant effect of (E - soiled-diaper-errand) for (P - a person):
	let SD be a random off-stage soiled-diaper;
	now the diaper-origin of SD is the substituted form of "disposable diaper from [NameDesc of P]";
	now SD is in the location of the player;
	say "[BigNameDesc of P] produces a foul smelling [SD] and drops it on the ground in front of you.[line break][variable custom style]Gross![roman type][line break]".
To compute unique completion of (E - soiled-diaper-errand) for (P - a person):
	say "[BigNameDesc of P] smiles.[line break][speech style of P]'Thank you for getting rid of that for me.'[roman type][line break]".





A requestable is a kind of object.
Definition: a requestable is appropriate: decide no. [Gamestate wise, should this be able to request this right now?]
To decide which number is the requestability of (C - an object): [How 'expensive' is the request?]
	decide on 1.
To decide which number is the requestability of (C - a thing):
	decide on the tradability of C.
To say RequestFlav of (C - a thing):
	say "'Please, is there anything I could do for you to consider giving me your [ShortDesc of C]?'".
To say RequestFlav of (C - an object):
	say "BUG - this requestable object doesn't yet have a request phrase.".
To say RewardFlav of (C - an object):
	say "give you what you want".
To say RewardFlav of (C - a thing):
	say "give you the [ShortDesc of C]".
To say RewardFlav of (P - a person):
	let R be the current-reward of P;
	if R is a person, say "help you out with that";
	otherwise say RewardFlav of R.
To compute errand rewarding of (R - an object) for (P - a person):
	say "BUG - this errand reward doesn't yet have a reward function.".
[basic-item-request is a requestable.
Definition: basic-item-request is appropriate: decide yes.
To say RequestFlav of (C - basic-item-request):
	say "'Is there anything I could do for you in exchange for a useful item?'".
To say RewardFlav of (C - basic-item-request):
	say "give you a little something".]
To compute errand rewarding of (T - a thing) from (P - a person):
	if T is off-stage or T is carried by P:
		say ErrandThanksFlav of T from P;
		if T is unsure clothing and T is unidentified clothing, blandify and reveal T;
		if T is bra, cupsizefix T;
		say "[BigNameDesc of P] produces [NameDesc of T], and places it on the ground in front of you.";
		now T is in the location of P;
		compute autotaking T;
		if P is monster and T is listed in the tradableItems of P, remove T from the tradableItems of P;
	otherwise:
		say "[speech style of P]'That's very kind of you, but I'm afraid I don't have the [ShortDesc of T] in my possession any more. Sorry hun, you snooze, you lose.'[roman type][line break]".
To say ErrandThanksFlav of (T - a thing) from (P - a person):
	say "[speech style of P]'[one of]You're the best[or]I'm seriously grateful[or]I'm so glad you came through for me[or]I'm genuinely appreciative[or]You've earned your reward[in random order]. Here, take this in return, as promised.'[roman type][line break]".

transfer-debt-request is a requestable.
To decide which number is the requestability of (C - transfer-debt-request):
	decide on 15.
Definition: transfer-debt-request is appropriate:
	if the noun is pimp and the satisfy-target of satisfy-pimp-errand is an explorer, decide yes;
	if the noun is pimp and woman-player is partially-enslaved, decide yes;
	decide no.
To say RequestFlav of (C - transfer-debt-request):
	let M be the satisfy-target of satisfy-pimp-errand;
	if M is explorer:
		say "'The [MediumDesc of M] said that [he of M][']s in debt to you... Can we make a deal and have you cancel [his of M] debt?'";
	otherwise:
		say "'[WomanName] appears to be in your debt... Can we make a deal and have you cancel [his of woman-player] debt and remove the portal bra?'".
To say RewardFlav of (C - transfer-debt-request):
	say "cancel the slut's debt".
To compute errand rewarding of (T - transfer-debt-request) from (P - a person):
	say "[speech style of P]'Okay, it's done. That slut is no longer in debt to me.'[roman type][line break][BigNameDesc of P] loses interest in you for now.";
	bore P;
	if the satisfy-target of satisfy-pimp-errand is an explorer:
		now the satisfy-target of satisfy-pimp-errand is pimp;
	otherwise:
		now satisfy-pimp-errand is woman-freed;
		now woman-player is not partially-enslaved;
		if woman-player is in the location of the player:
			say "[BigNameDesc of woman-player][']s portal bra disappears from [his of woman-player] body[if the player is in Hotel44], and [his of woman-player] breasts disappear from the pedestal[end if]!";
		otherwise if the player is in Hotel44:
			say "[BigNameDesc of woman-player][']s breasts disappear from the pedestal!";
			FavourUp woman-player.

sword-removal-request is a requestable.
To decide which number is the requestability of (C - sword-removal-request):
	decide on 5.
Definition: sword-removal-request is appropriate:
	if the noun is gladiator and gladiator-sword is worn and gladiator-sword is unremovable, decide yes;
	decide no.
To say RequestFlav of (C - sword-removal-request):
	say "'Please, I beg you, help me remove the chain binding me to this sword!'".
To say RewardFlav of (C - sword-removal-request):
	say "get the sword to release you".
To compute errand rewarding of (T - sword-removal-request) from (P - a person):
	say "[speech style of P]'Hold your sword hand out to me.'[roman type][line break][BigNameDesc of P] clasps the sword hilt from the other side, so now both your hands are holding it together.[line break][speech style of P]'I accept the burden.'[roman type][line break]You watch with marvel as the magic chain unwraps from around your wrist, and coils around [NameDesc of P][']s instead! [big he of P] is now the one stuck wielding the sword.[line break][speech style of P]'Perhaps when you are a more seasoned warrior, you will want to accept the burden yourself again.'[roman type][line break]";
	now gladiator-sword is carried by P;
	now the burden of gladiator-sword is 0.

be-my-urinal is a requestable.
To decide which number is the requestability of (C - be-my-urinal):
	decide on 3.
Definition: be-my-urinal is appropriate:
	if watersports fetish is 0 or the player is not bursting, decide no;
	if the noun is wrestler or the noun is wench, decide yes;
	if the noun is student and the current-rank of the noun >= 5, decide yes;
	decide no.
To say RequestFlav of (C - be-my-urinal):
	say "'I really need to pee... Would you mind letting me use your mouth?'".
To say RewardFlav of (C - be-my-urinal):
	say "drink your piss".
To compute errand rewarding of (T - be-my-urinal) from (P - a person):
	say "[speech style of P]'So... Do you still need to use the toilet?'[roman type][line break]";
	if the player is bursting:
		let C be a random worn actually unavoidable pee covering clothing;
		if C is clothing:
			say "You shake your head. You actually can't get [NameDesc of C] out of the way. All that for no reward!";
		otherwise if the player is consenting:
			say "You nod your head, and [NameDesc of P] gets on [his of P] knees and opens [his of P] mouth wide. You move your [genitals] close and feed [him of P] with your fresh [urine]! [big he of P] accepts being used as a human toilet without complaint, and swallows every single drop down.";
			moderateDignify;
			now the bladder of the player is 0;
			SportsGet;
		otherwise:
			say "You shake your head, deciding against it for some reason.";
	otherwise:
		say "You shake your head. The need has gone. All that for nothing!".

be-my-diaper is a requestable.
To decide which number is the requestability of (C - be-my-diaper):
	decide on 3.
Definition: be-my-diaper is appropriate:
	if watersports fetish is 0 or the player is not bursting, decide no;
	if the noun is wrestler or the noun is adult baby slave, decide yes;
	if diaper quest is 1 and the noun is student and the current-rank of the noun >= 5, decide yes;
	decide no.
To say RequestFlav of (C - be-my-diaper):
	say "'I really need to pee... Would you mind letting me use your diaper?'".
To say RewardFlav of (C - be-my-diaper):
	say "let you pee in my diaper".
To compute errand rewarding of (T - be-my-diaper) from (P - a person):
	say "[speech style of P]'So... Do you still need to do a wee?'[roman type][line break]";
	if the player is bursting:
		let C be a random worn actually unavoidable pee covering clothing;
		if C is clothing:
			say "You shake your head. You actually can't get [NameDesc of C] out of the way. All that for no reward!";
		otherwise if the player is consenting:
			say "You nod your head, and [NameDesc of P] exposes [his of P] diaper and then pulls the front of the waistband forward, prompting you to guide your [genitals] so your pee will go straight into [his of P] diaper. Which, when you release, it does.[line break][speech style of P]'Hehe, that feels funny... And warm...'[roman type][line break]";
			moderateDignify;
			now the bladder of the player is 0;
		otherwise:
			say "You shake your head, deciding against it for some reason.";
	otherwise:
		say "You shake your head. The need has gone. All that for nothing!".

unlock-my-clothing is a requestable. unlock-my-clothing has an object called the unlock-clothing-target.
To decide which number is the requestability of (C - unlock-my-clothing):
	decide on 6.
Definition: unlock-my-clothing is appropriate:
	if the unlock-clothing-target of unlock-my-clothing is a clothing:
		if the unlock-clothing-target of unlock-my-clothing is worn locked clothing, decide no;
		repeat with P running through people:
			if the current-reward of P is unlock-my-clothing, now the current-reward of P is no-reward;
		now the unlock-clothing-target of unlock-my-clothing is nothing;
	if the noun is generic-unlocker monster:
		repeat with C running through worn locked clothing:
			if bondage protection > 0 or the number of unlock-keys covering C is 0:
				now the unlock-clothing-target of unlock-my-clothing is C;
				decide yes;
	decide no.
To say RequestFlav of (C - unlock-my-clothing):
	say "'Do you have a key that could unlock my [ShortDesc of the unlock-clothing-target of unlock-my-clothing]?'".
To say RewardFlav of (C - unlock-my-clothing):
	say "unlock your [ShortDesc of the unlock-clothing-target of unlock-my-clothing]".
To compute errand rewarding of (T - unlock-my-clothing) from (P - a person):
	let C be the unlock-clothing-target of T;
	if C is worn locked clothing:
		compute P unlocking C;
		say "[speech style of P]'You're welcome.'[roman type][line break]";
	otherwise:
		say "[speech style of P]'So... Do you still need me to unlock [NameDesc of C]?'[roman type][line break]You shake your head. The need has gone. All that for nothing!".

use-your-key is a requestable.
To decide which number is the requestability of (C - use-your-key):
	decide on 5.
Definition: use-your-key is appropriate:
	repeat with K running through specific-keys held by the noun:
		repeat with C running through worn locked clothing:
			if K is covering C, decide yes;
	decide no.
To say RequestFlav of (C - use-your-key):
	say "'Please please please, give me the key!'".
To say RewardFlav of (C - use-your-key):
	say "give you the key".
To compute errand rewarding of (T - use-your-key) from (P - a person):
	repeat with K running through specific-keys held by P:
		say "[BigNameDesc of P] drops [NameDesc of K] on the ground in front of you.";
		if P is monster and K is listed in the tradableItems of P, remove K from the tradableItems of P;
		now K is in the location of the player;
		compute autotaking K.

alliance-reward is a requestable.
To decide which number is the requestability of (C - alliance-reward):
	decide on 5.
Definition: alliance-reward is appropriate: decide no.
To say RequestFlav of (C - alliance-reward):
	say "'BUG, should never appear!'".
To say RewardFlav of (C - alliance-reward):
	say "forever be in your debt".
To compute errand rewarding of (T - alliance-reward) from (P - a person):
	say "[speech style of P]'Oh [NameBimbo], thank you so much, how can I ever repay you?!'[roman type][line break]You feel like you just earned yourself a place in [NameDesc of P][']s good books.";
	if P is a monster, FavourUp P by 3.

To consider (T - talk-request) for (M - a monster):
	if M is intelligent and M is interested and M is undefeated and M is not caged and the player is not in a predicament room and M is friendly:
		now the printed name of T is the substituted form of "Request something from [him of M]...";
		set next numerical response to the substituted form of "[printed name of T]";

To execute (T - talk-request) for (M - a monster):
	reset multiple choice questions;
	now errand-giver is M;
	let LR be a list of objects;
	let N be 0;
	repeat with R running through appropriate requestables:
		if N < 9:
			increase N by 1;
			add R to LR;
			set next numerical response to the substituted form of "[RequestFlav of R]";
	repeat with R running through things carried by M:
		if N < 9 and R is not specific-key: [specific keys have their own requestable object]
			increase N by 1;
			add R to LR;
			set next numerical response to the substituted form of "[RequestFlav of R]";
	repeat with R running through the tradableItems of M:
		if N < 9 and R is off-stage and R is not listed in LR:
			increase N by 1;
			add R to LR;
			set next numerical response to the substituted form of "[RequestFlav of R]";
	set numerical response 0 to "cancel";
	compute multiple choice question;
	if player-numerical-response > 0:
		let R be entry player-numerical-response in LR;
		allocate 4 seconds;
		say "[variable custom style][RequestFlav of R][roman type][line break]";
		if M is staff member:
			say "[speech style of M]'I can't think of anything right now, no. Maybe in the future...'[roman type][line break]";
		otherwise if M is woman-player:
			say "[speech style of M]'If I could afford to, I'd do that for free.'[roman type][line break]";
		otherwise if the current-errand of M is no-errand:
			now the current-reward of M is R;
			let CH be the charisma of the player;
			let RQ be the requestability of R + the freebie-reluctance of M;
			let RR be a random number between 1 and RQ;
			if CH * 5 < RQ, now RR is 9999;
			if debuginfo > 0, say "[input-style]Errand needed check: [if RR is 9999]Request level ([RQ]) too high for player with a charisma score of [CH]; automatic success. Errand is required.[otherwise]Request level d[RQ] ([RR]) | [CH].5 player charisma[end if][roman type][line break]";
			if CH >= RR:
				say RequestAcceptanceForFree of M;
				compute errand rewarding of R from M;
				if R is listed in the tradableItems of M, remove R from the tradableItems of M;
				say "[one of]Wow! Being extra-charismatic has really paid off[or]Once again, your high charisma score has scored you a freebie[stopping]!";
				now the current-reward of M is no-reward;
			otherwise:
				choose an errand for M;
				if the current-errand of M is no-errand:
					say RequestRejection of M;
				otherwise:
					say RequestAcceptance of M;
					compute instant effect of the current-errand of M for M;
		otherwise:
			if the current-errand of M is rejected-errand:
				say "[speech style of M]'No thank you. I tried making you an offer before, but you disappointed me. I'm done playing such games with you.'[roman type][line break]";
			otherwise if the current-errand of M is completed and the current-reward of M is R:
				compute errand completion of M;
			otherwise:
				say RequestDuplicationRejection of M.

[The higher this is, the less likely a monster is to give you a freebie]
To decide which number is the freebie-reluctance of (M - a monster):
	if the favour of M < 0, decide on 99;
	if the difficulty of M < 0, decide on 1 - the square root of the favour of M;
	decide on the square root of the difficulty of M - the square root of the favour of M.

To say RequestAcceptance of (M - a monster):
	say RequestAssign of M.

To say RequestAssign of (M - a monster):
	let E be the current-errand of M;
	say "[speech style of M]'[ErrandFlav of E for M]Do that, and I'll [RewardFlav of M].'[roman type][line break]".

To say RequestRejection of (M - a monster):
	say "[speech style of M]'No, I don't think so.'[roman type][line break]".

To say RequestDuplicationRejection of (M - a monster):
	say "[speech style of M]'No, let's not complicate things. You've already got something you're supposed to do for me. [ErrandFlav of M]Do that, and I'll [RewardFlav of M].'[roman type][line break]".

To say RequestAcceptanceForFree of (M - a monster):
	say "[speech style of M]'[one of]Ugh... I'm probably being too kind, but go on, I'll [RewardFlav of M][or]Just this once, I'll [RewardFlav of M] for free[or]I don't need anything in return to [RewardFlav of M][or]No worries, I'll [RewardFlav of M]. You can just owe me one[in random order].'[roman type][line break]".

Conversation ends here.
