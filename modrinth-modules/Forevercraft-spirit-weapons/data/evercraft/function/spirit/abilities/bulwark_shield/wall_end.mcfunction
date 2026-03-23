# Bulwark Shield — Wall End (Explosion based on absorbed damage)
# Run as player at player when wall timer expires

# Remove wall tag
tag @s remove ec.sp_wall_active

# Remove immobility + tank effects
effect clear @s slowness
effect clear @s resistance

# Re-apply passive Resistance I briefly
effect give @s resistance 2 0 true

# === CALCULATE EXPLOSION DAMAGE ===
# Damage = wall_absorb x 2
scoreboard players operation @s ec.sp_wall_absorb *= #2 ec.const

# Cap at 100 max damage
execute if score @s ec.sp_wall_absorb matches 101.. run scoreboard players set @s ec.sp_wall_absorb 100

# Apply explosion damage to all mobs within 6 blocks
# Since we can't dynamically set damage, use tiers
execute if score @s ec.sp_wall_absorb matches 1..10 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 10 minecraft:explosion by @p[sort=nearest,limit=1]
execute if score @s ec.sp_wall_absorb matches 11..25 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 25 minecraft:explosion by @p[sort=nearest,limit=1]
execute if score @s ec.sp_wall_absorb matches 26..50 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 50 minecraft:explosion by @p[sort=nearest,limit=1]
execute if score @s ec.sp_wall_absorb matches 51..75 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 75 minecraft:explosion by @p[sort=nearest,limit=1]
execute if score @s ec.sp_wall_absorb matches 76.. run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 100 minecraft:explosion by @p[sort=nearest,limit=1]

# Remove taunt tags from all mobs
tag @e[tag=ec.sp_taunted] remove ec.sp_taunted

# === VFX — Massive shockwave explosion ===
particle explosion ~ ~1 ~ 3.0 1.0 3.0 0.1 10
particle dust{color:[0.5,0.5,0.8],scale:3.0} ~ ~1 ~ 4.0 2.0 4.0 0.1 50
particle block_crumble{block_state:"minecraft:stone"} ~ ~0.3 ~ 4.0 0.3 4.0 0.15 40
particle poof ~ ~1 ~ 3.0 1.0 3.0 0.08 20
particle sonic_boom ~ ~1 ~ 0 0 0 0 1

# === SFX ===
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 0.8 0.8
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.5 0.6

title @s actionbar [{"text":"Wall Released: ","color":"blue"},{"score":{"name":"@s","objective":"ec.sp_wall_absorb"},"color":"red","bold":true},{"text":" damage!","color":"blue"}]

# Reset absorb counter
scoreboard players set @s ec.sp_wall_absorb 0
