# Prestige Ability: Spoils of War — doubled mob crate spawn chance
# Each patron drop file checks adv.pa_vict3 for a second 25% roll
scoreboard players set @s adv.pa_vict3 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Victorian ★★★] ",color:"dark_red",bold:true},{text:"Spoils of War",color:"green"},{text:" — Doubled mob crate spawn chance!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
