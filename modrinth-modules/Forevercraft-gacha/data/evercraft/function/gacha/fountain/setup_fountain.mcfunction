# Setup Fountain — spawn marker, interaction, and label at the placed block
# Run at: the block position (block-aligned via align xyz)
# Run as: the player (@s) with tag ec.fountain_searching

# Remove searching tag (stops further scan/raycast checks)
tag @s remove ec.fountain_searching

# Summon fountain marker at block position
summon marker ~0.5 ~ ~0.5 {Tags:["ec.fountain","smithed.entity"]}

# Summon interaction entity for right-click detection (centered, tall enough to click)
summon interaction ~0.5 ~0.25 ~0.5 {Tags:["ec.fountain_click","smithed.entity"],width:1.2f,height:1.0f,response:1b}

# Summon floating label above the block
summon text_display ~0.5 ~1.4 ~0.5 {Tags:["ec.fountain_label","smithed.entity"],billboard:"center",brightness:{block:15,sky:15},text:{text:"\u2726 Fountain of Eternal Dreams \u2726",color:"#E0B0FF",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# Water particles at the fountain
particle dripping_water ~0.5 ~1.2 ~0.5 0.3 0.1 0.3 0.01 15 force
particle splash ~0.5 ~0.3 ~0.5 0.3 0.05 0.3 0.05 10 force

# Feedback
tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Fountain placed! ","color":"gold"},{"text":"Right-click to Dream of Gacha.","color":"gray"},{"text":" \u2726","color":"#E0B0FF"}]
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
