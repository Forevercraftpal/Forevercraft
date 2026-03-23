# Spawn the info browser frame (background, title, nav, close)
# Runs positioned at anchor location (^ ^1.55 ^1.8 from player)

# Background panel
summon item_display ~ ~ ~ {Tags:["ec.GachaInfoFrame","smithed.entity"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.4f,1.6f,0.01f]}}

# Title: "Gacha Rewards"
execute positioned ^ ^0.5 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.GachaInfoFrame","smithed.entity"],billboard:"center",text:{text:"\u2726 Gacha Rewards \u2726",color:"#E0B0FF",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# Nav prev: <
execute positioned ^0.85 ^-0.38 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.GachaInfoFrame","smithed.entity"],billboard:"center",text:{text:"\u25C0",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute positioned ^0.85 ^-0.36 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoFrame","ec.GachaInfoPrev","smithed.entity"],width:0.04f,height:0.025f,response:1b}

# Nav next: >
execute positioned ^-0.85 ^-0.38 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.GachaInfoFrame","smithed.entity"],billboard:"center",text:{text:"\u25B6",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute positioned ^-0.85 ^-0.36 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoFrame","ec.GachaInfoNext","smithed.entity"],width:0.04f,height:0.025f,response:1b}

# Page number
execute positioned ^0 ^-0.38 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.GachaInfoFrame","ec.GachaInfoPage","smithed.entity"],billboard:"center",text:{text:"Page 1/3",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}

# Close: [Back]
execute positioned ^0 ^-0.52 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.GachaInfoFrame","smithed.entity"],billboard:"center",text:{text:"[Back]",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute positioned ^0 ^-0.50 ^-0.05 run summon interaction ~ ~ ~ {Tags:["ec.GachaInfoFrame","ec.GachaInfoClose","smithed.entity"],width:0.08f,height:0.02f,response:1b}
