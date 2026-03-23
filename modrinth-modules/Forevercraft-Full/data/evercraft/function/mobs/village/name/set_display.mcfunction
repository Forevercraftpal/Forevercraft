# Village Name Plate — RPG Restyle (S69, fixed S79)
# Dark translucent background, decorative brackets, larger scale
# Raised 7 blocks above bell so it's always visible over rooftops
# Called with entity @s (the village armor stand marker)

$execute unless entity @e[type=text_display,tag=bestiary.village.name,distance=..10] run summon text_display ~ ~7 ~ {billboard:"vertical",shadow:1b,Tags:["bestiary.village.name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,1.4f,1.4f]},text:[{text:"◆ ",color:"#D6D0C7"},$(CustomName),{text:" ◆",color:"#D6D0C7"}],background:2130706432}
