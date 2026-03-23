# ============================================================
# Depth Bonus — Second-chance roll for Patrons based on Y-level
# Called when base predicate check (5% or 10%) fails.
# If depth bonus succeeds, rolls rarity for the mob.
#
# Base chance: 7.5% normal, 15% new moon night
# Bonus: base_chance * (depth_mult - 100) / 100
# At surface: 0% bonus. At bedrock: 3.75% bonus (normal) or 7.5% (new moon).
# ============================================================

# Calculate depth multiplier at this mob's position
function evercraft:quests/depth/calculate

# If at surface (depth_mult = 100), no bonus — skip
execute if score @s ec.depth_mult matches ..100 run return 0

# Determine base chance: 750 (7.5%) or 1500 (15% new moon night)
scoreboard players set #patron_base ec.var 750
execute if score #moon_phase ec.var matches 4 if score #time ec.var matches 13000.. run scoreboard players set #patron_base ec.var 1500

# depth_bonus = depth_mult - 100
scoreboard players operation #depth_bonus ec.var = @s ec.depth_mult
scoreboard players remove #depth_bonus ec.var 100

# threshold = depth_bonus * patron_base / 100
# At bedrock (50) with normal (750): 50 * 750 / 100 = 375 out of 10000 = 3.75%
scoreboard players operation #depth_bonus ec.var *= #patron_base ec.var
scoreboard players operation #depth_bonus ec.var /= #100 ec.const

# Roll 1..10000 and compare
execute store result score #depth_roll ec.var run random value 1..10000
execute if score #depth_roll ec.var <= #depth_bonus ec.var run function evercraft:mobs/patrons/roll_rarity
