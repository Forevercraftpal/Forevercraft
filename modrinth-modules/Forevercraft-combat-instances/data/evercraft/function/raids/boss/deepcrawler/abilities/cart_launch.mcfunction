# The Deepcrawler — Cart Launch
# Launches a minecart attack from a random direction
# Telegraph first, then damage after 40 ticks

# Pick random direction (1-4)
execute store result score #rd_temp ec.var run random value 1..4

# Telegraph: sound + particles at the tunnel entrance
execute if score #rd_temp ec.var matches 1 at @e[tag=ec.rd_dc_lever1,limit=1] run particle minecraft:dust{color:[0.8,0.2,0.1],scale:1.5} ~ ~1 ~ 1 1 1 0 20
execute if score #rd_temp ec.var matches 2 at @e[tag=ec.rd_dc_lever2,limit=1] run particle minecraft:dust{color:[0.8,0.2,0.1],scale:1.5} ~ ~1 ~ 1 1 1 0 20
execute if score #rd_temp ec.var matches 3 at @e[tag=ec.rd_dc_lever3,limit=1] run particle minecraft:dust{color:[0.8,0.2,0.1],scale:1.5} ~ ~1 ~ 1 1 1 0 20
execute if score #rd_temp ec.var matches 4 at @e[tag=ec.rd_dc_lever4,limit=1] run particle minecraft:dust{color:[0.8,0.2,0.1],scale:1.5} ~ ~1 ~ 1 1 1 0 20

# Sound: rail clinking
playsound minecraft:block.chain.break master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.8

# Tag a random participant near the rail path for targeting
tag @a[tag=ec.rd_participant,sort=random,limit=1] add ec.rd_dc_cart_target

# Schedule the cart impact
schedule function evercraft:raids/boss/deepcrawler/abilities/cart_impact 40t
