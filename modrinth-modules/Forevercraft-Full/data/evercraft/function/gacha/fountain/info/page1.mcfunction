# Page 1: Common (6) + Uncommon (6) + Rare (6) = 18 items
# Runs positioned at anchor location
# Grid: 6 columns (^0.75 to ^-0.75), 3 rows (^0.25, ^0.00, ^-0.25)

# === ROW 1: Common ===
# Slot 0: XP Bottles
execute positioned ^0.75 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"experience_bottle",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.75 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot0","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 1: Common Awakening Stone (amethyst_shard)
execute positioned ^0.45 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"amethyst_shard",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.45 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot1","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 2: Random Glyph (paper)
execute positioned ^0.15 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"paper",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.15 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot2","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 3: Diamonds x3
execute positioned ^-0.15 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"diamond",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.15 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot3","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 4: Crumb of Dreams (bread)
execute positioned ^-0.45 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"bread",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.45 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot4","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 5: Emeralds x8
execute positioned ^-0.75 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"emerald",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.75 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot5","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# === ROW 2: Uncommon ===
# Slot 6: Uncommon Awakening Stone (amethyst_shard)
execute positioned ^0.75 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"amethyst_shard",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.75 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot6","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 7: Essentials Satchel (barrel)
execute positioned ^0.45 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.45 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot7","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 8: Dungeon Key (tripwire_hook)
execute positioned ^0.15 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"tripwire_hook",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.15 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot8","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 9: Companion Treat (cookie)
execute positioned ^-0.15 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"cookie",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.15 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot9","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 10: Netherite Scraps x2
execute positioned ^-0.45 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"netherite_scrap",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.45 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot10","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 11: Uncommon Artifact Crate (barrel)
execute positioned ^-0.75 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.75 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot11","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# === ROW 3: Rare ===
# Slot 12: Rare Artifact Crate (barrel)
execute positioned ^0.75 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.75 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot12","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 13: Tree Token (prismarine_crystals)
execute positioned ^0.45 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"prismarine_crystals",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.45 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot13","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 14: Tree Shard (prismarine_shard)
execute positioned ^0.15 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"prismarine_shard",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.15 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot14","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 15: Potion of Dreams (potion)
execute positioned ^-0.15 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"potion",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.15 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot15","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 16: Coin of Lucidity (gold_nugget)
execute positioned ^-0.45 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"gold_nugget",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.45 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot16","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 17: Rare Companion Crate (barrel)
execute positioned ^-0.75 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.75 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot17","smithed.entity"],width:0.08f,height:0.05f,response:1b}
