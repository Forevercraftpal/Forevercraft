# Trade Trial — Emergency Exit (/trigger ec.tt_exit)
# Run as: the player who triggered exit

tellraw @s {"text":"Emergency exit — trial abandoned.","color":"red"}
playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 0.5 0.8
function evercraft:craftforever/trials/cleanup_player
