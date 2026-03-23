# Beastlord — Alpha Howl
# Runs at the wolf's position after a warp kill
# Buffs all other owned wolves within 16 blocks with Strength II for 3s

# Iterate wolves (exclude killer tagged bl.warp_wolf), verify ownership, buff
# bl.owner is still set on the player from the parent wolf.mcfunction
execute as @e[type=wolf,distance=..16,tag=!bl.warp_wolf] run function evercraft:artifacts/beastlord/warp/howl_buff

# Wolf howl at kill location
playsound minecraft:entity.wolf_puglin.ambient player @a ~ ~ ~ 1.0 0.8
