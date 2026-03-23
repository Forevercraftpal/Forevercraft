# First Forever Coin — Unlock Fountain of Eternal Dreams
# Runs as @s = player

scoreboard players set @s ec.first_coin 1

# Grant advancement (shows toast)
advancement grant @s only evercraft:gacha/first_wish

# Title notification
title @s subtitle {"text":"Fountain of Eternal Dreams unlocked!","color":"#E0B0FF"}
title @s title {"text":"First Wish","color":"gold","bold":true}

tellraw @s [{"text":"  The ","color":"gray"},{"text":"Fountain of Eternal Dreams","color":"#E0B0FF","bold":true},{"text":" is now available! Open the ","color":"gray"},{"text":"Codex","color":"gold"},{"text":" to place your Fountain.","color":"gray"}]
