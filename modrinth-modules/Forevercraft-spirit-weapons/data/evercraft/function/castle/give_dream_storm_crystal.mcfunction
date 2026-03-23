# Infinite Castle — Give Dream Storm Crystal
# Called as the lucky player at their position

# Give the crystal item
give @s minecraft:amethyst_shard[custom_name={text:"Dream Storm Crystal",color:"light_purple",italic:false,bold:true},lore=[{text:"A fragment of crystallized dreams.",color:"gray",italic:true},{text:"",italic:false},{text:"Hold in mainhand with a Spirit Artifact",color:"dark_purple",italic:false},{text:"in offhand. Right-click to reveal its twin.",color:"dark_purple",italic:false}],custom_data={dream_storm_crystal:1b},enchantment_glint_override=true,rarity=epic] 1

# Announcement
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{selector:"@s"},{text:" found a ","color":"gray"},{text:"Dream Storm Crystal","color":"light_purple","bold":true},{text:"!","color":"gray"}]
execute at @s run playsound minecraft:block.amethyst_block.chime master @a[tag=ic.player] ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.1 30 force
