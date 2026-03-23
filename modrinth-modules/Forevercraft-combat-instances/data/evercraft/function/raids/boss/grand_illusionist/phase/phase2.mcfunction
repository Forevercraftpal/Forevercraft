# Grand Illusionist — Phase 2: The Maze
# Boss goes invisible, plants trap totems, appears briefly to attack

# ── Visibility cycle (15 seconds invisible, 5 seconds visible = 400 ticks total) ──
scoreboard players add #rd_gi_vis_timer ec.var 1

# Visible window (ticks 300-400)
execute if score #rd_gi_vis_timer ec.var matches 300 run function evercraft:raids/boss/grand_illusionist/abilities/become_visible
execute if score #rd_gi_vis_timer ec.var matches 400.. run function evercraft:raids/boss/grand_illusionist/abilities/become_invisible
execute if score #rd_gi_vis_timer ec.var matches 400.. run scoreboard players set #rd_gi_vis_timer ec.var 0

# ── Spawn trap totems (every 160 ticks during invisible phase) ──
execute if score #rd_gi_vis_timer ec.var matches ..299 run scoreboard players add #rd_gi_totem_cd ec.var 1
execute if score #rd_gi_totem_cd ec.var matches 160.. run function evercraft:raids/boss/grand_illusionist/abilities/spawn_totem
execute if score #rd_gi_totem_cd ec.var matches 160.. run scoreboard players set #rd_gi_totem_cd ec.var 0

# ── Totem proximity triggers ──
execute as @e[tag=ec.rd_gi_totem] at @s run function evercraft:raids/boss/grand_illusionist/abilities/totem_trigger

# ── Boss attacks during visible window ──
execute if score #rd_gi_vis_timer ec.var matches 300..399 run function evercraft:raids/boss/grand_illusionist/abilities/evoker_fangs
