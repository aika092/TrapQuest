Squatting by Actions begins here.

[!<voluntarySquatting:Integer>*

Did the player purposefully push as opposed to just failing to hold on? Mind control counts as purposeful.

*!]
voluntarySquatting is a number that varies.

[!<publicSquattingLimit:Integer>*

If the humiliation of the player is below this, the player will refuse to expel in front of NPCs.

*!]
public-squatting-limit is a number that varies. public-squatting-limit is 30000.

Squatting is an action applying to nothing.

Check squatting:
	if the trophy-mode of expel-trophy is 1 and the player is not in a predicament room, say "Thanks to the magic power of [NameDesc of expel-trophy], this only happens automatically." instead;
	if cumdump-headband is worn, say "Thanks to the magic power of [NameDesc of cumdump-headband], this only happens automatically." instead;
	if the semen addiction of the player >= 20 and the semen volume of belly > 0, say "[variable custom style]There's no way I'm letting out my precious [semen] until I literally can't hold it in any longer![roman type][line break]" instead;
	if the semen addiction of the player > 16 and the semen volume of belly > 0 and the incidents of enema-cramping <= 0, say "[variable custom style]I think I'd like to keep holding onto the warm cum, at least until I start cramping.[roman type][line break]" instead;
	if the total squirtable fill of belly <= 0, say "You don't have any liquid[if egg laying fetish is 1] or eggs[end if] in your belly." instead;
	if asshole is actually occupied, say "The [random thing penetrating asshole] is plugging your [asshole], so this will do nothing!" instead;
	if the latex-transformation of the player > 4, say "Your doll-like butthole's one way valve doesn't let you expel stuff on demand." instead;
	if there is an enema-filling the player monster, say "You can't do that while the [random enema-filling the player monster] is still administering your enema!" instead;
	if auto is 0:
		if diaper messing >= 5 and rectum >= 1 and the number of worn soilable knickers is 0, say "I don't want to do that right now! What if it's, you know, not all liquid?![newbie style][line break]To voluntarily expel your enema, you need to be sitting on a toilet, or next to a body of water, or have some kind of underwear covering your butt that could catch any mess that comes. Either that, or wait for it to happen involuntarily. (When it happens involuntarily, and you're not wearing soilable underwear, the poop will magically stay inside your belly, and only the liquid will come out.)[roman type][line break]" instead;
		if the humiliation of the player < public-squatting-limit:
			if there is an intelligent awake monster in the location of the player and the diaper addiction of the player < 17 and portal-hotpants is not worn:
				if debugmode > 0, say "If debug mode was disabled, the player would refuse.";
				otherwise say "[variable custom style]I can't bring myself to do that with people watching.[roman type][line break]" instead;
			otherwise if portal-hotpants is worn:
				unless Hotel44 is within vision and the number of awake intelligent monsters in Hotel44 is 0:
					if debugmode > 0, say "If debug mode was disabled, the player would refuse.";
					otherwise say "[variable custom style]I can't bring myself to do that! The pimp [if Hotel44 is not within vision]and who knows how many other people [end if]will be watching![roman type][line break]" instead;
			otherwise if the player is in HoleInWall or the player is in a blindroom:
				if debugmode > 0, say "If debug mode was disabled, the player would refuse.";
				otherwise say "[variable custom style]I can't bring myself to do that when I don't know who could be watching![roman type][line break]" instead;
		if the player is ass protected:
			let P be a random worn bottom level ass protection clothing;
			if P is not cursed:
				say "Do you really want to push the contents of your belly out into [NameDesc of P]? ";
				if the player is bimbo consenting, say "";
				otherwise say "Then you should probably [if P is displacable][bold type]displace[roman type] [him of P][otherwise]get [him of P] out of the way[end if] first." instead;
		if the pill-timer of triple-dildo-predicament > 0, increase the pill-timer of triple-dildo-predicament by 1;
		if the player is able to use a toilet and the location of the player is toilets:
			say "Did you mean to use the toilet? ";
			if the player is reverse bimbo consenting:
				allocate 6 seconds;
				compute toilet use instead;
	if currently-squirting is 1, say "[if auto is 0]You're already expelling the contents of your belly![end if]" instead.

Carry out squatting:
	now voluntarySquatting is 1;
	allocate 6 seconds;
	say "[if the player is upright and the player is not flying]You bend your knees to squat, with your [MediumDesc of hips] near the ground. [end if]You relax your sphincter's muscles and push.";
	if the latex-transformation of the player > 4:
		say "Nothing happens.";
	otherwise:
		severeHumiliate;
		AssSquirt.
Understand "squat", "squat down", "expel", "expel enema", "expel creampie" as squatting.

Squatting ends here.
