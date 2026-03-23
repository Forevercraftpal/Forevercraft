# Milestones — Refresh Overview
# Counts completed milestones per category and updates description text
# Run as the player

# === Origins (ms 1,3,5,6,7,8,9,10,11,12 = 10 total) ===
scoreboard players set #ms_ov_cnt ec.temp 0
execute if score #rm_done_1 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_3 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_5 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_6 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_7 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_8 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_9 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_10 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_11 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_12 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
data modify entity @e[type=text_display,tag=Adv.MsOvDesc0,limit=1,sort=nearest] text set value [{score:{name:"#ms_ov_cnt",objective:"ec.temp"},color:"white"},{text:" / 10",color:"gray",italic:true}]

# === Social (ms 13-17 = 5 total) ===
scoreboard players set #ms_ov_cnt ec.temp 0
execute if score #rm_done_13 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_14 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_15 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_16 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_17 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
data modify entity @e[type=text_display,tag=Adv.MsOvDesc1,limit=1,sort=nearest] text set value [{score:{name:"#ms_ov_cnt",objective:"ec.temp"},color:"white"},{text:" / 5",color:"gray",italic:true}]

# === Guild (ms 18-22 = 5 total) ===
scoreboard players set #ms_ov_cnt ec.temp 0
execute if score #rm_done_18 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_19 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_20 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_21 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_22 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
data modify entity @e[type=text_display,tag=Adv.MsOvDesc2,limit=1,sort=nearest] text set value [{score:{name:"#ms_ov_cnt",objective:"ec.temp"},color:"white"},{text:" / 5",color:"gray",italic:true}]

# === Adventure (ms 23-26 = 4 total) ===
scoreboard players set #ms_ov_cnt ec.temp 0
execute if score #rm_done_23 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_24 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_25 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_26 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
data modify entity @e[type=text_display,tag=Adv.MsOvDesc3,limit=1,sort=nearest] text set value [{score:{name:"#ms_ov_cnt",objective:"ec.temp"},color:"white"},{text:" / 4",color:"gray",italic:true}]

# === Combat (ms 27-30 = 4 total) ===
scoreboard players set #ms_ov_cnt ec.temp 0
execute if score #rm_done_27 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_28 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_29 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_30 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
data modify entity @e[type=text_display,tag=Adv.MsOvDesc4,limit=1,sort=nearest] text set value [{score:{name:"#ms_ov_cnt",objective:"ec.temp"},color:"white"},{text:" / 4",color:"gray",italic:true}]

# === Mastery (ms 31-34 = 4 total) ===
scoreboard players set #ms_ov_cnt ec.temp 0
execute if score #rm_done_31 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_32 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_33 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
execute if score #rm_done_34 ec.var matches 1 run scoreboard players add #ms_ov_cnt ec.temp 1
data modify entity @e[type=text_display,tag=Adv.MsOvDesc5,limit=1,sort=nearest] text set value [{score:{name:"#ms_ov_cnt",objective:"ec.temp"},color:"white"},{text:" / 4",color:"gray",italic:true}]

# === Personal (count claimed personal milestones) ===
execute store result score #ms_ov_cnt ec.temp if entity @s[advancements={evercraft:claim/personal/p1_1=true}]
# Count all claimed personal advancements (simplified — use claim_prs inverse)
# For now show total personal milestone stages available
data modify entity @e[type=text_display,tag=Adv.MsOvDesc6,limit=1,sort=nearest] text set value [{score:{name:"@s",objective:"ec.claim_prs"},color:"white"},{text:" unclaimed",color:"gold",italic:true}]

# === Memories ===
data modify entity @e[type=text_display,tag=Adv.MsOvDesc7,limit=1,sort=nearest] text set value [{text:"Companion memories",color:"gray",italic:true}]
