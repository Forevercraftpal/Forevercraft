# Tomb Revive — Complete Revival
# @s = grave marker with ec.tomb_reviving tag, positioned at grave
# ec.tomb_reviver tag on the healer player

# === FIND OWNER BY UUID ===
scoreboard players operation #tomb_g_uuid0 ec.temp = @s ec.tomb_uuid0
scoreboard players operation #tomb_g_uuid1 ec.temp = @s ec.tomb_uuid1
scoreboard players operation #tomb_g_uuid2 ec.temp = @s ec.tomb_uuid2
scoreboard players operation #tomb_g_uuid3 ec.temp = @s ec.tomb_uuid3

scoreboard players set #revive_owner_found ec.temp 0
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run scoreboard players set #revive_owner_found ec.temp 1

# Owner went offline during channel — cancel, no penalty
execute if score #revive_owner_found ec.temp matches 0 run function evercraft:tomb/revive/cancel_channel
execute if score #revive_owner_found ec.temp matches 0 run return 0

# === TELEPORT OWNER TO GRAVE ===
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run tp @s ~ ~ ~

# === RESTORE INVENTORY + EQUIPMENT ===
tag @s add ec.tomb_collecting
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run function evercraft:tomb/collect_inventory

# === RESTORE 50% XP ===
execute store result score #tomb_xp_give ec.temp run data get entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.XP
scoreboard players operation #tomb_xp_give ec.temp /= #2 ec.const
execute if score #tomb_xp_give ec.temp matches 1.. as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run function evercraft:tomb/give_xp

# === SYNC MASTERY TRACKER ON OWNER ===
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run execute store result score @s wm.prev_xp run experience query @s levels

# === HEALER CLEANUP + LOCKOUT ===
execute as @a[tag=ec.tomb_reviver] run effect clear @s minecraft:slowness
execute as @a[tag=ec.tomb_reviver] run effect clear @s minecraft:blindness
execute as @a[tag=ec.tomb_reviver] run scoreboard players set @s ec.hl_locked 15
execute as @a[tag=ec.tomb_reviver] run scoreboard players set @s ec.hl_revive 0
execute as @a[tag=ec.tomb_reviver] run scoreboard players set @s ec.hl_revive_id 0

# === PARTICLE BURST ===
particle minecraft:sculk_soul ~ ~0.5 ~ 0.5 0.6 0.5 0.04 30
particle minecraft:end_rod ~ ~1.0 ~ 0.3 0.5 0.3 0.02 20
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.4 0.5 0.4 0.03 15
particle minecraft:totem_of_undying ~ ~1.0 ~ 0.3 0.5 0.3 0.1 40

# === SOUNDS ===
playsound minecraft:block.beacon.power_select ambient @a[distance=..32] ~ ~ ~ 0.8 1.0
playsound minecraft:entity.player.levelup ambient @a[distance=..32] ~ ~ ~ 0.6 1.2
playsound minecraft:block.amethyst_block.chime ambient @a[distance=..16] ~ ~ ~ 1.0 0.8

# === MESSAGES ===
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"gold"},{"text":"Your soul has been revived by a healer! You have been returned to where you fell.","color":"gold"},{"text":"\n"}]
execute as @a[tag=ec.tomb_reviver] run tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"gold"},{"text":"Revival complete! ","color":"gold"},{"text":"Healing locked for 15s.","color":"gray"},{"text":"\n"}]

# === CLEANUP GRAVE ENTITIES ===
execute store result score #tomb_cleanup_id ec.temp run scoreboard players get @s ec.tomb_id
tag @s remove ec.tomb_collecting
tag @s remove ec.tomb_reviving
function evercraft:tomb/cleanup_entities
