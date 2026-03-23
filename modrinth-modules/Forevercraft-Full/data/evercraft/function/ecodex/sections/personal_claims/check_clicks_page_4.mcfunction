# Click Detection — Page 4 (One-Time)

# s1: First Blood
execute as @e[type=interaction,tag=Ec.SMsCl1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s1",score:"ach.total_kills",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s2: Adventurer's Call
execute as @e[type=interaction,tag=Ec.SMsCl2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s2",score:"ach.quests_done",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s3: Boss Challenger
execute as @e[type=interaction,tag=Ec.SMsCl3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s3",score:"ach.boss_kills",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"uncommon",t2:"uncommon",t3:"uncommon",t4:"uncommon",t5:"uncommon",c1:10,c2:10,c3:10,c4:10,c5:10}

# s4: Dungeon Crawler
execute as @e[type=interaction,tag=Ec.SMsCl4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s4",score:"ach.dungeons_done",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"uncommon",t2:"uncommon",t3:"uncommon",t4:"uncommon",t5:"uncommon",c1:10,c2:10,c3:10,c4:10,c5:10}

# s5: Pet Owner
execute as @e[type=interaction,tag=Ec.SMsCl5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s5",score:"ach.comp_owned",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s6: Soulbound
execute as @e[type=interaction,tag=Ec.SMsCl6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s6",score:"ach.comp_eternal",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"rare",t2:"rare",t3:"rare",t4:"rare",t5:"rare",c1:15,c2:15,c3:15,c4:15,c5:15}

# s7: Lucky Find
execute as @e[type=interaction,tag=Ec.SMsCl7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s7",score:"ec.artifacts_ever",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s8: Lore Seeker
execute as @e[type=interaction,tag=Ec.SMsCl8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s8",score:"ach.lore_found",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s9: Treasure Hunter
execute as @e[type=interaction,tag=Ec.SMsCl9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s9",score:"ach.structures_found",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s10: Unboxing Day
execute as @e[type=interaction,tag=Ec.SMsCl10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s10",score:"ach.crates_opened",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s11: Deal Maker
execute as @e[type=interaction,tag=Ec.SMsCl11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s11",score:"ach.adj_trade",th1:10,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s12: Bounty Contract
execute as @e[type=interaction,tag=Ec.SMsCl12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s12",score:"ec.bounty_done",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"uncommon",t2:"uncommon",t3:"uncommon",t4:"uncommon",t5:"uncommon",c1:10,c2:10,c3:10,c4:10,c5:10}

# s13: Wing Commander
execute as @e[type=interaction,tag=Ec.SMsCl13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s13",score:"ach.elytra_merges",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"rare",t2:"rare",t3:"rare",t4:"rare",t5:"rare",c1:15,c2:15,c3:15,c4:15,c5:15}

# s14: Rune Apprentice
execute as @e[type=interaction,tag=Ec.SMsCl14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s14",score:"ach.runes_forged",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"uncommon",t2:"uncommon",t3:"uncommon",t4:"uncommon",t5:"uncommon",c1:10,c2:10,c3:10,c4:10,c5:10}

# s15: Transmute Novice
execute as @e[type=interaction,tag=Ec.SMsCl15,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s15",score:"ach.transmutes_done",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"uncommon",t2:"uncommon",t3:"uncommon",t4:"uncommon",t5:"uncommon",c1:10,c2:10,c3:10,c4:10,c5:10}

# s16: Kitchen Fire
execute as @e[type=interaction,tag=Ec.SMsCl16,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s16",score:"ach.meals_cooked",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s17: Nature Walk
execute as @e[type=interaction,tag=Ec.SMsCl17,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s17",score:"ach.forages_done",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s18: Ore Finder
execute as @e[type=interaction,tag=Ec.SMsCl18,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s18",score:"ach.prospects_done",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s19: First Catch
execute as @e[type=interaction,tag=Ec.SMsCl19,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s19",score:"ach.fish_caught",th1:1,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}

# s20: Pickaxe Ready
execute as @e[type=interaction,tag=Ec.SMsCl20,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/ecodex_claim_click {system:"personal",id:"s20",score:"ach.blocks_mined",th1:100,th2:999999999,th3:999999999,th4:999999999,th5:999999999,t1:"common",t2:"common",t3:"common",t4:"common",t5:"common",c1:5,c2:5,c3:5,c4:5,c5:5}


# === LEFT-CLICK INFO (attack detection) ===
execute as @e[type=interaction,tag=Ec.SMsCl1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"First Blood",desc:"Defeat your very first hostile mob",score:"ach.total_kills",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Adventurer's Call",desc:"Complete your first quest",score:"ach.quests_done",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Boss Challenger",desc:"Defeat your first boss monster",score:"ach.boss_kills",th1:1,t1:"Uncommon",tc1:"blue"}
execute as @e[type=interaction,tag=Ec.SMsCl4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Dungeon Crawler",desc:"Complete your first dungeon",score:"ach.dungeons_done",th1:1,t1:"Uncommon",tc1:"blue"}
execute as @e[type=interaction,tag=Ec.SMsCl5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Pet Owner",desc:"Obtain your first companion",score:"ach.comp_owned",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Soulbound",desc:"Bond your first companion to Eternal",score:"ach.comp_eternal",th1:1,t1:"Rare",tc1:"aqua"}
execute as @e[type=interaction,tag=Ec.SMsCl7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Lucky Find",desc:"Discover your first artifact",score:"ec.artifacts_ever",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Lore Seeker",desc:"Find your first lore piece",score:"ach.lore_found",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Treasure Hunter",desc:"Discover your first structure",score:"ach.structures_found",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Unboxing Day",desc:"Open your first treasure crate",score:"ach.crates_opened",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Deal Maker",desc:"Complete 10 villager trades",score:"ach.adj_trade",th1:10,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Bounty Contract",desc:"Complete your first bounty",score:"ec.bounty_done",th1:1,t1:"Uncommon",tc1:"blue"}
execute as @e[type=interaction,tag=Ec.SMsCl13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Wing Commander",desc:"Merge your first elytra at the sky forge",score:"ach.elytra_merges",th1:1,t1:"Rare",tc1:"aqua"}
execute as @e[type=interaction,tag=Ec.SMsCl14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Rune Apprentice",desc:"Forge your first rune",score:"ach.runes_forged",th1:1,t1:"Uncommon",tc1:"blue"}
execute as @e[type=interaction,tag=Ec.SMsCl15,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Transmute Novice",desc:"Perform your first transmutation",score:"ach.transmutes_done",th1:1,t1:"Uncommon",tc1:"blue"}
execute as @e[type=interaction,tag=Ec.SMsCl16,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Kitchen Fire",desc:"Cook your first meal recipe",score:"ach.meals_cooked",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl17,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Nature Walk",desc:"Forage for the first time",score:"ach.forages_done",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl18,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Ore Finder",desc:"Prospect for ores for the first time",score:"ach.prospects_done",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl19,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"First Catch",desc:"Catch your first fish",score:"ach.fish_caught",th1:1,t1:"Common",tc1:"white"}
execute as @e[type=interaction,tag=Ec.SMsCl20,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s attack run function evercraft:ecodex/sections/show_milestone_info_1 {name:"Pickaxe Ready",desc:"Mine 100 blocks",score:"ach.blocks_mined",th1:100,t1:"Common",tc1:"white"}
