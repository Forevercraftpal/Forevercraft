# Voidpiercer — On Hit Processing
# Handles: Void Mark (hit tracking), long-range bonus

advancement revoke @s only evercraft:spirit/voidpiercer/on_hit

# === VOID MARK — combo tracking ===
# Each hit stacks void mark; every 4th hit triggers bonus void damage
scoreboard players add @s ec.sp_combo 1

# 4th hit: burst of void damage
execute if score @s ec.sp_combo matches 4.. run scoreboard players set @s ec.sp_combo 0
execute if score @s ec.sp_combo matches 0 at @s run damage @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] 4 minecraft:magic by @s
execute if score @s ec.sp_combo matches 0 at @s run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.5 10
execute if score @s ec.sp_combo matches 0 at @s run playsound minecraft:entity.enderman.hurt player @a ~ ~ ~ 0.6 1.8

# === KILL & PROGRESSION TRACKING ===
scoreboard players add @s ec.sp_kills 1
scoreboard players add @s ec.sp_range_kills 1
# Track enderman kills specifically
execute on target if entity @s[type=minecraft:enderman] run scoreboard players add @a[tag=ec.sp_active,distance=..10,limit=1,sort=nearest] ec.sp_enderman_kills 1

# Snipe boss tracking: if target is a raid boss and player is 50+ blocks away, flag it
# Tag self for multiplayer-safe distance check
tag @s add ec.sp_checking_snipe
execute on target if entity @s[tag=ec.rd_boss] at @s if entity @a[tag=ec.sp_checking_snipe,distance=50..] run scoreboard players set @a[tag=ec.sp_checking_snipe,limit=1] ec.sp_snipe_flag 1
tag @s remove ec.sp_checking_snipe

# Rapid snipe tracking: 3 range kills within 100 ticks (5 seconds)
# Reset window timer on each kill, increment rapid kill counter
scoreboard players set @s ec.sp_rapid_timer 100
scoreboard players add @s ec.sp_rapid_count 1
execute if score @s ec.sp_rapid_count matches 3.. run scoreboard players set @s ec.sp_rapid_snipe 1
execute if score @s ec.sp_rapid_count matches 3.. run scoreboard players set @s ec.sp_rapid_count 0

function evercraft:spirit/progression/track_on_hit

# === SPIRIT ABILITY TRIGGER (on crossbow hit) ===
# Sneak+Fire = Ability 2 (Phase Shot)
execute if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches ..0 at @s run function evercraft:spirit/abilities/voidpiercer/ability2
# Normal Fire = Ability 1 (Rift Bolt)
execute unless predicate evercraft:is_sneaking if score @s ec.sp_cd1 matches ..0 at @s run function evercraft:spirit/abilities/voidpiercer/ability1
