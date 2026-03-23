# Best Buddy Equipment — Equip Accessory (3 slots)
# @s = player
# Stores accessory into one of 3 slots
# Called from GUI (Phase 5) — placeholder for storage logic

# Verify best buddy exists
execute unless score @s ec.bd_best_active matches 1 run return fail

# Store accessory (slot management will be in GUI)
# For now, append to accessories list
data modify storage evercraft:buddy temp_equip.accessories append from entity @s SelectedItem

# Confirmation
tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Accessory equipped to your Best Buddy!",color:"green"}]
playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ 0.8 1.2
