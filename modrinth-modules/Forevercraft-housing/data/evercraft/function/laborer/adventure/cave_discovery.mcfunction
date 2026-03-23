# Adventure: Cave Discovery (Miner/Prospector)
execute as @a[distance=..64] run tellraw @s [{"text":"","color":"gray"},{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"I found a hidden cave system deep","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"beneath the hills... the walls glittered","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"with ore I've never seen before.\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"Bonus emeralds found!","color":"green"}]
# Reward: bonus emeralds
give @a[tag=ec.lb_owner,limit=1] minecraft:emerald 8
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
