# Exchange buy: Tree Token for 30 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 30.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 30.",color:"red"}]
scoreboard players remove @s ec.dreamdust 30
give @s minecraft:prismarine_crystals[custom_data={tree_token:1b},custom_name={"text":"Tree Token","color":"aqua","italic":false},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A crystalline leaf from the Advantage Tree,","color":"gray","italic":true},{"text":"carrying the whisper of new potential.","color":"gray","italic":true},"",{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Unlock a node on your Advantage Tree","color":"aqua"}]}],enchantment_glint_override=true] 1
tellraw @s [{text:"\u25C6 ",color:"#E0B0FF"},{text:"Purchased ",color:"gray"},{text:"Tree Token",color:"green"},{text:"!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
