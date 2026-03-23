# Underground Biome Encounters — Stop Encounter
# Run as/at player when ube.timer hits 0

# Announce end
execute if score @s ube.type matches 1 run tellraw @s [{text:"The ",color:"dark_green"},{text:"Bloom Surge",color:"green",bold:true},{text:" subsides...",color:"dark_green"}]
execute if score @s ube.type matches 2 run tellraw @s [{text:"The ",color:"gray"},{text:"Crystalline Tremor",color:"gold",bold:true},{text:" fades away...",color:"gray"}]
execute if score @s ube.type matches 3 run tellraw @s [{text:"The ",color:"dark_gray"},{text:"Void Whisper",color:"dark_purple",bold:true},{text:" retreats into silence.",color:"dark_gray"}]

# Kill encounter mobs within 32 blocks
kill @e[tag=ube.enc_mob,distance=..48]
kill @e[tag=ube.tremor_mob,distance=..48]
kill @e[tag=ube.tremor_fish,distance=..48]

# Clear debuffs from Deep Dark
execute if score @s ube.type matches 3 run effect clear @s slowness
execute if score @s ube.type matches 3 run effect clear @s weakness
execute if score @s ube.type matches 3 run effect clear @s darkness

# Check inventory space before giving reward
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Give reward based on encounter type
execute if score @s ube.type matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:mob_crates/items/uncommon
execute if score @s ube.type matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:mob_crates/items/uncommon
execute if score @s ube.type matches 2 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:mob_crates/items/rare
execute if score @s ube.type matches 2 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:mob_crates/items/rare
execute if score @s ube.type matches 3 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:mob_crates/items/ornate
execute if score @s ube.type matches 3 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:mob_crates/items/ornate

# Reward notification
execute if score @s ube.type matches 1 run tellraw @s [{text:"  Encounter reward: ",color:"gray"},{text:"Uncommon Mob Crate",color:"green"}]
execute if score @s ube.type matches 2 run tellraw @s [{text:"  Encounter reward: ",color:"gray"},{text:"Rare Mob Crate",color:"blue"}]
execute if score @s ube.type matches 3 run tellraw @s [{text:"  Encounter reward: ",color:"gray"},{text:"Ornate Mob Crate",color:"light_purple"}]

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.0
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Some loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Encounters + Bounty: 25% chance to auto-generate a bounty after encounter
execute unless score @s ec.bnt_tier matches 1.. store result score #enc_bnt ec.temp run random value 1..4
execute unless score @s ec.bnt_tier matches 1.. if score #enc_bnt ec.temp matches 1 run function evercraft:bounty/roll_bounty
execute unless score @s ec.bnt_tier matches 1.. if score #enc_bnt ec.temp matches 1 run tellraw @s [{text:"  [Encounter] ",color:"dark_green"},{text:"The defeated creature's trail leads to a new bounty!",color:"yellow"}]

# Track for achievements
scoreboard players add @s ach.encounters_done 1

# Set cooldown to current gametime
execute store result score @s ube.cd run time query gametime

# Reset state
scoreboard players set @s ube.type 0
scoreboard players set @s ube.timer 0
