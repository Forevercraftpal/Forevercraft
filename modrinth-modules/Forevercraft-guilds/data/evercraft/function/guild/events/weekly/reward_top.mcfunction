# Guild Event — Weekly: Reward Top Contributor
# @s = top contributing player

# Permanent title tag
tag @s add ec.title_top_contributor

# +125 extra contribution
execute store result storage evercraft:guild temp.amount int 1 run scoreboard players set #ge_reward ec.temp 125
function evercraft:guild/contribution/add {amount:125}

# +50 levels XP
experience add @s 50 levels

# +25 Forever Coins
scoreboard players add @s ec.coins 25

# Effects
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0
playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 0.5 1.0
particle totem_of_undying ~ ~1 ~ 1 1 1 0.3 50

# Title display
title @s times 10 70 30
title @s title [{text:"TOP CONTRIBUTOR",color:"gold",bold:true}]
title @s subtitle [{text:"Your dedication is unmatched.",color:"yellow",italic:true}]

# Personal notification
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are this week's Top Contributor! ",color:"gold",bold:true}]
tellraw @s [{text:"  Rewards: ",color:"gray"},{text:"+125 Contribution",color:"aqua"},{text:" + ",color:"gray"},{text:"+50 Levels XP",color:"green"},{text:" + ",color:"gray"},{text:"+25 Forever Coins",color:"#E0B0FF"}]
tellraw @s [{text:"  You earned the permanent title: ",color:"gray"},{text:"Top Contributor",color:"gold",bold:true}]

# Announce to all guilded players
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"This week's Top Contributor: ",color:"gold"},{selector:"@s",color:"gold",bold:true},{text:" (+",color:"gray"},{score:{name:"#ge_top_score",objective:"ec.temp"},color:"aqua"},{text:" contribution)",color:"gray"}]
