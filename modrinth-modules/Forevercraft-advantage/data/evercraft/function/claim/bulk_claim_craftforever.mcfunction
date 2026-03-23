# === BULK CLAIM — CRAFTFOREVER MILESTONES ===
# Claims all unclaimed craftforever milestone stages at once
# Run as: player

execute unless entity @s[tag=Adv.InMenu] run return 0
scoreboard players set @s ec.claim_cnt 0

# c1: Master Chef (ach.meals_cooked — 25/75/200/400/750)
execute store result score #bc_score ec.temp run scoreboard players get @s ach.meals_cooked
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/craftforever/c1_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c1_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/craftforever/c1_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c1_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/craftforever/c1_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c1_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 400.. unless entity @s[advancements={evercraft:claim/craftforever/c1_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c1_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 750.. unless entity @s[advancements={evercraft:claim/craftforever/c1_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c1_5",tier:"mythical",coins:50}

# c2: Combat Chef (ck.m_combat — 10/30/60/100/150)
execute store result score #bc_score ec.temp run scoreboard players get @s ck.m_combat
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c2_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c2_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/craftforever/c2_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c2_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/craftforever/c2_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c2_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/craftforever/c2_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c2_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/craftforever/c2_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c2_5",tier:"mythical",coins:50}

# c3: Mining Chef (ck.m_mining — 10/30/60/100/150)
execute store result score #bc_score ec.temp run scoreboard players get @s ck.m_mining
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c3_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c3_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/craftforever/c3_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c3_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/craftforever/c3_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c3_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/craftforever/c3_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c3_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/craftforever/c3_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c3_5",tier:"mythical",coins:50}

# c4: Fortune Chef (ck.m_fortune — 10/30/60/100/150)
execute store result score #bc_score ec.temp run scoreboard players get @s ck.m_fortune
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c4_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c4_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/craftforever/c4_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c4_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/craftforever/c4_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c4_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/craftforever/c4_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c4_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/craftforever/c4_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c4_5",tier:"mythical",coins:50}

# c5: Recipe Hunter (ach.recipes_learned — 10/20/30/35/42)
execute store result score #bc_score ec.temp run scoreboard players get @s ach.recipes_learned
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c5_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c5_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/craftforever/c5_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c5_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/craftforever/c5_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c5_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 35.. unless entity @s[advancements={evercraft:claim/craftforever/c5_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c5_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 42.. unless entity @s[advancements={evercraft:claim/craftforever/c5_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c5_5",tier:"mythical",coins:50}

# c6: Trial Champion (ec.tt_completed — 10/30/60/100/200)
execute store result score #bc_score ec.temp run scoreboard players get @s ec.tt_completed
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c6_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c6_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/craftforever/c6_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c6_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/craftforever/c6_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c6_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/craftforever/c6_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c6_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/craftforever/c6_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c6_5",tier:"mythical",coins:50}

# c7: Artisan Rank (ec.cf_rank — 20/40/60/80/100)
execute store result score #bc_score ec.temp run scoreboard players get @s ec.cf_rank
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/craftforever/c7_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c7_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 40.. unless entity @s[advancements={evercraft:claim/craftforever/c7_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c7_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/craftforever/c7_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c7_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 80.. unless entity @s[advancements={evercraft:claim/craftforever/c7_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c7_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/craftforever/c7_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c7_5",tier:"mythical",coins:50}

# c8: Master Forger (ec.cf_total_forges — 25/75/200/400/750)
execute store result score #bc_score ec.temp run scoreboard players get @s ec.cf_total_forges
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/craftforever/c8_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c8_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/craftforever/c8_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c8_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/craftforever/c8_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c8_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 400.. unless entity @s[advancements={evercraft:claim/craftforever/c8_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c8_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 750.. unless entity @s[advancements={evercraft:claim/craftforever/c8_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c8_5",tier:"mythical",coins:50}

# c9: Spirit Toolsmith (ec.st_tools_made — 1/3/5/6, 4 stages only)
execute store result score #bc_score ec.temp run scoreboard players get @s ec.st_tools_made
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/craftforever/c9_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c9_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/craftforever/c9_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c9_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/craftforever/c9_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c9_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/craftforever/c9_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c9_4",tier:"mythical",coins:50}

# c10: Material Collector (bitfield — ec.cf_materials)
scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_materials
function evercraft:milestones/craftforever/count_bits_15
execute if score #ms_bit_count ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/craftforever/c10_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c10_1",tier:"uncommon",coins:5}
execute if score #ms_bit_count ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/craftforever/c10_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c10_2",tier:"rare",coins:10}
execute if score #ms_bit_count ec.temp matches 9.. unless entity @s[advancements={evercraft:claim/craftforever/c10_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c10_3",tier:"ornate",coins:20}
execute if score #ms_bit_count ec.temp matches 12.. unless entity @s[advancements={evercraft:claim/craftforever/c10_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c10_4",tier:"exquisite",coins:35}
execute if score #ms_bit_count ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/craftforever/c10_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c10_5",tier:"mythical",coins:50}

# c11: Biome Node Hunter (bitfield — ec.cf_nodes_found)
scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_nodes_found
function evercraft:milestones/craftforever/count_bits_15
execute if score #ms_bit_count ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/craftforever/c11_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c11_1",tier:"uncommon",coins:5}
execute if score #ms_bit_count ec.temp matches 7.. unless entity @s[advancements={evercraft:claim/craftforever/c11_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c11_2",tier:"rare",coins:10}
execute if score #ms_bit_count ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c11_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c11_3",tier:"ornate",coins:20}
execute if score #ms_bit_count ec.temp matches 13.. unless entity @s[advancements={evercraft:claim/craftforever/c11_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c11_4",tier:"exquisite",coins:35}
execute if score #ms_bit_count ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/craftforever/c11_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c11_5",tier:"mythical",coins:50}

# c12: Pantry Hoarder (ec.pantry_stored — 50/200/500/1000/2000)
execute store result score #bc_score ec.temp run scoreboard players get @s ec.pantry_stored
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/craftforever/c12_1=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c12_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/craftforever/c12_2=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c12_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/craftforever/c12_3=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c12_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 1000.. unless entity @s[advancements={evercraft:claim/craftforever/c12_4=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c12_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 2000.. unless entity @s[advancements={evercraft:claim/craftforever/c12_5=true}] run function evercraft:claim/bulk_claim_stage {system:"craftforever",id:"c12_5",tier:"mythical",coins:50}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{"text":"[\u2726] ","color":"light_purple"},{"text":"Claimed ","color":"green"},{"score":{"name":"@s","objective":"ec.temp"},"color":"yellow"},{"text":" CraftForever reward(s)!","color":"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{"text":"[!] ","color":"gray"},{"text":"No unclaimed CraftForever rewards.","color":"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed
scoreboard players set @s adv.gui_cd 5
