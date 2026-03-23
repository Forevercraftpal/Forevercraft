# Field Medic — First-time discovery notification (bit 3 = value 8)

scoreboard players operation #disc ec.temp = @s ec.pc_unlocked
scoreboard players operation #disc ec.temp /= #bit3 ec.const
scoreboard players operation #disc ec.temp %= #bit1 ec.const
execute if score #disc ec.temp matches 1 run return 0

# Mark discovered
scoreboard players add @s ec.pc_unlocked 8

# Announce
tellraw @s [{text:"",color:"gold"},{text:"COMBO UNLOCKED: ",bold:true},{text:"Field Medic",color:"green"},{text:"\nEat golden food as Vitality (15+) — nearby Taskmaster allies are healed!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
