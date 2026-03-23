# Showcase — Raycast display single pin (macro)
# $(slot) from inline, $(name) $(desc) $(color) from storage pin

$tellraw @s [{text:"  "},{"text":"$(slot). ","color":"gray"},{"text":"\\u2726 $(name)","color":"$(color)","bold":true}]
$tellraw @s [{text:"     "},{"text":"$(desc)","color":"gray","italic":true}]
