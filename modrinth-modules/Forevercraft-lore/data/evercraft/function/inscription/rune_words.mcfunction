# Inscription — Rune Word Combos
# Runs as each stone marker. Checks for cross-type stones within 5 blocks.
# If valid combo found, applies special combined effect to nearby players.
# 6 Rune Words (each fires from either partner stone):

# === Paradox (Force + Frostbite) ===
# Resistance I + Fire Resistance to players
execute if entity @s[tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_frostbite,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.inscr_frostbite] if entity @e[type=marker,tag=ec.inscr_force,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_frostbite,distance=..5,limit=1] run effect give @a[distance=..12] resistance 7 0 true
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_frostbite,distance=..5,limit=1] run effect give @a[distance=..12] fire_resistance 7 0 true

# === Tempest (Fortify + Wind) ===
# Jump Boost II to players
execute if entity @s[tag=ec.inscr_fortify] if entity @e[type=marker,tag=ec.inscr_wind,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.inscr_wind] if entity @e[type=marker,tag=ec.inscr_fortify,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_fortify] if entity @e[type=marker,tag=ec.inscr_wind,distance=..5,limit=1] run effect give @a[distance=..12] jump_boost 7 1 true

# === Fury (Haste + Force) ===
# Strength II to players
execute if entity @s[tag=ec.inscr_haste] if entity @e[type=marker,tag=ec.inscr_force,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_haste,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_haste] if entity @e[type=marker,tag=ec.inscr_force,distance=..5,limit=1] run effect give @a[distance=..12] strength 7 1 true

# === Sanctuary (Absorption + Life Steal) ===
# Regeneration II to players
execute if entity @s[tag=ec.inscr_absorption] if entity @e[type=marker,tag=ec.inscr_life_steal,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.inscr_life_steal] if entity @e[type=marker,tag=ec.inscr_absorption,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_absorption] if entity @e[type=marker,tag=ec.inscr_life_steal,distance=..5,limit=1] run effect give @a[distance=..12] regeneration 7 1 true

# === Bastion (Guardian + Thornmail) ===
# +4 armor attribute + Resistance I to players
execute if entity @s[tag=ec.inscr_guardian] if entity @e[type=marker,tag=ec.inscr_thornmail,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.inscr_thornmail] if entity @e[type=marker,tag=ec.inscr_guardian,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_guardian] if entity @e[type=marker,tag=ec.inscr_thornmail,distance=..5,limit=1] run effect give @a[distance=..12] resistance 7 0 true

# === Oracle (Reveal + Wild Forces) ===
# Luck I + Night Vision to players
execute if entity @s[tag=ec.inscr_reveal] if entity @e[type=marker,tag=ec.inscr_wild_magic,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.inscr_wild_magic] if entity @e[type=marker,tag=ec.inscr_reveal,distance=..5,limit=1] run tag @s add ec.rw_active
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_reveal] if entity @e[type=marker,tag=ec.inscr_wild_magic,distance=..5,limit=1] run effect give @a[distance=..12] luck 7 0 true
execute if entity @s[tag=ec.rw_active,tag=ec.inscr_reveal] if entity @e[type=marker,tag=ec.inscr_wild_magic,distance=..5,limit=1] run effect give @a[distance=..12] night_vision 7 0 true

# Rune Word particle effect (distinct from resonance)
execute if entity @s[tag=ec.rw_active] if entity @a[distance=..32] run particle minecraft:enchant ~ ~0.8 ~ 0.3 0.3 0.3 0.5 5

# Clean up tag
tag @s remove ec.rw_active
