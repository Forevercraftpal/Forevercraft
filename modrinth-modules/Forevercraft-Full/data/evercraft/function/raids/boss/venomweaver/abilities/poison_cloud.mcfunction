# The Venomweaver — Poison Cloud (Phase 3)
# Massive AoE poison cloud at boss position

# Spawn area effect cloud with Poison II, lingering 8 seconds
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run summon area_effect_cloud ~ ~0.5 ~ {Tags:["ec.rd_mechanic","ec.rd_vw_cloud"],Radius:6.0f,RadiusOnUse:0.0f,RadiusPerTick:-0.003f,Duration:160,WaitTime:0,custom_particle:{type:"minecraft:entity_effect"},Color:5149489,Effects:[{id:"minecraft:poison",amplifier:1b,duration:100,show_particles:1b}]}

# VFX: massive poison burst
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_slime ~ ~1 ~ 6 2 6 0.05 80
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.evoker_fangs.attack master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.4
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.spider.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"Poison cloud spreading! Find an antidote flower!",color:"dark_purple"}]
