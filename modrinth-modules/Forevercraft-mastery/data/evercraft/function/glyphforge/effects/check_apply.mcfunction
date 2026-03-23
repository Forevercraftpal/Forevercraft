# Glyphforge Effects — Check if reapply needed (dirty flag)
# Skip strip+reapply if player is holding same slot as last tick
# Context: as @a[tag=ec.rf_active]

# Get current selected slot
execute store result score @s ec.temp run data get entity @s SelectedItemSlot

# If was already active and slot unchanged — skip (modifiers still correct)
execute if entity @s[tag=ec.rf_was_active] if score @s ec.temp = @s rf.slot run return 0

# Slot changed or new holder — update cached slot and full reapply
scoreboard players operation @s rf.slot = @s ec.temp
function evercraft:glyphforge/effects/apply
