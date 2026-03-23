# Prestige Ability: Dash — teleport 10 blocks forward (30s cooldown)
# Already hooked in tick/main (sprint+sneak detection, cooldown adv.pa_agil3_cd)
scoreboard players set @s adv.pa_agil3 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Agility ★★★] ",color:"aqua",bold:true},{text:"Dash",color:"green"},{text:" — Sprint + sneak to dash 10 blocks forward! 30s cooldown.",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
