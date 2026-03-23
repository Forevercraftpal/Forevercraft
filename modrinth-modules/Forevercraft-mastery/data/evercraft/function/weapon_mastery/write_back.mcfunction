# Hopper minecart intermediary for writing item data
# (Player Inventory is read-only via data modify in 1.21.5+)

# Safety: kill any stale minecarts from a previous failed write
kill @e[type=hopper_minecart,tag=wm_temp]

summon hopper_minecart ~ 320 ~ {Tags:["wm_temp"],Items:[]}
item replace entity @e[type=hopper_minecart,tag=wm_temp,limit=1] container.0 from entity @s weapon.mainhand

# Write XP and level
execute store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:custom_data".weapon_xp int 1 run scoreboard players get #wm_xp ec.var
execute store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:custom_data".weapon_level int 1 run scoreboard players get #wm_level ec.var

# If enchants need updating, apply them
# Ensure enchantments component exists — default components aren't stored in entity NBT,
# so execute store result into the levels map silently fails without this
execute if score #wm_enchants_dirty ec.var matches 1 run function evercraft:weapon_mastery/classify_weapon
execute if score #wm_enchants_dirty ec.var matches 1 unless data entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments" run data modify entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments" set value {}
execute if score #wm_enchants_dirty ec.var matches 1 run function evercraft:weapon_mastery/apply_enchants
scoreboard players set #wm_enchants_dirty ec.var 0

# Update mastery lore line (last lore entry)
function evercraft:weapon_mastery/get_xp_cost
execute store result storage evercraft:weapon_mastery lore.level int 1 run scoreboard players get #wm_level ec.var
execute store result storage evercraft:weapon_mastery lore.xp int 1 run scoreboard players get #wm_xp ec.var
execute store result storage evercraft:weapon_mastery lore.cost int 1 run scoreboard players get #wm_xp_cost ec.var
execute store result storage evercraft:weapon_mastery lore.max_level int 1 run scoreboard players get #wm_max_level ec.var
execute store result storage evercraft:weapon_mastery lore.prestige int 1 run scoreboard players get #wm_prestige ec.var
function evercraft:weapon_mastery/update_mastery_lore with storage evercraft:weapon_mastery lore

# Copy back to player
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=wm_temp,limit=1] container.0

# Cleanup (clear Items first so the cart doesn't drop them on kill)
data modify entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=wm_temp]