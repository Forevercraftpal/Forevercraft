# Refresh Page 4 crate cosmetic displays with current unlock/active status
# Uses bitfield adv.cc_particles (bit 0-17 = particle IDs 1-18)
# Uses bitfield adv.cc_titles (bit 0-17 = title IDs 1-18)
# Uses adv.cc_part1 / adv.cc_part2 (active particle slots, 0=none, 1-18=ID)
# Uses adv.cc_title (active title, 0=none, 1-18=ID)
# Run as the player with menu open

# ============================================================
# PARTICLES
# ============================================================

# === Particle 1: Frostwalker (bit 0, pow 1) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP0,limit=1,sort=nearest] text set value {text:"Frostwalker",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 1 unless score @s adv.cc_part2 matches 1 run data modify entity @e[type=text_display,tag=Adv.CCP0,limit=1,sort=nearest] text set value {text:"Frostwalker",color:"aqua"}
execute if score @s adv.cc_part1 matches 1 run data modify entity @e[type=text_display,tag=Adv.CCP0,limit=1,sort=nearest] text set value [{text:"Frostwalker",color:"aqua"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 1 run data modify entity @e[type=text_display,tag=Adv.CCP0,limit=1,sort=nearest] text set value [{text:"Frostwalker",color:"aqua"},{text:" \u2726",color:"green",bold:true}]

# === Particle 2: Blazeborn (bit 1, pow 2) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players operation #cosm_bit adv.temp /= #2 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP1,limit=1,sort=nearest] text set value {text:"Blazeborn",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 2 unless score @s adv.cc_part2 matches 2 run data modify entity @e[type=text_display,tag=Adv.CCP1,limit=1,sort=nearest] text set value {text:"Blazeborn",color:"red"}
execute if score @s adv.cc_part1 matches 2 run data modify entity @e[type=text_display,tag=Adv.CCP1,limit=1,sort=nearest] text set value [{text:"Blazeborn",color:"red"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 2 run data modify entity @e[type=text_display,tag=Adv.CCP1,limit=1,sort=nearest] text set value [{text:"Blazeborn",color:"red"},{text:" \u2726",color:"green",bold:true}]

# === Particle 3: Soulstepper (bit 2, pow 4) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players operation #cosm_bit adv.temp /= #4 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP2,limit=1,sort=nearest] text set value {text:"Soulstepper",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 3 unless score @s adv.cc_part2 matches 3 run data modify entity @e[type=text_display,tag=Adv.CCP2,limit=1,sort=nearest] text set value {text:"Soulstepper",color:"dark_aqua"}
execute if score @s adv.cc_part1 matches 3 run data modify entity @e[type=text_display,tag=Adv.CCP2,limit=1,sort=nearest] text set value [{text:"Soulstepper",color:"dark_aqua"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 3 run data modify entity @e[type=text_display,tag=Adv.CCP2,limit=1,sort=nearest] text set value [{text:"Soulstepper",color:"dark_aqua"},{text:" \u2726",color:"green",bold:true}]

# === Particle 4: Mudtreader (bit 3, pow 8) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 8
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP3,limit=1,sort=nearest] text set value {text:"Mudtreader",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 4 unless score @s adv.cc_part2 matches 4 run data modify entity @e[type=text_display,tag=Adv.CCP3,limit=1,sort=nearest] text set value {text:"Mudtreader",color:"dark_green"}
execute if score @s adv.cc_part1 matches 4 run data modify entity @e[type=text_display,tag=Adv.CCP3,limit=1,sort=nearest] text set value [{text:"Mudtreader",color:"dark_green"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 4 run data modify entity @e[type=text_display,tag=Adv.CCP3,limit=1,sort=nearest] text set value [{text:"Mudtreader",color:"dark_green"},{text:" \u2726",color:"green",bold:true}]

# === Particle 5: Bloomstep (bit 4, pow 16) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 16
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP4,limit=1,sort=nearest] text set value {text:"Bloomstep",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 5 unless score @s adv.cc_part2 matches 5 run data modify entity @e[type=text_display,tag=Adv.CCP4,limit=1,sort=nearest] text set value {text:"Bloomstep",color:"green"}
execute if score @s adv.cc_part1 matches 5 run data modify entity @e[type=text_display,tag=Adv.CCP4,limit=1,sort=nearest] text set value [{text:"Bloomstep",color:"green"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 5 run data modify entity @e[type=text_display,tag=Adv.CCP4,limit=1,sort=nearest] text set value [{text:"Bloomstep",color:"green"},{text:" \u2726",color:"green",bold:true}]

# === Particle 6: Blossom (bit 5, pow 32) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 32
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP5,limit=1,sort=nearest] text set value {text:"Blossom",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 6 unless score @s adv.cc_part2 matches 6 run data modify entity @e[type=text_display,tag=Adv.CCP5,limit=1,sort=nearest] text set value {text:"Blossom",color:"light_purple"}
execute if score @s adv.cc_part1 matches 6 run data modify entity @e[type=text_display,tag=Adv.CCP5,limit=1,sort=nearest] text set value [{text:"Blossom",color:"light_purple"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 6 run data modify entity @e[type=text_display,tag=Adv.CCP5,limit=1,sort=nearest] text set value [{text:"Blossom",color:"light_purple"},{text:" \u2726",color:"green",bold:true}]

# === Particle 7: Super Hot (bit 6, pow 64) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 64
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP6,limit=1,sort=nearest] text set value {text:"Super Hot",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 7 unless score @s adv.cc_part2 matches 7 run data modify entity @e[type=text_display,tag=Adv.CCP6,limit=1,sort=nearest] text set value {text:"Super Hot",color:"red"}
execute if score @s adv.cc_part1 matches 7 run data modify entity @e[type=text_display,tag=Adv.CCP6,limit=1,sort=nearest] text set value [{text:"Super Hot",color:"red"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 7 run data modify entity @e[type=text_display,tag=Adv.CCP6,limit=1,sort=nearest] text set value [{text:"Super Hot",color:"red"},{text:" \u2726",color:"green",bold:true}]

# === Particle 8: Stardust (bit 7, pow 128) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 128
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP7,limit=1,sort=nearest] text set value {text:"Stardust",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 8 unless score @s adv.cc_part2 matches 8 run data modify entity @e[type=text_display,tag=Adv.CCP7,limit=1,sort=nearest] text set value {text:"Stardust",color:"white"}
execute if score @s adv.cc_part1 matches 8 run data modify entity @e[type=text_display,tag=Adv.CCP7,limit=1,sort=nearest] text set value [{text:"Stardust",color:"white"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 8 run data modify entity @e[type=text_display,tag=Adv.CCP7,limit=1,sort=nearest] text set value [{text:"Stardust",color:"white"},{text:" \u2726",color:"green",bold:true}]

# === Particle 9: Cauldron (bit 8, pow 256) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 256
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP8,limit=1,sort=nearest] text set value {text:"Cauldron",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 9 unless score @s adv.cc_part2 matches 9 run data modify entity @e[type=text_display,tag=Adv.CCP8,limit=1,sort=nearest] text set value {text:"Cauldron",color:"dark_purple"}
execute if score @s adv.cc_part1 matches 9 run data modify entity @e[type=text_display,tag=Adv.CCP8,limit=1,sort=nearest] text set value [{text:"Cauldron",color:"dark_purple"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 9 run data modify entity @e[type=text_display,tag=Adv.CCP8,limit=1,sort=nearest] text set value [{text:"Cauldron",color:"dark_purple"},{text:" \u2726",color:"green",bold:true}]

# === Particle 10: Heartbeat (bit 9, pow 512) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 512
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP9,limit=1,sort=nearest] text set value {text:"Heartbeat",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 10 unless score @s adv.cc_part2 matches 10 run data modify entity @e[type=text_display,tag=Adv.CCP9,limit=1,sort=nearest] text set value {text:"Heartbeat",color:"red"}
execute if score @s adv.cc_part1 matches 10 run data modify entity @e[type=text_display,tag=Adv.CCP9,limit=1,sort=nearest] text set value [{text:"Heartbeat",color:"red"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 10 run data modify entity @e[type=text_display,tag=Adv.CCP9,limit=1,sort=nearest] text set value [{text:"Heartbeat",color:"red"},{text:" \u2726",color:"green",bold:true}]

# === Particle 11: Halo (bit 10, pow 1024) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 1024
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP10,limit=1,sort=nearest] text set value {text:"Halo",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 11 unless score @s adv.cc_part2 matches 11 run data modify entity @e[type=text_display,tag=Adv.CCP10,limit=1,sort=nearest] text set value {text:"Halo",color:"yellow"}
execute if score @s adv.cc_part1 matches 11 run data modify entity @e[type=text_display,tag=Adv.CCP10,limit=1,sort=nearest] text set value [{text:"Halo",color:"yellow"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 11 run data modify entity @e[type=text_display,tag=Adv.CCP10,limit=1,sort=nearest] text set value [{text:"Halo",color:"yellow"},{text:" \u2726",color:"green",bold:true}]

# === Particle 12: Storm Crown (bit 11, pow 2048) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 2048
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP11,limit=1,sort=nearest] text set value {text:"Storm Crown",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 12 unless score @s adv.cc_part2 matches 12 run data modify entity @e[type=text_display,tag=Adv.CCP11,limit=1,sort=nearest] text set value {text:"Storm Crown",color:"gray"}
execute if score @s adv.cc_part1 matches 12 run data modify entity @e[type=text_display,tag=Adv.CCP11,limit=1,sort=nearest] text set value [{text:"Storm Crown",color:"gray"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 12 run data modify entity @e[type=text_display,tag=Adv.CCP11,limit=1,sort=nearest] text set value [{text:"Storm Crown",color:"gray"},{text:" \u2726",color:"green",bold:true}]

# === Particle 13: Dripping Honey (bit 12, pow 4096) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 4096
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP12,limit=1,sort=nearest] text set value {text:"Dripping Honey",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 13 unless score @s adv.cc_part2 matches 13 run data modify entity @e[type=text_display,tag=Adv.CCP12,limit=1,sort=nearest] text set value {text:"Dripping Honey",color:"gold"}
execute if score @s adv.cc_part1 matches 13 run data modify entity @e[type=text_display,tag=Adv.CCP12,limit=1,sort=nearest] text set value [{text:"Dripping Honey",color:"gold"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 13 run data modify entity @e[type=text_display,tag=Adv.CCP12,limit=1,sort=nearest] text set value [{text:"Dripping Honey",color:"gold"},{text:" \u2726",color:"green",bold:true}]

# === Particle 14: Inkcloud (bit 13, pow 8192) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 8192
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP13,limit=1,sort=nearest] text set value {text:"Inkcloud",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 14 unless score @s adv.cc_part2 matches 14 run data modify entity @e[type=text_display,tag=Adv.CCP13,limit=1,sort=nearest] text set value {text:"Inkcloud",color:"dark_gray"}
execute if score @s adv.cc_part1 matches 14 run data modify entity @e[type=text_display,tag=Adv.CCP13,limit=1,sort=nearest] text set value [{text:"Inkcloud",color:"dark_gray"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 14 run data modify entity @e[type=text_display,tag=Adv.CCP13,limit=1,sort=nearest] text set value [{text:"Inkcloud",color:"dark_gray"},{text:" \u2726",color:"green",bold:true}]

# === Particle 15: Fireflies (bit 14, pow 16384) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 16384
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP14,limit=1,sort=nearest] text set value {text:"Fireflies",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 15 unless score @s adv.cc_part2 matches 15 run data modify entity @e[type=text_display,tag=Adv.CCP14,limit=1,sort=nearest] text set value {text:"Fireflies",color:"yellow"}
execute if score @s adv.cc_part1 matches 15 run data modify entity @e[type=text_display,tag=Adv.CCP14,limit=1,sort=nearest] text set value [{text:"Fireflies",color:"yellow"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 15 run data modify entity @e[type=text_display,tag=Adv.CCP14,limit=1,sort=nearest] text set value [{text:"Fireflies",color:"yellow"},{text:" \u2726",color:"green",bold:true}]

# === Particle 16: Spore Cloud (bit 15, pow 32768) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 32768
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP15,limit=1,sort=nearest] text set value {text:"Spore Cloud",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 16 unless score @s adv.cc_part2 matches 16 run data modify entity @e[type=text_display,tag=Adv.CCP15,limit=1,sort=nearest] text set value {text:"Spore Cloud",color:"green"}
execute if score @s adv.cc_part1 matches 16 run data modify entity @e[type=text_display,tag=Adv.CCP15,limit=1,sort=nearest] text set value [{text:"Spore Cloud",color:"green"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 16 run data modify entity @e[type=text_display,tag=Adv.CCP15,limit=1,sort=nearest] text set value [{text:"Spore Cloud",color:"green"},{text:" \u2726",color:"green",bold:true}]

# === Particle 17: Void Whispers (bit 16, pow 65536) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 65536
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP16,limit=1,sort=nearest] text set value {text:"Void Whispers",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 17 unless score @s adv.cc_part2 matches 17 run data modify entity @e[type=text_display,tag=Adv.CCP16,limit=1,sort=nearest] text set value {text:"Void Whispers",color:"dark_blue"}
execute if score @s adv.cc_part1 matches 17 run data modify entity @e[type=text_display,tag=Adv.CCP16,limit=1,sort=nearest] text set value [{text:"Void Whispers",color:"dark_blue"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 17 run data modify entity @e[type=text_display,tag=Adv.CCP16,limit=1,sort=nearest] text set value [{text:"Void Whispers",color:"dark_blue"},{text:" \u2726",color:"green",bold:true}]

# === Particle 18: Ashfall (bit 17, pow 131072) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_particles
scoreboard players set #cc_pow adv.temp 131072
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCP17,limit=1,sort=nearest] text set value {text:"Ashfall",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_part1 matches 18 unless score @s adv.cc_part2 matches 18 run data modify entity @e[type=text_display,tag=Adv.CCP17,limit=1,sort=nearest] text set value {text:"Ashfall",color:"dark_gray"}
execute if score @s adv.cc_part1 matches 18 run data modify entity @e[type=text_display,tag=Adv.CCP17,limit=1,sort=nearest] text set value [{text:"Ashfall",color:"dark_gray"},{text:" \u2726",color:"green",bold:true}]
execute if score @s adv.cc_part2 matches 18 run data modify entity @e[type=text_display,tag=Adv.CCP17,limit=1,sort=nearest] text set value [{text:"Ashfall",color:"dark_gray"},{text:" \u2726",color:"green",bold:true}]

# ============================================================
# TITLES
# ============================================================

# === Title 1: Dreamwalker (bit 0, pow 1) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT0,limit=1,sort=nearest] text set value {text:"Dreamwalker",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 1 run data modify entity @e[type=text_display,tag=Adv.CCT0,limit=1,sort=nearest] text set value {text:"Dreamwalker",color:"light_purple"}
execute if score @s adv.cc_title matches 1 run data modify entity @e[type=text_display,tag=Adv.CCT0,limit=1,sort=nearest] text set value [{text:"Dreamwalker",color:"light_purple"},{text:" \u2726",color:"green",bold:true}]

# === Title 2: Stargazer (bit 1, pow 2) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players operation #cosm_bit adv.temp /= #2 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT1,limit=1,sort=nearest] text set value {text:"Stargazer",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 2 run data modify entity @e[type=text_display,tag=Adv.CCT1,limit=1,sort=nearest] text set value {text:"Stargazer",color:"blue"}
execute if score @s adv.cc_title matches 2 run data modify entity @e[type=text_display,tag=Adv.CCT1,limit=1,sort=nearest] text set value [{text:"Stargazer",color:"blue"},{text:" \u2726",color:"green",bold:true}]

# === Title 3: The Ancient (bit 2, pow 4) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players operation #cosm_bit adv.temp /= #4 adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT2,limit=1,sort=nearest] text set value {text:"The Ancient",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 3 run data modify entity @e[type=text_display,tag=Adv.CCT2,limit=1,sort=nearest] text set value {text:"The Ancient",color:"dark_green"}
execute if score @s adv.cc_title matches 3 run data modify entity @e[type=text_display,tag=Adv.CCT2,limit=1,sort=nearest] text set value [{text:"The Ancient",color:"dark_green"},{text:" \u2726",color:"green",bold:true}]

# === Title 4: Moonblessed (bit 3, pow 8) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 8
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT3,limit=1,sort=nearest] text set value {text:"Moonblessed",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 4 run data modify entity @e[type=text_display,tag=Adv.CCT3,limit=1,sort=nearest] text set value {text:"Moonblessed",color:"aqua"}
execute if score @s adv.cc_title matches 4 run data modify entity @e[type=text_display,tag=Adv.CCT3,limit=1,sort=nearest] text set value [{text:"Moonblessed",color:"aqua"},{text:" \u2726",color:"green",bold:true}]

# === Title 5: Nightborn (bit 4, pow 16) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 16
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT4,limit=1,sort=nearest] text set value {text:"Nightborn",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 5 run data modify entity @e[type=text_display,tag=Adv.CCT4,limit=1,sort=nearest] text set value {text:"Nightborn",color:"dark_gray"}
execute if score @s adv.cc_title matches 5 run data modify entity @e[type=text_display,tag=Adv.CCT4,limit=1,sort=nearest] text set value [{text:"Nightborn",color:"dark_gray"},{text:" \u2726",color:"green",bold:true}]

# === Title 6: Sunforged (bit 5, pow 32) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 32
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT5,limit=1,sort=nearest] text set value {text:"Sunforged",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 6 run data modify entity @e[type=text_display,tag=Adv.CCT5,limit=1,sort=nearest] text set value {text:"Sunforged",color:"gold"}
execute if score @s adv.cc_title matches 6 run data modify entity @e[type=text_display,tag=Adv.CCT5,limit=1,sort=nearest] text set value [{text:"Sunforged",color:"gold"},{text:" \u2726",color:"green",bold:true}]

# === Title 7: The Eternal (bit 6, pow 64) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 64
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT6,limit=1,sort=nearest] text set value {text:"The Eternal",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 7 run data modify entity @e[type=text_display,tag=Adv.CCT6,limit=1,sort=nearest] text set value {text:"The Eternal",color:"dark_purple"}
execute if score @s adv.cc_title matches 7 run data modify entity @e[type=text_display,tag=Adv.CCT6,limit=1,sort=nearest] text set value [{text:"The Eternal",color:"dark_purple"},{text:" \u2726",color:"green",bold:true}]

# === Title 8: Stormchaser (bit 7, pow 128) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 128
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT7,limit=1,sort=nearest] text set value {text:"Stormchaser",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 8 run data modify entity @e[type=text_display,tag=Adv.CCT7,limit=1,sort=nearest] text set value {text:"Stormchaser",color:"yellow"}
execute if score @s adv.cc_title matches 8 run data modify entity @e[type=text_display,tag=Adv.CCT7,limit=1,sort=nearest] text set value [{text:"Stormchaser",color:"yellow"},{text:" \u2726",color:"green",bold:true}]

# === Title 9: Frostbitten (bit 8, pow 256) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 256
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT8,limit=1,sort=nearest] text set value {text:"Frostbitten",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 9 run data modify entity @e[type=text_display,tag=Adv.CCT8,limit=1,sort=nearest] text set value {text:"Frostbitten",color:"white"}
execute if score @s adv.cc_title matches 9 run data modify entity @e[type=text_display,tag=Adv.CCT8,limit=1,sort=nearest] text set value [{text:"Frostbitten",color:"white"},{text:" \u2726",color:"green",bold:true}]

# === Title 10: Flameheart (bit 9, pow 512) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 512
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT9,limit=1,sort=nearest] text set value {text:"Flameheart",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 10 run data modify entity @e[type=text_display,tag=Adv.CCT9,limit=1,sort=nearest] text set value {text:"Flameheart",color:"dark_red"}
execute if score @s adv.cc_title matches 10 run data modify entity @e[type=text_display,tag=Adv.CCT9,limit=1,sort=nearest] text set value [{text:"Flameheart",color:"dark_red"},{text:" \u2726",color:"green",bold:true}]

# === Title 11: Tidecaller (bit 10, pow 1024) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 1024
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT10,limit=1,sort=nearest] text set value {text:"Tidecaller",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 11 run data modify entity @e[type=text_display,tag=Adv.CCT10,limit=1,sort=nearest] text set value {text:"Tidecaller",color:"dark_aqua"}
execute if score @s adv.cc_title matches 11 run data modify entity @e[type=text_display,tag=Adv.CCT10,limit=1,sort=nearest] text set value [{text:"Tidecaller",color:"dark_aqua"},{text:" \u2726",color:"green",bold:true}]

# === Title 12: Earthshaker (bit 11, pow 2048) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 2048
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT11,limit=1,sort=nearest] text set value {text:"Earthshaker",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 12 run data modify entity @e[type=text_display,tag=Adv.CCT11,limit=1,sort=nearest] text set value {text:"Earthshaker",color:"green"}
execute if score @s adv.cc_title matches 12 run data modify entity @e[type=text_display,tag=Adv.CCT11,limit=1,sort=nearest] text set value [{text:"Earthshaker",color:"green"},{text:" \u2726",color:"green",bold:true}]

# === Title 13: Voidtouched (bit 12, pow 4096) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 4096
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT12,limit=1,sort=nearest] text set value {text:"Voidtouched",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 13 run data modify entity @e[type=text_display,tag=Adv.CCT12,limit=1,sort=nearest] text set value {text:"Voidtouched",color:"dark_blue"}
execute if score @s adv.cc_title matches 13 run data modify entity @e[type=text_display,tag=Adv.CCT12,limit=1,sort=nearest] text set value [{text:"Voidtouched",color:"dark_blue"},{text:" \u2726",color:"green",bold:true}]

# === Title 14: Wyrmborn (bit 13, pow 8192) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 8192
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT13,limit=1,sort=nearest] text set value {text:"Wyrmborn",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 14 run data modify entity @e[type=text_display,tag=Adv.CCT13,limit=1,sort=nearest] text set value {text:"Wyrmborn",color:"red"}
execute if score @s adv.cc_title matches 14 run data modify entity @e[type=text_display,tag=Adv.CCT13,limit=1,sort=nearest] text set value [{text:"Wyrmborn",color:"red"},{text:" \u2726",color:"green",bold:true}]

# === Title 15: The Undying (bit 14, pow 16384) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 16384
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT14,limit=1,sort=nearest] text set value {text:"The Undying",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 15 run data modify entity @e[type=text_display,tag=Adv.CCT14,limit=1,sort=nearest] text set value {text:"The Undying",color:"dark_gray"}
execute if score @s adv.cc_title matches 15 run data modify entity @e[type=text_display,tag=Adv.CCT14,limit=1,sort=nearest] text set value [{text:"The Undying",color:"dark_gray"},{text:" \u2726",color:"green",bold:true}]

# === Title 16: Spiritbound (bit 15, pow 32768) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 32768
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT15,limit=1,sort=nearest] text set value {text:"Spiritbound",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 16 run data modify entity @e[type=text_display,tag=Adv.CCT15,limit=1,sort=nearest] text set value {text:"Spiritbound",color:"aqua"}
execute if score @s adv.cc_title matches 16 run data modify entity @e[type=text_display,tag=Adv.CCT15,limit=1,sort=nearest] text set value [{text:"Spiritbound",color:"aqua"},{text:" \u2726",color:"green",bold:true}]

# === Title 17: Dawnbringer (bit 16, pow 65536) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 65536
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT16,limit=1,sort=nearest] text set value {text:"Dawnbringer",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 17 run data modify entity @e[type=text_display,tag=Adv.CCT16,limit=1,sort=nearest] text set value {text:"Dawnbringer",color:"gold"}
execute if score @s adv.cc_title matches 17 run data modify entity @e[type=text_display,tag=Adv.CCT16,limit=1,sort=nearest] text set value [{text:"Dawnbringer",color:"gold"},{text:" \u2726",color:"green",bold:true}]

# === Title 18: The Forsaken (bit 17, pow 131072) ===
scoreboard players operation #cosm_bit adv.temp = @s adv.cc_titles
scoreboard players set #cc_pow adv.temp 131072
scoreboard players operation #cosm_bit adv.temp /= #cc_pow adv.temp
scoreboard players operation #cosm_bit adv.temp %= #2 adv.temp
execute if score #cosm_bit adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.CCT17,limit=1,sort=nearest] text set value {text:"The Forsaken",color:"dark_gray"}
execute if score #cosm_bit adv.temp matches 1 unless score @s adv.cc_title matches 18 run data modify entity @e[type=text_display,tag=Adv.CCT17,limit=1,sort=nearest] text set value {text:"The Forsaken",color:"dark_red"}
execute if score @s adv.cc_title matches 18 run data modify entity @e[type=text_display,tag=Adv.CCT17,limit=1,sort=nearest] text set value [{text:"The Forsaken",color:"dark_red"},{text:" \u2726",color:"green",bold:true}]
