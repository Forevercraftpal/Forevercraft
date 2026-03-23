# Ecodex — Craftforever Claims Click Detection + Auto-Refresh (Section 18)
# Run as: player with menu open

# === AUTO-REFRESH (every 60 ticks) ===
execute store result score #ms_refresh ec.temp run time query gametime
scoreboard players operation #ms_refresh ec.temp %= #60 ec.const
execute if score #ms_refresh ec.temp matches 0 run function evercraft:ecodex/sections/craftforever_claims/refresh

# === TITLE CLICK — CLAIM ALL CRAFTFOREVER ===
execute as @e[type=interaction,tag=Ec.CfTitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/craftforever_claims/claim_title_click

# === CLAIM CLICKS (standard score milestones) ===
# c1: Master Chef — uncommon/rare/ornate/exquisite/mythical + 5/10/20/35/50
execute as @e[type=interaction,tag=Ec.CMsCl1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c1",score:"ach.meals_cooked",th1:25,th2:75,th3:200,th4:400,th5:750,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c2: Combat Chef
execute as @e[type=interaction,tag=Ec.CMsCl2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c2",score:"ck.m_combat",th1:10,th2:30,th3:60,th4:100,th5:150,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c3: Mining Chef
execute as @e[type=interaction,tag=Ec.CMsCl3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c3",score:"ck.m_mining",th1:10,th2:30,th3:60,th4:100,th5:150,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c4: Fortune Chef
execute as @e[type=interaction,tag=Ec.CMsCl4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c4",score:"ck.m_fortune",th1:10,th2:30,th3:60,th4:100,th5:150,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c5: Recipe Hunter
execute as @e[type=interaction,tag=Ec.CMsCl5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c5",score:"ach.recipes_learned",th1:10,th2:20,th3:30,th4:35,th5:42,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c6: Trial Champion
execute as @e[type=interaction,tag=Ec.CMsCl6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c6",score:"ec.tt_completed",th1:10,th2:30,th3:60,th4:100,th5:200,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c7: Artisan Rank
execute as @e[type=interaction,tag=Ec.CMsCl7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c7",score:"ec.cf_rank",th1:20,th2:40,th3:60,th4:80,th5:100,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c8: Master Forger
execute as @e[type=interaction,tag=Ec.CMsCl8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c8",score:"ec.cf_total_forges",th1:25,th2:75,th3:200,th4:400,th5:750,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c9: Spirit Toolsmith (4 stages, th5=999 unreachable)
execute as @e[type=interaction,tag=Ec.CMsCl9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c9",score:"ec.st_tools_made",th1:1,th2:3,th3:5,th4:6,th5:999,t1:"rare",t2:"ornate",t3:"exquisite",t4:"mythical",t5:"mythical",c1:10,c2:20,c3:35,c4:50,c5:75}

# === BITFIELD MILESTONES (c10, c11) — custom click handlers ===
# c10: Material Collector (bitfield)
execute as @e[type=interaction,tag=Ec.CMsCl10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/craftforever_claims/click_c10

# c11: Biome Node Hunter (bitfield)
execute as @e[type=interaction,tag=Ec.CMsCl11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/craftforever_claims/click_c11

# c12: Pantry Hoarder
execute as @e[type=interaction,tag=Ec.CMsCl12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c12",score:"ec.pantry_stored",th1:50,th2:200,th3:500,th4:1000,th5:2000,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# === TRIAL MASTERY MILESTONES ===
# c13: Mining Master
execute as @e[type=interaction,tag=Ec.CMsCl13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c13",score:"ec.tt_m_best",th1:2,th2:4,th3:6,th4:8,th5:10,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c14: Harvest Lord
execute as @e[type=interaction,tag=Ec.CMsCl14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c14",score:"ec.tt_farm_best",th1:2,th2:4,th3:6,th4:8,th5:10,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c15: Master Angler
execute as @e[type=interaction,tag=Ec.CMsCl15,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c15",score:"ec.tt_fish_best",th1:2,th2:4,th3:6,th4:8,th5:10,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c16: Grand Architect
execute as @e[type=interaction,tag=Ec.CMsCl16,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c16",score:"ec.tt_build_best",th1:2,th2:4,th3:6,th4:8,th5:10,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c17: Lumberjack Legend
execute as @e[type=interaction,tag=Ec.CMsCl17,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c17",score:"ec.tt_lumb_best",th1:2,th2:4,th3:6,th4:8,th5:10,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c18: Artisan Supreme
execute as @e[type=interaction,tag=Ec.CMsCl18,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c18",score:"ec.tt_art_best",th1:2,th2:4,th3:6,th4:8,th5:10,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}

# c19: Grand Master
execute as @e[type=interaction,tag=Ec.CMsCl19,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c19",score:"ec.tt_mastery",th1:1,th2:2,th3:4,th4:5,th5:6,t1:"rare",t2:"ornate",t3:"exquisite",t4:"mythical",t5:"mythical",c1:10,c2:20,c3:35,c4:50,c5:75}

# c20: Speed Demon
execute as @e[type=interaction,tag=Ec.CMsCl20,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"craftforever",id:"c20",score:"ec.tt_speed_clear",th1:1,th2:5,th3:15,th4:30,th5:60,t1:"uncommon",t2:"rare",t3:"ornate",t4:"exquisite",t5:"mythical",c1:5,c2:10,c3:20,c4:35,c5:50}
