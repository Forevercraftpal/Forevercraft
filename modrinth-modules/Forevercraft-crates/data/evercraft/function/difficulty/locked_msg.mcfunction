# Show "difficulty locked" message with remaining days
# Expects #_diff_now ec.temp = days elapsed since last choice

scoreboard players set #_diff_remain ec.temp 14
scoreboard players operation #_diff_remain ec.temp -= #_diff_now ec.temp

tellraw @s [{text:"[!] ",color:"red"},{text:"Difficulty is locked for ",color:"gray"},{score:{name:"#_diff_remain",objective:"ec.temp"},color:"yellow"},{text:" more day(s).",color:"gray"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.3 0.5
