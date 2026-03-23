# Best Buddy Equipment — Equip Artifact
# @s = player
# Stores the held artifact into buddy's artifact slot in storage
# Called from GUI (Phase 5) — placeholder for storage logic

# Verify best buddy exists
execute unless score @s ec.bd_best_active matches 1 run return fail

# Store artifact from player's mainhand to buddy storage
data modify storage evercraft:buddy temp_equip.artifact set from entity @s SelectedItem

# Confirmation
tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Artifact equipped to your Best Buddy!",color:"green"}]
playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 0.8 1.2
