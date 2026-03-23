# Night Terror — The Hollow (Wither Skeleton, Void/Darkness theme)
summon wither_skeleton ~ ~ ~ {Tags:["ec.night_terror","ec.nt_hollow"],CustomName:{text:"The Hollow",color:"#880000",bold:true,italic:false},CustomNameVisible:1b,PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:netherite_sword",components:{"minecraft:enchantments":{"minecraft:sharpness":3}}}},drop_chances:{mainhand:0.0f}}
effect give @e[type=wither_skeleton,tag=ec.nt_hollow,limit=1,sort=nearest] minecraft:glowing infinite 0 true
team join ec.night_terror @e[type=wither_skeleton,tag=ec.nt_hollow,limit=1,sort=nearest]
