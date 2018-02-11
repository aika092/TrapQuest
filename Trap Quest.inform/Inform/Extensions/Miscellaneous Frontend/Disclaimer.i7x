Disclaimer by Miscellaneous Frontend begins here.


[!<tableOfDisclaimer:Table>*

REQUIRES COMMENTING

*!]
Table of Disclaimer
title	subtable	description	toggle
"[if text delay is 999]By continuing you are acknowledging that you[otherwise]By pressing enter I acknowledge that I[end if] have read the disclaimer and agree with its principles."	--	--	quit rule

[!<tableOfDisclaimerBody>*

REQUIRES COMMENTING

*!]
Table of Disclaimer Body
left	central	right
""	"[disclaimer]"	""


To say disclaimer:
	if diaper quest is 0:
		say "This game is a piece of erotic interactive fiction intended for consumption by mature adults only. The game has been carefully crafted to make sure that it is legal to play in the UK (and therefore in the majority of the West). Please make sure it is legal to play this game where you live. In some parts of the world, homosexuality and therefore sex games like this that can optionally contain gender-bending and fluid sexuality are still outlawed. The following are the types of content you can be confident this game will [bold type]not[roman type] contain: gore, scat, incest, extreme torture, sex with real animals, underage characters. We've also tried as hard as possible to make sure it is clear that even in the times in the story where a character might feel or seem reluctant or disappointed, they are actively consenting to the activities taking place. The game contains offensive gendered slurs and stereotypes, and you will encounter some slightly niche adult kinks, including implied reluctance, degradation, nymphomania, domination and submission, and some light bondage & impact play (BDSM). There are further weirder kinks you will only encounter if you enable them in the options given to you at the beginning of the game. These topics are presented in the context of a FICTIONAL UNIVERSE that does not reflect the author's views or the reality of modern day society. In the same way you would not watch the movie Saw and then consider it any more morally acceptable to torture or murder people, you should not, after playing this game, be under any impression that the activities encountered are any less morally despicable than you previously held.[paragraph break]";
		say "Similarly you should not understand the stereotypes portrayed and played on in this game to be an accurate reflection of people, or trends of people. In this game, the player can be humiliated by being forced to look and act according to old fashioned gender roles. The intention of this is to ridicule such outrageous world views (this is most noticeable if you choose to play as a man) by causing you, the player, to fall victim to these tropes. Roleplay based on sexist or similar philosophies is only acceptable when used for mutual enjoyment between consenting adults. In the real world, men, women and others who do not fit into the binary gender spectrum should be respected and treated equally, judged on their deeds and choices and not on the way they were born. It is imperative that you do not play this game unless you are mature enough to be fully aware of this separation between fantasy and reality. The legal age for you to purchase and view adult (X) material in your country may be a reasonable guideline for when you may be approaching this age, but the game author personally recommends not engaging in and consuming such potentially objectionable material as is contained within this game until you are at least 21 years old.[paragraph break]Some images were obtained for this game through image sharing sites where it is a breach of the Terms of Service to upload copyrighted material. If, however, you do discover images in this game for which you are the copyright holder, please inform the author who will promptly remove them from the game in compliance with the DMCA. All non-photographic content (the writing, art and the game code) is Aika's intellectual property.[paragraph break]";
	otherwise:
		say "This game is a piece of interactive fiction intended for consumption by mature adults only. In this game, the player can be humiliated by being forced to look and act according to old fashioned gender roles and/or as an 'adult baby'. There are no underage characters in this game - all characters are consenting (if sometimes reluctant!) adults. Why adult babies then, you ask?  Well, because there's nothing more outrageously gross and humiliating and scandalous than an adult being made to look and act and use the toilet like a baby. Roleplay based on sexist or similar philosophies are only acceptable when used for mutual enjoyment between consenting adults. In the real world, men, women and others who do not fit into the binary gender spectrum should be respected and treated equally, judged on their deeds and choices and not on the way they were born. Acts based on sexist or similar philosophies are only acceptable when used for mutual enjoyment between consenting adults. It is imperative that you do not play this game unless you are mature enough to be fully aware of this separation between fantasy and reality. The legal age for you to purchase and view adult (X) material in your country may be a reasonable guideline for when you may be approaching this age, but the game author personally recommends not engaging in and consuming such potentially objectionable material as is contained within this game until you are at least 21 years old.[paragraph break]Some images were obtained for this game through image sharing sites where it is a breach of the Terms of Service to upload copyrighted material. If, however, you discover images in this game for which you are the copyright holder, please inform the author who will promptly remove them from the game in compliance with the DMCA. All non-photographic content (the writing, art and the game code) is Aika's intellectual property.[paragraph break]";
	if text delay is 999:
		let disclaimer-read be 0;
		while disclaimer-read is 0:
			say "[bold type]Have you read the disclaimer? [roman type][yesnolink]";
			if the player consents, now disclaimer-read is 1;
			otherwise say "Please read the disclaimer before continuing.";
	otherwise:
		say "[bold type]Press Enter to Continue[roman type]";
		wait 30000 * text delay ms before continuing;
	clear the screen.

Disclaimer ends here.

