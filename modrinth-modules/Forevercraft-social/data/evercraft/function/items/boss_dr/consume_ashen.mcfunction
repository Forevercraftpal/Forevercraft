# Consume Cinder Heart — Permanently increases dream rate by +1
# Triggered by advancement: evercraft:items/boss_dr/consume_ashen

advancement revoke @s only evercraft:items/boss_dr/consume_ashen

# Block if already consumed
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:boss_dr_7 10
execute if score #has ec.temp matches 1 run tellraw @s [{text:"✦ ",color:"dark_gray"},{text:"This power has no further effect...",color:"gray",italic:true}]
execute if score #has ec.temp matches 1 run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.5
execute if score #has ec.temp matches 1 run return 0

# Apply permanent +1 luck modifier
attribute @s luck modifier add evercraft:boss_dr_7 1 add_value

# Effects
particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.05 50 force @s
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 30 force @s
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 0.8

tellraw @s [{text:"✦ ",color:"light_purple"},{text:"CINDER HEART CONSUMED",color:"dark_purple",bold:true},{text:" ✦",color:"light_purple"}]
tellraw @s [{text:"  Your dream rate has permanently increased by ",color:"gray"},{text:"+1",color:"aqua",bold:true},{text:"!",color:"gray"}]
