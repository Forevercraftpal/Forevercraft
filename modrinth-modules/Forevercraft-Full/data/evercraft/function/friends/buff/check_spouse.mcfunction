# Friend Buff — Check if the nearby best friend is the player's spouse
# #fr_buf_uuid3 ec.temp = friend's UUID3
# @s = player being checked

# Load married_to from storage
function evercraft:friends/buff/read_married with storage evercraft:friends temp
execute if score #fr_married_to ec.temp = #fr_buf_uuid3 ec.temp run scoreboard players set @s ec.fr_spouse_near 1
