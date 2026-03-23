# Night Terror — Rotfather (Zombie, Decay/Plague theme)
summon zombie ~ ~ ~ {Tags:["ec.night_terror","ec.nt_rotfather"],CustomName:{text:"Rotfather",color:"#880000",bold:true,italic:false},CustomNameVisible:1b,PersistenceRequired:1b,IsBaby:0b}
effect give @e[type=zombie,tag=ec.nt_rotfather,limit=1,sort=nearest] minecraft:glowing infinite 0 true
effect give @e[type=zombie,tag=ec.nt_rotfather,limit=1,sort=nearest] minecraft:fire_resistance infinite 0 true
team join ec.night_terror @e[type=zombie,tag=ec.nt_rotfather,limit=1,sort=nearest]
