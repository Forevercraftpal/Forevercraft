# Aurora Bloom — Try Start
# Checks cooldown before starting (72 hours = 5,184,000 ticks)

# Check cooldown
execute store result score #we_now ec.temp run time query gametime
scoreboard players operation #we_cd_check ec.temp = #we_now ec.temp
scoreboard players operation #we_cd_check ec.temp -= #we_aurora_cd ec.var
# If cooldown is set and hasn't passed, exit
execute if score #we_aurora_cd ec.var matches 1.. if score #we_cd_check ec.temp matches ..-1 run return 0

# Cooldown passed — start event
function evercraft:world_events/aurora_bloom/start
