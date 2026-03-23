# The Mossheart Warden — Loot Drops
# Called as each participant player, at their position
# Drops: 5% Wyrmcleaver (Knight), 100% Warden's Moss Cloak, 100% Heartstone, 100% Living Stone Fragment

# ── 5% Class Artifact: Wyrmcleaver (Knight spirit weapon) ──
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches ..5 run give @s iron_sword[custom_name={text:"Wyrmcleaver",color:"green",bold:true,italic:false},custom_data={spirit_artifact:"dragonheart_sword",spirit_class:"knight",spirit_tier:1},enchantment_glint_override=true,unbreakable={}] 1
execute if score @s ec.temp matches ..5 run tellraw @a[tag=ec.rd_participant] [{text:"  ★ ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Wyrmcleaver",color:"green",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# ── 100% Artifact A: Warden's Moss Cloak ──
give @s leather[custom_name={text:"Warden's Moss Cloak",color:"green",italic:false},custom_data={artifact:"wardens_moss_cloak",tier:"unique"},lore=[{text:"Passive Regen I while standing still",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Mossheart Warden",color:"dark_green",italic:false}]] 1

# ── 100% Artifact B: Heartstone ──
give @s emerald[custom_name={text:"Heartstone",color:"dark_green",italic:false},custom_data={artifact:"heartstone",tier:"unique"},lore=[{text:"Revive once per death (20 min CD)",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Mossheart Warden",color:"dark_green",italic:false}]] 1

# ── 100% DR Consumable: Living Stone Fragment ──
give @s mossy_cobblestone[custom_name={text:"Living Stone Fragment",color:"green",italic:false},consumable={consume_seconds:0},custom_data={dr_consumable:"living_stone_fragment",boss_dr_mossheart:1b},lore=[{text:"+1 Dream Rate permanently",color:"green",italic:false},{text:"",italic:false},{text:"Consumed on use",color:"dark_gray",italic:false}]] 1

# Loot VFX
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
