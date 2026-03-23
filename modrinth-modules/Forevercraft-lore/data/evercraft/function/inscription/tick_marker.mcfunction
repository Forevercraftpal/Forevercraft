# Inscription Stone — Per-marker tick (runs as marker, at marker)
# OPT: Consolidates @e scans into 1 per-marker function call

# Apply type-specific effects (tag-gated — only the matching branch runs)
execute if entity @s[tag=ec.inscr_frostbite] run function evercraft:inscription/effects/frostbite
execute if entity @s[tag=ec.inscr_life_steal] run function evercraft:inscription/effects/life_steal
execute if entity @s[tag=ec.inscr_gold_greed] run function evercraft:inscription/effects/gold_greed
execute if entity @s[tag=ec.inscr_absorption] run function evercraft:inscription/effects/absorption
execute if entity @s[tag=ec.inscr_guardian] run function evercraft:inscription/effects/guardian
execute if entity @s[tag=ec.inscr_thornmail] run function evercraft:inscription/effects/thornmail
execute if entity @s[tag=ec.inscr_force] run function evercraft:inscription/effects/force
execute if entity @s[tag=ec.inscr_growth] run function evercraft:inscription/effects/growth
execute if entity @s[tag=ec.inscr_haste] run function evercraft:inscription/effects/haste
execute if entity @s[tag=ec.inscr_wind] run function evercraft:inscription/effects/wind
execute if entity @s[tag=ec.inscr_fortify] run function evercraft:inscription/effects/fortify
execute if entity @s[tag=ec.inscr_reveal] run function evercraft:inscription/effects/reveal
execute if entity @s[tag=ec.inscr_wild_magic] run function evercraft:inscription/effects/mysterious_effect

# === Resonance — bonus when 2+ same-type stones within 48 blocks ===
# OPT: Only remove attribute modifiers if marker was resonating last tick
execute if entity @s[tag=ec.inscr_was_res,tag=ec.inscr_guardian] as @a[distance=..48] run attribute @s armor modifier remove evercraft:inscr_guardian_res
execute if entity @s[tag=ec.inscr_was_res,tag=ec.inscr_force] as @a[distance=..48] run attribute @s attack_damage modifier remove evercraft:inscr_force_res

# OPT: Gate resonance on ANY nearby stone first (1 @e scan)
execute unless entity @e[type=marker,tag=ec.inscr_stone,distance=1..48,limit=1] run tag @s add ec.inscr_no_res

# Same-type resonance detection (original 5 + new 5 types)
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_frostbite] if entity @e[type=marker,tag=ec.inscr_frostbite,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_absorption] if entity @e[type=marker,tag=ec.inscr_absorption,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_guardian] if entity @e[type=marker,tag=ec.inscr_guardian,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_force,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_growth] if entity @e[type=marker,tag=ec.inscr_growth,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_haste] if entity @e[type=marker,tag=ec.inscr_haste,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_wind] if entity @e[type=marker,tag=ec.inscr_wind,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_fortify] if entity @e[type=marker,tag=ec.inscr_fortify,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_reveal] if entity @e[type=marker,tag=ec.inscr_reveal,distance=1..48,limit=1] run tag @s add ec.inscr_res
execute unless entity @s[tag=ec.inscr_no_res] if entity @s[tag=ec.inscr_wild_magic] if entity @e[type=marker,tag=ec.inscr_wild_magic,distance=1..48,limit=1] run tag @s add ec.inscr_res
tag @s remove ec.inscr_no_res

# Apply resonance effects (original types)
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_frostbite] run effect give @e[type=#evercraft:hostile_mobs,distance=..48] mining_fatigue 7 0 true
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_absorption] run effect give @a[distance=..48] absorption 7 1 true
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_guardian] as @a[distance=..48] run attribute @s armor modifier add evercraft:inscr_guardian_res 2 add_value
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_force] as @a[distance=..48] run attribute @s attack_damage modifier add evercraft:inscr_force_res 0.1 add_multiplied_base
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_growth] run function evercraft:inscription/effects/growth

# Apply resonance effects (new types)
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_haste] run effect give @a[distance=..48] haste 7 1 true
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_wind] run effect give @a[distance=..48] speed 7 1 true
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_wind] run effect give @a[distance=..48] jump_boost 7 1 true
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_fortify] run effect give @a[distance=..48] strength 7 1 true
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_reveal] run effect give @e[type=#evercraft:hostile_mobs,distance=..48] glowing 7 1 true
execute if entity @s[tag=ec.inscr_res,tag=ec.inscr_wild_magic] run effect give @a[distance=..48] luck 7 0 true

# OPT: Single resonance particle line
execute if entity @s[tag=ec.inscr_res] if entity @a[distance=..32] run particle soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 2

# Track resonance state for next tick
tag @s remove ec.inscr_was_res
execute if entity @s[tag=ec.inscr_res] run tag @s add ec.inscr_was_res
tag @s remove ec.inscr_res

# Rune Word Combos — cross-type stone combinations within 5 blocks
function evercraft:inscription/rune_words

# Particles (only near players)
execute if entity @a[distance=..32] run function evercraft:inscription/particles

# Block-removed check (polished_deepslate broken?)
execute unless block ~ ~-0.5 ~ polished_deepslate run function evercraft:inscription/on_break
