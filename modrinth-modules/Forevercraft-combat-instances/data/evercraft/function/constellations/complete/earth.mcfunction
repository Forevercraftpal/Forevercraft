# Constellation Complete — The Earthshaker (bit 4, value 16)
# Guard: skip if already completed

scoreboard players set #cn_div ec.temp 16
scoreboard players operation #cn_check ec.temp = @s ec.cn_done
scoreboard players operation #cn_check ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_check ec.temp %= #2 ec.const
execute if score #cn_check ec.temp matches 1 run return 0

# Set completion bit
scoreboard players add @s ec.cn_done 16

# Announce
tellraw @s {text:""}
tellraw @s [{text:"  "},{"text":"  ","color":"gold"},{"text":"Constellation Complete: ","color":"gray"},{"text":"The Earthshaker","color":"yellow","bold":true}]
tellraw @s [{text:"    ","color":"gray"},{"text":"The mountain's heart beats with yours. +0.25 Dream Rate","color":"gold"}]
tellraw @s {text:""}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.6 0.8

# Forever Coin reward: 10 coins per constellation
function evercraft:coins/constellation_reward
