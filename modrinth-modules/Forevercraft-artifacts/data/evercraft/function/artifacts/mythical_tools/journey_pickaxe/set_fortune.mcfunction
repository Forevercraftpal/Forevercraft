# Journey Pickaxe — Switch to Fortune Mode
# @s = player, modifies item in-hand (no replacement)

# Remove Silk Touch, add Fortune 5, clear silk flag
item modify entity @s weapon.mainhand evercraft:journey_pickaxe/silk_remove
item modify entity @s weapon.mainhand evercraft:fortune_add_5
item modify entity @s weapon.mainhand evercraft:journey_pickaxe/mark_fortune

# Feedback
tellraw @s ["",{text:"[Journey Pickaxe] ",color:"light_purple"},{text:"Fortune V",color:"aqua",bold:true},{text:" mode active",color:"gray"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
