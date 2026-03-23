# The Leviathan — Loot Drops
# 5% Soul Piercer (Javelin), 100% Tidal Core, 100% Leviathan Scale Plate, 100% Deep Sea Pearl

# 5% Class Artifact
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches ..5 run give @s trident[custom_name={text:"Soul Piercer",color:"dark_aqua",bold:true,italic:false},custom_data={spirit_artifact:"ellegaards_trident",spirit_class:"javelin",spirit_tier:1},enchantment_glint_override=true,unbreakable={}] 1
execute if score @s ec.temp matches ..5 run tellraw @a[tag=ec.rd_participant] [{text:"  ★ ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Soul Piercer",color:"dark_aqua",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# 100% Tidal Core
give @s heart_of_the_sea[custom_name={text:"Tidal Core",color:"aqua",italic:false},custom_data={artifact:"tidal_core",tier:"unique"},lore=[{text:"Conduit Power in rain/water",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Leviathan",color:"dark_aqua",italic:false}]] 1

# 100% Leviathan Scale Plate
give @s nautilus_shell[custom_name={text:"Leviathan Scale Plate",color:"blue",italic:false},custom_data={artifact:"leviathan_scale_plate",tier:"unique"},lore=[{text:"+2 armor in water, reduce drowning",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Leviathan",color:"dark_aqua",italic:false}]] 1

# 100% Deep Sea Pearl
give @s ender_pearl[custom_name={text:"Deep Sea Pearl",color:"dark_aqua",italic:false},consumable={consume_seconds:0},custom_data={dr_consumable:"deep_sea_pearl",boss_dr_leviathan:1b},lore=[{text:"+1 Dream Rate permanently",color:"green",italic:false},{text:"",italic:false},{text:"Consumed on use",color:"dark_gray",italic:false}]] 1

particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
