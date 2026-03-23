# Chef's Touch — Result: MASTERWORK (Quality 12+)
# +50% buff duration + bonus Artisan XP
tellraw @s [{text:"  ","color":"white"},{"text":"✦ MASTERWORK! ","color":"#FFD700","bold":true},{"text":"— +50% buff duration + bonus XP!","color":"gold"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 0.5 1.2
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.3 25

# Bonus Artisan XP (+4 extra)
scoreboard players set #cf_xp_amount ec.cf_temp 4
scoreboard players set #cf_xp_cat ec.cf_temp 1
function evercraft:craftforever/artisan/add_xp
