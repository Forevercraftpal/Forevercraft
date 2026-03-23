# Constellation Complete — The Pyreborn (bit 1, value 2)
# Guard: skip if already completed

scoreboard players operation #cn_check ec.temp = @s ec.cn_done
scoreboard players operation #cn_check ec.temp /= #2 ec.const
scoreboard players operation #cn_check ec.temp %= #2 ec.const
execute if score #cn_check ec.temp matches 1 run return 0

# Set completion bit
scoreboard players add @s ec.cn_done 2

# Announce
tellraw @s {text:""}
tellraw @s [{text:"  "},{"text":"  ","color":"gold"},{"text":"Constellation Complete: ","color":"gray"},{"text":"The Pyreborn","color":"red","bold":true}]
tellraw @s [{text:"    ","color":"gray"},{"text":"From ash and ember, the flame constellation ignites. +0.25 Dream Rate","color":"gold"}]
tellraw @s {text:""}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.6 0.8

# Forever Coin reward: 10 coins per constellation
function evercraft:coins/constellation_reward
