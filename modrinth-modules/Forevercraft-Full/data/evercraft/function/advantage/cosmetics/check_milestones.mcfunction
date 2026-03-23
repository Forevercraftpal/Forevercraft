# Check if a level milestone was reached and unlock cosmetic
# #milestone_check adv.temp = the new level just reached
# Called from each levelup function after incrementing

# Only act on milestone levels
execute unless score #milestone_check adv.temp matches 5 unless score #milestone_check adv.temp matches 10 unless score #milestone_check adv.temp matches 15 unless score #milestone_check adv.temp matches 20 unless score #milestone_check adv.temp matches 25 run return 0

# Determine which tier to unlock
execute if score #milestone_check adv.temp matches 5 run scoreboard players set #tier adv.temp 1
execute if score #milestone_check adv.temp matches 10 run scoreboard players set #tier adv.temp 2
execute if score #milestone_check adv.temp matches 15 run scoreboard players set #tier adv.temp 3
execute if score #milestone_check adv.temp matches 20 run scoreboard players set #tier adv.temp 4
execute if score #milestone_check adv.temp matches 25 run scoreboard players set #tier adv.temp 5

# Check if this tier's bit is already set (prevent double-unlocking)
scoreboard players operation #bit_check adv.temp = @s adv.cosm_unlock
execute if score #tier adv.temp matches 1 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #tier adv.temp matches 2 run scoreboard players operation #bit_check adv.temp /= #2 adv.temp
execute if score #tier adv.temp matches 2 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #tier adv.temp matches 3 run scoreboard players operation #bit_check adv.temp /= #4 adv.temp
execute if score #tier adv.temp matches 3 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #tier adv.temp matches 4 run scoreboard players operation #bit_check adv.temp /= #8 adv.temp
execute if score #tier adv.temp matches 4 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #tier adv.temp matches 5 run scoreboard players operation #bit_check adv.temp /= #16 adv.temp
execute if score #tier adv.temp matches 5 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp

# Already unlocked — skip
execute unless score #bit_check adv.temp matches 0 run return 0

# Unlock: set the bit
execute if score #tier adv.temp matches 1 run scoreboard players add @s adv.cosm_unlock 1
execute if score #tier adv.temp matches 2 run scoreboard players add @s adv.cosm_unlock 2
execute if score #tier adv.temp matches 3 run scoreboard players add @s adv.cosm_unlock 4
execute if score #tier adv.temp matches 4 run scoreboard players add @s adv.cosm_unlock 8
execute if score #tier adv.temp matches 5 run scoreboard players add @s adv.cosm_unlock 16

# Auto-assign cosmetic tree if not set
execute if score @s adv.cosm_tree matches 0 run scoreboard players set @s adv.cosm_tree 1

# Announce unlock — equip via Advantage Trees menu (Codex)
execute if score #tier adv.temp matches 1 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic Unlocked: ",color:"dark_purple"},{text:"Particle Aura",color:"aqua"},{text:" — Toggle via Advantage Trees menu!",color:"gray"}]
execute if score #tier adv.temp matches 2 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic Unlocked: ",color:"dark_purple"},{text:"Title Tag",color:"aqua"},{text:" — Toggle via Advantage Trees menu!",color:"gray"}]
execute if score #tier adv.temp matches 3 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic Unlocked: ",color:"dark_purple"},{text:"Effect Trail",color:"aqua"},{text:" — Toggle via Advantage Trees menu!",color:"gray"}]
execute if score #tier adv.temp matches 4 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic Unlocked: ",color:"dark_purple"},{text:"Glowing Outline",color:"aqua"},{text:" — Toggle via Advantage Trees menu!",color:"gray"}]
execute if score #tier adv.temp matches 5 run tellraw @s [{text:"✦ ",color:"gold"},{text:"Cosmetic Unlocked: ",color:"dark_purple"},{text:"Crown Particles",color:"aqua"},{text:" — Toggle via Advantage Trees menu!",color:"gray"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5
