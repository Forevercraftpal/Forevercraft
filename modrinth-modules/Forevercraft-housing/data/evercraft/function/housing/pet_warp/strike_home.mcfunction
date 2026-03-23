# Home Pet Warp Strike — Housing Zone Orchestrator
# Runs as: player in home zone (Tier 3+)
# All tamed pets in the area warp strike nearby hostiles

# Must have hostiles nearby (skip if peaceful home)
execute unless entity @e[type=#evercraft:combat_targets,distance=..24,limit=1] run return 0

# Must have pets nearby
execute unless entity @e[type=#evercraft:home_pets,distance=..24,limit=1] run return 0

# Calculate damage based on player bonuses (Beastmaster, Wild Trim, Beastlord, Moon)
function evercraft:housing/pet_warp/calc_damage

# Each home pet within 24 blocks performs a warp strike
# Skip sitting pets — only standing pets warp strike
execute at @s as @e[type=#evercraft:home_pets,distance=..24,nbt=!{Sitting:1b}] run function evercraft:housing/pet_warp/pet_strike

# Notify player
tellraw @s [{text:"  [Home] ",color:"#FFD700"},{text:"Your pets defend the homestead!",color:"yellow",italic:true}]
playsound minecraft:entity.wolf_puglin.ambient player @s ~ ~ ~ 0.5 1.2
