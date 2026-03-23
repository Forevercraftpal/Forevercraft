# The Deepcrawler — Loot Drops
# Called as each participant player, at their position
# Drops: 5% Soulstring (Archer), 100% Stalactite Shard Arrow, 100% Deepcrawler's Eye, 100% Crystallized Depths

# ── 5% Class Artifact: Soulstring (Archer spirit weapon) ──
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches ..5 run give @s bow[custom_name={text:"Soulstring",color:"gray",bold:true,italic:false},custom_data={spirit_artifact:"sabrewing",spirit_class:"archer",spirit_tier:1},enchantment_glint_override=true,unbreakable={}] 1
execute if score @s ec.temp matches ..5 run tellraw @a[tag=ec.rd_participant] [{text:"  ★ ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Soulstring",color:"gray",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# ── 100% Artifact A: Stalactite Shard Arrow ──
give @s arrow[custom_name={text:"Stalactite Shard Arrow",color:"gray",italic:false},custom_data={artifact:"stalactite_shard_arrow",tier:"unique"},lore=[{text:"Arrows pierce through 2 entities",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Deepcrawler",color:"dark_gray",italic:false}]] 1

# ── 100% Artifact B: Deepcrawler's Eye ──
give @s ender_eye[custom_name={text:"Deepcrawler's Eye",color:"dark_purple",italic:false},custom_data={artifact:"deepcrawlers_eye",tier:"unique"},lore=[{text:"Night vision in caves + ore highlighting",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Deepcrawler",color:"dark_gray",italic:false}]] 1

# ── 100% DR Consumable: Crystallized Depths ──
give @s amethyst_shard[custom_name={text:"Crystallized Depths",color:"light_purple",italic:false},consumable={consume_seconds:0},custom_data={dr_consumable:"crystallized_depths",boss_dr_deepcrawler:1b},lore=[{text:"+1 Dream Rate permanently",color:"green",italic:false},{text:"",italic:false},{text:"Consumed on use",color:"dark_gray",italic:false}]] 1

# Loot VFX
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
