Timer Stuff by Miscellaneous Backend begins here.

Include Glulx Entry Points by Emily Short.

[Glulx input handling rule for an independent of the player g-event:
	say "[bracket]Non-input event detected: [current glk event][close bracket][line break]".

Glulx input handling rule for a dependent on the player g-event:
	say "[bracket]Player input detected: [current glk event][close bracket][line break]".

Glulx input handling rule for a line-event:
	now the Glulx replacement command is "jump".]

Part - Stuff stolen from Glimmer Canvas Animation

Section - Greasing the wheels for callbacks

[From John Clemens: http://www.math.psu.edu/clemens/IF/I7tricks.html#command]

 To say perform/@ (ph - phrase): (- if (0==0) {ph} -).

Section - Restart the timer after restoring
[The state of the timer is not automatically restored, so we must start a timer on restore at the same speed it was running when the game was saved.]

First report restoring the game:
	reset the Glulx timer;
	continue the action.

Section - Restart the timer after undoing

[The state of the timer is not automatically saved with the game state, so we must start a timer after undoing at the same speed it was running when the game state was saved.]

The immediately undo rule response (E) is "[@ reset the Glulx timer][bracket]Previous turn undone.[close bracket]".

To decide what number is glk event handled in (ev - a g-event) context:
	(- HandleGlkEvent(gg_event, {ev}, gg_arguments) -)

The global timer interval is a number variable. The global timer interval is 50.

Section - Glk events (for use without Glulx Input Loops by Erik Temple)
[This section provides definitions and phrase wrappers that allow us to write I7 code for handling raw input. This code comes from the Glulx Input Loops extensions, so we include it only if that extension is not also present.]

A g-event is a kind of value. The g-events are timer-event, char-event, line-event, mouse-event, arrange-event, redraw-event, sound-notify-event, hyperlink-event, and volume-event.

Definition: A g-event is window-independent rather than window-dependent if it is timer-event or it is sound-notify-event or it is arrange-event or it is redraw-event.

Definition: A g-event is glk-initiated if it is timer-event or it is sound-notify-event or it is arrange-event or it is not redraw-event.

To decide which g-event is null-event: (- 0 -)

To wait for glk input:
	(- glk_select(gg_event); -)

To decide which g-event is the current glk event:
	(- gg_event-->0 -)

To decide which number is the window of the current glk event:
	(- gg_event-->1 -)

To decide what number is the character code returned:
	(- gg_event-->2 -)

To pause/stop the/-- Glulx timer:
	request repeating Glk timer event at 0 milliseconds.

To request repeating Glk timer event at (T - a number) milliseconds:
	if debugmode > 0, say "[input-style]Timer set to [T]ms intervals.[roman type][line break]";
	actually request repeating Glk timer event at T milliseconds.

To actually request repeating Glk timer event at (T - a number) milliseconds:
	(- glk_request_timer_events({T}); (+ global timer interval +) = {T}; -).

To reset the/-- Glulx timer:
	request repeating Glk timer event at 50 milliseconds.

To render buffered stuff:
	wait before continuing.

To wait (N - a number) ms before continuing:
	request repeating Glk timer event at N milliseconds;
	let event-outcome be a number;
	wait for glk input;
	if the current glk event is glk-initiated, now event-outcome is glk event handled in null-event context;
	reset the Glulx timer.

To wait before continuing:
	if the glulx replacement command is "skip":
		repeat with G running through g-animated animation tracks:
			cease animation of G;
	let event-outcome be a number;
	wait for glk input;
	if the current glk event is glk-initiated, now event-outcome is glk event handled in null-event context.

Part - Animation Stuff

Section - Animation Tracks

An animation track is a kind of object.

An animation track has a g-window called the target-window.

An animation track has a list of figure names called the image-reel.
To decide which figure-name is the resource-image of (N - a number):
	repeat with F running through figure-names:
		if the Glulx Resource ID of F is N, decide on F.

To fill (T - an animation track) from (F - a figure-name) to (N - a number):
	truncate the image-reel of T to 0 entries;
	add F to the image-reel of T;
	let X be the Glulx Resource ID of F;
	repeat with FX running from 1 to N:
		increase X by 1;
		add the resource-image of X to the image-reel of T;

An animation track has a number called animX. An animation track has a number called animY. An animation track has a number called animW. An animation track has a number called animH.

An animation track has a figure name called the backgroundF.

An animation track has a number called backgroundX. An animation track has a number called backgroundY. An animation track has a number called backgroundW. An animation track has a number called backgroundH.
An animation track has a number called backgroundX2. An animation track has a number called backgroundY2. An animation track has a number called backgroundW2. An animation track has a number called backgroundH2.
An animation track has a number called backgroundX3. An animation track has a number called backgroundY3. An animation track has a number called backgroundW3. An animation track has a number called backgroundH3.
An animation track has a number called backgroundC. An animation track has a number called backgroundT.
An animation track has a thing called backgroundThing.

An animation track can be frameOverriding. [It draws a flat colour underneath before it draws itself each time]
An animation track can be imageRedrawing. [It redraws the stuff underneath before it draws itself each time]
An animation track can be g-animated.
An animation track can be g-looping.
An animation track can be g-boomerang.
An animation track can be g-reversing.
An animation track has a number called the current-frame. The current-frame of an animation track is usually 1.
An animation track has a number called the animation-speed. The animation-speed of an animation track is usually 1.
An animation track has a number called the frame-tick. The frame-tick of an animation track is usually 1.
An animation track has a number called the animationColour. The animationColour of an animation track is usually 16777215. [white]

Section - Functions

Glulx input handling rule for a timer-event:
	if animationsEnabled is 1 or there is a g-animated initial animation track, compute animations.

To compute animations:
	repeat with T running through g-animated animation tracks:
		if buttonsLatest is not the target-window of T and (PopupButtons > 0 or the target-window of T is map-window or the target-window of T is graphics-window): [Don't want animations to draw over buttons, which they would do without these checks]
			if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 20 or the target-window of T is map-window or the target-window of T is graphics-window, compute animation of T. [If the graphlink table is almost full, that probably means that this animation has been going for some time, re-adding hyperlinks each time. Let's stop animating, to leave 20 hyperlinks spare for the popup buttons or similar.]

To kill all animations:
	repeat with T running through g-animated animation tracks:
		cease animation of T.

To wait until animations are over:
	wait before continuing;
	if animationsEnabled is 1 or there is a g-animated initial animation track:
		while there is g-animated animation track:
			wait before continuing.

To compute TQanimation of (F - a figure-name) in (W - a g-window) at (X1 - a number) by (Y1 - a number) with dimensions (BX - a number) by (BY - a number):
	let T be the TQAnimTrack of F;
	if T is an animation track:
		now the target-window of T is W;
		now the animX of T is X1;
		now the animY of T is Y1;
		now the animW of T is BX;
		now the animH of T is BY;
		commence animation of T.

savedDrawingF is a figure name that varies.
savedDrawingT is a thing that varies.
savedDrawingX is a number that varies.
savedDrawingY is a number that varies.
savedDrawingW is a number that varies.
savedDrawingH is a number that varies.
savedDrawingX2 is a number that varies.
savedDrawingY2 is a number that varies.
savedDrawingW2 is a number that varies.
savedDrawingH2 is a number that varies.
savedDrawingC2 is a number that varies.
savedDrawingX3 is a number that varies.
savedDrawingY3 is a number that varies.
savedDrawingW3 is a number that varies.
savedDrawingH3 is a number that varies.

To compute TQanimationprep of (F - a figure-name): [Used when animating an icon on top of an item]
	let T be the TQAnimTrack of F;
	if T is an animation track:
		now T is frameOverriding;
		now T is imageRedrawing;
		now the backgroundF of T is savedDrawingF;
		now the backgroundC of T is rendercolour of savedDrawingT;
		now the backgroundT of T is boxThickness of savedDrawingT;
		now the backgroundThing of T is savedDrawingT;
		[These next variables track the pixel coordinates of how to draw the item that goes underneath the animated icon]
		now the backgroundX of T is savedDrawingX;
		now the backgroundY of T is savedDrawingY;
		now the backgroundW of T is savedDrawingW;
		now the backgroundH of T is savedDrawingH;
		[These next variables track the pixel coordinates of how to draw the entire background of the item that goes underneath the animated icon]
		now the backgroundX2 of T is savedDrawingX2;
		now the backgroundY2 of T is savedDrawingY2;
		now the backgroundW2 of T is savedDrawingW2;
		now the backgroundH2 of T is savedDrawingH2;
		now the animationColour of T is savedDrawingC2;
		[These next variables track the pixel coordinates of how to draw the icons (including the animated icon)]
		now the backgroundX3 of T is savedDrawingX3;
		now the backgroundY3 of T is savedDrawingY3;
		now the backgroundW3 of T is savedDrawingW3;
		now the backgroundH3 of T is savedDrawingH3.

To commence animation of (T - an animation track):
	now the current-frame of T is 1;
	now the frame-tick of T is 1;
	uniquely set up T;
	now T is g-animated.
To uniquely set up (T - an animation track):
	do nothing.
To cease animation of (T - an animation track):
	now T is not frameOverriding;
	now T is not imageRedrawing;
	now T is not g-animated.

To decide which number is the frameSlowness of (T - an animation track):
	decide on 10. [this multiplied by 50 is the number of milliseconds between each frame transition.]

To check speed change of (T - an animation track):
	do nothing. [Sometimes we change the speed each loop]

To compute animation of (T - an animation track):
	if the target-window of T is a g-present graphics g-window:
		unless the target-window of T is map-window and currentlyConsenting is true and YesNoPreference > 0 and YesNoPreference < 1000 and T is frameOverriding: [Don't draw animations on a blank map window]
			if the frame-tick of T >= the frameSlowness of T:
				now the frame-tick of T is 1;
				let X be the current-frame of T;
				let img be entry X of the image-reel of T;
				if T is frameOverriding: [This means it's an image that needs a flat colour drawn behind it each time]
					if T is imageRedrawing: [This means it's an image in a focus window so we need to redraw the box and the item and icons each time]
						draw a rectangle animationColour of T in the target-window of T at backgroundX2 of T by backgroundY2 of T with size backgroundW2 of T by backgroundH2 of T; [draw a (usually) white box behind everything except buttons]
						display the image backgroundF of T in the target-window of T at backgroundX of T by backgroundY of T with dimensions backgroundW of T by backgroundH of T;
						draw a box backgroundC of T in the target-window of T from backgroundX of T by backgroundY of T to (backgroundX of T + backgroundW of T) by (backgroundY of T + backgroundH of T) with backgroundT of T pixel line-weight, inset;
						IconRender backgroundThing of T at backgroundX3 of T by backgroundY3 of T with dimensions backgroundW3 of T by backgroundH3 of T;
					otherwise:
						draw a rectangle animationColour of T in the target-window of T at animX of T by animY of T with size animW of T by animH of T; [draw a (usually) white box behind it]
						display the image img in the target-window of T at animX of T by animY of T with dimensions animW of T by animH of T;
				otherwise:
					display the image img in the target-window of T at animX of T by animY of T with dimensions animW of T by animH of T;
				if the target-window of T is map-window, draw a box backgroundC of T in the map-window from animX of T by animY of T to (animX of T + animW of T) by (animY of T + animH of T) with 1 pixel line-weight, inset;
				if X >= the number of entries in the image-reel of T:
					if T is g-boomerang and X > 1: [would glitch horribly if an animation with 1 frame was interpreted as a boomerang]
						now T is g-reversing;
						decrease the current-frame of T by the animation-speed of T;
					otherwise if T is g-looping:
						now the current-frame of T is 1;
						check speed change of T;
					otherwise:
						cease animation of T;
				otherwise if T is g-reversing and X > the animation-speed of T:
					decrease the current-frame of T by the animation-speed of T;
				otherwise:
					now T is not g-reversing;
					increase the current-frame of T by the animation-speed of T;
			otherwise:
				increase the frame-tick of T by 1;
	otherwise:
		say "BUG: [target-window of T] was not present to render the animation [T] inside.";
		cease animation of T.

To decide which object is the TQAnimTrack of (F - a figure-name):
	decide on nothing.

Figure of AnimatedRaiseSkirtButtonLight is the file "Special/Buttons/lightMode/skirt3.png".
Figure of AnimatedRaiseSkirtButtonDark is the file "Special/Buttons/darkMode/skirt3.png".
skirtDisplacedAnimation is an animation track. skirtDisplacedAnimation is g-looping.
To decide which object is the TQAnimTrack of (F - Figure of RaiseSkirtButtonLight):
	decide on skirtDisplacedAnimation.
To decide which object is the TQAnimTrack of (F - Figure of RaiseSkirtButtonDark):
	decide on skirtDisplacedAnimation.
To uniquely set up (T - skirtDisplacedAnimation):
	now the image-reel of T is { };
	if darkMode is 1, add Figure of AnimatedRaiseSkirtButtonDark to the image-reel of T;
	otherwise add Figure of AnimatedRaiseSkirtButtonLight to the image-reel of T;
	add Figure of RaiseSkirtButton to the image-reel of T.

pantsUnzippedAnimation is an animation track. pantsUnzippedAnimation is g-looping.
To decide which object is the TQAnimTrack of (F - Figure of UnzipButtonLight):
	decide on pantsUnzippedAnimation.
To decide which object is the TQAnimTrack of (F - Figure of UnzipButtonDark):
	decide on pantsUnzippedAnimation.
To uniquely set up (T - pantsUnzippedAnimation):
	now the image-reel of T is { };
	add Figure of UnzipButton to the image-reel of T;
	add Figure of ZipButton to the image-reel of T.

pantsDisplacedAnimation is an animation track. pantsDisplacedAnimation is g-looping.
To decide which object is the TQAnimTrack of (F - Figure of DisplaceButtonLight):
	decide on pantsDisplacedAnimation.
To decide which object is the TQAnimTrack of (F - Figure of DisplaceButtonDark):
	decide on pantsDisplacedAnimation.
To uniquely set up (T - pantsDisplacedAnimation):
	now the image-reel of T is { };
	add Figure of DisplaceButton to the image-reel of T;
	add Figure of ReplaceButton to the image-reel of T.

Figure of AnimatedAlarmIconLight2 is the file "Special/Buttons/lightMode/alarm2.png".
Figure of AnimatedAlarmIconLight3 is the file "Special/Buttons/lightMode/alarm3.png".
Figure of AnimatedAlarmIconDark2 is the file "Special/Buttons/darkMode/alarm2.png".
Figure of AnimatedAlarmIconDark3 is the file "Special/Buttons/darkMode/alarm3.png".
alarmAnimation is an animation track. alarmAnimation is g-looping.
To decide which object is the TQAnimTrack of (F - Figure of AlarmIconLight):
	decide on alarmAnimation.
To decide which object is the TQAnimTrack of (F - Figure of AlarmIconDark):
	decide on alarmAnimation.
To uniquely set up (T - alarmAnimation):
	now the image-reel of T is { };
	if darkMode is 1, add Figure of AnimatedAlarmIconDark2 to the image-reel of T;
	otherwise add Figure of AnimatedAlarmIconLight2 to the image-reel of T;
	add Figure of AlarmIcon to the image-reel of T;
	if darkMode is 1, add Figure of AnimatedAlarmIconDark3 to the image-reel of T;
	otherwise add Figure of AnimatedAlarmIconLight3 to the image-reel of T;
	add Figure of AlarmIcon to the image-reel of T;
	add Figure of AlarmIcon to the image-reel of T;
	add Figure of AlarmIcon to the image-reel of T.

Figure of AnimatedSirenIcon1 is the file "Special/Animations/Siren/frame1.png".
Figure of AnimatedSirenIcon2 is the file "Special/Animations/Siren/frame2.png".
Figure of AnimatedSirenIcon3 is the file "Special/Animations/Siren/frame3.png".
Figure of AnimatedSirenIcon4 is the file "Special/Animations/Siren/frame4.png".
sirenAnimation is an animation track. sirenAnimation is g-looping. The image-reel of sirenAnimation is {Figure of AnimatedSirenIcon1, Figure of AnimatedSirenIcon2, Figure of AnimatedSirenIcon3, Figure of AnimatedSirenIcon4}.
To decide which object is the TQAnimTrack of (F - Figure of EatButtonLight):
	decide on sirenAnimation.
To decide which object is the TQAnimTrack of (F - Figure of EatButtonDark):
	decide on sirenAnimation.
To decide which number is the frameSlowness of (T - sirenAnimation):
	decide on 1.

Figure of AnimatedPoopingIcon1 is the file "Special/Animations/PoopinTime/frame1.png".
Figure of AnimatedPoopingIcon2 is the file "Special/Animations/PoopinTime/frame2.png".
Figure of AnimatedPoopingIcon3 is the file "Special/Animations/PoopinTime/frame3.png".
Figure of AnimatedPoopingIcon4 is the file "Special/Animations/PoopinTime/frame4.png".
Figure of AnimatedPoopingIcon5 is the file "Special/Animations/PoopinTime/frame5.png".
Figure of AnimatedPoopingIcon6 is the file "Special/Animations/PoopinTime/frame6.png".
Figure of AnimatedPoopingIcon7 is the file "Special/Animations/PoopinTime/frame7.png".
Figure of AnimatedPoopingIcon8 is the file "Special/Animations/PoopinTime/frame8.png".
Figure of AnimatedPoopingIcon9 is the file "Special/Animations/PoopinTime/frame9.png".
poopinTimeAnimation is an animation track. poopinTimeAnimation is g-looping. The image-reel of poopinTimeAnimation is {Figure of AnimatedpoopingIcon1, Figure of AnimatedpoopingIcon2, Figure of AnimatedpoopingIcon3, Figure of AnimatedpoopingIcon4, Figure of AnimatedpoopingIcon5, Figure of AnimatedpoopingIcon6, Figure of AnimatedpoopingIcon6, Figure of AnimatedpoopingIcon6, Figure of AnimatedpoopingIcon7, Figure of AnimatedpoopingIcon7, Figure of AnimatedpoopingIcon7, Figure of AnimatedpoopingIcon8, Figure of AnimatedpoopingIcon8, Figure of AnimatedpoopingIcon8, Figure of AnimatedpoopingIcon9, Figure of AnimatedpoopingIcon9, Figure of AnimatedpoopingIcon9}.
To decide which object is the TQAnimTrack of (F - Figure of AnimatedPoopingIcon5):
	decide on poopinTimeAnimation.
To decide which number is the frameSlowness of (T - poopinTimeAnimation):
	decide on 2.

Figure of AnimatedPeeingIcon1 is the file "Special/Animations/PeeTime/frame1.png".
Figure of AnimatedPeeingIcon2 is the file "Special/Animations/PeeTime/frame2.png".
Figure of AnimatedPeeingIcon3 is the file "Special/Animations/PeeTime/frame3.png".
Figure of AnimatedPeeingIcon4 is the file "Special/Animations/PeeTime/frame4.png".
Figure of AnimatedPeeingIcon5 is the file "Special/Animations/PeeTime/frame5.png".
Figure of AnimatedPeeingIcon6 is the file "Special/Animations/PeeTime/frame6.png".
Figure of AnimatedPeeingIcon7 is the file "Special/Animations/PeeTime/frame7.png".
Figure of AnimatedPeeingIcon8 is the file "Special/Animations/PeeTime/frame8.png".
Figure of AnimatedPeeingIcon9 is the file "Special/Animations/PeeTime/frame9.png".
Figure of AnimatedPeeingIcon10 is the file "Special/Animations/PeeTime/frame10.png".
Figure of AnimatedPeeingIcon11 is the file "Special/Animations/PeeTime/frame11.png".
Figure of AnimatedPeeingIcon12 is the file "Special/Animations/PeeTime/frame12.png".
Figure of AnimatedPeeingIcon13 is the file "Special/Animations/PeeTime/frame13.png".
Figure of AnimatedPeeingIcon14 is the file "Special/Animations/PeeTime/frame14.png".
Figure of AnimatedPeeingIcon15 is the file "Special/Animations/PeeTime/frame15.png".
Figure of AnimatedPeeingIcon16 is the file "Special/Animations/PeeTime/frame16.png".
Figure of AnimatedPeeingIcon17 is the file "Special/Animations/PeeTime/frame17.png".
Figure of AnimatedPeeingIcon18 is the file "Special/Animations/PeeTime/frame18.png".
Figure of AnimatedPeeingIcon19 is the file "Special/Animations/PeeTime/frame19.png".
Figure of AnimatedPeeingIcon20 is the file "Special/Animations/PeeTime/frame20.png".
peeingTimeAnimation is an animation track. peeingTimeAnimation is g-looping. The image-reel of peeingTimeAnimation is {Figure of AnimatedPeeingIcon1, Figure of AnimatedPeeingIcon2, Figure of AnimatedPeeingIcon3, Figure of AnimatedPeeingIcon4, Figure of AnimatedPeeingIcon5, Figure of AnimatedPeeingIcon6, Figure of AnimatedPeeingIcon7, Figure of AnimatedPeeingIcon8, Figure of AnimatedPeeingIcon9, Figure of AnimatedPeeingIcon10, Figure of AnimatedPeeingIcon11, Figure of AnimatedPeeingIcon12, Figure of AnimatedPeeingIcon13, Figure of AnimatedPeeingIcon14, Figure of AnimatedPeeingIcon15, Figure of AnimatedPeeingIcon16, Figure of AnimatedPeeingIcon17, Figure of AnimatedPeeingIcon18, Figure of AnimatedPeeingIcon19, Figure of AnimatedPeeingIcon20}.
To decide which object is the TQAnimTrack of (F - Figure of PeeButton):
	decide on peeingTimeAnimation.
To decide which number is the frameSlowness of (T - peeingTimeAnimation):
	decide on 1.

Section - Cutscene animation tracks

A cutscene animation track is a kind of animation track.

To compute unique setup of (T - a cutscene animation track):
	now the animation-speed of T is 1;
	now the animationColour of T is lightModeWhite.

To commence animation of (T - a cutscene animation track):
	if animationsEnabled is 1 and the map-window is g-present and T is not g-animated:
		compute unique setup of T;
		now the frame-tick of T is 1;
		now the target-window of T is the map-window;
		let F be entry 1 of the image-reel of T;
		now temporary-map-figure is F; [This is a cheeky way of flagging that we've set up the animation for this time period. This will mean that we see the animation looping even though time has moved forward this time, but next time it'll be overridden.]
		let mapH be the height of the map-window;
		let mapW be the width of the map-window;
		now the animW of T is the pixel-width of F;
		now the animH of T is the pixel-height of F;
		now the animX of T is (the width of the map-window - the animW of T) / 2;
		now the animY of T is (the height of the map-window - the animH of T) / 2;
		draw a rectangle animationColour of T in the map-window at 0 by 0 with size (mapW + 1) by (mapH + 1);
		set a graphlink in the map-window identified as hypermapstairs from 0 by 0 to mapW by mapH as "skip", ignoring redundant links;
		now T is g-animated.

Check jumping when there is g-animated cutscene animation track:
	repeat with G running through g-animated cutscene animation tracks:
		cease animation of G;
	refresh the map-window;
	do nothing instead.

To decide which number is the frameSlowness of (T - a cutscene animation track):
	decide on 1.

BBCHypnoAnimation is a g-looping cutscene animation track.
OralHypnoAnimation is a g-looping cutscene animation track.
ShemaleHypnoAnimation is a g-looping cutscene animation track.
DPHypnoAnimation is a g-looping cutscene animation track.
DiaperHypnoAnimation is a g-looping cutscene animation track.
To check speed change of (T - DPHypnoAnimation):
	if the animation-speed of T is 1, now the animation-speed of T is 2. [Double the speed after the first loop]

PussyExpelAnimation is a g-looping cutscene animation track.

Section - Initial and Ending animation tracks

A solo animation track is a kind of cutscene animation track.

To compute unique setup of (T - a solo animation track):
	do nothing.

To cease animation of (T - a solo animation track):
	now T is not g-animated;
	close the map-window.

An initial animation track is a kind of solo animation track.

To commence animation of (T - an initial animation track):
	compute unique setup of T;
	now the current-frame of T is 1;
	now the frame-tick of T is 1;
	now the target-window of T is the map-window;
	let F be entry 1 of the image-reel of T;
	now the position of the map-window is g-placeabove;
	now the measurement of the map-window is 99;
	open the map-window;
	let mapH be the height of the map-window;
	let mapW be the width of the map-window;
	now the animW of T is the pixel-width of F;
	now the animH of T is the pixel-height of F;
	now the animX of T is (the width of the map-window - the animW of T) / 2;
	now the animY of T is (the height of the map-window - the animH of T) / 2;
	draw a rectangle animationColour of T in the map-window at 0 by 0 with size (mapW + 1) by (mapH + 1);
	set a graphlink in the map-window identified as hyperobject from 0 by 0 to mapW by mapH as "skip", ignoring redundant links;
	unless the bannerImage of T is figure of no-image-yet:
		let BI be the bannerImage of T;
		let BIW be the pixel-width of BI;
		let BIH be the pixel-height of BI;
		if BIH > mapH: [Shrink everything to fit vertically]
			let BIHR be BIH * 1.0;
			now BIHR is mapH / BIHR;
			now BIH is mapH;
			now BIW is (BIW * BIHR) to the nearest whole number;
			now animW of T is (animW of T * BIHR) to the nearest whole number;
			now animH of T is (animH of T * BIHR) to the nearest whole number;
			now the animX of T is (mapW - the animW of T) / 2;
			now the animY of T is (mapH - the animH of T) / 2;
		let BIX be animX of T - ((BIW - animW of T) / 2);
		let BIY be animY of T - ((BIH - animH of T) / 2);
		draw the image bannerImage of T in the map-window at BIX by BIY with dimensions BIW by BIH;
	now T is g-animated.

To decide which figure-name is the bannerImage of (T - an initial animation track):
	decide on figure of no-image-yet.

To decide which number is the frameSlowness of (T - an initial animation track):
	decide on 3.

An epilogue animation track is a kind of solo animation track. An epilogue animation track is g-looping.

To commence animation of (T - an epilogue animation track):
	compute unique setup of T;
	now the current-frame of T is 1;
	now the frame-tick of T is 1;
	now the target-window of T is the map-window;
	let F be entry 1 of the image-reel of T;
	open the map-window;
	let mapH be the height of the map-window;
	let mapW be the width of the map-window;
	now the animW of T is the pixel-width of F;
	now the animH of T is the pixel-height of F;
	now the animX of T is (mapW - the animW of T) / 2;
	now the animY of T is (mapH - the animH of T) / 2;
	draw a rectangle animationColour of T in the map-window at 0 by 0 with size (mapW + 1) by (mapH + 1);
	set a graphlink in the map-window identified as hyperobject from 0 by 0 to mapW by mapH as "skip", ignoring redundant links;
	now T is g-animated.

To decide which number is the frameSlowness of (T - an epilogue animation track):
	decide on 1.

Timer Stuff ends here.
