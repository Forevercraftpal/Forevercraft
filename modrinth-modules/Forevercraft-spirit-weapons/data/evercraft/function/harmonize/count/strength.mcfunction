# Count Strength sources for @s by level
# Level 1 = Strength I, Level 2 = Strength II, Level 3 = Strength III

# === STRENGTH I SOURCES ===
# Golem 4pc
execute if entity @s[tag=golem_4pc] run scoreboard players add @s ec.h_str_1 1
# Sculk 4pc
execute if entity @s[tag=sculk_4pc] run scoreboard players add @s ec.h_str_1 1
# Blood 2pc
execute if entity @s[tag=blood_2pc] run scoreboard players add @s ec.h_str_1 1
# Cloaked Skull 4pc
execute if entity @s[tag=cloaked_skull_4pc] run scoreboard players add @s ec.h_str_1 1
# Dragonmaster 2pc
execute if entity @s[tag=dragonmaster_2pc] run scoreboard players add @s ec.h_str_1 1
# Beacon of the Ancients
execute if items entity @s inventory.* *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_str_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_str_1 1
# Dragon's Tear
execute if items entity @s inventory.* *[custom_data~{artifact:"dragons_tear"}] run scoreboard players add @s ec.h_str_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"dragons_tear"}] run scoreboard players add @s ec.h_str_1 1
# Wither Rose Crown
execute if items entity @s inventory.* *[custom_data~{artifact:"wither_rose_crown"}] run scoreboard players add @s ec.h_str_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"wither_rose_crown"}] run scoreboard players add @s ec.h_str_1 1
# Berserker's Fang (ornate — held in mainhand)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] run scoreboard players add @s ec.h_str_1 1
# Romeo Sword (weapon passive — held in mainhand)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_sword"}] run scoreboard players add @s ec.h_str_1 1
# Netherite Core primary Strength (level 3-4)
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,primary:5b}] unless items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:5b}] run scoreboard players add @s ec.h_str_1 1
# Infernal Heart (boss)
execute if items entity @s container.* *[custom_data~{artifact:"infernal_heart"}] run scoreboard players add @s ec.h_str_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"infernal_heart"}] run scoreboard players add @s ec.h_str_1 1
# Soulkeeper's Ember (boss)
execute if items entity @s container.* *[custom_data~{artifact:"soulkeepers_ember"}] run scoreboard players add @s ec.h_str_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"soulkeepers_ember"}] run scoreboard players add @s ec.h_str_1 1

# === STRENGTH II SOURCES ===
# Warden Ring
execute if items entity @s container.* *[custom_data~{artifact:"ring_warden"}] run scoreboard players add @s ec.h_str_2 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_warden"}] run scoreboard players add @s ec.h_str_2 1
# Blood 4pc (upgrades to II)
execute if entity @s[tag=blood_4pc] run scoreboard players add @s ec.h_str_2 1
# Ender Dragon 5pc
execute if entity @s[tag=ender_dragon_5pc] run scoreboard players add @s ec.h_str_2 1
# Infernal 5pc
execute if entity @s[tag=infernal_5pc] run scoreboard players add @s ec.h_str_2 1
# Dragonmaster 5pc
execute if entity @s[tag=dragonmaster_5pc] run scoreboard players add @s ec.h_str_2 1
# Netherite Core with secondary Strength (level 4 + secondary)
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:5b}] run scoreboard players add @s ec.h_str_2 1

# === STRENGTH III SOURCES ===
# Ender Dragon Scale
execute if items entity @s inventory.* *[custom_data~{artifact:"ender_dragon_scale"}] run scoreboard players add @s ec.h_str_3 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ender_dragon_scale"}] run scoreboard players add @s ec.h_str_3 1
# Claude's Gift
execute if items entity @s inventory.* *[custom_data~{artifact:"claudes_gift"}] run scoreboard players add @s ec.h_str_3 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"claudes_gift"}] run scoreboard players add @s ec.h_str_3 1
