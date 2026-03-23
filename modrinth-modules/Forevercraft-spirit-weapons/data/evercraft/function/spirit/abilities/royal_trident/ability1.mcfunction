# Depthsworn — Ability 1: Aegis Wall (Right-click, 12s CD)
# Plant shield creating a protection zone for 8 seconds (12s at spirit tier)

# Set cooldown (240 ticks = 12s)
scoreboard players set @s ec.sp_cd1 240

# Determine duration: normal 160 ticks (8s), spirit tier 240 ticks (12s)
scoreboard players set @s ec.sp_aegis_active 160
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_aegis_active 240

# Kill any existing owned aegis markers
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute as @e[tag=ec.sp_aegis_marker] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Spawn aegis marker at player position
summon marker ~ ~ ~ {Tags:["ec.sp_aegis_marker","ec.entity"]}
scoreboard players operation @e[tag=ec.sp_aegis_marker,limit=1,sort=nearest] ec.sp_owner = @s ec.sp_uid

# VFX + SFX
playsound minecraft:entity.evoker_fangs.attack master @a[distance=..20] ~ ~ ~ 0.8 1.2
playsound minecraft:block.anvil.place master @a[distance=..20] ~ ~ ~ 0.3 1.5
particle dust{color:[0.7,0.7,0.8],scale:1.5} ~ ~0.5 ~ 3 0.1 3 0.05 40
particle ash ~ ~1 ~ 3 1 3 0.05 20

# Feedback
tellraw @s [{"text":"Aegis Wall","color":"white","bold":true},{"text":" planted!","color":"gray"}]
