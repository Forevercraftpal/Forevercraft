# Pack Tactics — First-time discovery notification
# Set bit 7 (value 128) in unlocked bitfield

# Check if already discovered (bit 7 = 128)
scoreboard players operation #disc ec.temp = @s ec.pc_unlocked
scoreboard players operation #disc ec.temp /= #bit7 ec.const
scoreboard players operation #disc ec.temp %= #bit1 ec.const
execute if score #disc ec.temp matches 1 run return 0

# Mark discovered
scoreboard players add @s ec.pc_unlocked 128

# Announce
tellraw @s [{text:"",color:"gold"},{text:"COMBO UNLOCKED: ",bold:true},{text:"Pack Tactics",color:"green"},{text:"\nWhen 2+ Beastmasters (Lv.15+) are nearby, all party pets gain boosted abilities.",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
