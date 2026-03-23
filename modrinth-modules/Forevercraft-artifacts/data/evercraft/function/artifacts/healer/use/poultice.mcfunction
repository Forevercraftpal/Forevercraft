# Herbal Poultice — Common Healer
# Heals SELF for 2 hearts (4 HP)
# Cooldown: 12 seconds

advancement revoke @s only evercraft:artifacts/healer/use_poultice
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"poultice"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 2
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_poultice matches 1.. run tellraw @s [{"text":"[Herbal Poultice] ","color":"white"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_poultice"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_poultice matches 1.. run return 0

# === HEAL (self only) ===
effect give @s instant_health 1 1 false

# Feedback
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.0
execute at @s run particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0.1 5
tellraw @s [{"text":"[Herbal Poultice] ","color":"white"},{"text":"Healed self for 2 hearts","color":"green"}]

scoreboard players set @s ec.hl_poultice 12
scoreboard players set @s ec.hl_locked 1
