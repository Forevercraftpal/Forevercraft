# ============================================================
# Give Hearthstone item to player
# ============================================================

give @s lodestone[custom_name={"text":"Hearthstone","color":"#E0B0FF","italic":false,"bold":true},custom_data={hearthstone:true},lore=[{"text":"Exquisite Relic","color":"light_purple","italic":false},"",{"text":"Warm to the touch, it remembers the hearth","color":"gray","italic":true},{"text":"you haven't built yet.","color":"gray","italic":true},"",{"text":"Place: ","color":"white","italic":false,"extra":[{"text":"Claim a 64x64 home zone","color":"#E0B0FF"}]},{"text":"Buffs: ","color":"white","italic":false,"extra":[{"text":"Tier-scaling bonuses + chunk loading","color":"#E0B0FF"}]},{"text":"Upgrade: ","color":"white","italic":false,"extra":[{"text":"Feed Netherite Ingots to expand","color":"#E0B0FF"}]},"",{"text":"\"Home is wherever the heart dares to settle.\"","color":"dark_gray","italic":true}],enchantment_glint_override=true,rarity=epic] 1
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You received a ",color:"gray"},{text:"Hearthstone",color:"gold"},{text:"! Place it to claim your home.",color:"gray"}]
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.8 1.0
