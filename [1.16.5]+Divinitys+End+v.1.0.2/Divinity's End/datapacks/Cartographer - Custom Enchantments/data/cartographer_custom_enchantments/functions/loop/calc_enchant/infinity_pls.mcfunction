data modify storage ca.susu:enchants arr set value []
data modify storage ca.susu:enchants arr append from entity @s Inventory[{tag:{Infinity:1}}].Slot

execute if data storage ca.susu:enchants arr[0] run function cartographer_custom_enchantments:loop/calc_enchant/infinity_pls_rec