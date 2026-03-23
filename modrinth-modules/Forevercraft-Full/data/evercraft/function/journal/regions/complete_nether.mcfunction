# ============================================================
# Nether Region Complete!
# Bonus: DR +1.0
# ============================================================

scoreboard players set @s jn.region_neth 1

# Apply permanent bonus (remove first for safety/idempotency)
# DR +1.0 (luck 0.1 × 10 = DR 1.0)
attribute @s luck modifier remove evercraft:journal_nether_luck
attribute @s luck modifier add evercraft:journal_nether_luck 0.1 add_value

# Celebration
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0
tellraw @s ""
tellraw @s [{text:"★ ",color:"gold"},{text:"[Journal] ",color:"gold"},{text:"REGION COMPLETE: ",color:"yellow",bold:true},{text:"Nether",color:"red"}]
tellraw @s [{text:"  Permanent Bonus: ",color:"gray"},{text:"+1.0 Dream Rate",color:"light_purple"}]
tellraw @s ""
title @s times 10 60 20
title @s title [{text:"Region Complete!",color:"gold",bold:true}]
title @s subtitle [{text:"Nether",color:"red"}]

# Forever Coin reward: 5 coins per region
scoreboard players add @s ec.coins 5
tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+5 Forever Coins",color:"#E0B0FF"}]
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:25}
