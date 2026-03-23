# Check if player has reached their structure crate limit based on Dream Rate
# Limit = (dr_level + floor(dr_level / 5) * 5) * 2
# DR 1→2, DR 5→20, DR 10→40, DR 15→60, DR 50+→unlimited

# Get integer DR level (floor of luck attribute)
execute store result score #dr_level cf.temp run attribute @s luck get 1

# DR 50+ = unlimited crates (no cap)
execute if score #dr_level cf.temp matches 50.. run return 0

# Calculate bonus: floor(dr_level / 5) * 5
scoreboard players set #5 cf.temp 5
scoreboard players operation #crate_limit cf.temp = #dr_level cf.temp
scoreboard players operation #crate_limit cf.temp /= #5 cf.temp
scoreboard players operation #crate_limit cf.temp *= #5 cf.temp

# Total limit = (base + bonus) * 2
scoreboard players operation #crate_limit cf.temp += #dr_level cf.temp
scoreboard players set #2 cf.temp 2
scoreboard players operation #crate_limit cf.temp *= #2 cf.temp

# If player has opened >= limit, set placed flag to block all position attempts
execute if score @s adv.stat_struct >= #crate_limit cf.temp run scoreboard players set #cf_placed cf.temp 1
execute if score #cf_placed cf.temp matches 1 run tellraw @s [{"text":"[Dreams] ","color":"dark_purple"},{"text":"Your mind has reached its limit of discovery... ","color":"gray","italic":true},{"text":"(","color":"red"},{"score":{"name":"@s","objective":"adv.stat_struct"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"#crate_limit","objective":"cf.temp"},"color":"red"},{"text":" opened)","color":"red"}]
execute if score #cf_placed cf.temp matches 1 at @s run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.5
