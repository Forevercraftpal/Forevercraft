# Spirit Raids — Boss Timeout (10 minutes elapsed)
# Boss enrages and wipes the raid — routes through exit_lose for proper cleanup

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Time has run out. The boss consumes all...","color":"dark_red","bold":true}]

# Disable boss alive flag to prevent on_death re-trigger
scoreboard players set #rd_boss_alive ec.var 0

# Boss cleanup (kill boss entities, remove bossbar)
function evercraft:raids/boss/cleanup

# Route through exit_lose for proper XP penalty, teleport home, and room cleanup
function evercraft:raids/exit_lose
