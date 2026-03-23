# Grant Exquisite pull reward (5% base rate)
# Runs as @s = player

# Skip roll if pre-rolled by reel animation
execute if score #reward_roll ec.temp matches ..0 store result score #reward_roll ec.temp run random value 1..7

# 1: Exquisite Artifact Crate (place to open)
execute if score #reward_roll ec.temp matches 1 run give @s minecraft:barrel[container_loot={loot_table:"evercraft:crates/artifact_exquisite"},custom_name={"text":"Exquisite Artifact Crate","color":"#E0B0FF","italic":false},lore=[{"text":"Sealed with dreamlight and ancient sigils,","color":"gray","italic":true},{"text":"something extraordinary sleeps within.","color":"gray","italic":true},"",{"text":"Place to reveal your artifact.","color":"dark_gray","italic":false}],custom_data={artc_rarity:"exquisite"},enchantment_glint_override=true] 1
execute if score #reward_roll ec.temp matches 1 run tellraw @s [{"text":"\u2726\u2726 ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Exquisite Artifact Crate!","color":"#E0B0FF"},{"text":" \u2726\u2726","color":"#E0B0FF"}]

# 2: Exclusive Gacha Companion (Lunar Moth / Nebula Kit / Twilight Hare)
execute if score #reward_roll ec.temp matches 2 run function evercraft:gacha/pull/grant_exquisite_companion

# 3: Random Lore Piece (context-sensitive collectible)
execute if score #reward_roll ec.temp matches 3 at @s run function evercraft:lore/roll/pick_piece
execute if score #reward_roll ec.temp matches 3 run tellraw @s [{"text":"\u2726\u2726 ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Lore Piece!","color":"#E0B0FF"},{"text":" \u2726\u2726","color":"#E0B0FF"}]

# 4: Netherite Block
execute if score #reward_roll ec.temp matches 4 run give @s minecraft:netherite_block 1
execute if score #reward_roll ec.temp matches 4 run tellraw @s [{"text":"\u2726\u2726 ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Netherite Block!","color":"#E0B0FF"},{"text":" \u2726\u2726","color":"#E0B0FF"}]

# 5: Hearthstone (place to claim your home)
execute if score #reward_roll ec.temp matches 5 run give @s minecraft:lodestone[custom_name={"text":"Hearthstone","color":"#E0B0FF","italic":false,"bold":true},custom_data={hearthstone:true},lore=[{"text":"Exquisite Relic","color":"light_purple","italic":false},"",{"text":"Warm to the touch, it remembers the hearth","color":"gray","italic":true},{"text":"you haven't built yet.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Claim a 64x64 home zone","color":"#E0B0FF"}]},{"text":"Buffs: ","color":"white","italic":false,"extra":[{"text":"Tier-scaling bonuses + chunk loading","color":"#E0B0FF"}]},{"text":"Upgrade: ","color":"white","italic":false,"extra":[{"text":"Feed Netherite Ingots to expand","color":"#E0B0FF"}]},"",{"text":"\"Home is wherever the heart dares to settle.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,rarity=epic] 1
execute if score #reward_roll ec.temp matches 5 run tellraw @s [{"text":"\u2726\u2726 ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Hearthstone!","color":"#E0B0FF","bold":true},{"text":" \u2726\u2726","color":"#E0B0FF"}]

# 6: Guidestone (waypoint teleport network)
execute if score #reward_roll ec.temp matches 6 run give @s minecraft:lodestone[custom_name={"text":"Guidestone","color":"#E0B0FF","italic":false,"bold":true},lore=[{"text":"Exquisite Relic","color":"light_purple","italic":false},"",{"text":"An anchor between worlds, humming with","color":"gray","italic":true},{"text":"the paths of those who came before.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Create a waypoint in the network","color":"#E0B0FF"}]},{"text":"Interact: ","color":"white","italic":false,"extra":[{"text":"Open the teleport menu","color":"#E0B0FF"}]},"",{"text":"\"All roads lead somewhere worth going.\"","color":"dark_gray","italic":true}],custom_data={guidestone:1b,evercraft_item:1b,gs_color:"amethyst"},enchantment_glint_override=true,rarity=epic] 1
execute if score #reward_roll ec.temp matches 6 run tellraw @s [{"text":"\u2726\u2726 ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Guidestone!","color":"#E0B0FF","bold":true},{"text":" \u2726\u2726","color":"#E0B0FF"}]

# 7: Glyphforge (rune enchantment station)
execute if score #reward_roll ec.temp matches 7 run give @s minecraft:lodestone[custom_name={"text":"Glyphforge","color":"#E0B0FF","italic":false,"bold":true},lore=[{"text":"Exquisite Workstation","color":"light_purple","italic":false},"",{"text":"The anvil of lost runesmiths, reforged","color":"gray","italic":true},{"text":"with dream-fire and iron resolve.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Create a Glyphforge station","color":"#E0B0FF"}]},{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Permanently bind rune enchantments","color":"#E0B0FF"}]},{"text":"","italic":false,"extra":[{"text":"to weapons and armor","color":"#E0B0FF"}]},"",{"text":"\"The strongest enchantments are forged in silence.\"","color":"dark_gray","italic":true}],custom_data={glyphforge_block:1b},enchantment_glint_override=true,rarity=epic] 1
execute if score #reward_roll ec.temp matches 7 run tellraw @s [{"text":"\u2726\u2726 ","color":"#E0B0FF"},{"text":"EXQUISITE: ","color":"light_purple","bold":true},{"text":"Glyphforge!","color":"#E0B0FF","bold":true},{"text":" \u2726\u2726","color":"#E0B0FF"}]

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
particle totem_of_undying ~ ~1.5 ~ 0.5 1 0.5 0.5 50 force @s
particle end_rod ~ ~2 ~ 0.3 0.5 0.3 0.05 20 force @s
