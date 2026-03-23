# Marked for Death — First-time discovery (bit 1 = value 1)
scoreboard players operation #disc ec.temp = @s ec.pc_unlocked
scoreboard players operation #disc ec.temp %= #2 adv.temp
execute if score #disc ec.temp matches 1.. run return 0

scoreboard players add @s ec.pc_unlocked 1
tellraw @s [{text:"",color:"gold"},{text:"COMBO UNLOCKED: ",bold:true},{text:"Marked for Death",color:"light_purple"},{text:"\nSneak near a mob as Stealth (10+) — Victorian allies deal +25% damage!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
