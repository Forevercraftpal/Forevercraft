# Ender Dragon - Grant Dragon Blade ability item
# A netherite sword that shoots dragon breath and has 10% chance to launch hit mobs sky-high

# Check if player already has the blade
execute if items entity @s hotbar.* netherite_sword[custom_data~{artifact_ability:"dragon_blade"}] run return 0
execute if items entity @s inventory.* netherite_sword[custom_data~{artifact_ability:"dragon_blade"}] run return 0

# Grant the Dragon Blade
give @s netherite_sword[enchantment_glint_override=true,custom_name={text:"Dragon Blade",color:"dark_purple",italic:false,bold:true},lore=[{text:"Artifact Ability Item",color:"dark_purple",italic:false},{text:""},{text:"A blade forged from the dragon's",color:"gray",italic:true},{text:"fang. Breathes purple fire.",color:"gray",italic:true},{text:""},["",{text:"Right-click: ",color:"white",italic:false},{text:"Dragon Breath projectile",color:"light_purple",italic:false}],["",{text:"On Hit: ",color:"white",italic:false},{text:"10% chance to launch mob skyward",color:"light_purple",italic:false}],{text:""},{text:"Requires: Ender Dragon 4pc",color:"gold",italic:false}],custom_data={artifact_ability:"dragon_blade",artifact_set:"ender_dragon"},unbreakable={},attribute_modifiers=[{type:"minecraft:attack_damage",amount:10,operation:"add_value",slot:"mainhand",id:"evercraft:dragon_blade_dmg"},{type:"minecraft:attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand",id:"evercraft:dragon_blade_spd"}]]

# Notify player
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender Dragon 4pc: ",color:"dark_purple"},{text:"Dragon's Fury — Dragon Blade",color:"gray"}]
tellraw @s [{text:"  ",color:"gray"},{text:"You received the ",color:"gray"},{text:"Dragon Blade",color:"dark_purple"},{text:"! Swing to breathe dragonfire.",color:"gray"}]
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 0.5 0.8
