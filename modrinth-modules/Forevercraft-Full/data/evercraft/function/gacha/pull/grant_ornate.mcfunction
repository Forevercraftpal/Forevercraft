# Grant Ornate pull reward (8% base rate)
# Runs as @s = player

# Skip roll if pre-rolled by reel animation
execute if score #reward_roll ec.temp matches ..0 store result score #reward_roll ec.temp run random value 1..5

# 1: Ornate Artifact Crate (place to open)
execute if score #reward_roll ec.temp matches 1 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_ornate"},custom_name={"text":"Ornate Artifact Crate","color":"light_purple","italic":false},lore=[{"text":"Ornamental runes line the lid, sealing","color":"gray","italic":true},{"text":"a treasure meant for worthy hands.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"ornate"},enchantment_glint_override=true] 1
execute if score #reward_roll ec.temp matches 1 run tellraw @s [{"text":"\u2726 ","color":"#AA00AA"},{"text":"Ornate: ","color":"dark_purple","bold":true},{"text":"Ornate Artifact Crate!","color":"light_purple"},{"text":" \u2726","color":"#AA00AA"}]

# 2: Seed of Forgetting (reset one Advantage Tree)
execute if score #reward_roll ec.temp matches 2 run give @s minecraft:torchflower_seeds[custom_name={"text":"Seed of Forgetting","color":"light_purple","italic":false},custom_data={seed_of_forgetting:true},lore=[{"text":"Ornate Item","color":"dark_purple","italic":false},"",{"text":"Grown in the soil between waking and sleep,","color":"gray","italic":true},{"text":"it unravels what was once learned.","color":"gray","italic":true},"",{"text":"Right-click to use:","color":"white","italic":false},{"text":"Reset one Advantage Tree for a full respec","color":"light_purple","italic":false},"",{"text":"\"To forget is to make room for becoming.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true] 1
execute if score #reward_roll ec.temp matches 2 run tellraw @s [{"text":"\u2726 ","color":"#AA00AA"},{"text":"Ornate: ","color":"dark_purple","bold":true},{"text":"Seed of Forgetting","color":"light_purple"},{"text":" \u2726","color":"#AA00AA"}]

# 3: Exclusive Particle (random unlock from cosmetic pool)
execute if score #reward_roll ec.temp matches 3 store result score @s adv.temp run random value 1..19
execute if score #reward_roll ec.temp matches 3 run function evercraft:advantage/cosmetics/crate_unlock_particle

# 4: Exclusive Title (random unlock from cosmetic pool)
execute if score #reward_roll ec.temp matches 4 store result score @s adv.temp run random value 19..36
execute if score #reward_roll ec.temp matches 4 run function evercraft:advantage/cosmetics/crate_unlock_title

# 5: Ornate Companion Crate (place to open)
execute if score #reward_roll ec.temp matches 5 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/companion_ornate"},custom_name={"text":"Ornate Companion Crate","color":"light_purple","italic":false},lore=[{"text":"A loyal soul waits within, bound by","color":"gray","italic":true},{"text":"ancient craft to serve a dreamer's will.","color":"gray","italic":true},"",{"text":"Place to reveal your new companion.","color":"dark_gray","italic":false}],custom_data={pc_rarity:"ornate"},enchantment_glint_override=true] 1
execute if score #reward_roll ec.temp matches 5 run tellraw @s [{"text":"\u2726 ","color":"#AA00AA"},{"text":"Ornate: ","color":"dark_purple","bold":true},{"text":"Ornate Companion Crate!","color":"light_purple"},{"text":" \u2726","color":"#AA00AA"}]

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.8
particle totem_of_undying ~ ~1.5 ~ 0.5 1 0.5 0.3 30 force @s
