# Prestige Ability: Backstab — +50% melee damage while sneaking
# Already hooked in stealth_apply.mcfunction (attribute modifier evercraft:adv_pres_backstab)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Stealth ★★] ",color:"dark_gray",bold:true},{text:"Backstab",color:"green"},{text:" — Deal 50% more melee damage while sneaking!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
