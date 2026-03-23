# Black Market Heist — Timer Display (runs as active heist player)
# Shows remaining seconds on actionbar

execute store result score #heist_secs ec.temp run scoreboard players get @s ec.heist_timer
scoreboard players operation #heist_secs ec.temp /= #20 ec.const

# Color changes based on time remaining
execute if score #heist_secs ec.temp matches 31.. run title @s actionbar [{text:"\u23f1 ",color:"dark_red"},{"score":{"name":"#heist_secs","objective":"ec.temp"},"color":"gold","bold":true},{"text":"s remaining","color":"gray"}]
execute if score #heist_secs ec.temp matches 11..30 run title @s actionbar [{text:"\u23f1 ",color:"dark_red"},{"score":{"name":"#heist_secs","objective":"ec.temp"},"color":"yellow","bold":true},{"text":"s remaining","color":"gray"}]
execute if score #heist_secs ec.temp matches ..10 run title @s actionbar [{text:"\u23f1 ",color:"dark_red"},{"score":{"name":"#heist_secs","objective":"ec.temp"},"color":"red","bold":true},{"text":"s remaining!","color":"red"}]
