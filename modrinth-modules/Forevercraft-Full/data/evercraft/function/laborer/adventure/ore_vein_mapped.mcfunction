# Adventure: Ore Vein Mapped (Miner)
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"I mapped out three rich ore veins","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"deep below the surface!\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"Bonus ore deposit found!","color":"green"}]
give @a[tag=ec.lb_owner,limit=1] minecraft:raw_iron 16
give @a[tag=ec.lb_owner,limit=1] minecraft:raw_gold 8
give @a[tag=ec.lb_owner,limit=1] minecraft:diamond 3
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
