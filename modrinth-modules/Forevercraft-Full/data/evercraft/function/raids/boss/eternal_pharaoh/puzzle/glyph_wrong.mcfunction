# The Eternal Pharaoh — Wrong Pillar Hit
# Sand trap: Slowness V + Blindness 3s to nearby player

# Punish the player who clicked (nearest to this pillar)
effect give @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] slowness 3 4
effect give @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] blindness 3 0

# VFX
particle minecraft:dust{color:[0.9,0.7,0.1],scale:2.0} ~ ~1 ~ 1 1 1 0.1 20
playsound minecraft:entity.husk.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.4

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Wrong pillar! Sand trap triggered!",color:"red"}]
