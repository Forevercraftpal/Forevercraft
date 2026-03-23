# Grant an exclusive gacha mythical companion crate
# Runs as @s = player

execute store result score #pet_roll ec.temp run random value 1..3

# 1: Dreamstag
execute if score #pet_roll ec.temp matches 1 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_dreamstag"},max_stack_size=1,custom_name={"text":"Dreamstag Companion Crate","color":"gold","italic":false,"bold":true},lore=[{"text":"Antlers of pure starlight press against","color":"gray","italic":true},{"text":"the walls, yearning for open skies.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"aqua"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"mythical"},enchantment_glint_override=true] 1
execute if score #pet_roll ec.temp matches 1 run tellraw @s [{"text":"✦✦✦ ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Dreamstag Companion Crate!","color":"yellow","bold":true},{"text":" ✦✦✦","color":"gold"}]

# 2: Starweaver
execute if score #pet_roll ec.temp matches 2 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_starweaver"},max_stack_size=1,custom_name={"text":"Starweaver Companion Crate","color":"gold","italic":false,"bold":true},lore=[{"text":"Threads of cosmic light weave and unweave","color":"gray","italic":true},{"text":"inside, stitching constellations into being.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"aqua"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"mythical"},enchantment_glint_override=true] 1
execute if score #pet_roll ec.temp matches 2 run tellraw @s [{"text":"✦✦✦ ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Starweaver Companion Crate!","color":"yellow","bold":true},{"text":" ✦✦✦","color":"gold"}]

# 3: Somnia
execute if score #pet_roll ec.temp matches 3 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_somnia"},max_stack_size=1,custom_name={"text":"Somnia Companion Crate","color":"gold","italic":false,"bold":true},lore=[{"text":"A dream that refused to wake now rests","color":"gray","italic":true},{"text":"here, breathing softly against the wood.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"aqua"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"mythical"},enchantment_glint_override=true] 1
execute if score #pet_roll ec.temp matches 3 run tellraw @s [{"text":"✦✦✦ ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Somnia Companion Crate!","color":"yellow","bold":true},{"text":" ✦✦✦","color":"gold"}]

playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 1.2
