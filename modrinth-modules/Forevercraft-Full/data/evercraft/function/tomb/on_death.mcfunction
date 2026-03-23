# Tomb System — On Death
# @s = player who just died, at their death position
# keepInventory is ON so items are still in player's inventory

# 0a. Newcomer: skip tomb entirely — keepInventory keeps everything, just run boss hook
execute if score @s ec.difficulty matches 1 run return run function evercraft:party/boss/on_death

# 0b. Skip tomb if player has nothing (no items, no armor, no XP)
scoreboard players set #tomb_has_stuff ec.temp 0
execute store result score #tomb_inv ec.temp run clear @s * 0
execute if score #tomb_inv ec.temp matches 1.. run scoreboard players set #tomb_has_stuff ec.temp 1
execute if items entity @s armor.head * run scoreboard players set #tomb_has_stuff ec.temp 1
execute if items entity @s armor.chest * run scoreboard players set #tomb_has_stuff ec.temp 1
execute if items entity @s armor.legs * run scoreboard players set #tomb_has_stuff ec.temp 1
execute if items entity @s armor.feet * run scoreboard players set #tomb_has_stuff ec.temp 1
execute if items entity @s weapon.offhand * run scoreboard players set #tomb_has_stuff ec.temp 1
execute store result score #tomb_xp ec.temp run xp query @s levels
execute if score #tomb_xp ec.temp matches 1.. run scoreboard players set #tomb_has_stuff ec.temp 1
execute if score #tomb_has_stuff ec.temp matches 0 run return run function evercraft:party/boss/on_death

# 1. Detect best sword in inventory
function evercraft:tomb/detect_sword

# 2. Store player UUID to scoreboards for grave matching
function evercraft:tomb/store_uuid

# 3. Copy UUID scores to fake-player temps so sub-functions can reference them
# (avoids @p issues when player has already respawned far away)
scoreboard players operation #tomb_p_uuid0 ec.temp = @s ec.tomb_uuid0
scoreboard players operation #tomb_p_uuid1 ec.temp = @s ec.tomb_uuid1
scoreboard players operation #tomb_p_uuid2 ec.temp = @s ec.tomb_uuid2
scoreboard players operation #tomb_p_uuid3 ec.temp = @s ec.tomb_uuid3

# 3b. Save spirit artifacts to vault before tomb takes inventory
execute if entity @s[tag=ec.sp_active] run function evercraft:spirit/soulbound/death_keep

# 4. Store inventory, equipment, and XP to temp storage
function evercraft:tomb/store_inventory

# 5. Clear player inventory, equipment, and XP
clear @s
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
xp set @s 0 levels
xp set @s 0 points

# 6. Enforce max 3 graves — shatter oldest if at cap
function evercraft:tomb/enforce_cap

# 7. Assign a unique grave ID
scoreboard players operation @s ec.tomb_id = #tomb_next_id ec.var
scoreboard players add #tomb_next_id ec.var 1

# 8. Spawn the grave at death position
function evercraft:tomb/spawn_grave

# 9. Play death sounds
function evercraft:tomb/sounds/death

# 10. Send death message (to the dead player only)
tellraw @s [{"text":"\n"},{"text":"You fell in the battle, maybe you can find something to guide you back...","color":"gray","italic":true},{"text":"\n"}]

# 11. Party boss fight — apply Weakness on respawn (anti-death-zerg)
function evercraft:party/boss/on_death
