# Grand Illusionist — Class Artifact Drop: Thornmaw (Beastlord)
# 5% chance — Spirit-capable beastlord weapon

# Give the artifact
give @s minecraft:iron_sword[minecraft:custom_name={text:"Thornmaw",color:"red",bold:true,italic:false},minecraft:lore=[{text:"Spirit Artifact",color:"light_purple",italic:false},{text:"Beastlord Spear",color:"gray",italic:false},{text:""},{text:"A spear that whispers the secrets",color:"red",italic:false},{text:"of beasts to its wielder.",color:"red",italic:false},{text:""},{text:"Unbreakable. Pre-unlocked mastery.",color:"gold",italic:false},{text:"Can evolve to Spirit tier.",color:"light_purple",italic:false}],minecraft:rarity=epic,minecraft:unbreakable={},minecraft:enchantment_glint_override=true,minecraft:custom_data={spirit_artifact:1,spirit_class:"beastlord",spirit_weapon:"whispering_spear",spirit_tier:1}] 1

# Server-wide announcement
tellraw @a [{"text":"═══ ","color":"dark_purple"},{"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true},{"text":" ═══","color":"dark_purple"}]
tellraw @a [{"text":"  ★ ","color":"gold"},{selector:"@s"},{"text":" obtained ","color":"gray"},{"text":"Thornmaw","color":"red","bold":true},{"text":"!","color":"gold"}]

# Dramatic effects
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50
title @s times 10 60 20
title @s title {"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true}
title @s subtitle [{"text":"Thornmaw","color":"red","bold":true}]
