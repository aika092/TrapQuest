Parser Errors by Miscellaneous Frontend begins here.

[After asking which do you mean (this is the Disambiguation Choices cause crashes rule):
	if inline hyperlinks > 0 and newbie tips is 1, say "[bold type][one of]Do not use a hyperlink here, or this will cause the game to crash. Type a number instead. I have no idea why, sorry.[or]Remember, don't use a hyperlink or the game will crash.[stopping][roman type][line break]".]

disambiguation-busy is initially false.

A thing has a number called the disambiguation-ID. Understand the disambiguation-ID property as describing a thing when disambiguation-ID-count > 1.

Disambiguation-ID-count is a number that varies.

Before asking which do you mean (this is the Disambiguation Choices need clarification rule):
	now disambiguation-busy is true.

After asking which do you mean (this is the Disambiguation Choices no longer need clarification rule):
	now disambiguation-busy is false.

Every turn:
	if disambiguation-ID-count > 1:
		now disambiguation-ID-count is 1;
		repeat with T running through things:
			now the disambiguation-ID of T is 0.

[!<RuleForPrintingAParserErrorWhenTheLatestParserErrorIsTheIBedYourPardonError>+

REQUIRES COMMENTING

+!]
Rule for printing a parser error when the latest parser error is the I beg your pardon error:
	if the bimbo of the player > 11, say "[second custom style][one of]I like, totally forgot what I was going to do![or]Gosh, I feel so light-headed. What was I going to do again?[in random order][roman type][line break]" instead.

[!<RuleForPrintingAParserErrorWhenTheLatestParserErrorIsTheNotAVerbIRecogniseError>+

REQUIRES COMMENTING

+!]
Rule for printing a parser error when the latest parser error is the not a verb I recognise error:
	say "That's not a verb I recognise. But if you really think it should be, maybe tell Aika?" instead;

[!<RuleForPrintingAParserErrorWhenTheLatestParserErrorIsTheDidNotUnderstandError>+

REQUIRES COMMENTING

+!]
Rule for printing a parser error when the latest parser error is the didn't understand error:
	if the bimbo of the player > 12, say "[second custom style]I'm such a dumb slut I can't even write words in my head properly! I should probably try again, I guess.[roman type][line break]" instead;
	otherwise say "I didn't understand that phrase." instead.

[!<lastError|String>*

REQUIRES COMMENTING

*!]
Last error is indexed text that varies. The last error is "derp".

[!<RuleForPrintingAParserErrorWhenTheLatestParserErrorIsTheNotAVerbIRecogniseError>+

REQUIRES COMMENTING

+!]
Rule for printing a parser error when the latest parser error is the not a verb I recognise error:
	now the last error is the player's command;
	if the bimbo of the player > 12, say "[second custom style]What does '[last error]' mean? Is it another word for '[one of]put it up my butt[or]give a blowjob[or]suck on greedily[in random order]'?[roman type][line break]" instead;
	otherwise say "[variable custom style]I don't know how to do that![roman type][line break]" instead.

[!<RuleForPrintingAParserErrorWhenTheLatestErrorIsTheNounDidNotMakeSenseInThatContextError>+

REQUIRES COMMENTING

+!]
Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error:
	if the bimbo of the player > 12, say "[second custom style]What does that mean? Is it another word for '[one of]put it up my butt[or]give a blowjob[or]suck on greedily[in random order]'?[roman type][line break]" instead;
	otherwise say "[variable custom style]I don't know how to do that![roman type][line break]" instead.

Parser Errors ends here.
