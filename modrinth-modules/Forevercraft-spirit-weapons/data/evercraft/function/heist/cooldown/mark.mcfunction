# Black Market Heist — Mark Cooldown
# Run as player, with heist.target_barrel tagged
# Summons a cooldown marker at the barrel position

# Summon cooldown marker at barrel location
execute at @e[tag=heist.target_barrel,limit=1] run summon marker ~ ~ ~ {Tags:["heist.cooldown","heist.new_cd"]}

# Store player UUID for later comparison
data modify entity @e[type=marker,tag=heist.new_cd,limit=1] data.player_uuid set from entity @s UUID

# Store timing
execute store result entity @e[type=marker,tag=heist.new_cd,limit=1] data.looted_at long 1 run time query gametime
data modify entity @e[type=marker,tag=heist.new_cd,limit=1] data.refresh_timer set value 504000

# Clean temp tag
tag @e[tag=heist.new_cd] remove heist.new_cd
