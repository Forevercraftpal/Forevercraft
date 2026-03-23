# ============================================================
# Inscription Stones — On Glyph Use (consume_item handler)
# Fires when ANY glyph is right-clicked (consumed).
# Determines glyph type, then attempts to inscribe polished_deepslate.
# If no valid block found, restores the glyph 1 tick later.
# ============================================================

# Revoke advancement so it can fire again (safe for consume_item — one-shot event)
advancement revoke @s only evercraft:inscription/consume_glyph

# Determine which glyph was consumed via SelectedItem (still in hand at trigger time)
# Store zone type + loot name in shared storage (safe: runs synchronously per-player)
# Also store glyph ID on player scoreboard (for per-player restore in cleanup)

# 1: Emberheart → Force zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.ember"}}}}] run data modify storage evercraft:inscription temp set value {rune:"force",loot:"Emberheart",desc:"Increases attack damage nearby"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.ember"}}}}] run scoreboard players set @s ec.inscr_glyph 1
# 2: Verdant → Growth zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.verdant"}}}}] run data modify storage evercraft:inscription temp set value {rune:"growth",loot:"Verdant",desc:"Accelerates nearby crop growth"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.verdant"}}}}] run scoreboard players set @s ec.inscr_glyph 2
# 3: Quicksilver → Haste zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.quick"}}}}] run data modify storage evercraft:inscription temp set value {rune:"haste",loot:"Quicksilver",desc:"Grants Haste to nearby players"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.quick"}}}}] run scoreboard players set @s ec.inscr_glyph 3
# 4: Obsidian → Thornmail zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.obsidian"}}}}] run data modify storage evercraft:inscription temp set value {rune:"thornmail",loot:"Obsidian",desc:"Grants Resistance to nearby players"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.obsidian"}}}}] run scoreboard players set @s ec.inscr_glyph 4
# 5: Zephyr → Wind zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.zephyr"}}}}] run data modify storage evercraft:inscription temp set value {rune:"wind",loot:"Zephyr",desc:"Grants Speed and Jump Boost nearby"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.zephyr"}}}}] run scoreboard players set @s ec.inscr_glyph 5
# 6: Briar → Guardian zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.briar"}}}}] run data modify storage evercraft:inscription temp set value {rune:"guardian",loot:"Briar",desc:"Increases armor for nearby players"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.briar"}}}}] run scoreboard players set @s ec.inscr_glyph 6
# 7: Stalwart → Fortify zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.stalwart"}}}}] run data modify storage evercraft:inscription temp set value {rune:"fortify",loot:"Stalwart",desc:"Grants Strength to nearby players"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.stalwart"}}}}] run scoreboard players set @s ec.inscr_glyph 7
# 8: Gilded → Gold Greed zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.gilded"}}}}] run data modify storage evercraft:inscription temp set value {rune:"gold_greed",loot:"Gilded",desc:"Increases luck for nearby players"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.gilded"}}}}] run scoreboard players set @s ec.inscr_glyph 8
# 9: Tidecall → Life Steal zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.tide"}}}}] run data modify storage evercraft:inscription temp set value {rune:"life_steal",loot:"Tidecall",desc:"Grants Regeneration to nearby players"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.tide"}}}}] run scoreboard players set @s ec.inscr_glyph 9
# 10: Hearthstone → Absorption zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.hearth"}}}}] run data modify storage evercraft:inscription temp set value {rune:"absorption",loot:"Hearthstone",desc:"Grants Absorption to nearby players"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.hearth"}}}}] run scoreboard players set @s ec.inscr_glyph 10
# 11: Prism → Reveal zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.prism"}}}}] run data modify storage evercraft:inscription temp set value {rune:"reveal",loot:"Prism",desc:"Reveals nearby hostile mobs"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.prism"}}}}] run scoreboard players set @s ec.inscr_glyph 11
# 12: Tempest → Frostbite zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.tempest"}}}}] run data modify storage evercraft:inscription temp set value {rune:"frostbite",loot:"Tempest",desc:"Weakens and slows nearby enemies"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.tempest"}}}}] run scoreboard players set @s ec.inscr_glyph 12
# 13: Arcanum → Wild Forces zone
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.arcanum"}}}}] run data modify storage evercraft:inscription temp set value {rune:"wild_magic",loot:"Arcanum",desc:"Grants random positive effects nearby"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"ec.arcanum"}}}}] run scoreboard players set @s ec.inscr_glyph 13

# Attempt inscription
function evercraft:inscription/try_inscribe
