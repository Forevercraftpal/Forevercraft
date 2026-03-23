# Gatekeeper — Enter Phase 3: The Whirlwind
# Spawn portal walls, clear dimension effects

# Clear dimension effects
effect clear @a[tag=ec.rd_participant] jump_boost
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s fire_resistance

# Kill phase 2 portals
kill @e[tag=ec.rd_gk_portal]

# Spawn portal wall entities (4 walls dividing arena into quadrants)
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~8 ~0 ~0 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~-8 ~0 ~0 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~0 ~0 ~8 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~0 ~0 ~-8 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~4 ~0 ~4 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~-4 ~0 ~4 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~4 ~0 ~-4 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~-4 ~0 ~-4 {Tags:["ec.rd_gk_wall","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"THE GATE CLOSES. THERE IS NO ESCAPE FROM THE WHIRLWIND.\"","color":"dark_red","bold":true}]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~1 ~ 5 3 5 1 80
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.wither.spawn hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
