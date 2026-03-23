# ============================================================
# Black Market — Try Sell
# Validates, escrows item, removes from inventory
# Player must have appraised first (ec.bm_price > 0)
# ============================================================

# Must have appraised first
execute if score @s ec.bm_price matches 0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Click [Appraise] first to value your item!",color:"red"}]

# Check listing limit
execute if score @s ec.bm_listings matches 5.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Escrow full! You can only list 5 items. Reclaim some first.",color:"red"}]

# Verify mainhand still has an item
execute unless items entity @s weapon.mainhand * run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your mainhand is empty!",color:"red"}]

# Re-verify price hasn't changed (player might have swapped items after appraising)
scoreboard players set #bm_verify ec.bm_temp 0
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"common"}] run scoreboard players set #bm_verify ec.bm_temp 1
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"uncommon"}] run scoreboard players set #bm_verify ec.bm_temp 2
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"rare"}] run scoreboard players set #bm_verify ec.bm_temp 4
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate"}] run scoreboard players set #bm_verify ec.bm_temp 8
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"exquisite"}] run scoreboard players set #bm_verify ec.bm_temp 16
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"mythical"}] run scoreboard players set #bm_verify ec.bm_temp 32
# Vanilla checks (abbreviated — key items only)
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand enchanted_golden_apple run scoreboard players set #bm_verify ec.bm_temp 6
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand totem_of_undying run scoreboard players set #bm_verify ec.bm_temp 4
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand elytra run scoreboard players set #bm_verify ec.bm_temp 16
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand trident run scoreboard players set #bm_verify ec.bm_temp 5
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand nether_star run scoreboard players set #bm_verify ec.bm_temp 8
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand mace run scoreboard players set #bm_verify ec.bm_temp 5
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand heavy_core run scoreboard players set #bm_verify ec.bm_temp 4
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand beacon run scoreboard players set #bm_verify ec.bm_temp 10
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand dragon_egg run scoreboard players set #bm_verify ec.bm_temp 12
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand conduit run scoreboard players set #bm_verify ec.bm_temp 4
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand heart_of_the_sea run scoreboard players set #bm_verify ec.bm_temp 3
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand diamond_block run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand emerald_block run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand sponge run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand shulker_shell run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_sword run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_pickaxe run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_axe run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_shovel run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_hoe run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_helmet run scoreboard players set #bm_verify ec.bm_temp 1
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_chestplate run scoreboard players set #bm_verify ec.bm_temp 2
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_leggings run scoreboard players set #bm_verify ec.bm_temp 2
execute if score #bm_verify ec.bm_temp matches 0 if items entity @s weapon.mainhand netherite_boots run scoreboard players set #bm_verify ec.bm_temp 1

# If verify doesn't match appraised price, item was swapped — reject
execute unless score #bm_verify ec.bm_temp = @s ec.bm_price run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Item changed! Click [Appraise] again.",color:"red"}]

# === ESCROW THE ITEM ===
# Copy SelectedItem to temp storage
data modify storage eden:database black_market.temp.escrow_item set value {}
data modify storage eden:database black_market.temp.escrow_item.item set from entity @s SelectedItem
execute store result storage eden:database black_market.temp.escrow_item.price int 1 run scoreboard players get @s ec.bm_price
execute store result storage eden:database black_market.temp.escrow_item.day int 1 run time query day

# Get player UUID for per-player storage
function evercraft:black_market/escrow/save_listing

# Remove item from mainhand (1 count)
item replace entity @s weapon.mainhand with minecraft:air

# Increment listing count
scoreboard players add @s ec.bm_listings 1

# Reset appraised price (force re-appraise for next item)
scoreboard players set @s ec.bm_price 0

# Feedback
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.6 0.8
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Item listed for sale! It may be bought within a few days.",color:"gold"}]

# Refresh sell tab (update listing count + clear appraisal)
function evercraft:black_market/gui/refresh
