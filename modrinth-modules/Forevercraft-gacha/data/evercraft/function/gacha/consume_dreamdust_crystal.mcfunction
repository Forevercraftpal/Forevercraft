# Consume Dreamdust Crystal — Permanent +2.5 Dream Rate (once per player)
# Triggered by advancement: evercraft:gacha/consume_dreamdust

# Revoke so it can trigger again (for other players or if item is somehow obtained again)
advancement revoke @s only evercraft:gacha/consume_dreamdust

# Check if already used
execute if entity @s[tag=ec.dreamdust_used] run tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"You have already consumed a Dreamdust Crystal.","color":"gray"},{"text":" The bonus is one per player.","color":"dark_gray"},{"text":" \u2726","color":"#E0B0FF"}]
execute if entity @s[tag=ec.dreamdust_used] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute unless entity @s[tag=ec.dreamdust_used] run function evercraft:gacha/apply_dreamdust_crystal
