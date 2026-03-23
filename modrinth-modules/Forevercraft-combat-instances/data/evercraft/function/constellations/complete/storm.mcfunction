# Constellation Complete — The Stormcaller (bit 8, value 256)
# Guard: skip if already completed

scoreboard players set #256 ec.temp 256
scoreboard players operation #cn_check ec.temp = @s ec.cn_done
scoreboard players operation #cn_check ec.temp /= #256 ec.temp
scoreboard players operation #cn_check ec.temp %= #2 ec.const
execute if score #cn_check ec.temp matches 1 run return 0

# Set completion bit
scoreboard players add @s ec.cn_done 256

# Announce
tellraw @s {text:""}
tellraw @s [{text:"  "},{"text":"  ","color":"gold"},{"text":"Constellation Complete: ","color":"gray"},{"text":"The Stormcaller","color":"dark_aqua","bold":true}]
tellraw @s [{text:"    ","color":"gray"},{"text":"Thunder echoes through your collection. +0.25 Dream Rate","color":"aqua"}]
tellraw @s {text:""}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.6 0.8

# Forever Coin reward: 10 coins per constellation
function evercraft:coins/constellation_reward
