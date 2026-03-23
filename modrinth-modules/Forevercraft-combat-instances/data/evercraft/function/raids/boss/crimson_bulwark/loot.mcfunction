# The Crimson Bulwark — Loot Drops
# Called as each participant player, at their position
# Drops: 5% Bulwark Shield (Tank, ONLY if no spirit artifact in inventory), 100% Crimson Guard Medal, 100% Fortress Stone, 100% Iron Will Crystal

# ── 5% Class Artifact: Bulwark Shield (Tank spirit weapon) ──
# Special condition: only drops if player has NO spirit artifact in inventory
# Check for spirit_artifact key in any inventory item using clear count (doesn't remove items, just counts)
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100

# Count items with spirit_artifact custom_data — clear with count 0 returns how many match
scoreboard players set @s ec.temp2 0
execute store result score @s ec.temp2 run clear @s *[custom_data~{spirit_artifact:"bulwark_shield"}] 0
execute store result score @s ec.temp3 run clear @s *[custom_data~{spirit_artifact:"ashcrown_mace"}] 0
scoreboard players operation @s ec.temp2 += @s ec.temp3
execute store result score @s ec.temp3 run clear @s *[custom_data~{spirit_artifact:"lifewoven_branch"}] 0
scoreboard players operation @s ec.temp2 += @s ec.temp3
execute store result score @s ec.temp3 run clear @s *[custom_data~{spirit_artifact:"sabrewing"}] 0
scoreboard players operation @s ec.temp2 += @s ec.temp3
execute store result score @s ec.temp3 run clear @s *[custom_data~{spirit_artifact:"dragonheart_sword"}] 0
scoreboard players operation @s ec.temp2 += @s ec.temp3
execute store result score @s ec.temp3 run clear @s *[custom_data~{spirit_artifact:"ellegaards_trident"}] 0
scoreboard players operation @s ec.temp2 += @s ec.temp3
execute store result score @s ec.temp3 run clear @s *[custom_data~{spirit_artifact:"pharaohs_fist"}] 0
scoreboard players operation @s ec.temp2 += @s ec.temp3

# Only drop if roll <= 5 AND no spirit artifacts found (temp2 = 0)
execute if score @s ec.temp matches ..5 if score @s ec.temp2 matches 0 run give @s shield[custom_name='{\"text\":\"Bulwark Shield\",\"color\":\"red\",\"bold\":true,\"italic\":false}',custom_data={spirit_artifact:"bulwark_shield",spirit_class:"tank",spirit_tier:1},enchantment_glint_override=true,unbreakable={}] 1
execute if score @s ec.temp matches ..5 if score @s ec.temp2 matches 0 run tellraw @a[tag=ec.rd_participant] [{text:"  ★ ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Bulwark Shield",color:"red",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 if score @s ec.temp2 matches 0 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# ── 100% Artifact A: Crimson Guard Medal ──
give @s gold_nugget[custom_name='{\"text\":\"Crimson Guard Medal\",\"color\":\"red\",\"italic\":false}',custom_data={artifact:"crimson_guard_medal",tier:"unique"},lore=['{\"text\":\"+10% max HP while in Castle\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"\",\"italic\":false}','{\"text\":\"Unique — The Crimson Bulwark\",\"color\":\"dark_red\",\"italic\":false}']] 1

# ── 100% Artifact B: Fortress Stone ──
give @s cobblestone[custom_name='{\"text\":\"Fortress Stone\",\"color\":\"gray\",\"italic\":false}',custom_data={artifact:"fortress_stone",tier:"unique"},lore=['{\"text\":\"Placeable cover block (3 uses, 30s each)\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"\",\"italic\":false}','{\"text\":\"Unique — The Crimson Bulwark\",\"color\":\"dark_red\",\"italic\":false}']] 1

# ── 100% DR Consumable: Iron Will Crystal ──
give @s iron_nugget[custom_name='{\"text\":\"Iron Will Crystal\",\"color\":\"white\",\"italic\":false}',consumable={consume_seconds:0},custom_data={dr_consumable:"iron_will_crystal",boss_dr_crimson:1b},lore=['{\"text\":\"+1 Dream Rate permanently\",\"color\":\"green\",\"italic\":false}','{\"text\":\"\",\"italic\":false}','{\"text\":\"Consumed on use\",\"color\":\"dark_gray\",\"italic\":false}']] 1

# Loot VFX
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
