# Tidecaller — Passive: Luck V + Conduit Power + Water Breathing
# Run as/at: player holding Tidecaller's Line

# Luck V base — affinity upgrades to VI/VII/VIII for better treasure
execute if score #st_effect_cd ec.var matches 0 run effect give @s luck 3 4 true
execute if score @s ec.caff_boost matches 5..9 if score #st_effect_cd ec.var matches 0 run effect give @s luck 3 5 true
execute if score @s ec.caff_boost matches 10..14 if score #st_effect_cd ec.var matches 0 run effect give @s luck 3 6 true
execute if score @s ec.caff_boost matches 15.. if score #st_effect_cd ec.var matches 0 run effect give @s luck 3 7 true
execute if score #st_effect_cd ec.var matches 0 run effect give @s water_breathing 5 0 true
execute if score #st_effect_cd ec.var matches 0 run effect give @s conduit_power 5 0 true

# Water drip particles
execute if score #st_effect_cd ec.var matches 0 run particle minecraft:dripping_water ~ ~2 ~ 0.3 0.3 0.3 0.01 3
execute if score #st_effect_cd ec.var matches 20 run particle minecraft:fishing ~ ~0.1 ~ 1 0 1 0.01 3

# === FISH CATCH DETECTION (stat delta → crafting affinity XP) ===
# Compare current fish_caught with previous snapshot
execute unless score @s ec.tt_s_fish = @s ec.st_fish_prev run function evercraft:craft_affinity/grant {class_id:5, delta:20}
# Crate drop chance on catch (1% per 10% boost, 2% at mastery)
execute unless score @s ec.tt_s_fish = @s ec.st_fish_prev run function evercraft:craft_affinity/try_crate_drop
scoreboard players operation @s ec.st_fish_prev = @s ec.tt_s_fish

# === WHIRLPOOL TICK (FIX #7: fallback if marker unloaded/missing) ===
execute if score @s ec.st_mastery_t matches 1.. unless entity @e[tag=ec.st_whirlpool,limit=1] run scoreboard players set @s ec.st_mastery_t 0
execute if score @s ec.st_mastery_t matches 1.. unless entity @e[tag=ec.st_whirlpool,limit=1] run title @s actionbar [{"text":"Maelstrom lost — whirlpool too far","color":"gray"}]
execute if score @s ec.st_mastery_t matches 1.. if entity @e[tag=ec.st_whirlpool,limit=1] run function evercraft:craftforever/spirit_tools/tidecaller/whirlpool_tick
