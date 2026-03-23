# Count Regeneration sources for @s by level
# Level 1 = Regeneration I, Level 2 = Regeneration II

# === REGENERATION I SOURCES ===
# Nature 2pc
execute if entity @s[tag=nature_2pc] run scoreboard players add @s ec.h_reg_1 1
# Ender Dragon 5pc
execute if entity @s[tag=ender_dragon_5pc] run scoreboard players add @s ec.h_reg_1 1
# Healer's Salve
execute if items entity @s inventory.* *[custom_data~{artifact:"healers_salve"}] run scoreboard players add @s ec.h_reg_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"healers_salve"}] run scoreboard players add @s ec.h_reg_1 1
# Nether Star Shard (aura to self and others)
execute if items entity @s inventory.* *[custom_data~{artifact:"nether_star_shard"}] run scoreboard players add @s ec.h_reg_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"nether_star_shard"}] run scoreboard players add @s ec.h_reg_1 1
# Beacon of the Ancients
execute if items entity @s inventory.* *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_reg_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run scoreboard players add @s ec.h_reg_1 1
# Thornheart Bloom (boss — conditional on standing on dirt)
execute if items entity @s container.* *[custom_data~{artifact:"thornheart_bloom"}] if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s ec.h_reg_1 1
execute if items entity @s weapon.offhand *[custom_data~{artifact:"thornheart_bloom"}] if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s ec.h_reg_1 1
# Verdant Chestplate (per-piece passive — on dirt)
execute if items entity @s armor.chest *[custom_data~{artifact:"verdant_chestplate"}] if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s ec.h_reg_1 1
# Verdant Armored Elytra (same passive)
execute if items entity @s armor.chest *[custom_data~{artifact_set:"verdant",armored_elytra:{armored:true}}] if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s ec.h_reg_1 1
# Netherite Core secondary Regeneration
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b,secondary:6b}] run scoreboard players add @s ec.h_reg_1 1
