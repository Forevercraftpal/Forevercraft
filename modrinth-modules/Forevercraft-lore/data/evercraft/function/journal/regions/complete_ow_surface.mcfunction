# ============================================================
# Overworld Surface Region Complete!
# Bonus: +10% Speed + DR +1.0
# ============================================================

scoreboard players set @s jn.region_ow 1

# Apply permanent bonuses (remove first for safety/idempotency)
# Speed +10%
attribute @s movement_speed modifier remove evercraft:journal_ow_surface_speed
attribute @s movement_speed modifier add evercraft:journal_ow_surface_speed 0.1 add_multiplied_total

# DR +1.0 (luck 0.1 × 10 = DR 1.0)
attribute @s luck modifier remove evercraft:journal_ow_surface_luck
attribute @s luck modifier add evercraft:journal_ow_surface_luck 0.1 add_value

# Celebration
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0
tellraw @s ""
tellraw @s [{text:"★ ",color:"gold"},{text:"[Journal] ",color:"gold"},{text:"REGION COMPLETE: ",color:"yellow",bold:true},{text:"Overworld Surface",color:"green"}]
tellraw @s [{text:"  Permanent Bonus: ",color:"gray"},{text:"+10% Speed",color:"aqua"},{text:" + ",color:"gray"},{text:"+1.0 Dream Rate",color:"light_purple"}]
tellraw @s ""
title @s times 10 60 20
title @s title [{text:"Region Complete!",color:"gold",bold:true}]
title @s subtitle [{text:"Overworld Surface",color:"green"}]

# Forever Coin reward: 5 coins per region
scoreboard players add @s ec.coins 5
tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+5 Forever Coins",color:"#E0B0FF"}]
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:25}
