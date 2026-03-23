# Infinite Castle — Wave Announce (macro)
$tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{text:"Wave $(num)",color:"gold",bold:true}]
playsound minecraft:entity.ender_dragon.growl master @a[tag=ic.player] ~ ~ ~ 0.3 1.5
