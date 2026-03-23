# Inscription — Check if newly placed stone completes a Rune Word
# @s = newly placed marker (tagged ec.inscr_new), at marker position

# Paradox (Force + Frostbite)
execute if entity @s[tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_frostbite,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Paradox","color":"#FF6B6B","bold":true},{"text":" — Resistance + Fire Resistance","color":"#FFD93D"}]
execute if entity @s[tag=ec.inscr_frostbite] if entity @e[type=marker,tag=ec.inscr_force,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Paradox","color":"#FF6B6B","bold":true},{"text":" — Resistance + Fire Resistance","color":"#FFD93D"}]

# Tempest (Fortify + Wind)
execute if entity @s[tag=ec.inscr_fortify] if entity @e[type=marker,tag=ec.inscr_wind,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Tempest","color":"#87CEEB","bold":true},{"text":" — Jump Boost II","color":"#FFD93D"}]
execute if entity @s[tag=ec.inscr_wind] if entity @e[type=marker,tag=ec.inscr_fortify,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Tempest","color":"#87CEEB","bold":true},{"text":" — Jump Boost II","color":"#FFD93D"}]

# Fury (Haste + Force)
execute if entity @s[tag=ec.inscr_haste] if entity @e[type=marker,tag=ec.inscr_force,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Fury","color":"#E53935","bold":true},{"text":" — Strength II","color":"#FFD93D"}]
execute if entity @s[tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_haste,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Fury","color":"#E53935","bold":true},{"text":" — Strength II","color":"#FFD93D"}]

# Sanctuary (Absorption + Life Steal)
execute if entity @s[tag=ec.inscr_absorption] if entity @e[type=marker,tag=ec.inscr_life_steal,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Sanctuary","color":"#66BB6A","bold":true},{"text":" — Regeneration II","color":"#FFD93D"}]
execute if entity @s[tag=ec.inscr_life_steal] if entity @e[type=marker,tag=ec.inscr_absorption,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Sanctuary","color":"#66BB6A","bold":true},{"text":" — Regeneration II","color":"#FFD93D"}]

# Bastion (Guardian + Thornmail)
execute if entity @s[tag=ec.inscr_guardian] if entity @e[type=marker,tag=ec.inscr_thornmail,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Bastion","color":"#5C6BC0","bold":true},{"text":" — Resistance I Aura","color":"#FFD93D"}]
execute if entity @s[tag=ec.inscr_thornmail] if entity @e[type=marker,tag=ec.inscr_guardian,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Bastion","color":"#5C6BC0","bold":true},{"text":" — Resistance I Aura","color":"#FFD93D"}]

# Oracle (Reveal + Wild Forces)
execute if entity @s[tag=ec.inscr_reveal] if entity @e[type=marker,tag=ec.inscr_wild_magic,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Oracle","color":"#AB47BC","bold":true},{"text":" — Luck + Night Vision","color":"#FFD93D"}]
execute if entity @s[tag=ec.inscr_wild_magic] if entity @e[type=marker,tag=ec.inscr_reveal,tag=!ec.inscr_new,distance=..5,limit=1] run tellraw @a[distance=..24] [{text:""},{"text":"✦ ","color":"gold"},{"text":"Rune Word Formed: ","color":"gray"},{"text":"Oracle","color":"#AB47BC","bold":true},{"text":" — Luck + Night Vision","color":"#FFD93D"}]

# Sound effect for any combo formed
playsound minecraft:block.beacon.activate master @a[distance=..24] ~ ~ ~ 0.6 1.5

# Remove the new tag
tag @s remove ec.inscr_new
