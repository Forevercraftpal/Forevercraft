# Merchant Caravan — Spawn the merchant near the selected player
# Called as a random player, at their position

# Spawn the wandering trader nearby with persistence
summon wandering_trader ~3 ~ ~3 {Tags:["CAL.Merchant"],CustomName:{text:"Traveling Merchant",color:"aqua",bold:true,italic:false},Invulnerable:1b,PersistenceRequired:1b,Glowing:1b,DespawnDelay:999999}

# Particles and sound at spawn
particle minecraft:happy_villager ~3 ~1 ~3 0.5 0.5 0.5 0.05 15
playsound minecraft:entity.wandering_trader.yes master @a[distance=..32] ~3 ~1 ~3 0.8 1.0
