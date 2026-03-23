# Count Speed sources for @s by level
# Level 1 = Speed I, Level 2 = Speed II, Level 3 = Speed III

# === SPEED I SOURCES ===
# Diamond Ring (ring passive)
execute if items entity @s container.* *[custom_data~{artifact:"ring_diamond"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_diamond"}] run scoreboard players add @s ec.h_spd_1 1
# Storm 2pc
execute if entity @s[tag=storm_2pc] run scoreboard players add @s ec.h_spd_1 1
# Shadow 2pc
execute if entity @s[tag=shadow_2pc] run scoreboard players add @s ec.h_spd_1 1
# Travelers Charm
execute if items entity @s inventory.* *[custom_data~{artifact:"travelers_charm"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"travelers_charm"}] run scoreboard players add @s ec.h_spd_1 1
# Seer's Compass
execute if items entity @s inventory.* *[custom_data~{artifact:"seers_compass"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"seers_compass"}] run scoreboard players add @s ec.h_spd_1 1
# Wind Chime
execute if items entity @s inventory.* *[custom_data~{artifact:"wind_chime"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"wind_chime"}] run scoreboard players add @s ec.h_spd_1 1
# Cartographer's Lens
execute if items entity @s inventory.* *[custom_data~{artifact:"cartographers_lens"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"cartographers_lens"}] run scoreboard players add @s ec.h_spd_1 1
# Temporal Hourglass
execute if items entity @s inventory.* *[custom_data~{artifact:"temporal_hourglass"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"temporal_hourglass"}] run scoreboard players add @s ec.h_spd_1 1
# Beacon of the Ancients
execute if items entity @s inventory.* *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_spd_1 1
# Windwalker Boots (ornate — worn in feet slot)
execute if items entity @s armor.feet *[custom_data~{artifact:"windwalker_boots"}] run scoreboard players add @s ec.h_spd_1 1
# Berserker's Fang (ornate — held in mainhand)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] run scoreboard players add @s ec.h_spd_1 1
# Space 4pc
execute if entity @s[tag=space_4pc] run scoreboard players add @s ec.h_spd_1 1
# Splendid 2pc
execute if entity @s[tag=splendid_2pc] run scoreboard players add @s ec.h_spd_1 1
# Titan 5pc
execute if entity @s[tag=titan_5pc] run scoreboard players add @s ec.h_spd_1 1
# Verdant Leggings (per-piece passive — on dirt)
execute if items entity @s armor.legs *[custom_data~{artifact:"verdant_leggings"}] if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s ec.h_spd_1 1
# Whirlwind (weapon passive — held in mainhand)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"whirlwind"}] run scoreboard players add @s ec.h_spd_1 1
# Ender Dragon Leggings (per-piece passive — in The End)
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_dragon_leggings"}] if dimension minecraft:the_end run scoreboard players add @s ec.h_spd_1 1
# Netherite Core primary Speed
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,primary:1b}] unless items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:1b}] run scoreboard players add @s ec.h_spd_1 1
# Nightmare Fragment (boss)
execute if items entity @s container.* *[custom_data~{artifact:"nightmare_fragment"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"nightmare_fragment"}] run scoreboard players add @s ec.h_spd_1 1
# Architect's Design (boss)
execute if items entity @s container.* *[custom_data~{artifact:"architects_design"}] run scoreboard players add @s ec.h_spd_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"architects_design"}] run scoreboard players add @s ec.h_spd_1 1

# === SPEED II SOURCES ===
# Shadow 4pc
execute if entity @s[tag=shadow_4pc] run scoreboard players add @s ec.h_spd_2 1
# Ninja 2pc
execute if entity @s[tag=ninja_2pc] run scoreboard players add @s ec.h_spd_2 1
# Ninja 4pc
execute if entity @s[tag=ninja_4pc] run scoreboard players add @s ec.h_spd_2 1
# Romeo Sword (weapon passive — held in mainhand)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_sword"}] run scoreboard players add @s ec.h_spd_2 1
# Netherite Core with secondary Speed
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:1b}] run scoreboard players add @s ec.h_spd_2 1
# Thunderstrike Core (boss)
execute if items entity @s container.* *[custom_data~{artifact:"thunderstrike_core"}] run scoreboard players add @s ec.h_spd_2 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"thunderstrike_core"}] run scoreboard players add @s ec.h_spd_2 1

# === SPEED III SOURCES ===
# Claude's Gift
execute if items entity @s inventory.* *[custom_data~{artifact:"claudes_gift"}] run scoreboard players add @s ec.h_spd_3 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"claudes_gift"}] run scoreboard players add @s ec.h_spd_3 1
