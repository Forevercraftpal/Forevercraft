# Guild Menu — [?] info button clicked: show activity description in chat
# @s = player

execute if score #gd_event_activity ec.var matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Fishing Derby",color:"gold",bold:true},{text:"\nCatch fish to earn points. Each catch = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 2 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Mining Crates",color:"gold",bold:true},{text:"\nFind crates in prospecting structures. Each crate = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 3 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Diamond Mining",color:"gold",bold:true},{text:"\nMine diamond ore blocks. Each ore mined = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 4 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Patron Slaying",color:"gold",bold:true},{text:"\nDefeat patron mobs. Each patron kill = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 5 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Crop Harvesting",color:"gold",bold:true},{text:"\nHarvest crops (wheat, carrots, potatoes, beetroot). Each = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 6 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Gather Nodes",color:"gold",bold:true},{text:"\nComplete forage gathering nodes. Each node = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 7 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Mining Nodes",color:"gold",bold:true},{text:"\nComplete mining/prospecting nodes. Each node = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 8 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Lore Discovery",color:"gold",bold:true},{text:"\nFind lore sparkles in the world. Each discovery = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 9 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Mob Kills",color:"gold",bold:true},{text:"\nKill hostile mobs. Each kill = +1 point.",color:"gray"}]
execute if score #gd_event_activity ec.var matches 10 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Harvest Crates",color:"gold",bold:true},{text:"\nGet lucky crate drops from forage/mining nodes. Each crate = +1 point.",color:"gray"}]

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.5
