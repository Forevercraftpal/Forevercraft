# Double Jump — Cloudstep Boots (Nimble Turtle Boots)
# Launches player upward when sneaking in mid-air

# Set cooldown (10 = 1 second at 2t/tick)
scoreboard players set @s ec.double_jump_cd 10

# Launch upward with brief levitation
effect give @s levitation 1 3 false

# Visual feedback
particle cloud ~ ~ ~ 0.3 0.1 0.3 0.05 10
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
