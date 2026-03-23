# Shield Wall — First-time discovery notification (bit 1 = value 2)

scoreboard players operation #disc ec.temp = @s ec.pc_unlocked
scoreboard players operation #disc ec.temp /= #bit1 ec.const
scoreboard players operation #disc ec.temp %= #bit1 ec.const
execute if score #disc ec.temp matches 1 run return 0

# Mark discovered
scoreboard players add @s ec.pc_unlocked 2

# Announce
tellraw @s [{text:"",color:"gold"},{text:"COMBO UNLOCKED: ",bold:true},{text:"Shield Wall",color:"blue"},{text:"\nBlock with a shield as Vitality (15+) — nearby Evasion allies get guaranteed dodge!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
