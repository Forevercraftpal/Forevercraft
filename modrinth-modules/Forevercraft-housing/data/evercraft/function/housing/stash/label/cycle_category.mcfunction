# ============================================================
# Stash Label — Cycle category on existing labeled container
# Run as: player, positioned at container block center
# Checks current category and advances to next (13 categories)
# ============================================================
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"tools"} run return run function evercraft:housing/stash/label/set_category {category:"weapons",title:"Weapons",color:"red"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"weapons"} run return run function evercraft:housing/stash/label/set_category {category:"armor",title:"Armor",color:"aqua"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"armor"} run return run function evercraft:housing/stash/label/set_category {category:"food",title:"Food",color:"green"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"food"} run return run function evercraft:housing/stash/label/set_category {category:"mob_drops",title:"Mob Drops",color:"dark_purple"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"mob_drops"} run return run function evercraft:housing/stash/label/set_category {category:"garden",title:"Garden",color:"dark_green"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"garden"} run return run function evercraft:housing/stash/label/set_category {category:"redstone",title:"Redstone",color:"dark_red"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"redstone"} run return run function evercraft:housing/stash/label/set_category {category:"amenities",title:"Amenities",color:"blue"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"amenities"} run return run function evercraft:housing/stash/label/set_category {category:"blocks",title:"Blocks",color:"white"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"blocks"} run return run function evercraft:housing/stash/label/set_category {category:"materials",title:"Materials",color:"gold"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"materials"} run return run function evercraft:housing/stash/label/set_category {category:"artifacts",title:"Artifacts",color:"light_purple"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"artifacts"} run return run function evercraft:housing/stash/label/set_category {category:"potions",title:"Potions",color:"dark_aqua"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"potions"} run return run function evercraft:housing/stash/label/set_category {category:"overflow",title:"Overflow",color:"gray"}
execute if data entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] data{category:"overflow"} run return run function evercraft:housing/stash/label/set_category {category:"tools",title:"Tools",color:"yellow"}
