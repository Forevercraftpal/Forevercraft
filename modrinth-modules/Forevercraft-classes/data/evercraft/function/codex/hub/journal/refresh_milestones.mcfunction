# Journal — Refresh Milestones Sub-Page
# Counts completed milestones per category and updates display

# Origins (milestones 1, 3, 5, 6, 7, 8, 9, 10, 11, 12)
scoreboard players set #jn_ms_cat jn.temp 0
execute if score #rm_done_1 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_3 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_5 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_6 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_7 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_8 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_9 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_10 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_11 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_12 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute store result storage evercraft:journal_gui ms_origins int 1.0 run scoreboard players get #jn_ms_cat jn.temp

# Social (milestones 13, 14, 15, 16, 17)
scoreboard players set #jn_ms_cat jn.temp 0
execute if score #rm_done_13 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_14 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_15 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_16 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_17 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute store result storage evercraft:journal_gui ms_social int 1.0 run scoreboard players get #jn_ms_cat jn.temp

# Guild (milestones 18, 19, 20, 21, 22)
scoreboard players set #jn_ms_cat jn.temp 0
execute if score #rm_done_18 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_19 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_20 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_21 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_22 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute store result storage evercraft:journal_gui ms_guild int 1.0 run scoreboard players get #jn_ms_cat jn.temp

# Adventure (milestones 23, 24, 25, 26)
scoreboard players set #jn_ms_cat jn.temp 0
execute if score #rm_done_23 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_24 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_25 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_26 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute store result storage evercraft:journal_gui ms_adventure int 1.0 run scoreboard players get #jn_ms_cat jn.temp

# Combat (milestones 27, 28, 29, 30)
scoreboard players set #jn_ms_cat jn.temp 0
execute if score #rm_done_27 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_28 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_29 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_30 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute store result storage evercraft:journal_gui ms_combat int 1.0 run scoreboard players get #jn_ms_cat jn.temp

# Mastery (milestones 31, 32, 33, 34)
scoreboard players set #jn_ms_cat jn.temp 0
execute if score #rm_done_31 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_32 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_33 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute if score #rm_done_34 ec.var matches 1 run scoreboard players add #jn_ms_cat jn.temp 1
execute store result storage evercraft:journal_gui ms_mastery int 1.0 run scoreboard players get #jn_ms_cat jn.temp

# Update displays via macro
function evercraft:codex/hub/journal/refresh_milestones_inner with storage evercraft:journal_gui

# Gold category labels when unclaimed rewards exist (per-category)
# Origins
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_1 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_1=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_3 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_3=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_5 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_5=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_6 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_6=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_7 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_7=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_8 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_8=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_9 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_9=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_10 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_10=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_11 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_11=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_12 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_12=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnMsLbl0,limit=1,sort=nearest] text set value {text:"Origins",color:"gold",bold:true}
# Social
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_13 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_13=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_14 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_14=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_15 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_15=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_16 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_16=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_17 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_17=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnMsLbl1,limit=1,sort=nearest] text set value {text:"Social",color:"gold",bold:true}
# Guild
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_18 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_18=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_19 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_19=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_20 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_20=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_21 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_21=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_22 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_22=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnMsLbl2,limit=1,sort=nearest] text set value {text:"Guild & Warfare",color:"gold",bold:true}
# Adventure
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_23 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_23=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_24 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_24=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_25 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_25=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_26 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_26=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnMsLbl3,limit=1,sort=nearest] text set value {text:"Adventure",color:"gold",bold:true}
# Combat
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_27 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_27=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_28 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_28=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_29 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_29=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_30 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_30=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnMsLbl4,limit=1,sort=nearest] text set value {text:"Combat",color:"gold",bold:true}
# Mastery
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_31 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_31=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_32 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_32=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_33 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_33=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run scoreboard players set #ms_uncl ec.temp 1
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnMsLbl5,limit=1,sort=nearest] text set value {text:"Mastery",color:"gold",bold:true}

# Gold overview title if ANY unclaimed personal milestones
execute if score @s ec.claim_rm matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Realm Milestones \u2726",color:"gold",bold:true}
execute unless score @s ec.claim_rm matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Realm Milestones \u2726",color:"#E0B0FF",bold:true}
