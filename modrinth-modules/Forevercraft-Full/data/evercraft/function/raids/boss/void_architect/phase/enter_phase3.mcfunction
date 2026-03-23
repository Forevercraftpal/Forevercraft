# Void Architect — Enter Phase 3: The Mirror
# Spawn mirror entity that copies a player's gear visual

# Kill remaining crystals and wells
kill @e[tag=ec.rd_va_crystal]
kill @e[tag=ec.rd_well]
kill @e[tag=ec.rd_bubble]

# Spawn mirror zombie (player-like appearance with gear)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon zombie ~3 ~ ~0 {Tags:["ec.rd_mirror","ec.rd_minion"],NoAI:0b,Silent:1b,PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:netherite_sword"},head:{id:"minecraft:netherite_helmet"},chest:{id:"minecraft:netherite_chestplate"},legs:{id:"minecraft:netherite_leggings"},feet:{id:"minecraft:netherite_boots"}},CustomName:{text:"Your Reflection",color:"dark_purple",italic:true},CustomNameVisible:1b}

# Give mirror significant stats
execute as @e[tag=ec.rd_mirror,limit=1] run attribute @s scale base set 1.0
execute as @e[tag=ec.rd_mirror,limit=1] run attribute @s max_health base set 200
execute as @e[tag=ec.rd_mirror,limit=1] run effect give @s instant_health 1 10 true
execute as @e[tag=ec.rd_mirror,limit=1] run attribute @s attack_damage modifier add evercraft:raid_boss/mirror 8.0 add_value
execute as @e[tag=ec.rd_mirror,limit=1] run attribute @s armor modifier add evercraft:raid_boss/mirror 10 add_value
execute as @e[tag=ec.rd_mirror,limit=1] run effect give @s fire_resistance infinite 0 true

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"FACE YOURSELF. YOUR REFLECTION KNOWS YOUR EVERY WEAKNESS.\"","color":"dark_red","bold":true}]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.enderman.scream hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5
