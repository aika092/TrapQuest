Delicateness by Player Description begins here.

[!<SayDelicatenessDesc>+

REQUIRES COMMENTING

+!]
To say DelicatenessDesc:
	if the delicateness of the player < 2:
		say "";
	otherwise if the delicateness of the player < 7:
		say "You are determined to endure any painful experiences the game throws your way with a stiff upper lip.";
	otherwise if the delicateness of the player < 10:
		say "You are starting to struggle to deal with painful experiences, and feel a bit nervous that the next one might be just around the corner.";
	otherwise if the delicateness of the player < 14:
		say "[if the humiliation of the player < 15000]You walk around holding your hands in front of your body, feeling very shy whenever you encounter someone. [end if]You flinch whenever someone who looks strong looks your way.";
	otherwise:
		say "[if diaper lover >= 1]You don't bother considering the consequences of your actions before you do them. You feel much more comfortable when near someone big and strong, and find yourself thinking of others as father and mother figures. [end if]You are a complete pushover, willing to submit to your superior's desires in the hope that your compliance will make them merciful. ";
	if the delicateness of the player >= 17:
		say "[if diaper lover >= 1]You can't control your emotions at all, and you end up crying like a baby whenever you get hurt. [end if]You are more than happy to follow anyone's orders, whatever they are - after all, who are you to know any better?".

Delicateness ends here.
