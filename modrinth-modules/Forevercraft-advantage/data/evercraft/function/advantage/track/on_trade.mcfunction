# Increment villager trade stat counter and revoke advancement to re-trigger
scoreboard players add @s adv.stat_trades 1
advancement revoke @s only evercraft:advantage/track_trade

# Buddy system: +3 friendship for trading with buddy nearby
function evercraft:buddy/points/trading
