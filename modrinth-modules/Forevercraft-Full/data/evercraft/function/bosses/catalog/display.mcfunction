# Boss Exclusive Item Catalog — Display
# Shows all 11 world boss exclusive drops with found/not-found status
# Run as the player

# Header
tellraw @s {text:""}
tellraw @s [{text:"  ◆ ",color:"gold"},{text:"Boss Exclusive Artifact Catalog",color:"gold",bold:true},{text:" ◆",color:"gold"}]
tellraw @s [{text:"  Defeats / Exclusive Drop Status",color:"dark_gray"}]
tellraw @s {text:""}

# 1. The Hollow King — Soul Reaver
execute if entity @s[advancements={evercraft:artifacts/collected/soul_reaver=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"The Hollow King",color:"dark_purple"},{text:" — ",color:"dark_gray"},{text:"Soul Reaver",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k1"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soul_reaver=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"The Hollow King",color:"dark_purple"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k1"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 2. Verdant Warden — Thornheart Bloom
execute if entity @s[advancements={evercraft:artifacts/collected/thornheart_bloom=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Verdant Warden",color:"dark_green"},{text:" — ",color:"dark_gray"},{text:"Thornheart Bloom",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k2"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/thornheart_bloom=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Verdant Warden",color:"dark_green"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k2"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 3. Stormforged — Thunderstrike Core
execute if entity @s[advancements={evercraft:artifacts/collected/thunderstrike_core=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Stormforged",color:"aqua"},{text:" — ",color:"dark_gray"},{text:"Thunderstrike Core",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k3"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/thunderstrike_core=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Stormforged",color:"aqua"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k3"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 4. Tidecaller — Abyssal Pearl
execute if entity @s[advancements={evercraft:artifacts/collected/abyssal_pearl=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Tidecaller",color:"blue"},{text:" — ",color:"dark_gray"},{text:"Abyssal Pearl",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k4"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/abyssal_pearl=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Tidecaller",color:"blue"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k4"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 5. Earthshaker — Earthshaker Core
execute if entity @s[advancements={evercraft:artifacts/collected/earthshaker_core=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Earthshaker",color:"dark_red"},{text:" — ",color:"dark_gray"},{text:"Earthshaker Core",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k5"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/earthshaker_core=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Earthshaker",color:"dark_red"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k5"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 6. Nightmare — Nightmare Fragment
execute if entity @s[advancements={evercraft:artifacts/collected/nightmare_fragment=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Nightmare",color:"dark_gray"},{text:" — ",color:"dark_gray"},{text:"Nightmare Fragment",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k6"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nightmare_fragment=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Nightmare",color:"dark_gray"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k6"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 7. Infernal Titan — Infernal Heart
execute if entity @s[advancements={evercraft:artifacts/collected/infernal_heart=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Infernal Titan",color:"red"},{text:" — ",color:"dark_gray"},{text:"Infernal Heart",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k7"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_heart=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Infernal Titan",color:"red"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k7"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 8. Soul Warden — Soulkeeper's Ember
execute if entity @s[advancements={evercraft:artifacts/collected/soulkeepers_ember=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Soul Warden",color:"dark_aqua"},{text:" — ",color:"dark_gray"},{text:"Soulkeeper's Ember",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k8"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soulkeepers_ember=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Soul Warden",color:"dark_aqua"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k8"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 9. Crimson Behemoth — Behemoth's Heart
execute if entity @s[advancements={evercraft:artifacts/collected/behemoths_heart=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Crimson Behemoth",color:"dark_red"},{text:" — ",color:"dark_gray"},{text:"Behemoth's Heart",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k9"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/behemoths_heart=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Crimson Behemoth",color:"dark_red"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k9"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 10. Void Sovereign — Void Sovereign's Eye
execute if entity @s[advancements={evercraft:artifacts/collected/void_sovereigns_eye=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Void Sovereign",color:"dark_blue"},{text:" — ",color:"dark_gray"},{text:"Void Sovereign's Eye",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k10"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/void_sovereigns_eye=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Void Sovereign",color:"dark_blue"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k10"},color:"white"},{text:" kills)",color:"dark_gray"}]

# 11. Ender Architect — Architect's Design
execute if entity @s[advancements={evercraft:artifacts/collected/architects_design=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"✓ ",color:"green"},{text:"Ender Architect",color:"light_purple"},{text:" — ",color:"dark_gray"},{text:"Architect's Design",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k11"},color:"white"},{text:" kills)",color:"dark_gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/architects_design=true}] run tellraw @s [{text:"    ",color:"gray"},{text:"? ",color:"red"},{text:"Ender Architect",color:"light_purple"},{text:" — ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"wb.k11"},color:"white"},{text:" kills)",color:"dark_gray"}]

# Footer
tellraw @s {text:""}
tellraw @s [{text:"    Total Boss Kills: ",color:"gray"},{score:{name:"@s",objective:"ach.boss_kills"},color:"gold"}]
tellraw @s [{text:"    Drop Chance: 15% + DR (max 35%), 2x during Blood Moon",color:"dark_gray",italic:true}]
