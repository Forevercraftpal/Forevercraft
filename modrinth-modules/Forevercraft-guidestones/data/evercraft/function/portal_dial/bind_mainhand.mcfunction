# Portal Dial — Bind check (mainhand)
# Player just right-clicked a lodestone while holding Portal Dial in mainhand
# The lodestone_tracker was auto-added by Minecraft — check if player can afford 30 levels

# Check XP
execute store result score $dial_xp ec.dial_temp run experience query @s levels

# Not enough XP — replace the item with an unbound Portal Dial (removes lodestone_tracker)
execute if score $dial_xp ec.dial_temp matches ..29 run item replace entity @s weapon.mainhand with compass[custom_name={text:"Portal Dial",color:"gold",bold:true,italic:false},custom_data={portal_dial:true,evercraft_item:true},enchantment_glint_override=true,max_stack_size=1,rarity=epic,consumable={consume_seconds:600,animation:"block",sound:"minecraft:entity.enderman.teleport"},use_cooldown={seconds:5,cooldown_group:"evercraft:portal_dial"},lore=[{text:"Ancient Warping Device",color:"dark_purple",italic:false},"",{text:"Right-click a lodestone to bind",color:"gray",italic:true},{text:"(Costs 30 levels on first bind)",color:"red",italic:true},"",{text:"Use to teleport to bound location",color:"aqua",italic:true}]] 1
execute if score $dial_xp ec.dial_temp matches ..29 run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"You need ",color:"red"},{text:"30 levels",color:"gold",bold:true},{text:" to bind your Portal Dial to this lodestone!",color:"red"}]
execute if score $dial_xp ec.dial_temp matches ..29 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score $dial_xp ec.dial_temp matches ..29 run return fail

# Enough XP — deduct 30 levels and mark as bound
experience add @s -30 levels

# Mark the item as bound so we don't charge again (re-binding to different lodestones is free)
# Mark as bound + clear any guidestone binding (gs_bound_id:0 = regular lodestone)
item modify entity @s weapon.mainhand {"function":"minecraft:set_custom_data","tag":"{portal_dial:1b,evercraft_item:1b,portal_dial_bound:1b,gs_bound_id:0}"}

tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"Portal Dial bound to lodestone! ",color:"gold"},{text:"(30 levels)",color:"yellow"},{text:" — Use it to teleport here.",color:"green"}]
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.2
