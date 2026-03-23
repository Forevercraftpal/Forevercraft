# The Iron Phalanx — Spawn Shield Bearers (Phase 1)
# Summons 2 Shield Bearers (max 6 total), 40 HP each

# Check max bearer count
execute store result score #ic_phalanx_bearers ec.var if entity @e[tag=ic.phalanx_bearer]
execute if score #ic_phalanx_bearers ec.var matches 6.. run return 0

# Spawn 2 bearers near the boss
execute as @e[tag=ic.iron_phalanx,limit=1] at @s positioned ~-2 ~ ~1 run summon zombie ~ ~ ~ {Tags:["ic.mob","ec.entity","ic.phalanx_bearer"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"Shield Bearer",color:"gray"},CanPickUpLoot:0b}
execute as @e[tag=ic.iron_phalanx,limit=1] at @s positioned ~2 ~ ~1 run summon zombie ~ ~ ~ {Tags:["ic.mob","ec.entity","ic.phalanx_bearer"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"Shield Bearer",color:"gray"},CanPickUpLoot:0b}

# Equip bearers with iron armor + shield
execute as @e[tag=ic.phalanx_bearer,tag=!ic.bearer_setup] run data merge entity @s {equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},offhand:{id:"minecraft:shield",count:1},mainhand:{id:"minecraft:iron_sword",count:1}}}

# Set bearer stats (40 HP, moderate damage)
execute as @e[tag=ic.phalanx_bearer,tag=!ic.bearer_setup] run attribute @s minecraft:max_health base set 40
execute as @e[tag=ic.phalanx_bearer,tag=!ic.bearer_setup] run attribute @s minecraft:attack_damage base set 8
# Sync health to max_health (two-step pattern — lesson 53)
execute as @e[tag=ic.phalanx_bearer,tag=!ic.bearer_setup] store result storage evercraft:castle temp.max_hp float 1 run attribute @s max_health get
execute as @e[tag=ic.phalanx_bearer,tag=!ic.bearer_setup] run data modify entity @s Health set from storage evercraft:castle temp.max_hp
execute as @e[tag=ic.phalanx_bearer,tag=!ic.bearer_setup] run tag @s add ic.bearer_setup

# VFX
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run playsound minecraft:entity.iron_golem.repair master @a[distance=..20] ~ ~ ~ 0.6 0.8
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run particle dust{color:[0.7,0.7,0.7],scale:1.5} ~ ~1 ~ 1 0.5 1 0.05 15
