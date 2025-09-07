extends Node

"""
Core:
	Shift cycle:
		10am - 10pm
		earnings = deliveries - fines - expenses
	Pizza deliveries:
		get ping from shop about order
		go to shop to pick up order
		deliver order
		avoid police patrolling if order contains illegal toppings
		earnings depends on duration of delivery 
		/ can be sting by police for illegal toppings
	Toppings trade market:
		gta chinatown wars style drug trade
		use your own money to pay for it
		dealers locations and toppings and wants change each day
	Police chase:
		gta chinatown wars style police evasion
		be outside police radius for amount of time
		slam police to X them out
		watchdog style vehicle combat
		slam into police if vehicle permits
		if caught, get fine and lose any inventory on person
	Making pizza:
		rockband unplugged style minigame
		can hire employee to do this but it comes out of your check
		the more complex the order, the more tracks to juggle 
	Vehicle selection/upgrades:
		vehicles: bike, mopad, car
		bike upgrade: hop
		mopad upgrade: hop, turbo
		car upgrade: hop, turbo
	Map and navigation:
		no gps, just pointer to direction
		select from list of place (shop, dealers, deliveries) displaying amount of distance
"""
