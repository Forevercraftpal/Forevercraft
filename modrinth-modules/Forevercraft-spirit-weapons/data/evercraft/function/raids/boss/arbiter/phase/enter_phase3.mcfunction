# Arbiter — Enter Phase 3: Final Verdict
# Boss becomes stationary, spawns tornado, calm/storm cycle

# Reset cooldowns
scoreboard players set #rd_arb_blast_cd ec.var 0
scoreboard players set #rd_arb_calm ec.var 0

# Teleport boss to center
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @e[type=marker,tag=rd.center,limit=1] run tp @s ~ ~2 ~

# Spawn tornado entity
execute at @e[type=marker,tag=rd.center,limit=1] run summon armor_stand ~5 ~0 ~5 {Tags:["ec.rd_arb_tornado","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:{text:"Tornado",color:"aqua"},CustomNameVisible:1b}

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"THE VERDICT IS DEATH. THE WINDS WILL CARRY OUT THE SENTENCE.\"","color":"red","bold":true}]

# VFX — storm eruption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:cloud ~ ~1 ~ 5 3 5 0.3 80
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
