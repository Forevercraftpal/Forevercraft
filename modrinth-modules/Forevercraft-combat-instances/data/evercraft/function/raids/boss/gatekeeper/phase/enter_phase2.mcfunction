# Gatekeeper — Enter Phase 2: Dimensional Shift

# Reset cooldowns
scoreboard players set #rd_gk_combo ec.var 0
scoreboard players set #rd_gk_dash_cd ec.var 0
scoreboard players set #rd_gk_portal_cd ec.var 0
scoreboard players set #rd_gk_dim ec.var 0
scoreboard players set #rd_gk_dim_timer ec.var 0

# Kill any phase 1 portals
kill @e[tag=ec.rd_gk_portal]

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"You have seen one realm. Now face them all.\"","color":"green","italic":true}]

# VFX — dimensional rift
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:portal ~ ~1 ~ 3 2 3 1 50
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.enderman.teleport hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
