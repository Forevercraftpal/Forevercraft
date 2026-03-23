# Night Terror — Nightfang (Spider, Predator theme)
summon spider ~ ~ ~ {Tags:["ec.night_terror","ec.nt_nightfang"],CustomName:{text:"Nightfang",color:"#880000",bold:true,italic:false},CustomNameVisible:1b,PersistenceRequired:1b}
effect give @e[type=spider,tag=ec.nt_nightfang,limit=1,sort=nearest] minecraft:glowing infinite 0 true
effect give @e[type=spider,tag=ec.nt_nightfang,limit=1,sort=nearest] minecraft:speed 300 1 true
team join ec.night_terror @e[type=spider,tag=ec.nt_nightfang,limit=1,sort=nearest]
