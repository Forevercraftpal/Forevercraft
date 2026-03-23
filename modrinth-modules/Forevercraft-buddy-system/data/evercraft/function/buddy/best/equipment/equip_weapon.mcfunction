# Best Buddy Equipment — Equip Weapon
# @s = player
# Stores the held weapon into buddy's weapon slot in storage
# Called from GUI (Phase 5) — placeholder for storage logic

# Verify best buddy exists
execute unless score @s ec.bd_best_active matches 1 run return fail

# Store weapon from player's mainhand to buddy storage
data modify storage evercraft:buddy temp_equip.weapon set from entity @s SelectedItem

# Confirmation
tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Weapon equipped to your Best Buddy!",color:"green"}]
playsound minecraft:item.armor.equip_chain master @s ~ ~ ~ 0.8 1.2
