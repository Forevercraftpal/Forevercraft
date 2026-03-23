# Macro: $(enchant) = enchantment id, $(tag) = entity tag (wm_temp or am_temp)
# Requires #ench_level ec.var = desired enchant level
# Only writes the enchantment if #ench_level > existing level on the item

$execute store result score #existing_ench ec.var run data get entity @e[type=hopper_minecart,tag=$(tag),limit=1] Items[0].components."minecraft:enchantments"."minecraft:$(enchant)"
$execute if score #ench_level ec.var > #existing_ench ec.var store result entity @e[type=hopper_minecart,tag=$(tag),limit=1] Items[0].components."minecraft:enchantments"."minecraft:$(enchant)" int 1 run scoreboard players get #ench_level ec.var
