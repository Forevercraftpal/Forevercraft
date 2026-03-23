scoreboard players add .global ec.id 1
execute if score .global ec.id matches 65537.. run scoreboard players set .global ec.id 1
scoreboard players operation @s ec.id = .global ec.id
scoreboard players operation #id ec.id = .global ec.id
execute if score #id ec.id matches 32768.. run scoreboard players set @s ec.bit15 1
execute if score #id ec.id matches 32768.. run scoreboard players remove #id ec.id 32768
execute if score #id ec.id matches 16384.. run scoreboard players set @s ec.bit14 1
execute if score #id ec.id matches 16384.. run scoreboard players remove #id ec.id 16384
execute if score #id ec.id matches 8192.. run scoreboard players set @s ec.bit13 1
execute if score #id ec.id matches 8192.. run scoreboard players remove #id ec.id 8192
execute if score #id ec.id matches 4096.. run scoreboard players set @s ec.bit12 1
execute if score #id ec.id matches 4096.. run scoreboard players remove #id ec.id 4096
execute if score #id ec.id matches 2048.. run scoreboard players set @s ec.bit11 1
execute if score #id ec.id matches 2048.. run scoreboard players remove #id ec.id 2048
execute if score #id ec.id matches 1024.. run scoreboard players set @s ec.bit10 1
execute if score #id ec.id matches 1024.. run scoreboard players remove #id ec.id 1024
execute if score #id ec.id matches 512.. run scoreboard players set @s ec.bit9 1
execute if score #id ec.id matches 512.. run scoreboard players remove #id ec.id 512
execute if score #id ec.id matches 256.. run scoreboard players set @s ec.bit8 1
execute if score #id ec.id matches 256.. run scoreboard players remove #id ec.id 256
execute if score #id ec.id matches 128.. run scoreboard players set @s ec.bit7 1
execute if score #id ec.id matches 128.. run scoreboard players remove #id ec.id 128
execute if score #id ec.id matches 64.. run scoreboard players set @s ec.bit6 1
execute if score #id ec.id matches 64.. run scoreboard players remove #id ec.id 64
execute if score #id ec.id matches 32.. run scoreboard players set @s ec.bit5 1
execute if score #id ec.id matches 32.. run scoreboard players remove #id ec.id 32
execute if score #id ec.id matches 16.. run scoreboard players set @s ec.bit4 1
execute if score #id ec.id matches 16.. run scoreboard players remove #id ec.id 16
execute if score #id ec.id matches 8.. run scoreboard players set @s ec.bit3 1
execute if score #id ec.id matches 8.. run scoreboard players remove #id ec.id 8
execute if score #id ec.id matches 4.. run scoreboard players set @s ec.bit2 1
execute if score #id ec.id matches 4.. run scoreboard players remove #id ec.id 4
execute if score #id ec.id matches 2.. run scoreboard players set @s ec.bit1 1
execute if score #id ec.id matches 2.. run scoreboard players remove #id ec.id 2
execute if score #id ec.id matches 1.. run scoreboard players set @s ec.bit0 1