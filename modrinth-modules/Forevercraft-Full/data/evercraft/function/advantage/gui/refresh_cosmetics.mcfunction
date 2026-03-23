# Refresh Page 2 cosmetic displays with current unlock/active status
# Uses bitfield adv.cosm_unlock (bit 0-4 = tiers 1-5)
# Uses adv.cosm_active (0=none, 1-5=active tier)
# Run as the player with menu open

# === Tier 1: Particle Aura (bit 0, val 1) — unlocks at Lv.5 ===
# Check unlock: cosm_unlock & 1
scoreboard players operation #cosm_bit adv.temp = @s adv.cosm_unlock
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
# Locked
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.Cosm0,limit=1,sort=nearest] text set value [{text:"Tier 1: ",color:"gray"},{text:"Particle Aura",color:"white"},{text:" [Lv.5]",color:"dark_gray"}]
# Unlocked but not active
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cosm_active matches 1 run data modify entity @e[type=text_display,tag=Adv.Cosm0,limit=1,sort=nearest] text set value [{text:"Tier 1: ",color:"aqua"},{text:"Particle Aura",color:"white"},{text:" [UNLOCKED]",color:"yellow"}]
# Active
execute if score @s adv.cosm_active matches 1 run data modify entity @e[type=text_display,tag=Adv.Cosm0,limit=1,sort=nearest] text set value [{text:"Tier 1: ",color:"aqua"},{text:"Particle Aura",color:"white"},{text:" [ACTIVE]",color:"green",bold:true}]

# === Tier 2: Title Tag (bit 1, val 2) — unlocks at Lv.10 ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cosm_unlock
scoreboard players operation #cosm_bit adv.temp /= #2 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.Cosm1,limit=1,sort=nearest] text set value [{text:"Tier 2: ",color:"gray"},{text:"Title Tag",color:"white"},{text:" [Lv.10]",color:"dark_gray"}]
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cosm_active matches 2 run data modify entity @e[type=text_display,tag=Adv.Cosm1,limit=1,sort=nearest] text set value [{text:"Tier 2: ",color:"aqua"},{text:"Title Tag",color:"white"},{text:" [UNLOCKED]",color:"yellow"}]
execute if score @s adv.cosm_active matches 2 run data modify entity @e[type=text_display,tag=Adv.Cosm1,limit=1,sort=nearest] text set value [{text:"Tier 2: ",color:"aqua"},{text:"Title Tag",color:"white"},{text:" [ACTIVE]",color:"green",bold:true}]

# === Tier 3: Effect Trail (bit 2, val 4) — unlocks at Lv.15 ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cosm_unlock
scoreboard players operation #cosm_bit adv.temp /= #4 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.Cosm2,limit=1,sort=nearest] text set value [{text:"Tier 3: ",color:"gray"},{text:"Effect Trail",color:"white"},{text:" [Lv.15]",color:"dark_gray"}]
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cosm_active matches 3 run data modify entity @e[type=text_display,tag=Adv.Cosm2,limit=1,sort=nearest] text set value [{text:"Tier 3: ",color:"aqua"},{text:"Effect Trail",color:"white"},{text:" [UNLOCKED]",color:"yellow"}]
execute if score @s adv.cosm_active matches 3 run data modify entity @e[type=text_display,tag=Adv.Cosm2,limit=1,sort=nearest] text set value [{text:"Tier 3: ",color:"aqua"},{text:"Effect Trail",color:"white"},{text:" [ACTIVE]",color:"green",bold:true}]

# === Tier 4: Glowing Outline (bit 3, val 8) — unlocks at Lv.20 ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cosm_unlock
scoreboard players operation #cosm_bit adv.temp /= #8 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.Cosm3,limit=1,sort=nearest] text set value [{text:"Tier 4: ",color:"gray"},{text:"Glowing Outline",color:"white"},{text:" [Lv.20]",color:"dark_gray"}]
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cosm_active matches 4 run data modify entity @e[type=text_display,tag=Adv.Cosm3,limit=1,sort=nearest] text set value [{text:"Tier 4: ",color:"aqua"},{text:"Glowing Outline",color:"white"},{text:" [UNLOCKED]",color:"yellow"}]
execute if score @s adv.cosm_active matches 4 run data modify entity @e[type=text_display,tag=Adv.Cosm3,limit=1,sort=nearest] text set value [{text:"Tier 4: ",color:"aqua"},{text:"Glowing Outline",color:"white"},{text:" [ACTIVE]",color:"green",bold:true}]

# === Tier 5: Crown Particles (bit 4, val 16) — unlocks at Lv.25 ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cosm_unlock
scoreboard players operation #cosm_bit adv.temp /= #16 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.Cosm4,limit=1,sort=nearest] text set value [{text:"Tier 5: ",color:"gray"},{text:"Crown Particles",color:"white"},{text:" [Lv.25]",color:"dark_gray"}]
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cosm_active matches 5 run data modify entity @e[type=text_display,tag=Adv.Cosm4,limit=1,sort=nearest] text set value [{text:"Tier 5: ",color:"aqua"},{text:"Crown Particles",color:"white"},{text:" [UNLOCKED]",color:"yellow"}]
execute if score @s adv.cosm_active matches 5 run data modify entity @e[type=text_display,tag=Adv.Cosm4,limit=1,sort=nearest] text set value [{text:"Tier 5: ",color:"aqua"},{text:"Crown Particles",color:"white"},{text:" [ACTIVE]",color:"green",bold:true}]
