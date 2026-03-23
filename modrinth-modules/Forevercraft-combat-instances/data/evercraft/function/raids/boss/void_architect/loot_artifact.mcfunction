# Void Architect — Class Artifact Drop: Voidpiercer (Hunter Crossbow)
# 5% chance — Spirit-capable hunter crossbow

# Give the artifact
give @s minecraft:crossbow[minecraft:custom_name={text:"Voidpiercer",color:"dark_purple",bold:true,italic:false},minecraft:lore=[{text:"Spirit Artifact",color:"light_purple",italic:false},{text:"Hunter Crossbow",color:"gray",italic:false},{text:""},{text:"A crossbow forged from the",color:"dark_purple",italic:false},{text:"Void Architect's spatial rift.",color:"dark_purple",italic:false},{text:""},{text:"Unbreakable. Pre-unlocked mastery.",color:"gold",italic:false},{text:"Can evolve to Spirit tier.",color:"light_purple",italic:false}],minecraft:rarity=epic,minecraft:unbreakable={},minecraft:enchantment_glint_override=true,minecraft:custom_data={spirit_artifact:1,spirit_class:"hunter",spirit_weapon:"voidpiercer",spirit_tier:1}] 1

# Server-wide announcement
tellraw @a [{"text":"═══ ","color":"dark_purple"},{"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true},{"text":" ═══","color":"dark_purple"}]
tellraw @a [{"text":"  ★ ","color":"gold"},{selector:"@s"},{"text":" obtained ","color":"gray"},{"text":"Voidpiercer","color":"dark_purple","bold":true},{"text":"!","color":"gold"}]

# Dramatic effects
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50
title @s times 10 60 20
title @s title {"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true}
title @s subtitle [{"text":"Voidpiercer","color":"dark_purple","bold":true}]
