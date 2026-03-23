# ============================================================
# Hearthstone GUI — Show Housing Leaderboard
# Run as: the clicking player
# ============================================================

tag @s add HS.ViewingLB

tellraw @s [{text:"\n\u2605 ",color:"gold"},{text:"Housing Leaderboard",color:"yellow",bold:true},{text:" \u2605",color:"gold"}]

# Tier 5 — Sanctuary
execute as @a[scores={hs.tier=5}] run tellraw @a[tag=HS.ViewingLB,limit=1] [{text:"  \u2726 ",color:"gold"},{selector:"@s",color:"white"},{text:" \u2014 ",color:"dark_gray"},{text:"Sanctuary",color:"gold"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"hs.decor"},color:"white"},{text:" comfort)",color:"dark_gray"}]

# Tier 4 — Manor
execute as @a[scores={hs.tier=4}] run tellraw @a[tag=HS.ViewingLB,limit=1] [{text:"  \u2726 ",color:"light_purple"},{selector:"@s",color:"white"},{text:" \u2014 ",color:"dark_gray"},{text:"Manor",color:"light_purple"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"hs.decor"},color:"white"},{text:" comfort)",color:"dark_gray"}]

# Tier 3 — Estate
execute as @a[scores={hs.tier=3}] run tellraw @a[tag=HS.ViewingLB,limit=1] [{text:"  \u2726 ",color:"aqua"},{selector:"@s",color:"white"},{text:" \u2014 ",color:"dark_gray"},{text:"Estate",color:"aqua"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"hs.decor"},color:"white"},{text:" comfort)",color:"dark_gray"}]

# Tier 2 — Homestead
execute as @a[scores={hs.tier=2}] run tellraw @a[tag=HS.ViewingLB,limit=1] [{text:"  \u2726 ",color:"yellow"},{selector:"@s",color:"white"},{text:" \u2014 ",color:"dark_gray"},{text:"Homestead",color:"yellow"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"hs.decor"},color:"white"},{text:" comfort)",color:"dark_gray"}]

# Tier 1 — Settler
execute as @a[scores={hs.tier=1}] run tellraw @a[tag=HS.ViewingLB,limit=1] [{text:"  \u2726 ",color:"gray"},{selector:"@s",color:"white"},{text:" \u2014 ",color:"dark_gray"},{text:"Settler",color:"gray"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"hs.decor"},color:"white"},{text:" comfort)",color:"dark_gray"}]

# No homes
execute unless entity @a[scores={hs.tier=1..}] run tellraw @s [{text:"  No homes established yet!",color:"gray",italic:true}]

tag @s remove HS.ViewingLB
