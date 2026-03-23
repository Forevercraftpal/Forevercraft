# Arbiter — Loot Drop (called as each participant, at their position)
# Drops: 5% Zephyr Edge (Dancer fan), 100% Verdict Stone Shard,
#         100% Breath of the Arbiter, 100% Condensed Gale (+1 DR)

# ── 5% Class Artifact: Zephyr Edge ──
execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches 1..5 run function evercraft:raids/boss/arbiter/loot_artifact

# ── 100% Guaranteed Drops ──

# Verdict Stone Shard (unique trinket — wind dash on sneak)
give @s minecraft:prismarine_shard[minecraft:custom_name={text:"Verdict Stone Shard",color:"aqua",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"Dash forward on sneak,",color:"gray",italic:false},{text:"riding a burst of wind.",color:"gray",italic:false},{text:"15 second cooldown.",color:"dark_gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"verdict_stone_shard"}] 1

# Breath of the Arbiter (unique accessory — 25% projectile deflection)
give @s minecraft:feather[minecraft:custom_name={text:"Breath of the Arbiter",color:"aqua",italic:false},minecraft:lore=[{text:"Unique Raid Artifact",color:"gold",italic:false},{text:""},{text:"A shield of wind surrounds you,",color:"gray",italic:false},{text:"deflecting 25% of projectiles.",color:"gray",italic:false}],minecraft:rarity=epic,minecraft:custom_data={raid_artifact:1,artifact_id:"breath_of_arbiter"}] 1

# Condensed Gale (+1 DR permanently)
give @s minecraft:wind_charge[minecraft:custom_name={text:"Condensed Gale",color:"white",italic:false},minecraft:lore=[{text:"DR Consumable",color:"gold",italic:false},{text:""},{text:"Consume to permanently",color:"gray",italic:false},{text:"increase Dream Rate by 1.",color:"gray",italic:false}],minecraft:rarity=rare,minecraft:consumable={consume_seconds:0},minecraft:custom_data={dr_consumable:1,dr_amount:1,boss_dr_arbiter:1b}] 1

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
