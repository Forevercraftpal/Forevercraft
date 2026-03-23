# Infinite Castle — Milestone Reward Per Player
# Run as: ic.player, at player position
# Every 10th floor: forever coins scaling with floor (floor/10 * 50)

# Calculate coin reward: floor / 10 * 50
scoreboard players operation #ic_coins ec.var = #ic_floor ec.var
scoreboard players operation #ic_coins ec.var /= #10 ec.const
scoreboard players operation #ic_coins ec.var *= #50 ec.const

# Give coins via macro
execute store result storage evercraft:castle milestone.coins int 1 run scoreboard players get #ic_coins ec.var
execute store result storage evercraft:castle milestone.floor int 1 run scoreboard players get #ic_floor ec.var
function evercraft:castle/give_milestone_coins with storage evercraft:castle milestone

# Victory sound
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.0
