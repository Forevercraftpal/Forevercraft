# Friend Gift — Send a daily gift to a friend
# @s = sender, ec.fr_gift trigger value = target friend's UUID3

# Get target UUID3 from trigger
scoreboard players operation #fr_gift_target ec.temp = @s ec.fr_gift

# Reset trigger
scoreboard players set @s ec.fr_gift 0
scoreboard players enable @s ec.fr_gift

# Validate: must have at least 1 coin
execute unless score @s ec.coins matches 1.. run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need at least 1 Forever Coin to send a gift!",color:"red"}]
execute unless score @s ec.coins matches 1.. run return 0

# Validate: 2-day cooldown (2 × 72000 = 144000 gametime ticks)
execute store result score #now ec.temp run time query gametime
scoreboard players operation #elapsed ec.temp = #now ec.temp
scoreboard players operation #elapsed ec.temp -= @s ec.gift_cd
execute if score @s ec.gift_cd matches 1.. if score #elapsed ec.temp matches ..143999 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You must wait before sending another gift! (2-day cooldown)",color:"red"}]
execute if score @s ec.gift_cd matches 1.. if score #elapsed ec.temp matches ..143999 run return 0

# Get self UUID3
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
execute store result storage evercraft:friends temp.gift_target_uuid3 int 1 run scoreboard players get #fr_gift_target ec.temp

# Check they're actually friends
# Set target_uuid3 in storage (check_existing macro expects self_uuid3 + target_uuid3)
# Set #fr_target_uuid3 score (check_existing_loop compares against it)
execute store result storage evercraft:friends temp.target_uuid3 int 1 run scoreboard players get #fr_gift_target ec.temp
scoreboard players operation #fr_target_uuid3 ec.temp = #fr_gift_target ec.temp
function evercraft:friends/invite/check_existing with storage evercraft:friends temp
execute unless score #fr_already ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"That player is not your friend!",color:"red"}]
execute unless score #fr_already ec.temp matches 1 run return 0

# Deduct 1 coin
scoreboard players remove @s ec.coins 1

# Read gift streak with this friend for loot bonus
function evercraft:friends/gift/read_streak with storage evercraft:friends temp

# Roll random rarity (1-100), adjusted by gift streak
execute store result score #fr_gift_roll ec.temp run random value 1..100

# Apply streak bonus and determine tier (streak lowers roll = better tiers)
function evercraft:friends/gift/apply_streak_bonus

# Store sender companion.id for gift message (selector-based name display)
execute store result storage evercraft:friends temp.sender_cid int 1 run scoreboard players get @s companion.id
execute store result storage evercraft:friends temp.gift_tier int 1 run scoreboard players get #fr_gift_tier ec.temp

# Try to find recipient online
scoreboard players set #fr_gift_delivered ec.temp 0
execute as @a store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a if score @s ec.temp_uuid3 = #fr_gift_target ec.temp run function evercraft:friends/gift/deliver

# If recipient offline, queue the gift
execute if score #fr_gift_delivered ec.temp matches 0 run function evercraft:friends/gift/queue_offline with storage evercraft:friends temp

# Grant heart to sender (gift counts as heart interaction)
function evercraft:friends/heart/load_friends_list with storage evercraft:friends temp
scoreboard players set #fr_check_uuid3 ec.temp 0
scoreboard players operation #fr_check_uuid3 ec.temp = #fr_gift_target ec.temp
# Find the friend entry and check daily flag
function evercraft:friends/gift/check_daily_heart

# Track gift streak (increment sender's, reset recipient's)
function evercraft:friends/gift/increment_streak with storage evercraft:friends temp

# Update 2-day gift cooldown timestamp
execute store result score @s ec.gift_cd run time query gametime

# Notify sender (show streak if > 0)
execute if score #fr_gift_streak ec.temp matches ..0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Gift sent! (-1 Forever Coin)",color:"green"}]
execute if score #fr_gift_streak ec.temp matches 1.. run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Gift sent! (-1 Forever Coin) ",color:"green"},{text:"[",color:"gray"},{text:"Streak: ",color:"gold"},{score:{name:"#fr_gift_streak",objective:"ec.temp"},color:"yellow"},{text:"]",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
