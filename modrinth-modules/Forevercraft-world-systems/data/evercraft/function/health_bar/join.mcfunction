# RPG Health Bar — Player Join
# Claims a boss bar slot for this player (or re-assigns existing slot on rejoin)
# Context: as joining player

# If player already has a slot (rejoin), re-assign them to their bar
execute if score @s hb.slot matches 1.. run function evercraft:health_bar/reassign
execute if score @s hb.slot matches 1.. run return 0

# Claim first available slot
execute if score #hb_slot_1 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"1"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_2 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"2"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_3 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"3"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_4 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"4"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_5 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"5"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_6 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"6"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_7 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"7"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_8 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"8"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_9 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"9"}
execute if score @s hb.slot matches 1.. run return 0
execute if score #hb_slot_10 hb.slot matches 0 run function evercraft:health_bar/claim_slot {slot:"10"}
