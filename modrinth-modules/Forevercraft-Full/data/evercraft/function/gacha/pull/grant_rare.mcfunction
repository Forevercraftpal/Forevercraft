# Grant Rare pull reward (15% base rate)
# Runs as @s = player

# Skip roll if pre-rolled by reel animation
execute if score #reward_roll ec.temp matches ..0 store result score #reward_roll ec.temp run random value 1..7

# 1: Rare Artifact Crate (place to open)
execute if score #reward_roll ec.temp matches 1 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_rare"},custom_name={"text":"Rare Artifact Crate","color":"aqua","italic":false},lore=[{"text":"The wood groans under the weight of","color":"gray","italic":true},{"text":"something restless. It wants to be found.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"rare"}] 1
execute if score #reward_roll ec.temp matches 1 run tellraw @s [{"text":"\u2726 ","color":"blue"},{"text":"Rare: ","color":"blue","bold":true},{"text":"Rare Artifact Crate","color":"aqua"},{"text":" \u2726","color":"blue"}]

# 2: Tree Token
execute if score #reward_roll ec.temp matches 2 run give @s minecraft:prismarine_crystals[custom_name={"text":"Tree Token","color":"aqua","italic":false},custom_data={tree_token:1b},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A crystalline leaf from the Advantage Tree,","color":"gray","italic":true},{"text":"carrying the whisper of new potential.","color":"gray","italic":true},"",{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Unlock a node on your Advantage Tree","color":"aqua"}]}],enchantment_glint_override=true] 1
execute if score #reward_roll ec.temp matches 2 run tellraw @s [{"text":"\u2726 ","color":"blue"},{"text":"Rare: ","color":"blue","bold":true},{"text":"Tree Token","color":"aqua"},{"text":" \u2726","color":"blue"}]

# 3: Tree Shard
execute if score #reward_roll ec.temp matches 3 run give @s minecraft:prismarine_shard[custom_name={"text":"Tree Shard","color":"aqua","italic":false},custom_data={tree_shard:1b},enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"Splintered from the deepest roots of the","color":"gray","italic":true},{"text":"Advantage Tree, it pulses with distilled wisdom.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Grants 50 XP levels","color":"aqua","italic":false}]] 1
execute if score #reward_roll ec.temp matches 3 run tellraw @s [{"text":"\u2726 ","color":"blue"},{"text":"Rare: ","color":"blue","bold":true},{"text":"Tree Shard","color":"aqua"},{"text":" \u2726","color":"blue"}]

# 4: Potion of Dreams (Rare — +3 Dream Rate for 7 min)
execute if score #reward_roll ec.temp matches 4 run loot give @s loot evercraft:treasure/potions/dreams_rare
execute if score #reward_roll ec.temp matches 4 run tellraw @s [{"text":"\u2726 ","color":"blue"},{"text":"Rare: ","color":"blue","bold":true},{"text":"Potion of Dreams","color":"aqua"},{"text":" \u2726","color":"blue"}]

# 5: Coin of Lucidity (grants +1 bonus pull next time — right-click to consume)
execute if score #reward_roll ec.temp matches 5 run give @s minecraft:gold_nugget[custom_name={"text":"Coin of Lucidity","color":"yellow","italic":false},custom_data={wishing_coin:true},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A coin struck in a moment of perfect clarity —","color":"gray","italic":true},{"text":"its gleam cuts through the Fountain's mist.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"Grants +1 bonus pull at the Fountain","color":"aqua","italic":false},"",{"text":"\"Luck favors those who see clearly.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false}] 1
execute if score #reward_roll ec.temp matches 5 run tellraw @s [{"text":"\u2726 ","color":"blue"},{"text":"Rare: ","color":"blue","bold":true},{"text":"Coin of Lucidity","color":"aqua"},{"text":" \u2726","color":"blue"}]

# 6: Rare Companion Crate (place to open)
execute if score #reward_roll ec.temp matches 6 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_rare"},custom_name={"text":"Rare Companion Crate","color":"aqua","italic":false},lore=[{"text":"A gentle presence stirs within,","color":"gray","italic":true},{"text":"eager for a companion of its own.","color":"gray","italic":true},"",{"text":"Place to reveal your new companion.","color":"dark_gray","italic":false}],custom_data={pc_rarity:"rare"}] 1
execute if score #reward_roll ec.temp matches 6 run tellraw @s [{"text":"\u2726 ","color":"blue"},{"text":"Rare: ","color":"blue","bold":true},{"text":"Rare Companion Crate","color":"aqua"},{"text":" \u2726","color":"blue"}]

# 7: Chrono Shard (Reset Token)
execute if score #reward_roll ec.temp matches 7 run function evercraft:chrono_shard/give
execute if score #reward_roll ec.temp matches 7 run tellraw @s [{"text":"\u2726 ","color":"blue"},{"text":"Rare: ","color":"blue","bold":true},{"text":"Chrono Shard","color":"dark_aqua"},{"text":" \u2726","color":"blue"}]

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.0
particle sonic_boom ~ ~1.5 ~ 0 0 0 0 1 force @s
