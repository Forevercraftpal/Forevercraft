# Prestige Ability: Perfect Evasion — 1s guaranteed dodge window after dodging
# Already hooked in evasion_dodge (sets timer) and evasion_check (guarantees dodge when timer active)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Evasion ★★★] ",color:"white",bold:true},{text:"Perfect Evasion",color:"green"},{text:" — After dodging, all attacks are dodged for 1s!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
