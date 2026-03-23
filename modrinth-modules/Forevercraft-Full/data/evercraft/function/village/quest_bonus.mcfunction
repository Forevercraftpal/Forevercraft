# ============================================================
# Village Specialization Quest Bonus
# Grants +25% bonus reputation when completing quests at specialized villages
# Call BEFORE save_village_rep, AFTER adding base rep
# Requires #vs_base_rep vs.temp to be set to the base reputation value
# Run as the player
# ============================================================

# Check if village has a specialization
function evercraft:village/specialization/get_spec
execute unless score #vs_current_spec vs.temp matches 1.. run return fail

# Calculate 25% bonus: base_rep / 4
scoreboard players operation #vs_bonus_rep vs.temp = #vs_base_rep vs.temp
scoreboard players operation #vs_bonus_rep vs.temp /= #4 ec.const

# Minimum bonus of 1 rep
execute if score #vs_bonus_rep vs.temp matches ..0 run scoreboard players set #vs_bonus_rep vs.temp 1

# Add bonus reputation
scoreboard players operation @s ec.village_rep += #vs_bonus_rep vs.temp

# Notify player
tellraw @s ["",{text:"  ✦ Specialization Bonus: +",color:"dark_aqua"},{score:{name:"#vs_bonus_rep",objective:"vs.temp"},color:"dark_aqua"},{text:" REP",color:"dark_aqua"}]
