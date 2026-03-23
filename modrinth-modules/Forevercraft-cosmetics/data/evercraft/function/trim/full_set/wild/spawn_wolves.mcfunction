# Wild Trim Full Set - Spawn Wolf Pack
# Summons 3 invulnerable wolves (pale, black, rusty) that fight for the player
# Kills existing wolves first to prevent stacking

# Reset trigger
scoreboard players set @s wild_wolves 0

# Kill any existing wild guardian wolves near the player
execute at @s run kill @e[type=wolf,tag=wild_guardian,distance=..128]

# Spawn 3 wolves at player position
summon wolf ~ ~ ~ {variant:"minecraft:pale",Invulnerable:1b,PersistenceRequired:1b,Tags:["wild_guardian","wild_guardian_new"],CustomName:{text:"Wild Guardian",color:"white",italic:false},DeathLootTable:"minecraft:empty"}
summon wolf ~1.5 ~ ~1 {variant:"minecraft:black",Invulnerable:1b,PersistenceRequired:1b,Tags:["wild_guardian","wild_guardian_new"],CustomName:{text:"Wild Guardian",color:"dark_gray",italic:false},DeathLootTable:"minecraft:empty"}
summon wolf ~-1.5 ~ ~1 {variant:"minecraft:rusty",Invulnerable:1b,PersistenceRequired:1b,Tags:["wild_guardian","wild_guardian_new"],CustomName:{text:"Wild Guardian",color:"red",italic:false},DeathLootTable:"minecraft:empty"}

# Tame wolves to the summoning player
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run data modify entity @s owner set from entity @p[tag=full_set_wild] UUID

# Apply buffs — high HP, strong, fast, resistant
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run attribute @s minecraft:max_health base set 100
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run effect give @s instant_health 1 10 true
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run data modify entity @s Health set value 100.0f
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run effect give @s strength infinite 1 false
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run effect give @s speed infinite 1 false
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run effect give @s resistance infinite 3 false
execute as @e[type=wolf,tag=wild_guardian_new,distance=..5] run effect give @s fire_resistance infinite 0 false

# Remove setup tag
tag @e[type=wolf,tag=wild_guardian_new] remove wild_guardian_new

# Reset wolf age timer
scoreboard players set @e[type=wolf,tag=wild_guardian,distance=..5] wild_wolf_age 0

# Effects
particle minecraft:poof ~ ~0.5 ~ 1 0.5 1 0.1 20
playsound minecraft:entity.wolf_puglin.ambient player @a ~ ~ ~ 1 0.8
tellraw @s [{"text":"Your wolf pack has been summoned!","color":"green"}]
