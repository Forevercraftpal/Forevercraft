# Adventure: Ancient Cache (Miner/Prospector)
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"Deep underground I found an ancient","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"cache of treasures, sealed for centuries.\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"Ancient treasures recovered!","color":"green"}]
give @a[tag=ec.lb_owner,limit=1] minecraft:diamond 4
give @a[tag=ec.lb_owner,limit=1] minecraft:golden_apple 2
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
