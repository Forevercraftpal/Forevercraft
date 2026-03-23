# ============================================================
# Inscription Stones — Scrape (shears)
# Run as the marker entity, at the marker position.
# Drops the glyph, decrements owner count, kills all companion entities.
# The polished_deepslate block stays — only the rune is removed.
# ============================================================

# Visual/audio feedback (axe scrape sound + particles)
particle minecraft:scrape ~ ~0.5 ~ 0.3 0.3 0.3 0.02 10
playsound minecraft:item.axe.scrape master @a[distance=..16] ~ ~ ~ 1.0 0.8
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 0.3 0.5

# Drop the correct glyph item based on zone type tag
execute if entity @s[tag=ec.inscr_force] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/emberheart
execute if entity @s[tag=ec.inscr_growth] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/verdant
execute if entity @s[tag=ec.inscr_haste] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/quicksilver
execute if entity @s[tag=ec.inscr_thornmail] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/obsidian
execute if entity @s[tag=ec.inscr_wind] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/zephyr
execute if entity @s[tag=ec.inscr_guardian] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/briar
execute if entity @s[tag=ec.inscr_fortify] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/stalwart
execute if entity @s[tag=ec.inscr_gold_greed] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/gilded
execute if entity @s[tag=ec.inscr_life_steal] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/tidecall
execute if entity @s[tag=ec.inscr_absorption] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/hearthstone
execute if entity @s[tag=ec.inscr_reveal] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/prism
execute if entity @s[tag=ec.inscr_frostbite] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/tempest
execute if entity @s[tag=ec.inscr_wild_magic] run loot spawn ~ ~ ~ loot evercraft:treasure/runes/arcanum

# Decrement owner's stone count (match by UUID[3] stored on marker)
# Use the correct pool counter based on marker tags
execute store result score #inscr_owner ec.var run scoreboard players get @s ec.inscr_owner
execute as @a store result score @s ec.temp run data get entity @s UUID[3]
execute if entity @s[tag=ec.inscr_guild_stone] as @a if score @s ec.temp = #inscr_owner ec.var run scoreboard players remove @s ec.inscr_guild_count 1
execute if entity @s[tag=ec.inscr_home_stone] as @a if score @s ec.temp = #inscr_owner ec.var run scoreboard players remove @s ec.inscr_home_count 1
execute unless entity @s[tag=ec.inscr_guild_stone] unless entity @s[tag=ec.inscr_home_stone] as @a if score @s ec.temp = #inscr_owner ec.var run scoreboard players remove @s ec.inscr_count 1
execute as @a if score @s ec.inscr_count matches ..-1 run scoreboard players set @s ec.inscr_count 0
execute as @a if score @s ec.inscr_guild_count matches ..-1 run scoreboard players set @s ec.inscr_guild_count 0
execute as @a if score @s ec.inscr_home_count matches ..-1 run scoreboard players set @s ec.inscr_home_count 0

# Kill companion visual + interaction entities (limit=1 safety)
kill @e[type=block_display,tag=ec.inscr_visual,distance=..1,limit=1]
kill @e[type=interaction,tag=ec.inscr_interact,distance=..1,limit=1]

# Kill the marker
kill @s
