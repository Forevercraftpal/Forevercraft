# Shield Bash — Raycast (recursive, runs positioned at raycast head)
# Advances 1 block per step, max 10 blocks (20 steps at ^0.5 would be smoother but Eye uses ^1)

scoreboard players add #rc_steps ec.var 1

# Hit solid block → step back to last air position and impact
execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ water unless block ~ ~ ~ lava positioned ^ ^ ^-1 run return run function evercraft:artifacts/shields/bash/impact

# Continue if within range
execute if score #rc_steps ec.var matches ..9 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^1 run return run function evercraft:artifacts/shields/bash/raycast
execute if score #rc_steps ec.var matches ..9 if block ~ ~ ~ water positioned ^ ^ ^1 run return run function evercraft:artifacts/shields/bash/raycast
execute if score #rc_steps ec.var matches ..9 if block ~ ~ ~ lava positioned ^ ^ ^1 run return run function evercraft:artifacts/shields/bash/raycast

# Max distance reached → impact here
function evercraft:artifacts/shields/bash/impact
