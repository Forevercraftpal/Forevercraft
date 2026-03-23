# The Ashen Lord — Loot Drops
# Called as each participant player, at their position
# Drops: 5% Ashcrown Mace (Sentinel), 100% Ember Ward Sigil, 100% Wither Lord's Fang, 100% Cinder Heart

# ── 5% Class Artifact: Ashcrown Mace (Sentinel spirit weapon) ──
# Roll 1-100, if ≤5 = drop
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches ..5 run give @s netherite_sword[custom_name={text:"Ashcrown Mace",color:"red",bold:true,italic:false},custom_data={spirit_artifact:"ashcrown_mace",spirit_class:"sentinel",spirit_tier:1},enchantment_glint_override=true,unbreakable={}] 1
execute if score @s ec.temp matches ..5 run tellraw @a[tag=ec.rd_participant] [{text:"  ★ ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Ashcrown Mace",color:"red",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# ── 100% Artifact A: Ember Ward Sigil ──
give @s paper[custom_name={text:"Ember Ward Sigil",color:"gold",italic:false},custom_data={artifact:"ember_ward_sigil",tier:"unique"},lore=[{text:"Fire damage immunity for 5s",color:"gray",italic:false},{text:"60s cooldown",color:"dark_gray",italic:false},{text:"",italic:false},{text:"Unique — The Ashen Lord",color:"dark_red",italic:false}]] 1

# ── 100% Artifact B: Wither Lord's Fang ──
give @s ghast_tear[custom_name={text:"Wither Lord's Fang",color:"dark_purple",italic:false},custom_data={artifact:"wither_lords_fang",tier:"unique"},lore=[{text:"Melee hits apply Wither I for 2s",color:"gray",italic:false},{text:"",italic:false},{text:"Unique — The Ashen Lord",color:"dark_red",italic:false}]] 1

# ── 100% DR Consumable: Cinder Heart ──
give @s magma_cream[custom_name={text:"Cinder Heart",color:"red",italic:false},consumable={consume_seconds:0},custom_data={dr_consumable:"cinder_heart",boss_dr_ashen:1b},lore=[{text:"+1 Dream Rate permanently",color:"green",italic:false},{text:"",italic:false},{text:"Consumed on use",color:"dark_gray",italic:false}]] 1

# Loot VFX
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
