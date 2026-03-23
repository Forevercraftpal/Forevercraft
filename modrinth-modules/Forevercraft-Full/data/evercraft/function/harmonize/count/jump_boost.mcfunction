# Count Jump Boost sources for @s by level
# Level 1 = Jump Boost I, Level 2 = Jump Boost II, Level 3 = Jump Boost III

# === JUMP BOOST I SOURCES ===
# Slime Ring
execute if items entity @s container.* *[custom_data~{artifact:"ring_slime"}] run scoreboard players add @s ec.h_jmp_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_slime"}] run scoreboard players add @s ec.h_jmp_1 1
# Beacon of the Ancients
execute if items entity @s inventory.* *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_jmp_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_jmp_1 1
# Netherite Core primary Jump Boost
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,primary:4b}] unless items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:4b}] run scoreboard players add @s ec.h_jmp_1 1

# === JUMP BOOST II SOURCES ===
# Netherite Core with secondary Jump Boost
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:4b}] run scoreboard players add @s ec.h_jmp_2 1
# Ninja 4pc
execute if entity @s[tag=ninja_4pc] run scoreboard players add @s ec.h_jmp_2 1

# === JUMP BOOST III SOURCES ===
# Space 2pc
execute if entity @s[tag=space_2pc] run scoreboard players add @s ec.h_jmp_3 1
# Space 4pc
execute if entity @s[tag=space_4pc] run scoreboard players add @s ec.h_jmp_3 1
