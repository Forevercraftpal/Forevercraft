# Glyphforge — Check if forging is complete (run as RF.Marker in state 2)
# Uses dynamic forge_duration from marker data

# Get current gametime
execute store result score #rf_now rf.timer run time query gametime

# Get forge_started_at from this marker
execute store result score #rf_started rf.timer run data get entity @s data.forge_started_at

# elapsed = now - started
scoreboard players operation #rf_elapsed rf.timer = #rf_now rf.timer
scoreboard players operation #rf_elapsed rf.timer -= #rf_started rf.timer

# Get dynamic forge_duration from this marker
execute store result score #rf_duration rf.timer run data get entity @s data.forge_duration

# If elapsed >= forge_duration, transition to state 3
execute unless score #rf_elapsed rf.timer >= #rf_duration rf.timer run return 0

# === Forge complete! ===
data modify entity @s data.rf_state set value 3

# Local effects at the forge
execute at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.3 0.3 0.3 0.1 30
execute at @s run playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 0.5 1.2

# Notify the forger (wherever they are)
data modify storage evercraft:glyphforge notify.forger set from entity @s data.rf_forger
execute store result score #rf_rune rf.temp run data get entity @s data.rf_rune_id
execute if score #rf_rune rf.temp matches 1 run data modify storage evercraft:glyphforge notify.glyph set value "Emberheart"
execute if score #rf_rune rf.temp matches 2 run data modify storage evercraft:glyphforge notify.glyph set value "Verdant"
execute if score #rf_rune rf.temp matches 3 run data modify storage evercraft:glyphforge notify.glyph set value "Quicksilver"
execute if score #rf_rune rf.temp matches 4 run data modify storage evercraft:glyphforge notify.glyph set value "Obsidian"
execute if score #rf_rune rf.temp matches 5 run data modify storage evercraft:glyphforge notify.glyph set value "Zephyr"
execute if score #rf_rune rf.temp matches 6 run data modify storage evercraft:glyphforge notify.glyph set value "Briar"
execute if score #rf_rune rf.temp matches 7 run data modify storage evercraft:glyphforge notify.glyph set value "Stalwart"
execute if score #rf_rune rf.temp matches 8 run data modify storage evercraft:glyphforge notify.glyph set value "Gilded"
execute if score #rf_rune rf.temp matches 9 run data modify storage evercraft:glyphforge notify.glyph set value "Tidecall"
execute if score #rf_rune rf.temp matches 10 run data modify storage evercraft:glyphforge notify.glyph set value "Hearthstone"
execute if score #rf_rune rf.temp matches 11 run data modify storage evercraft:glyphforge notify.glyph set value "Prism"
execute if score #rf_rune rf.temp matches 12 run data modify storage evercraft:glyphforge notify.glyph set value "Tempest"
execute if score #rf_rune rf.temp matches 13 run data modify storage evercraft:glyphforge notify.glyph set value "Arcanum"
function evercraft:glyphforge/notify_complete with storage evercraft:glyphforge notify
