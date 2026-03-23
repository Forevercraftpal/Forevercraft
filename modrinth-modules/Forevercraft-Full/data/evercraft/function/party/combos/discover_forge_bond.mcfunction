# Forge Bond — First-time discovery notification (bit 6 = value 64)

scoreboard players operation #disc ec.temp = @s ec.pc_unlocked
scoreboard players operation #disc ec.temp /= #bit6 ec.const
scoreboard players operation #disc ec.temp %= #bit1 ec.const
execute if score #disc ec.temp matches 1 run return 0

# Mark discovered
scoreboard players add @s ec.pc_unlocked 64

# Announce
tellraw @s [{text:"",color:"gold"},{text:"COMBO UNLOCKED: ",bold:true},{text:"Forge Bond",color:"dark_red"},{text:"\nUse a smithing table as Blacksmith (15+) — both you and a nearby Dexterity ally gain bonus XP!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
