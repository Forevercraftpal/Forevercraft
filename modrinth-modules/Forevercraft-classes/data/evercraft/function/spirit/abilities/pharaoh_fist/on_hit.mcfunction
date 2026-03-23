# Pharaoh's Fist — On Hit Processing
# Handles: hit combo tracking, Sandstorm Flurry at 10 hits, chrono boost 2x damage

advancement revoke @s only evercraft:spirit/pharaoh_fist/on_hit

# === HIT COMBO TRACKING ===
scoreboard players add @s ec.sp_hit_combo 1

# === CHRONO BOOST: 2x damage during freeze ===
# If chrono_boost is active, deal bonus damage to the target (find by HurtTime)
execute if entity @s[tag=ec.sp_chrono_boost] run damage @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] 6 minecraft:player_attack by @s
execute if entity @s[tag=ec.sp_chrono_boost] run particle dust{color:[1.0,0.85,0.0],scale:1.5} ~ ~1 ~ 0.3 0.5 0.3 0.02 5
execute if entity @s[tag=ec.sp_chrono_boost] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 0.5 1.8

# === SANDSTORM FLURRY at 10 hits ===
# Use tag to gate the flurry effects so the "matches 0" check after reset doesn't false-trigger
execute if score @s ec.sp_hit_combo matches 10.. run tag @s add ec.sp_flurry_proc
execute if score @s ec.sp_hit_combo matches 10.. run scoreboard players set @s ec.sp_hit_combo 0

# Sandstorm Flurry: AoE damage + sand particles
execute if entity @s[tag=ec.sp_flurry_proc] run execute as @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 8 minecraft:player_attack by @p[sort=nearest,limit=1]
execute if entity @s[tag=ec.sp_flurry_proc] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.0 0.6
execute if entity @s[tag=ec.sp_flurry_proc] run playsound minecraft:item.trident.thunder player @a ~ ~ ~ 0.5 2.0
execute if entity @s[tag=ec.sp_flurry_proc] run particle dust{color:[0.85,0.7,0.3],scale:1.5} ~ ~1 ~ 2.0 1.0 2.0 0.05 25
execute if entity @s[tag=ec.sp_flurry_proc] run particle crit ~ ~1 ~ 2.0 1.0 2.0 0.3 15
execute if entity @s[tag=ec.sp_flurry_proc] run title @s actionbar [{"text":"Sandstorm Flurry!","color":"yellow","bold":true}]
tag @s remove ec.sp_flurry_proc

# === KILL COMBO TRACKING (for golden glow passive) ===
scoreboard players add @s ec.sp_kill_combo 1

# === PROGRESSION TRACKING ===
scoreboard players add @s ec.sp_kills 1
scoreboard players add @s ec.sp_impact_hits 1
function evercraft:spirit/progression/track_on_hit
