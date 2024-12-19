Diaper Events by Monster Framework begins here.

To compute (M - a monster) removing all ass protection:
	let more-to-go be 1;
	while more-to-go > 0:
		now more-to-go is 1;
		let C be a random ass covering clothing;
		now C is a random top level ass protection clothing; [Top level takes priority]
		if C is nothing, now C is a random worn sex toy penetrating asshole;
		if C is nothing:
			now more-to-go is 0;
		otherwise:
			if C is crotch-zipped and C is not diaper:
				say UnzipFlav of M at C;
				ZipDown C;
			otherwise if C is locked:
				now C is temporarily-unlocked;
				compute M unlocking C;
				now more-to-go is 2; [it's still worn, and this prevents the bug catch below]
			otherwise if C is displacable and the number of worn crotch-pullup clothing <= 1:
				compute M displacing C;
			otherwise:
				say DiaperQuestRemovalFlav of M on C;
				now M is carrying C;
				now C is temporarily-removed;
				dislodge C;
		if more-to-go is 1:
			if C is ass covering clothing or C is penetrating asshole:
				say "Glitch! [BigNameDesc of M] failed to properly remove the [C]. We're going to move ahead as if [he of M] did, but please report the bug!";
				now more-to-go is 0.

To say DiaperQuestRemovalFlav of (M - a monster) on (C - a clothing):
	say "[BigNameDesc of M] removes your [C].".

To say DiaperQuestRemovalFlav of (M - a monster) on (C - a sex toy):
	say "[BigNameDesc of M] pulls out your [C].".

Section - Diaper Check

Report taking off diaper:
	repeat with M running through friendly monsters in the location of the player:
		if the diaper-duration of M > 0, check perception of M.

diaperChecking is initially false. [Sometimes we want to flag that there's a diaper check currently in place.]

To compute diaper check of (M - a monster):
	let SCM be current-monster;
	now current-monster is M; [necessary for 'easy to remove' check]
	now diaperChecking is true;
	let D be a random worn knickers;
	if D is nothing:
		say "Bug - diaper check function was called when there's no worn underwear.";
	otherwise if D is waddle diaper and D is not messed:
		say "[WaddleDiaperCheckFlav of M][moderateHumiliateReflect]";
	otherwise if the class of the player is priestess and (D is not messed knickers or diaper messing > 3):
		calm M;
		say "[PriestessDiaperCheckFlav of M][slightHumiliateReflect]";
		if D is not diaper:
			if the delicateness of the player < 12, say "Submit to the diaper change? [one of](Refusing will probably make [him of M] angry) [or][stopping]";
			if the delicateness of the player >= 12 or the player is bimbo consenting:
				compute diaper change of M;
			otherwise:
				anger M;
				say DiaperChangeRefuseAnger of M;
	otherwise:
		calm M;
		say "[DiaperCheckFlav of M][DiaperCheckReactionFlav of M]";
		strongHumiliate;
		if M is willing to change diapers and D is total protection and D is soilable unmessed knickers and rectum > 1 and asshole is not actually occupied and rectum + the rectum-incontinence of the player + suppository > the instant mess influence of M:
			say InstantMessFlav of M;
			compute messing;
		say DiaperCheckResultsFlav of M;
		if diaper messing is 3 and D is messed:
			compute instant change of M;
		otherwise if M is eager to change diapers:
			if the delicateness of the player < 12, say "Submit to the diaper change? [one of](Refusing will probably make [him of M] angry) [or][stopping]";
			if the delicateness of the player >= 12 or the player is bimbo consenting:
				compute diaper change of M;
			otherwise:
				anger M;
				say DiaperChangeRefuseAnger of M;
	now diaperChecking is false;
	now current-monster is SCM.

To say WaddleDiaperCheckFlav of (M - a monster):
	say "[BigNameDesc of M] takes a good look at you in at your unique diaper.[line break][speech style of M]'You look so cute in your waddle diapee!'[roman type][line break]".

To say PriestessDiaperCheckFlav of (M - a monster):
	say DiaperCheckFlav of M;
	let D be a random worn knickers;
	say "[speech style of M]'[if D is not diaper][one of]A diaper priestess with no diaper? Unthinkable! Allow me to fix this transgression!'[or]But... where is your diaper, priestess?! Quick, you must allow me to diaper you before we anger the Goddess!'[in random order][otherwise if D is messed][one of]Wow, messy! A very dedicated priestess indeed.'[or]You smell ripe. For how long have you been holding this vigil, Sister?'[or]Ah, the squelching of your messy diaper reminds me of the Goddess's motherly love for us all. Bless you for dedication, your holiness.'[in random order][otherwise if the total-soak of D >= the soak-limit of D][one of]Seems like someone loves [his of the player] Goddess very much indeed.'[or]So full and heavy! I admire your dedication, Sister.'[or]This is a very well used nappy. The Goddess must be proud of you.'[in random order][otherwise if D is wet][one of]Amen.'[or]My my, a real diaper Priestess! I never thought I'd actually meet one. Is it true you stay in the same diaper for up to a week at a time?'[or]Hmm, nice and squishy, just like the Goddess would want.'[or]What unique religious attire.'[in random order][otherwise][one of]Isn't this supposed to be wet? Are you new?'[or]Doesn't your dryness offend your deity?'[or]Oh. Disappointing.'[in random order][end if][roman type][line break]";
	if D is perceived unmessed messed diaper:
		now the perceived-mess of D is the mess of D;
		say "It's only now that [he of M] has pointed it out that you can feel it - you have indeed messed yourself without even realising it!";
	otherwise if D is perceived dry wet diaper:
		compute DiaperCheckWetReveal of M to D.

To say DiaperCheckFlav of (M - a monster):
	let D be a random worn knickers;
	say "[one of][big he of M] swiftly walks up to you and holds [if diaper messing < 3]a hand to the front[otherwise]hands to the front and back[end if] of your [MediumDesc of D], pushing firmly to get a good feel.[or][big he of M] swiftly walks up to you with a sly grin. [big he of M] [if diaper messing < 3]presses [his of M] hand against the front[otherwise]presses [his of M] hands into the front and back[end if] of your [MediumDesc of D]. [big he of M] pushes it firmly to get a good feel of how [if diaper messing < 3]wet[otherwise]used[end if] it is.[in random order]".

To say DiaperCheckReactionFlav of (M - a monster):
	let D be a random worn knickers;
	say "[one of][if the diaper addiction of the player < 11]You lightly recoil against [his of M] touch, embarrassed that [NameDesc of M] is giving you a diaper check.[otherwise if the diaper addiction of the player > 13]Almost instinctively you push your hips forward so that [NameDesc of M] can get a good feel.[end if][or][if the diaper addiction of the player < 4]You yelp with indignation.[roman type][line break][otherwise if the diaper addiction of the player < 9 and (D is messed or D is wet)]You wince with guilt, fully aware of what [his of M] check will reveal.[otherwise if D is messed or D is wet]You giggle guiltily as you allow [him of M] to find out just how correct [he of M] was to check you.[otherwise]You push your crotch into [his of M] hand, proud to prove that you have stayed dry for now.[end if][in random order]".

To decide which number is the instant mess influence of (M - a monster):
	decide on a random number between 3 and 8.

To say InstantMessFlav of (M - a monster):
	let D be a random worn knickers;
	say "[one of]As [his of M] hands push into your padding, you feel a strange twinge in your belly[or]You find your body relaxing as [he of M] presses [his of M] hand against your bottom, as if it was the most natural thing in the world[or]As [he of M] holds you there between [his of M] hands, your head starts feeling weirdly light, and for a moment you struggle to think straight[in random order]. [if the diaper addiction of the player > 12]You sigh with pleasure and feel your sphincter dilating slightly. [otherwise if the diaper addiction of the player > 6]You feel nervous and you can't explain why, as your belly rumbles ominously. [otherwise]You feel your rectum churning and just too late you realise that [he of M] must be using [one of]some kind of hidden magic device on you[or]magic to force you to mess yourself[stopping]! [end if][BigNameDesc of M] begins to speak.[line break][speech style of M]'[if the urine-soak of D > the soak-limit of D / 9]Oopsie, It seems like my little baby has had a big accident! Thank goodness your cute little bottom was diapered. [otherwise]Hmm, it looks like you don't need a change yet... [end if]Wait, what's this?!'[roman type][line break]As soon as [NameDesc of M] stops speaking you can feel what [he of M] has detected - you've lost control of your bowels and have started to mess yourself!".

To say DiaperCheckResultsFlav of (M - a monster):
	let D be a random worn knickers;
	let easy-to-remove be true;
	if D is diaper and D is not easy to remove, now easy-to-remove is false;
	if D is diaper-stack and D is not messed, now D is entry (number of entries in the list of stacked diapers) in the list of stacked diapers;
	if M is aware that the player needs a change or D is messed:
		if M is eager to change diapers:
			if D is messed:
				say DiaperCheckResultsMessedFlav of M;
				if D is perceived unmessed diaper:
					say "It's only now that [he of M] has pointed it out that you can feel it - you have indeed messed yourself without even realising it!";
					process state perception of D;
				say DiaperCheckResultsMessedReactionFlav of M;
			otherwise if D is crotch-ripped diaper:
				say DiaperCheckResultsTornFlav of M;
			otherwise:
				say DiaperCheckResultsWetFlav of M;
				if D is perceived dry diaper, compute DiaperCheckWetReveal of M to D;
				say DiaperCheckResultsWetReactionFlav of M;
		otherwise:
			say DiaperCheckResultsNoChangeFlav of M;
			if D is messed:
				if D is perceived unmessed diaper:
					say "It's only now that [he of M] has pointed it out that you can feel it - you have indeed messed yourself without even realising it!";
					process state perception of D;
				say DiaperCheckResultsMessedNoChangeReactionFlav of M;
			otherwise:
				if D is perceived dry diaper, compute DiaperCheckWetReveal of M to D;
				say DiaperCheckResultsWetReactionFlav of M;
	otherwise if D is wet:
		say DiaperCheckResultsMostlyDryFlav of M;
		if D is perceived dry diaper, compute DiaperCheckWetReveal of M to D;
		say DiaperCheckResultsMostlyDryReactionFlav of M;
	otherwise:
		if diaper-stack is worn:
			say DiaperCheckResultsDryStackFlav of M;
		otherwise:
			say DiaperCheckResultsDryFlav of M;
			if the trophy-mode of diaper-trophy is 0:
				if the diaper-duration of M > 1:
					decrease the diaper-duration of M by 1;
				otherwise if the diaper-duration of M is 1:
					now the diaper-duration of M is 0.

To say DiaperCheckResultsNoChangeFlav of (M - a monster):
	let D be a random worn knickers;
	if the player is stacked-but-outerly-dry:
		say "[speech style of M]'[if D is messed knickers]Well, while I can smell you from here, the fact of the matter is that your diapers can hold a whole lot more. This outer one is still completely dry!'[otherwise]Hmm, well this outer diaper is dry at least, so even if you are wet somewhere in there, it'll be a long time before you leak.'[end if][roman type][line break]";
	otherwise if D is diaper and D is not easy to remove:
		if D is glued:
			say "[speech style of M]'[if D is messed]Wow, you've made a real stinker in there[otherwise]Yep, this is one well-used diaper[end if]! But... It's also been glued to you, hasn't it? Well then, you're going to have to wait until the glue is gone before you can get a change, aren't you, haha!'[roman type][line break]";
		otherwise:
			say "[speech style of M]'[if D is messed]Uh-oh, it seems that you're locked in a nasty, stinky diaper! And I'm afraid I don't have the key, so you're going to have to stay that way until your keyholder decides you've earned a change[otherwise]You've really done a good job filling this padding, but looks like there's only one person who can change you - whoever holds the key to that lock[end if]!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[if D is messed knickers]Look at you, stinky pants! Still, for some reason, I don't feel like letting you have a clean one yet. Why don't you stew in that thing for a while longer, haha!'[otherwise if D is diaper]Oh, that feels nice. Don't you think it feels nice? I do. In fact, I think you should stay like this a while.'[otherwise]How... disappointing.'[end if][roman type][line break]".

To say DiaperCheckResultsMessedFlav of (M - a monster):
	let D be a random worn knickers;
	say "[speech style of M]'[one of]Oopsie[or]Well well well[or]Uh-oh[or]Oh wow[in random order], it seems that [one of]my little baby[or]this little baby[or]this little one[or]somebody[in random order] has [if D is diaper][one of]messed their nappy[or]filled their diaper with their naughty bum-bum[or]gone stinky in their Pampies[or]done a big doo-doo[or]gone poopies[or]struggled to make it to the toilet in time to do their pooping[or]proven that they definitely need to be kept in diapers, there's a lot of warm mush I can feel in here[in random order][otherwise][one of]had an accident, looks like you should have been in a diaper[or]went doo-doo in their panties, and needs to be diapered[in random order][end if]! [one of]You definitely need a change now though, you stinky minx!'[or]I guess it's up to me to change you.'[or]Were you trying to avoid letting me know that you need a change?'[or]You should always come to me straight away when this happens, [honey of M], so we can get you changed into something clean.'[in random order][roman type][line break]".

To say DiaperCheckResultsMessedReactionFlav of (M - a monster):
	let D be a random worn knickers;
	if the player is upset about sitting in mess, say "[one of]You are relieved that you're going to be rescued from your gross situation. [or]The only thing you care about right now is getting out of this [MediumDesc of D], so [his of M] words are a welcome relief! [or]You actually feel gratitude for the fact you're going to be helped out of your smelly [MediumDesc of D]! [in random order]";
	otherwise say "[if the delicateness of the player < 7][one of]You wrinkle your nose. You don't want to be changed like a little child![or]You growl, angry at the concept that you need someone else to change you.[or]You harrumph with disdain at the idea.[in random order][otherwise if the delicateness of the player < 12][one of]You wriggle nervously on the spot.[or]You smile sheepishly.[or]You feel a bit uncomfortable, but know it needs to be done.[or]You tremble on the spot.[in random order][otherwise if the delicateness of the player > 15][one of]You wiggle happily on the spot.[or]You smile inwardly, excited at the prospect of a change.[or]You make a gleeful gurgling sound.[or]A euphoric shiver of anticipation rushes through your veins.[in random order][otherwise][one of]You smile nervously, and with more than a hint of excitement.[or]Your heart flutters and you immediately adopt a submissive pose.[or]You happily submit to the change.[in random order][end if]";
	if the player is able to speak, say "[run paragraph on][line break][variable custom style]'[if the player is broken]Yes [daddy of M].'[otherwise if the player is feeling dominant][one of]Just get me out of this thing, now!!!'[or]This isn't funny! But... Go ahead.'[or]Look, I'm not some diaper loving weirdo, but please god, yes, get me into a clean one!'[in random order][otherwise if the player is feeling submissive][one of]I'm ready for my change now...'[or]I'm sorry, I didn't mean to do a stinky!'[or]I'm sorry, I couldn't hold it in...'[or]*giggle* I love the squishy sound your hand makes against my diaper!'[or]Thank you [daddy of M]!'[or]Teehee, [NameBimbo] needs a new nappy!'[or]Ooh, I hope my new diaper is even prettier than this one!'[or]*giggle* I love it when you change me, [daddy of M].'[in random order][otherwise if the diaper addiction of the player < 11][one of]Go on then, get on with it!'[or]Yeah, yeah, I understand the drill. Let's get it over with.'[in random order][otherwise][one of]Ooh yay, I can't wait to get into a new comfy diaper!'[or]Oh, thank you so much!'[or]This diaper feels good, but I guess a new one will feel even better.'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperCheckResultsMessedNoChangeReactionFlav of (M - a monster):
	let D be a random worn knickers;
	if the player is upset about sitting in mess:
		say "[variable custom style][big he of M][']s not going to change me?![roman type][line break]";
		if the player is able to speak, say "[variable custom style]'[if the player is broken]If you say so, [daddy of M]... *sniff*'[otherwise if the player is feeling dominant]What?! No! I demand to be let out of this thing immediately!'[otherwise if the player is feeling submissive]But... [NameBimbo] made pushies... It's all gross... *sniff*'[otherwise if the diaper addiction of the player < 11]...You're kidding, right?! You're going to leave me like this?!'[otherwise]You're an even bigger diaper perv than I am, if you think this diaper doesn't need changing!'[end if][roman type][line break]";
		otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperCheckResultsTornFlav of (M - a monster):
	say "[speech style of M]'Huh? This diaper is damaged! That won't do, let's get you changed into something safer, and quickly!'[roman type][line break]".

To compute DiaperCheckWetReveal of (M - a monster) to (D - a diaper):
	say "It's only now that [he of M] has pointed it out that you can feel it - your diaper is indeed wet[one of]! You must have used it without even realising it[or][stopping].";
	process state perception of D.

To say DiaperCheckResultsWetFlav of (M - a monster):
	let D be a random worn knickers;
	say "[speech style of M]'[one of]As suspected[or]Unsurprisingly[or]What a surprise,[or]How predictable,[or]As per usual[in random order] [one of]your [if the player is possessing a penis]little willy[otherwise]weak bladder[end if] hasn't been able to hold on for very long at all[or]you've gone pee-pee in your [if D is diaper]diaper[otherwise]panties[end if][or]you've wet yourself like a little baby[or]it's totally wet[or]you've completely soaked it[or]you've peed in your pants like a little [boy of the player] rather than make it to the toilet like a grown-up[or]you didn't make it to the big [boy of the player] potty[or]pissed yourself like a pathetic child[in random order]! [one of]This is too soggy for you to keep walking around in, you're going to need a change.'[or]I guess it's up to me to change you.'[or]Were you trying to avoid letting me know that you need a change?'[or]I think we're going to need [if D is diaper]a brand new diaper, this one's padding is all used up[otherwise]diapers here[end if].'[in random order][roman type][line break]".

To say DiaperCheckResultsWetReactionFlav of (M - a monster):
	if the player is able to speak, say "[variable custom style]'[if the humiliation of the player >= 40000]Yes [daddy of M].'[otherwise if the diaper addiction of the player < 6][one of]You are kidding me...'[or]This can't be actually happening...'[or]You're not serious, are you?!'[in random order][otherwise if the delicateness of the player > 13][one of]I'm sorry, please forgive me!'[or]I'll do whatever you say, just please don't hurt me...'[or]I'm sorry, I couldn't hold it in...'[in random order][otherwise if the diaper addiction of the player < 11][one of]Go on then, if you must.'[or]You caught me, I guess.'[in random order][otherwise][one of]Ooh yay, I can't wait to get into a new comfy diaper!'[or]Oh, thank you so much!'[or]This diaper feels good, but I guess a new one will feel even better.'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperCheckResultsMostlyDryFlav of (M - a monster):
	say "[speech style of M]'[one of]Hmm,[or]I see,[or]Yep,[in random order] [one of]as I suspected, you haven't been able to stay dry[or]definitely a bit wet[or]I can definitely feel some warmth[or]this feels a bit heavy[or]it feels like you've leaked a bit, [honey of M][or]you've had a little leakage in here, haven't you[or]you've gone tinkles in your pampers[in random order]. [one of]It feels like it can still hold a bit more, though,[or]However you don't need a change quite yet[or]It's nowhere near at risk of leaking yet[or]Most of the padding is still dry[or]You've only leaked a little bit[in random order] so [one of]I'm not going to waste a brand new diaper until it's really full.'[or]I'll leave you to waddle along for now.'[or]I think you'll have to stay wallowing in your own pee-pee for a bit longer.'[or]you're going to have to stay squelching around in your wet nappy for now.'[or]maybe come and find me when you've had another accident.'[in random order][roman type][line break]".

To say DiaperCheckResultsMostlyDryReactionFlav of (M - a monster):
	if the player is able to speak, say "[variable custom style]'[if the humiliation of the player >= 40000]Thank you for punishing this pathetic baby by [one of]forcing it to stay waddling in its own shame[or]denying it a dry diaper[or]making it continue to crawl around in its disgusting soggy nappy[cycling].'[otherwise if the delicateness of the player < 6][one of]As if I'd let you change me, pervert!'[or]I'll get a change when I want one! Leave me alone.'[or]I'll decide for myself when I need to change, thank you very much!!!'[or]Maybe I didn't want a change anyway. Did you even consider my own desires? Wait that came out wrong...'[in random order][otherwise if the delicateness of the player > 14][one of]Yay, I get to stay in this one for a bit longer!'[or]Well you'd better keep checking up me, you know I'll have had more accidents soon!'[or]Sorry [daddy of M], I'll do my best to make it even more full for you!'[then at random][otherwise if the diaper addiction of the player < 8][one of]You're going to make me stay in this yucky thing? You can't be serious!'[or]Oh come on, you know I'm not enjoying this right? I need a new dry one at least!'[or]Are you joking? You're really not going to give me a clean change?!'[or]Seriously, if I'm going to be wearing diapers, please please please at least give me dry ones...'[in random order][otherwise if the diaper addiction of the player < 13][one of]If you say so!'[or]I guess that's a fitting punishment...'[or]Whatever, I'm getting kind of used to the warm feeling anyway.'[in random order][otherwise][one of]If [daddy of M] wants me to stay in a soggy diaper then I'll wear it with pride!'[or]Yay! It's actually really warm and comforting...'[or]I'll wear whatever diaper [daddy of M] tells me to!'[or]*giggle* Okey dokey! Are you gonna watch over me as I wander around in my soggy nappy like a good baby?'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperCheckResultsDryFlav of (M - a monster):
	if the diaper-duration of M >= 100: [permanent diaper committal]
		say DiaperCheckResultsDryForeverFlav of M;
	otherwise if the diaper-duration of M > 1:
		say DiaperCheckResultsDryForNowFlav of M;
		say DiaperCheckResultsDryForNowReactionFlav of M;
	otherwise if the diaper-duration of M is 1:
		say DiaperCheckResultsDrynessProvedFlav of M;
		say DiaperCheckResultsDrynessProvedReactionFlav of M;
	otherwise:
		say DiaperCheckResultsDryWellDoneFlav of M;
		say DiaperCheckResultsDryWellDoneReactionFlav of M.

To say DiaperCheckResultsDryStackFlav of (M - a monster):
	say "[speech style of M]'[one of]Well at least it seems you've managed to keep your outermost diaper dry, for now[or]It doesn't feel like you've had enough accidents to leak down to this diaper yet[or]Hmm, this one is bone dry[or]You haven't leaked down to this one yet, it would seem[in random order]. [one of]However I'm sure you've done at least some tinkles into the diaper on the inside, hmm? [or]I bet you've wet the innermost diaper though, haven't you? [or]I wonder what the other diaper[if the number of entries in the list of stacked diapers > 2]s look[otherwise] looks[end if] like though. [in random order][one of]So I'm not counting this as a time I found you dry. I'll only do that when I check you while you're in a single diaper[or]So this doesn't count as me finding you dry. If you want me to be confident you can hold your wee-wees, you need to let me find you dry when you're only wearing one diaper[or]I can't be sure you're completely dry, so this doesn't count[stopping].'[roman type][line break]".

To say DiaperCheckResultsDryForeverFlav of (M - a monster):
	say "[speech style of M]'[one of]Glad[or]I'm happy[or]I'm pleased[or]It's good[in random order] to [one of]see[or]find out[or]confirm[as decreasingly likely outcomes] you're still [one of]diapered[or]wearing diapers[or]wearing this[or]well-padded[in random order], as [one of]instructed[or]you were commanded[or]was decreed[as decreasingly likely outcomes].'[roman type][line break]".

To say DiaperCheckResultsDryForNowFlav of (M - a monster):
	say "[speech style of M]'[one of]Oh[or]Hmph[or]Unbelievable[or]How surprising[in random order]. [one of]You've actually managed to stay dry, for now[or]It doesn't feel like you've had an accident, yet[or]You're completely dry[or]It's bone dry[or]No leaks yet, it would seem[in random order]. [one of]I don't expect that will last for long though[or]Maybe one of these days you will actually be ready for big [boy of the player] pants again[or]Maybe there's a very slight chance I misjudged you? We'll see if you can keep this up for the next time we meet[or]I think you got lucky. I'll be checking again soon and I bet you'll have slipped up by then[in random order].'[roman type][line break]".

To say DiaperCheckResultsDryForNowReactionFlav of (M - a monster):
	if the player is able to speak, say "[variable custom style]'[if the humiliation of the player >= 40000]This useless baby is certain it will wet its nappy soon.'[otherwise if the delicateness of the player < 6][one of]I can't believe you won't just trust me to stay dry!'[or]This is ridiculous, I shouldn't have to prove myself like this!'[or]Hmph.'[stopping][otherwise if the delicateness of the player > 14][one of]Teehee, I guess I've gotten lucky this time!'[or]Well you'd better keep checking up me, you know I can't be trusted!'[or]Maybe I will wet myself just so you keep ordering me around...'[then at random][otherwise if the diaper addiction of the player < 8][one of]You'd better let me out of this darned thing soon!'[or]Forcing me to wear this thing is so stupid.'[or]I'm going to prove to you I don't need to be in this ridiculous thing!'[or]Seriously, as if I'm going to let you catch me in a disgusting soggy nappy.'[in random order][otherwise if the diaper addiction of the player < 13][one of]I'm going to do my best to win this bet!'[or]You told me not to pee in it, so I'm doing my best.'[or]I can keep dry when I want to!'[in random order][otherwise][one of]It feels good when I pee myself though, so maybe I should?'[or]I would be wearing this even if you hadn't ordered me to, it's so comfy!'[or]Haha, I'm enjoying this game!'[or]Trust me, it won't be dry for long! *giggle*'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperCheckResultsDrynessProvedFlav of (M - a monster):
	say "[speech style of M]'[one of]Hmph[or]Hmm[purely at random], [one of]dry again[or]still dry[or]you actually managed to stay dry[or]still no leaks[in random order]. [one of]Okay, you've proved yourself; your choice of underwear is your own again, feel free to wear adult panties if you want to. But nothing too slutty.'[or]Fine. I give you permission to stop wearing diapers, if you so choose. But maybe you've enjoyed the experience, hmm?'[or]I guess I have no choice but to end your diaper punishment. Stop wearing diapers or keep wearing them, it's up to you now.'[in random order][roman type][line break]".

To say DiaperCheckResultsDrynessProvedReactionFlav of (M - a monster):
	let N be nothing;
	let N-count be 0;
	repeat with O running through alive monsters:
		if the diaper-duration of O > 0 and O is not M:
			now N is O;
			increase N-count by 1;
	if the player is able to speak, say "[variable custom style]'[if the humiliation of the player >= 40000]This pathetic baby will continue wearing diapers anyway, in anticipation of eventually failing [his of the player] potty training.'[otherwise if the delicateness of the player < 9 and N-count > 1][one of]This is so stupid. I still have [N-count] more people to convince. Why am I even letting you guys order me around?!'[or]This is pointless. I still have [N-count] others trying to control my choice of clothing as if I'm some little kid.'[or]If it was only you, I'd have ignored you anyway. Unfortunately there's still [N-count] others who would also beat me up if I didn't...'[in random order][otherwise if the delicateness of the player < 9 and N is monster][one of]Right, now time to find the [N][line break][variable custom style]. And I might just beat [him of N] up rather than going through all this again.'[or]Okay, only one more person I have to convince now. Or maybe I'll just take it off now and let [him of N] try and fight me, if [he of N] dares.'[in random order][otherwise if the delicateness of the player < 9][one of]You're very lucky that I played along and didn't just kill you.'[or]And about time too! I thought you were just going to keep checking me forever...'[or]Okay, now that I've proved myself will people PLEASE stop checking me now!'[in random order][otherwise if the delicateness of the player > 14][one of]I can't believe it, I actually did it!'[or]If... if you say so...'[or]Are you SURE I'm ready for big [boy of the player] pants? I'm not so confident any more...'[then at random][otherwise if the diaper addiction of the player < 8 and N-count > 1][one of]Great, now only [N-count] more people to convince...'[or]You're only one of many people who have ordered me to stay in diapers though, so I've won the battle but not the war.'[or]At last! One down, [N-count] to go.'[in random order][otherwise if the diaper addiction of the player < 8 and N is monster][one of]Phew. Well now I only need to prove myself to the [N].'[or]If only I wasn't also under the watchful eye of the [N]...'[or]Okay, only one more person I have to stay dry for now.'[in random order][otherwise if the diaper addiction of the player < 8][one of]I'm allowed to take it off? Really? Yay!'[or]Phew, I thought I'd be stuck in these forever...'[in random order][otherwise if the diaper addiction of the player < 13][one of]I did my best!'[or]That was a fun challenge, let's do it again some time!'[or]See, I can keep dry... if I really want to!'[in random order][otherwise][one of]Oh trust me, I'm going to stay in this comfy nappy for as long as I can!'[or]Why would I want to wear big [boy of the player] pants?'[or]Haha, why would I stop wearing diapers? You're funny!'[or]I'm not going to stop, I love wearing this thing!'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperCheckResultsDryWellDoneFlav of (M - a monster):
	say "[speech style of M]'[one of]Well done [honey of M],[or]Great job [honey of M],[or]Phew,[or]I'm not sure you need to be in diapers you know,[in random order] [one of]it looks like you're completely dry[or]no accident here! For a moment I thought I was going to have to treat you like a big baby[or]You're completely dry[or]It's bone dry[or]it looks like you've been keeping excellent control of your bladder[in random order].'[roman type][line break]".

To say DiaperCheckResultsDryWellDoneReactionFlav of (M - a monster):
	if the player is able to speak, say "[variable custom style]'[if the humiliation of the player >= 40000]This pathetic object does not deserve such kind words.'[otherwise if the delicateness of the player < 6][one of]What the fuck? You can't just go around touching people's underwear like that!'[or]Just because I'm wearing a diaper doesn't give everyone permission to touch me there!'[or]Look, I'm not a baby, would everyone stop diaper checking me!'[or]Grr...'[stopping][otherwise if the delicateness of the player > 14][one of]Thank you for checking me, [daddy of M].'[or]Please keep checking me, you know I can't be trusted!'[or]Mmm, maybe I should wet myself if it'll make you touch me more...'[or]Would it make you happy to treat me like a baby? I could wet myself for you if you want...'[or]It's important to keep checking naughty diapered minxes!'[in random order][otherwise if the diaper addiction of the player < 8][one of]I'm not enjoying wearing this, you know!'[or]Thanks, I guess.'[or]Please understand, I don't usually wear diapers!'[in random order][otherwise][one of]Oh gosh, that actually feels quite nice when you do that...'[or]Thank you but I think I'm going to keep on wearing these anyway, they're so comfy!'[or]Maybe incontinence isn't the only reason to wear a diaper... *giggle*'[or]Trust me, it won't be dry for long! *giggle*'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperChangeRefuseAnger of (M - a monster):
	say "As [he of M] sees you make a move to resist, [NameDesc of M] gets angry![line break][speech style of M]'[one of]Bad baby!'[or]Ugh, they never learn...'[or]You will regret this!'[then at random][roman type][line break]".

Section - Diaper Change

Definition: a monster (called M) is diaper change cummies rewarding:
	if the player is a bit horny and the health of M >= the maxhealth of M and the favour of M >= 15 and the player is not unable to orgasm so soon, decide yes;
	decide no.

Definition: a monster is diaper change chastity cummies rewarding: decide no.

Definition: a monster is diaper change during cummies rewarding: decide no.

Definition: a monster is diaper change during special ready: decide no.

Definition: a monster (called M) is diaper change complete cummies rewarding:
	if M is intelligent and M is diaper change cummies rewarding, decide yes;
	decide no.

Definition: a monster is diaper disciplining: decide no. [Does this NPC like to demand that the player stays in diapers until they're satisfied they can stay dry?]
Definition: a monster is diaper leaving: decide yes. [Does this NPC like to leave used diapers behind?]
Definition: a monster (called M) is diaper cover locking: [Does this NPC lock your diaper covers?]
	if M is diaper disciplining, decide yes;
	decide no.
Definition: a monster is double diaper locking: decide no. [Does this NPC put you in a locked double diaper rather than a cursed double diaper?]

old-diaper is an object that varies.
current-diaper-change-top-level is an object that varies.
new-diaper is an object that varies.
diaperChangeCount is a number that varies.

To compute diaper change of (M - a monster):
	now current-diaper-change-top-level is nothing;
	now new-diaper is nothing;
	[These are failsafes below to avoid bugs]
	if M is friendly, anger M;
	if M is uninterested, interest M;
	if M is grabbing the player and M is changing the player:
		now current-diaper-change-top-level is a random top level protection clothing; [Top level takes priority]
		[if current-diaper-change-top-level is nothing, now current-diaper-change-top-level is a random worn crotch covering clothing;] [this doesn't work because displaced stuff gets stuck in a loop]
		if current-diaper-change-top-level is worn no protection overdress, now current-diaper-change-top-level is nothing; [These are allowed to stay around!]
		if (current-diaper-change-top-level is nothing or current-diaper-change-top-level is not urination blocking) and there are worn knickers, now current-diaper-change-top-level is a random worn knickers; [All knickers MUST be removed]
		if (current-diaper-change-top-level is nothing or current-diaper-change-top-level is not urination blocking) and there is a worn tail plug, now current-diaper-change-top-level is a random worn tail plug;
		if current-diaper-change-top-level is unmessed urination blocking unremovable clothing:
			say "[speech style of M]'I can't remove that [ShortDesc of current-diaper-change-top-level]. Damn, I guess I'll have to leave you like this, for now.'[roman type][line break]";
			satisfy M;
			dislodge M;
			repeat with C running through diapers carried by M:
				only destroy C;
			if diaper quest is 1, progress quest of naughty-quest;
			rule succeeds;
		if old-diaper is diaper and current-diaper-change-top-level is chastity bond and M is diaper change chastity cummies rewarding and the player is able to orgasm so soon:
			compute diaper change chastity cummies reward of M;
			rule succeeds;
		otherwise if current-diaper-change-top-level is clothing and current-diaper-change-top-level is urination blocking:
			now old-diaper is current-diaper-change-top-level;
			if current-diaper-change-top-level is crotch-zipped clothing and current-diaper-change-top-level is not knickers and (there is a worn crotch-tie-up knickers or the number of worn knickers is 0):
				say UnzipFlav of M at current-diaper-change-top-level;
				ZipDown current-diaper-change-top-level;
				rule succeeds;
			otherwise if current-diaper-change-top-level is displacable and current-diaper-change-top-level is not knickers and current-diaper-change-top-level is not glued and the number of worn crotch-pullup clothing <= 1: [prevents NPC from displacing pulldown trousers and then magically removing pulldown diaper cover and then being unable to replace said diaper cover]
				compute M displacing current-diaper-change-top-level;
				rule succeeds;
			otherwise if current-diaper-change-top-level is locked:
				now current-diaper-change-top-level is temporarily-unlocked;
				compute M unlocking current-diaper-change-top-level;
				rule succeeds;
			otherwise if current-diaper-change-top-level is diaper and M is willing to double diapers and M is eager to double diapers and (current-diaper-change-top-level is unmessed or diaper messing >= 4):
				if new-diaper is not a DQBulkier diaper, now new-diaper is a random eligible plentiful DQBulkier disposable diaper;
				if new-diaper is not a diaper, now new-diaper is a random plentiful DQBulkier disposable diaper;
				if new-diaper is diaper and new-diaper is not current-diaper-change-top-level:
					say DoubleDiaperFlav of M;
					blandify and reveal new-diaper; [clean and reset it]
					if M is not double diaper locking: [if they don't lock it, they glue it]
						say DoubleDiaperGlueFlav of M;
						gluify new-diaper; [elsewise the player will almost always be able to remove it without issue]
						if diaper-stack is worn, gluify diaper-stack; [adds glue to the others diapers in the stack too, otherwise it's not technically sealed to the player]
					diaperAdd new-diaper;
					if M is double diaper locking: [locking must happen after it is worn]
						let K be a random off-stage specific-key;
						compute M locking diaper-stack with K;
					say DoubleDiaperAfterFlav of M;
					[no 'rule succeeds' because we're done, so now we follow through to the end.]
				otherwise: [couldn't find an eligible bulkier diaper]
					if debugmode > 0, say "[input-style]Unable to find an eligible diaper that could fit on top of the [current-diaper-change-top-level].[roman type][line break]";
					say DiaperChangeRemovalFlav of M;
					now M is carrying current-diaper-change-top-level;
					dislodge current-diaper-change-top-level;
					if current-diaper-change-top-level is diaper, DiaperAddictUp 1;
					if current-diaper-change-top-level is not diaper-stack, rule succeeds; [we remove diaper stack and put on new diaper in same turn to avoid loads of glitches]
			otherwise:
				say DiaperChangeRemovalFlav of M;
				if current-diaper-change-top-level is not diaper-stack, now M is carrying current-diaper-change-top-level;
				dislodge current-diaper-change-top-level;
				now current-diaper-change-top-level is temporarily-removed; [NPC will try to put this back on afterwards]
				if current-diaper-change-top-level is diaper, DiaperAddictUp 1;
				if current-diaper-change-top-level is not diaper-stack, rule succeeds; [we remove diaper stack and put on new diaper in same turn to avoid loads of glitches]
		otherwise if old-diaper is diaper and M is diaper change during cummies rewarding and the player is able to orgasm so soon and the number of worn chastity bond is 0: [player was wearing a diaper, what a good girl! she gets cummies]
			compute diaper change during cummies reward of M;
			rule succeeds;
		otherwise if M is diaper change during special ready: [the monster does something unique in the middle of a diaper change]
			compute diaper change during special of M;
			rule succeeds;
		if new-diaper is nothing: [If we just did a double diaper then we skip all this]
			say DiaperPowderFlav of M;
			if there is a worn diaper bag of holding or there is a worn baby diaper bag of holding, now new-diaper is a random dry unmessed disposable diaper carried by the player;
			if new-diaper is nothing, now new-diaper is a random eligible plentiful disposable diaper;
			if new-diaper is nothing, now new-diaper is a random eligible diaper;
			if new-diaper is nothing, now new-diaper is a random diaper; [failsafe]
			if new-diaper is not worn:
				let oldDiaperLeft be nothing;
				if old-diaper is diaper:
					let SD be a random off-stage soiled-diaper;
					if M is diaper leaving and (old-diaper is not messed or (diaper messing >= 6 and SD is soiled-diaper)):
						if old-diaper is diaper-stack:
							if debugmode is 1, say "Sorting out the removal of a diaper stack...";
							sort the list of stacked diapers in reverse order;
							repeat with OD running through the list of stacked diapers:
								if OD is messed and diaper messing >= 6 and SD is soiled-diaper:
									if debugmode is 1, say "[OD] is replaced by a soiled diaper item.";
									now oldDiaperLeft is SD;
									now SD is in the location of the player;
									DiaperPrint SD from OD;
									let SD be a random off-stage soiled-diaper;
								otherwise if OD is not messed:
									if debugmode is 1, say "[OD] is placed in the room.";
									now OD is in the location of the player;
									remove OD from the list of stacked diapers;
								otherwise:
									if debugmode is 1, say "[OD] can't be handled appropriately so isn't respawned.";
							only destroy diaper-stack;
						otherwise if old-diaper is messed:
							now oldDiaperLeft is SD;
							now SD is in the location of the player;
							DiaperPrint SD from old-diaper;
						otherwise:
							now old-diaper is in the location of the player;
							now oldDiaperLeft is old-diaper;
					if new-diaper is held or oldDiaperLeft is old-diaper:
						unless oldDiaperLeft is old-diaper, only destroy old-diaper;
						if M is diaper disciplining, summon new-diaper uncursed;
						otherwise summon new-diaper cursed;
					otherwise:
						if old-diaper is upgradable:
							if the upgrade-target of old-diaper is disposable diaper, now new-diaper is the upgrade-target of old-diaper;
						silently transform old-diaper into new-diaper;
				otherwise: [player wasn't wearing a diaper before]
					if M is diaper disciplining, summon new-diaper uncursed;
					otherwise summon new-diaper cursed;
					if old-diaper is messed knickers, only destroy old-diaper; [don't want the NPC to be carrying around messed knickers]
				if old-diaper is diaper:
					fully clean new-diaper;
					say DiaperChangeFlav of M;
					say DiaperChangeComment of M;
					if oldDiaperLeft is a thing and oldDiaperLeft is in the location of the player:
						if trashcan is worn:
							say "[BigNameDesc of M] drops [NameDesc of oldDiaperLeft] into [NameDesc of trashcan]!";
							increase the diaper-fill of trashcan by 1;
							only destroy oldDiaperLeft;
						otherwise:
							say DiaperDropFlav of M;
				otherwise:
					say DiaperDonateFlav of M;
					say DiaperDonateComment of M;
				if new-diaper is cursed and (strongCurses is 1 or the quest of new-diaper is no-clothing-quest), compute new quest of new-diaper;
			fully clean new-diaper;
			now new-diaper is sure;
			now new-diaper is identified;
			if M is diaper disciplining, now the diaper-duration of M is the diaper punishment length of M;
			trigger change-wisp-trigger;
		if old-diaper is diaper and M is diaper change complete cummies rewarding and the player is able to orgasm so soon and the number of worn chastity bond is 0:
			compute diaper change complete cummies reward of M;
		if M is human and M is intelligent and M is not matron and there is a worn tanto and the class of the player is vixen:
			if the player is getting unlucky:
				say "You were hoping to find an opening to surprise [NameDesc of M], but [he of M] never dropped [his of M] guard! [GotUnluckyFlav]";
			otherwise:
				let S be a random worn tanto;
				say "[BigNameDesc of M] [bold type]has let down [his of M] guard! [roman type]Do you want to surprise [him of M] with a [ShortDesc of S] to [his of M] neck?";
				if the player is consenting:
					say "You swing the tanto up, and now [NameDesc of M] has a blade to [his of M] neck, and is completely at your mercy.";
					if S is midnight tanto, transform S into loveheart tanto;
					let D be a random worn illusory kimono;
					if (diaper quest is 1 or there is a worn diaper) and D is not kimono-of-deception:
						if D is clothing, transform D into kimono-of-deception;
						class summon kimono-of-deception;
					otherwise if diaper quest is 0 and D is not kimono-of-distraction:
						if D is clothing, transform D into kimono-of-distraction;
						class summon kimono-of-distraction;
					if the player is able to speak, say "[variable custom style]'Surprise, sweetie.'[roman type][line break]";
					say "[BigNameDesc of M] snarls, suddenly completely at your mercy. [big he of M] lets go of your body, and holds [his of M] hands up in surrender.";
					now M is doing nothing special;
					compute defeat of M;
		if M is changing the player:
			repeat with C running through temporarily-removed diaper covers carried by M: [diaper covers need to go on first]
				if C is actually summonable:
					say "[BigNameDesc of M] replaces your [C].";
					layer C correctly;
					now C is worn by the player;
				otherwise:
					now C is not temporarily-unlocked; [failed to make them wear it; we don't want this flag hanging around forever]
					say "[BigNameDesc of M] drops your [C] on the ground.";
					now C is in the location of the player;
				now C is not temporarily-removed;
			repeat with C running through worn temporarily-unlocked diaper covers:
				let K be a random off-stage specific-key;
				if K is nothing or there is a specific-key covering C:
					say "[if M is intelligent][BigNameDesc of M] locks the padlock at the waistband of [NameDesc of C].[otherwise]The padlock at the waistband of [NameDesc of C] suddenly clicks shut![end if]";
					now C is locked;
					now C is not temporarily-unlocked;
				otherwise:
					compute M locking C with K;
			if M is diaper cover locking:
				let C be a random worn diaper cover;
				if C is clothing:
					if C is not locked:
						let K be a random off-stage specific-key;
						if K is a thing:
							compute M locking C with K;
				otherwise:
					let K be a random off-stage specific-key;
					if K is a thing:
						now C is a random diaper cover carried by M;
						if C is nothing:
							repeat with TC running through the tradableItems of M:
								if TC is diaper cover, now C is TC;
						if C is actually summonable:
							summon C uncursed;
							say "[BigNameDesc of M] puts a [C] on you!";
							compute M locking C with K;
			repeat with C running through temporarily-removed clothing carried by M:
				if C is actually summonable:
					say "[BigNameDesc of M] replaces your [C].";
					layer C correctly;
					now C is worn by the player;
				now C is not temporarily-removed;
				if C is temporarily-unlocked:
					let K be a random off-stage specific-key;
					if K is nothing or there is a specific-key covering C:
						say "[if M is intelligent][BigNameDesc of M] locks [NameDesc of C].[otherwise]With a click, it would appear that [NameDesc of C] is suddenly locked again![end if]";
						now C is locked;
						now C is not temporarily-unlocked;
					otherwise:
						compute M locking C with K;
			repeat with C running through worn crotch-displaced clothing:
				compute M replacing C;
				now C is not temporarily-displaced;
			repeat with C running through worn temporarily-unlocked clothing:
				let K be a random off-stage specific-key;
				if K is nothing or there is a specific-key covering C:
					say "[if M is intelligent][BigNameDesc of M] locks [NameDesc of C].[otherwise]With a click, it would appear that [NameDesc of C] is suddenly locked again![end if]";
					now C is locked;
					now C is not temporarily-unlocked;
				otherwise:
					compute M locking C with K;
			validate layers; [just in case anything fucky happened with clothing layers]
			increase the times-changed of M by 1;
			increase diaperChangeCount by 1;
			repeat with C running through diapers carried by M:
				only destroy C;
			if M is diaper change after special ready: [the monster does something unique after a diaper change and replacing other clothes]
				compute diaper change after special of M;
		if M is changing the player: [the above function may have hijacked what's going on]
			satisfy M;
			let vm be a random video-monitor in the location of the player;
			if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
				now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
				let T be the substituted form of "having your diaper changed."; [note that the video-event always needs to be a present participle]
				now the video-event of vm is T;
			compute unique diaper change effect of M;
			dislodge M;
			if debugmode > 0, say "[speech style of M]'I have changed you [times-changed of M] time[if times-changed of M is not 1]s[end if].'[roman type][line break]";
			if diaper quest is 1, progress quest of naughty-quest;
		rule succeeds;
	otherwise:
		say DiaperChangeStart of M;
		now M is grabbing the player;
		now M is changing the player;
		now the stance of the player is 1; [Just in case a change is triggered while the player was standing.]
		now old-diaper is nothing;
		rule succeeds.

To compute diaper change chastity cummies reward of (M - a monster):
	say "BUG - [NameDesc of M] has not had a scene coded for giving the player a diaper change orgasm whilst in chastity.";
	anally orgasm shamefully;
	diaperaddictup 1.

To compute diaper change during cummies reward of (M - a monster):
	say "BUG - [NameDesc of M] has not had a scene coded for giving the player a diaper change orgasm.";
	anally orgasm shamefully;
	diaperaddictup 1.

To compute diaper change during special of (M - a monster):
	say "BUG - [NameDesc of M] has not had a scene coded for giving the player a mid-diaper-change special interaction.".

To compute diaper change after special of (M - a monster):
	say "BUG - [NameDesc of M] has not had a scene coded for giving the player a post-diaper-change special interaction.".

To compute diaper change complete cummies reward of (M - a monster):
	say "[speech style of M]'[one of]You've been such a good baby recently, I think you need a little reward.'[or]Time for your squirt squirt, for being such a good baby!'[stopping][roman type][line break][BigNameDesc of M] starts to rub you through the front of your diaper. You soon feel a certain warmth rising, and you [if the sex addiction of the player > 12]sigh in glee and [otherwise]can't help but[end if] explode an orgasm into your new nappy.";
	vaginally orgasm shamefully; [This automatically gives diaper addiction because the player will be wearing a total protection diaper at this moment.]
	say "[BigNameDesc of M] pulls away, admiring [his of M] handiwork[one of].[line break][speech style of M]'If you keep being a good baby, you'll get more where that came from.'[roman type][line break][or].[stopping]";
	FavourDown M by 2.

To say DiaperChangeRemovalFlav of (M - a monster):
	say "[BigNameDesc of M] [if current-diaper-change-top-level is diaper]slowly pulls your [ShortDesc of current-diaper-change-top-level] away[otherwise]eases off your [ShortDesc of current-diaper-change-top-level][end if][if current-diaper-change-top-level is messed knickers]. Taking out several baby wipes, [he of M] gently but efficiently wipes your bottom down until it is completely clean[end if].".

To say DiaperPowderFlav of (M - a monster):
	say "".

To say DiaperChangeFlav of (M - a monster):
	say "From [DiaperSpace of M] [NameDesc of M] produces [if old-diaper is new-diaper]an identical (but clean) [ShortDesc of new-diaper][otherwise]a [ShortDesc of new-diaper][end if], which [he of M] swiftly puts underneath your bum and then fixes in place.".

To say DiaperDropFlav of (M - a monster):
	say "[big he of M] leaves the used diaper on the ground next to you.";
	if M is intelligent, say "[speech style of M]'[one of]Find a diaper pail for that, [please][or]I'll leave you to dispose of your own diapers[or]My job's done. Now go find somewhere to get rid of this[in random order].'[roman type][line break]";

To say DiaperDonateFlav of (M - a monster):
	say DiaperChangeFlav of M.

To say DoubleDiaperFlav of (M - a monster):
	say DoubleDiaperAnnounceFlav of M;
	say "From [DiaperSpace of M] [NameDesc of M] produces a [ShortDesc of new-diaper] and straps it on TOP of your [ShortDesc of old-diaper]!".

To say DoubleDiaperAnnounceFlav of (M - a monster):
	if M is intelligent:
		if M is double-diaper-committed, say "[speech style of M]'[if diaper-stack is worn][one of]Time for another layer[or]One more diaper should stop you from leaking any time soon[or]One more layer will help keep you from leaking[in random order][otherwise][one of]What's better than one diaper? Two diapers!'[or]This is what I do to heavy soilers... and naughty babies.'[or]You should know, this is something I only do to the most pathetic babies.'[in random order][end if][roman type][line break]";
		otherwise say "[BigNameDesc of M] [one of]looks like [he of M][']s about to change you[or]is about to remove your [ShortDesc of old-diaper] but then presses a hand against it, feeling just how squishy and thoroughly soaked it is,[in random order] and then seems to change [his of M] mind.[line break][speech style of M]'[one of]Actually... I COULD change you, OR... I have a better idea.'[or]Clearly you need more diapers than this to keep you from leaking.'[or]Actually, here's what we're going to do...'[in random order][roman type][line break]".

To say DoubleDiaperGlueFlav of (M - a monster):
	let N be the number of entries in the list of stacked diapers;
	say "[BigNameDesc of M] pulls out a tube of glue, and uses it to seal [if N is 0]the two diapers[otherwise]each of your [N + 1] diapers[end if] together.".

To say DoubleDiaperAfterFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Hahaha, that's perfect[or]Oh my, it fits even better than I imagined[or]I'm afraid you may be left with a bit of a waddle, haha[or]Haha, I wonder if you'll even be able to walk now[in random order]!'[roman type][line break]".

To say DiaperChangeComment of (M - a monster):
	if M is intelligent:
		if M is diaper disciplining and the diaper-duration of M <= 0, say "[speech style of M]'[one of]I'm afraid I'm going to have to insist you stay in diapers until you can prove to me that you can stay dry[or]That's better. Now make sure that you stay in diapers until I give you permission to return to big [boy of the player] panties[or]Well, that should do for now. And this is the only warning I'm going to give you: I will punish you if I catch you outside of diapers before you've proved to me that you can stay dry[or]That's a lot better, isn't it? Now make sure you're a good [boy of the player] and do NOT stop wearing diapers until you have proved that you have stopped having accidents[in random order].'[roman type][line break]";
		otherwise say "[speech style of M]'There we go, all clean!'[roman type][line break]".

To say DiaperDonateComment of (M - a monster):
	if M is intelligent:
		if M is diaper disciplining and the diaper-duration of M <= 0, say "[speech style of M]'[one of]And you'll wear diapers until I say that you have permission to wear grown-up panties again, or there'll be hell to pay!'[or]That's better. And if I catch you out of diapers before I've given you permission, you'll be in big trouble.'[or]There we go. And you don't want to know how I'll punish you if I catch you outside of diapers before I've told you that you're allowed.'[in random order][roman type][line break]";
		otherwise say "[speech style of M]'That's much better. All safe and padded up.'[roman type][line break]".

To decide which number is the diaper punishment length of (M - a monster):
	decide on 3.

To say DiaperSpace of (M - a monster):
	say "[if there is a worn diaper bag of holding and new-diaper is carried diaper]your [ShortDesc of random worn diaper bag of holding][otherwise if there is a worn baby diaper bag of holding and new-diaper is carried diaper]your [ShortDesc of random worn baby diaper bag of holding][otherwise]seemingly nowhere[end if]".

To say DiaperChangeStart of (M - a monster):
	say "[BigNameDesc of M] rolls you onto your back and pins you down with one strong arm.".

To say LockDeclarationFlav of (M - a monster) for (C - a diaper):
	if M is intelligent, say "[speech style of M]'[one of]Hold still now...'[or]One more little thing...'[in random order][roman type][line break]".
To say LockCommentFlav of (M - a monster) for (C - a diaper):
	if the diaper-duration of M > 0, say "[speech style of M]'[one of]Just to make sure you don't take this off before you're allowed.'[or]Just to make sure you don't cheat and get a change without me.'[or]If you ever want that removed, you'd better learn to hold in your tinkles!'[in random order][roman type][line break]";
	otherwise say "[speech style of M]'[one of]I am in charge of when you get a change now!'[or]If you want a change, you'd better find me later and ask nicely, haha!'[in random order][roman type][line break]".

To compute unique diaper change effect of (M - a monster):
	do nothing.

Section - Spanking

spankContinue is a number that varies.

To compute spanking of (M - a monster):
	if M is not spanking the player:
		now the sex-length of M is 0;
		say SpankingDeclarationFlav of M;
		if there is a worn diaper, compute automatic state check of a random worn diaper;
		if the player is able to speak and mercyskill of the player is 1 and diaper quest is 1, say SpankingMercyBeg of M;
		if M is willing to spank gently and diaper quest is 1 and the player is able to speak and the mercyskill of the player is 1 and a random number between 1 and 10 > 9 - the adult appearance of the player:
			say SoftSpankingFlav of M;
		otherwise:
			now the sex-length of M is the spanking length of M;
			if the health of M < the maxhealth of M, increase the sex-length of M by 1;
			if the health of M < the maxhealth of M / 3, increase the sex-length of M by 1;
			now M is grabbing the player;
			now M is spanking the player;
			if the player is able to speak and mercyskill of the player is 1 and diaper quest is 1, say SpankingMercyRejectionFlav of M;
			say SpankingStartFlav of M;
	if diaper messing >= 7:
		let D be a random soiled-diaper in the location of the player;
		if D is nothing, now D is a random messed knickers in the location of the player;
		if D is a thing, compute M face smushing with D;
	if the latex-transformation of the player > 5:
		say "You hardly feel anything thanks to your rubbery butt cheeks.";
	otherwise if the sex-length of M > 0:
		let C be a random top level ass protection clothing;
		if C is displacable clothing and M is eager to enhance the spanking:
			compute M spank displacing C;
		say SpankingFlav of M;
		compute strength (the spank strength of M) spanking;
		if spankContinue is 1, increase the sex-length of M by 1;
		now spankContinue is 0;
	decrease the sex-length of M by 1;
	if the sex-length of M <= 0:
		say SpankingAftermath of M;
		say SpankingAfterFlav of M;
		dislodge M;
		FavourUp M;
		if diaper messing is 3 and there is worn messed knickers:
			compute diaper change of M;
		unless M is changing the player, bore M.

Definition: a monster is willing to spank gently: decide yes.
To decide which number is the spankExtension of (M - a monster): [The chance of them increasing the duration of the spank due to resistance.]
	decide on a random number between 1 and 3.

To decide which number is the spanking length of (M - a monster):
	decide on a random number between 2 and 4.

To decide which number is the spank strength of (M - a monster):
	decide on 2 + (the difficulty of M / 6).

Definition: a monster is eager to enhance the spanking:
	if a random number between 0 and 2 < the number of ass covering clothing, decide yes;
	decide no.

To compute (M - a monster) spank displacing (C - a clothing):
	compute M displacing C.

To say SpankingMercyBeg of (M - a monster):
	say "[variable custom style]'";
	if the adult appearance of the player is 0:
		say "[one of]Please, [if the delicateness of the player > 12]I'm only little, [end if]I didn't mean it!'[or]I'm so sorry, I [if the delicateness of the player > 14]was too much of a baby to[otherwise]didn't[end if] know what I was doing!'[or]Please don't hurt me, I'm so very very sorry! I'll be a good [if the delicateness of the player > 10]little [end if][boy of the player] from now on, I promise!'[in random order]";
	otherwise if the adult appearance of the player < 3:
		say "[one of]No please not on my [if the delicateness of the player > 15]bum-bum[otherwise if the delicateness of the player > 7]bottom[otherwise]buttocks[end if]! I'm still too sore from my last spanking!'[or]I'm so sorry, I will [if the delicateness of the player > 13]try to [end if]behave more grown up if you are nice to me!'[or]Nooo! I promise I'm a grown up really! If you [if the delicateness of the player > 10]don't make me cry[otherwise]forgive me this once[end if] I can prove it to you from now on!'[in random order]";
	otherwise:
		say "[one of][if the delicateness of the player > 13]Waaah! Can't you tell from looking at me that I'm a big [boy of the player]?'[otherwise]Can't you see I'm an adult?! This is inappropriate!'[end if][or]Please, this is all a big misunderstanding, I'm [if the delicateness of the player > 11]supposed to be[otherwise]actually[end if] a grown up! You have to believe me!'[or][if the delicateness of the player > 11]Please give me a chance to[otherwise]Can't we[end if] settle this like adults? Please just give me one chance!'[in random order]";
	say "[roman type] You beg [NameDesc of M] for mercy.".

To say SpankingMercyRejectionFlav of (M - a monster):
	say "[if M is intelligent][speech style of M]'[one of]You're not getting off that easy this time.'[or]That line won't work on me today, young Miss.'[or]It's not a proper punishment if you don't cry.'[in random order][roman type][line break][end if][BigNameDesc of M] ignores your pleas.".

To say SoftSpankingFlav of (M - a monster):
	say "[BigNameDesc of M] hesitates, and then delivers a few weak blows to your [buttcheeks] with [his of M] hand. [if there is a worn diaper]Your [random worn diaper] softens the blows even further, so that they just feel like gentle pats. [end if][line break][speech style of M]'I guess that'll do for now. Just this once.'[roman type][line break][BigNameDesc of M] turns away and lets you go.".

To say SpankingStartFlav of (M - a monster):
	say "[BigNameDesc of M] pushes down on your back with one powerful hand to keep you still!".

To say SpankingDeclarationFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]I think you deserve a good spanking.'[or]Time for your spanking, little one!'[at random][roman type][line break]".

To say SpankingFlav of (M - a monster):
	say "[BigNameDesc of M] delivers [one of]two[or]three[or]four[as decreasingly likely outcomes] powerful blows to your [buttcheeks] with [his of M] hand.".

To say DiaperSoftenFlav of (M - a monster):
	say "[one of]Your [random worn diaper] softens the blows but can't protect you completely - [he of M] is a very hard hitter! [or][DiaperSoftenShortFlav of M][stopping]".

To say DiaperSoftenShortFlav of (M - a monster):
	say "[one of]Your [random worn diaper] helps to soften the blow. [or][or][cycling]".

To say SpankingAftermath of (M - a monster):
	say "[if the delicateness of the player > 14]By the end of your spanking you are bawling your eyes out, begging [him of M] to stop and pleading with [him of M] to give you another chance to be a good little [boy of the player][otherwise if the delicateness of the player > 8]By the end of your spanking you are crying your eyes out, begging [him of M] to [one of]stop[or]be merciful[at random][otherwise]You are unable to prevent a solitary tear from escaping your eye as you [one of]grit your teeth and try to[or]struggle to[or]try your best to[or]focus your mind to help[at random] tolerate the lingering pain[end if].".

To say SpankingAfterFlav of (M - a monster):
	if diaper messing is 3 and there is worn messed knickers:
		do nothing;
	otherwise if there is worn messed knickers:
		say "[if M is intelligent][speech style of M]'[one of]You can find someone else to change you - I'm done with you for now[or]I think you deserve to stew in that mess for a little while longer[or]It's almost as if you like being messy. Fine, I'm leaving you like that[in random order].'[roman type][line break][end if][BigNameDesc of M] seems satisfied and leaves you alone to recover.";
	otherwise:
		say "After this [he of M] seems satisfied, and gives you a cheeky kiss on your sore [if asshole is lewdly exposed]butt cheek[otherwise if there is a worn diaper]bottom through your padding[otherwise]bottom[end if] before leaving you to recover.".

To say SpankingReactionFlav of (M - a monster):
	if a random number between 1 and 3 > 1 and the player is able to speak:
		say "[variable custom style]'[one of]Owww!'[or]Ooof!'[or]Ouch!'[or]Ouchies!'[as decreasingly likely outcomes][roman type][line break]";
	otherwise:
		if the delicateness of the player > 7, say "[second custom style]Ooh, I've been a bad [boy of the player]...[if the delicateness of the player < 10][line break][first custom style]What the fuck, did I just think that?![end if][roman type][line break]".

Section - Masturbating

[To decide which number is male orgasm chance:
	let O be a random number between 4 and 8;
	if the player is very horny, decrease O by 2;
	if the player is horny, decrease O by 2;
	if the size of penis > 7, increase O by 1;
	if the player is extremely horny:
		if O > 5, now O is 1;
		otherwise now O is 2;
	if debugmode > 0, say "O is [O]";
	decide on O.]

masturbation-swimming is initially false.

To compute masturbation of (M - a monster):
	if M is not masturbating the player:[fixes all the masturbation related stuff before masturbation]
		initiate masturbation of M;
	if the latex-transformation of the player > 3:
		say "You hardly feel anything thanks to your rubbery genitals.";
	otherwise if the sex-length of M > 0:
		progress masturbation of M;[handles a turn of masturbation]
	decrease the sex-length of M by 1;
	if the sex-length of M <= 0:
		if masturbation-swimming is true:
			compute bathing;
			now masturbation-swimming is false;
		compute masturbation aftermath of M; [if the player came or the monster lost interest, finish up]
	otherwise if masturbation-swimming is true:
		compute bathing.

To initiate masturbation of (M - a monster):
	say MasturbationDeclarationFlav of M;
	if there is a worn diaper, compute automatic state check of a random worn diaper;
	now the sex-length of M is the masturbation length of M;
	now M is grabbing the player;
	now M is masturbating the player;
	say MasturbationStartFlav of M.

To say MasturbationDeclarationFlav of (M - a monster):
	if M is intelligent:
		if there is a worn messed knickers:
			say "[speech style of M]'[one of]Only the naughtiest perverts could be horny with a nasty stinky bum-bum...'[or]Is stewing in your own mess making you horny? I wonder...'[at random][roman type][line break]";
			if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
		otherwise if there is a worn diaper:
			say "[speech style of M]'[one of]You're looking a little flustered there, baby. Let's see what I can do about that...'[or]Are you feeling good inside your nappy? Let [daddy of M] help with that...'[at random][roman type][line break]".

To say MasturbationStartFlav of (M - a monster):
	say "[BigNameDesc of M] pushes down on your back with one powerful hand to keep you still, and places [his of M] other hand over [if there is a worn diaper]the crotch of your diaper[otherwise if the player is herm]your [genitals][otherwise if the player is possessing a vagina]your [vagina][otherwise if the player is possessing a penis]your [ShortDesc of penis][otherwise]your crotch[end if]!".

To progress masturbation of (M - a monster):
	say MasturbationFlav of M;
	stimulate vagina from M;
	if refractoryperiod > 0, now the sex-length of M is 0;[if the player came, the monster is done]
	compute unique masturbation effect of M.

To compute unique masturbation effect of (M - a monster):
	let D be a random worn perceived messed knickers;
	if D is a thing:
		say "[one of]The gross squishiness of your messy [ShortDesc of D] being rubbed makes you shudder as it oozes around your loins.[or][or][cycling]";
		SlowGrossOut 9.

To decide which number is the masturbation length of (M - a monster):
	decide on a random number between 4 and 7.

To decide which number is the masturbation skill of (M - a monster):
	decide on the difficulty of M * 100.

To say MasturbationFlav of (M - a monster):
	if there is a worn diaper, say DiaperMasturbationFlav of M;
	otherwise say VanillaMasturbationFlav of M.

To say VanillaMasturbationFlav of (M - a monster):
	say "[if the player is possessing a vagina][BigNameDesc of M] rubs your [vagina] fervently![otherwise if the player is possessing a penis][BigNameDesc of M] strokes your [ShortDesc of penis] fervently![end if]".

To say DiaperMasturbationFlav of (M - a monster):
	let D be a random worn diaper;
	say "[BigNameDesc of M] rubs passionately at the front of your [MediumDesc of D].".

[The purpose of this function is simply to allow us to override the default flavour for female orgasms, and of course to do the same for male orgasms.]
To compute masturbation climax of (M - a monster):
	say DefaultOrgasmFlav;
	if there is a worn diaper, compute diaper masturbation climax of M;
	otherwise compute vanilla masturbation climax of M;
	say "Being made to orgasm in this way was a deeply submissive experience.";
	DelicateUp 1.

To compute diaper masturbation climax of (M - a monster):
	let D be a random worn diaper;
	if D is perceived messed:
		say "The fact that [NameDesc of M] was able to make you orgasm while wearing a messy diaper makes you feel like a disgusting pervert.";
		GrossOut 9;
	otherwise if D is perceived wet:
		say "The fact that [NameDesc of M] was able to make you orgasm while wearing a wet diaper makes you feel rather deviant.";
		GrossOut 5.

To compute vanilla masturbation climax of (M - a monster):
	let K be a random worn knickers;
	if K is perceived messed knickers:
		say "The fact that [NameDesc of M] was able to make you orgasm while wearing messy panties makes you feel like a depraved pervert.";
		GrossOut 10;
	otherwise if K is perceived wet knickers:
		say "The fact that [NameDesc of M] was able to make you orgasm while wearing wet underwear makes it feel extra-dirty.";
		GrossOut 4.


To compute masturbation aftermath of (M - a monster):
	say MasturbationAfterFlav of M;
	dislodge M;
	FavourUp M;
	say MasturbationAftermath of M;
	bore M.

To say MasturbationAftermath of (M - a monster):
	if there is a worn diaper, say DiaperMasturbationAftermath of M;
	otherwise say VanillaMasturbationAftermath of M.

To say DiaperMasturbationAftermath of (M - a monster):
	say "[variable custom style]";
	if refractoryperiod > 0, say "[if the diaper addiction of the player < 6]I can't believe [he of M] was able to make me cum through my diaper...[otherwise if the diaper addiction of the player < 11]Am I really starting to enjoy the feeling of diapers this much?[otherwise if the diaper addiction of the player < 16]It feels even better when it's through a diaper![otherwise]Mmmm, thank you [daddy of M]...[end if]";
	otherwise say "[if the diaper addiction of the player < 5]There's no way I'm going to let someone make me cum in such a disgusting way![otherwise if the diaper addiction of the player < 10 and the player is a bit horny]I can't believe [he of M][']s making me feel so good this way...[otherwise if the diaper addiction of the player < 10]I can still resist this much. For now...[otherwise if the diaper addiction of the player < 15]Ooh, why did [he of M] stop?![otherwise][daddy of M] always makes me feel so good![end if]";
	say "[roman type][line break]".

To say VanillaMasturbationAftermath of (M - a monster):
	say "[variable custom style]'That was pretty messed up!'[roman type][line break]".

To say MasturbationAfterFlav of (M - a monster):
	say "After this [he of M] seems satisfied, and [if refractoryperiod > 0]flexes [his of M] wrist muscles in pride before leaving you to recover.[otherwise if the player is a bit horny][MasturbationTeaseFlav of M][otherwise]leaves you alone.[end if]".

To say MasturbationTeaseFlav of (M - a monster):
	if M is intelligent, say "smiles as [he of M] sees your flustered face.[line break][speech style of M]'[one of]Aww, is the little baby all hot and bothered under [his of the player] nappy? I think I'll leave you that way.'[or]I guess you'll have to finish yourself off if you want release.'[or]I think I'll leave you like that, all hot and flustered, desperate for a Mommy or Daddy to finish you off.'[or]That's right, I'm stopping there. No cummies for you today, hah!'[in random order][roman type][line break]";
	otherwise say "leaves you alone with your arousal.".

Section - Enema

To compute enema of (M - a monster):
	if M is not enema-filling the player:
		compute enema start of M;
	say EnemaFlav of M;
	Assfill (belly limit / 4) water;
	decrease the sex-length of M by 1;
	if the sex-length of M <= 0 and M is enema-filling the player: [Sometimes the monster might move from one punishment to another]
		say EnemaAftermath of M;
		dislodge M;
		replace any buttplugs;
		if the number of sex toy filling asshole is 0 and M is eager to plug an enema, compute enema plugging of M;
		replace any chastity;
		replace any diapers;
		replace any clothes;
		say EnemaAfterFlav of M;
		let vm be a random video-monitor in the location of the player;
		if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
			now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
			let T be the substituted form of "being given an enema."; [note that the video-event always needs to be a present participle]
			now the video-event of vm is T;
		satisfy M.

To compute enema start of (M - a monster):
	now the sex-length of M is the enema quarts of M;
	say EnemaDeclarationFlav of M;
	compute M removing all ass protection;
	now M is grabbing the player;
	now M is enema-filling the player;
	now M is penetrating asshole;
	say EnemaStartFlav of M.

To decide which number is the enema quarts of (M - a monster):
	if tutorial is 1, decide on 3;
	decide on a random number between 1 and 3.

Definition: a monster (called M) is eager to plug an enema:
	if tutorial is 1, decide no;
	if the enema plug reluctance of M <= 0, decide no;
	if M is intelligent and a random number between 1 and the enema plug reluctance of M is 1, decide yes;
	decide no.

To decide which number is the enema plug reluctance of (M - a monster):
	decide on 4. [Set this to 0 to have the monster never plug after an enema]

To say EnemaDeclarationFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'Hmm, [one of]I think [sex-length of M] quart[if the sex-length of M > 1]s[end if] should do...'[or][if the sex-length of M is 1]I guess I'll let you off with one quart this time.'[otherwise]I reckon you deserve [sex-length of M] quarts this time.'[end if][at random][roman type][line break]".

To say EnemaStartFlav of (M - a monster):
	say "[BigNameDesc of M] pulls [if the sex-length of M is 1]a full enema syringe[otherwise][sex-length of M] full enema syringes[end if] [EnemaSpace of M], [one of]grinning widely[or]smirking vindictively[or]frowning with cold determination[at random].".

To say EnemaSpace of (M - a monster):
	say "out of nowhere".

To say EnemaFlav of (M - a monster):
	say "[BigNameDesc of M] takes [if the water volume of belly is 0 and the sex-length of M is 1]the[otherwise if the water volume of belly is 0]a[otherwise]another[end if] syringe and [one of]pushes[or]pokes[or]eases[at random] the end into your [asshole]. As [he of M] [one of]depresses[or]forces in[at random] the plunger, [one of]you can feel the cold water filling your belly[or]the cold water flows steadily into your body[or]you feel the cool water gurgle as it makes its way into your belly[or]the water has nowhere to go except up your [asshole] and into your intestines[or]the cold water fills your gut[or]you wince, the cold water making you feel uncomfortable as it travels deeper and deeper inside of you[at random].".

To say EnemaAftermath of (M - a monster):
	say "[BigNameDesc of M] pulls the enema syringe from your [asshole]. You immediately feel your stomach gurgle ominously.".

To say EnemaAfterFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Feeling full? Good. Now keep that in for as long as you can.'[or]Now trot along. [if there is a worn total protection diaper]Aren't you glad that you're wearing a diaper?'[otherwise]If I were you, I'd find a toilet or a diaper before that all comes out...'[end if][or]That's better. Naughty babies like you don't get the privilege of getting to control their bodily functions.'[or]Aww, it looks like the little baby has a full tummy. [big he of the player] better find somewhere to let it out soon...'[at random][roman type][line break]".

To compute enema plugging of (M - a monster):
	let P be a random off-stage plug;
	now the size of P is the openness of asshole;
	if the size of P < 9, increase the size of P by 1;
	if M is intelligent, gluify P;
	otherwise now P is cursed;
	say EnemaPlugDeclarationFlav of M;
	compute M buttplugging with P;
	say EnemaPlugAfterFlav of M.

To say EnemaPlugDeclarationFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Hmm, actually, I'm not sure I trust you to keep this in for long enough on your own. How about this...'[or]Hmm, maybe you need some help controlling yourself?'[or]I've been waiting for a good opportunity to use this magical item I recently obtained. Let's make your situation even more interesting...'[at random][roman type][line break]".

To say EnemaPlugAfterFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]There we go, much better!'[or]Uh-oh, I wonder how that's going to feel in a few minutes?'[or]Don't worry, the curse should lift itself just as you fully lose control of your own bodily functions!'[at random][roman type][line break]".

Section - Forcefeed

A monster has a number called chosen-forcefeed-round.
[
HERE'S HOW YOU CREATE A FORCEFEED SCENE FOR YOUR NPC:

Simple Version - Just create two functions, with X different possible scenes

To compute forcefeed round (N - a number) of (M - YOUR NPC HERE):
	say "[one of]FEED SCENE 1[or]FEED SCENE 2[or]FEED SCENE X[in random order]";
	StomachFoodUp 1;

To decide which number is the forcefeed-length of (M - YOUR NPC HERE):
	decide on X.

------------------

Complex Version - Create X varied scenes and let the engine choose random ones (always in descending numerical order)

To compute forcefeed round (N - 1) of (M - YOUR NPC HERE):
	say "FEED SCENE 1";
	FEED SCENE 1 EFFECTS;

To compute forcefeed round (N - 2) of (M - YOUR NPC HERE):
	say "FEED SCENE 2";
	FEED SCENE 2 EFFECTS;

To compute forcefeed round (N - X) of (M - YOUR NPC HERE):
	say "FEED SCENE X";
	FEED SCENE X EFFECTS;

To decide which number is the forcefeed-length of (M - YOUR NPC HERE):
	decide on a random number between ??? and ???. ((each ??? must be between 1 and X inclusive))

To decide which number is the max-forcefeed-length of (M - YOUR NPC HERE):
	decide on X.

]

pet-food-contents is a text that varies.
pet-food-liquid is a liquid-object that varies.

To compute forcefeed of (M - a monster):
	if M is intelligent and M is not feeding the player and there is a worn locked tearable gag:
		say PetForcefeedDeclarationFlav of M;
		now M is grabbing the player;
		now M is feeding the player;
		follow the monster removing gag rule; [If there's a gag, let's take it off for now]
		now pet-food-liquid is water;
		if a random number between 1 and 2 is 1, now pet-food-liquid is milk;
		if a random number between 1 and 2 is watersports fetish, now pet-food-liquid is urine;
		if diaper messing < 3 or the stomach-food of the player > 1:
			now pet-food-contents is the substituted form of "[variable pet-food-liquid]";
		otherwise if the player is thirsty:
			now pet-food-contents is the substituted form of "[one of]mushy banana[or]mushy peas[or]soggy bread[in random order] in [variable pet-food-liquid]";
		otherwise:
			now pet-food-contents is the substituted form of "[one of]plain rice[or]mushy peas[in random order]";
		say PetForcefeedStartFlav of M;
		say "Do you lap it up?";
		if the player is bimbo consenting:
			say "You clench your eyes shut and [if diaper messing < 3 or the stomach-food of the player > 1]drink[otherwise]eat[end if] from the pet bowl. [moderateHumiliateReflect]";
			if diaper messing < 3 or the stomach-food of the player > 1 or the player is thirsty:
				compute slightly addictive swallowing of pet-food-liquid by 2;
			if diaper messing >= 3 and the stomach-food of the player <= 1:
				StomachFoodUp 2;
			replace any gags;
			let vm be a random video-monitor in the location of the player;
			if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
				now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
				let T be the substituted form of "being forced to eat out of a dog bowl."; [note that the video-event always needs to be a present participle]
				now the video-event of vm is T;
			satisfy M;
		otherwise:
			say "You refuse to consume this stuff out of a pet bowl!";
			say "[speech style of M]'Bad [if the class of the player is puppygirl]doggy[otherwise if the class of the player is catgirl]kitty[otherwise]pet[end if]!'[roman type][line break]";
			compute angry punishment of M;
			say "[BigNameDesc of M] loses interest for now.";
			bore M;
	otherwise:
		if M is not feeding the player:
			compute forcefeed start of M;
		progress the forcefeeding of M;
		let S be the chosen-forcefeed-round of M;
		compute forcefeed round S of M;
		if the sex-length of M <= 0:
			dislodge M;
			if M is in the location of the player:
				say ForcefeedAftermath of M;
				say ForcefeedAfterFlav of M;
				replace any gags;
				let vm be a random video-monitor in the location of the player;
				if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
					now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
					let T be the substituted form of "being fed like a baby."; [note that the video-event always needs to be a present participle]
					now the video-event of vm is T;
			if M is not grabbing the player, satisfy M. [this allows for us to have transitioned into another punishment during the aftermath]

To compute forcefeed start of (M - a monster):
	now the sex-length of M is the forcefeed-length of M;
	now the chosen-forcefeed-round of M is the max-forcefeed-length of M + 1; [because we always subtract at least 1 before the first forcefeed]
	say ForcefeedDeclarationFlav of M;
	now M is grabbing the player;
	now M is feeding the player;
	follow the monster removing gag rule; [If there's a gag, let's take it off for now]
	say ForcefeedStartFlav of M.

To decide which number is the forcefeed-length of (M - a monster):
	decide on 3.

To decide which number is the max-forcefeed-length of (M - a monster): [Set this to however high the NPC's forcefeed rounds go. It shouldn't be less than their forcefeed-length.]
	decide on the forcefeed-length of M.

[
Let's imagine that we are on chosen-forcefeed-round 6 and we have 3 rounds of feeding left.
So we want to decrease chosen-forcefeed-round by at least 1, and no more than 3 (saved in the below function as N), since we need to at the very least be able to go 3 > 2 > 1 in the last 3 rounds of feeding.
Rather than completely random, we choose a random number between 1 and N squared and then apply square root to give us a nice logarithmic probability curve, to make it rarer that we subtract the maximum.

And just for my sanity, let's look at the edge cases to show that nothing super ridiculous should ever happen:
Chosen-forcefeed-round = 2, sex-length = 1; N = 1; S = 1; sex-length is reduced and so then we exit forcefeeding.
Chosen-forcefeed-round = 1, sex-length = 1; N = 0; S = 1; sex-length is reduced and so then we exit forcefeeding.
]
To progress the forcefeeding of (M - a monster):
	let N be the chosen-forcefeed-round of M - the sex-length of M; [This is the maximum we can subtract because we need to have the sex-length of M left over at the end]
	let S be the square root of (a random number between 1 and (N * N));
	decrease the chosen-forcefeed-round of M by S;
	decrease the sex-length of M by 1.

To say ForcefeedPissDeclarationFlav of (M - a monster):
	say "[speech style of M]'[one of]I've prepared a special drink for your din-dins!'[or]Here you go baby, today your juice drink is nice and warm and straight from the tap...'[in random order][roman type][line break]".

To say PetForcefeedDeclarationFlav of (M - a monster):
	say "[speech style of M]'Here, pet! It's time for your yum-yums.'[roman type][line break]".

To say ForcefeedDeclarationFlav of (M - a monster):
	say "[speech style of M]'[one of]It looks like it's time for your din-dins!'[or]Babies need to eat and drink to keep up their strength... and to keep their bowels moving.'[in random order][roman type][line break]".

To say ForcefeedPillDeclarationFlav of (M - a monster):
	say "[speech style of M]'[one of]This is good for your health, I promise...'[or]This will keep your bowels moving!'[then at random][roman type][line break]".

To say PetForcefeedStartFlav of (M - a monster):
	say "[BigNameDesc of M] slides a bowl of [pet-food-contents] underneath your chin.".

To say ForcefeedStartFlav of (M - a monster):
	say "[BigNameDesc of M] takes you onto [his of M] lap, your back pressing into [his of M] chest, and holds you very tightly. You won't be able to escape now.".

To decide which number is breast-milk-this-time:
	if the class of the player is catgirl, decide on 1;
	decide on the remainder after dividing time-turns by 2.

To compute forcefeed round (N - a number) of (M - a monster):
	if N is 1 and M is willing to forcefeed pills:
		if M is intelligent, say ForcefeedPillDeclarationFlav of M;
		say "[BigNameDesc of M] pushes a small white pill into your mouth and forces you to swallow it. [one of]Almost immediately[or]Once again[stopping] you feel that your stomach is more... active. It feels like it's digesting its contents at double speed!";
		DigestionTimerUp 600;
	otherwise:
		say "[BigNameDesc of M] [one of]shoves[or]forces[or]crams[in random order] ";
		if diaper messing >= 3 and a random number between 1 and diaper lover > 1 and (the player is not thirsty or the stomach-food of the player < the stomach-liquid of the player):
			say "[one of]a large banana[or]a candy bar[or]a handful of marshmallows[or]a cookie[in random order] into your mouth. You are forced to chew and swallow it all down.";
			StomachFoodUp 1;
		otherwise:
			say "a baby bottle full of [if breast-milk-this-time is 1]warm breast milk[otherwise][one of]apple juice[or]orange juice[or]cold coffee[in random order][end if] into your mouth. You are forced to suck and swallow it all down.";
			if breast-milk-this-time is 1, StomachMilkUp 2;
			otherwise StomachUp 2.

To say ForcefeedAftermath of (M - a monster):
	say "After you're finished, [he of M] lifts you off of [his of M] lap and drops you down onto the floor on your [buttcheeks].".

To say ForcefeedAfterFlav of (M - a monster):
	say "[speech style of M]'[one of]What a good [boy of the player]! Off you trot now!'[or]There you go, all nice and full now I'm sure?'[or]That was [tasty], wasn't it? Good [boy of the player].'[in random order][roman type][line break]".

To compute potion forcefeed of (M - a monster):
	let T be a random carried forcefeedable thing;
	if T is a thing:
		compute M forcefeeding T;
	otherwise: [should never happen]
		say "[speech style of M]'That's strange, I could have sworn that I saw something I could feed you... Oh well. Call this a freebie, I guess.'[roman type][line break]";
		satisfy M.

To compute (M - a monster) forcefeeding (T - a thing):
	now potion-forcefeed-cooldown is a random number between 100 and 300;
	say PotionForcefeedDeclarationFlav of M for T;
	say PotionForcefeedFlav of M for T;
	compute potion forcefeed of T;
	if the player is able to speak, say PotionForcefeedReactionFlav of T.

To say PotionForcefeedDeclarationFlav of (M - a monster) for (T - a thing):
	if T is clothing, say "[speech style of M]'[one of]What's this? A snack you're saving for later? Why not now!'[or]It's about time you ate this, don't you think?'[in random order][roman type][line break]";
	otherwise say "[speech style of M]'[one of]If you're carrying this around, you might as well [if T is alchemy product or T is bottle]drink[otherwise]eat[end if] it!'[or]Why are you carrying this [ShortDesc of T] around, huh? You must want to [if T is alchemy product or T is bottle]drink[otherwise]eat[end if] it!'[in random order][roman type][line break]".

To say PotionForcefeedFlav of (M - a monster) for (T - a thing):
	if T is clothing, say "[BigNameDesc of M] rips open [if the used condoms of T is 1]the used condom[otherwise]one of the used condoms[end if] pinned to your [NameDesc of T] and, gripping you by the throat, squeezes the [semen] into your mouth!";
	otherwise say "[BigNameDesc of M] grips you by the neck, then takes [NameDesc of T] and forces the contents down your throat!".

To compute potion forcefeed of (T - a thing):
	do nothing.
To compute potion forcefeed of (T - a clothing):
	compute condom eating of T.
To compute potion forcefeed of (T - an alchemy product):
	StomachUp 1;
	compute alchemy product effect of T;
	destroy T.
To compute potion forcefeed of (T - a bag lunch):
	compute bagluncheat of T.
To compute potion forcefeed of (T - a bottle):
	if the fill-colour of T is not creamy and the fill-colour of T is not golden and the fill-colour of T is not white and the fill-colour of T is not murky, StomachUp 2;
	compute drinking T;
	DoseDown T.

To say PotionForcefeedReactionFlav of (T - a thing):
	say "[variable custom style]'Eurgh, FUCK!'[roman type][line break]".

Section - Suppository

To compute suppository of (M - a monster):
	compute suppository prep of M;
	say SuppositoryFlav of M;
	increase suppository by the suppository strength of M;
	say SuppositoryAftermath of M;
	say SuppositoryAfterFlav of M;
	replace any buttplugs;
	unless M is grabbing the player:
		replace any chastity;
		replace any diapers;
		replace any clothes;
		let vm be a random video-monitor in the location of the player;
		if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
			now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
			let T be the substituted form of "having a suppository pushed into your bottom."; [note that the video-event always needs to be a present participle]
			now the video-event of vm is T;
		satisfy M. [Sometimes a suppository will combo straight into a diaper change, e.g. the adult baby slave]

To compute suppository prep of (M - a monster):
	say "[SuppositoryDeclarationFlav of M]";
	compute M removing all ass protection.

To decide which number is the suppository strength of (M - a monster):
	decide on 5.

To say SuppositoryDeclarationFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'I've got just the thing for [if the health of M < the maxhealth of M]naughty babies[otherwise if the player is not incontinent]big babies that are too confident of their potty training[otherwise]someone[end if] like you!'[roman type][line break]".

To say SuppositoryFlav of (M - a monster):
	say "[BigNameDesc of M] takes what looks like a small rubber bullet and pushes it into your [asshole]. Before you can stop it, it has travelled upwards and is lost inside your body.".

To say SuppositoryAftermath of (M - a monster):
	say "[if the player is feeling full]You immediately feel your tummy begin to cramp. Uh-oh...[otherwise]You have a feeling you know how this story is going to end...[end if]".

To say SuppositoryAfterFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'Don't worry, I'm not planning to stick around to witness the [']fireworks[']...'[roman type][line break]".


Section - Confiscation

To compute confiscate of (M - a monster):
	let C be a random confiscatable clothing;
	say ConfiscationDeclarationFlav of M on C;
	compute M confiscating C;
	say ConfiscationReaction of M on C;
	say ConfiscationAfterFlav of M on C;
	let vm be a random video-monitor in the location of the player;
	if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
		now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
		let T be the substituted form of "having your adult clothes confiscated."; [note that the video-event always needs to be a present participle]
		now the video-event of vm is T;
	satisfy M.

To say ConfiscationDeclarationFlav of (M - a monster) on (C - a clothing):
	if M is intelligent, say "[speech style of M]'[if C is plentiful accessory]Where did you get this jewellery, little one? Babies can't be trusted with expensive items like these. I'll have to confiscate it.'[otherwise if C is equippable]What are you doing handling something this dangerous? Little kids can't be trusted to not hurt themselves. I'll have to take it off of you.'[otherwise]This is not clothing for babies! I'm confiscating it.'[end if][roman type][line break]".

To compute (M - a monster) confiscating (C - a clothing):
	say ConfiscationFlav of M on C;
	now M is carrying C.

To say ConfiscationFlav of (M - a monster) on (C - a clothing):
	say "[BigNameDesc of M] [if C is worn]pulls your [C] from your [body area of C][otherwise]grabs your [C] off of you[end if].".

To say body area of (C - a clothing):
	say "[if C is hand ready]hand[otherwise]body[end if]".
To say body area of (C - a ring):
	say "finger".
To say body area of (C - a bracelet):
	say "wrist".
To say body area of (C - a necklace):
	say "neck".
To say body area of (C - a neckwear):
	say "neck".
To say body area of (C - a shoes):
	say "feet".
To say body area of (C - a stockings):
	say "legs".
To say body area of (C - a trousers):
	say "legs".
To say body area of (C - a bra):
	say "chest".
To say body area of (C - a headgear):
	say "head".

To say ConfiscationReaction of (M - a monster) on (C - a clothing):
	say "[variable custom style][if the player is not able to speak][muffled sounds][otherwise if the player is feeling dominant]'[one of]Hey, that's mine!'[or]Hey, I need that!'[or]Give that back!'[in random order][otherwise if the player is not feeling submissive]'[one of]Oi!'[or]That's not fair...'[or]I... that...'[in random order][otherwise]'[one of]*Sniff*... Okay...'[or]I guess it's for the best...'[or]You're the boss...'[or]I'm sorry. I deserved to have that confiscated. Thank you for disciplining me... *Sniff*'[in random order][end if][roman type][line break]".

To say ConfiscationAfterFlav of (M - a monster) on (C - a clothing):
	if M is intelligent, say "[speech style of M]'[one of]You should be thankful that I don't punish you further.'[or]I think you've gotten off lightly really, don't you?'[or]Considering your behaviour, I think that you should be grateful I have chosen not to punish your more... physically.'[in random order][roman type][line break]".

Section - Babywear Donation

To compute babywear donation of (M - a monster):
	let C be a random babywearable clothing;
	if C is clothing:
		say BabywearDonationDeclarationFlav of M on C;
		compute M babywear donating C;
		say BabywearDonationReaction of M on C;
		say BabywearDonationAfterFlav of M on C;
		let vm be a random video-monitor in the location of the player;
		if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
			now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
			let T be the substituted form of "being made to dress in baby clothing."; [note that the video-event always needs to be a present participle]
			now the video-event of vm is T;
		satisfy M;
	otherwise:
		say "BUG - couldn't find appropriate clothing to put on the player.".

To say BabywearDonationDeclarationFlav of (M - a monster) on (C - a clothing):
	if M is intelligent, say "[speech style of M]'Let's put you in something a bit more appropriate for a [if the health of M < the maxhealth of M]little brat[otherwise]diaper-dependent baby[end if].'[roman type][line break]".

To compute (M - a monster) babywear donating (C - a clothing):
	say BabywearDonationFlav of M on C;
	let K be a random off-stage specific-key;
	if M is not intelligent or K is nothing:
		summon C cursed;
		compute quest of C; [we do this silently since the quest will be displayed in the examine call below]
	otherwise if C is bondage or C is diaper cover or C is dress or C is submissive collar:
		summon C uncursed;
		compute M locking C with K;
	otherwise:
		summon C cursed;
		compute quest of C; [we do this silently since the quest will be displayed in the examine call below]
	say FullExamineDesc of C.

To say BabywearDonationFlav of (M - a monster) on (C - a clothing):
	say "[BigNameDesc of M] forces you to wear a [ShortDesc of C]!".

To say BabywearDonationReaction of (M - a monster) on (C - a clothing):
	if the player is able to speak, say "[variable custom style]'[if the player is feeling dominant]You'll pay for this!'[otherwise if the player is not feeling submissive][one of]Wha?!'[or]This doesn't seem fair...'[in random order][otherwise][one of]If you say so,[or]Thank you[or]Yes[in random order] [daddy of M]...'[end if][roman type][line break]";
	otherwise say "[variable custom style]'[muffled sounds][roman type][line break]".

To say BabywearDonationAfterFlav of (M - a monster) on (C - a clothing):
	if M is intelligent, say "[speech style of M]'[one of]That looks much better.'[or]Haha, that looks perfect!'[or]Haha, I wish you could see how pathetic you look from up here!'[in random order][roman type][line break]".

Section - Untidiness Punishment

To compute untidiness punishment of (M - a monster):
	if diaper messing >= 6:
		if trashcan is worn:
			compute trashcan punishment of M;
			satisfy M;
		otherwise if black hood is off-stage and black hood is actually summonable and trashcan is unclash summonable:
			compute trashcan punishment of M;
			satisfy M;
		otherwise if diaper messing >= 7 and there is a regional diaper pail:
			compute diaper pail punishment of M;
			let vm be a random video-monitor in the location of the player;
			if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
				now vm is recording-disgrace; [since diaper event is over by now, we need to set up the recorded event right away.]
				let T be the substituted form of "being forced head-first into a disgusting diaper pail."; [note that the video-event always needs to be a present participle]
				now the video-event of vm is T;
			satisfy M;
		otherwise:
			compute soiled diaper dropping of M;
			say DiaperUntidyPunishCommenceFlav of M;
			if the health of M >= the maxhealth of M, now the health of M is the maxhealth of M - 1; [make them hurt so they won't do nice stuff like diaper change]
			compute diaper pail substitute punishment of M;
	otherwise:
		compute soiled diaper dropping of M;
		say DiaperUntidyPunishCommenceFlav of M;
		if the health of M >= the maxhealth of M, now the health of M is the maxhealth of M - 1; [make them hurt so they won't do nice stuff like diaper change]
		compute diaper pail substitute punishment of M.

To compute diaper pail substitute punishment of (M - a monster):
	compute spanking of M.

To compute diaper pail punishment of (M - a monster):
	now most-recent-pail is a random regional diaper pail;
	if most-recent-pail is regional diaper pail:
		let L be the location of most-recent-pail;
		drag to L by M;
		say DiaperPailCommenceFlav of M;
		say DiaperPailDump of M;
		say DiaperPailForceFlav of M;
		if the player is not tolerating messy diapers:
			let TXT be substituted form of "As you scrunch up with [if the diaper addiction of the player < a random number between 8 and 11]horror[otherwise]trepidation[end if],";
			FearUp (24 - the diaper addiction of the player) with reason TXT;
		say DiaperPailForcedFlav of M;
		compute diaper pail entrance.

To say DiaperPailCommenceFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'THIS is where dirty nappies go! Try to get better acquainted with it!'[roman type][line break]".

To say DiaperPailDump of (M - a monster):
	let N be 0;
	repeat with SD running through soiled-diaper carried by M:
		now SD is in DiaperPail;
		increase N by 1;
	say "[BigNameDesc of M] drops the soiled diaper[if N > 1]s[end if] into the diaper pail.".

To say DiaperPailForceFlav of (M - a monster):
	say "[BigNameDesc of M] picks you up and holds you upside-down above the diaper pail!".

To say DiaperPailForcedFlav of (M - a monster):
	say "[big he of M] forces you face-first into the diaper pail! You are now stuck upside-down in the pail, your face pressed against old stinky nappies! Your legs flail wildly in the air as you are left almost helpless in there along with the noxious fumes.".

To compute soiled diaper dropping of (M - a monster):
	let N be 0;
	repeat with SD running through soiled-diaper carried by M:
		now SD is in the location of the player; [So now the NPC should do a normal punishment]
		increase N by 1;
	say "[BigNameDesc of M] drops the [if N > 1][N] soiled diapers[otherwise]nasty messy diaper[end if] at your feet.".

To compute (M - a monster) face smushing with (D - a thing):
	say "[BigNameDesc of M] pushes your face into [NameDesc of D]!";
	say FaceSmushDeclareFlav of M with D;
	slowDelicateUp 1;
	compute MessyDiaperFacesit of D. [grossness addiction will be handled in here]

To say FaceSmushDeclareFlav of (M - a monster) with (D - a thing):
	if M is intelligent, say "[speech style of M]'[one of]There, smell that!'[or]Take a deep breath, you disgusting worm.'[or]Breathe your own shame in nice and deep now.'[or]Take a good look. This is all you're good for now.'[in random order][roman type][line break]".

To compute trashcan punishment of (M - a monster):
	if trashcan is not worn:
		say TrashcanSummonCommenceFlav of M;
		say "[BigNameDesc of M] produces a black hood, and forces it down over your head!";
		summon black hood cursed;
		class summon trashcan;
		if trashcan is not worn, unclash class summon trashcan;
	repeat with SD running through soiled-diaper carried by M:
		say "[BigNameDesc of M] drops [NameDesc of SD] into the trashcan!";
		destroy SD;
		increase the diaper-fill of trashcan by 1;
	say TrashcanUseFlav of M.

To say TrashcanSummonCommenceFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'Let me show you what happens if you refuse to clean up after yourself...'[roman type][line break]".
To say TrashcanUseFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'Now you ARE the diaper pail!'[roman type][line break]".

To say DiaperUntidyPunishCommenceFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'Let me show you what happens if you refuse to clean up after yourself...'[roman type][line break]".

Part - Diaper Facesitting

To decide which number is the diaper facesit length of (M - a monster):
	decide on a random number between 3 and 7.

To compute diaper facesit of (M - a monster):
	if M is diaper-facesitting the player:
		decrease the sex-length of M by 1;
		compute ContinuedDiaperFacesit of M;
		if the sex-length of M <= 0:
			say DiaperFacesitFinish of M;
			say DiaperFacesitFinishFlav of M;
			satisfy M;
			suggest breathing;
	otherwise:
		now M is diaper-facesitting the player;
		now the sex-length of M is the diaper facesit length of M;
		compute DiaperFacesitStart of M;


To compute DiaperFacesitStart of (T - an object):
	if diaper messing >= 7, compute MessyDiaperFacesitStart of T;
	otherwise compute WetDiaperFacesitStart of T;

To compute MessyDiaperFacesitStart of (T - an object):
	say MessyDiaperFacesitStartFlav of T;
	if the player is not enjoying messy facesits:
		let TXT be substituted form of "As you scrunch up with [if the grossness addiction of the player < messyDiaperFacesitGrossnessLevel]horror[otherwise]trepidation[end if],";
		FearUp (messyDiaperFacesitEnjoymentLevel - the grossness addiction of the player) with reason TXT;
	otherwise:
		say "[if the player is a nympho]You[otherwise]Despite your better judgement, you[end if] feel yourself getting turned on.";
	compute MessyDiaperFacesitExpulsion of T.

To say MessyDiaperFacesitStartFlav of (T - an object):
	say "[one of]A sudden rasping sound[or]An abrupt low, wet, rumbling fart sound[or]A quick set of gassy farts[in random order] [if the diaper addiction of the player < 9][one of]heralds the start of something truly awful[or]lets you know you're about to experience something unthinkable happening right against your face[in random order][otherwise if the player is not tolerating messy diapers][one of]is the calm but foreboding thunder heralding the incoming shitstorm[or]is a bleak signal of what is imminent[or]serves as a pointless warning for what is instantly to follow it[in random order][otherwise][one of]prepares you for what is coming next[or]rudely interrupts your final breath before it begins[in random order][end if].".

To compute MessyDiaperFacesitExpulsion of (T - an object):
	say MessyDiaperFacesitExpulsionFlav of T;
	SilentlyGrossOut messyDiaperFacesitGrossnessLevel;
	SlowDelicateUp 1.

To say MessyDiaperFacesitExpulsionFlav of (T - an object):
	say "[one of]The asshole less than an inch from your nose opens wide[or]A centimetre away, on the other side of the padding, the floodgates open[or]Smushed into you nose and mouth as tightly as can be, the sphincter opens once more[in random order][one of] and delivers[or] to unleash[or], ushering forth[or], forcing out[in random order] [one of]its unholy payload[or]a long, stinky snake[or]an ungodly amount[or]a litre or two[in random order] of [one of]foul fecal matter[or]mushy mess[or]sloppy, slimy shit[or]putrid poop[then at random] [one of]directly into the padding[or]right[purely at random] on top of your face.";
	say "[variable custom style][if the player is enjoying messy facesits][one of]Oh fuck, I'm actually enjoying this[or]It's so gross... I love it[stopping][otherwise if the player is not tolerating messy facesits][one of]Noooo! How vile[or]BLEEEERGH[or]Eeeurgh, not again[or]EWWWW[or]BLEEEERGH[stopping][otherwise][one of]So stinky and naughty[or]Gross, haha[purely at random][end if]![roman type][line break]".

To compute WetDiaperFacesitStart of (T - an object):
	say WetDiaperFacesitStartFlav of T;
	if the player is not tolerating wet facesits:
		let TXT be substituted form of "As you flinch in surprise,";
		FearUp (wetDiaperFacesitGrossnessLevel - the grossness addiction of the player) with reason TXT;
	compute WetDiaperFacesitExpulsion of T.

To say WetDiaperFacesitStartFlav of (T - an object):
	say "You [one of]hear the wet hissing noise[or]hear the telltale pitter-patter sound[cycling] [one of]a brief moment[or]a split second[or]half a heartbeat[at random] before you feel the [one of]building density in the padding[or]rising warmth in front of your face[or]heat of the [urine] on your nose[in random order].".

To compute WetDiaperFacesitExpulsion of (T - an object):
	say WetDiaperFacesitExpulsionFlav of T;
	SilentlyGrossOut wetDiaperFacesitGrossnessLevel;
	SlowDelicateUp 1.

To say WetDiaperFacesitExpulsionFlav of (T - an object):
	say "[one of]Within moments, [or]It's not long before [or]It's less than a couple of seconds until [in random order][one of]there's a steady, high pressure stream of [urine][or]it reaches full throttle and there is a strong jet of [urine][in random order] [one of]soaking[or]flowing[purely at random] [one of]directly into the padding on top of your face.[or]down above your face like heavy rain hitting an umbrella[purely at random]. You can feel [one of]its incredible radiant heat against your skin[or]the liquid smacking against your face almost as if the plastic barrier wasn't there[or]it spread throughout the thick padding, engulfing your face in the rapidly saturating padding, and impeding your ability to breathe[in random order].";
	say "[variable custom style][if the player is not tolerating wet facesits][one of]This is an outrage![or]Yuck yuck yuck![stopping][otherwise if the player is not enjoying wet facesits][one of]How rude.[or]Again?![stopping][otherwise][one of]Mmmmm, lovely.[or]It's nice and warm![purely at random][end if][roman type][line break]".


To compute ContinuedDiaperFacesit of (T - an object):
	if diaper messing >= 7, compute MessyDiaperFacesit of T;
	otherwise compute WetDiaperFacesit of T.


To compute MessyDiaperFacesit of (T - an object):
	if the player is air breathing vulnerable:
		if the player is able to breathe:
			say "There is a messy diaper in your face...";
			reset multiple choice questions;
			set numerical response 1 to "Continue breathing";
			set numerical response 2 to "Start to hold your breath";
			compute multiple choice question;
			if player-numerical-response is 2, try ManuallyBreathing;
		otherwise if player-breathing is false:
			say "There is a messy diaper in your face...";
			reset multiple choice questions;
			set numerical response 1 to "Start breathing again";
			set numerical response 2 to "Continue to hold your breath";
			compute multiple choice question;
			if player-numerical-response is 1, try ManuallyBreathing;
	if the player is able to breathe:
		compute MessyDiaperFacesitBreathe of T;
	otherwise:
		compute MessyDiaperFacesitHold of T.

To compute MessyDiaperFacesitBreathe of (T - an object):
	say MessyDiaperFacesitBreatheFlav of T;
	GrossOut messyDiaperFacesitGrossnessLevel.

To say MessyDiaperFacesitBreatheFlav of (T - an object):
	say "You [if the player is not tolerating messy facesits]can't help but [end if][one of]breathe[or]inhale[cycling] [one of]through the disgusting soiled padding[or]the foul odour of the toxic sludge on the other side of the diaper[or]the concentrated stench of the messy diaper[or]the horrid fumes of the dirty nappy[in random order] [one of]pressed into your face[or]smushed up against your nostrils[or]that your nose is buried in[in random order].";
	say "[variable custom style][if the player is enjoying messy facesits][one of]I can't believe I like this smell now[or]I love stinky nappies on my face[or]So lovely and warm and stinky[stopping][otherwise if the player is not tolerating messy diapers][one of]This can't be happening! Bleurgh[or]Get me out of here[or]No no no[or]I'm going to faint[or]So unbelievably awful[or]I'm gonna be sick[cycling][otherwise][one of]It still smells gross, but at least I'm getting used to it[or]Oh my, this really stinks[or]Fuck, that was a powerful whiff[or]Bleurgh[stopping][end if]![roman type][line break]".

To compute MessyDiaperFacesitHold of (T - an object):
	say MessyDiaperFacesitHoldFlav of T;
	let X be messyDiaperFacesitGrossnessLevel;
	NonAddictiveSlowGrossOut X; [we have some unique flavour to output for addiction increases below]
	let G be X - the grossness addiction of the player;
	let R be a random number between 0 and 9; [if the player is already tolerant, they won't gain more]
	if debuginfo > 0, say "[input-style]Grossness gain avoidance check: d10 - 1 ([R]) | [G].5 = ([X].5) grossness - ([grossness addiction of the player]) grossness addiction[roman type][line break]";
	if R < G:
		say MessyDiaperFacesitHoldAddictionFlav of T;
		SlowGrossnessAddictUp 1.

To say MessyDiaperFacesitHoldFlav of (T - an object):
	say "You [one of]hold your breath[or]refuse to breathe[in random order][one of] to avoid smelling[or], preventing your senses from being assaulted by[or] and keep yourself from sniffing[in random order] the [one of]nasty fumes[or]horrid diaper[or]foul odour[at random].".

To say MessyDiaperFacesitHoldAddictionFlav of (T - an object):
	say "[one of]Despite[or]Even though you're[cycling] holding your breath, having [one of]your face buried in a messy diaper[or]a dirty diaper held over your face[or]your eyes, nose and mouth engulfed in a nasty soiled diaper[in random order] still [one of]leaves a lasting impression[or]manages to impact upon your psyche[or]warps your mind[then at random]. You feel yourself getting more [if the grossness addiction of the player < 5]curious about[otherwise if the grossness addiction of the player < 10]intrigued by[otherwise if the grossness addiction of the player < 15]excited about[otherwise]obsessed with[end if] the [one of]kinky side of[or]fetishy nature[cycling] of [one of]messy[or]messing in[or]the stench of messy[stopping] diapers.".


To compute WetDiaperFacesit of (T - an object):
	if the player is air breathing vulnerable:
		if the player is able to breathe:
			say "There is a wet diaper in your face...";
			reset multiple choice questions;
			set numerical response 1 to "Continue breathing";
			set numerical response 2 to "Start to hold your breath";
			compute multiple choice question;
			if player-numerical-response is 2, try ManuallyBreathing;
		otherwise if player-breathing is false:
			say "There is a wet diaper in your face...";
			reset multiple choice questions;
			set numerical response 1 to "Start breathing again";
			set numerical response 2 to "Continue to hold your breath";
			compute multiple choice question;
			if player-numerical-response is 1, try ManuallyBreathing;
	if the player is able to breathe:
		compute WetDiaperFacesitBreathe of T;
	otherwise:
		compute WetDiaperFacesitHold of T.

To compute WetDiaperFacesitBreathe of (T - an object):
	say WetDiaperFacesitBreatheFlav of T;
	GrossOut wetDiaperFacesitGrossnessLevel.

To say WetDiaperFacesitBreatheFlav of (T - an object):
	say "You struggle to [one of]breathe[or]inhale[cycling] [one of]through the warm soggy padding[or]your air through the wet diaper[or]enough oxygen through the [urine]-soaked diaper[or]in through the soiled nappy[in random order] [one of]pressed into your face[or]smushed up against your nostrils[or]that your nose is buried in[in random order].".

To compute WetDiaperFacesitHold of (T - an object):
	say WetDiaperFacesitHoldFlav of T;
	SlowGrossOut wetDiaperFacesitGrossnessLevel;

To say WetDiaperFacesitHoldFlav of (T - an object):
	say "You [one of]hold your breath[or]refuse to breathe[in random order][one of] to avoid smelling[or], preventing your senses from being assaulted by[or] and keep yourself from sniffing[in random order] the [one of]strong stench of [urine][or]concentrated smell of [urine][or]the soggy nappy[at random].".

To say DiaperFacesitFinish of (M - a monster):
	say "[BigNameDesc of M] [one of]rolls off of your face[or]Stands up[cycling], allowing you to breathe normally once again.".

To say DiaperFacesitFinishFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]You looked like you enjoyed that[or]I hope you enjoyed your sniffies[or]You make a good widdle diaper facestool[in random order].'[roman type][line break]".


Part - Diaper Urinal Use

Figure of diaper selfpull hold urinal angry is the file "Special/Cutscene/cutscene-diaper-urinal-1aiA.jpg".
Figure of diaper selfpull hold urinal shy is the file "Special/Cutscene/cutscene-diaper-urinal-1aiB.jpg".
Figure of diaper selfpull hold urinal excited is the file "Special/Cutscene/cutscene-diaper-urinal-1aiC.jpg".
Figure of diaper selfpull hold cumrag angry is the file "Special/Cutscene/cutscene-diaper-urinal-1aiiA.jpg".
Figure of diaper selfpull hold cumrag shy is the file "Special/Cutscene/cutscene-diaper-urinal-1aiiB.jpg".
Figure of diaper selfpull hold cumrag excited is the file "Special/Cutscene/cutscene-diaper-urinal-1aiiC.jpg".
Figure of diaper selfpull grip urinal angry is the file "Special/Cutscene/cutscene-diaper-urinal-1biA.jpg".
Figure of diaper selfpull grip urinal shy is the file "Special/Cutscene/cutscene-diaper-urinal-1biB.jpg".
Figure of diaper selfpull grip urinal excited is the file "Special/Cutscene/cutscene-diaper-urinal-1biC.jpg".
Figure of diaper selfpull grip cumrag angry is the file "Special/Cutscene/cutscene-diaper-urinal-1biiA.jpg".
Figure of diaper selfpull grip cumrag shy is the file "Special/Cutscene/cutscene-diaper-urinal-1biiB.jpg".
Figure of diaper selfpull grip cumrag excited is the file "Special/Cutscene/cutscene-diaper-urinal-1biiC.jpg".
Figure of diaper selfpull no touch urinal angry is the file "Special/Cutscene/cutscene-diaper-urinal-1ciA.jpg".
Figure of diaper selfpull no touch urinal shy is the file "Special/Cutscene/cutscene-diaper-urinal-1ciB.jpg".
Figure of diaper selfpull no touch urinal excited is the file "Special/Cutscene/cutscene-diaper-urinal-1ciC.jpg".
Figure of diaper selfpull no touch cumrag angry is the file "Special/Cutscene/cutscene-diaper-urinal-1ciiA.jpg".
Figure of diaper selfpull no touch cumrag shy is the file "Special/Cutscene/cutscene-diaper-urinal-1ciiB.jpg".
Figure of diaper selfpull no touch cumrag excited is the file "Special/Cutscene/cutscene-diaper-urinal-1ciiC.jpg".
Figure of diaper himpull hold urinal angry is the file "Special/Cutscene/cutscene-diaper-urinal-2aiA.jpg".
Figure of diaper himpull hold urinal shy is the file "Special/Cutscene/cutscene-diaper-urinal-2aiB.jpg".
Figure of diaper himpull hold urinal excited is the file "Special/Cutscene/cutscene-diaper-urinal-2aiC.jpg".
Figure of diaper himpull hold cumrag angry is the file "Special/Cutscene/cutscene-diaper-urinal-2aiiA.jpg".
Figure of diaper himpull hold cumrag shy is the file "Special/Cutscene/cutscene-diaper-urinal-2aiiB.jpg".
Figure of diaper himpull hold cumrag excited is the file "Special/Cutscene/cutscene-diaper-urinal-2aiiC.jpg".
Figure of diaper himpull grip urinal angry is the file "Special/Cutscene/cutscene-diaper-urinal-2biA.jpg".
Figure of diaper himpull grip urinal shy is the file "Special/Cutscene/cutscene-diaper-urinal-2biB.jpg".
Figure of diaper himpull grip urinal excited is the file "Special/Cutscene/cutscene-diaper-urinal-2biC.jpg".
Figure of diaper himpull grip cumrag angry is the file "Special/Cutscene/cutscene-diaper-urinal-2biiA.jpg".
Figure of diaper himpull grip cumrag shy is the file "Special/Cutscene/cutscene-diaper-urinal-2biiB.jpg".
Figure of diaper himpull grip cumrag excited is the file "Special/Cutscene/cutscene-diaper-urinal-2biiC.jpg".
Figure of diaper himpull no touch urinal angry is the file "Special/Cutscene/cutscene-diaper-urinal-2ciA.jpg".
Figure of diaper himpull no touch urinal shy is the file "Special/Cutscene/cutscene-diaper-urinal-2ciB.jpg".
Figure of diaper himpull no touch urinal excited is the file "Special/Cutscene/cutscene-diaper-urinal-2ciC.jpg".
Figure of diaper himpull no touch cumrag angry is the file "Special/Cutscene/cutscene-diaper-urinal-2ciiA.jpg".
Figure of diaper himpull no touch cumrag shy is the file "Special/Cutscene/cutscene-diaper-urinal-2ciiB.jpg".
Figure of diaper himpull no touch cumrag excited is the file "Special/Cutscene/cutscene-diaper-urinal-2ciiC.jpg".

diaper-invasion-waistband is initially false. [Is the player pulling their waistband forward?]
diaper-invasion-hold is initially false. [Is the player touching the invading penis?]

To compute diaper urinal image of (M - a monster):
	if diaper-invasion-waistband is false:
		if diaper-invasion-hold is false:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper himpull no touch urinal excited for M;
			otherwise if the grossness addiction of the player > 4:
				cutshow Figure of diaper himpull no touch urinal shy for M;
			otherwise:
				cutshow Figure of diaper himpull no touch urinal angry for M;
		otherwise if the player is a nympho and diaper cumrag >= 2:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper himpull grip urinal excited for M;
			otherwise if the grossness addiction of the player > 4:
				cutshow Figure of diaper himpull grip urinal shy for M;
			otherwise:
				cutshow Figure of diaper himpull grip urinal angry for M;
		otherwise:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper himpull hold urinal excited for M;
			otherwise if the grossness addiction of the player > 4:
				cutshow Figure of diaper himpull hold urinal shy for M;
			otherwise:
				cutshow Figure of diaper himpull hold urinal angry for M;
	otherwise:
		if diaper-invasion-hold is false:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper selfpull no touch urinal excited for M;
			otherwise if the grossness addiction of the player > 4:
				cutshow Figure of diaper selfpull no touch urinal shy for M;
			otherwise:
				cutshow Figure of diaper selfpull no touch urinal angry for M;
		otherwise if the player is a nympho and diaper cumrag >= 2:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper selfpull grip urinal excited for M;
			otherwise if the grossness addiction of the player > 4:
				cutshow Figure of diaper selfpull grip urinal shy for M;
			otherwise:
				cutshow Figure of diaper selfpull grip urinal angry for M;
		otherwise:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper selfpull hold urinal excited for M;
			otherwise if the grossness addiction of the player > 4:
				cutshow Figure of diaper selfpull hold urinal shy for M;
			otherwise:
				cutshow Figure of diaper selfpull hold urinal angry for M.

To compute diaper urinal use of (M - a monster):
	say DiaperUrinalDeclarationFlav of M;
	say DiaperUrinalDeclaration of M;
	now player-numerical-response is 4;
	if the class of the player is not human toilet and (the grossness addiction of the player < 11 or the player is not a nympho):
		reset multiple choice questions;
		set numerical response 1 to "Completely refuse to help [him of M] degrade you like this.";
		set numerical response 2 to "Pull the waistband of your diaper forward for [NameDesc of M], to make it easier for [him of M] to piss inside it.";
		set numerical response 3 to "Hold [NameDesc of M][']s [manly-penis] for [him of M].";
		set numerical response 4 to "Hold [NameDesc of M][']s [manly-penis] AND pull the waistband of your diaper forward for [him of M].";
		compute multiple choice question;
	if player-numerical-response is 1:
		now diaper-invasion-waistband is false;
		now diaper-invasion-hold is false;
		say DiaperUrinalResistance of M;
		say DiaperUrinalResistanceFlav of M;
	otherwise if player-numerical-response is 2:
		now diaper-invasion-waistband is true;
		now diaper-invasion-hold is false;
		say DiaperUrinalWaistbandSubmission of M;
		say DiaperUrinalWaistbandSubmissionFlav of M;
		if grossness addiction of the player < 11, say strongHumiliateReflect;
	otherwise if player-numerical-response is 3:
		now diaper-invasion-waistband is false;
		now diaper-invasion-hold is true;
		say DiaperUrinalHoldSubmission of M;
		say DiaperUrinalHoldSubmissionFlav of M;
		if the player is not a nympho, say strongHumiliateReflect;
		SlowSexAddictUp 1;
	otherwise:
		now diaper-invasion-waistband is true;
		now diaper-invasion-hold is true;
		say DiaperUrinalFullSubmission of M;
		say DiaperUrinalFullSubmissionFlav of M;
		if grossness addiction of the player < 11 or the player is not a nympho, say severeHumiliateReflect;
		SexAddictUp 1;
		progress quest of human-toilet-quest;
	compute diaper urinal peeing of M; [this should fill diaper and reset bladder!]
	compute diaper urinal image of M;
	let D be a random worn diaper;
	if D is diaper and the total-soak of D >= the soak-limit of D and M is willing to double diapers:
		if M is intelligent, say "[speech style of M]'It would seem to me, that your padding clearly isn't thick enough to hold all the pee coming its way.'[roman type][line break]";
		now M is double-diaper-committed;
		compute diaper change of M;
	otherwise if player-numerical-response < 4:
		compute diaper urinal resistance punishment check of M;
	otherwise:
		satisfy M.


To say DiaperUrinalDeclarationFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]The bad news is that nature is calling me. The good news is that I have an excellent idea.'[or]I've been holding my own pee in for a while, hoping that an opportunity like this might arise.'[or]I haven't been to the toilet recently myself, and now I can't say no to this opportunity you've presented me...'[cycling][roman type][line break]".

To say DiaperUrinalDeclaration of (M - a monster):
	say "[BigNameDesc of M] moves [his of M] genitals to the front of your diaper, clearly intent on using it as [his of M] personal urinal.".

To say DiaperUrinalFullSubmission of (M - a monster):
	let D be a random worn knickers;
	say "You [if the grossness addiction of the player >= 11 or the class of the player is human toilet]automatically [end if]pull forward the waistband of your [MediumDesc of D], willingly giving [NameDesc of M] easy access, and then [if the player is a nympho or the class of the player is human toilet]without hesitation [end if]take hold of [his of M] [manly-penis] with your other hand and gently point the tip towards its target.";
	if the player is a nympho and diaper cumrag >= 2, say "You can't resist gripping [his of M] [manly-penis] tight and giving it a few playful strokes as you hold it.";
	if the grossness addiction of the player < 11 or the player is not a nympho, say "[variable custom style][one of]Did I really just do that?![or]Hnng... It's like this hood is controlling my actions![or]I can't stop my hands![stopping][roman type][line break]".

To say DiaperUrinalFullSubmissionFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[if the player is a nympho][one of]My my, you are an eager one, aren't you?!'[or]Hmm, perhaps my piss isn't the only thing you're hoping I'll squirt in your diaper, hmm?'[or]What a [one of]good[or]naughty[or]filthy[at random] little diaper [boy of the player] you are.'[stopping][otherwise][one of]There's a good diaper urinal.'[or]I'm glad to see you know your place.'[or]Good [boy of the player].'[cycling][end if][roman type][line break]".

To say DiaperUrinalWaistbandSubmission of (M - a monster):
	let D be a random worn knickers;
	say "You pull forward the waistband of your [MediumDesc of D], willingly giving [NameDesc of M] easy access.".

To say DiaperUrinalWaistbandSubmissionFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Not bad, but a proper diaper urinal would be holding my [manly-penis] for me as well[or]You aren't holding my [manly-penis] for me? You clearly still need more training[stopping].'[roman type][line break]".

To say DiaperUrinalHoldSubmission of (M - a monster):
	say "You take hold of [NameDesc of M][']s [manly-penis] and gently point the tip towards its target. [BigNameDesc of M] uses one hand to pull forward the waistband of your diaper.";
	if the player is a nympho, say "You can't resist gripping [his of M] [manly-penis] tight and giving it a few playful strokes as you hold it.".

To say DiaperUrinalHoldSubmissionFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]You have two hands, you know. You could be holding your diaper open for me too[or]You aren't holding your diaper open for me as well? You clearly still need more training[stopping].'[roman type][line break]".

To say DiaperUrinalResistance of (M - a monster):
	let D be a random worn diaper;
	say "You keep your arms by your side, refusing to be a part of this. [BigNameDesc of M] uses [his of M] own hand to pull the waistband of your [ShortDesc of D] forward to accept [his of M] [urine].".

To say DiaperUrinalResistanceFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Aww, does my little diapered bitch[or]Poor thing, do you[or]What's wrong, sweetheart? Do you[or]Oh dear, I think this silly baby[or]If I didn't know any better, I'd guess that this diaper slave does[in random order] [one of]not like[or]not want[or]not enjoy[at random] [one of][his of the player] pamps being used as my toilet[or]the idea of a [man of M] using [his of M] diaper[or]having [his of M] diaper become my urinal[or]becoming a [']diaper urinal['][in random order]? [one of]And yet it's happening anyway! How degrading... You must be feeling pretty fucking pathetic right about now.'[or]Tough shit.'[or]Your little show of resistance is so adorable, and so futile.'[or][one of]Too bad!'[or]Tough shit.'[cycling][stopping][roman type][line break]".

To compute diaper urinal peeing of (M - a monster):
	let D be a random worn knickers;
	say DiaperUrinalPeeFlav of M;
	AnnouncedExpel urine on D by (the bladder of M / 100);
	now the bladder of M is 0;
	now M is inseminating D;
	GrossOut 4 with reason "The sensation of being used as a diaper urinal makes you shudder," and sensation "feeling".

To say DiaperUrinalPeeFlav of (M - a monster):
	say "[BigNameDesc of M] [one of]lets loose[or]releases [his of M] hold on [his of M] bladder[or]squeezes [his of M] bladder muscles[at random] and promptly begins to [one of]spray[or]soak[or]fill[at random] your padding with [his of M] hot wet [urine]. [one of]Most of [his of M] [urine] lands on your mons pubis, before trickling down into your diaper, leaving your skin soaked in [his of M] golden gift.[or][big he of M][']s essentially pissing directly onto your [genitals]![or]The sensation of [his of M] warm [urine] spreading throughout your padding feels [if the grossness addiction of the player >= 11]delightfully[otherwise]degrading and[end if] invasive.[then at random]".

To compute diaper urinal resistance punishment check of (M - a monster):
	if diaper-invasion-waistband is false and diaper-invasion-hold is false:
		if the player is not getting lucky:
			compute diaper urinal resistance punishment of M;
		otherwise:
			say "[speech style of M]'[one of]I hope by next time, you will have learned your place, and will accept your role as a diaper urinal obediently.'[or]You'd better learn your place soon, or there will be consequences...'[stopping][roman type][line break]";
			say "You feel like you got particularly lucky to get away without any further punishment![line break][variable custom style]Phew.[roman type][line break]";
			bore M;
	otherwise:
		if the player is getting unlucky:
			compute diaper urinal resistance punishment of M;
		otherwise:
			say "[speech style of M]'[one of]I hope by next time, you will have improved on your skills.'[or]You'd better learn how to be a perfect diaper urinal soon, or there will be consequences...'[stopping][roman type][line break]";
			bore M;
	if M is not interested and M is in the location of the player:
		say "[BigNameDesc of M] turns and leaves you alone.".

To compute diaper urinal resistance punishment of (M - a monster):
	let D be a random worn knickers;
	if a random number between 1 and 2 is 1 and M is intelligent and D is not glued: [failsafe - shouldn't have been glued in the first place, since you can't pee in a glued diaper]
		say "[speech style of M]'Since you're clearly not used to being a diaper urinal yet, I think you need to enjoy this feeling for some time.'[roman type][line break][BigNameDesc of M] pulls out a large tube of glue! [GotUnluckyFlav]";
		say "You try to pull away, but it's no use. Before you can do anything to stop [him of M], [NameDesc of M] has filled the inside of your [ShortDesc of D] with glue! You're not going to be able to remove it until the glue has degraded... At least, not without it really hurting!";
		gluify D;
		satisfy M;
	otherwise:
		say "Since you didn't let [him of M] use you obediently, it seems like [NameDesc of M] has decided [he of M] isn't done with you yet! [GotUnluckyFlav]";
		now M is double-diaper-committed; [if they go for a diaper change, it'll be an extra diaper]
		anger M.

Part - Diaper Cumrag Use

To compute diaper cumrag image of (M - a monster):
	if diaper-invasion-waistband is false:
		if diaper-invasion-hold is false:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper himpull no touch cumrag excited for M;
			otherwise if the grossness addiction of the player > 5:
				cutshow Figure of diaper himpull no touch cumrag shy for M;
			otherwise:
				cutshow Figure of diaper himpull no touch cumrag angry for M;
		otherwise if the player is a nympho:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper himpull grip cumrag excited for M;
			otherwise if the grossness addiction of the player > 5:
				cutshow Figure of diaper himpull grip cumrag shy for M;
			otherwise:
				cutshow Figure of diaper himpull grip cumrag angry for M;
		otherwise:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper himpull hold cumrag excited for M;
			otherwise if the grossness addiction of the player > 5:
				cutshow Figure of diaper himpull hold cumrag shy for M;
			otherwise:
				cutshow Figure of diaper himpull hold cumrag angry for M;
	otherwise:
		if diaper-invasion-hold is false:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper selfpull no touch cumrag excited for M;
			otherwise if the grossness addiction of the player > 5:
				cutshow Figure of diaper selfpull no touch cumrag shy for M;
			otherwise:
				cutshow Figure of diaper selfpull no touch cumrag angry for M;
		otherwise if the player is a nympho:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper selfpull grip cumrag excited for M;
			otherwise if the grossness addiction of the player > 5:
				cutshow Figure of diaper selfpull grip cumrag shy for M;
			otherwise:
				cutshow Figure of diaper selfpull grip cumrag angry for M;
		otherwise:
			if the grossness addiction of the player >= 11:
				cutshow Figure of diaper selfpull hold cumrag excited for M;
			otherwise if the grossness addiction of the player > 5:
				cutshow Figure of diaper selfpull hold cumrag shy for M;
			otherwise:
				cutshow Figure of diaper selfpull hold cumrag angry for M.

To compute diaper cumrag use of (M - a monster):
	say DiaperCumragDeclarationFlav of M;
	say DiaperCumragDeclaration of M;
	now player-numerical-response is 4;
	if the grossness addiction of the player < 11 or the player is not a nympho:
		reset multiple choice questions;
		set numerical response 1 to "Completely refuse to help [him of M] get [his of M] [semen] inside your diaper.";
		set numerical response 2 to "Pull the waistband of your diaper forward for [NameDesc of M], to make it easier for [him of M] to cum inside it.";
		if diaper cumrag >= 2 and the player is a pervert:
			set numerical response 3 to "Do the dirty work for [NameDesc of M], masturbating [him of M] with your hands until [he of M] empties [his of M] balls into your diaper.";
			set numerical response 4 to "Masturbate [NameDesc of M] AND pull the waistband of your diaper forward for [him of M].";
		compute multiple choice question;
	if player-numerical-response is 4 and diaper cumrag >= 2:
		now diaper-invasion-waistband is true;
		now diaper-invasion-hold is true;
		say DiaperCumragFullSubmission of M;
		say DiaperCumragFullSubmissionFlav of M;
		if grossness addiction of the player < 11 or the player is not a nympho, say severeHumiliateReflect;
		SexAddictUp 1;
		progress quest of human-toilet-quest;
	otherwise if player-numerical-response is 3:
		now diaper-invasion-waistband is false;
		now diaper-invasion-hold is true;
		say DiaperCumragHoldSubmission of M;
		say DiaperCumragHoldSubmissionFlav of M;
		if the player is not a nympho, say strongHumiliateReflect;
		SlowSexAddictUp 1;
	otherwise if player-numerical-response >= 2:
		now diaper-invasion-waistband is true;
		now diaper-invasion-hold is false;
		say DiaperCumragWaistbandSubmission of M;
		say DiaperCumragWaistbandSubmissionFlav of M;
		if grossness addiction of the player < 11, say strongHumiliateReflect;
	otherwise:
		say DiaperCumragResistance of M;
		say DiaperCumragResistanceFlav of M;
	compute diaper cumrag ejaculating of M;
	compute diaper cumrag image of M;
	if (diaper cumrag >= 2 and player-numerical-response < 4) or player-numerical-response < 2:
		compute diaper cumrag resistance punishment check of M;
	otherwise:
		satisfy M.


To say DiaperCumragDeclarationFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Have you ever had your [daddytitle of M] cum in your nappy before, hmm? Well, there's a first time for everything...'[or]Come here, you sexy padded slut...'[stopping][roman type][line break]".

To say DiaperCumragDeclaration of (M - a monster):
	say "[BigNameDesc of M] begins masturbating [his of M] [manly-penis], clearly intent on [one of]asserting [his of M] dominance by cumming inside your diaper[or]using your diaper's padding as [his of M] cumrag[cycling]!".

To say DiaperCumragFullSubmission of (M - a monster):
	let D be a random worn knickers;
	say "You [if the grossness addiction of the player >= 11 or the class of the player is human toilet]automatically [end if]pull forward the waistband of your [MediumDesc of D], willingly giving [NameDesc of M] easy access, and then [if the player is a nympho or the class of the player is human toilet]without hesitation [end if]take hold of [his of M] [manly-penis] with your other hand and masturbate it [if the player is a nympho]fervently[otherwise]tenderly[end if].".

To say DiaperCumragFullSubmissionFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]There's a good diaper cumrag.'[or]Good [boy of the player].'[cycling][roman type][line break]".

To say DiaperCumragHoldSubmission of (M - a monster):
	say "You take hold of [NameDesc of M][']s [manly-penis] and masturbate it [if the player is a nympho]fervently[otherwise]tenderly[end if]. [BigNameDesc of M] uses one hand to pull forward the waistband of your diaper.".

To say DiaperCumragHoldSubmissionFlav of (M - a monster):
	say DiaperUrinalHoldSubmissionFlav of M.

To say DiaperCumragWaistbandSubmission of (M - a monster):
	say DiaperUrinalWaistbandSubmission of M.

To say DiaperCumragWaistbandSubmissionFlav of (M - a monster):
	if M is intelligent and diaper cumrag >= 2, say "[speech style of M]'[one of]Too scared to touch it, slut?'[or]You won't touch it? You clearly still need more training.'[stopping][roman type][line break]";
	otherwise say DiaperCumragFullSubmissionFlav of M.

To say DiaperCumragResistance of (M - a monster):
	let D be a random worn diaper;
	say "You keep your arms by your side, refusing to be a part of this. [BigNameDesc of M] uses [his of M] own hand to pull the waistband of your [ShortDesc of D] forward and masturbates quickly, until [he of M] spurts [his of M] thick, warm [semen] onto your mons pubis and into your padding.".

To say DiaperCumragResistanceFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Aww, does my little diapered bitch[or]Poor thing, do you[or]What's wrong, sweetheart? Do you[or]Oh dear, I think this silly baby[or]If I didn't know any better, I'd guess that this diaper slave does[in random order] [one of]not like[or]not want[or]not enjoy[at random] [one of]the idea of a [man of M] using [his of M] diaper as a cumrag[or]having [his of M] diaper become my cumrag[or]letting me masturbate into [his of M] diaper[in random order]? [one of]And yet it's happening anyway! How degrading... You must be feeling pretty fucking pathetic right about now.'[or]Tough shit.'[or]Your little show of resistance is so adorable, and so futile.'[or][one of]Too bad!'[or]Tough shit.'[cycling][stopping][roman type][line break]".

To compute diaper cumrag ejaculating of (M - a monster):
	let D be a random worn knickers;
	say DiaperCumragEjaculationFlav of M;
	AnnouncedExpel semen on D by the semen load of M;
	now M is inseminating D;
	GrossOut 5 with reason "The sensation of being used as a diaper cumrag makes you shudder," and sensation "[one of]sticky[or]slimy[cycling] feeling".

To say DiaperCumragEjaculationFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Yes! Cumming! I'm cumming in your diaper, you filthy fucking cumdump!'[or]Uhn, yes, get ready to get your diaper filled with my cum, my little padded pet!'[cycling][roman type][line break]";
	say "[BigNameDesc of M][']s ropes of hot sticky [semen] splash against your mons pubis and paint your [genitals], and more of it shoots directly into your padding, leaving you with a gross sticky sensation. You're now crawling around with [if the player is sexed male and transGender is 0]another[otherwise]this[end if] [man of M][']s [semen] oozing against your [genitals].".


To compute diaper cumrag resistance punishment check of (M - a monster):
	if diaper-invasion-waistband is false and diaper-invasion-hold is false:
		if the player is not getting lucky:
			compute diaper cumrag resistance punishment of M;
		otherwise:
			say "[speech style of M]'[one of]I hope by next time, you will have learned your place, and will accept your role as a diaper cumrag obediently.'[or]You'd better learn your place soon, or there will be consequences...'[stopping][roman type][line break]";
			say "You feel like you got particularly lucky to get away without any further punishment![line break][variable custom style]Phew.[roman type][line break]";
			bore M;
	otherwise:
		if the player is getting unlucky:
			compute diaper cumrag resistance punishment of M;
		otherwise:
			say "[speech style of M]'[one of]I hope by next time, you will have improved on your skills.'[or]You'd better learn how to be a perfect diaper cumrag soon, or there will be consequences...'[stopping][roman type][line break]";
			bore M;
	if M is not interested and M is in the location of the player:
		say "[BigNameDesc of M] turns and leaves you alone.".

To compute diaper cumrag resistance punishment of (M - a monster):
	let D be a random worn knickers;
	if a random number between 1 and 2 is 1 and M is intelligent and D is not glued: [failsafe - shouldn't have been glued in the first place, since you can't pee in a glued diaper]
		say "[speech style of M]'Since you're clearly not used to being a diaper cumrag yet, I think you need to enjoy this feeling for some time.'[roman type][line break][BigNameDesc of M] pulls out a large tube of glue! [GotUnluckyFlav]";
		say "You try to pull away, but it's no use. Before you can do anything to stop [him of M], [NameDesc of M] has filled the inside of your [ShortDesc of D] with glue! You're not going to be able to remove it until the glue has degraded... At least, not without it really hurting!";
		gluify D;
		satisfy M;
	otherwise:
		say "Since you didn't let [him of M] use you obediently, it seems like [NameDesc of M] has decided [he of M] isn't done with you yet! [GotUnluckyFlav]";
		now M is double-diaper-committed; [if they go for a diaper change, it'll be an extra diaper]
		anger M.


Diaper Events ends here.
