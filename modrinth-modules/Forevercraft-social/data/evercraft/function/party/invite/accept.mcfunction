# Accept Party Invite
# Run as the accepting player
# Trigger value = 10 + party_id they're accepting

# Extract party ID from trigger (value - 10) into temp — do NOT set ec.party_id yet
# (Setting it before validation causes ghost-party bug if the party disbanded)
scoreboard players operation #inv_pid ec.temp = @s ec.party
scoreboard players remove #inv_pid ec.temp 10

# Store to storage for macro validation
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get #inv_pid ec.temp

# Validate party exists and has room, then join
function evercraft:party/invite/validate_accept with storage evercraft:party temp
