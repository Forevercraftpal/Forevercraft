# Player Stats — Progression

tellraw @s {text:""}
tellraw @s [{text:"  ★ ",color:"light_purple"},{text:"Progression",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Artifacts: ",color:"gray"},{score:{name:"@s",objective:"ec.artifacts_ever"},color:"gold"},{text:"/290",color:"dark_gray"}]
tellraw @s [{text:"    Achievements: ",color:"gray"},{score:{name:"@s",objective:"ach.total"},color:"green"},{text:"/601",color:"dark_gray"}]
tellraw @s [{text:"    Advantage Trees: ",color:"gray"},{score:{name:"@s",objective:"ach.trees_unlocked"},color:"white"},{text:"/13",color:"dark_gray"},{text:" (Level ",color:"dark_gray"},{score:{name:"@s",objective:"ach.total_levels"},color:"white"},{text:")",color:"dark_gray"}]
tellraw @s [{text:"    Quests Done: ",color:"gray"},{score:{name:"@s",objective:"ach.quests_done"},color:"white"},{text:" ",color:"gray"},{text:"[Village Rep]",color:"yellow",click_event:{action:"run_command",command:"/function evercraft:quests/reputation/progress_display"},hover_event:{action:"show_text",value:{text:"View village reputation progress",color:"gray"}}}]
tellraw @s [{text:"    Armor Sets: ",color:"gray"},{score:{name:"@s",objective:"ach.sets_equipped"},color:"white"},{text:"/27",color:"dark_gray"}]
tellraw @s [{text:"    Meals Cooked: ",color:"gray"},{score:{name:"@s",objective:"ach.meals_cooked"},color:"gold"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"ck.m_combat"},color:"red"},{text:"/",color:"dark_gray"},{score:{name:"@s",objective:"ck.m_mining"},color:"gray"},{text:"/",color:"dark_gray"},{score:{name:"@s",objective:"ck.m_fortune"},color:"green"},{text:"/",color:"dark_gray"},{score:{name:"@s",objective:"ck.m_wayfarer"},color:"aqua"},{text:"/",color:"dark_gray"},{score:{name:"@s",objective:"ck.m_delicacy"},color:"light_purple"},{text:"/",color:"dark_gray"},{score:{name:"@s",objective:"ck.m_seasonal"},color:"yellow"},{text:")",color:"dark_gray"}]
