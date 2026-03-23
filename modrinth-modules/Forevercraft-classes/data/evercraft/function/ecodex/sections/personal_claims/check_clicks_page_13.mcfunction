# Click Detection — Page 13

# s121: Enderman Slayer
execute as @e[type=interaction,tag=Ec.SMsCl121,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s121",score:"ec.sp_enderman_kills",th1:50,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"rare",t2:"rare",t3:"rare",t4:"rare",t5:"rare",c1:15,c2:15,c3:15,c4:15,c5:15}

# s122: Shield Master
execute as @e[type=interaction,tag=Ec.SMsCl122,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s122",score:"ec.sp_shield_block",th1:100,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"ornate",t2:"ornate",t3:"ornate",t4:"ornate",t5:"ornate",c1:25,c2:25,c3:25,c4:25,c5:25}

# s123: Ability Variety
execute as @e[type=interaction,tag=Ec.SMsCl123,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s123",score:"ec.sp_ability_variety",th1:10,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"rare",t2:"rare",t3:"rare",t4:"rare",t5:"rare",c1:15,c2:15,c3:15,c4:15,c5:15}

# s124: Impact Striker
execute as @e[type=interaction,tag=Ec.SMsCl124,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s124",score:"ec.sp_impact_hits",th1:50,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"rare",t2:"rare",t3:"rare",t4:"rare",t5:"rare",c1:15,c2:15,c3:15,c4:15,c5:15}

# s125: Castle Floor 50
execute as @e[type=interaction,tag=Ec.SMsCl125,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s125",score:"ec.sp_castle_max",th1:50,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"ornate",t2:"ornate",t3:"ornate",t4:"ornate",t5:"ornate",c1:25,c2:25,c3:25,c4:25,c5:25}

# s126: Biome Explorer
execute as @e[type=interaction,tag=Ec.SMsCl126,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s126",score:"ec.sp_biomes",th1:20,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"rare",t2:"rare",t3:"rare",t4:"rare",t5:"rare",c1:15,c2:15,c3:15,c4:15,c5:15}

# s127: Survival Endurance
execute as @e[type=interaction,tag=Ec.SMsCl127,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s127",score:"ec.sp_survive",th1:100,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"ornate",t2:"ornate",t3:"ornate",t4:"ornate",t5:"ornate",c1:25,c2:25,c3:25,c4:25,c5:25}

# s128: Buddy Bond
execute as @e[type=interaction,tag=Ec.SMsCl128,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s128",score:"ec.bd_tier",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"uncommon",t2:"uncommon",t3:"uncommon",t4:"uncommon",t5:"uncommon",c1:10,c2:10,c3:10,c4:10,c5:10}

# s129: Best Friends Forever
execute as @e[type=interaction,tag=Ec.SMsCl129,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s129",score:"ec.bd_tier",th1:6,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"mythical",t2:"mythical",t3:"mythical",t4:"mythical",t5:"mythical",c1:75,c2:75,c3:75,c4:75,c5:75}

# s130: Heist Veteran
execute as @e[type=interaction,tag=Ec.SMsCl130,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s130",score:"ec.heist_wins",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"rare",t2:"rare",t3:"rare",t4:"rare",t5:"rare",c1:20,c2:20,c3:20,c4:20,c5:20}


# === LEFT-CLICK INFO (attack detection) ===
execute as @e[type=interaction,tag=Ec.SMsCl121,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Enderman Slayer",desc:"Defeat 50 endermen in combat",score:"ec.sp_enderman_kills",th1:50,t1:"Rare",tc1:"aqua"}
execute as @e[type=interaction,tag=Ec.SMsCl122,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Shield Master",desc:"Block 100 attacks with your shield",score:"ec.sp_shield_block",th1:100,t1:"Ornate",tc1:"dark_purple"}
execute as @e[type=interaction,tag=Ec.SMsCl123,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Ability Variety",desc:"Use 10 different ability types",score:"ec.sp_ability_variety",th1:10,t1:"Rare",tc1:"aqua"}
execute as @e[type=interaction,tag=Ec.SMsCl124,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Impact Striker",desc:"Land 50 impact strike hits",score:"ec.sp_impact_hits",th1:50,t1:"Rare",tc1:"aqua"}
execute as @e[type=interaction,tag=Ec.SMsCl125,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Castle Floor 50",desc:"Reach floor 50 in the spirit castle",score:"ec.sp_castle_max",th1:50,t1:"Ornate",tc1:"dark_purple"}
execute as @e[type=interaction,tag=Ec.SMsCl126,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Biome Explorer",desc:"Explore 20 unique biomes in spirit mode",score:"ec.sp_biomes",th1:20,t1:"Rare",tc1:"aqua"}
execute as @e[type=interaction,tag=Ec.SMsCl127,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Survival Endurance",desc:"Survive 100 waves of enemies",score:"ec.sp_survive",th1:100,t1:"Ornate",tc1:"dark_purple"}
execute as @e[type=interaction,tag=Ec.SMsCl128,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Buddy Bond",desc:"Form your first buddy bond with a tamed mob",score:"ec.bd_tier",th1:1,t1:"Uncommon",tc1:"blue"}
execute as @e[type=interaction,tag=Ec.SMsCl129,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Best Friends Forever",desc:"Reach max buddy bond tier 6",score:"ec.bd_tier",th1:6,t1:"Mythical",tc1:"gold"}
execute as @e[type=interaction,tag=Ec.SMsCl130,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Heist Veteran",desc:"Complete your first heist successfully",score:"ec.heist_wins",th1:1,t1:"Rare",tc1:"aqua"}
