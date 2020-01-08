Reset Flags by Every Turn begins here.


[Any and all flags that only last for one turn should go here.]
[Also delayed humiliation, since it's the last thing that happens in a round.]

[!<testingVal:Integer>*

REQUIRES COMMENTING

*!]
testing-val is a number that varies.

[!<ResetFlags>+

REQUIRES COMMENTING

+!]
To Reset Flags:
	if refactoryperiod > 0:
		decrease refactoryperiod by 1;
		now aroused-turns is 0; [The player can keep gaining arousal after orgasms. But then some of it will rather quickly drop off after sex ends, if she successfully orgasmed.]
	[if testing-val is not the number of things in standard item pen and testing-val > 0, say "[bold type]The number of things in Standard Item Pen went from [testing-val] to [number of things in standard item pen].[roman type][line break]";
	now testing-val is the number of things in standard item pen;]
	now auto is 0;
	now boobshrinkflav is 0;
	now semen-encountered is 0;
	now attack-type is 0;
	now mirror-triggered is 0;
	now voluntarySquatting is 0;
	if presented-orifice is nothing and the player is not live fucked, now the player-reaction of the player is unprepared; [This is how we tell the game that the player is no longer submitting or resisting.]
	now presented-orifice is nothing;
	finally humiliate the delayed humiliation of the player;
	decrease blush factor by 100;
	if blush factor > 2000, now blush factor is 2000;
	if blush factor < 0, now blush factor is 0;
	now movement-reduction-flav-said is 0;
	repeat with M running through already moved monsters:
		now M is not moved;
		now M is not seeked;
	vary stickman counters;
	now feeding bowls is in Hotel18; [The inbuilt shit within I6 means all edible items must be portable to work. This way, even if the player picks it up, it goes back down on the floor immediately.]
	now food machine is in School17; [same for the school food machine]
	if surrendered is 1 and the player is not in danger, now surrendered is 0;
	repeat with C running through worn clothing:
		now the upgrade-target of C is nothing;
	repeat with F running through fuckholes:
		let being-fucked be 0;
		repeat with R running through things penetrating F:
			if R is embodied, now being-fucked is 1;
		if being-fucked is 0, now the buildup of F is 0.

[!<SayOtherTips>+

REQUIRES COMMENTING

+!]
To say other tips:
	if the player is not immobile and the body soreness of the player > 6 and the player is prone, say "[one of][newbie style]Newbie tip: You're quite sore, so you should look out for furniture to rest on, which will heal you. If you can't find any, you can always rest on the royal bed in the starting room, but this will increase your sex addiction, so it's best used as a last resort.[roman type][line break][or][stopping]";
	if the player is not immobile and the soreness of asshole > 6 or the soreness of vagina > 6, say "[one of][newbie style]Newbie tip: Your hole is quite sore. It'll slowly go down over time, but you can heal it a bit instantly with lubricant. Also, you can drink from the statue in the statue hall to heal loads instantly, but don't do this too much - every time you do, you'll have to swallow some semen, and too much will make you become addicted.[roman type][line break][or][stopping]";
	if the player is monster fucked or there is a monster grabbing the player, say "[one of][newbie style]Newbie tip: There's no way to escape until they're done with you. You can now pretty much only choose between 'submit' and 'resist'. Submitting increases humiliation but generally helps prevent other [']bad['] stats [if diaper quest is 1]increasing and prevents angering the enemy further, meaning hopefully they'll be friendly the next time they meet you, rather than hold a grudge[otherwise](mainly soreness) increasing[end if].[roman type][line break][or][stopping]".


Reset Flags ends here.

