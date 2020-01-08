Humiliation by Player Description begins here.


Definition: yourself is proud:
	if the humiliation of the player < HUMILIATION-PROUD, decide yes;
	decide no.

Definition: yourself is modest rather than ashamed:
	if the humiliation of the player < HUMILIATION-MODEST, decide yes;
	decide no.

Definition: yourself is disgraced:
	if the humiliation of the player >= HUMILIATION-DISGRACED, decide yes;
	decide no.

Definition: yourself is shameless:
	if the humiliation of the player >= HUMILIATION-SHAMELESS, decide yes;
	decide no.

Definition: yourself is broken:
	if the humiliation of the player >= HUMILIATION-BROKEN, decide yes;
	decide no.


[!<SayHumiliationDesc>+

A description of the player's self-esteem.

+!]
To say HumiliationDesc:
	if the latex-transformation of the player > 6:
		say "Your mind is very empty, you don't have any self worth right now but then you don't consider yourself a person any more, but instead just a walking sex toy. You can't degrade or humiliate a mindless object.";
	otherwise if the player is proud:
		say "You have a strong ego and a determined will to fight against everything the game throws your way. It's very easy for things to make you embarrassed, because you're just not used to being in such humiliating situations and wearing such outrageous clothing! You have your reputation to think of...";
	otherwise if the player is modest:
		say "The sacrifices you have made so far have slightly damaged your ego, but you consider your humiliation the sole fault of Nintendolls and it isn't affecting your self respect. You're slowly getting better at handling being caught in degrading situations but it's still extremely embarrassing. You are very concerned that you're starting to build a reputation for yourself in this world that won't be easy to erase...";
	otherwise if the player is not disgraced:
		say "You feel dirty and disgusted with yourself for the shameful things that you've let happen to you. It's beginning to make you feel [if diaper quest is 0]like a trashy slut[otherwise]powerless and pathetic like an actual baby[end if], even though you know deep down it's not your fault you're having to submit to these degrading experiences. You're still finding yourself feeling very embarrassed when people are looking at you, but as well as cringing about the thought of being caught in the act, you're also beginning to feel a little bit... excited.";
	otherwise if the player is not shameless:
		say "You have lost respect for yourself and have begun to feel that you are equally to blame for the atrocious activities that you have willingly taken part in. Performing the acts is still deeply humiliating, but you're feeling a lot less despair than when you first entered the game. The degradation is actually beginning to turn you on.";
	otherwise if the player is not broken:
		say "You feel completely worthless. In your mind you are completely responsible for your embarrassing state and for the disgraceful acts you've submitted to and willingly joined in. In your mind submitting to your superiors is now the norm, and resisting is more of a naughty game than a real attempt to escape. You think of yourself as right at the bottom of the pecking order; nobody answers to you and nobody gives a shit what you want or think. And you get terribly [if the player is female]wet down below[otherwise]horny[end if] just thinking about what degrading situation you might find yourself in next...";
	otherwise:
		say "You are mentally broken - your submission to the monsters and the people in this game and your frequent state of slutty dressing has taken its toll. You no longer have any will to fight back. You can't help but actively seek out more ways to publicly embarrass yourself and encourage people to [if diaper quest is 0]objectify your body and use[otherwise]play with[end if] you like a doll, as you consider yourself nothing but an object, and a pretty worthless one at that. Willingly performing degrading acts now turns you on, and you secretly seek out new ways to achieve this thrill. Anything that isn't inherently shameful just seems so very boring.".


[Here is the definition of the HUMILIATION-xxx values (functions). Also, refer to HOLY BIBLE OF HUMILIATION GUIDELINES]

To decide which number is HUMILIATION-PROUD:
	decide on 8000.

To decide which number is HUMILIATION-MODEST:
	decide on HUMILIATION-PROUD + 8000.

To decide which number is HUMILIATION-DISGRACED:
	decide on HUMILIATION-MODEST + 8000.

To decide which number is HUMILIATION-SHAMELESS:
	decide on HUMILIATION-DISGRACED + 8000.

To decide which number is HUMILIATION-BROKEN:
	decide on HUMILIATION-SHAMELESS + 8000.


Humiliation ends here.
