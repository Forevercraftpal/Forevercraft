# Spawn Woodcutter laborer villager
summon villager ~ ~ ~ {Tags:["ec.laborer","ec.lb_new","ec.lb_woodcutter","smithed.entity"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,NoAI:1b,VillagerData:{profession:"minecraft:fletcher",level:5,type:"minecraft:taiga"},Offers:{Recipes:[]}}

# Pick random name from pool and set via macro
function evercraft:laborer/hire/set_name {type:"woodcutter"}
