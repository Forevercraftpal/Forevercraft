# Infinite Castle — Spawn The Crimson Bulwark (Floor 25 Special Boss)
# Spirit Raid boss #13, Tank class artifact source
# Spawns as an additional boss alongside normal floor 25 mobs

# Spawn the Crimson Bulwark (placeholder: iron golem base)
# Will be replaced with custom model/entity in Plan 2/3
summon iron_golem ~ ~1 ~ {Tags:["ic.mob","ic.boss","ec.entity","ic.crimson_bulwark"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"The Crimson Bulwark",color:"dark_red",bold:true},CustomNameVisible:1b,Glowing:1b}

# Apply boss-tier stats (stronger than normal castle bosses)
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:max_health base set 500
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:attack_damage base set 20
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:knockback_resistance base set 0.8
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] run attribute @s minecraft:armor base set 16
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] run data merge entity @s {Fire:-1s}
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] run effect give @s fire_resistance infinite 0 true
# Sync health to max_health (two-step pattern — lesson 53)
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] store result storage evercraft:castle temp.max_hp float 1 run attribute @s max_health get
execute as @e[tag=ic.crimson_bulwark,tag=!ic.boss_setup,limit=1] run data modify entity @s Health set from storage evercraft:castle temp.max_hp
tag @e[tag=ic.crimson_bulwark] add ic.boss_setup

# Announce
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{text:"The Crimson Bulwark","color":"red","bold":true},{text:" emerges from the fortress walls!","color":"gray"}]
execute as @a[tag=ic.player] at @s run playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 1 0.3
