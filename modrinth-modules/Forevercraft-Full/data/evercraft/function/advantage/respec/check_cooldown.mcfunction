# Check respec cooldown
# Sets #respec_ok adv.temp = 1 if ready, 0 if on cooldown

execute if score @s adv.respec_cd matches ..0 run scoreboard players set #respec_ok adv.temp 1
execute if score @s adv.respec_cd matches ..0 run return 0

# On cooldown — calculate remaining hours for display
scoreboard players set #respec_ok adv.temp 0
scoreboard players operation #remain adv.temp = @s adv.respec_cd
# Convert ticks to approximate hours: ticks / 20 / 3600 = ticks / 72000
# Use two-step division to avoid overflow
scoreboard players set #72000 adv.temp 72000
scoreboard players operation #remain adv.temp /= #72000 adv.temp

tellraw @s [{text:"✦ ",color:"gold"},{text:"Respec is on cooldown! ",color:"red"},{score:{name:"#remain",objective:"adv.temp"},color:"gold"},{text:" hours remaining.",color:"red"}]
