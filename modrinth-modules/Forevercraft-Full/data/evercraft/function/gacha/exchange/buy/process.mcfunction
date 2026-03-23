# Process Dreamdust Exchange purchase
# Triggered by /trigger ec.ddex set <1-8>
# Runs as @s = player

# 1: 1 Forever Coin for 3 Dreamdust
execute if score @s ec.ddex matches 1 unless score @s ec.dreamdust matches 3.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 3.","color":"red"}]
execute if score @s ec.ddex matches 1 run scoreboard players remove @s ec.dreamdust 3
execute if score @s ec.ddex matches 1 run scoreboard players add @s ec.coins 1
execute if score @s ec.ddex matches 1 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Purchased ","color":"gray"},{"text":"1 Forever Coin","color":"gold"},{"text":"! (","color":"gray"},{"score":{"name":"@s","objective":"ec.dreamdust"},"color":"light_purple"},{"text":" Dreamdust remaining)","color":"gray"}]

# 2: Companion Treat for 10 Dreamdust
execute if score @s ec.ddex matches 2 unless score @s ec.dreamdust matches 10.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 10.","color":"red"}]
execute if score @s ec.ddex matches 2 run scoreboard players remove @s ec.dreamdust 10
execute if score @s ec.ddex matches 2 run loot give @s loot evercraft:companions/items/companion_treat
execute if score @s ec.ddex matches 2 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Purchased ","color":"gray"},{"text":"Companion Treat","color":"gold"},{"text":"!","color":"gray"}]

# 3: Awakening Stone for 15 Dreamdust
execute if score @s ec.ddex matches 3 unless score @s ec.dreamdust matches 15.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 15.","color":"red"}]
execute if score @s ec.ddex matches 3 run scoreboard players remove @s ec.dreamdust 15
execute if score @s ec.ddex matches 3 run give @s minecraft:stick[item_model="minecraft:amethyst_cluster",custom_name={"text":"Awakening Stone","color":"light_purple","italic":false},custom_data={awakening_stone:true,tier:"common"}] 1
execute if score @s ec.ddex matches 3 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Purchased ","color":"gray"},{"text":"Awakening Stone","color":"light_purple"},{"text":"!","color":"gray"}]

# 4: Tree Token for 30 Dreamdust
execute if score @s ec.ddex matches 4 unless score @s ec.dreamdust matches 30.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 30.","color":"red"}]
execute if score @s ec.ddex matches 4 run scoreboard players remove @s ec.dreamdust 30
execute if score @s ec.ddex matches 4 run give @s minecraft:prismarine_crystals[custom_data={tree_token:1b},custom_name={"text":"Tree Token","color":"aqua","italic":false},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A crystalline leaf from the Advantage Tree,","color":"gray","italic":true},{"text":"carrying the whisper of new potential.","color":"gray","italic":true},"",{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Unlock a node on your Advantage Tree","color":"aqua"}]}],enchantment_glint_override=true] 1
execute if score @s ec.ddex matches 4 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Purchased ","color":"gray"},{"text":"Tree Token","color":"green"},{"text":"!","color":"gray"}]

# 5: Specific Particle for 100 Dreamdust
execute if score @s ec.ddex matches 5 unless score @s ec.dreamdust matches 100.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 100.","color":"red"}]
execute if score @s ec.ddex matches 5 run scoreboard players remove @s ec.dreamdust 100
execute if score @s ec.ddex matches 5 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Purchased ","color":"gray"},{"text":"Particle Choice","color":"#E0B0FF"},{"text":"! Check cosmetics menu.","color":"gray"}]

# 6: Specific Title for 100 Dreamdust
execute if score @s ec.ddex matches 6 unless score @s ec.dreamdust matches 100.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 100.","color":"red"}]
execute if score @s ec.ddex matches 6 run scoreboard players remove @s ec.dreamdust 100
execute if score @s ec.ddex matches 6 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Purchased ","color":"gray"},{"text":"Title Choice","color":"#E0B0FF"},{"text":"! Check cosmetics menu.","color":"gray"}]

# 7: Guaranteed Exquisite Pull for 200 Dreamdust
execute if score @s ec.ddex matches 7 unless score @s ec.dreamdust matches 200.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 200.","color":"red"}]
execute if score @s ec.ddex matches 7 run scoreboard players remove @s ec.dreamdust 200
execute if score @s ec.ddex matches 7 run function evercraft:gacha/pull/grant_exquisite
execute if score @s ec.ddex matches 7 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Dreamdust converted to ","color":"gray"},{"text":"Guaranteed Exquisite Pull","color":"yellow","bold":true},{"text":"!","color":"gray"}]

# 8: Guaranteed Mythical Pull for 500 Dreamdust
execute if score @s ec.ddex matches 8 unless score @s ec.dreamdust matches 500.. run return run tellraw @s [{"text":"\u25C6 ","color":"gray"},{"text":"Not enough Dreamdust! Need 500.","color":"red"}]
execute if score @s ec.ddex matches 8 run scoreboard players remove @s ec.dreamdust 500
execute if score @s ec.ddex matches 8 run function evercraft:gacha/pull/grant_mythical
execute if score @s ec.ddex matches 8 run tellraw @s [{"text":"\u25C6 ","color":"#E0B0FF"},{"text":"Dreamdust converted to ","color":"gray"},{"text":"Guaranteed Mythical Pull","color":"light_purple","bold":true},{"text":"!","color":"gray"}]

# Reset trigger
scoreboard players set @s ec.ddex 0
scoreboard players enable @s ec.ddex

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
