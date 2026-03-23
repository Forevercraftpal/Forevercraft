# Infinite Castle — Floor 100 Rewards Per Player
# Run as: ic.player at their position
# Loot is ONE-TIME only — if already claimed, only give XP

# Check if already claimed
execute if score @s ic.claimed matches 100.. run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"Floor 100 cleared again! ",color:"gold"},{text:"(rewards already claimed)",color:"gray"}]
execute if score @s ic.claimed matches 100.. run experience add @s 10000 points
execute if score @s ic.claimed matches 100.. run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
execute if score @s ic.claimed matches 100.. run return 0

# Check inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# === 1. WISHING STAR ===
execute if score #inv_full ec.var matches 0 run give @s minecraft:nether_star[custom_name={"text":"Dreamy Star","color":"gold","italic":false,"bold":true},custom_data={wishing_star:true},lore=[{"text":"Mythical Item","color":"gold","italic":false},"",{"text":"A star that fell not from the sky, but from","color":"gray","italic":true},{"text":"the Fountain's deepest, most desperate wish.","color":"gray","italic":true},"",{"text":"Right-click to use:","color":"white","italic":false},{"text":"Choose ANY artifact from the entire pack","color":"aqua","italic":false},"",{"text":"\"The rarest gift is the power to choose.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false}] 1
execute if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_name":{"text":"Dreamy Star","color":"gold","italic":false,"bold":true},"minecraft:custom_data":{wishing_star:true},"minecraft:enchantment_glint_override":true}}}
# === 2. THREE MYTHICAL AWAKENING STONES ===
execute if score #inv_full ec.var matches 0 run give @s minecraft:stick[item_model="minecraft:amethyst_cluster",custom_name={"text":"Awakening Stone","color":"light_purple","italic":false},custom_data={awakening_stone:true,tier:"mythical"},lore=[{"text":"Mythical Awakening Stone","color":"gold","italic":false},"",{"text":"A stone of legendary potency.","color":"gray","italic":true}],enchantment_glint_override=true] 3
execute if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:3,components:{"minecraft:custom_name":{"text":"Awakening Stone","color":"light_purple","italic":false},"minecraft:custom_data":{awakening_stone:true,tier:"mythical"},"minecraft:enchantment_glint_override":true}}}

# === 3. MYTHICAL CRATE ===
function evercraft:util/give_quest_crate {tier:"mythical"}

# === 4. FIVE TREE SHARDS ===
execute if score #inv_full ec.var matches 0 run give @s minecraft:prismarine_shard[custom_name={"text":"Tree Shard","color":"aqua","italic":false},custom_data={tree_shard:1b},enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"Splintered from the deepest roots of the","color":"gray","italic":true},{"text":"Advantage Tree, it pulses with distilled wisdom.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Grants 50 XP levels","color":"aqua","italic":false}]] 5
execute if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",count:5,components:{"minecraft:custom_name":{"text":"Tree Shard","color":"aqua","italic":false},"minecraft:custom_data":{tree_shard:1b},"minecraft:enchantment_glint_override":true}}}

# === 5. TITLE: LORD ===
team join ic.t_lord @s

# Consolidated reward announcement (1 message instead of 5)
tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"Floor 100 Rewards: ",color:"gold",bold:true},{text:"\u2726 Dreamy Star",color:"gold"},{text:" | ",color:"dark_gray"},{text:"3x Mythical Stones",color:"light_purple"},{text:" | ",color:"dark_gray"},{text:"Mythical Crate",color:"gold"},{text:" | ",color:"dark_gray"},{text:"5x Tree Shards",color:"aqua"},{text:" | ",color:"dark_gray"},{text:"Title: Lord",color:"gold"}]

# === 6. BONUS XP ===
experience add @s 10000 points

# Celebration VFX
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 0.8
execute at @s run particle minecraft:firework ~ ~1 ~ 3 2 3 0.1 200 force
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 2 2 2 0.5 150 force

# Mark floor 100 as claimed
scoreboard players operation @s ic.claimed > #ic_floor ec.var

# Inventory full warning
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Some rewards were dropped at your feet.",color:"yellow"}]
