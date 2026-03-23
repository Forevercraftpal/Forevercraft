# === BULK CLAIM — BIOME MASTERY STAGES ===
# Claims all unclaimed biome mastery rewards at once
# Run as: player

execute unless entity @s[tag=Adv.InMenu] run return 0
scoreboard players set @s ec.claim_cnt 0

# Plains
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm0
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b0_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b0_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b0_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b0_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b0_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b0_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b0_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b0_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b0_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b0_5",tier:"exquisite",coins:50}

# Forest
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm1
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b1_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b1_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b1_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b1_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b1_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b1_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b1_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b1_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b1_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b1_5",tier:"exquisite",coins:50}

# Flower Forest
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm2
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b2_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b2_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b2_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b2_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b2_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b2_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b2_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b2_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b2_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b2_5",tier:"exquisite",coins:50}

# Dark Forest
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm3
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b3_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b3_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b3_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b3_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b3_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b3_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b3_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b3_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b3_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b3_5",tier:"exquisite",coins:50}

# Taiga
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm4
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b4_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b4_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b4_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b4_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b4_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b4_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b4_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b4_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b4_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b4_5",tier:"exquisite",coins:50}

# Mountain
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm5
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b5_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b5_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b5_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b5_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b5_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b5_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b5_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b5_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b5_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b5_5",tier:"exquisite",coins:50}

# Jungle
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm6
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b6_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b6_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b6_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b6_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b6_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b6_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b6_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b6_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b6_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b6_5",tier:"exquisite",coins:50}

# Desert
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm7
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b7_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b7_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b7_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b7_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b7_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b7_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b7_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b7_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b7_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b7_5",tier:"exquisite",coins:50}

# Savanna
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm8
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b8_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b8_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b8_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b8_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b8_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b8_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b8_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b8_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b8_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b8_5",tier:"exquisite",coins:50}

# Ocean
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm9
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b9_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b9_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b9_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b9_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b9_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b9_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b9_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b9_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b9_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b9_5",tier:"exquisite",coins:50}

# River
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm10
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b10_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b10_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b10_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b10_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b10_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b10_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b10_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b10_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b10_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b10_5",tier:"exquisite",coins:50}

# Swamp
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm11
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b11_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b11_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b11_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b11_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b11_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b11_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b11_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b11_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b11_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b11_5",tier:"exquisite",coins:50}

# Mushroom Island
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm12
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b12_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b12_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b12_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b12_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b12_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b12_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b12_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b12_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b12_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b12_5",tier:"exquisite",coins:50}

# Ice
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm13
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b13_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b13_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b13_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b13_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b13_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b13_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b13_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b13_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b13_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b13_5",tier:"exquisite",coins:50}

# Badlands
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm14
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b14_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b14_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b14_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b14_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b14_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b14_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b14_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b14_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b14_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b14_5",tier:"exquisite",coins:50}

# Lush Caves
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm15
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b15_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b15_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b15_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b15_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b15_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b15_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b15_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b15_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b15_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b15_5",tier:"exquisite",coins:50}

# Dripstone Caves
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm16
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b16_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b16_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b16_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b16_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b16_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b16_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b16_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b16_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b16_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b16_5",tier:"exquisite",coins:50}

# Deep Dark
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm17
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b17_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b17_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b17_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b17_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b17_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b17_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b17_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b17_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b17_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b17_5",tier:"exquisite",coins:50}

# Nether Wastes
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm18
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b18_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b18_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b18_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b18_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b18_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b18_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b18_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b18_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b18_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b18_5",tier:"exquisite",coins:50}

# Crimson Forest
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm19
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b19_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b19_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b19_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b19_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b19_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b19_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b19_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b19_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b19_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b19_5",tier:"exquisite",coins:50}

# Warped Forest
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm20
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b20_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b20_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b20_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b20_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b20_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b20_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b20_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b20_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b20_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b20_5",tier:"exquisite",coins:50}

# Basalt Deltas
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm21
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b21_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b21_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b21_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b21_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b21_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b21_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b21_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b21_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b21_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b21_5",tier:"exquisite",coins:50}

# Soul Sand Valley
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm22
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b22_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b22_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b22_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b22_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b22_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b22_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b22_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b22_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b22_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b22_5",tier:"exquisite",coins:50}

# The End
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm23
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b23_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b23_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b23_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b23_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b23_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b23_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b23_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b23_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b23_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b23_5",tier:"exquisite",coins:50}

# Windswept Hills
execute store result score #bc_score ec.temp run scoreboard players get @s ec.bm24
execute if score #bc_score ec.temp matches 1800.. unless entity @s[advancements={evercraft:claim/biome/b24_1=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b24_1",tier:"common",coins:5}
execute if score #bc_score ec.temp matches 7200.. unless entity @s[advancements={evercraft:claim/biome/b24_2=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b24_2",tier:"uncommon",coins:10}
execute if score #bc_score ec.temp matches 21600.. unless entity @s[advancements={evercraft:claim/biome/b24_3=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b24_3",tier:"rare",coins:20}
execute if score #bc_score ec.temp matches 54000.. unless entity @s[advancements={evercraft:claim/biome/b24_4=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b24_4",tier:"ornate",coins:35}
execute if score #bc_score ec.temp matches 108000.. unless entity @s[advancements={evercraft:claim/biome/b24_5=true}] run function evercraft:claim/bulk_claim_stage {system:"biome",id:"b24_5",tier:"exquisite",coins:50}

# Summary feedback
execute if score @s ec.claim_cnt matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 0.8
execute if score @s ec.claim_cnt matches 1.. run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
execute if score @s ec.claim_cnt matches 1.. run tellraw @s [{"text":"[\u2726] ","color":"gold"},{"text":"Claimed ","color":"green"},{"score":{"name":"@s","objective":"ec.claim_cnt"},"color":"yellow"},{"text":" biome mastery reward(s)!","color":"green"}]
execute if score @s ec.claim_cnt matches 0 run tellraw @s [{"text":"[!] ","color":"gray"},{"text":"No unclaimed biome rewards.","color":"gray"}]

# Recount unclaimed
function evercraft:claim/check_unclaimed
scoreboard players set @s adv.gui_cd 5
