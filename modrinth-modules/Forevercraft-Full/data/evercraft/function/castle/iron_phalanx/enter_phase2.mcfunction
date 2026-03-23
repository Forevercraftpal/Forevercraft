# The Iron Phalanx — Enter Phase 2: The Testudo
# Transition at 66% HP (396)

scoreboard players set #ic_phalanx_phase ec.var 2

# Reset cooldowns for phase 2
scoreboard players set #ic_phalanx_cd ec.var 60
scoreboard players set #ic_phalanx_bearer_cd ec.var 0
scoreboard players set #ic_phalanx_charge_cd ec.var 400

# Announce phase change
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"The Iron Phalanx",color:"white",bold:true},{text:" forms the Testudo!",color:"gray"}]
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run playsound minecraft:entity.warden.roar master @a[distance=..30] ~ ~ ~ 0.5 1.2
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run particle dust{color:[0.6,0.6,0.6],scale:2.0} ~ ~1 ~ 2 1 2 0.05 30

# Brief invulnerability during transition (3 seconds)
execute as @e[tag=ic.iron_phalanx,limit=1] run effect give @s resistance 3 4 true
