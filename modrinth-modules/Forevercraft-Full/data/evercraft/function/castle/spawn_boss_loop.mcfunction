# Infinite Castle — Boss Spawn Loop
# Spawns one boss per call, decrements #ic_boss_count, recurses

# Roll random boss type (1-11)
execute store result score #ic_boss_roll ec.var run random value 1..11

# Spawn boss entity at random offset from center
execute store result score #ic_bx ec.var run random value -5..5
execute store result score #ic_bz ec.var run random value -5..5

# Summon based on roll (simplified world bosses — strong mobs, no phases)
execute if score #ic_boss_roll ec.var matches 1 positioned ~3 ~1 ~0 run summon wither_skeleton ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"The Hollow King",color:"gray",bold:true},equipment:{mainhand:{id:"minecraft:netherite_sword"}}}
execute if score #ic_boss_roll ec.var matches 2 positioned ~-3 ~1 ~0 run summon zombie ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Verdant Warden",color:"green",bold:true},equipment:{mainhand:{id:"minecraft:netherite_axe"},head:{id:"minecraft:netherite_helmet"}}}
execute if score #ic_boss_roll ec.var matches 3 positioned ~0 ~1 ~3 run summon skeleton ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Stormforged",color:"yellow",bold:true},equipment:{mainhand:{id:"minecraft:bow"}}}
execute if score #ic_boss_roll ec.var matches 4 positioned ~0 ~1 ~-3 run summon drowned ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Tidecaller",color:"aqua",bold:true},equipment:{mainhand:{id:"minecraft:trident"}}}
execute if score #ic_boss_roll ec.var matches 5 positioned ~4 ~1 ~4 run summon ravager ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Earthshaker",color:"dark_green",bold:true}}
execute if score #ic_boss_roll ec.var matches 6 positioned ~-4 ~1 ~4 run summon phantom ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Nightmare",color:"dark_purple",bold:true}}
execute if score #ic_boss_roll ec.var matches 7 positioned ~4 ~1 ~-4 run summon blaze ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Infernal Titan",color:"red",bold:true}}
execute if score #ic_boss_roll ec.var matches 8 positioned ~-4 ~1 ~-4 run summon wither_skeleton ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Soul Warden",color:"dark_gray",bold:true},equipment:{mainhand:{id:"minecraft:stone_sword"}}}
execute if score #ic_boss_roll ec.var matches 9 positioned ~2 ~1 ~2 run summon hoglin ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,IsImmuneToZombification:1b,CustomName:{text:"Crimson Behemoth",color:"dark_red",bold:true}}
execute if score #ic_boss_roll ec.var matches 10 positioned ~-2 ~1 ~-2 run summon enderman ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Void Sovereign",color:"dark_blue",bold:true}}
execute if score #ic_boss_roll ec.var matches 11 positioned ~-2 ~1 ~2 run summon shulker ~ ~ ~ {Tags:["ic.mob","ic.boss"],PersistenceRequired:1b,Silent:1b,Glowing:1b,CustomName:{text:"Ender Architect",color:"light_purple",bold:true}}

# Give bosses massive base stats (300 HP, high damage, knockback resist)
execute as @e[tag=ic.boss,tag=!ic.boss_setup] run attribute @s minecraft:max_health base set 300
execute as @e[tag=ic.boss,tag=!ic.boss_setup] run attribute @s minecraft:attack_damage base set 15
execute as @e[tag=ic.boss,tag=!ic.boss_setup] run attribute @s minecraft:knockback_resistance modifier add ic_boss_kr 0.5 add_value
execute as @e[tag=ic.boss,tag=!ic.boss_setup] run attribute @s minecraft:armor modifier add ic_boss_arm 12.0 add_value
execute as @e[tag=ic.boss,tag=!ic.boss_setup] run effect give @s fire_resistance infinite 0 true

# Sync health to max_health (two-step pattern — lesson 53)
execute as @e[tag=ic.boss,tag=!ic.boss_setup] store result storage evercraft:castle temp.max_hp float 1 run attribute @s max_health get
execute as @e[tag=ic.boss,tag=!ic.boss_setup] run data modify entity @s Health set from storage evercraft:castle temp.max_hp

execute as @e[tag=ic.boss,tag=!ic.boss_setup] run tag @s add ic.boss_setup

# Decrement counter and recurse
scoreboard players remove #ic_boss_count ec.var 1
execute if score #ic_boss_count ec.var matches 1.. run function evercraft:castle/spawn_boss_loop
