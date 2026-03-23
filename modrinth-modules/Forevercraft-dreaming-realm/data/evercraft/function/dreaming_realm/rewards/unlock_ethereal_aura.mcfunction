# Unlock Ethereal Aura particle (crate particle ID 19, bit 18 = 262144)
# Directly sets the bitfield — bypasses crate system announcements
# Context: as @s = player earning the reward

# Check if already unlocked: (cc_particles / 262144) % 2
scoreboard players operation #cc_check adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 262144
scoreboard players operation #cc_check adv.temp /= #cc_pow adv.temp
scoreboard players operation #cc_check adv.temp %= #2 adv.temp
execute if score #cc_check adv.temp matches 1 run return 0

# Unlock bit 18
scoreboard players add @s adv.cc_particles 262144

# Auto-activate in slot 1 if empty, slot 2 if slot 1 occupied (different zone)
execute if score @s adv.cc_part1 matches 0 run scoreboard players set @s adv.cc_part1 19
execute unless score @s adv.cc_part1 matches 19 if score @s adv.cc_part2 matches 0 run scoreboard players set @s adv.cc_part2 19

tellraw @s [{"text":""},{"text":"  "},{"text":"New Cosmetic: ","color":"gray"},{"text":"Ethereal Aura","color":"#E8A0F0","bold":true},{"text":" unlocked!","color":"gray"}]
tellraw @s [{"text":""},{"text":"  "},{"text":"Toggle from the Cosmetics menu.","color":"gray","italic":true}]
