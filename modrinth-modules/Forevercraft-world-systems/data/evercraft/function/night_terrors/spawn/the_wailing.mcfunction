# Night Terror — The Wailing (Stray, Ice/Sorrow theme)
summon stray ~ ~ ~ {Tags:["ec.night_terror","ec.nt_wailing"],CustomName:{text:"The Wailing",color:"#880000",bold:true,italic:false},CustomNameVisible:1b,PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow",components:{"minecraft:enchantments":{"minecraft:power":3}}}},drop_chances:{mainhand:0.0f}}
effect give @e[type=stray,tag=ec.nt_wailing,limit=1,sort=nearest] minecraft:glowing infinite 0 true
team join ec.night_terror @e[type=stray,tag=ec.nt_wailing,limit=1,sort=nearest]
