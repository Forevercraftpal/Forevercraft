# Tomb System — Grave Shatter (timer expired or cap enforcement)
# @s = grave data marker, positioned at grave
# Items drop as entities, 50% XP as orbs

# === PARTICLE BURST ===
particle minecraft:sculk_soul ~ ~0.5 ~ 0.8 0.8 0.8 0.05 40
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.6 0.6 0.6 0.03 20
particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 15

# === SOUNDS ===
function evercraft:tomb/sounds/shatter

# === DROP ITEMS ===
# Tag this marker for item drop processing
tag @s add ec.tomb_shattering
function evercraft:tomb/shatter_items

# === DROP 50% XP ===
execute store result score #tomb_xp ec.temp run data get entity @s data.XP
scoreboard players operation #tomb_xp ec.temp /= #2 ec.const
# Spawn XP orbs (approximate — scaled by level)
execute if score #tomb_xp ec.temp matches 1.. run function evercraft:tomb/shatter_xp

# === NOTIFY OWNER (if online) ===
# Store shattering marker's UUID to temps for player matching
scoreboard players operation #tomb_s_uuid0 ec.temp = @s ec.tomb_uuid0
scoreboard players operation #tomb_s_uuid1 ec.temp = @s ec.tomb_uuid1
scoreboard players operation #tomb_s_uuid2 ec.temp = @s ec.tomb_uuid2
scoreboard players operation #tomb_s_uuid3 ec.temp = @s ec.tomb_uuid3
execute as @a if score @s ec.tomb_uuid0 = #tomb_s_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_s_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_s_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_s_uuid3 ec.temp run tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"dark_red"},{"text":"Your soul has faded into the void...","color":"dark_red","italic":true},{"text":"\n"}]

# === CANCEL PENDING OFFER ===
execute if entity @s[tag=ec.tomb_pending] run function evercraft:tomb/companion/cancel

# === CANCEL ACTIVE REVIVE CHANNEL ===
execute if entity @s[tag=ec.tomb_reviving] run function evercraft:tomb/revive/cancel_channel

# === CLEANUP ===
execute store result score #tomb_cleanup_id ec.temp run scoreboard players get @s ec.tomb_id
tag @s remove ec.tomb_shattering
function evercraft:tomb/cleanup_entities
