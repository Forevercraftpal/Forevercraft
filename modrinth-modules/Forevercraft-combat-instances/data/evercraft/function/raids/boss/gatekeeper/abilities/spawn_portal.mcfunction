# Gatekeeper — Spawn Portal (Phase 1)
# Spawns a portal vortex at a random player's position, pulls nearby players

# Cap at 3 portals
execute store result score #rd_temp ec.var if entity @e[tag=ec.rd_gk_portal]
execute if score #rd_temp ec.var matches 3.. run return 0

# Spawn portal at random participant position
execute as @a[tag=ec.rd_participant,limit=1,sort=random] at @s run summon armor_stand ~ ~ ~ {Tags:["ec.rd_gk_portal","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:{text:"Ender Vortex",color:"dark_purple"},CustomNameVisible:1b}

# Warning
tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"A portal vortex opens!","color":"dark_purple","italic":true}]

# VFX
execute as @e[tag=ec.rd_gk_portal,limit=1,sort=nearest] at @s run particle minecraft:portal ~ ~0.5 ~ 0.5 0.5 0.5 1 15
execute as @e[tag=ec.rd_gk_portal,limit=1,sort=nearest] at @s run playsound minecraft:block.end_portal.spawn hostile @a[tag=ec.rd_participant,distance=..15] ~ ~ ~ 0.6 1.2
