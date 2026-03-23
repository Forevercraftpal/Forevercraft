# Duel Invite — Accept Arena (runs as target who clicked [Arena])

# Validate invite is still pending (use tag — more reliable than scoreboard)
execute unless entity @s[tag=duel.pending_target] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No pending duel invite!",color:"red"}]

# Block if another duel started while waiting
execute if score #duel_active ec.var matches 1.. run return run function evercraft:duel/invite/decline

# Validate challenger still exists and is online
execute unless entity @a[tag=duel.challenger] run return run function evercraft:duel/invite/abort

# Check sky clearance — arena needs 172 blocks above + ~18 block height
execute store result score #player_y ec.temp run data get entity @s Pos[1] 1
scoreboard players set #arena_top ec.temp 190
scoreboard players operation #arena_top ec.temp += #player_y ec.temp
execute if score #arena_top ec.temp matches 320.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Too close to build limit! Move to a lower area for arena mode.",color:"red"}]

# Check for air at arena height (spot check)
execute unless block ~ ~172 ~ air run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Not enough space above for the arena! Move to a more open area.",color:"red"}]

# Clear invite state
scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0
tag @s remove duel.pending_target

# Tag self as duelist and mark position for arena spawn
tag @s add ec.duel_active_tag
tag @s add duel.self_marker
scoreboard players set @s ec.duel_active 1
scoreboard players set @s ec.duel_mode 2

# Confirm the challenger (already tagged duel.challenger from initiate)
execute as @a[tag=duel.challenger,limit=1] run function evercraft:duel/invite/confirm_challenger_arena

# If no challenger found, abort
execute unless entity @a[tag=duel.challenger_confirmed] run return run function evercraft:duel/invite/abort
