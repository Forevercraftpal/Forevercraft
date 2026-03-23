# Zone confinement — teleport laborer back if it wandered outside home zone
# Runs as: laborer entity, at its position. Owner tagged ec.lb_owner.

# Skip if owner is offline
execute unless entity @a[tag=ec.lb_owner,limit=1] run return 0

# Get laborer's current position
execute store result score #lb_lx ec.lb_temp run data get entity @s Pos[0]
execute store result score #lb_lz ec.lb_temp run data get entity @s Pos[2]

# Distance X = abs(laborer_x - home_x)
execute as @a[tag=ec.lb_owner,limit=1] run scoreboard players operation #lb_lx ec.lb_temp -= @s hs.home_x
execute if score #lb_lx ec.lb_temp matches ..-1 run scoreboard players operation #lb_lx ec.lb_temp *= #lb_neg1 ec.lb_temp

# Distance Z = abs(laborer_z - home_z)
execute as @a[tag=ec.lb_owner,limit=1] run scoreboard players operation #lb_lz ec.lb_temp -= @s hs.home_z
execute if score #lb_lz ec.lb_temp matches ..-1 run scoreboard players operation #lb_lz ec.lb_temp *= #lb_neg1 ec.lb_temp

# If either distance > 64, teleport laborer to home
execute if score #lb_lx ec.lb_temp matches 65.. run function evercraft:laborer/teleport_home
execute if score #lb_lz ec.lb_temp matches 65.. run function evercraft:laborer/teleport_home
