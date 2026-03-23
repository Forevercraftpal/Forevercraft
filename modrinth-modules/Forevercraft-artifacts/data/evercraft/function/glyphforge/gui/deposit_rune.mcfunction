# Glyphforge — Deposit Glyph from mainhand
# Detects which glyph the player is holding, consumes it, stores on marker

# Block deposit if forge is in progress or complete
execute if score @s rf.state matches 2..3 run tellraw @s [{text:"The forge is already in use!",color:"red"}]
execute if score @s rf.state matches 2..3 run return 0

# Already have a rune deposited?
execute if score @s rf.rune_id matches 1.. run tellraw @s [{text:"Glyph already deposited!",color:"red"}]
execute if score @s rf.rune_id matches 1.. run return 0

# Check each glyph type (1-13) and consume
# 1: Emberheart Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.ember"}}}}] run scoreboard players set @s rf.rune_id 1
execute if score @s rf.rune_id matches 1 run clear @s *[custom_data~{rune:"ec.ember"}] 1
execute if score @s rf.rune_id matches 1 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 1.. run return 1

# 2: Verdant Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.verdant"}}}}] run scoreboard players set @s rf.rune_id 2
execute if score @s rf.rune_id matches 2 run clear @s *[custom_data~{rune:"ec.verdant"}] 1
execute if score @s rf.rune_id matches 2 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 2.. run return 1

# 3: Quicksilver Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.quick"}}}}] run scoreboard players set @s rf.rune_id 3
execute if score @s rf.rune_id matches 3 run clear @s *[custom_data~{rune:"ec.quick"}] 1
execute if score @s rf.rune_id matches 3 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 3.. run return 1

# 4: Obsidian Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.obsidian"}}}}] run scoreboard players set @s rf.rune_id 4
execute if score @s rf.rune_id matches 4 run clear @s *[custom_data~{rune:"ec.obsidian"}] 1
execute if score @s rf.rune_id matches 4 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 4.. run return 1

# 5: Zephyr Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.zephyr"}}}}] run scoreboard players set @s rf.rune_id 5
execute if score @s rf.rune_id matches 5 run clear @s *[custom_data~{rune:"ec.zephyr"}] 1
execute if score @s rf.rune_id matches 5 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 5.. run return 1

# 6: Briar Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.briar"}}}}] run scoreboard players set @s rf.rune_id 6
execute if score @s rf.rune_id matches 6 run clear @s *[custom_data~{rune:"ec.briar"}] 1
execute if score @s rf.rune_id matches 6 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 6.. run return 1

# 7: Stalwart Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.stalwart"}}}}] run scoreboard players set @s rf.rune_id 7
execute if score @s rf.rune_id matches 7 run clear @s *[custom_data~{rune:"ec.stalwart"}] 1
execute if score @s rf.rune_id matches 7 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 7.. run return 1

# 8: Gilded Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.gilded"}}}}] run scoreboard players set @s rf.rune_id 8
execute if score @s rf.rune_id matches 8 run clear @s *[custom_data~{rune:"ec.gilded"}] 1
execute if score @s rf.rune_id matches 8 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 8.. run return 1

# 9: Tidecall Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.tide"}}}}] run scoreboard players set @s rf.rune_id 9
execute if score @s rf.rune_id matches 9 run clear @s *[custom_data~{rune:"ec.tide"}] 1
execute if score @s rf.rune_id matches 9 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 9.. run return 1

# 10: Hearthstone Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.hearth"}}}}] run scoreboard players set @s rf.rune_id 10
execute if score @s rf.rune_id matches 10 run clear @s *[custom_data~{rune:"ec.hearth"}] 1
execute if score @s rf.rune_id matches 10 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 10.. run return 1

# 11: Prism Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.prism"}}}}] run scoreboard players set @s rf.rune_id 11
execute if score @s rf.rune_id matches 11 run clear @s *[custom_data~{rune:"ec.prism"}] 1
execute if score @s rf.rune_id matches 11 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 11.. run return 1

# 12: Tempest Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.tempest"}}}}] run scoreboard players set @s rf.rune_id 12
execute if score @s rf.rune_id matches 12 run clear @s *[custom_data~{rune:"ec.tempest"}] 1
execute if score @s rf.rune_id matches 12 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 12.. run return 1

# 13: Arcanum Glyph
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.arcanum"}}}}] run scoreboard players set @s rf.rune_id 13
execute if score @s rf.rune_id matches 13 run clear @s *[custom_data~{rune:"ec.arcanum"}] 1
execute if score @s rf.rune_id matches 13 run function evercraft:glyphforge/gui/on_deposit
execute if score @s rf.rune_id matches 13.. run return 1

# No valid glyph found
tellraw @s [{text:"Hold a glyph in your mainhand!",color:"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 1.0
