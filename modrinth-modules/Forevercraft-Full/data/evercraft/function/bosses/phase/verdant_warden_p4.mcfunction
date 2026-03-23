# Verdant Warden — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 evoker minions
summon evoker ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Verdant Invoker",color:"dark_green"}}
summon evoker ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Verdant Invoker",color:"dark_green"}}

# Nature's wrath VFX
particle minecraft:happy_villager ~ ~1 ~ 5 2 5 0.1 40
particle minecraft:spore_blossom_air ~ ~2 ~ 3 2 3 0.05 30
playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2.0 0.5
