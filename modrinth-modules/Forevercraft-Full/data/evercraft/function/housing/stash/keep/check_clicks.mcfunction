# ============================================================
# Stash Settings — Check for toggle clicks
# Run as: player with HS.InSettings, at player
# ============================================================

# Category toggle clicks
execute as @e[type=interaction,tag=HS.KeepToolsBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"tools",title:"Tools",cat_color:"yellow"}
execute as @e[type=interaction,tag=HS.KeepWeaponsBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"weapons",title:"Weapons",cat_color:"red"}
execute as @e[type=interaction,tag=HS.KeepArmorBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"armor",title:"Armor",cat_color:"aqua"}
execute as @e[type=interaction,tag=HS.KeepFoodBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"food",title:"Food",cat_color:"green"}
execute as @e[type=interaction,tag=HS.KeepMobDropsBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"mob_drops",title:"Mob Drops",cat_color:"dark_purple"}
execute as @e[type=interaction,tag=HS.KeepGardenBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"garden",title:"Garden",cat_color:"dark_green"}
execute as @e[type=interaction,tag=HS.KeepRedstoneBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"redstone",title:"Redstone",cat_color:"dark_red"}
execute as @e[type=interaction,tag=HS.KeepAmenitiesBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"amenities",title:"Amenities",cat_color:"blue"}
execute as @e[type=interaction,tag=HS.KeepBlocksBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"blocks",title:"Blocks",cat_color:"white"}
execute as @e[type=interaction,tag=HS.KeepMaterialsBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"materials",title:"Materials",cat_color:"gold"}
execute as @e[type=interaction,tag=HS.KeepArtifactsBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"artifacts",title:"Artifacts",cat_color:"light_purple"}
execute as @e[type=interaction,tag=HS.KeepPotionsBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/toggle_category {category:"potions",title:"Potions",cat_color:"dark_aqua"}

# Back button
execute as @e[type=interaction,tag=HS.BackBtn,distance=..5] if data entity @s interaction run function evercraft:housing/stash/keep/on_back_click
