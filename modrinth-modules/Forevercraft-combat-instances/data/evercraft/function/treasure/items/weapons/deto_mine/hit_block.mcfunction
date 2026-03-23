scoreboard players set #ec.hit ec.ray_line 1

tag @s remove ec.deto_mine

execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ec.entity","ec.deto_mine"]}

scoreboard players set @e[type=armor_stand,tag=ec.deto_mine,distance=..1.8,sort=nearest] ec.self_kill 100