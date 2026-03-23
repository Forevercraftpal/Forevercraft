# Give mythical-scaled skeletons tipped arrows based on gear DR
# Slowness I-IV + Instant Damage scaling
# Run as: skeleton/stray/bogged, uses #gear_dr ec.temp from apply.mcfunction
# Note: Strays natively shoot Slowness I arrows, so skip slowness-only tiers for them
#       (only give strays arrows when adding instant damage on top)

# DR 500+ (Mythical 6+): Slowness IV + Instant Damage II
execute if score #gear_dr ec.temp matches 500.. run return run item replace entity @s weapon.offhand with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:3b,duration:200},{id:"minecraft:instant_damage",amplifier:1b}]}] 1

# DR 400-499 (Mythical 4-5): Slowness III + Instant Damage II
execute if score #gear_dr ec.temp matches 400..499 run return run item replace entity @s weapon.offhand with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:2b,duration:200},{id:"minecraft:instant_damage",amplifier:1b}]}] 1

# DR 300-399 (Mythical 2-3): Slowness III + Instant Damage I
execute if score #gear_dr ec.temp matches 300..399 run return run item replace entity @s weapon.offhand with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:2b,duration:200},{id:"minecraft:instant_damage",amplifier:0b}]}] 1

# DR 250-299 (Mythical 1): Slowness II + Instant Damage I
execute if score #gear_dr ec.temp matches 250..299 run return run item replace entity @s weapon.offhand with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:1b,duration:200},{id:"minecraft:instant_damage",amplifier:0b}]}] 1

# --- Below this point: slowness-only tiers. Skip for strays (they already have Slowness I native) ---
execute if entity @s[type=stray] run return 0

# DR 150-249 (Exquisite): Slowness II
execute if score #gear_dr ec.temp matches 150..249 run return run item replace entity @s weapon.offhand with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:1b,duration:200}]}] 1

# DR 100-149 (Ornate): Slowness I
execute if score #gear_dr ec.temp matches 100..149 run item replace entity @s weapon.offhand with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:0b,duration:200}]}] 1
