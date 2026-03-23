# Grant an exclusive gacha exquisite companion crate
# Runs as @s = player

execute store result score #pet_roll ec.temp run random value 1..3

# 1: Lunar Moth
execute if score #pet_roll ec.temp matches 1 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_lunar_moth"},custom_name={"text":"Lunar Moth Companion Crate","color":"light_purple","italic":false},lore=[{"text":"Within this crate, wings of moonlight","color":"gray","italic":true},{"text":"flutter against the dark, waiting to be freed.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"light_purple"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"exquisite"},enchantment_glint_override=true] 1
execute if score #pet_roll ec.temp matches 1 run tellraw @s [{"text":"✦✦ ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Lunar Moth Companion Crate!","color":"#E0B0FF","bold":true},{"text":" ✦✦","color":"#E0B0FF"}]

# 2: Nebula Kit
execute if score #pet_roll ec.temp matches 2 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_nebula_kit"},custom_name={"text":"Nebula Kit Companion Crate","color":"light_purple","italic":false},lore=[{"text":"A tiny constellation curls inside, purring","color":"gray","italic":true},{"text":"with the warmth of a collapsing star.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"light_purple"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"exquisite"},enchantment_glint_override=true] 1
execute if score #pet_roll ec.temp matches 2 run tellraw @s [{"text":"✦✦ ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Nebula Kit Companion Crate!","color":"#E0B0FF","bold":true},{"text":" ✦✦","color":"#E0B0FF"}]

# 3: Twilight Hare
execute if score #pet_roll ec.temp matches 3 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_twilight_hare"},custom_name={"text":"Twilight Hare Companion Crate","color":"light_purple","italic":false},lore=[{"text":"Something swift and silver darts within,","color":"gray","italic":true},{"text":"leaving trails of dusk wherever it leaps.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Reveal your new companion","color":"light_purple"}]},{"text":"Gacha Exclusive","color":"#E0B0FF","italic":true}],custom_data={pc_rarity:"exquisite"},enchantment_glint_override=true] 1
execute if score #pet_roll ec.temp matches 3 run tellraw @s [{"text":"✦✦ ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Twilight Hare Companion Crate!","color":"#E0B0FF","bold":true},{"text":" ✦✦","color":"#E0B0FF"}]

playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 1
