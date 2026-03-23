# Artifact Constellations — Apply Dream Rate bonus
# +0.25 luck per completed constellation. Run as: player
# Called from constellations/check after every artifact discovery

# Count completed constellations via popcount of ec.cn_done
scoreboard players set #cn_count ec.temp 0
scoreboard players operation #cn_bit ec.temp = @s ec.cn_done

# Bit 0 (Tidewalker)
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 1 (Pyreborn)
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #2 ec.const
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 2 (Verdant Crown)
scoreboard players set #cn_div ec.temp 4
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 3 (Frozen Veil)
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #8 ec.const
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 4 (Earthshaker)
scoreboard players set #cn_div ec.temp 16
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 5 (Starweaver)
scoreboard players set #cn_div ec.temp 32
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 6 (Shadow's Edge)
scoreboard players set #cn_div ec.temp 64
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 7 (Dune Sovereign)
scoreboard players set #cn_div ec.temp 128
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 8 (Stormcaller)
scoreboard players set #cn_div ec.temp 256
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Bit 9 (Soulbinder)
scoreboard players set #cn_div ec.temp 512
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Remove existing modifier, then apply scaled bonus
attribute @s luck modifier remove evercraft:constellation_bonus
execute if score #cn_count ec.temp matches 1 run attribute @s luck modifier add evercraft:constellation_bonus 0.25 add_value
execute if score #cn_count ec.temp matches 2 run attribute @s luck modifier add evercraft:constellation_bonus 0.5 add_value
execute if score #cn_count ec.temp matches 3 run attribute @s luck modifier add evercraft:constellation_bonus 0.75 add_value
execute if score #cn_count ec.temp matches 4 run attribute @s luck modifier add evercraft:constellation_bonus 1.0 add_value
execute if score #cn_count ec.temp matches 5 run attribute @s luck modifier add evercraft:constellation_bonus 1.25 add_value
execute if score #cn_count ec.temp matches 6 run attribute @s luck modifier add evercraft:constellation_bonus 1.5 add_value
execute if score #cn_count ec.temp matches 7 run attribute @s luck modifier add evercraft:constellation_bonus 1.75 add_value
execute if score #cn_count ec.temp matches 8 run attribute @s luck modifier add evercraft:constellation_bonus 2.0 add_value
execute if score #cn_count ec.temp matches 9 run attribute @s luck modifier add evercraft:constellation_bonus 2.25 add_value
execute if score #cn_count ec.temp matches 10 run attribute @s luck modifier add evercraft:constellation_bonus 2.5 add_value
