# Duel Invite — Accept Open World (runs as target who clicked [Open World])

# Validate invite is still pending (use tag — more reliable than scoreboard)
execute unless entity @s[tag=duel.pending_target] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No pending duel invite!",color:"red"}]

# Block if another duel started while waiting
execute if score #duel_active ec.var matches 1.. run return run function evercraft:duel/invite/decline

# Validate challenger still exists and is online
execute unless entity @a[tag=duel.challenger] run return run function evercraft:duel/invite/abort

# Clear invite state
scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0
tag @s remove duel.pending_target

# Tag self as duelist
tag @s add ec.duel_active_tag
scoreboard players set @s ec.duel_active 1
scoreboard players set @s ec.duel_mode 1

# Confirm the challenger (already tagged duel.challenger from initiate)
execute as @a[tag=duel.challenger,limit=1] run function evercraft:duel/invite/confirm_challenger

# If no challenger confirmed, abort
execute unless entity @a[tag=duel.challenger_confirmed] run return run function evercraft:duel/invite/abort
