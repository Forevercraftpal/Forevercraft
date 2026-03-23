# Notify player of Forever Coin gain
# Runs as @s = player, #coin_amount ec.temp = amount gained

tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Forever Coin","color":"gold"},{"text":" +","color":"gray"},{"score":{"name":"#coin_amount","objective":"ec.temp"},"color":"gold"},{"text":" (Total: ","color":"gray"},{"score":{"name":"@s","objective":"ec.coins"},"color":"gold"},{"text":")","color":"gray"},{"text":" \u2726","color":"#E0B0FF"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
