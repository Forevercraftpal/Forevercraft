# Spirit Raids — Check Entry (DR Gate)
# Called from dungeon/complete when floor 10 is cleared
# Checks if player meets DR requirement, then starts entry vote

# Read player's DR from luck attribute (DR = luck * 10, stored as integer)
execute store result score #rd_dr_check ec.var run attribute @a[tag=dg.player,limit=1] minecraft:luck get 10

# DR < 50 (DR 5): deny entry, run normal dungeon completion
execute if score #rd_dr_check ec.var matches ..49 run tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Floor 10 Cleared!",color:"gold",bold:true}]
execute if score #rd_dr_check ec.var matches ..49 run tellraw @a[tag=dg.player] [{text:"  The depths stir beyond this point, but your Dream Rate is too low.",color:"gray","italic":true}]
execute if score #rd_dr_check ec.var matches ..49 run tellraw @a[tag=dg.player] [{text:"  Reach ",color:"gray"},{text:"DR 5",color:"gold","bold":true},{text:" to enter the Raid Room.",color:"gray"}]
# Fall through to normal dungeon complete for sub-DR players
execute if score #rd_dr_check ec.var matches ..49 run function evercraft:dungeon/reward
execute if score #rd_dr_check ec.var matches ..49 run function evercraft:dungeon/cleanup
execute if score #rd_dr_check ec.var matches ..49 run return 0

# DR >= 50 (DR 5+): eligible for raid entry
# Save structure ID for raid boss mapping
scoreboard players operation #rd_struct ec.var = #dg_struct_id ec.var

# Count players
execute store result score #rd_players ec.var if entity @a[tag=dg.player]

# Start entry vote
function evercraft:raids/vote/start_entry_vote
