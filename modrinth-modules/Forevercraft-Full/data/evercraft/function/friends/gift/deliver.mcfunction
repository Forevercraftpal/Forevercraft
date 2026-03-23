# Friend Gift — Deliver gift crate to online recipient
# @s = recipient player, #fr_gift_tier ec.temp = crate tier (1-6)

scoreboard players set #fr_gift_delivered ec.temp 1

# Give crate based on tier
execute if score #fr_gift_tier ec.temp matches 1 run loot give @s loot evercraft:achievements/crates/common
execute if score #fr_gift_tier ec.temp matches 2 run loot give @s loot evercraft:achievements/crates/uncommon
execute if score #fr_gift_tier ec.temp matches 3 run loot give @s loot evercraft:achievements/crates/rare
execute if score #fr_gift_tier ec.temp matches 4 run loot give @s loot evercraft:achievements/crates/ornate
execute if score #fr_gift_tier ec.temp matches 5 run loot give @s loot evercraft:achievements/crates/exquisite
execute if score #fr_gift_tier ec.temp matches 6 run loot give @s loot evercraft:achievements/crates/mythical

# Get tier name for message
function evercraft:friends/gift/get_tier_name

# Notify recipient
function evercraft:friends/gift/notify_recipient with storage evercraft:friends temp
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5

# Grant heart to receiver for sender friend
# #fr_self_uuid3 ec.temp = sender's UUID3 (from send.mcfunction context)
execute store result storage evercraft:friends temp.gift_sender_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
function evercraft:friends/gift/grant_receiver_heart
