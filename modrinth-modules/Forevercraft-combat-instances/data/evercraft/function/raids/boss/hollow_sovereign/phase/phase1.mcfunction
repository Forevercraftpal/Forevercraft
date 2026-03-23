# Hollow Sovereign — Phase 1: The Stalker (100%-66% HP)
# Boss is INVISIBLE. Sculk particles hint at position.
# Hit boss 3 times while invisible to break invis for 10 seconds (200 ticks).
# Every 100 ticks (5 sec): sculk particle burst at boss position.
# Every 160 ticks (8 sec): sonic boom at random player — 6 damage, 4-block radius.

# ── Visibility Window Active ──
execute if score #rd_hs_vis_timer ec.var matches 1.. run function evercraft:raids/boss/hollow_sovereign/abilities/visible_window
execute if score #rd_hs_vis_timer ec.var matches 1.. run return 0

# ── Invisible State ──

# Sculk particle hint every 100 ticks (5 seconds) at boss position
execute if score #rd_timer ec.var matches 1.. store result score #rd_temp ec.var run scoreboard players get #rd_timer ec.var
scoreboard players operation #rd_temp ec.var %= #100 adv.temp
execute if score #rd_temp ec.var matches 0 as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/hollow_sovereign/abilities/sculk_hint

# Sonic boom every 160 ticks (8 seconds)
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players set #rd_temp2 ec.var 160
scoreboard players operation #rd_temp ec.var %= #rd_temp2 ec.var
execute if score #rd_temp ec.var matches 0 run function evercraft:raids/boss/hollow_sovereign/abilities/sonic_boom

# Check for hits on the invisible boss (HurtTime detection)
execute as @e[type=!player,tag=ec.rd_boss,limit=1,nbt={HurtTime:10s}] run function evercraft:raids/boss/hollow_sovereign/abilities/invis_hit
