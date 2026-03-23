# Blitz — First-time discovery notification (bit 2 = value 4)

scoreboard players operation #disc ec.temp = @s ec.pc_unlocked
scoreboard players operation #disc ec.temp /= #bit2 ec.const
scoreboard players operation #disc ec.temp %= #bit1 ec.const
execute if score #disc ec.temp matches 1 run return 0

# Mark discovered
scoreboard players add @s ec.pc_unlocked 4

# Announce
tellraw @s [{text:"",color:"gold"},{text:"COMBO UNLOCKED: ",bold:true},{text:"Blitz",color:"yellow"},{text:"\nSprint as Agility (10+) — nearby Victorian allies gain Haste!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
