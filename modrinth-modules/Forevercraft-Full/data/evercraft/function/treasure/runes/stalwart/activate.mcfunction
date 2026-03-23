tag @s add ec.rune_activated

playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 0.5 0.1 1

particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.4 0.200 0.4 0.1 200 force @a

summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:0b,Tags:["ec.stalactite"]}

tp @e[type=armor_stand,tag=ec.stalactite,limit=1,distance=..1] @s 

data modify entity @e[type=minecraft:armor_stand,tag=ec.stalactite,limit=1,distance=..1] Rotation[1] set value 0.0F

execute at @e[type=armor_stand,tag=ec.stalactite,limit=1,distance=..1] run function evercraft:treasure/runes/stalwart/stalactite
kill @e[type=armor_stand,tag=ec.stalactite,limit=1,sort=nearest]

function evercraft:treasure/runes/stalwart/particles

advancement revoke @s only evercraft:treasure/runes/stalwart_glyph