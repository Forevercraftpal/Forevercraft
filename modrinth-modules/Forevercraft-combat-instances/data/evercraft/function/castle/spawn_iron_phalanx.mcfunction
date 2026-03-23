# Infinite Castle — Spawn The Iron Phalanx (Floor 20 Special Boss)
# Spirit boss #14, Hoplite class artifact source
# Spawns as an additional boss alongside normal floor 20 mobs

# Spawn the Iron Phalanx (zombie base — armored shield commander)
summon zombie ~ ~1 ~ {Tags:["ic.mob","ic.boss","ec.entity","ic.iron_phalanx"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"The Iron Phalanx",color:"white",bold:true},CustomNameVisible:1b,Glowing:1b,CanPickUpLoot:0b}

# Apply boss-tier stats (600 HP, tough but not raid-level)
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:max_health base set 600
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:attack_damage base set 15
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:knockback_resistance base set 0.7
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:armor base set 14
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run data merge entity @s {Fire:-1s}
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run effect give @s fire_resistance infinite 0 true
# Sync health to max_health (two-step pattern — lesson 53)
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] store result storage evercraft:castle temp.max_hp float 1 run attribute @s max_health get
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run data modify entity @s Health set from storage evercraft:castle temp.max_hp

# Equip with iron armor + shield + trident
execute as @e[tag=ic.iron_phalanx,tag=!ic.boss_setup,limit=1] run data merge entity @s {equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},legs:{id:"minecraft:iron_leggings",count:1},feet:{id:"minecraft:iron_boots",count:1},mainhand:{id:"minecraft:trident",count:1},offhand:{id:"minecraft:shield",count:1}}}

# Initialize phase tracking
scoreboard players set #ic_phalanx_phase ec.var 1
scoreboard players set #ic_phalanx_cd ec.var 0
scoreboard players set #ic_phalanx_bearer_cd ec.var 0
scoreboard players set #ic_phalanx_charge_cd ec.var 0

tag @e[tag=ic.iron_phalanx] add ic.boss_setup

# Announce
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"The Iron Phalanx",color:"white",bold:true},{text:" marches from the armory!",color:"gray"}]
execute as @a[tag=ic.player] at @s run playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 1 0.3
