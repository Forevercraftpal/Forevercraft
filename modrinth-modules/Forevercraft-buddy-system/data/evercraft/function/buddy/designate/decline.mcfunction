# Buddy Designation — Decline ([No] clicked)
# @s = player who declined

scoreboard players set @s ec.bd_confirm 0
scoreboard players enable @s ec.bd_confirm
scoreboard players set @s ec.bd_designating 0

# Clean up target tag
tag @e[tag=ec.bd_designating_target] remove ec.bd_designating_target

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Maybe another time!",color:"gray"}]
