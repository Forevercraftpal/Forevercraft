# Party Dungeon Affixes — Tick effects (called from tick_active every 5s)
# Only runs when #dg_afx_count >= 1

# Darkness (4): permanent darkness on players (refresh 8s)
execute if score #dg_afx1 ec.var matches 4 run effect give @a[tag=dg.player] darkness 8 0 false
execute if score #dg_afx2 ec.var matches 4 run effect give @a[tag=dg.player] darkness 8 0 false
execute if score #dg_afx3 ec.var matches 4 run effect give @a[tag=dg.player] darkness 8 0 false

# No Healing (7): prevent natural regen by applying hunger effect
execute if score #dg_afx1 ec.var matches 7 run effect give @a[tag=dg.player] hunger 8 9 true
execute if score #dg_afx2 ec.var matches 7 run effect give @a[tag=dg.player] hunger 8 9 true
execute if score #dg_afx3 ec.var matches 7 run effect give @a[tag=dg.player] hunger 8 9 true

# Reinforcements (8): spawn 3 extra zombies at center (checked in spawn_wave instead)
