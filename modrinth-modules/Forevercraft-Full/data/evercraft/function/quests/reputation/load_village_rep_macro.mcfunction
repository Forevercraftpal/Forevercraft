# ============================================================
# Load Village Rep Macro (internal)
# Called with {vid: village_id, uuid: player_uuid_part}
# ============================================================

# Try to load existing reputation data
$data modify storage eden:temp rep.data set from storage eden:database reputation.v$(vid).u$(uuid)

# Check if data exists (rep field will be present if initialized)
execute store result score #rep_exists quests.temp if data storage eden:temp rep.data.rep

# If data exists, load it into scoreboards
execute if score #rep_exists quests.temp matches 1.. store result score @s ec.village_rep run data get storage eden:temp rep.data.rep
execute if score #rep_exists quests.temp matches 1.. store result score @s ec.rep_rank run data get storage eden:temp rep.data.rank

# If no data exists, initialize to 0 (Stranger)
execute unless score #rep_exists quests.temp matches 1.. run scoreboard players set @s ec.village_rep 0
execute unless score #rep_exists quests.temp matches 1.. run scoreboard players set @s ec.rep_rank 0

# Clear temp
data remove storage eden:temp rep.data
