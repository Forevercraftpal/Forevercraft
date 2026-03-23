# Glyphforge GUI — On Deposit (persist rune to marker, set state 1)
# Called after rune is consumed and rf.rune_id is set

# Store rune_id on the marker for persistence
execute store result storage evercraft:glyphforge temp_rune_id int 1 run scoreboard players get @s rf.rune_id
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_rune_id set from storage evercraft:glyphforge temp_rune_id

# Set marker state to 1 (rune deposited)
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_state set value 1
scoreboard players set @s rf.state 1

# Sound feedback
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.2

# Refresh GUI
function evercraft:glyphforge/gui/refresh
