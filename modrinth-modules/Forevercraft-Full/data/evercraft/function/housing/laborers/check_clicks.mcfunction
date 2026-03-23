# ============================================================
# Laborers Sub-Menu — Check for clicks
# Run as: player with HS.InLaborers, at player
# ============================================================

# Hire buttons (each type)
execute as @e[type=interaction,tag=HS.LbHireMinerBtn,distance=..5] if data entity @s interaction run function evercraft:housing/laborers/click_hire {type:"miner",type_tag:"ec.lb_miner",display_name:"Miner",cost:16,rank_req:10,profession:"toolsmith",color:"#FFB74D"}
execute as @e[type=interaction,tag=HS.LbHireFarmerBtn,distance=..5] if data entity @s interaction run function evercraft:housing/laborers/click_hire {type:"farmer",type_tag:"ec.lb_farmer",display_name:"Farmer",cost:16,rank_req:10,profession:"farmer",color:"#66BB6A"}
execute as @e[type=interaction,tag=HS.LbHireFisherBtn,distance=..5] if data entity @s interaction run function evercraft:housing/laborers/click_hire {type:"fisher",type_tag:"ec.lb_fisher",display_name:"Fisher",cost:16,rank_req:10,profession:"fisherman",color:"#4FC3F7"}
execute as @e[type=interaction,tag=HS.LbHireWoodcutterBtn,distance=..5] if data entity @s interaction run function evercraft:housing/laborers/click_hire {type:"woodcutter",type_tag:"ec.lb_woodcutter",display_name:"Woodcutter",cost:24,rank_req:20,profession:"toolsmith",color:"#8D6E63"}
execute as @e[type=interaction,tag=HS.LbHireForagerBtn,distance=..5] if data entity @s interaction run function evercraft:housing/laborers/click_hire {type:"forager",type_tag:"ec.lb_forager",display_name:"Forager",cost:24,rank_req:20,profession:"cleric",color:"#9CCC65"}
execute as @e[type=interaction,tag=HS.LbHireProspectorBtn,distance=..5] if data entity @s interaction run function evercraft:housing/laborers/click_hire {type:"prospector",type_tag:"ec.lb_prospector",display_name:"Prospector",cost:48,rank_req:50,profession:"armorer",color:"gold"}

# Back button
execute as @e[type=interaction,tag=HS.LbBackBtn,distance=..5] if data entity @s interaction run function evercraft:housing/laborers/on_back_click
