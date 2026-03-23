# The Ashen Lord — Soul Lantern Puzzle (every tick)
# 4 soul lanterns can be toggled on/off by clicking (interaction entity)
# Lit: weakens boss (removes fire immunity)
# Unlit: gives nearby players fire resistance for 10s

# ── Check for lantern clicks ──
execute as @e[tag=ec.rd_al_lantern] at @s if data entity @s interaction run function evercraft:raids/boss/ashen_lord/puzzle/lantern_toggle

# ── Lit lantern particles ──
execute as @e[tag=ec.rd_al_lantern_on] at @s run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0.2 0.3 0.2 0.02 3
execute as @e[tag=ec.rd_al_lantern_on] at @s run particle minecraft:soul ~ ~2 ~ 0.1 0.1 0.1 0.01 1

# ── Unlit lantern particles ──
execute as @e[tag=ec.rd_al_lantern_off] at @s run particle minecraft:smoke ~ ~1 ~ 0.1 0.2 0.1 0.005 1

# ── Unlit lantern fire resistance aura (every 40 ticks) ──
execute store result score #rd_temp ec.var run time query gametime
scoreboard players operation #rd_temp ec.var %= #20 adv.temp
execute if score #rd_temp ec.var matches 0 as @e[tag=ec.rd_al_lantern_off] at @s run effect give @a[tag=ec.rd_participant,distance=..5] fire_resistance 12 0 true

# ── Boss fire immunity based on lit lanterns ──
# Count lit lanterns
scoreboard players set #rd_al_lanterns_lit ec.var 0
execute as @e[tag=ec.rd_al_lantern_on] run scoreboard players add #rd_al_lanterns_lit ec.var 1

# If 1+ lanterns lit: remove boss fire immunity (fire resistance effect)
execute if score #rd_al_lanterns_lit ec.var matches 1.. as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run effect clear @s fire_resistance

# If 0 lanterns lit: restore boss fire immunity
execute if score #rd_al_lanterns_lit ec.var matches 0 as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run effect give @s fire_resistance infinite 0 true
