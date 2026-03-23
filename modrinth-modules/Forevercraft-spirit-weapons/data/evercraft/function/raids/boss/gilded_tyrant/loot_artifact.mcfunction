# Gilded Tyrant — Class Artifact Drop: Firebrand (Berserker Axe)
# 5% chance — Spirit-capable berserker axe

# Give the artifact
give @s minecraft:iron_axe[minecraft:custom_name={text:"Firebrand",color:"gold",bold:true,italic:false},minecraft:lore=[{text:"Spirit Artifact",color:"light_purple",italic:false},{text:"Berserker Axe",color:"gray",italic:false},{text:""},{text:"An axe forged in the molten",color:"gold",italic:false},{text:"gold of the Tyrant's throne.",color:"gold",italic:false},{text:""},{text:"Unbreakable. Pre-unlocked mastery.",color:"gold",italic:false},{text:"Can evolve to Spirit tier.",color:"light_purple",italic:false}],minecraft:rarity=epic,minecraft:unbreakable={},minecraft:enchantment_glint_override=true,minecraft:custom_data={spirit_artifact:1,spirit_class:"berserker",spirit_weapon:"firebrand",spirit_tier:1}] 1

# Server-wide announcement
tellraw @a [{"text":"═══ ","color":"dark_purple"},{"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true},{"text":" ═══","color":"dark_purple"}]
tellraw @a [{"text":"  ★ ","color":"gold"},{selector:"@s"},{"text":" obtained ","color":"gray"},{"text":"Firebrand","color":"gold","bold":true},{"text":"!","color":"gold"}]

# Dramatic effects
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1.0 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50
title @s times 10 60 20
title @s title {"text":"SPIRIT ARTIFACT","color":"light_purple","bold":true}
title @s subtitle [{"text":"Firebrand","color":"gold","bold":true}]
