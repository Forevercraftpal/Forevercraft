# Abyssal Tremor — Try Start
# Checks cooldown before starting (25 hours = 1,800,000 ticks)

# Check cooldown
execute store result score #we_now ec.temp run time query gametime
scoreboard players operation #we_cd_check ec.temp = #we_now ec.temp
scoreboard players operation #we_cd_check ec.temp -= #we_abyssal_cd ec.var
execute if score #we_abyssal_cd ec.var matches 1.. if score #we_cd_check ec.temp matches ..-1 run return 0

# Cooldown passed — start event
function evercraft:world_events/abyssal_tremor/start
