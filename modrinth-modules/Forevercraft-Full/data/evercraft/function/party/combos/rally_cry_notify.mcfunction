# Rally Cry notification (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"dark_aqua"},{text:" triggered Rally Cry! ",color:"yellow"},{text:"+2 Dream Rate for 5 min!",color:"light_purple","bold":true}]
$title @a[scores={ec.party_id=$(pid)},distance=..48] actionbar {text:"The expedition's discoveries sharpen your instincts",color:"gold","italic":true}
$playsound minecraft:ui.toast.challenge_complete player @a[scores={ec.party_id=$(pid)}] ~ ~ ~ 0.6 1.0
