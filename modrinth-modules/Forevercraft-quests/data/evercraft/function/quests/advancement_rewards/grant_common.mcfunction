# ============================================================
# Grant Common Crate from Advancement
# Called by Evercraft advancement reward functions
# ============================================================

# Check iron gate
function evercraft:quests/advancement_rewards/check_iron_gate
execute unless score @s ec.iron_gate_passed matches 1 run tellraw @s ["",{text:"[Advancements] ",color:"green"},{text:"Craft an iron pickaxe to unlock crate rewards!",color:"gray"}]
execute unless score @s ec.iron_gate_passed matches 1 run return fail

# Check inventory space before giving
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Grant crate barrel + XP
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:achievements/crates/common
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:achievements/crates/common
execute if score #inv_full ec.var matches 1 at @s as @e[type=item,nbt={Item:{id:"minecraft:barrel"},Age:0s},distance=..2,sort=nearest,limit=1] run data merge entity @s {Age:2400s}
experience add @s 10 points

# Effects
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.2
tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You received a ",color:"gray"},{text:"Common Achievement Crate",color:"white"},{text:" + ",color:"gray"},{text:"10 XP",color:"green"},{text:"!",color:"gray"}]
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Track total achievements earned
scoreboard players add @s ach.total 1
