# Grant Uncommon pull reward (25% base rate)
# Runs as @s = player

# Skip roll if pre-rolled by reel animation
execute if score #reward_roll ec.temp matches ..0 store result score #reward_roll ec.temp run random value 1..6

# 1: Tier-matched Awakening Stone (from weapon mastery loot table)
execute if score #reward_roll ec.temp matches 1 run loot give @s loot evercraft:weapon_mastery/stones/uncommon_stone
execute if score #reward_roll ec.temp matches 1 run tellraw @s [{"text":"\u2726 ","color":"#55FF55"},{"text":"Uncommon: ","color":"green"},{"text":"Awakening Stone","color":"green"},{"text":" \u2726","color":"#55FF55"}]

# 2: Uncommon Essentials Satchel (from satchel loot table)
execute if score #reward_roll ec.temp matches 2 run loot give @s loot evercraft:satchel/uncommon
execute if score #reward_roll ec.temp matches 2 run tellraw @s [{"text":"\u2726 ","color":"#55FF55"},{"text":"Uncommon: ","color":"green"},{"text":"Essentials Satchel","color":"green"},{"text":" \u2726","color":"#55FF55"}]

# 3: Dungeon Key (from actual dungeon loot table)
execute if score #reward_roll ec.temp matches 3 run loot give @s loot evercraft:dungeon/key
execute if score #reward_roll ec.temp matches 3 run tellraw @s [{"text":"\u2726 ","color":"#55FF55"},{"text":"Uncommon: ","color":"green"},{"text":"Dungeon Key","color":"green"},{"text":" \u2726","color":"#55FF55"}]

# 4: Companion Treat (from loot table)
execute if score #reward_roll ec.temp matches 4 run loot give @s loot evercraft:companions/items/companion_treat
execute if score #reward_roll ec.temp matches 4 run tellraw @s [{"text":"\u2726 ","color":"#55FF55"},{"text":"Uncommon: ","color":"green"},{"text":"Companion Treat","color":"green"},{"text":" \u2726","color":"#55FF55"}]

# 5: Netherite scraps (2-3)
execute if score #reward_roll ec.temp matches 5 run give @s minecraft:netherite_scrap 2
execute if score #reward_roll ec.temp matches 5 run tellraw @s [{"text":"\u2726 ","color":"#55FF55"},{"text":"Uncommon: ","color":"green"},{"text":"Netherite Scraps x2","color":"green"},{"text":" \u2726","color":"#55FF55"}]

# 6: Uncommon Artifact Crate (place to open)
execute if score #reward_roll ec.temp matches 6 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_uncommon"},custom_name={"text":"Uncommon Artifact Crate","color":"green","italic":false},lore=[{"text":"Something stirs within — a faint pulse","color":"gray","italic":true},{"text":"of power, waiting to be claimed.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"uncommon"}] 1
execute if score #reward_roll ec.temp matches 6 run tellraw @s [{"text":"\u2726 ","color":"#55FF55"},{"text":"Uncommon: ","color":"green"},{"text":"Uncommon Artifact Crate","color":"green"},{"text":" \u2726","color":"#55FF55"}]

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.2
