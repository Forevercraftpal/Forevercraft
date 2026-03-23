# Adventure: Master's Wisdom (Quality 13+ only) — Big XP bonus
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"A master artisan shared their secrets","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"with me. Their knowledge is priceless.\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"+500 Artisan XP + Ancient Knowledge!","color":"light_purple"}]
scoreboard players add @a[tag=ec.lb_owner,limit=1] ec.cf_xp 500
execute as @a[tag=ec.lb_owner,limit=1] run function evercraft:craftforever/artisan/check_levelup
give @a[tag=ec.lb_owner,limit=1] minecraft:echo_shard 3
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
