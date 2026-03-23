# The Deepcrawler — Phase 3: The True Form (33%-0% HP)
# - Boss revealed in true massive form (no more burrowing)
# - Darkness zones shift every 200 ticks
# - Ground slam AoE every 160 ticks (8s)
# - Boss takes 80% reduced damage in darkness, normal when illuminated (Glowing)
# - Ore weak points can illuminate boss

# ── Darkness Zone Shift (every 200 ticks) ──
execute if score #rd_dc_dark_timer ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/shift_darkness
execute if score #rd_dc_dark_timer ec.var matches 0 run scoreboard players set #rd_dc_dark_timer ec.var 200

# ── Ground Slam (every 8 seconds) ──
execute if score #rd_dc_burrow_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/ground_slam
execute if score #rd_dc_burrow_cd ec.var matches 0 run scoreboard players set #rd_dc_burrow_cd ec.var 160

# ── Darkness Damage Reduction ──
# If boss does NOT have Glowing: apply heavy resistance
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} run effect give @s resistance 2 3 true

# ── Cart attacks continue (every 160 ticks) ──
execute if score #rd_dc_cart_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/cart_launch
execute if score #rd_dc_cart_cd ec.var matches 0 run scoreboard players set #rd_dc_cart_cd ec.var 160

# ── Stalactites (every 200 ticks) ──
execute if score #rd_dc_stala_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/stalactite_drop
execute if score #rd_dc_stala_cd ec.var matches 0 run scoreboard players set #rd_dc_stala_cd ec.var 200
