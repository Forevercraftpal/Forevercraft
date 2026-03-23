# Guild Pet Warp Strike — Zone Orchestrator
# Runs as: player in guild zone
# All tamed pets in the area warp strike nearby hostiles

# Must have hostiles nearby
execute unless entity @e[type=#evercraft:combat_targets,distance=..24,limit=1] run return 0

# Must have pets nearby
execute unless entity @e[type=#evercraft:home_pets,distance=..24,limit=1] run return 0

# Calculate damage based on player bonuses (reuse housing formula)
function evercraft:housing/pet_warp/calc_damage

# Each tamed pet within 24 blocks performs a warp strike
# Skip sitting pets — only standing pets warp strike
execute at @s as @e[type=#evercraft:home_pets,distance=..24,nbt=!{Sitting:1b}] run function evercraft:guild/pet_warp/pet_strike

# Notify player (once per day — tag cleared on daily reset)
execute unless entity @s[tag=ec.guild_strike_notified] run tellraw @s [{text:"  [Guild] ",color:"dark_green"},{text:"Allies defend the guild hall!",color:"green",italic:true}]
execute unless entity @s[tag=ec.guild_strike_notified] run playsound minecraft:entity.wolf_puglin.ambient player @s ~ ~ ~ 0.5 1.2
tag @s add ec.guild_strike_notified
