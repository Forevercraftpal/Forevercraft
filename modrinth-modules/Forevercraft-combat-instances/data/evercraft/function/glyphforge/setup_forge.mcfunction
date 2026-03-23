# Glyphforge — Setup placed block
# Spawns marker at block center, interaction entity on top, and display overlay

# Stop raycast / fallback scan
tag @s remove ec.searching

# Spawn marker at block center with timer data
summon marker ~0.5 ~ ~0.5 {Tags:["RF.Marker","ec.lodestone_registered"],data:{rf_state:0,rf_rune_id:0,forge_started_at:0L}}

# Spawn interaction entity on top of block for right-click detection
summon interaction ~0.5 ~1.0 ~0.5 {Tags:["RF.Interact"],width:0.9f,height:0.5f,response:1b}

# Spawn overlay display (anvil texture)
data modify storage evercraft:glyphforge temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzAxNTEzMDc1MiwKICAicHJvZmlsZUlkIiA6ICJkYzA5MjA4MTM2ZDg0Y2Y5OWIwMzFmMGI1NzM4OTdmNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJLRUlUSF8wMzAyIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzhiMjY3Mjg4ZjQ4YjY2YjVmNjg3OWZiNTViZGIzZjMzZWRlZWZmNDcwMTljYzZhYTU0OTQ4MDE0YzUwNTQ0ZjYiCiAgICB9CiAgfQp9"
function evercraft:glyphforge/spawn_display with storage evercraft:glyphforge

# Feedback
tellraw @p[distance=..8] [{text:"Glyphforge placed! ",color:"red"},{text:"Right-click to open.",color:"gray"}]
playsound minecraft:block.anvil.place master @a[distance=..16] ~ ~ ~ 0.8 0.8
particle minecraft:flame ~0.5 ~1.2 ~0.5 0.3 0.2 0.3 0.02 15
