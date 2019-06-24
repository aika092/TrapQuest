Minibar Restocking by Actions begins here.

MinibarRestocking it with is an action applying to two things.

Check inserting something into minibar:
	if the noun is plentiful accessory, try MinibarRestocking the second noun with the noun instead;
	say "[variable custom style]Something tells me that's a stupid idea.[roman type][line break]" instead.

Check MinibarRestocking:
	if the noun is not minibar, say "How would you go about that?" instead;
	if the second noun is not a plentiful accessory, say "You probably need something of monetary value." instead;
	if the noun is closed, say "You put the [noun] into a small slot on the side of the minibar. It emits a short buzzing noise and spits your jewellery back out. Maybe you should open it first?" instead;
	if the number of objects in the noun > 0, say "Why would you do that? It's not empty." instead;
	if the player is not able to manually use their hands, do nothing instead.

Carry Out MinibarRestocking:
	say "You put the [noun] into a small slot on the side of the minibar. The door swings shut, and a faint shuffling sound can be heard as it resets its shelves. After a moment, the shuffling stops, and a small receipt shoots out of the slot.";
	now the noun is closed;
	if the noun is emptied, now the noun is not emptied;
	now the prevsearch of the noun is 0;
	destroy the second noun.[TODO: trapped minibars have better resets]

Understand "restock [something] with [something]", "reset [something] with [something]" as MinibarRestocking it with.

Minibar Restocking ends here.

