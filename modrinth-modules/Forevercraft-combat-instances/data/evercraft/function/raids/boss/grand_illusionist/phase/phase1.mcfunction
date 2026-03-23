# Grand Illusionist — Phase 1: The Five Copies
# 5 fake copies each cast different spells, only real boss takes damage

# ── Copy 1: Vex Swarm (every 200 ticks / 10 seconds) ──
scoreboard players add #rd_gi_vex_cd ec.var 1
execute if score #rd_gi_vex_cd ec.var matches 200.. run function evercraft:raids/boss/grand_illusionist/abilities/summon_vex
execute if score #rd_gi_vex_cd ec.var matches 200.. run scoreboard players set #rd_gi_vex_cd ec.var 0

# ── Copy 2: Evoker Fangs (every 120 ticks / 6 seconds) ──
scoreboard players add #rd_gi_fang_cd ec.var 1
execute if score #rd_gi_fang_cd ec.var matches 120.. run function evercraft:raids/boss/grand_illusionist/abilities/evoker_fangs
execute if score #rd_gi_fang_cd ec.var matches 120.. run scoreboard players set #rd_gi_fang_cd ec.var 0

# ── Copy 3: Blindness AoE (every 240 ticks / 12 seconds) ──
scoreboard players add #rd_gi_blind_cd ec.var 1
execute if score #rd_gi_blind_cd ec.var matches 240.. run function evercraft:raids/boss/grand_illusionist/abilities/blindness_aoe
execute if score #rd_gi_blind_cd ec.var matches 240.. run scoreboard players set #rd_gi_blind_cd ec.var 0

# ── Copy 4: Levitation on hit (passive — check for nearby players every 60 ticks) ──
scoreboard players add #rd_gi_totem_cd ec.var 1
execute if score #rd_gi_totem_cd ec.var matches 60.. run function evercraft:raids/boss/grand_illusionist/abilities/levitation_strike
execute if score #rd_gi_totem_cd ec.var matches 60.. run scoreboard players set #rd_gi_totem_cd ec.var 0

# ── Copy 5: Poison cloud (every 180 ticks / 9 seconds) ──
scoreboard players add #rd_gi_poison_cd ec.var 1
execute if score #rd_gi_poison_cd ec.var matches 180.. run function evercraft:raids/boss/grand_illusionist/abilities/poison_cloud
execute if score #rd_gi_poison_cd ec.var matches 180.. run scoreboard players set #rd_gi_poison_cd ec.var 0

# ── Fake hit tracking — fakes "die" after taking enough hits ──
execute as @e[tag=ec.rd_gi_fake,nbt={HurtTime:10s}] run function evercraft:raids/boss/grand_illusionist/abilities/fake_hit
