# Inscription — Inspect (right-click without shears)
# Run as the marker entity. Shows the glyph name and zone effect to nearby players.

execute if entity @s[tag=ec.inscr_force] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Emberheart Glyph",color:"light_purple"},{text:" — Increases attack damage nearby",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_growth] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Verdant Glyph",color:"light_purple"},{text:" — Accelerates nearby crop growth",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_haste] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Quicksilver Glyph",color:"light_purple"},{text:" — Grants Haste to nearby players",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_thornmail] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Obsidian Glyph",color:"light_purple"},{text:" — Grants Resistance to nearby players",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_wind] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Zephyr Glyph",color:"light_purple"},{text:" — Grants Speed and Jump Boost nearby",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_guardian] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Briar Glyph",color:"light_purple"},{text:" — Increases armor for nearby players",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_fortify] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Stalwart Glyph",color:"light_purple"},{text:" — Grants Strength to nearby players",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_gold_greed] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Gilded Glyph",color:"light_purple"},{text:" — Increases luck for nearby players",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_life_steal] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Tidecall Glyph",color:"light_purple"},{text:" — Grants Regeneration to nearby players",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_absorption] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Hearthstone Glyph",color:"light_purple"},{text:" — Grants Absorption to nearby players",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_reveal] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Prism Glyph",color:"light_purple"},{text:" — Reveals nearby hostile mobs",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_frostbite] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest Glyph",color:"light_purple"},{text:" — Weakens and slows nearby enemies",color:"gray",italic:true}]
execute if entity @s[tag=ec.inscr_wild_magic] run tellraw @a[distance=..5] [{text:"[Forevercraft] ",color:"gold"},{text:"Arcanum Glyph",color:"light_purple"},{text:" — Grants random positive effects nearby",color:"gray",italic:true}]
