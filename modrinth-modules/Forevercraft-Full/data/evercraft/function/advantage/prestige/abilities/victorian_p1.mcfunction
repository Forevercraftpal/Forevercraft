# Prestige Ability: XP Siphon — XP orbs worth 25% more
# Already hooked in tick/main (calls xp_boost_tick for players with adv.pres_vict=1+)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Victorian ★] ",color:"dark_red",bold:true},{text:"XP Siphon",color:"green"},{text:" — XP orbs are worth 25% more!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
