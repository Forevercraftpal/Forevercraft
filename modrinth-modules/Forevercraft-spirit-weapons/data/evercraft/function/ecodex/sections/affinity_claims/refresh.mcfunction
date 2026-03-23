# Ecodex — Refresh Affinity Claims Display
# Run as: player, at player

function evercraft:ecodex/sections/refresh_affinity_row {cls:"rg",tag:"Ec.AffS1",name:"Rogue",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"bk",tag:"Ec.AffS2",name:"Berserker",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"dn",tag:"Ec.AffS3",name:"Dancer",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"sk",tag:"Ec.AffS4",name:"Striker",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"kt",tag:"Ec.AffS5",name:"Sentinel",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"hl",tag:"Ec.AffS6",name:"Healer",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"bl",tag:"Ec.AffS7",name:"Beastlord",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"jv",tag:"Ec.AffS8",name:"Javelin",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"hp",tag:"Ec.AffS9",name:"Hoplite",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"ar",tag:"Ec.AffS10",name:"Archer",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"ht",tag:"Ec.AffS11",name:"Hunter",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"tk",tag:"Ec.AffS12",name:"Tank",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"kn",tag:"Ec.AffS13",name:"Knight",max:7}
function evercraft:ecodex/sections/refresh_affinity_row {cls:"ds",tag:"Ec.AffS14",name:"Dual Swordsman",max:7}

# Bulk claim prompt (if 2+ unclaimed stages available)
function evercraft:claim/count_affinity
execute if score @s ec.claim_aff matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"dark_red","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 4"},"hover_event":{"action":"show_text","value":"Claim all pending affinity rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_aff"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
