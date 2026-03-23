# Forge Crystal — Right-click handler
# Fires when crystal is consumed. Check offhand for spirit tool.

advancement revoke @s only evercraft:craftforever/grand_forge/forge_crystal_consume

# Check offhand has a spirit tool (check each tool name since spirit_tool is a string, not boolean)
scoreboard players set #gf_has_tool ec.var 0
execute if items entity @s weapon.offhand *[custom_data~{spirit_tool:"earthsong"}] run scoreboard players set #gf_has_tool ec.var 1
execute if items entity @s weapon.offhand *[custom_data~{spirit_tool:"bloomweaver"}] run scoreboard players set #gf_has_tool ec.var 1
execute if items entity @s weapon.offhand *[custom_data~{spirit_tool:"tidecaller"}] run scoreboard players set #gf_has_tool ec.var 1
execute if items entity @s weapon.offhand *[custom_data~{spirit_tool:"dustwalker"}] run scoreboard players set #gf_has_tool ec.var 1
execute if items entity @s weapon.offhand *[custom_data~{spirit_tool:"heartwood"}] run scoreboard players set #gf_has_tool ec.var 1
execute if items entity @s weapon.offhand *[custom_data~{spirit_tool:"silkgrasp"}] run scoreboard players set #gf_has_tool ec.var 1
execute if score #gf_has_tool ec.var matches 0 run return run tellraw @s [{"text":"Hold a Spirit Tool in your offhand!","color":"red"}]

# Prevent double-use race condition
execute if entity @s[tag=ec.st_crystal_pending] run return run tellraw @s [{"text":"Crystal already processing!","color":"red"}]

# Check if already boosted
execute if items entity @s weapon.offhand *[custom_data~{st_boosted:true}] run return run tellraw @s [{"text":"This tool is already boosted!","color":"red"}]

# Check tier: must be Mythical (6) or Spirit (7)
# After tier-up, st_tier is stored as string "mythical"/"spirit" — also check the integer form
# Use the tier string field for reliable checking
execute unless items entity @s weapon.offhand *[custom_data~{tier:"mythical"}] unless items entity @s weapon.offhand *[custom_data~{tier:"spirit"}] run return run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"NOT READY","color":"red","bold":true},{"text":" — Your Spirit Tool must reach ","color":"gray"},{"text":"Mythical","color":"light_purple","bold":true},{"text":" tier first!","color":"gray"}]

# Check Artisan Tome quest 50+
execute if score @s ec.tq_part matches ..49 run return run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"NOT READY","color":"red","bold":true},{"text":" — Complete Artisan Tome quest ","color":"gray"},{"text":"50","color":"gold","bold":true},{"text":" first!","color":"gray"}]

# Set pending flag
tag @s add ec.st_crystal_pending

# Restore crystal (consume_seconds:0 destroys emerald in survival)
tag @s add ec.gf_crystal_restore
schedule function evercraft:craftforever/grand_forge/restore_crystal 1t append

# Apply boost
function evercraft:craftforever/grand_forge/apply_boost
