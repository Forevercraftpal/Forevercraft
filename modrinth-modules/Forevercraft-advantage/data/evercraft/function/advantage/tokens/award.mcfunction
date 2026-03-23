# Tokens — Award Tree Tokens (macro function)
# Called with: {amount: <int>}
# Give prismarine_crystals items with custom_data={tree_token:1b} to player
# Increment adv.tok_earned, tellraw notification with token count

$give @s minecraft:prismarine_crystals[minecraft:custom_data={tree_token:1b},minecraft:custom_name={"text":"Tree Token","color":"aqua","italic":false},minecraft:lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A crystalline leaf from the Advantage Tree,","color":"gray","italic":true},{"text":"carrying the whisper of new potential.","color":"gray","italic":true},"",{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Unlock a node on your Advantage Tree","color":"aqua"}]}],minecraft:enchantment_glint_override=true] $(amount)
$scoreboard players add @s adv.tok_earned $(amount)
$tellraw @s [{text:"✦ ",color:"gold"},{text:"+$(amount) Tree Token",color:"green"},{text:"(s)!",color:"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.8
