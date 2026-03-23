# Guild Scatter Node Reward — Tree Token (rarest)
# @s = player who clicked node

give @s minecraft:prismarine_crystals[custom_data={tree_token:1b},custom_name={"text":"Tree Token","color":"aqua","italic":false},lore=[{"text":"Rare Item","color":"blue","italic":false},"",{"text":"A crystalline leaf from the Advantage Tree,","color":"gray","italic":true},{"text":"carrying the whisper of new potential.","color":"gray","italic":true},"",{"text":"Use: ","color":"white","italic":false,"extra":[{"text":"Unlock a node on your Advantage Tree","color":"aqua"}]}],enchantment_glint_override=true] 1
scoreboard players add @s adv.tok_earned 1
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.5 1.0
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You found a ",color:"gray"},{text:"Tree Token",color:"gold",bold:true},{text:"!",color:"gray"}]
function evercraft:guild/contribution/add {amount:15}
