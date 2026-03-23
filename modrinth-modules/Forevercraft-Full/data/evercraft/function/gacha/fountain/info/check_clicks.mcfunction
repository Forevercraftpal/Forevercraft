# Check clicks on info browser slots, nav, and close
# Runs as @s = player with ec.InGachaInfo tag, at @s

# Slot clicks (right-click = interaction shows info)
execute as @e[type=interaction,tag=ec.GachaSlot0,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:0}
execute as @e[type=interaction,tag=ec.GachaSlot1,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:1}
execute as @e[type=interaction,tag=ec.GachaSlot2,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:2}
execute as @e[type=interaction,tag=ec.GachaSlot3,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:3}
execute as @e[type=interaction,tag=ec.GachaSlot4,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:4}
execute as @e[type=interaction,tag=ec.GachaSlot5,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:5}
execute as @e[type=interaction,tag=ec.GachaSlot6,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:6}
execute as @e[type=interaction,tag=ec.GachaSlot7,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:7}
execute as @e[type=interaction,tag=ec.GachaSlot8,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:8}
execute as @e[type=interaction,tag=ec.GachaSlot9,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:9}
execute as @e[type=interaction,tag=ec.GachaSlot10,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:10}
execute as @e[type=interaction,tag=ec.GachaSlot11,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:11}
execute as @e[type=interaction,tag=ec.GachaSlot12,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:12}
execute as @e[type=interaction,tag=ec.GachaSlot13,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:13}
execute as @e[type=interaction,tag=ec.GachaSlot14,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:14}
execute as @e[type=interaction,tag=ec.GachaSlot15,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:15}
execute as @e[type=interaction,tag=ec.GachaSlot16,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:16}
execute as @e[type=interaction,tag=ec.GachaSlot17,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/slot_click {slot:17}

# Nav buttons (right-click)
execute as @e[type=interaction,tag=ec.GachaInfoPrev,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/go_prev
execute as @e[type=interaction,tag=ec.GachaInfoNext,distance=..5] if data entity @s interaction run function evercraft:gacha/fountain/info/go_next

# Close (right-click) — keep @s as player since close.mcfunction expects it
execute if entity @e[type=interaction,tag=ec.GachaInfoClose,distance=..5,nbt={interaction:{}}] run function evercraft:gacha/fountain/info/close
