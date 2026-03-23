# Codex of Everything — Spectator on Cooldown
# Show remaining cooldown time

# Calculate days remaining (divide by 72000)
scoreboard players operation #temp ec.var = @s ec.codex_spec_cd
scoreboard players operation #temp ec.var /= #72000 ec.const

# Show message with days remaining
tellraw @s [{text:"Codex of Everything",color:"light_purple",bold:true},{text:" is recharging... ",color:"gray"},{text:"(",color:"dark_gray"},{score:{name:"#temp",objective:"ec.var"},color:"gold"},{text:" days remaining)",color:"dark_gray"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
