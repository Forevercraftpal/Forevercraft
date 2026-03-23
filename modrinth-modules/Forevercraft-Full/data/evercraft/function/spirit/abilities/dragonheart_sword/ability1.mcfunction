# Wyrmcleaver — Dragon's Aegis (Right-click, 12s CD = 240 ticks)
# Fire-themed protection zone: 6-block radius for 8 seconds (160 ticks)
# Spirit tier: 8-block radius for 12 seconds (240 ticks)
# Allies: Resistance II + Fire Resistance
# Enemies: Slowness II + ignite 4 seconds

# Set cooldown
scoreboard players set @s ec.sp_cd1 240

# Kill any existing aegis marker
kill @e[tag=ec.sp_aegis,sort=nearest,limit=1,distance=..20]

# Summon aegis marker at player position
summon marker ~ ~ ~ {Tags:["ec.sp_aegis"],PersistenceRequired:true}

# Tag player as aegis active
tag @s add ec.sp_aegis_active

# Set timer based on tier
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 240
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 160

# === VFX — Draconic fire eruption ===
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.8 1.2
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1.0 0.6
playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 0.7 0.8
particle flame ~ ~0.5 ~ 4.0 0.5 4.0 0.08 60
particle dust{color:[1.0,0.4,0.0],scale:2.0} ~ ~0.3 ~ 3.0 0.2 3.0 0.01 40
particle lava ~ ~0.5 ~ 3.0 0.3 3.0 0.05 15

title @s actionbar [{"text":"DRAGON'S AEGIS!","color":"gold","bold":true}]
