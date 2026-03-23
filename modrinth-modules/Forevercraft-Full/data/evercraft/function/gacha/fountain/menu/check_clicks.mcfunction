# Check Fountain menu button clicks
# Runs as @s = player with ec.InFountain tag, at @s

# ===== SHARED =====
# Balance check (works on both pages)
execute as @e[type=interaction,tag=ec.FountainClickBalance,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/on_click_balance
execute as @e[type=interaction,tag=ec.ExBalance,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/on_click_balance

# Info browser
execute as @e[type=interaction,tag=ec.FountainClickInfo,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/info/open

# ===== PAGE 1: Main Menu =====
# Pull x1
execute as @e[type=interaction,tag=ec.FountainClick1,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/on_click_pull1

# Pull x10
execute as @e[type=interaction,tag=ec.FountainClick10,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/on_click_pull10

# Lucid Claim
execute as @e[type=interaction,tag=ec.FountainClickSpark,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/on_click_spark

# Dreamdust Exchange
execute as @e[type=interaction,tag=ec.FountainClickExchange,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/on_click_exchange

# Close (page 1)
execute as @e[type=interaction,tag=ec.FountainClickClose,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/on_click_close

# ===== PAGE 2: Exchange =====
execute as @e[type=interaction,tag=ec.ExBuy1,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy1
execute as @e[type=interaction,tag=ec.ExBuy2,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy2
execute as @e[type=interaction,tag=ec.ExBuy3,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy3
execute as @e[type=interaction,tag=ec.ExBuy4,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy4
execute as @e[type=interaction,tag=ec.ExBuy5,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy5
execute as @e[type=interaction,tag=ec.ExBuy6,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy6
execute as @e[type=interaction,tag=ec.ExBuy7,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy7
execute as @e[type=interaction,tag=ec.ExBuy8,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_buy8

# Back (exchange page)
execute as @e[type=interaction,tag=ec.ExBack,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_back

# Close (exchange page)
execute as @e[type=interaction,tag=ec.ExClose,distance=..20] if data entity @s interaction if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run function evercraft:gacha/fountain/menu/ex_close
