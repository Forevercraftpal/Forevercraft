# ============================================================
# Journal Display — Secrets Page
# Shows 5 secret discoveries
# ============================================================

tellraw @s ""
tellraw @s [{text:"═══ ",color:"gold"},{text:"SECRETS",color:"gold",bold:true},{text:" (",color:"gold"},{score:{name:"@s",objective:"jn.secret_count"},color:"white"},{text:"/5) ═══",color:"gold"}]
tellraw @s ""

# Secret 1: Depths of the World
execute if entity @s[tag=jn.s1] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Depths of the World",color:"dark_purple"},{text:" — Ventured below Y -48",color:"gray"}]
execute unless entity @s[tag=jn.s1] run tellraw @s [{text:"  ? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" — Go deeper...",color:"dark_gray",italic:true}]

# Secret 2: Sky Wanderer
execute if entity @s[tag=jn.s2] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Sky Wanderer",color:"dark_purple"},{text:" — Reached above Y 300",color:"gray"}]
execute unless entity @s[tag=jn.s2] run tellraw @s [{text:"  ? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" — Reach for the sky...",color:"dark_gray",italic:true}]

# Secret 3: Dimensional Traveler
execute if entity @s[tag=jn.s3] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Dimensional Traveler",color:"dark_purple"},{text:" — Visited all 3 dimensions",color:"gray"}]
execute unless entity @s[tag=jn.s3] run tellraw @s [{text:"  ? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" — There are other worlds...",color:"dark_gray",italic:true}]

# Secret 4: Lore Collector
execute if entity @s[tag=jn.s4] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Lore Collector",color:"dark_purple"},{text:" — Found all 6 anecdotes",color:"gray"}]
execute unless entity @s[tag=jn.s4] run tellraw @s [{text:"  ? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" — Gather the stories of the world...",color:"dark_gray",italic:true}]

# Secret 5: World Explorer
execute if entity @s[tag=jn.s5] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"World Explorer",color:"dark_purple"},{text:" — Explored 15+ structure types",color:"gray"}]
execute unless entity @s[tag=jn.s5] run tellraw @s [{text:"  ? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" — Leave no stone unturned...",color:"dark_gray",italic:true}]

tellraw @s ""
tellraw @s [{text:"  ",color:"gray"},{text:"[Back to Journal]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 1"},hover_event:{action:show_text,value:"Return to overview"}}]
tellraw @s [{text:"═══════════════════════════",color:"gold"}]

playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.5 1.0
