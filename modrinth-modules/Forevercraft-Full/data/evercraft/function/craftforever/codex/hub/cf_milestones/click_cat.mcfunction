# CF Milestones — Generic Category Click (runs as interaction entity)
# Non-macro fallback — just clears click and plays sound
data remove entity @s interaction
execute as @p[tag=CF.InCodex,distance=..5] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.2
