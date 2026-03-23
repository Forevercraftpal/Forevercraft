# Count Haste sources for @s by level
# Level 1 = Haste I, Level 2 = Haste II, Level 3 = Haste III

# === HASTE I SOURCES ===
# Redstone Ring
execute if items entity @s container.* *[custom_data~{artifact:"ring_redstone"}] run scoreboard players add @s ec.h_hst_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"ring_redstone"}] run scoreboard players add @s ec.h_hst_1 1
# Blood 4pc
execute if entity @s[tag=blood_4pc] run scoreboard players add @s ec.h_hst_1 1
# Stormcatcher Shard
execute if items entity @s inventory.* *[custom_data~{artifact:"stormcatcher_shard"}] run scoreboard players add @s ec.h_hst_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"stormcatcher_shard"}] run scoreboard players add @s ec.h_hst_1 1
# Spelunker's Echo
execute if items entity @s inventory.* *[custom_data~{artifact:"spelunkers_echo"}] run scoreboard players add @s ec.h_hst_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"spelunkers_echo"}] run scoreboard players add @s ec.h_hst_1 1
# Berserker Totem
execute if items entity @s inventory.* *[custom_data~{artifact:"berserker_totem"}] run scoreboard players add @s ec.h_hst_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"berserker_totem"}] run scoreboard players add @s ec.h_hst_1 1
# Beacon of the Ancients
execute if items entity @s inventory.* *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_hst_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_hst_1 1
# Journey 2pc
execute if entity @s[tag=journey_2pc] run scoreboard players add @s ec.h_hst_1 1
# Verdant Helmet (per-piece passive)
execute if items entity @s armor.head *[custom_data~{artifact:"verdant_helmet"}] run scoreboard players add @s ec.h_hst_1 1
# Golden Gauntlet (weapon passive — held in mainhand)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"golden_gauntlet"}] run scoreboard players add @s ec.h_hst_1 1
# Netherite Core primary Haste
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,primary:2b}] unless items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:2b}] run scoreboard players add @s ec.h_hst_1 1

# === HASTE II SOURCES ===
# Golem 2pc
execute if entity @s[tag=golem_2pc] run scoreboard players add @s ec.h_hst_2 1
# Netherite Core with secondary Haste
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:2b}] run scoreboard players add @s ec.h_hst_2 1

# === HASTE III SOURCES ===
# Claude's Gift
execute if items entity @s inventory.* *[custom_data~{artifact:"claudes_gift"}] run scoreboard players add @s ec.h_hst_3 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"claudes_gift"}] run scoreboard players add @s ec.h_hst_3 1
# Redstone Heart
execute if items entity @s inventory.* *[custom_data~{artifact:"redstone_heart"}] run scoreboard players add @s ec.h_hst_3 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"redstone_heart"}] run scoreboard players add @s ec.h_hst_3 1
