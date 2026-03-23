# Grant Mythical pull reward (2% base rate)
# Runs as @s = player

# Skip roll if pre-rolled by reel animation
execute if score #reward_roll ec.temp matches ..0 store result score #reward_roll ec.temp run random value 1..5

# 1-2: Exclusive Gacha Artifact (9 unique mythicals — random)
execute if score #reward_roll ec.temp matches 1..2 run function evercraft:gacha/pull/grant_mythical_artifact

# 3: Exclusive Gacha Companion (Dreamstag / Starweaver / Somnia)
execute if score #reward_roll ec.temp matches 3 run function evercraft:gacha/pull/grant_mythical_companion

# 4: Dreamdust Crystal (permanent +2.5 DR, once per player)
execute if score #reward_roll ec.temp matches 4 run give @s minecraft:stick[item_model="minecraft:amethyst_cluster",custom_name={"text":"Dreamdust Crystal","color":"gold","italic":false,"bold":true},custom_data={dreamdust_crystal:true},lore=[{"text":"Mythical Item","color":"gold","italic":false},"",{"text":"Pure crystallized fortune, distilled from a","color":"gray","italic":true},{"text":"thousand dreams that dared to come true.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Permanently gain +2.5 Dream Rate","color":"aqua","italic":false},{"text":"(One per player)","color":"dark_gray","italic":false},"",{"text":"\"What you dream becomes what you are.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false}] 1
execute if score #reward_roll ec.temp matches 4 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Dreamdust Crystal!","color":"yellow"},{"text":" \u2726\u2726\u2726","color":"gold"}]

# 5: Wishing Star (choose ANY artifact)
execute if score #reward_roll ec.temp matches 5 run give @s minecraft:nether_star[custom_name={"text":"Dreamy Star","color":"gold","italic":false,"bold":true},custom_data={wishing_star:true},lore=[{"text":"Mythical Item","color":"gold","italic":false},"",{"text":"A star that fell not from the sky, but from","color":"gray","italic":true},{"text":"the Fountain's deepest, most desperate wish.","color":"gray","italic":true},"",{"text":"Right-click to use:","color":"white","italic":false},{"text":"Choose ANY artifact from the entire pack","color":"aqua","italic":false},"",{"text":"\"The rarest gift is the power to choose.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false}] 1
execute if score #reward_roll ec.temp matches 5 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Dreamy Star!","color":"yellow"},{"text":" \u2726\u2726\u2726","color":"gold"}]

# "Dreamy Star" achievement — first mythical pull
advancement grant @s only evercraft:gacha/dreamy_star

# Mythical pull celebration
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 1.5
particle totem_of_undying ~ ~1.5 ~ 1 1.5 1 0.5 100 force @s
particle end_rod ~ ~2 ~ 0.5 1 0.5 0.05 50 force @s
particle enchant ~ ~1 ~ 1 1 1 2 50 force @s

# Broadcast to all players
tellraw @a [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" pulled a ","color":"gray"},{"text":"MYTHICAL","color":"gold","bold":true},{"text":" from the Fountain of Eternal Dreams!","color":"gray"},{"text":" \u2726\u2726\u2726","color":"gold"}]

# Title
title @s subtitle {"text":"from the Fountain of Eternal Dreams!","color":"yellow"}
title @s title {"text":"\u2726 MYTHICAL \u2726","color":"gold","bold":true}
