# Artifact Transmutation — Confirm (Transmute!)
# Run as: player, at player position
# Validates deposit count, consumes, rolls next tier

# Block spirit artifacts from transmute system
execute if items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"Spirit Artifacts cannot be transmuted! Upgrade through objectives instead.","color":"red"}]

# Calculate required count (tier-variable + Artificer discount)
function evercraft:transmute/gui/calc_required

# Check if enough artifacts deposited
execute if score @s tx.count < @s tx.required run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Not enough artifacts deposited!",color:"red"}]

# Check we have a valid tier
execute if score @s tx.tier matches ..0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No artifacts have been deposited.",color:"red"}]
execute if score @s tx.tier matches 7.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Cannot upgrade beyond Mythical!",color:"red"}]

# === Record discount usage BEFORE transmuting ===
# If discount was applied this transmute, mark today as the discount day
execute if score @s tx.has_disc matches 1 store result score @s tx.disc_day run time query day

# === TRANSMUTE! ===
# Roll the next tier artifact
function evercraft:transmute/roll/give_result

# Reset state
scoreboard players set @s tx.count 0
scoreboard players set @s tx.tier 0
scoreboard players set @s tx.half 0

# Clear saved memory for this player+table (transmutation complete)
function evercraft:transmute/memory/get_player_key
execute as @e[type=marker,tag=TX.Marker,distance=..5,limit=1] run function evercraft:transmute/memory/get_table_key
function evercraft:transmute/memory/clear with storage evercraft:transmute temp

# Effects
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.8 0.6
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.0
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.5 0.5 0.3 50
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1.0 30

# Refresh GUI (back to empty state)
function evercraft:transmute/gui/refresh

# Track for achievements
scoreboard players add @s ach.transmutes_done 1

# Announce
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Transmutation complete! Check your inventory.",color:"green"}]
