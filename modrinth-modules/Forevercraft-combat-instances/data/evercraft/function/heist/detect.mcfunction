# Black Market Heist — Detect (run as player near BM barrel with key)
# Shows clickable [ATTEMPT HEIST] prompt if cooldown is clear

# Tag nearest barrel for reference
tag @e[type=marker,tag=BM.Barrel,distance=..5,sort=nearest,limit=1] add heist.target_barrel

# Check cooldown for this player + barrel
function evercraft:heist/cooldown/check

# If on cooldown, show remaining time and bail
execute if score #heist_cd_active ec.var matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This black market is on lockdown. Try again in ",color:"gray"},{"score":{"name":"#heist_cd_days","objective":"ec.var"},"color":"gold"},{"text":" day(s).","color":"gray"}]
execute if score #heist_cd_active ec.var matches 1 run tag @e[tag=heist.target_barrel] remove heist.target_barrel
execute if score #heist_cd_active ec.var matches 1 run return 0

# Show clickable heist prompt
tellraw @s [{text:"\n"},{text:"  \u2620 ",color:"dark_red"},{text:"HEIST OPPORTUNITY",color:"red",bold:true},{text:" \u2620\n",color:"dark_red"},{text:"  A smuggler's gauntlet awaits above...\n",color:"gray",italic:true},{text:"  Your dungeon key can get you in.\n\n",color:"dark_gray"},{text:"  "},{text:"[ATTEMPT HEIST]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.heist set 1"},hover_event:{action:"show_text",value:{text:"Risk your key for contraband rewards!",color:"gold"}}},{text:"\n"}]

# Clean barrel tag
tag @e[tag=heist.target_barrel] remove heist.target_barrel
