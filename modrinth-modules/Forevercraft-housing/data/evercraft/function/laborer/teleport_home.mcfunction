# Teleport laborer back to owner's home position
# Runs as: laborer entity. Owner tagged ec.lb_owner.

# Store home coords from owner to storage for macro tp
execute as @a[tag=ec.lb_owner,limit=1] store result storage evercraft:laborers temp.hx int 1 run scoreboard players get @s hs.home_x
execute as @a[tag=ec.lb_owner,limit=1] store result storage evercraft:laborers temp.hy int 1 run scoreboard players get @s hs.home_y
execute as @a[tag=ec.lb_owner,limit=1] store result storage evercraft:laborers temp.hz int 1 run scoreboard players get @s hs.home_z
function evercraft:laborer/do_teleport_home with storage evercraft:laborers temp
