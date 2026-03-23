# Prestige Mining P3: Ancient Ore — 0.5% chance for ultra-rare ore on block mine
# Called from treasure/tick_player when a block mine is detected and P3 is active

execute store result score #anc_roll adv.temp run random value 1..200
execute unless score #anc_roll adv.temp matches 1 run return 0

# 1/200 = 0.5% — give Ancient Ore (netherite scrap + bonus)
give @s netherite_scrap[custom_name={text:"Ancient Ore",color:"dark_purple",italic:true},lore=[{text:"A primordial mineral from deep below.",color:"gray",italic:false}],enchantment_glint_override=true,custom_data={ancient_ore:1b}] 1

# Bonus tokens
scoreboard players add @s adv.tokens 20

# Feedback
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
title @s title [{text:"Ancient Ore!",color:"dark_purple",bold:true}]
title @s subtitle [{text:"A primordial mineral emerges...",color:"light_purple"}]
tellraw @s [{text:"  [Mining P3] ",color:"dark_purple"},{text:"You unearthed an Ancient Ore! (+20 tokens)",color:"light_purple"}]
