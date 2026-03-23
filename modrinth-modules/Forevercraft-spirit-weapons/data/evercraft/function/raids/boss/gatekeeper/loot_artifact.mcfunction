# Gatekeeper — Class Artifact Drop: Nite (Dual Swordsman Sword)
# 5% chance — Spirit-capable dual sword (SECRET CLASS UNLOCK)

# Give the artifact
give @s minecraft:iron_sword[minecraft:custom_name={text:"Nite",color:"dark_green",bold:true,italic:false},minecraft:lore=[{text:"Spirit Artifact",color:"light_purple",italic:false},{text:"Dual Swordsman Blade",color:"gray",italic:false},{text:""},{text:"A blade split between two worlds,",color:"dark_green",italic:false},{text:"forged at the threshold of ending.",color:"dark_green",italic:false},{text:""},{text:"Unbreakable. Pre-unlocked mastery.",color:"gold",italic:false},{text:"Can evolve to Spirit tier.",color:"light_purple",italic:false},{text:""},{text:"Unlocks Dual Swordsman class!",color:"green",bold:true,italic:false}],minecraft:rarity=epic,minecraft:unbreakable={},minecraft:enchantment_glint_override=true,minecraft:custom_data={spirit_artifact:1,spirit_class:"dual_swordsman",spirit_weapon:"nite",spirit_tier:1,class_unlock:"dual_swordsman"}] 1

# Server-wide announcement
tellraw @a [{"text":"═══ ","color":"dark_purple"},{"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true},{"text":" ═══","color":"dark_purple"}]
tellraw @a [{"text":"  ★ ","color":"gold"},{selector:"@s"},{"text":" obtained ","color":"gray"},{"text":"Nite","color":"dark_green","bold":true},{"text":"!","color":"gold"}]
tellraw @a [{"text":"  "},{"text":"SECRET CLASS UNLOCKED: Dual Swordsman!","color":"green","bold":true}]

# Dramatic effects
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50
title @s times 10 60 20
title @s title {"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true}
title @s subtitle [{"text":"Nite","color":"dark_green","bold":true}]
