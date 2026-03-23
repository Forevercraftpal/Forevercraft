# Best Buddy Equipment — Unequip
# @s = player
# Removes equipment from a slot and returns to player inventory
# Slot determined by #bd_equip_slot ec.temp (0=weapon, 1=artifact, 2-4=accessory)

execute unless score @s ec.bd_best_active matches 1 run return fail

# Weapon slot — copy from storage to player via hopper_minecart
execute if score #bd_equip_slot ec.temp matches 0 if data storage evercraft:buddy temp_equip.weapon run function evercraft:buddy/best/equipment/return_item_weapon
execute if score #bd_equip_slot ec.temp matches 0 run data remove storage evercraft:buddy temp_equip.weapon

# Artifact slot — copy from storage to player via hopper_minecart
execute if score #bd_equip_slot ec.temp matches 1 if data storage evercraft:buddy temp_equip.artifact run function evercraft:buddy/best/equipment/return_item_artifact
execute if score #bd_equip_slot ec.temp matches 1 run data remove storage evercraft:buddy temp_equip.artifact

tellraw @s [{"text":"[Buddy] ","color":"#FFD700"},{"text":"Equipment removed from your Best Buddy.","color":"yellow"}]
playsound minecraft:item.armor.unequip_chain master @s ~ ~ ~ 0.8 1
