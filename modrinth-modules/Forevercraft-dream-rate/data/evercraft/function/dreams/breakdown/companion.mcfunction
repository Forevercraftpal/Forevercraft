# Dream Rate Breakdown — Active Companion (luck base)
# Pets set luck base directly; only 13 pets provide luck

# Get base luck value (scaled x10 for decimal display)
execute store result score #dr_pet ec.temp run attribute @s luck base get 10

# Only show section if base luck > 0
execute unless score #dr_pet ec.temp matches 1.. run return 0

# Header
tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Active Companion:",color:"gray"}]

# Calculate whole and decimal
scoreboard players set #10 ec.const 10
scoreboard players operation #pet_whole ec.temp = #dr_pet ec.temp
scoreboard players operation #pet_whole ec.temp /= #10 ec.const
scoreboard players operation #pet_dec ec.temp = #dr_pet ec.temp
scoreboard players operation #pet_dec ec.temp %= #10 ec.const

# Identify which luck companion is active and display
execute if entity @s[tag=companion.butterfly] run tellraw @s [{text:"    Butterfly",color:"light_purple"},{text:" (Dream Weaver)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.golden_dragon] run tellraw @s [{text:"    Golden Dragon",color:"gold"},{text:" (Fortune's Blessing)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.panther] run tellraw @s [{text:"    Panther",color:"dark_gray"},{text:" (Night Stalker)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.red_panda] run tellraw @s [{text:"    Red Panda",color:"red"},{text:" (Playful Spirit)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.cow_of_eden] run tellraw @s [{text:"    Cow of Eden",color:"green"},{text:" (Pastoral Dreams)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.oracle] run tellraw @s [{text:"    Oracle",color:"dark_aqua"},{text:" (Fortune's Favor)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.moobloom] run tellraw @s [{text:"    Moobloom",color:"yellow"},{text:" (Floral Fortune)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.sniffer] run tellraw @s [{text:"    Sniffer",color:"dark_green"},{text:" (Ancient Nose)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.copper_golem] run tellraw @s [{text:"    Copper Golem",color:"gold"},{text:" (Dream Buttons)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.snow_fox_spirit] run tellraw @s [{text:"    Snow Fox Spirit",color:"white"},{text:" (Spirit's Blessing)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.allay] run tellraw @s [{text:"    Allay",color:"aqua"},{text:" (Joyful Presence)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.rascal] run tellraw @s [{text:"    Rascal",color:"yellow"},{text:" (Trickster's Fortune)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
execute if entity @s[tag=companion.deloris] run tellraw @s [{text:"    Deloris",color:"white"},{text:" (Dream Llama)  +",color:"gold"},{score:{name:"#pet_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pet_dec",objective:"ec.temp"},color:"gold"}]
