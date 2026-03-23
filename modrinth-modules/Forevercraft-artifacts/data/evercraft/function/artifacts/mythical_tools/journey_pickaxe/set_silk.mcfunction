# Journey Pickaxe — Switch to Silk Touch Mode
# @s = player, modifies item in-hand (no replacement)

# Remove Fortune, add Silk Touch, set silk flag
item modify entity @s weapon.mainhand evercraft:fortune_remove
item modify entity @s weapon.mainhand evercraft:journey_pickaxe/silk_touch
item modify entity @s weapon.mainhand evercraft:journey_pickaxe/mark_silk

# Feedback
tellraw @s ["",{text:"[Journey Pickaxe] ",color:"light_purple"},{text:"Silk Touch",color:"gold",bold:true},{text:" mode active",color:"gray"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.8
