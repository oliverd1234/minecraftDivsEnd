execute store result score $temp ca.susu run data get storage ca.susu:enchants arr[0]
execute if score $temp ca.susu matches ..8 run scoreboard players operation @s infinity = $temp ca.susu
execute if score $temp ca.susu matches ..8 run scoreboard players add @s infinity 1
data remove storage ca.susu:enchants arr[0]

execute unless score $temp ca.susu matches ..8 if data storage ca.susu:enchants arr[0] run function cartographer_custom_enchantments:loop/calc_enchant/infinity_pls_rec