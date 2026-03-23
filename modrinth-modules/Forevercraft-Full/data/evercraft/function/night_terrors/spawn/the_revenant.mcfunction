# Night Terror — The Revenant (Vindicator, Vengeance theme)
summon vindicator ~ ~ ~ {Tags:["ec.night_terror","ec.nt_revenant"],CustomName:{text:"The Revenant",color:"#880000",bold:true,italic:false},CustomNameVisible:1b,PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:iron_axe",components:{"minecraft:enchantments":{"minecraft:sharpness":4}}}},drop_chances:{mainhand:0.0f}}
effect give @e[type=vindicator,tag=ec.nt_revenant,limit=1,sort=nearest] minecraft:glowing infinite 0 true
effect give @e[type=vindicator,tag=ec.nt_revenant,limit=1,sort=nearest] minecraft:resistance 300 1 true
team join ec.night_terror @e[type=vindicator,tag=ec.nt_revenant,limit=1,sort=nearest]
