# Voidpiercer — Rift Bolt (Right-click, 12s CD = 240 ticks)
# Fire a void bolt: creates a rift at target location
# Rift pulls + damages enemies for 3s, then collapses for 8 burst damage
# Spirit tier: 6-block radius (normal: 4-block)

# Set cooldown
scoreboard players set @s ec.sp_cd1 240

# Kill any existing owned rift markers from this weapon
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute as @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Place rift at nearest hostile within 30 blocks, or 10 blocks forward if none
execute at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_voidpiercer"],PersistenceRequired:true}
execute if entity @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..30,limit=1,sort=nearest] run kill @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer,scores={ec.sp_owner=0}]
execute if entity @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..30,limit=1,sort=nearest] at @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..30,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_voidpiercer"],PersistenceRequired:true}

# Set rift timer and owner: 60 ticks (3 seconds)
scoreboard players set @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer,scores={ec.sp_owner=0}] ec.sp_timer 60
scoreboard players operation @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer,scores={ec.sp_owner=0}] ec.sp_owner = @s ec.sp_uid

# Tag player as having active rift
tag @s add ec.sp_rift_active

# VFX — bolt trail from player to rift
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.0 0.5
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 1.4
execute as @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle portal ~ ~0.5 ~ 2.0 1.0 2.0 0.5 60
execute as @e[tag=ec.sp_rift,tag=ec.sp_voidpiercer] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle reverse_portal ~ ~1 ~ 1.0 0.5 1.0 1.0 30
particle enchant ~ ~1 ~ 0.3 0.5 0.3 1.0 15

title @s actionbar [{"text":"RIFT BOLT!","color":"dark_purple","bold":true}]
