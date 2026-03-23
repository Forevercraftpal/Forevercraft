# Shared Fortunes — Mining + Gathering combo
# Trigger: Mining player procs bonus ore drop, or Gathering player procs bonus crop
# Effect: Each nearby party member with the OTHER resource tree (10+) has 20% chance for bonus
# Called inline from mining/gathering proc functions

# Run as the player who procced
execute unless score @s ec.party_id matches 1.. run return 0
execute if score @s ec.pc_fortune_cd matches 1.. run return 0

# Set cooldown (5s = 100 ticks)
scoreboard players set @s ec.pc_fortune_cd 100

# Store party ID
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Check which tree triggered and apply to complementary
execute if score @s adv.mining matches 10.. run function evercraft:party/combos/shared_fortunes_mine with storage evercraft:party temp
execute if score @s adv.gathering matches 10.. run function evercraft:party/combos/shared_fortunes_gather with storage evercraft:party temp

# Discovery check
function evercraft:party/combos/discover_shared_fortunes
