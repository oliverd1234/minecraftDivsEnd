data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item set from entity @s Inventory[{tag:{Charged:0b,AutoCharge:1}}]
execute store result score @s auto_charge run data get storage ca.susu:enchants temp_item.Slot
execute if data storage ca.susu:enchants temp_item.Slot run scoreboard players add @s auto_charge 1
execute if score @s auto_charge matches 10.. run scoreboard players set @s auto_charge 0
execute if score @s auto_charge matches ..-1 run scoreboard players set @s auto_charge 10