# Knight Sword Detection — Activate knight mode and check fencer stance
# Run as player who just equipped a knight sword in mainhand

tag @s add ec.kt_active

# === FENCER STANCE CHECK ===
# If no shield in offhand, apply fencer bonuses immediately
execute unless items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/knight/fencer_on

# === ACTIVATION FEEDBACK ===
playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 0.8 1.2
execute if score @s ec.kt_fencer matches 1 run title @s actionbar [{"text":"Knight Mode, ","color":"gold","bold":true},{"text":"Fencing Stance","color":"#C0A040","bold":true},{"text":" — blade ready","color":"yellow","bold":false}]
execute unless score @s ec.kt_fencer matches 1 run title @s actionbar [{"text":"Tank Mode","color":"#4A90D9","bold":true},{"text":" — blade ready","color":"white","bold":false}]
