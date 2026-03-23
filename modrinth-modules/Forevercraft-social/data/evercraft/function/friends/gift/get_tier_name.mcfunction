# Friend Gift — Set tier name and color in temp storage from #fr_gift_tier

data modify storage evercraft:friends temp.tier_name set value "Common"
data modify storage evercraft:friends temp.tier_color set value "white"

execute if score #fr_gift_tier ec.temp matches 2 run data modify storage evercraft:friends temp.tier_name set value "Uncommon"
execute if score #fr_gift_tier ec.temp matches 2 run data modify storage evercraft:friends temp.tier_color set value "green"

execute if score #fr_gift_tier ec.temp matches 3 run data modify storage evercraft:friends temp.tier_name set value "Rare"
execute if score #fr_gift_tier ec.temp matches 3 run data modify storage evercraft:friends temp.tier_color set value "aqua"

execute if score #fr_gift_tier ec.temp matches 4 run data modify storage evercraft:friends temp.tier_name set value "Ornate"
execute if score #fr_gift_tier ec.temp matches 4 run data modify storage evercraft:friends temp.tier_color set value "light_purple"

execute if score #fr_gift_tier ec.temp matches 5 run data modify storage evercraft:friends temp.tier_name set value "Exquisite"
execute if score #fr_gift_tier ec.temp matches 5 run data modify storage evercraft:friends temp.tier_color set value "gold"

execute if score #fr_gift_tier ec.temp matches 6 run data modify storage evercraft:friends temp.tier_name set value "Mythical"
execute if score #fr_gift_tier ec.temp matches 6 run data modify storage evercraft:friends temp.tier_color set value "red"
