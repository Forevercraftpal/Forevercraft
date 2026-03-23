# Dreaming Realm — 30 Second Warning
# Context: as @s = dreaming player

tellraw @s [{text:""},{"text":"✦ ","color":"red"},{"text":"The dream is shattering... ","color":"#D4A574","italic":true},{"text":"30 seconds remain!","color":"red","bold":true}]

# Bossbar turns red
bossbar set evercraft:dream_timer color red

# Brief blindness flicker (1 tick)
effect give @s blindness 1 0 true

playsound entity.warden.heartbeat master @s ~ ~ ~ 0.8 1.0
