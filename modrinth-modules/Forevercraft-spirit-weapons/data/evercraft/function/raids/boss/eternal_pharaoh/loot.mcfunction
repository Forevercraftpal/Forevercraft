# The Eternal Pharaoh — Loot Drops
# 5% Pharaoh's Fist (Striker), 100% Scarab Amulet, 100% Sands of Time Flask, 100% Dynasty Ember

# 5% Class Artifact
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches ..5 run give @s mace[custom_name={text:"Pharaoh's Fist",color:"gold",bold:true,italic:false},custom_data={spirit_artifact:"pharaohs_fist",spirit_class:"striker",spirit_tier:1},enchantment_glint_override=true,unbreakable={}] 1
execute if score @s ec.temp matches ..5 run tellraw @a[tag=ec.rd_participant] [{text:"  ★ ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Pharaoh's Fist",color:"gold",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# 100% Scarab Amulet
give @s emerald[custom_name={text:"Scarab Amulet",color:"dark_green",italic:false},custom_data={artifact:"scarab_amulet",tier:"unique"},lore=[{text:"Auto-cleanse curses every 30s",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Eternal Pharaoh",color:"gold",italic:false}]] 1

# 100% Sands of Time Flask
give @s glass_bottle[custom_name={text:"Sands of Time Flask",color:"yellow",italic:false},custom_data={artifact:"sands_of_time_flask",tier:"unique"},lore=[{text:"Rewind 3 seconds of damage taken",color:"gray",italic:false},{text:"90s cooldown",color:"dark_gray",italic:false},{text:"",italic:false},{text:"Unique — The Eternal Pharaoh",color:"gold",italic:false}]] 1

# 100% Dynasty Ember
give @s blaze_powder[custom_name={text:"Dynasty Ember",color:"gold",italic:false},consumable={consume_seconds:0},custom_data={dr_consumable:"dynasty_ember",boss_dr_pharaoh:1b},lore=[{text:"+1 Dream Rate permanently",color:"green",italic:false},{text:"",italic:false},{text:"Consumed on use",color:"dark_gray",italic:false}]] 1

particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
