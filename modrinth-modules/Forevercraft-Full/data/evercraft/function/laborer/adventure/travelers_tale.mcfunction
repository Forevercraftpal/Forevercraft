# Adventure: Traveler's Tale (Any) — Grants Artisan XP
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"I met a wandering sage on the trail.","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"They shared wisdom about the craft.\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"+500 Artisan XP!","color":"green"}]
scoreboard players add @a[tag=ec.lb_owner,limit=1] ec.cf_xp 500
execute as @a[tag=ec.lb_owner,limit=1] run function evercraft:craftforever/artisan/check_levelup
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
