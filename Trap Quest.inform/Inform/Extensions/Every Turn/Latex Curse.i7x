Latex Curse by Every Turn begins here.

[
LATEX TRANSFORMATION GUIDELINES:

1+: Virus is at work
2+: Decreased weight
3+: Openness fixed at 10
4+: Orifice soreness no longer impacts: unable to feel pleasure or orgasm
5+: No need to drink or pee, one-way valves
6+: Further decreased weight, body soreness no longer exists, no milk in breasts
7+: not able to speak, makeup max
8: Transformation complete, lose fingers, only able to carry one item.
]

[!<ComputeLatexTransformation>+

REQUIRES COMMENTING

+!]
To compute latex transformation:
	if the latex-transformation of the player > 0 and the latex-transformation of the player < 8:
		increase the latex-transformation of the player by 1;
		now the alert of the player is 1;
		say "[bold type]";
		if the latex-transformation of the player is 2:
			say "Some of the detail in your skin is [one of]definitely[or]once again[stopping] fading. You could also swear that you feel yourself getting slowly less and less heavy...";
		if the latex-transformation of the player is 3:
			say "Your skin becomes more and more smooth and featureless by the minute. You suddenly realise your [if the player is male][asshole] feels[otherwise][vagina] and [asshole] feel[end if] more... relaxed. Putting a hand back there, you realise [if the player is male]it is[otherwise]they are both[end if] extremely gaped and hanging open, almost like a sex doll. Even weirder, it doesn't feel uncomfortable at all. It's almost as if your [if the player is male]entrance is[otherwise]entrances are[end if] now completely numb...";
			now the openness of asshole is 10;
			if the player is female, now the openness of vagina is 10;
		if the latex-transformation of the player is 4:
			say "Your skin is now completely smooth and featureless - it doesn't look real but more like something made out of plastic or in a cartoon. ";
			if image cutscenes is 1, display figure of latex curse 1;
			say "Your [if the player is male][asshole] feels[otherwise][vagina] and [asshole] feel[end if] completely rubber all the way inside - whilst you can still feel things, you probably can no longer get sore.";
			now the soreness of asshole is 0;
			now the soreness of vagina is 0;
			now the tolerated of asshole is 0;
			now the tolerated of vagina is 0;
		if the latex-transformation of the player is 5:
			say "Your skin is starting to feel rubbery... is there even any flesh under there any more?! As you're thinking about this, you feel your throat and mouth dry up. But it hardly feels weird, and also you somehow immediately know, you no longer need to keep hydrated. Deep within your body, the tubes connecting to your orifices somehow... close up. It's almost as if they have valves now...";
			now the bladder of the player is 0;
			now the delayed bladder of the player is 0;
		if the latex-transformation of the player is 6:
			say "Your skin is definitely made of some kind of rubbery latex. You can tell that you don't have any kind of flesh under there any more because you feel extremely light and you're pretty sure you can no longer bruise. You're more scared of being over-inflated...";
			if image cutscenes is 1, display figure of latex curse 2;
			now the body soreness of the player is 0;
			now the milk volume of breasts is 0;
		if the latex-transformation of the player is 7:
			say "Your mouth rounds out into a perfect O shape and you realise you can no longer control or close it. You try to move your tongue but you realise that's gone too. You can no longer form proper words but just make a girly moaning sound. Your makeup is now permanently doll-like.";
			if image cutscenes is 1, display figure of latex curse 3;
			now the make-up of face is 3;
			now the lips of face is 3;
		if the latex-transformation of the player is 8:
			say "You feel yourself stop breathing and your heart stop beating, but you realise you no longer need either, you don't have flesh or blood or anything inside you, just tubes and air. Your hands and feet lose their digits and their shape and just turn into rounded ends, as if you were wearing fully rounded mittens. [if the number of things held by the player > 0]You drop everything that you are carrying. It seems unlikely that you'll be able to carry more than one thing carefully in between your two doll stumps now.[end if][line break]You have completely transformed into a latex sex doll.";
			repeat with H running through things carried by the player:
				now H is in the location of the player;
			repeat with C running through worn clothing:
				if C is fake nails, only destroy C;
				if C is bracelet or C is wrist bond:
					say "Your [ShortDesc of C] fall off your wrists and onto the ground.";
					now C is in the location of the player;
		say "[roman type][line break]".

		
[!<TheSexDollsHaveNoVoiceRule>+

REQUIRES COMMENTING

+!]
This is the sex dolls have no voice rule:
	if the latex-transformation of the player > 6, rule fails.
The sex dolls have no voice rule is listed in the player voice rules.

[How many seconds pass before latex transformation progresses]
To decide which number is latex transformation rate:
	let N be 264;
	if dolly tattoo is worn, decrease N by 69;
	decide on N.


Latex Curse ends here.

