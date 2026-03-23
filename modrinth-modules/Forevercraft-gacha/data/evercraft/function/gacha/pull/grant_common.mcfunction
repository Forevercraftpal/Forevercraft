# Grant Common pull reward (45% base rate)
# Runs as @s = player

# Roll 1-6 for specific reward (skip if pre-rolled by reel animation)
execute if score #reward_roll ec.temp matches ..0 store result score #reward_roll ec.temp run random value 1..6

# 1: XP Bottles (10-25)
execute if score #reward_roll ec.temp matches 1 run loot give @s mine ~ ~ ~ minecraft:air
execute if score #reward_roll ec.temp matches 1 store result score #xp_amount ec.temp run random value 10..25
execute if score #reward_roll ec.temp matches 1 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Common: ","color":"white"},{"text":"XP Bottles","color":"gray"},{"text":" x","color":"dark_gray"},{"score":{"name":"#xp_amount","objective":"ec.temp"},"color":"gray"},{"text":" \u2726","color":"gray"}]
execute if score #reward_roll ec.temp matches 1 run xp add @s 250 points

# 2: Common Awakening Stone (from weapon mastery loot table)
execute if score #reward_roll ec.temp matches 2 run loot give @s loot evercraft:weapon_mastery/stones/common_stone
execute if score #reward_roll ec.temp matches 2 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Common: ","color":"white"},{"text":"Awakening Stone","color":"gray"},{"text":" \u2726","color":"gray"}]

# 3: Random Glyph (from 13 available glyphs)
execute if score #reward_roll ec.temp matches 3 run function evercraft:gacha/pull/grant_random_glyph
execute if score #reward_roll ec.temp matches 3 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Common: ","color":"white"},{"text":"Random Glyph","color":"gray"},{"text":" \u2726","color":"gray"}]

# 4: Small material bundle (diamonds 2-4)
execute if score #reward_roll ec.temp matches 4 store result score #mat_amount ec.temp run random value 2..4
execute if score #reward_roll ec.temp matches 4 run give @s minecraft:diamond 3
execute if score #reward_roll ec.temp matches 4 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Common: ","color":"white"},{"text":"Diamonds x3","color":"gray"},{"text":" \u2726","color":"gray"}]

# 5: Crumb of Dreams (+1 DR for 30 min)
execute if score #reward_roll ec.temp matches 5 run give @s minecraft:bread[custom_name={"text":"Crumb of Dreams","color":"#E0B0FF","italic":false},custom_data={crumb_of_dreams:true},food={nutrition:1,saturation:0.2,can_always_eat:true},lore=[{"text":"Common Item","color":"white","italic":false},"",{"text":"A morsel left behind by dreamwalkers,","color":"gray","italic":true},{"text":"still warm with the memory of slumber.","color":"gray","italic":true},"",{"text":"Right-click to consume:","color":"white","italic":false},{"text":"+1 Dream Rate for 30 minutes","color":"aqua","italic":false},"",{"text":"\"Even crumbs can feed a dream.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true] 1
execute if score #reward_roll ec.temp matches 5 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Common: ","color":"white"},{"text":"Crumb of Dreams","color":"gray"},{"text":" \u2726","color":"gray"}]

# 6: Small emerald bundle
execute if score #reward_roll ec.temp matches 6 run give @s minecraft:emerald 8
execute if score #reward_roll ec.temp matches 6 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Common: ","color":"white"},{"text":"Emeralds x8","color":"gray"},{"text":" \u2726","color":"gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.0
