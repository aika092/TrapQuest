Diaper Events by Monster Framework begins here.

To compute (M - a monster) removing all ass protection:
	let more-to-go be 1;
	while more-to-go is 1:
		let C be a random ass covering clothing;
		now C is a random top level ass protection clothing; [Top level takes priority]
		if C is nothing, now C is a random worn sex toy penetrating asshole;
		if C is nothing:
			now more-to-go is 0;
		otherwise:
			if C is zippable and C is not diaper:
				say UnzipFlav of M at C;
				ZipDown C;
			otherwise if C is displacable:
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
	say "[BigNameDesc of M] rips off your [C].".

To say DiaperQuestRemovalFlav of (M - a monster) on (C - a sex toy):
	say "[BigNameDesc of M] pulls out your [C].".

Section - Diaper Check

Report taking off diaper:
	repeat with M running through friendly monsters in the location of the player:
		if the diaper-duration of M > 0, check perception of M.

diaperChecking is a number that varies. [Sometimes we want to flag that there's a diaper check currently in place.]

To compute diaper check of (M - a monster):
	now diaperChecking is 1;
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
		humiliate 100;
		if D is total protection and D is soilable unmessed knickers and rectum > 1 and asshole is not actually occupied and rectum + the incontinence of the player + suppository > the instant mess influence of M:
			say InstantMessFlav of M;
			compute messing;
		say DiaperCheckResultsFlav of M;
		if diaper messing is 3 and D is messed:
			compute instant change of M;
		otherwise if M is aware that the player needs a change:
			if the delicateness of the player < 12, say "Submit to the diaper change? [one of](Refusing will probably make [him of M] angry) [or][stopping]";
			if the delicateness of the player >= 12 or the player is bimbo consenting:
				compute diaper change of M;
			otherwise:
				anger M;
				say DiaperChangeRefuseAnger of M;
	now diaperChecking is 0.

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
	if D is diaper-stack and D is not messed, now D is entry (number of entries in the list of stacked diapers) in the list of stacked diapers;
	if M is aware that the player needs a change:
		if D is messed:
			say DiaperCheckResultsMessedFlav of M;
			if D is perceived unmessed diaper:
				process state perception of D;
				say "It's only now that [he of M] has pointed it out that you can feel it - you have indeed messed yourself without even realising it!";
			say DiaperCheckResultsMessedReactionFlav of M;
		otherwise if D is crotch-ripped diaper:
			say DiaperCheckResultsTornFlav of M;
		otherwise:
			say DiaperCheckResultsWetFlav of M;
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

To say DiaperCheckResultsMessedFlav of (M - a monster):
	let D be a random worn knickers;
	say "[speech style of M]'[one of]Oopsie[or]Well well well[or]Uh-oh[or]Oh wow[in random order], it seems that [one of]my little baby[or]this little baby[or]this little one[or]somebody[in random order] has [if D is diaper][one of]messed their nappy[or]filled their diaper with their naughty bum-bum[or]gone stinky in their Pampies[or]done a big doo-doo[or]gone poopies[or]struggled to make it to the toilet in time to do their pooping[or]proven that they definitely need to be kept in diapers, there's a lot of warm mush I can feel in here[in random order][otherwise][one of]had an accident, looks like you should have been in a diaper[or]went doo-doo in their panties, and needs to be diapered[in random order][end if]! [one of]You definitely need a change now though, you stinky minx!'[or]I guess it's up to me to change you.'[or]Were you trying to avoid letting me know that you need a change?'[or]You should always come to me straight away when this happens, [honey of M], so we can get you changed into something clean.'[in random order][roman type][line break]".

To say DiaperCheckResultsMessedReactionFlav of (M - a monster):
	let D be a random worn knickers;
	if the player is upset about sitting in mess, say "[one of]You are relieved that you're going to be rescued from your gross situation. [or]The only thing you care about right now is getting out of this [MediumDesc of D], so [his of M] words are a welcome relief! [or]You actually feel gratitude for the fact you're going to be helped out of your smelly [MediumDesc of D]! [in random order]";
	otherwise say "[if the delicateness of the player < 7][one of]You wrinkle your nose. You don't want to be changed like a little child![or]You growl, angry at the concept that you need someone else to change you.[or]You harrumph with disdain at the idea.[in random order][otherwise if the delicateness of the player < 12][one of]You wriggle nervously on the spot.[or]You smile sheepishly.[or]You feel a bit uncomfortable, but know it needs to be done.[or]You tremble on the spot.[in random order][otherwise if the delicateness of the player > 15][one of]You wiggle happily on the spot.[or]You smile inwardly, excited at the prospect of a change.[or]You make a gleeful gurgling sound.[or]A euphoric shiver of anticipation rushes through your veins.[in random order][otherwise][one of]You smile nervously, and with more than a hint of excitement.[or]Your heart flutters and you immediately adopt a submissive pose.[or]You happily submit to the change.[in random order][end if]";
	if the player is able to speak, say "[run paragraph on][line break][variable custom style]'[if the humiliation of the player >= 40000]Yes [daddy of M].'[otherwise if the delicateness of the player < 7][one of]Just get me out of this thing, please!!!'[or]This isn't funny! Please help me out...'[or]Look, I'm not some diaper loving weirdo, but please god, yes, get me into a clean one!'[in random order][otherwise if the delicateness of the player > 14][one of]I'm ready for my change now...'[or]I'm sorry, I didn't mean to do a stinky!'[or]I'm sorry, I couldn't hold it in...'[or]*giggle* I love the squishy sound your hand makes against my diaper!'[or]Thank you [daddy of M]!'[or]Teehee, [NameBimbo] needs a new nappy!'[or]Ooh, I hope my new diaper is even prettier than this one!'[or]*giggle* I love it when you change me, [daddy of M].'[in random order][otherwise if the diaper addiction of the player < 11][one of]Go on then, get on with it!'[or]Yeah, yeah, I understand the drill. Let's get it over with.'[in random order][otherwise][one of]Ooh yay, I can't wait to get into a new comfy diaper!'[or]Oh, thank you so much!'[or]This diaper feels good, but I guess a new one will feel even better.'[in random order][end if][roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DiaperCheckResultsTornFlav of (M - a monster):
	say "[speech style of M]'Huh? This diaper is damaged! That won't do, let's get you changed into something safer, and quickly!'[roman type][line break]".

To compute DiaperCheckWetReveal of (M - a monster) to (D - a diaper):
	process state perception of D;
	say "It's only now that [he of M] has pointed it out that you can feel it - your diaper is indeed wet[one of]! You must have used it without even realising it[or][stopping].".

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
	if the diaper-duration of M > 1:
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

Definition: a monster (called M) is diaper change complete cummies rewarding:
	if M is intelligent and M is diaper change cummies rewarding, decide yes;
	decide no.

Definition: a monster is diaper disciplining: decide no. [Does this NPC like to demand that the player stays in diapers until they're satisfied they can stay dry?]
Definition: a monster is diaper leaving: decide yes. [Does this NPC like to leave used diapers behind?]
Definition: a monster is double diaper locking: decide no. [Does this NPC put you in a locked double diaper rather than a cursed double diaper?]

old-diaper is an object that varies.
current-diaper is an object that varies.
new-diaper is an object that varies.

To compute diaper change of (M - a monster):
	now current-diaper is nothing;
	now new-diaper is nothing;
	[These are failsafes below to avoid bugs]
	if M is friendly, anger M;
	if M is uninterested, now M is interested;
	if M is grabbing the player and M is changing the player:
		now current-diaper is a random worn crotch covering clothing;
		now current-diaper is a random top level protection clothing; [Top level takes priority]
		if current-diaper is worn no protection overdress, now current-diaper is nothing; [These are allowed to stay around!]
		if (current-diaper is nothing or current-diaper is chastity bond) and there are worn knickers, now current-diaper is a random worn knickers; [All knickers MUST be removed]
		if current-diaper is unmessed unremovable knickers:
			say "[speech style of M]'I can't remove that [ShortDesc of current-diaper]. Damn, I guess I'll have to leave you like this, for now.'[roman type][line break]";
			satisfy M;
			dislodge M;
			repeat with C running through diapers carried by M:
				only destroy C;
			if diaper quest is 1, progress quest of naughty-quest;
			rule succeeds;
		if old-diaper is diaper and current-diaper is chastity bond and M is diaper change chastity cummies rewarding and the player is able to orgasm so soon:
			compute diaper change chastity cummies reward of M;
			rule succeeds;
		otherwise if current-diaper is clothing and current-diaper is not chastity bond:
			now old-diaper is current-diaper;
			if current-diaper is zippable overdress:
				say UnzipFlav of M at current-diaper;
				ZipDown current-diaper;
				rule succeeds;
			otherwise if current-diaper is displacable and current-diaper is not knickers:
				compute M displacing current-diaper;
				rule succeeds;
			otherwise if current-diaper is diaper and M is willing to double diapers and M is eager to double diapers and (current-diaper is unmessed or diaper messing >= 4):
				if new-diaper is not a DQBulkier diaper, now new-diaper is a random eligible plentiful DQBulkier disposable diaper;
				if new-diaper is not a diaper, now new-diaper is a random plentiful DQBulkier disposable diaper;
				if new-diaper is diaper:
					say DoubleDiaperFlav of M;
					blandify and reveal new-diaper; [clean and reset it]
					if M is double diaper locking:
						now new-diaper is locked;
					otherwise:
						now new-diaper is cursed; [elsewise the player will almost always be able to remove it without issue]
						compute quest of new-diaper;
					diaperAdd new-diaper;
					say DoubleDiaperAfterFlav of M;
					[no 'rule succeeds' because we're done, so now we follow through to the end.]
				otherwise: [couldn't find an eligible bulkier diaper]
					say DiaperChangeRemovalFlav of M;
					now M is carrying current-diaper;
					dislodge current-diaper;
					if current-diaper is diaper, DiaperAddictUp 1;
					rule succeeds;
			otherwise:
				say DiaperChangeRemovalFlav of M;
				if current-diaper is not diaper-stack, now M is carrying current-diaper;
				dislodge current-diaper;
				if current-diaper is diaper, DiaperAddictUp 1;
				if current-diaper is not diaper-stack, rule succeeds; [we remove diaper stack and put on new diaper in same turn to avoid loads of glitches]
		otherwise if old-diaper is diaper and M is diaper change during cummies rewarding and the player is able to orgasm so soon: [player was wearing a diaper, what a good girl! she gets cummies]
			compute diaper change during cummies reward of M;
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
				otherwise:
					if M is diaper disciplining, summon new-diaper uncursed;
					otherwise summon new-diaper cursed;
				if old-diaper is diaper:
					fully clean new-diaper;
					say DiaperChangeFlav of M;
					say DiaperChangeComment of M;
					if oldDiaperLeft is a thing and oldDiaperLeft is in the location of the player, say DiaperDropFlav of M;
				otherwise:
					say DiaperDonateFlav of M;
					say DiaperDonateComment of M;
				if new-diaper is cursed and (strongCurses is 1 or the quest of new-diaper is no-clothing-quest), compute new quest of new-diaper;
			fully clean new-diaper;
			if M is diaper disciplining, now the diaper-duration of M is the diaper punishment length of M;
		if old-diaper is diaper and M is diaper change complete cummies rewarding and the player is able to orgasm so soon:
			compute diaper change complete cummies reward of M;
		repeat with C running through temporarily-removed diaper covers carried by M: [diaper covers need to go on first]
			if C is actually summonable:
				say "[BigNameDesc of M] replaces your [C].";
				only summon C;
			if C is not worn, destroy C; [Something went wrong, but we still want this item to be available in the game universe]
		repeat with C running through temporarily-removed clothing carried by M:
			if C is actually summonable:
				say "[BigNameDesc of M] replaces your [C].";
				only summon C;
			if C is not worn, destroy C; [Something went wrong, but we still want this item to be available in the game universe]
		repeat with C running through worn crotch-displaced clothing:
			compute M replacing C;
		satisfy M;
		increase the times-changed of M by 1;
		compute unique diaper change effect of M;
		dislodge M;
		repeat with C running through diapers carried by M:
			only destroy C;
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

To compute diaper change complete cummies reward of (M - a monster):
	say "[speech style of M]'[one of]You've been such a good baby recently, I think you need a little reward.'[or]Time for your squirt squirt, for being such a good baby!'[stopping][roman type][line break][BigNameDesc of M] starts to rub you through the front of your diaper. You soon feel a certain warmth rising, and you [if the sex addiction of the player > 12]sigh in glee and [otherwise]can't help but[end if] explode an orgasm into your new nappy.";
	vaginally orgasm shamefully; [This automatically gives diaper addiction because the player will be wearing a total protection diaper at this moment.]
	say "[BigNameDesc of M] pulls away, admiring [his of M] handiwork[one of].[line break][speech style of M]'If you keep being a good baby, you'll get more where that came from.'[roman type][line break][or].[stopping]";
	FavourDown M by 2.

To say DiaperChangeRemovalFlav of (M - a monster):
	say "[BigNameDesc of M] [if current-diaper is diaper]slowly pulls your [ShortDesc of current-diaper] away[otherwise]rips off your [ShortDesc of current-diaper][end if][if current-diaper is messed knickers]. Taking out several baby wipes, [he of M] gently but efficiently wipes your bottom down until it is completely clean[end if].".

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
		say "[BigNameDesc of M] [one of]looks like [he of M][']s about to change you[or]is about to remove your [ShortDesc of old-diaper] but then presses a hand against it, feeling just how squishy and thoroughly soaked it is,[in random order] and then seems to change [his of M] mind.[line break][speech style of M]'[one of]Actually... I COULD change you, OR... I have a better idea[or]Clearly you need more diapers than this to keep you from leaking[or]You should know, this is something I only do to the most pathetic babies[in random order].'[roman type][line break]".

To say DoubleDiaperAfterFlav of (M - a monster):
	if M is intelligent:
		say "[speech style of M]'[one of]Hahaha, that's perfect[or]Oh my, it fits even better than I imagined[or]I'm afraid you may be left with a bit of a waddle, haha[or]haha, I wonder if you'll even be able to walk now[in random order]!'[roman type][line break]".

To say DiaperChangeComment of (M - a monster):
	if M is intelligent:
		if M is diaper disciplining and the diaper-duration of M <= 0, say "[speech style of M]'[one of]I'm afraid I'm going to have to insist you stay in diapers until you can prove to me that you can stay dry[or]That's better. Now make sure that you stay in diapers until I give you permission to return to big [boy of the player] panties[or]Well, that should do for now. And this is the only warning I'm going to give you: I will punish you if I catch you outside of diapers before you've proved to me that you can stay dry[or]That's a lot better, isn't it? Now make sure you're a good [boy of the player] and do NOT stop wearing diapers until you have proved that you have stopped having accidents[in random order].'[roman type][line break]";
		otherwise say "[speech style of M]'There we go, all clean!'[roman type][line break]".

To say DiaperDonateComment of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]And you'll wear diapers until I say that you have permission to wear grown-up panties again, or there'll be hell to pay!'[or]That's better. And if I catch you out of diapers before I've given you permission, you'll be in big trouble.'[or]There we go. And you don't want to know how I'll punish you if I catch you outside of diapers before I've told you that you're allowed.'[in random order][roman type][line break]".

To decide which number is the diaper punishment length of (M - a monster):
	decide on 3.

To say DiaperSpace of (M - a monster):
	say "[if there is a worn diaper bag of holding and new-diaper is carried diaper]your [ShortDesc of random worn diaper bag of holding][otherwise if there is a worn baby diaper bag of holding and new-diaper is carried diaper]your [ShortDesc of random worn baby diaper bag of holding][otherwise]seemingly nowhere[end if]".

To say DiaperChangeStart of (M - a monster):
	say "[BigNameDesc of M] rolls you onto your back and pins you down with one strong arm.".

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
		let pain-factor be the spank strength of M;
		if there is worn ass plugging clothing:
			let K be a random worn ass plugging clothing;
			say "The plug[if K is vagina plugging]s[end if] inside of you [if K is jelldo]block[otherwise]send[end if][if K is not vagina plugging]s[end if] the vibrations of the spank [if K is jelldo]from ruining your[otherwise]deep inside your[end if] [if K is vagina plugging][fuckholes][otherwise][asshole][end if]. Ouch!";
			if K is vagina plugging and K is not jelldo, ruin vagina times 2;
			if K is not jelldo, ruin asshole times 2;
		repeat with K running through ass covering clothing:
			let R be a random number between 0 and 1;
			if R is 1:
				[say "Your [K] manages to soften the blows a [one of]tiny bit[or]little[or]small amount[in random order]. ";]
				decrease pain-factor by 1;
		let D be a random worn diaper;
		if D is diaper:
			if D is messed:
				say "[one of]The gross squishiness of your messy diaper being spanked makes you cringe and shudder as it oozes around your loins.[or][or][cycling]";
				humiliate 150;
				DelicateUp 1;
				now pain-factor is 0;
			otherwise:
				decrease pain-factor by 2;
		if the reaction of the player > 0, decrease pain-factor by 1;
		if a random number between 0 and 2 < pain-factor:
			say "The spanks [if the number of ass covering clothing is 0]collide painfully with your bare ass cheeks[otherwise]still [one of]hurt[or]make you squeal[or]cause you to whimper[at random], even through your clothing[end if]. ";
			PainUp 1;
		otherwise:
			if there is ass covering clothing, say "Thanks to your [if there is a worn diaper]diaper[otherwise][random top level ass protection clothing][end if], you manage to tolerate the [one of]pain[or]punishment[cycling].";
			otherwise say "You suffer through the pain silently.";
		let TB be the total squirtable fill of belly;
		if TB > 0 and the player is able to expel and a random number between (15 - the incontinence of the player) and 15 < TB + (pain-factor * 3) and the latex-transformation of the player < 5 and currently-squirting is 0:
			say "The pain of the spanking episode causes you to expel your [enema].";
			asssquirt;
		otherwise if the incontinence of the player > a random number between 1 and (7 - pain-factor) and the player is full and asshole is not actually occupied and there is a worn total protection soilable knickers:
			say "The pain from the spanking causes you to lose control of your sphincter!";
			compute messing;
		otherwise if the incontinence of the player > (a random number between 1 and (7 - pain-factor)) and the bladder of the player > (bladder-risky-level / 2) and the delicateness of the player > 8:
			say "The pain of the spanking episode causes you to involuntarily wet yourself.";
			now delayed urination is 1;
			try urinating;
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
	decide on 3.

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
	[if the oral sex addiction of the player > 6, decrease O by 1;]
	if the player is extremely horny:
		if O > 5, now O is 1;
		otherwise now O is 2;
	if debugmode > 0, say "O is [O]";
	decide on O.]

To compute masturbation of (M - a monster):
	if M is not masturbating the player:[fixes all the masturbation related stuff before masturbation]
		initiate masturbation of M;
	if the latex-transformation of the player > 3:
		say "You hardly feel anything thanks to your rubbery genitals.";
	otherwise if the sex-length of M > 0:
		progress masturbation of M;[handles a turn of masturbation]
	decrease the sex-length of M by 1;
	if the sex-length of M <= 0, compute masturbation aftermath of M.[if the player came or the monster lost interest, finish up]

To initiate masturbation of (M - a monster):
	say MasturbationDeclarationFlav of M;
	if there is a worn diaper, compute automatic state check of a random worn diaper;
	now the sex-length of M is the masturbation length of M;
	now M is grabbing the player;
	now M is masturbating the player;
	say MasturbationStartFlav of M.

To say MasturbationDeclarationFlav of (M - a monster):
	if M is intelligent:
		if there is a worn diaper, say "[speech style of M]'[one of]You're looking a little flustered there, baby. Let's see what I can do about that...'[or]Are you feeling good inside your nappy? Let [daddy of M] help with that...'[at random][roman type][line break]".

To say MasturbationStartFlav of (M - a monster):
	say "[BigNameDesc of M] pushes down on your back with one powerful hand to keep you still, and places [his of M] other hand over [if there is a worn diaper]the crotch of your diaper[otherwise if the player is herm]your [genitals][otherwise if the player is possessing a vagina]your [vagina][otherwise if the player is possessing a penis]your [ShortDesc of penis][otherwise]your crotch[end if]!".

To progress masturbation of (M - a monster):
	say MasturbationFlav of M;
	stimulate vagina from M;
	if refractoryperiod > 0, now the sex-length of M is 0;[if the player came, the monster is done]
	compute unique masturbation effect of M.

To compute unique masturbation effect of (M - a monster):
	let D be a random worn messed diaper;
	if D is diaper and refractoryperiod <= 0:
		say "[one of]The gross squishiness of your messy diaper being rubbed makes you cringe and shudder as it oozes around your loins.[or][or][cycling]";
		humiliate 150;
		DelicateUp 1.

To decide which number is the masturbation length of (M - a monster):
	decide on a random number between 3 and 5.

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
	if there is a worn diaper, compute diaper masturbation climax of M;
	otherwise compute vanilla masturbation climax of M.

To compute diaper masturbation climax of (M - a monster):
	vaginally orgasm shamefully.

To compute vanilla masturbation climax of (M - a monster):
	vaginally orgasm shamefully.

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
		replace any diapers;
		replace any clothes;
		say EnemaAfterFlav of M;
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
	now P is cursed;
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
	decide on a random number between ??? and ???. [each ??? must be between 1 and X inclusive]

To decide which number is the max-forcefeed-length of (M - YOUR NPC HERE):
	decide on X.

]

To compute forcefeed of (M - a monster):
	if M is not feeding the player:
		compute forcefeed start of M;
	progress the forcefeeding of M;
	let S be the chosen-forcefeed-round of M;
	compute forcefeed round S of M;
	if the sex-length of M <= 0:
		dislodge M;
		say ForcefeedAftermath of M;
		say ForcefeedAfterFlav of M;
		replace any gags;
		if M is not grabbing the player, satisfy M. [this allows for us to have transitioned into another punishment during the aftermath]

To compute forcefeed start of (M - a monster):
	now the sex-length of M is the forcefeed-length of M;
	now the chosen-forcefeed-round of M is the max-forcefeed-length of M + 1; [because we always subtract at least 1 before the first forcefeed]
	say ForcefeedDeclarationFlav of M;
	follow the monster removing gag rule; [If there's a gag, let's take it off for now]
	now M is grabbing the player;
	now M is feeding the player;
	say ForcefeedStartFlav of M.

To decide which number is the forcefeed-length of (M - a monster):
	decide on 2.

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

To say ForcefeedDeclarationFlav of (M - a monster):
	say "[speech style of M]'[one of]It looks like it's time for your din-dins!'[or]Babies need to eat and drink to keep up their strength... and to keep their bowels moving.'[in random order][roman type][line break]".

To say ForcefeedPillDeclarationFlav of (M - a monster):
	say "[speech style of M]'[one of]And finally... let's try this!'[or]This will keep your bowels moving!'[then at random][roman type][line break]".

To say ForcefeedStartFlav of (M - a monster):
	say "[BigNameDesc of M] takes you onto [his of M] lap, your back pressing into [his of M] chest, and holds you very tightly. You won't be able to escape now.".

To decide which number is breast-milk-this-time:
	if the class of the player is catgirl, decide on 1;
	decide on the remainder after dividing time-turns by 2.

To compute forcefeed round (N - a number) of (M - a monster):
	if N is 1 and M is willing to forcefeed pills:
		if M is intelligent, say "[ForcefeedPillDeclarationFlav of M]";
		say "[BigNameDesc of M] pushes a small white pill into your mouth and forces you to swallow it. [one of]Almost immediately[or]Once again[stopping] you feel that your stomach is more... active. It feels like it's digesting its contents at double speed!";
		DigestionTimerUp 360;
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
	say "[speech style of M]'[one of]What a good [boy of the player]! Off you trot now!'[or]There you go, all nice and full now I'm sure?'[or]That was tasty, wasn't it? Good [boy of the player].'[in random order][roman type][line break]".

Section - Suppository

To compute suppository of (M - a monster):
	compute suppository prep of M;
	say "[SuppositoryFlav of M]";
	increase suppository by the suppository strength of M;
	say "[SuppositoryAftermath of M]";
	say "[SuppositoryAfterFlav of M]";
	replace any buttplugs;
	unless M is grabbing the player:
		replace any diapers;
		replace any clothes;
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
	say "[ConfiscationDeclarationFlav of M on C]";
	compute M confiscating C;
	say "[ConfiscationReaction of M on C]";
	say "[ConfiscationAfterFlav of M on C]";
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
	say "[variable custom style][if the player is not able to speak][muffled sounds][otherwise if the player is feeling dominant]'[one of]Hey, that's mine!'[or]Hey, I need that!'[or]Give that back!'[in random order][otherwise if the player is not feeling submissive]'[one of]Oi!'[or]That's not fair...'[or]I... that...'[in random order][otherwise]'[one of]*Sniff*... Okay...'[or]I guess it's for the best...'[or]You're the boss...'[or]I'm sorry...[in random order][end if][roman type][line break]".

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
		satisfy M;
	otherwise:
		say "BUG - couldn't find appropriate clothing to put on the player.".

To say BabywearDonationDeclarationFlav of (M - a monster) on (C - a clothing):
	if M is intelligent, say "[speech style of M]'Let's put you in something a bit more appropriate for a [if the health of M < the maxhealth of M]little brat[otherwise]diaper-dependent baby[end if].'[roman type][line break]".

To compute (M - a monster) babywear donating (C - a clothing):
	say BabywearDonationFlav of M on C;
	if C is bondage:
		summon C locked;
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
	if diaper messing >= 7:
		if there is a regional diaper pail:
			compute diaper pail punishment of M;
			satisfy M;
		otherwise:
			compute diaper pail substitute punishment of M;
	otherwise:
		compute soiled diaper dropping of M;
		if M is intelligent, say "[speech style of M]'Let me show you what happens if you refuse to clean up after yourself...'[roman type][line break]";
		if the health of M >= the maxhealth of M, now the health of M is the maxhealth of M - 1; [make them hurt so they won't do nice stuff like diaper change]

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
	say "[BigNameDesc of M] picks you up and forces you face-first into the diaper pail! You are now stuck upside-down in the pail, your face pressed against old stinky nappies! Your legs flail wildly in the air as you are forced to breathe in the noxious fumes.".

To compute soiled diaper dropping of (M - a monster):
	let N be 0;
	repeat with SD running through soiled-diaper carried by M:
		now SD is in the location of the player; [So now the NPC should do a normal punishment]
		increase N by 1;
	say "[BigNameDesc of M] drops the [if N > 1][N] soiled diapers[otherwise]nasty messy diaper[end if] at your feet.".

To compute (M - a monster) face smushing with (D - a thing):
	say "[BigNameDesc of M] pushes your face into [NameDesc of D]!";
	say FaceSmushDeclareFlav of M with D;
	DelicateUp 1.

To say FaceSmushDeclareFlav of (M - a monster) with (D - a thing):
	if M is intelligent, say "[speech style of M]'[one of]There, smell that!'[or]Take a deep breath, you disgusting worm.'[or]Breathe your own shame in nice and deep now.'[or]Take a good look. This is all you're good for now.'[in random order][roman type][line break]".

Diaper Events ends here.
