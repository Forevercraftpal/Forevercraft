# Page 2: Ornate (5) + Exquisite (7) + Mythical first 6 = 18 items
# Runs positioned at anchor location
# Grid: 6 columns (^0.75 to ^-0.75), 3 rows (^0.25, ^0.00, ^-0.25)

# === ROW 1: Ornate (5) + Exquisite first ===
# Slot 0: Ornate Artifact Crate (barrel)
execute positioned ^0.75 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.75 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot0","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 1: Seed of Forgetting (torchflower_seeds)
execute positioned ^0.45 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"torchflower_seeds",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.45 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot1","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 2: Exclusive Particle (firework_rocket)
execute positioned ^0.15 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"firework_rocket",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.15 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot2","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 3: Exclusive Title (name_tag)
execute positioned ^-0.15 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"name_tag",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.15 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot3","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 4: Ornate Companion Crate (barrel)
execute positioned ^-0.45 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.45 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot4","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 5: Exquisite Artifact Crate (barrel)
execute positioned ^-0.75 ^0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.75 ^0.24 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot5","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# === ROW 2: Exquisite continued ===
# Slot 6: Exquisite Companion Crate (barrel)
execute positioned ^0.75 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"barrel",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.75 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot6","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 7: Lore Piece (book)
execute positioned ^0.45 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"book",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.45 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot7","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 8: Netherite Block
execute positioned ^0.15 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"netherite_block",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.15 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot8","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 9: Hearthstone (lodestone)
execute positioned ^-0.15 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"lodestone",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.15 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot9","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 10: Guidestone (lodestone)
execute positioned ^-0.45 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"lodestone",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.45 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot10","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 11: Glyphforge (lodestone)
execute positioned ^-0.75 ^0.0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"lodestone",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.75 ^-0.01 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot11","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# === ROW 3: Mythical first 6 ===
# Slot 12: The Starless Night (netherite_sword)
execute positioned ^0.75 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"netherite_sword",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.75 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot12","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 13: Shooting Star (bow)
execute positioned ^0.45 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"bow",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.45 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot13","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 14: Dreamcast Compass (compass)
execute positioned ^0.15 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"compass",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^0.15 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot14","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 15: Hero's Helmet (netherite_helmet)
execute positioned ^-0.15 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"netherite_helmet",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.15 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot15","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 16: Hero's Chestplate (netherite_chestplate)
execute positioned ^-0.45 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"netherite_chestplate",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.45 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot16","smithed.entity"],width:0.08f,height:0.05f,response:1b}

# Slot 17: Hero's Leggings (netherite_leggings)
execute positioned ^-0.75 ^-0.25 ^0 run summon item_display ~ ~ ~ {Tags:["ec.GachaInfoSlot","smithed.entity"],billboard:"center",item:{id:"netherite_leggings",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}
execute positioned ^-0.75 ^-0.26 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoSlot","ec.GachaSlot17","smithed.entity"],width:0.08f,height:0.05f,response:1b}
