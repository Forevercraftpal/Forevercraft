# The Crimson Bulwark — Banner Pulled During Shield Spin
# Punishes the puller with 6 damage

# Damage nearest participant to the banner
execute at @e[tag=ec.rd_cb_banner,limit=1,sort=nearest] run damage @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..3] 6 minecraft:mob_attack

# VFX
execute at @e[tag=ec.rd_cb_banner,limit=1,sort=nearest] run particle minecraft:dust{color:[0.9,0.1,0.1],scale:2.0} ~ ~1 ~ 0.5 0.5 0.5 0 15
execute at @e[tag=ec.rd_cb_banner,limit=1,sort=nearest] run playsound minecraft:entity.item.break master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Bad timing! The banner shreds apart!",color:"red"}]
