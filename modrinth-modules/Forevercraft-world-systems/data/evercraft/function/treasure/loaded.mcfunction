# Loads only for the first time

execute store result score $difficulty ec.var run difficulty

function evercraft:treasure/settings/progression/standard

function evercraft:treasure/settings/frequency/standard

data modify storage evercraft:treasure/settings loot_table_rolls set value {type:"minecraft:number_range",key:"loot_table_rolls",width:200,label:{text:"Loot Table Rolls"},start:5,end:50,step:1,initial:20}

function evercraft:treasure/settings/despawn/standard

data modify storage evercraft:treasure/settings disable_build set value {type:"minecraft:boolean",key:"disable_build",label:{text:"Disable Structure Spawning Items"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings disable_global set value {type:"minecraft:boolean",key:"disable_global",label:{text:"Disable Global Mythical/Mythical Sound"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings disable_common set value {type:"minecraft:boolean",key:"disable_common",label:{text:"Disable Common Treasures"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings disable_rare set value {type:"minecraft:boolean",key:"disable_rare",label:{text:"Disable Rare Treasures"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings disable_epic set value {type:"minecraft:boolean",key:"disable_epic",label:{text:"Disable Epic Treasures"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings disable_mythical set value {type:"minecraft:boolean",key:"disable_mythical",label:{text:"Disable Mythical Treasures"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings disable_mythical set value {type:"minecraft:boolean",key:"disable_mythical",label:{text:"Disable Mythical Treasures"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings runes set value {type:"minecraft:boolean",key:"runes",label:{text:"Disable Runes"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings detonation_mine set value {type:"minecraft:boolean",key:"detonation_mine",label:{text:"Disable Detonation Mines"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings silk_touch set value {type:"minecraft:boolean",key:"silk_touch",label:{text:"Disable Silk Touch Treasures"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings bedrock set value {type:"minecraft:boolean",key:"bedrock",label:{text:"Disable Bedrock/Reinforced Deepslate"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings giga_drill set value {type:"minecraft:boolean",key:"giga_drill",label:{text:"Disable Giga Drill Effect"},initial:0b,on_true:"1",on_false:"0"}

data modify storage evercraft:treasure/settings vanilla_mode set value {type:"minecraft:boolean",key:"vanilla_mode",label:{text:"Vanilla Mode",type:"text",initial:0b,on_true:"1",on_false:"0"}}

scoreboard players set $vanilla_mode ec.var 0

scoreboard players set $progression ec.var 2
scoreboard players set $frequency ec.var 2

scoreboard players set #load1 ec.var 1