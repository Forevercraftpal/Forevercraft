# The Iron Phalanx — Loot Drops
# Called as each Castle player, at their position
# Drops: 5% Depthsworn (Hoplite, ONLY if no spirit artifact), 100% Centurion's Signet, 100% Phalanx Standard, 100% Disciplined Core

# ── 5% Class Artifact: Depthsworn (Hoplite spirit weapon) ──
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches ..5 unless data entity @s {Inventory:[{components:{"minecraft:custom_data":{spirit_artifact:""}}}]} run loot give @s loot evercraft:spirit/royal_trident
execute if score @s ec.temp matches ..5 unless data entity @s {Inventory:[{components:{"minecraft:custom_data":{spirit_artifact:""}}}]} run tellraw @a [{text:"  \u2605 ",color:"gold"},{selector:"@s"},{text:" received ",color:"gray"},{text:"Depthsworn",color:"white",bold:true},{text:"!",color:"gold"}]
execute if score @s ec.temp matches ..5 unless data entity @s {Inventory:[{components:{"minecraft:custom_data":{spirit_artifact:""}}}]} run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0

# ── 100% Artifact A: Centurion's Signet ──
give @s gold_nugget[custom_name='{\"text\":\"Centurion\\u0027s Signet\",\"color\":\"white\",\"italic\":false}',custom_data={artifact:"centurions_signet",tier:"unique"},lore=['{\"text\":\"+2 armor when allies nearby\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"\",\"italic\":false}','{\"text\":\"Unique — The Iron Phalanx\",\"color\":\"dark_gray\",\"italic\":false}']] 1

# ── 100% Artifact B: Phalanx Standard ──
give @s white_banner[custom_name='{\"text\":\"Phalanx Standard\",\"color\":\"gray\",\"italic\":false}',custom_data={artifact:"phalanx_standard",tier:"unique"},lore=['{\"text\":\"Nearby allies gain Speed I for 3s on your kills\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"\",\"italic\":false}','{\"text\":\"Unique — The Iron Phalanx\",\"color\":\"dark_gray\",\"italic\":false}']] 1

# ── 100% DR Consumable: Disciplined Core ──
give @s iron_nugget[custom_name='{\"text\":\"Disciplined Core\",\"color\":\"white\",\"italic\":false}',custom_data={dr_consumable:"disciplined_core"},lore=['{\"text\":\"+1 Dream Rate permanently\",\"color\":\"green\",\"italic\":false}','{\"text\":\"\",\"italic\":false}','{\"text\":\"Consumed on use\",\"color\":\"dark_gray\",\"italic\":false}']] 1

# Loot VFX
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
