# Sneak Invite — Raycast found a non-party player
# Context: positioned at raycast hit, @s = sneaking party leader
# @n[...] = target non-party player within 1.5 blocks

# Tag self as having found a target (stops raycast)
tag @s add ec.pty_inv_found

# Store our party ID for the invite macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Send invite to the target (skip if they already have a pending invite)
execute as @n[distance=..1.5,type=player,scores={ec.party_id=0,ec.party_inv=0},gamemode=!spectator] run function evercraft:party/invite/send with storage evercraft:party temp

# Notify inviter
tellraw @s [{text:"[Party] ",color:"gold"},{text:"Invitation sent!",color:"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.2

# 5-second cooldown (100 ticks, decremented by 20/s in tick_cooldowns)
scoreboard players set @s ec.party_inv_cd 100
