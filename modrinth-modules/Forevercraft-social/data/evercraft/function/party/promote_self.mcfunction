# Promote this member to party leader (leader disconnected > 5 min)
# Run as the member being promoted

scoreboard players set @s ec.party_role 1
scoreboard players set @s ec.party_ldr_dc 0

# Announce to party
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id
function evercraft:party/announce_promote with storage evercraft:party temp
