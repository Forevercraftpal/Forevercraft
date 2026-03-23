# Depth Bonus — Second-chance roll for Furia based on Y-level
# Same depth system as Patrons but with 30% base (3000) / 60% new moon (6000)

# Calculate depth multiplier at this mob's position
function evercraft:quests/depth/calculate

# If at surface (depth_mult = 100), no bonus — skip
execute if score @s ec.depth_mult matches ..100 run return 0

# Determine base chance: 3000 (30%) or 6000 (60% new moon night)
scoreboard players set #furia_base ec.var 3000
execute if score #moon_phase ec.var matches 4 if score #time ec.var matches 13000.. run scoreboard players set #furia_base ec.var 6000

# depth_bonus = depth_mult - 100
scoreboard players operation #depth_bonus ec.var = @s ec.depth_mult
scoreboard players remove #depth_bonus ec.var 100

# threshold = depth_bonus * furia_base / 100
scoreboard players operation #depth_bonus ec.var *= #furia_base ec.var
scoreboard players operation #depth_bonus ec.var /= #100 ec.const

# Roll 1..10000 and compare
execute store result score #depth_roll ec.var run random value 1..10000
execute if score #depth_roll ec.var <= #depth_bonus ec.var run function evercraft:mobs/furia/roll_tier
