# Void Architect — Spawn Levitation Bubble
# Random position near center — touching gives 3 seconds of Levitation

execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~5 ~1 ~3 {Tags:["ec.rd_bubble","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:{text:"Levitation Bubble",color:"aqua"},CustomNameVisible:1b}

# VFX
execute as @e[tag=ec.rd_bubble,limit=1,sort=nearest] at @s run particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.02 5
