# ============================================================
# Stash Label — Container Found
# Run as: player, positioned at container block center (aligned)
# Checks for existing label and creates/cycles category
# ============================================================
tag @s add HS.BarrelFound

# If this container already has a stash marker → cycle category
execute if entity @e[type=marker,tag=HS.Stash,distance=..0.5,limit=1] run return run function evercraft:housing/stash/label/cycle_category

# === New label — assign "Tools" (first category) ===
summon marker ~ ~ ~ {Tags:["HS.Stash","smithed.entity"],data:{category:"tools"}}
execute positioned ~ ~1.05 ~ run function evercraft:housing/stash/label/spawn_display {title:"Tools",color:"yellow"}

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Container labeled: ",color:"gray"},{text:"Tools",color:"yellow"}]
playsound minecraft:block.note_block.bell master @a[distance=..5] ~ ~ ~ 0.5 1.4
