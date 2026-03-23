# === BULK CLAIM — PERSONAL MILESTONE STAGES (ALL p1-p60 + s1-s40) ===
# Claims all unclaimed personal milestone stages at once
# Run as: player

execute unless entity @s[tag=Adv.InMenu] run return 0
scoreboard players set @s ec.claim_cnt 0

# p1
execute store result score #bc_score ec.temp run scoreboard players get @s ach.comp_owned
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p1_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p1_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p1_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p1_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p1_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p1_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/personal/p1_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p1_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 96.. unless entity @s[advancements={evercraft:claim/personal/p1_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p1_5",tier:"mythical",coins:50}

# p2
execute store result score #bc_score ec.temp run scoreboard players get @s ach.comp_eternal
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p2_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p2_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p2_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p2_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p2_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p2_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p2_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p2_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p2_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p2_5",tier:"mythical",coins:75}

# p3
execute store result score #bc_score ec.temp run scoreboard players get @s ach.total_kills
execute if score #bc_score ec.temp matches 1000.. unless entity @s[advancements={evercraft:claim/personal/p3_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p3_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p3_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p3_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 15000.. unless entity @s[advancements={evercraft:claim/personal/p3_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p3_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 50000.. unless entity @s[advancements={evercraft:claim/personal/p3_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p3_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p3_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p3_5",tier:"exquisite",coins:50}

# p4
execute store result score #bc_score ec.temp run scoreboard players get @s ach.patron_kills
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p4_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p4_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p4_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p4_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/personal/p4_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p4_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p4_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p4_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 1000.. unless entity @s[advancements={evercraft:claim/personal/p4_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p4_5",tier:"mythical",coins:50}

# p5
execute store result score #bc_score ec.temp run scoreboard players get @s ach.quests_done
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p5_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p5_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p5_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p5_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/personal/p5_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p5_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 300.. unless entity @s[advancements={evercraft:claim/personal/p5_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p5_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p5_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p5_5",tier:"exquisite",coins:50}

# p6
execute store result score #bc_score ec.temp run scoreboard players get @s ach.dungeons_done
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p6_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p6_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p6_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p6_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p6_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p6_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p6_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p6_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/personal/p6_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p6_5",tier:"mythical",coins:75}

# p7
execute store result score #bc_score ec.temp run scoreboard players get @s ec.artifacts_ever
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p7_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p7_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/personal/p7_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p7_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/personal/p7_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p7_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 225.. unless entity @s[advancements={evercraft:claim/personal/p7_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p7_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 290.. unless entity @s[advancements={evercraft:claim/personal/p7_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p7_5",tier:"mythical",coins:50}

# p8
execute store result score #bc_score ec.temp run scoreboard players get @s ach.lore_found
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p8_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p8_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/personal/p8_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p8_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p8_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p8_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 140.. unless entity @s[advancements={evercraft:claim/personal/p8_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p8_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 162.. unless entity @s[advancements={evercraft:claim/personal/p8_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p8_5",tier:"mythical",coins:50}

# p9
execute store result score #bc_score ec.temp run scoreboard players get @s ach.boss_kills
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p9_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p9_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p9_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p9_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p9_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p9_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p9_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p9_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p9_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p9_5",tier:"mythical",coins:75}

# p10
execute store result score #bc_score ec.temp run scoreboard players get @s ach.total_levels
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p10_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p10_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/personal/p10_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p10_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/personal/p10_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p10_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 250.. unless entity @s[advancements={evercraft:claim/personal/p10_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p10_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 325.. unless entity @s[advancements={evercraft:claim/personal/p10_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p10_5",tier:"exquisite",coins:50}

# p11
execute store result score #bc_score ec.temp run scoreboard players get @s ec.dr_peak_ms
execute if score #bc_score ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/personal/p11_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p11_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/personal/p11_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p11_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/personal/p11_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p11_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 8.. unless entity @s[advancements={evercraft:claim/personal/p11_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p11_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 99.. unless entity @s[advancements={evercraft:claim/personal/p11_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p11_5",tier:"mythical",coins:75}

# p12
execute store result score #bc_score ec.temp run scoreboard players get @s ach.structures_found
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p12_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p12_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p12_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p12_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p12_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p12_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p12_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p12_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 22.. unless entity @s[advancements={evercraft:claim/personal/p12_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p12_5",tier:"mythical",coins:50}

# p13
execute store result score #bc_score ec.temp run scoreboard players get @s ach.crates_opened
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p13_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p13_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/personal/p13_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p13_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p13_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p13_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 1000.. unless entity @s[advancements={evercraft:claim/personal/p13_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p13_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 2500.. unless entity @s[advancements={evercraft:claim/personal/p13_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p13_5",tier:"exquisite",coins:50}

# p14
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bounty_done
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p14_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p14_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p14_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p14_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p14_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p14_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p14_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p14_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/personal/p14_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p14_5",tier:"mythical",coins:50}

# p15
execute store result score #bc_score ec.temp run scoreboard players get @s ach.combos_triggered
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p15_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p15_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p15_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p15_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/personal/p15_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p15_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 300.. unless entity @s[advancements={evercraft:claim/personal/p15_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p15_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p15_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p15_5",tier:"exquisite",coins:50}

# p16
execute store result score #bc_score ec.temp run scoreboard players get @s ach.fish_caught
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p16_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p16_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p16_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p16_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 2000.. unless entity @s[advancements={evercraft:claim/personal/p16_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p16_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p16_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p16_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 15000.. unless entity @s[advancements={evercraft:claim/personal/p16_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p16_5",tier:"exquisite",coins:50}

# p17
execute store result score #bc_score ec.temp run scoreboard players get @s ach.blocks_mined
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p17_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p17_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p17_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p17_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 25000.. unless entity @s[advancements={evercraft:claim/personal/p17_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p17_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p17_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p17_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 500000.. unless entity @s[advancements={evercraft:claim/personal/p17_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p17_5",tier:"exquisite",coins:50}

# p18
execute store result score #bc_score ec.temp run scoreboard players get @s ach.crops_harvested
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p18_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p18_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 1000.. unless entity @s[advancements={evercraft:claim/personal/p18_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p18_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p18_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p18_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 25000.. unless entity @s[advancements={evercraft:claim/personal/p18_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p18_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p18_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p18_5",tier:"exquisite",coins:50}

# p19
execute store result score #bc_score ec.temp run scoreboard players get @s ach.sets_equipped
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p19_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p19_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 8.. unless entity @s[advancements={evercraft:claim/personal/p19_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p19_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p19_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p19_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 22.. unless entity @s[advancements={evercraft:claim/personal/p19_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p19_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 27.. unless entity @s[advancements={evercraft:claim/personal/p19_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p19_5",tier:"mythical",coins:50}

# p20
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_trade
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p20_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p20_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/personal/p20_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p20_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p20_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p20_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 1500.. unless entity @s[advancements={evercraft:claim/personal/p20_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p20_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p20_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p20_5",tier:"exquisite",coins:50}

# p21
execute store result score #bc_score ec.temp run scoreboard players get @s ach.biomes_visited
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p21_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p21_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p21_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p21_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p21_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p21_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p21_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p21_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 24.. unless entity @s[advancements={evercraft:claim/personal/p21_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p21_5",tier:"mythical",coins:50}

# p22
execute store result score #bc_score ec.temp run scoreboard players get @s ach.housing_tier
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p22_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p22_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/personal/p22_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p22_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p22_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p22_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/personal/p22_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p22_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p22_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p22_5",tier:"exquisite",coins:50}

# p23
execute store result score #bc_score ec.temp run scoreboard players get @s ic.record
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p23_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p23_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p23_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p23_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p23_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p23_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/personal/p23_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p23_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p23_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p23_5",tier:"mythical",coins:50}

# p24
execute store result score #bc_score ec.temp run scoreboard players get @s ach.runes_forged
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p24_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p24_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p24_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p24_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p24_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p24_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/personal/p24_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p24_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p24_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p24_5",tier:"exquisite",coins:50}

# p25
execute store result score #bc_score ec.temp run scoreboard players get @s ach.patina_applied
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p25_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p25_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p25_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p25_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p25_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p25_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 60.. unless entity @s[advancements={evercraft:claim/personal/p25_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p25_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p25_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p25_5",tier:"exquisite",coins:50}

# p26
execute store result score #bc_score ec.temp run scoreboard players get @s ach.guilds_joined
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p26_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p26_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/personal/p26_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p26_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p26_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p26_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/personal/p26_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p26_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p26_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p26_5",tier:"mythical",coins:50}

# p27
execute store result score #bc_score ec.temp run scoreboard players get @s ach.raids_done
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p27_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p27_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p27_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p27_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p27_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p27_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p27_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p27_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p27_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p27_5",tier:"mythical",coins:75}

# p28
execute store result score #bc_score ec.temp run scoreboard players get @s ach.spirit_bonds
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p28_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p28_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p28_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p28_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p28_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p28_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 8.. unless entity @s[advancements={evercraft:claim/personal/p28_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p28_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p28_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p28_5",tier:"mythical",coins:75}

# p29
execute store result score #bc_score ec.temp run scoreboard players get @s ach.castles_built
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p29_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p29_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/personal/p29_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p29_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p29_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p29_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/personal/p29_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p29_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p29_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p29_5",tier:"mythical",coins:75}

# p30
execute store result score #bc_score ec.temp run scoreboard players get @s ach.constellations
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p30_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p30_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/personal/p30_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p30_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 9.. unless entity @s[advancements={evercraft:claim/personal/p30_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p30_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 12.. unless entity @s[advancements={evercraft:claim/personal/p30_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p30_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p30_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p30_5",tier:"mythical",coins:50}

# p31
execute store result score #bc_score ec.temp run scoreboard players get @s ach.fish_treasure
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p31_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p31_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p31_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p31_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p31_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p31_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p31_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p31_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 250.. unless entity @s[advancements={evercraft:claim/personal/p31_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p31_5",tier:"exquisite",coins:50}

# p32
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_play
execute if score #bc_score ec.temp matches 72000.. unless entity @s[advancements={evercraft:claim/personal/p32_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p32_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 720000.. unless entity @s[advancements={evercraft:claim/personal/p32_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p32_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 3600000.. unless entity @s[advancements={evercraft:claim/personal/p32_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p32_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 7200000.. unless entity @s[advancements={evercraft:claim/personal/p32_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p32_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 36000000.. unless entity @s[advancements={evercraft:claim/personal/p32_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p32_5",tier:"exquisite",coins:50}

# p33
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_walk
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p33_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p33_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 1000000.. unless entity @s[advancements={evercraft:claim/personal/p33_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p33_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 5000000.. unless entity @s[advancements={evercraft:claim/personal/p33_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p33_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 25000000.. unless entity @s[advancements={evercraft:claim/personal/p33_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p33_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100000000.. unless entity @s[advancements={evercraft:claim/personal/p33_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p33_5",tier:"exquisite",coins:50}

# p34
execute store result score #bc_score ec.temp run scoreboard players get @s ach.food_eaten
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p34_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p34_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/personal/p34_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p34_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p34_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p34_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 1500.. unless entity @s[advancements={evercraft:claim/personal/p34_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p34_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p34_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p34_5",tier:"exquisite",coins:50}

# p35
execute store result score #bc_score ec.temp run scoreboard players get @s ach.blocks_placed
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p35_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p35_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p35_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p35_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 25000.. unless entity @s[advancements={evercraft:claim/personal/p35_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p35_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p35_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p35_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 500000.. unless entity @s[advancements={evercraft:claim/personal/p35_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p35_5",tier:"exquisite",coins:50}

# p36
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_sprint
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p36_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p36_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 1000000.. unless entity @s[advancements={evercraft:claim/personal/p36_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p36_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 5000000.. unless entity @s[advancements={evercraft:claim/personal/p36_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p36_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 25000000.. unless entity @s[advancements={evercraft:claim/personal/p36_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p36_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100000000.. unless entity @s[advancements={evercraft:claim/personal/p36_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p36_5",tier:"exquisite",coins:50}

# p37
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_swim
execute if score #bc_score ec.temp matches 50000.. unless entity @s[advancements={evercraft:claim/personal/p37_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p37_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 500000.. unless entity @s[advancements={evercraft:claim/personal/p37_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p37_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 2500000.. unless entity @s[advancements={evercraft:claim/personal/p37_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p37_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 10000000.. unless entity @s[advancements={evercraft:claim/personal/p37_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p37_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 50000000.. unless entity @s[advancements={evercraft:claim/personal/p37_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p37_5",tier:"exquisite",coins:50}

# p38
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_sleep
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p38_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p38_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p38_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p38_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p38_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p38_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p38_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p38_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p38_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p38_5",tier:"exquisite",coins:50}

# p39
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_chest
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p39_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p39_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 200.. unless entity @s[advancements={evercraft:claim/personal/p39_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p39_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p39_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p39_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 1500.. unless entity @s[advancements={evercraft:claim/personal/p39_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p39_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p39_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p39_5",tier:"exquisite",coins:50}

# p40
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_ench
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p40_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p40_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p40_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p40_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/personal/p40_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p40_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/personal/p40_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p40_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p40_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p40_5",tier:"mythical",coins:50}

# p41
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_brew
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p41_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p41_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p41_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p41_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 75.. unless entity @s[advancements={evercraft:claim/personal/p41_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p41_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 150.. unless entity @s[advancements={evercraft:claim/personal/p41_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p41_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p41_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p41_5",tier:"mythical",coins:50}

# p42
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_map
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p42_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p42_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p42_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p42_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p42_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p42_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p42_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p42_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p42_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p42_5",tier:"mythical",coins:50}

# p43
execute store result score #bc_score ec.temp run scoreboard players get @s ach.trees_unlocked
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p43_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p43_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p43_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p43_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 8.. unless entity @s[advancements={evercraft:claim/personal/p43_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p43_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 11.. unless entity @s[advancements={evercraft:claim/personal/p43_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p43_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 13.. unless entity @s[advancements={evercraft:claim/personal/p43_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p43_5",tier:"mythical",coins:50}

# p44
execute store result score #bc_score ec.temp run scoreboard players get @s ach.village_upgrades
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p44_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p44_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p44_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p44_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p44_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p44_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 8.. unless entity @s[advancements={evercraft:claim/personal/p44_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p44_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 12.. unless entity @s[advancements={evercraft:claim/personal/p44_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p44_5",tier:"mythical",coins:50}

# p45
execute store result score #bc_score ec.temp run scoreboard players get @s ec.guild_rank
execute if score #bc_score ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/personal/p45_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p45_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/personal/p45_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p45_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/personal/p45_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p45_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 8.. unless entity @s[advancements={evercraft:claim/personal/p45_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p45_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p45_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p45_5",tier:"mythical",coins:50}

# p46
execute store result score #bc_score ec.temp run scoreboard players get @s ec.guild_contrib
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p46_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p46_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 2000.. unless entity @s[advancements={evercraft:claim/personal/p46_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p46_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 5000.. unless entity @s[advancements={evercraft:claim/personal/p46_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p46_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 10000.. unless entity @s[advancements={evercraft:claim/personal/p46_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p46_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 25000.. unless entity @s[advancements={evercraft:claim/personal/p46_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p46_5",tier:"exquisite",coins:50}

# p47
execute store result score #bc_score ec.temp run scoreboard players get @s ach.cf_listened
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p47_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p47_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p47_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p47_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p47_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p47_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p47_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p47_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p47_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p47_5",tier:"exquisite",coins:50}

# p48
execute store result score #bc_score ec.temp run scoreboard players get @s ach.cf_recorded
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p48_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p48_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p48_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p48_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p48_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p48_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p48_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p48_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p48_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p48_5",tier:"mythical",coins:50}

# p49
execute store result score #bc_score ec.temp run scoreboard players get @s ach.encounters_done
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p49_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p49_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p49_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p49_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 25.. unless entity @s[advancements={evercraft:claim/personal/p49_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p49_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p49_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p49_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p49_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p49_5",tier:"mythical",coins:50}

# p50
execute store result score #bc_score ec.temp run scoreboard players get @s ach.parties_formed
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p50_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p50_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p50_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p50_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p50_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p50_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p50_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p50_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p50_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p50_5",tier:"mythical",coins:50}

# p51
execute store result score #bc_score ec.temp run scoreboard players get @s ach.night_ticks
execute if score #bc_score ec.temp matches 72000.. unless entity @s[advancements={evercraft:claim/personal/p51_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p51_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 360000.. unless entity @s[advancements={evercraft:claim/personal/p51_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p51_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 720000.. unless entity @s[advancements={evercraft:claim/personal/p51_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p51_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 1800000.. unless entity @s[advancements={evercraft:claim/personal/p51_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p51_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 3600000.. unless entity @s[advancements={evercraft:claim/personal/p51_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p51_5",tier:"exquisite",coins:50}

# p52
execute store result score #bc_score ec.temp run scoreboard players get @s ach.dungeon_no_death
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p52_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p52_1",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p52_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p52_2",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p52_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p52_3",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p52_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p52_4",tier:"mythical",coins:50}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p52_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p52_5",tier:"mythical",coins:75}

# p53
execute store result score #bc_score ec.temp run scoreboard players get @s ach.we_starfall
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p53_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p53_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p53_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p53_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p53_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p53_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p53_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p53_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p53_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p53_5",tier:"mythical",coins:50}

# p54
execute store result score #bc_score ec.temp run scoreboard players get @s ach.we_dreaming
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p54_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p54_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p54_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p54_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p54_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p54_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p54_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p54_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p54_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p54_5",tier:"mythical",coins:50}

# p55
execute store result score #bc_score ec.temp run scoreboard players get @s ach.fallen_stars
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p55_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p55_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p55_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p55_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/personal/p55_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p55_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 30.. unless entity @s[advancements={evercraft:claim/personal/p55_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p55_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p55_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p55_5",tier:"mythical",coins:50}

# p56
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_flint
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p56_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p56_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p56_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p56_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p56_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p56_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 250.. unless entity @s[advancements={evercraft:claim/personal/p56_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p56_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 500.. unless entity @s[advancements={evercraft:claim/personal/p56_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p56_5",tier:"exquisite",coins:50}

# p57
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_jump
execute if score #bc_score ec.temp matches 10000.. unless entity @s[advancements={evercraft:claim/personal/p57_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p57_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 50000.. unless entity @s[advancements={evercraft:claim/personal/p57_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p57_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p57_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p57_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 250000.. unless entity @s[advancements={evercraft:claim/personal/p57_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p57_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 500000.. unless entity @s[advancements={evercraft:claim/personal/p57_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p57_5",tier:"exquisite",coins:50}

# p58
execute store result score #bc_score ec.temp run scoreboard players get @s ach.adj_fall
execute if score #bc_score ec.temp matches 100000.. unless entity @s[advancements={evercraft:claim/personal/p58_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p58_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 500000.. unless entity @s[advancements={evercraft:claim/personal/p58_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p58_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 2500000.. unless entity @s[advancements={evercraft:claim/personal/p58_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p58_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 10000000.. unless entity @s[advancements={evercraft:claim/personal/p58_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p58_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 50000000.. unless entity @s[advancements={evercraft:claim/personal/p58_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p58_5",tier:"exquisite",coins:50}

# p59
execute store result score #bc_score ec.temp run scoreboard players get @s ach.comp_bonded
execute if score #bc_score ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/personal/p59_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p59_1",tier:"uncommon",coins:5}
execute if score #bc_score ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/personal/p59_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p59_2",tier:"rare",coins:10}
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p59_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p59_3",tier:"ornate",coins:20}
execute if score #bc_score ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/personal/p59_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p59_4",tier:"exquisite",coins:35}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p59_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p59_5",tier:"mythical",coins:50}

# p60
execute store result score #bc_score ec.temp run scoreboard players get @s ach.crates_mining
execute if score #bc_score ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/personal/p60_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p60_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 20.. unless entity @s[advancements={evercraft:claim/personal/p60_2=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p60_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 50.. unless entity @s[advancements={evercraft:claim/personal/p60_3=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p60_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 100.. unless entity @s[advancements={evercraft:claim/personal/p60_4=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p60_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 250.. unless entity @s[advancements={evercraft:claim/personal/p60_5=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"p60_5",tier:"exquisite",coins:50}

# s1
execute if score @s ach.total_kills matches 1.. unless entity @s[advancements={evercraft:claim/personal/s1_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s1_1",tier:"common",coins:5}
# s2
execute if score @s ach.fish_caught matches 1.. unless entity @s[advancements={evercraft:claim/personal/s2_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s2_1",tier:"common",coins:5}
# s3
execute if score @s ach.blocks_mined matches 1.. unless entity @s[advancements={evercraft:claim/personal/s3_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s3_1",tier:"common",coins:5}
# s4
execute if score @s ach.crops_harvested matches 1.. unless entity @s[advancements={evercraft:claim/personal/s4_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s4_1",tier:"common",coins:5}
# s5
execute if score @s ach.food_eaten matches 1.. unless entity @s[advancements={evercraft:claim/personal/s5_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s5_1",tier:"common",coins:5}
# s6
execute if score @s ach.adj_trade matches 1.. unless entity @s[advancements={evercraft:claim/personal/s6_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s6_1",tier:"common",coins:5}
# s7
execute if score @s ach.adj_ench matches 1.. unless entity @s[advancements={evercraft:claim/personal/s7_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s7_1",tier:"common",coins:5}
# s8
execute if score @s ach.adj_brew matches 1.. unless entity @s[advancements={evercraft:claim/personal/s8_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s8_1",tier:"common",coins:5}
# s9
execute if score @s ach.comp_owned matches 1.. unless entity @s[advancements={evercraft:claim/personal/s9_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s9_1",tier:"common",coins:5}
# s10
execute if score @s ach.quests_done matches 1.. unless entity @s[advancements={evercraft:claim/personal/s10_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s10_1",tier:"common",coins:5}
# s11
execute if score @s ach.crates_opened matches 1.. unless entity @s[advancements={evercraft:claim/personal/s11_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s11_1",tier:"common",coins:5}
# s12
execute if score @s ach.patron_kills matches 1.. unless entity @s[advancements={evercraft:claim/personal/s12_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s12_1",tier:"uncommon",coins:10}
# s13
execute if score @s ach.boss_kills matches 1.. unless entity @s[advancements={evercraft:claim/personal/s13_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s13_1",tier:"uncommon",coins:10}
# s14
execute if score @s ach.dungeons_done matches 1.. unless entity @s[advancements={evercraft:claim/personal/s14_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s14_1",tier:"uncommon",coins:10}
# s15
execute if score @s ach.raids_done matches 1.. unless entity @s[advancements={evercraft:claim/personal/s15_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s15_1",tier:"uncommon",coins:10}
# s16
execute if score @s ach.structures_found matches 1.. unless entity @s[advancements={evercraft:claim/personal/s16_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s16_1",tier:"uncommon",coins:10}
# s17
execute if score @s ach.lore_found matches 1.. unless entity @s[advancements={evercraft:claim/personal/s17_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s17_1",tier:"uncommon",coins:10}
# s18
execute if score @s ach.biomes_visited matches 5.. unless entity @s[advancements={evercraft:claim/personal/s18_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s18_1",tier:"uncommon",coins:10}
# s19
execute if score @s ach.parties_formed matches 1.. unless entity @s[advancements={evercraft:claim/personal/s19_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s19_1",tier:"uncommon",coins:10}
# s20
execute if score @s ach.encounters_done matches 1.. unless entity @s[advancements={evercraft:claim/personal/s20_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s20_1",tier:"uncommon",coins:10}
# s21
execute if score @s ec.bounty_done matches 1.. unless entity @s[advancements={evercraft:claim/personal/s21_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s21_1",tier:"uncommon",coins:10}
# s22
execute if score @s ach.guilds_joined matches 1.. unless entity @s[advancements={evercraft:claim/personal/s22_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s22_1",tier:"rare",coins:15}
# s23
execute if score @s ach.castles_built matches 1.. unless entity @s[advancements={evercraft:claim/personal/s23_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s23_1",tier:"rare",coins:15}
# s24
execute if score @s ach.constellations matches 1.. unless entity @s[advancements={evercraft:claim/personal/s24_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s24_1",tier:"rare",coins:15}
# s25
execute if score @s ach.spirit_bonds matches 1.. unless entity @s[advancements={evercraft:claim/personal/s25_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s25_1",tier:"rare",coins:15}
# s26
execute if score @s ach.cf_recorded matches 1.. unless entity @s[advancements={evercraft:claim/personal/s26_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s26_1",tier:"rare",coins:15}
# s27
execute if score @s ach.housing_tier matches 1.. unless entity @s[advancements={evercraft:claim/personal/s27_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s27_1",tier:"rare",coins:15}
# s28
execute if score @s ach.village_upgrades matches 1.. unless entity @s[advancements={evercraft:claim/personal/s28_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s28_1",tier:"rare",coins:15}
# s29
execute if score @s ach.trees_unlocked matches 1.. unless entity @s[advancements={evercraft:claim/personal/s29_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s29_1",tier:"rare",coins:15}
# s30
execute if score @s ach.runes_forged matches 1.. unless entity @s[advancements={evercraft:claim/personal/s30_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s30_1",tier:"rare",coins:15}
# s31
execute if score @s ach.sets_equipped matches 27.. unless entity @s[advancements={evercraft:claim/personal/s31_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s31_1",tier:"ornate",coins:25}
# s32
execute if score @s ach.comp_owned matches 96.. unless entity @s[advancements={evercraft:claim/personal/s32_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s32_1",tier:"exquisite",coins:35}
# s33
execute if score @s ach.lore_found matches 162.. unless entity @s[advancements={evercraft:claim/personal/s33_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s33_1",tier:"exquisite",coins:35}
# s34
execute if score @s ach.total_levels matches 325.. unless entity @s[advancements={evercraft:claim/personal/s34_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s34_1",tier:"exquisite",coins:35}
# s35
execute if score @s ec.bounty_done matches 200.. unless entity @s[advancements={evercraft:claim/personal/s35_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s35_1",tier:"ornate",coins:25}
# s36
execute if score @s ach.combos_triggered matches 500.. unless entity @s[advancements={evercraft:claim/personal/s36_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s36_1",tier:"ornate",coins:25}
# s37
execute if score @s ach.fish_treasure matches 250.. unless entity @s[advancements={evercraft:claim/personal/s37_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s37_1",tier:"ornate",coins:25}
# s38
execute if score @s ach.adj_play matches 36000000.. unless entity @s[advancements={evercraft:claim/personal/s38_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s38_1",tier:"exquisite",coins:35}
# s39
execute if score @s ach.boss_kills matches 100.. unless entity @s[advancements={evercraft:claim/personal/s39_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s39_1",tier:"mythical",coins:50}
# s40
execute if score @s ach.blocks_mined matches 1000000.. unless entity @s[advancements={evercraft:claim/personal/s40_1=true}] run function evercraft:claim/bulk_claim_stage {system:"personal",id:"s40_1",tier:"mythical",coins:75}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{"text":"[\u2726] ","color":"gold"},{"text":"Claimed ","color":"green"},{"score":{"name":"@s","objective":"ec.claim_cnt"},"color":"yellow"},{"text":" personal milestone reward(s)!","color":"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{"text":"[!] ","color":"gray"},{"text":"No unclaimed personal milestone rewards.","color":"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed
scoreboard players set @s adv.gui_cd 5
