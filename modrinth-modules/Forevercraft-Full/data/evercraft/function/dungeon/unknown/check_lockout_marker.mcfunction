# Unknown Dungeon — Check single lockout marker against the triggering player
# Run as: dg.unknown_looted marker entity
# The player who used the key is @a[tag=dg.checking_unknown,limit=1]

# Already found a match? Skip
execute if score #dg_unknown_locked ec.var matches 1 run return 0

# Extract marker's stored UUID
execute store result score #marker_uuid0 cf.temp run data get entity @s data.player_uuid[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s data.player_uuid[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s data.player_uuid[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s data.player_uuid[3]

# Extract player's UUID
execute as @a[tag=dg.checking_unknown,limit=1] store result score #player_uuid0 cf.temp run data get entity @s UUID[0]
execute as @a[tag=dg.checking_unknown,limit=1] store result score #player_uuid1 cf.temp run data get entity @s UUID[1]
execute as @a[tag=dg.checking_unknown,limit=1] store result score #player_uuid2 cf.temp run data get entity @s UUID[2]
execute as @a[tag=dg.checking_unknown,limit=1] store result score #player_uuid3 cf.temp run data get entity @s UUID[3]

# UUID mismatch → not this player's lockout, skip
execute unless score #marker_uuid0 cf.temp = #player_uuid0 cf.temp run return 0
execute unless score #marker_uuid1 cf.temp = #player_uuid1 cf.temp run return 0
execute unless score #marker_uuid2 cf.temp = #player_uuid2 cf.temp run return 0
execute unless score #marker_uuid3 cf.temp = #player_uuid3 cf.temp run return 0

# UUID match — check if still within 2-week window
execute store result score #dg_uk_looted_at ec.var run data get entity @s data.looted_at
execute store result score #dg_uk_now ec.var run time query gametime
scoreboard players operation #dg_uk_elapsed ec.var = #dg_uk_now ec.var
scoreboard players operation #dg_uk_elapsed ec.var -= #dg_uk_looted_at ec.var

# If elapsed < 1,008,000 ticks (2 weeks) → still locked out
execute if score #dg_uk_elapsed ec.var matches ..1007999 run scoreboard players set #dg_unknown_locked ec.var 1

# If expired → clean up the marker
execute if score #dg_uk_elapsed ec.var matches 1008000.. run kill @s
