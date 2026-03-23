# Respec failed — on cooldown. Show remaining time.
# Run as/at the player

# Calculate remaining hours
scoreboard players operation #remain adv.temp = @s adv.respec_cd
scoreboard players set #72000 adv.temp 72000
scoreboard players operation #remain adv.temp /= #72000 adv.temp

tellraw @s [{text:"✦ ",color:"gold"},{text:"Respec is on cooldown! ",color:"red"},{score:{name:"#remain",objective:"adv.temp"},color:"gold"},{text:" hours remaining.",color:"red"}]
