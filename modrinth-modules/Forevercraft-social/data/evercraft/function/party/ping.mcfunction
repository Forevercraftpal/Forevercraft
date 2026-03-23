# Party Ping — Place a particle beacon visible to party members
# Run as the pinging player, at their position

# Must be in a party
execute if score @s ec.party_id matches 0 run return 0

# Cooldown check (10 seconds)
execute if score @s ec.pc_ping_cd matches 1.. run return 0
scoreboard players set @s ec.pc_ping_cd 200

# Store party ID for macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Play sound + particles at the pinger's location
particle minecraft:end_rod ~ ~2 ~ 0.5 2 0.5 0.05 30 force @s

# Notify party members
function evercraft:party/ping_announce with storage evercraft:party temp

# Show beacon particles for party members at the ping location
# Spawn a temporary marker that emits particles for 60s
summon marker ~ ~ ~ {Tags:["ec.party_ping"],CustomName:{text:"ping"}}
execute as @e[type=marker,tag=ec.party_ping,limit=1,sort=nearest,distance=..2] run function evercraft:party/ping_setup
