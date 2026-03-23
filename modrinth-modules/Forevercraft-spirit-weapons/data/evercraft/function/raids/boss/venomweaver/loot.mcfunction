# The Venomweaver — Loot Drops
# Called as each participant player, at their position
# Drops: 5% Lifewoven Branch (Healer), 100% Antidote Vial, 100% Web Weaver's Silk, 100% Purified Venom Gland

# ── 5% Class Artifact: Lifewoven Branch (Healer spirit weapon) ──
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches ..5 run give @s stick[custom_name={text:"Lifewoven Branch",color:"green",bold:true,italic:false},custom_data={spirit_artifact:"lifewoven_branch",spirit_class:"healer",spirit_tier:1},enchantment_glint_override=true,unbreakable={}] 1
execute if score @s ec.temp matches ..5 run tellraw @a[tag=ec.rd_participant] [{text:"  ★ ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Lifewoven Branch",color:"green",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# ── 100% Artifact A: Antidote Vial ──
give @s potion[custom_name={text:"Antidote Vial",color:"green",italic:false},custom_data={artifact:"antidote_vial",tier:"unique"},lore=[{text:"Cleanse all poisons from party",color:"gray",italic:false},{text:"45s cooldown",color:"dark_gray",italic:false},{text:"",italic:false},{text:"Unique — The Venomweaver",color:"dark_green",italic:false}]] 1

# ── 100% Artifact B: Web Weaver's Silk ──
give @s string[custom_name={text:"Web Weaver's Silk",color:"dark_purple",italic:false},custom_data={artifact:"web_weavers_silk",tier:"unique"},lore=[{text:"Slow enemies on hit (Slowness I, 2s)",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Venomweaver",color:"dark_green",italic:false}]] 1

# ── 100% DR Consumable: Purified Venom Gland ──
give @s slime_ball[custom_name={text:"Purified Venom Gland",color:"green",italic:false},consumable={consume_seconds:0},custom_data={dr_consumable:"purified_venom_gland",boss_dr_venomweaver:1b},lore=[{text:"+1 Dream Rate permanently",color:"green",italic:false},{text:"",italic:false},{text:"Consumed on use",color:"dark_gray",italic:false}]] 1

# Loot VFX
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
