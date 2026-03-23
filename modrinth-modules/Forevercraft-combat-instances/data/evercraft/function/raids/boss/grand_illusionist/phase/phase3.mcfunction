# Grand Illusionist — Phase 3: The Ravager
# Boss summons ravager, fights alongside it
# When ravager dies: boss panics, drops all illusions, reckless attacks

# ── Check if ravager is dead ──
execute unless entity @e[tag=ec.rd_gi_ravager] unless score #rd_gi_ravager_dead ec.var matches 1 run function evercraft:raids/boss/grand_illusionist/abilities/ravager_died

# ── If ravager alive: coordinated attacks ──
execute if entity @e[tag=ec.rd_gi_ravager] run function evercraft:raids/boss/grand_illusionist/abilities/ravager_tick

# ── Boss attacks (fang + vex regardless of ravager state) ──
scoreboard players add #rd_gi_fang_cd ec.var 1

# Normal mode: fangs every 100t; panic mode: every 40t
execute unless score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_fang_cd ec.var matches 100.. run function evercraft:raids/boss/grand_illusionist/abilities/evoker_fangs
execute unless score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_fang_cd ec.var matches 100.. run scoreboard players set #rd_gi_fang_cd ec.var 0

execute if score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_fang_cd ec.var matches 40.. run function evercraft:raids/boss/grand_illusionist/abilities/evoker_fangs
execute if score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_fang_cd ec.var matches 40.. run scoreboard players set #rd_gi_fang_cd ec.var 0

# ── Vex swarms (every 150t normal, 80t panic) ──
scoreboard players add #rd_gi_vex_cd ec.var 1

execute unless score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_vex_cd ec.var matches 150.. run function evercraft:raids/boss/grand_illusionist/abilities/summon_vex
execute unless score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_vex_cd ec.var matches 150.. run scoreboard players set #rd_gi_vex_cd ec.var 0

execute if score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_vex_cd ec.var matches 80.. run function evercraft:raids/boss/grand_illusionist/abilities/summon_vex
execute if score #rd_gi_ravager_dead ec.var matches 1 if score #rd_gi_vex_cd ec.var matches 80.. run scoreboard players set #rd_gi_vex_cd ec.var 0

# ── Panic particles ──
execute if score #rd_gi_ravager_dead ec.var matches 1 as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:angry_villager ~ ~2 ~ 0.3 0.3 0.3 0 1
