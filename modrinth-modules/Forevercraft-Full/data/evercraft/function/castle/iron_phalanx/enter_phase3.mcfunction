# The Iron Phalanx — Enter Phase 3: The Last Centurion
# Transition at 33% HP (198). Kill all bearers, boss goes solo.

scoreboard players set #ic_phalanx_phase ec.var 3

# Kill all Shield Bearers with explosion VFX
execute as @e[tag=ic.phalanx_bearer] at @s run particle explosion ~ ~1 ~ 0.3 0.3 0.3 0.1 3
execute as @e[tag=ic.phalanx_bearer] at @s run playsound minecraft:entity.generic.explode master @a[distance=..20] ~ ~ ~ 0.5 1.2
kill @e[tag=ic.phalanx_bearer]

# Boss drops shield, dual-wields trident + sword
execute as @e[tag=ic.iron_phalanx,limit=1] run data merge entity @s {equipment:{offhand:{id:"minecraft:iron_sword",count:1}}}

# Lower armor to take 20% more damage (reduce from 14 to 8)
execute as @e[tag=ic.iron_phalanx,limit=1] run attribute @s minecraft:armor base set 8

# Reset cooldowns for phase 3
scoreboard players set #ic_phalanx_cd ec.var 0
scoreboard players set #ic_phalanx_charge_cd ec.var 80

# Announce phase change
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"The Iron Phalanx",color:"white",bold:true},{text:" sacrifices its formation — the Last Centurion rises!",color:"red"}]
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run playsound minecraft:entity.warden.sonic_boom master @a[distance=..30] ~ ~ ~ 0.6 0.8
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run particle dust{color:[1.0,0.3,0.3],scale:2.0} ~ ~1 ~ 3 1 3 0.05 40

# Brief invulnerability during transition
execute as @e[tag=ic.iron_phalanx,limit=1] run effect give @s resistance 3 4 true
