Woods Statue by Objects begins here.

WoodsScenery02 is a thing. WoodsScenery02 is in Woods10. WoodsScenery02 is not portable. Understand "statue", "man", "penis", "statue's", "head", "hand", "foot" as WoodsScenery02. Figure of WoodsScenery02 is the file "Env/Forest/statue2.png". Figure of WoodsScenery02b is the file "Env/Forest/statue7.png".
The printed name of WoodsScenery02 is "[TQlink of item described]statue[TQxlink of item described][shortcut-desc][verb-desc of item described]".
WoodsScenery02 has a number called charge.
The text-shortcut of WoodsScenery02 is "sta".

To decide which figure-name is the examine-image of (C - WoodsScenery02):
	if diaper quest is 1, decide on figure of WoodsScenery02b;
	decide on figure of WoodsScenery02.

To say ExamineDesc of (C - WoodsScenery02):
	if diaper quest is 1, say "This statue of a squatting girl is actually a fountain. The water trickles from her pussy, making it look like she's peeing.";
	otherwise say "A statue of an upright naked man with arms spread wide, having sex with a naked woman, who is supporting herself by holding onto a scarf around his shoulders, and her [vagina] impaled on his [manly-penis]. [if the bimbo of the player > 13][line break][second custom style]That looks fun[roman type][line break]. [end if]";
	say "You could try to [bold type]touch the statue's hand[roman type], [bold type]touch the statue's foot[roman type], or [bold type]touch the statue's head[roman type].".

A time based rule (this is the woods statue charge decay rule):
	if the charge of WoodsScenery02 > 0, decrease the charge of WoodsScenery02 by time-seconds.

woodsMagicHunger is initially false.

Check touching WoodsScenery02:
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the charge of the noun > 0:
		allocate 2 seconds;
		say "Nothing happens. Maybe the magic needs to recharge." instead;
	if the player's command includes "hand":
		if the player is deserving of more strength:
			say "As your hand touches the statue's, magic energy ripples through your fingers. You feel stronger!";
			StrengthUp 1;
		otherwise if woodsMagicHunger is false and the total magic power of the player > 0:
			now woodsMagicHunger is true;
			say "As your hand touches the statue's, a jolt of dark magic mixes with that running through your veins. You can feel that from now on, [bold type]whenever you use magic, you'll become more hungry.[line break][variable custom style]Uh-oh. It's going to be more difficult to use magic from now on...[roman type][line break]";
		otherwise:
			say "As your hand touches the statue's, a jolt of electricity shocks your fingers! You recoil in pain. ";
			PainUp 1;
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise if the player's command includes "head":
		if the player is deserving of more intelligence:
			say "As your hand touches the statue's head, magic energy ripples through your fingers. You feel [smarter]!";
			IntUp 1;
		otherwise if diaper quest is 1:
			say "As your hand touches the statue's head, your vision suddenly blurs! A moment later, you find yourself looking out from the statue's eyes. You are now perched in an unchanging squatting position and can both feel and hear the warm water as it flows from your [genitals]. You relax as you grow accustomed to your new position, enjoying the feeling of the unending urination running through you and watering the ground below. You feel so peaceful, so serene.";
			if the bladder of the player <= 0, now the bladder of the player is 5;
			say "You blink, and suddenly you are back in your own body! But you're now in an identical squatting position, and to your [if the diaper addiction of the player < 5]horror[otherwise if the diaper addiction of the player < 12 or the number of worn diapers is 0]surprise[otherwise]delight[end if] you realise that you are still peeing!";
			compute urination;
		otherwise:
			say "As your hand touches the statue's head, your vision suddenly blurs! A moment later, you find yourself looking out from the statue's eyes, seeing the tall faceless white statue-man in front of you. You can feel his fleshy stomach against yours, and you can feel him... you can feel him [i]inside[/i] you! You move to let go of his neck in surprise, only to find you actually can't. And then, he comes to life! He begins thrusting wildly, the [italic type]slap slap slap[roman type] of his body against yours making wet noises that echo through the trees. You can hear the woman's thoughts in side your own head or is she speaking out loud? Or is it your thoughts? It's hard to tell.[line break][second custom style]YES PLEASE YES PLEASE PLEASE PLEASE MORE YES PLEASE YES[roman type][line break]It all feels and sounds so real.[line break][variable custom style]Oh, god, what if someone hears us, and comes to investigate?[roman type][line break]Your [vagina] is aflame with sensation as he takes you hard in your acrobatic stance. [if the player is not possessing a vagina][line break][variable custom style]Wait, I have a vagina?![roman type][line break][end if]You don't have time to think as the silent statue plows deeper and deeper into you, bringing you towards a screaming conclusion...";
			vaginally orgasm shamefully;
			say "[second custom style]PLEASE YES YES YES PLEASE PLEASE [caps please][roman type][line break]";
			if hypno-trigger-please is 0 and the player is the donator:
				say "For some reason the word [second custom style]'PLEASE'[roman type] keeps echoing around in your head. You feel it ebb and settle, taking a permanent home in the deepest recesses of your mind.";
				now hypno-trigger-please is 1;
				now hypno-trigger is "";
			say "You blink, and suddenly you are back in your own body, as if nothing had happened. Except that now you feel much more sweaty and fatigued!";
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise if the player's command includes "foot":
		if timeBombTime > 0 or the player is deserving of more dexterity:
			say "[if the player is upright]You get down on the ground to touch the statue's foot. [bold type]You are now on your knees. [roman type][end if]As your hand touches the statue's foot, magic energy ripples through your fingers. You feel faster!";
			now the stance of the player is 1;
			DexUp 1;
		otherwise:
			let M be a random off-stage woods dwelling mannequin;
			if M is nothing, now M is a random woods dwelling mannequin; [Very unlikely but better safe than sorry]
			set up M;
			now M is in the location of the player;
			now M is interested;
			anger M;
			say "[if the player is upright]You get down on the ground to touch the statue's foot. [bold type]You are now on your knees. [roman type][end if]As your hand touches the statue's foot, it gets stuck! Some magic force keeps your hand there for a few seconds, during which time a [M] has noticed you and walked up behind you...!";
			now the stance of the player is 1;
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise:
		say "You should specify if you're touching the statue's [bold type]hand[roman type], [bold type]foot[roman type], or [bold type]head[roman type]." instead.

A magic consequences rule (this is the woods statue magic consequence rule):
	if woodsMagicHunger is true:
		say "[bold type]The magic ripples through your arms, activating the curse you got from the statue in the Woods.[roman type][line break]";
		if diaper quest is 1 and diaper messing >= 3, compute DQ hunger;
		otherwise compute food.

Woods Statue ends here.
