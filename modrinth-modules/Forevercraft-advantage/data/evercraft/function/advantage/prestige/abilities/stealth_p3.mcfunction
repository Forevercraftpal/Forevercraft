# Prestige Ability: Perfect Stealth — 10s full invisibility while still (30s cooldown)
# Already hooked in tick/main (double-tap sneak detection, timers adv.pa_stea3_tm and adv.pa_stea3_cd)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Stealth ★★★] ",color:"dark_gray",bold:true},{text:"Perfect Stealth",color:"green"},{text:" — Double-tap sneak for 10s invisibility while still! 30s cooldown.",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
