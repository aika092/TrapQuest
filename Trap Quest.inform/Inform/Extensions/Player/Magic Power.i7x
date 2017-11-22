Magic Power by Player begins here.

[Creating functions for magic power management so I can use these to trigger becoming the Magical Girl if you don't have another class when gaining magic power]

To MagicPowerUp (X - a number):
	if tentacle fetish is 0, now X is 0;
	while X > 0:
		decrease X by 1;
		increase the magic-power of the player by 1.

To MagicPowerDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the magic-power of the player > 0, decrease the magic-power of the player by 1.

Magic Power ends here.
