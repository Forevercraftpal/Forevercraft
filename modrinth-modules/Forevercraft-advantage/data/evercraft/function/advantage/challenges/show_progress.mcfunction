# Show active challenge progress
# Calculates progress and displays it to the player
function evercraft:advantage/challenges/show_progress_calc

# Display
tellraw @s [{text:"✦ ",color:"gold"},{text:"Active Challenge — ",color:"dark_purple"},{text:"Progress: ",color:"gray"},{score:{name:"#progress",objective:"adv.temp"},color:"gold"},{text:"/",color:"gray"},{score:{name:"#goal",objective:"adv.temp"},color:"gold"},{text:" ",color:"gray"},{text:"[Cancel]",color:"red",click_event:{action:"run_command",command:"/trigger adv.challenge set -1"}}]
