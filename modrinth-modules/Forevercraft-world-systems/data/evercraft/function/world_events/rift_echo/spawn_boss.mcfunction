# Rift Echo — Spawn Rift Warden Boss
# Executed as a random player, at their position
# Warden: 500 HP (default), tagged, glowing, persistent

# Summon temp marker for position finding
summon marker ~ ~ ~ {Tags:["RIFT.boss_temp"]}

# Spread to random surface position (40-80 blocks from player)
spreadplayers ~ ~ 30 80 false @e[type=marker,tag=RIFT.boss_temp,limit=1,sort=nearest]

# Summon the Rift Warden at the marker position
execute at @e[type=marker,tag=RIFT.boss_temp,limit=1,sort=nearest] run summon warden ~ ~ ~ {Tags:["RIFT.Mob","RIFT.Boss"],PersistenceRequired:1b,CustomName:{text:"Rift Warden",color:"dark_purple",bold:true}}

# Anger the warden at nearest player (prevents dig-down AI behavior)
# Immediate attempt (may be ignored during emergence animation)
execute as @e[tag=RIFT.Boss,limit=1] at @s run damage @s 1 minecraft:player_attack by @a[sort=nearest,limit=1,gamemode=!spectator]
# Schedule post-emergence anger (warden emergence lasts ~134 ticks / 6.7s)
schedule function evercraft:world_events/rift_echo/anger_boss 140t replace

# Apply Glowing effect to boss
execute as @e[tag=RIFT.Boss,limit=1] run effect give @s glowing infinite 0 true

# Announce boss coordinates
execute as @e[tag=RIFT.Boss,limit=1] store result score #boss_x ec.temp run data get entity @s Pos[0]
execute as @e[tag=RIFT.Boss,limit=1] store result score #boss_z ec.temp run data get entity @s Pos[2]
tellraw @a ""
tellraw @a [{text:"  "},{text:"The Rift Warden emerges at ",color:"light_purple"},{text:"X: ",color:"gray"},{score:{name:"#boss_x",objective:"ec.temp"},color:"gold"},{text:" Z: ",color:"gray"},{score:{name:"#boss_z",objective:"ec.temp"},color:"gold"}]
tellraw @a ""

# Impact effects
execute at @e[type=marker,tag=RIFT.boss_temp,limit=1,sort=nearest] run particle minecraft:reverse_portal ~ ~2 ~ 5 3 5 1.0 50
execute at @e[type=marker,tag=RIFT.boss_temp,limit=1,sort=nearest] run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1.0 0.5

# Kill temp marker
kill @e[type=marker,tag=RIFT.boss_temp]
