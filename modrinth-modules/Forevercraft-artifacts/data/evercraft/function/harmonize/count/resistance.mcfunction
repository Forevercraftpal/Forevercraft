# Count Resistance sources for @s by level
# Level 1 = Resistance I, Level 2 = Resistance II, Level 3 = Resistance III

# === RESISTANCE I SOURCES ===
# Crystal 2pc
execute if entity @s[tag=crystal_2pc] run scoreboard players add @s ec.h_res_1 1
# Golem 2pc
execute if entity @s[tag=golem_2pc] run scoreboard players add @s ec.h_res_1 1
# Celestial 4pc
execute if entity @s[tag=celestial_4pc] run scoreboard players add @s ec.h_res_1 1
# Ender Dragon 2pc
execute if entity @s[tag=ender_dragon_2pc] run scoreboard players add @s ec.h_res_1 1
# Infernal 2pc
execute if entity @s[tag=infernal_2pc] run scoreboard players add @s ec.h_res_1 1
# Cloaked Skull 2pc
execute if entity @s[tag=cloaked_skull_2pc] run scoreboard players add @s ec.h_res_1 1
# Cloaked Skull 4pc
execute if entity @s[tag=cloaked_skull_4pc] run scoreboard players add @s ec.h_res_1 1
# Iron Talisman
execute if items entity @s inventory.* *[custom_data~{artifact:"iron_talisman"}] run scoreboard players add @s ec.h_res_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"iron_talisman"}] run scoreboard players add @s ec.h_res_1 1
# Soul Protection
execute if items entity @s inventory.* *[custom_data~{artifact:"soul_protection"}] run scoreboard players add @s ec.h_res_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"soul_protection"}] run scoreboard players add @s ec.h_res_1 1
# Nether Star Shard (aura to self and others)
execute if items entity @s inventory.* *[custom_data~{artifact:"nether_star_shard"}] run scoreboard players add @s ec.h_res_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"nether_star_shard"}] run scoreboard players add @s ec.h_res_1 1
# Heart of the Void
execute if items entity @s inventory.* *[custom_data~{artifact:"heart_of_the_void"}] run scoreboard players add @s ec.h_res_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"heart_of_the_void"}] run scoreboard players add @s ec.h_res_1 1
# Beacon of the Ancients
execute if items entity @s inventory.* *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_res_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_res_1 1
# Netherite Core primary Resistance
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,primary:3b}] unless items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:3b}] run scoreboard players add @s ec.h_res_1 1
# Vitality P3: Iron Will (permanent Resistance I)
execute if score @s adv.pres_vita matches 3 run scoreboard players add @s ec.h_res_1 1
# Tank Shield in mainhand (non-mythical)
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] unless items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run scoreboard players add @s ec.h_res_1 1
# Thunderstrike Core (boss)
execute if items entity @s container.* *[custom_data~{artifact:"thunderstrike_core"}] run scoreboard players add @s ec.h_res_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"thunderstrike_core"}] run scoreboard players add @s ec.h_res_1 1

# === RESISTANCE II SOURCES ===
# Nether Ring
execute if items entity @s container.* *[custom_data~{artifact:"ring_nether"}] run scoreboard players add @s ec.h_res_2 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_nether"}] run scoreboard players add @s ec.h_res_2 1
# Void Ring
execute if items entity @s container.* *[custom_data~{artifact:"ring_void"}] run scoreboard players add @s ec.h_res_2 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_void"}] run scoreboard players add @s ec.h_res_2 1
# Crystal 4pc
execute if entity @s[tag=crystal_4pc] run scoreboard players add @s ec.h_res_2 1
# Resin Trim (when sneaking)
execute if entity @s[tag=resin_trim] run scoreboard players add @s ec.h_res_2 1
# Temporal Hourglass
execute if items entity @s inventory.* *[custom_data~{artifact:"temporal_hourglass"}] run scoreboard players add @s ec.h_res_2 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"temporal_hourglass"}] run scoreboard players add @s ec.h_res_2 1
# Netherite Core with secondary Resistance
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:3b}] run scoreboard players add @s ec.h_res_2 1
# Mythical Tank Shield in mainhand
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b,tier:"mythical"}] run scoreboard players add @s ec.h_res_2 1
# Earthshaker Core (boss)
execute if items entity @s container.* *[custom_data~{artifact:"earthshaker_core"}] run scoreboard players add @s ec.h_res_2 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"earthshaker_core"}] run scoreboard players add @s ec.h_res_2 1
# Romeo Hammer (weapon passive — held in mainhand)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_hammer"}] run scoreboard players add @s ec.h_res_2 1

# === RESISTANCE III SOURCES ===
# Netherite Nexus
execute if items entity @s inventory.* *[custom_data~{artifact:"netherite_nexus"}] run scoreboard players add @s ec.h_res_3 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"netherite_nexus"}] run scoreboard players add @s ec.h_res_3 1
