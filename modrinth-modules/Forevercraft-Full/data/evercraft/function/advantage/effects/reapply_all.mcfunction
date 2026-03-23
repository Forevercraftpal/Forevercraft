# Re-apply all attribute-based advantage tree modifiers
# Called on player join to restore persistent effects after relog

execute if score @s adv.agility matches 1.. run function evercraft:advantage/effects/agility
execute if score @s adv.vitality matches 5.. run function evercraft:advantage/effects/vitality
execute if score @s adv.dexterity matches 1.. run function evercraft:advantage/effects/dexterity
# Mining has no persistent modifier — only Surge procs
# Culinary: recalculate Well-Fed bonus percentage
execute if score @s adv.culinary matches 1.. run function evercraft:advantage/effects/culinary

# === DANCER PENALTY (re-apply if player rejoined while holding gauntlets) ===
execute if entity @s[tag=ec.dn_active] run attribute @s armor modifier remove evercraft:dancer_penalty
execute if entity @s[tag=ec.dn_active] run attribute @s armor modifier add evercraft:dancer_penalty -5 add_value
execute if entity @s[tag=ec.dn_active] run attribute @s max_health modifier remove evercraft:dancer_penalty
execute if entity @s[tag=ec.dn_active] run attribute @s max_health modifier add evercraft:dancer_penalty -5 add_value

# === PRESTIGE RETAINED BONUSES ===
# Re-apply permanent prestige attribute modifiers for each tree that has prestige
# Agility: P1=0.17, P2=0.34, P3=0.50 speed
execute if score @s adv.pres_agil matches 1.. run attribute @s movement_speed modifier remove evercraft:adv_pres_agility
execute if score @s adv.pres_agil matches 1 run data modify storage evercraft:advantage retained set value 0.17d
execute if score @s adv.pres_agil matches 2 run data modify storage evercraft:advantage retained set value 0.34d
execute if score @s adv.pres_agil matches 3 run data modify storage evercraft:advantage retained set value 0.50d
execute if score @s adv.pres_agil matches 1.. run function evercraft:advantage/prestige/apply_retained_agility with storage evercraft:advantage

# Dexterity: P1=0.085, P2=0.17, P3=0.25 reach
execute if score @s adv.pres_dext matches 1.. run attribute @s block_interaction_range modifier remove evercraft:adv_pres_dexterity
execute if score @s adv.pres_dext matches 1.. run attribute @s entity_interaction_range modifier remove evercraft:adv_pres_dexterity
execute if score @s adv.pres_dext matches 1 run data modify storage evercraft:advantage retained set value 0.085d
execute if score @s adv.pres_dext matches 2 run data modify storage evercraft:advantage retained set value 0.17d
execute if score @s adv.pres_dext matches 3 run data modify storage evercraft:advantage retained set value 0.25d
execute if score @s adv.pres_dext matches 1.. run function evercraft:advantage/prestige/apply_retained_dexterity with storage evercraft:advantage

# Stealth: P1=0.17, P2=0.34, P3=0.50 sneak speed
execute if score @s adv.pres_stea matches 1.. run attribute @s sneaking_speed modifier remove evercraft:adv_pres_stealth
execute if score @s adv.pres_stea matches 1 run data modify storage evercraft:advantage retained set value 0.17d
execute if score @s adv.pres_stea matches 2 run data modify storage evercraft:advantage retained set value 0.34d
execute if score @s adv.pres_stea matches 3 run data modify storage evercraft:advantage retained set value 0.50d
execute if score @s adv.pres_stea matches 1.. run function evercraft:advantage/prestige/apply_retained_stealth with storage evercraft:advantage

# Vitality: P1=7 HP, P2=14 HP, P3=21 HP
execute if score @s adv.pres_vita matches 1.. run attribute @s max_health modifier remove evercraft:adv_pres_vitality
execute if score @s adv.pres_vita matches 1 run data modify storage evercraft:advantage retained set value 7.0d
execute if score @s adv.pres_vita matches 2 run data modify storage evercraft:advantage retained set value 14.0d
execute if score @s adv.pres_vita matches 3 run data modify storage evercraft:advantage retained set value 21.0d
execute if score @s adv.pres_vita matches 1.. run function evercraft:advantage/prestige/apply_retained_vitality with storage evercraft:advantage

# === PRESTIGE PERMANENT EFFECTS ===
# Vitality P3: Iron Will — Permanent Resistance I (floor effect)
# Harmonization also counts this as a Resistance I source for compounding
# This provides the permanent base; harmonization can compound it higher when stacked
execute if score @s adv.pres_vita matches 3 run effect give @s minecraft:resistance infinite 0 true

# Dexterity P3: Extended Reach — reach to 8 blocks
execute if score @s adv.pres_dext matches 3 run attribute @s block_interaction_range modifier remove evercraft:adv_pres_dex3
execute if score @s adv.pres_dext matches 3 run attribute @s block_interaction_range modifier add evercraft:adv_pres_dex3 3.5 add_value
execute if score @s adv.pres_dext matches 3 run attribute @s entity_interaction_range modifier remove evercraft:adv_pres_dex3
execute if score @s adv.pres_dext matches 3 run attribute @s entity_interaction_range modifier add evercraft:adv_pres_dex3 5.0 add_value

# Dexterity P1: Quick Draw — +15% attack speed
execute if score @s adv.pres_dext matches 1.. run attribute @s attack_speed modifier remove evercraft:adv_pres_dex1
execute if score @s adv.pres_dext matches 1.. run attribute @s attack_speed modifier add evercraft:adv_pres_dex1 0.15 add_multiplied_base

# Dexterity P2: Dual Wield — +25% attack speed (stacks with P1)
execute if score @s adv.pres_dext matches 2.. run attribute @s attack_speed modifier remove evercraft:adv_pres_dex2
execute if score @s adv.pres_dext matches 2.. run attribute @s attack_speed modifier add evercraft:adv_pres_dex2 0.25 add_multiplied_base

# Taskmaster P2: Renowned — +1 Dream Rate
execute if score @s adv.pa_task2 matches 1 run attribute @s luck modifier remove evercraft:adv_pres_task2
execute if score @s adv.pa_task2 matches 1 run attribute @s luck modifier add evercraft:adv_pres_task2 1.0 add_value

# Taskmaster P3: Veteran's Instinct — +2 Dream Rate
execute if score @s adv.pa_task3 matches 1 run attribute @s luck modifier remove evercraft:adv_pres_task3
execute if score @s adv.pa_task3 matches 1 run attribute @s luck modifier add evercraft:adv_pres_task3 2.0 add_value

# === PERMANENT DREAM RATE ITEMS (restore lost modifiers on join/death) ===
function evercraft:dreams/reapply_permanent
