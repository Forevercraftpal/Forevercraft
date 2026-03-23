# Apply generated name to Furia mob
# Called with macro args: first_name, last_name, color (hex), symbol
$data modify entity @s CustomName set value {text:"$(symbol) $(first_name) $(last_name) $(symbol)",color:"#$(color)",italic:false}
data modify entity @s CustomNameVisible set value 0b
