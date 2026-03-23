# Hollow Sovereign — Phase 3: The Three Shadows (33%-0% HP)
# Real boss has soul_fire_flame particle. Fakes have flame particle (subtle tell).
# Fakes are Invulnerable but animate hits. If "killed" (damage threshold), respawn after 10 sec.
# Players must identify the real boss by watching for the particle difference.

# ── Particle Tells ──
# Real boss: soul fire (blue-green) — subtle difference
execute as @e[type=!player,tag=ec.rd_hs_real,limit=1] at @s run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0.2 0.3 0.2 0.01 2

# Fakes: regular fire (orange) particles
execute as @e[type=!player,tag=ec.rd_hs_fake] at @s run particle minecraft:flame ~ ~1.5 ~ 0.2 0.3 0.2 0.01 2

# All entities (real + fake) get ambient sculk
execute as @e[type=!player,tag=ec.rd_hs] at @s run particle minecraft:sculk_charge_pop ~ ~0.5 ~ 0.3 0.2 0.3 0.005 1

# ── Fake Shadow AI (basic follow nearest player) ──
# Fakes chase nearest player — apply speed and aggro
execute as @e[type=!player,tag=ec.rd_hs_fake] at @s run effect give @s speed 2 1 true

# ── Fake "Death" Detection (took enough hits) ──
# Detect when a fake has HurtTime (just got hit)
execute as @e[type=!player,tag=ec.rd_hs_fake,nbt={HurtTime:10s}] at @s run function evercraft:raids/boss/hollow_sovereign/abilities/fake_hit

# ── Shadow Respawn Timer ──
execute if score #rd_hs_shadow_cd ec.var matches 1.. run scoreboard players remove #rd_hs_shadow_cd ec.var 1
execute if score #rd_hs_shadow_cd ec.var matches 0 run function evercraft:raids/boss/hollow_sovereign/abilities/check_shadow_respawn

# ── Sonic Boom continues (every 200 ticks = 10 seconds in Phase 3) ──
scoreboard players set #rd_temp2 ec.var 200
scoreboard players operation #rd_temp ec.var = #rd_timer ec.var
scoreboard players operation #rd_temp ec.var %= #rd_temp2 ec.var
execute if score #rd_temp ec.var matches 0 run function evercraft:raids/boss/hollow_sovereign/abilities/sonic_boom
