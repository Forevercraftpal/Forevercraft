# Pantry Menu — Resolve absolute slot index to storage slot name
# #pantry_abs ec.temp = 0-26
# Writes slot name to temp.slot, then calls handle_click with storage

execute if score #pantry_abs ec.temp matches 0 run data modify storage evercraft:pantry temp.slot set value "s0"
execute if score #pantry_abs ec.temp matches 1 run data modify storage evercraft:pantry temp.slot set value "s1"
execute if score #pantry_abs ec.temp matches 2 run data modify storage evercraft:pantry temp.slot set value "s2"
execute if score #pantry_abs ec.temp matches 3 run data modify storage evercraft:pantry temp.slot set value "s3"
execute if score #pantry_abs ec.temp matches 4 run data modify storage evercraft:pantry temp.slot set value "s4"
execute if score #pantry_abs ec.temp matches 5 run data modify storage evercraft:pantry temp.slot set value "s5"
execute if score #pantry_abs ec.temp matches 6 run data modify storage evercraft:pantry temp.slot set value "s6"
execute if score #pantry_abs ec.temp matches 7 run data modify storage evercraft:pantry temp.slot set value "s7"
execute if score #pantry_abs ec.temp matches 8 run data modify storage evercraft:pantry temp.slot set value "s8"
execute if score #pantry_abs ec.temp matches 9 run data modify storage evercraft:pantry temp.slot set value "s9"
execute if score #pantry_abs ec.temp matches 10 run data modify storage evercraft:pantry temp.slot set value "s10"
execute if score #pantry_abs ec.temp matches 11 run data modify storage evercraft:pantry temp.slot set value "s11"
execute if score #pantry_abs ec.temp matches 12 run data modify storage evercraft:pantry temp.slot set value "s12"
execute if score #pantry_abs ec.temp matches 13 run data modify storage evercraft:pantry temp.slot set value "s13"
execute if score #pantry_abs ec.temp matches 14 run data modify storage evercraft:pantry temp.slot set value "s14"
execute if score #pantry_abs ec.temp matches 15 run data modify storage evercraft:pantry temp.slot set value "s15"
execute if score #pantry_abs ec.temp matches 16 run data modify storage evercraft:pantry temp.slot set value "s16"
execute if score #pantry_abs ec.temp matches 17 run data modify storage evercraft:pantry temp.slot set value "s17"
execute if score #pantry_abs ec.temp matches 18 run data modify storage evercraft:pantry temp.slot set value "s18"
execute if score #pantry_abs ec.temp matches 19 run data modify storage evercraft:pantry temp.slot set value "s19"
execute if score #pantry_abs ec.temp matches 20 run data modify storage evercraft:pantry temp.slot set value "s20"
execute if score #pantry_abs ec.temp matches 21 run data modify storage evercraft:pantry temp.slot set value "s21"
execute if score #pantry_abs ec.temp matches 22 run data modify storage evercraft:pantry temp.slot set value "s22"
execute if score #pantry_abs ec.temp matches 23 run data modify storage evercraft:pantry temp.slot set value "s23"
execute if score #pantry_abs ec.temp matches 24 run data modify storage evercraft:pantry temp.slot set value "s24"
execute if score #pantry_abs ec.temp matches 25 run data modify storage evercraft:pantry temp.slot set value "s25"
execute if score #pantry_abs ec.temp matches 26 run data modify storage evercraft:pantry temp.slot set value "s26"

# pid is already in temp.pid from on_slot_click — call handle_click with both
function evercraft:pantry/menu/handle_click with storage evercraft:pantry temp
