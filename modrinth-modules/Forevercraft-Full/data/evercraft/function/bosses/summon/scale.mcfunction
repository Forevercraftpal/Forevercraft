# World Boss — Calculate Scaling
# Called by summoner before boss spawn. Sets #wb_hp_scale and #wb_dmg_scale (percentage, 100 = 1.0x)

# Start at 100%
scoreboard players set #wb_hp_scale ec.var 100
scoreboard players set #wb_dmg_scale ec.var 100

# Dream Rate scaling: +7% HP and +5% damage per DR point
# HP caps at 350% (~DR 36), damage caps at 250% (DR 30)
# Gear-based DR floor: boss scales to at least the DR implied by player's artifact tiers
# (highest tier base + 5 DR per additional artifact piece, cap 50 DR)
function evercraft:bosses/summon/scale_gear
# luck get 10 → DR × 10 (e.g., 17.5 DR → 175)
execute store result score #wb_temp ec.var run attribute @s luck get 10
# Use whichever is higher: actual DR or gear-implied DR
execute if score #wb_gear_dr ec.var > #wb_temp ec.var run scoreboard players operation #wb_temp ec.var = #wb_gear_dr ec.var
# HP bonus: temp × 70 / 100 (e.g., 175 × 70 / 100 = 122%)
scoreboard players operation #wb_temp2 ec.var = #wb_temp ec.var
scoreboard players set #wb_temp3 ec.var 70
scoreboard players operation #wb_temp2 ec.var *= #wb_temp3 ec.var
scoreboard players operation #wb_temp2 ec.var /= #100 adv.temp
scoreboard players operation #wb_hp_scale ec.var += #wb_temp2 ec.var

# Damage bonus: temp × 50 / 100 (e.g., 175 × 50 / 100 = 87%)
scoreboard players operation #wb_temp2 ec.var = #wb_temp ec.var
scoreboard players set #wb_temp3 ec.var 50
scoreboard players operation #wb_temp2 ec.var *= #wb_temp3 ec.var
scoreboard players operation #wb_temp2 ec.var /= #100 adv.temp
scoreboard players operation #wb_dmg_scale ec.var += #wb_temp2 ec.var

# Moon phase scaling
# Blood Moon: +50% HP, +35% damage
execute if score #cal_blood_moon ec.var matches 1 run scoreboard players add #wb_hp_scale ec.var 50
execute if score #cal_blood_moon ec.var matches 1 run scoreboard players add #wb_dmg_scale ec.var 35

# Full Moon (phase 0, day%8=0): +15% HP, +10% damage (skip if blood moon)
execute unless score #cal_blood_moon ec.var matches 1 store result score #wb_temp ec.var run time query day
execute unless score #cal_blood_moon ec.var matches 1 run scoreboard players set #wb_temp2 ec.var 8
execute unless score #cal_blood_moon ec.var matches 1 run scoreboard players operation #wb_temp ec.var %= #wb_temp2 ec.var
execute unless score #cal_blood_moon ec.var matches 1 if score #wb_temp ec.var matches 0 run scoreboard players add #wb_hp_scale ec.var 15
execute unless score #cal_blood_moon ec.var matches 1 if score #wb_temp ec.var matches 0 run scoreboard players add #wb_dmg_scale ec.var 10

# New Moon (phase 4): +30% HP, +20% damage
execute unless score #cal_blood_moon ec.var matches 1 if score #wb_temp ec.var matches 4 run scoreboard players add #wb_hp_scale ec.var 30
execute unless score #cal_blood_moon ec.var matches 1 if score #wb_temp ec.var matches 4 run scoreboard players add #wb_dmg_scale ec.var 20

# Multiplayer: +50% HP per extra player within 100 blocks (cap +150%)
execute store result score #wb_temp ec.var if entity @a[distance=..100]
scoreboard players remove #wb_temp ec.var 1
execute if score #wb_temp ec.var matches 4.. run scoreboard players set #wb_temp ec.var 3
scoreboard players set #wb_temp2 ec.var 50
scoreboard players operation #wb_temp2 ec.var *= #wb_temp ec.var
scoreboard players operation #wb_hp_scale ec.var += #wb_temp2 ec.var

# Cap HP at 350%, damage at 250%
execute if score #wb_hp_scale ec.var matches 351.. run scoreboard players set #wb_hp_scale ec.var 350
execute if score #wb_dmg_scale ec.var matches 251.. run scoreboard players set #wb_dmg_scale ec.var 250
