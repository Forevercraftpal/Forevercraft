# Adventure: Weather Warning (Fisher/Forager)
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"The sky had a strange color today.","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"Old sailors say that means a storm's coming.\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"Weather wisdom! +250 Artisan XP","color":"green"}]
scoreboard players add @a[tag=ec.lb_owner,limit=1] ec.cf_xp 250
execute as @a[tag=ec.lb_owner,limit=1] run function evercraft:craftforever/artisan/check_levelup
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
