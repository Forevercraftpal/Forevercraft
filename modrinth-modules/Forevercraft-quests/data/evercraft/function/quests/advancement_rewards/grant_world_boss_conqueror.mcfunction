# ============================================================
# Grant World Boss Conqueror Reward — Hero's Satchel + Mythical Crate
# ============================================================

function evercraft:quests/advancement_rewards/check_iron_gate
execute unless score @s ec.iron_gate_passed matches 1 run return fail

# Check inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Give Hero's Satchel
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:hero_satchel/hero_satchel
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:hero_satchel/hero_satchel

# Give Mythical Crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:achievements/crates/mythical
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:achievements/crates/mythical
execute if score #inv_full ec.var matches 1 at @s as @e[type=item,nbt={Item:{id:"minecraft:barrel"},Age:0s},distance=..2,sort=nearest,limit=1] run data merge entity @s {Age:2400s}

experience add @s 1000 points

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 0.3 1.5
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 50
particle end_rod ~ ~1.5 ~ 1 1 1 0.05 30

tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You received a ",color:"gray"},{text:"Hero's Satchel",color:"#FF4500",bold:true},{text:" + ",color:"gray"},{text:"MYTHICAL Achievement Crate",color:"gold",bold:true},{text:" + ",color:"gray"},{text:"1000 XP",color:"green",bold:true},{text:"!",color:"gray"}]
tellraw @s [{text:"  ",color:"dark_gray"},{text:"\u2620 ",color:"dark_red"},{text:"The Hero's Satchel preserves all AoE effects from stored boss artifacts!",color:"#FF4500",italic:true}]

execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Some items were dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Track total achievements earned
scoreboard players add @s ach.total 1
