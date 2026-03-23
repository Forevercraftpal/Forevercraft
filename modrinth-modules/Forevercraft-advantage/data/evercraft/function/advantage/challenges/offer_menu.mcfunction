# Challenge Menu — clickable challenge list

# If player has active challenge, show progress instead
execute if score @s adv.chal_id matches 1.. run return run function evercraft:advantage/challenges/show_progress

tellraw @s {text:""}
tellraw @s [{text:"  ✦ Advantage Challenges ✦",color:"gold",bold:true}]
tellraw @s {text:""}
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 1"}},{text:" Marathon ",color:"aqua"},{text:"— Walk 10,000 blocks ",color:"gray"},{text:"(100 XP + 10 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 2"}},{text:" Speedster ",color:"aqua"},{text:"— Sprint 60s nonstop ",color:"gray"},{text:"(15 XP + 1 token)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 3"}},{text:" Marksman ",color:"yellow"},{text:"— Land 50 attacks on mobs ",color:"gray"},{text:"(30 XP + 3 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 4"}},{text:" Ghost ",color:"white"},{text:"— Dodge 50 attacks ",color:"gray"},{text:"(77 XP + 7 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 5"}},{text:" Untouched ",color:"white"},{text:"— No damage for 10 min ",color:"gray"},{text:"(30 XP + 3 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 6"}},{text:" Phantom ",color:"dark_gray"},{text:"— Sneak 5,000 blocks ",color:"gray"},{text:"(50 XP + 5 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 7"}},{text:" Tank ",color:"red"},{text:"— Take 200 damage ",color:"gray"},{text:"(50 XP + 5 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 8"}},{text:" Deathless ",color:"red"},{text:"— Don't die for 7 days ",color:"gray"},{text:"(77 XP + 7 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 9"}},{text:" Grinder ",color:"dark_purple"},{text:"— Complete 25 quests ",color:"gray"},{text:"(100 XP + 10 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 10"}},{text:" Pack Alpha ",color:"green"},{text:"— Max 3 pets ",color:"gray"},{text:"(50 XP + 5 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 11"}},{text:" Slayer ",color:"dark_red"},{text:"— Kill 500 mobs ",color:"gray"},{text:"(100 XP + 10 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 12"}},{text:" Perfect Cast ",color:"blue"},{text:"— Catch 100 fish ",color:"gray"},{text:"(15 XP + 1 token)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 13"}},{text:" Deep Core ",color:"gold"},{text:"— Mine 5,000 blocks ",color:"gray"},{text:"(100 XP + 10 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 14"}},{text:" Fortunate ",color:"gold"},{text:"— Mine 500 ores ",color:"gray"},{text:"(15 XP + 1 token)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 15"}},{text:" Green Thumb ",color:"green"},{text:"— Harvest 1,000 crops ",color:"gray"},{text:"(50 XP + 5 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 16"}},{text:" Iron Chef ",color:"gray"},{text:"— Smelt 500 items ",color:"gray"},{text:"(50 XP + 5 tokens)",color:"dark_gray"}]
tellraw @s [{text:" "},{text:"[Accept]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.challenge set 17"}},{text:" Cartographer ",color:"dark_aqua"},{text:"— Find 10 structure crates ",color:"gray"},{text:"(50 XP + 5 tokens)",color:"dark_gray"}]
tellraw @s {text:""}
