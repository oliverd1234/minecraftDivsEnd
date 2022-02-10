####################################
# Darkest Hour Runecaster Rail Movement Function
####################################

scoreboard players add @s Timer 1
tp @s ^ ^ ^1

execute as @s unless block ~ ~1 ~ minecraft:air run scoreboard players set @s Timer 21

execute as @s[scores={Timer=1..}] at @s run execute as @e[distance=..1.5,type=!armor_stand,type=!item,type=!item_frame,type=!player,tag=!rail_hit] at @s run scoreboard players set @s damage_queue 15

execute as @s[scores={Timer=1..}] at @s run execute as @e[distance=..1.5,type=!armor_stand,type=!item,type=!item_frame,type=!player,tag=!rail_hit] at @s run function cartographer_core:helper/deal_damage/by_score
execute as @s[scores={Timer=1..}] at @s run execute as @e[distance=..1.5,type=!armor_stand,type=!item,type=!item_frame,type=!player,tag=!rail_hit] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick
execute as @s[scores={Timer=1..}] at @s run execute as @e[distance=..1.5,type=!armor_stand,type=!item,type=!item_frame,type=!player,tag=!rail_hit] at @s run function cartographer_core:helper/push_half
execute as @s[scores={Timer=1..}] at @s run execute as @e[distance=..1.5,type=!armor_stand,type=!item,type=!item_frame,type=!player,tag=!rail_hit] at @s run tp @s ~ ~ ~ facing entity @e[scores={Timer=1..},tag=rail,tag=raycast,limit=1,sort=nearest] feet

execute as @s[scores={Timer=1..}] at @s run tag @e[distance=..1.5] add rail_hit

execute as @s at @s run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.01 2

execute as @s[scores={Timer=21..}] at @s run particle flash ~ ~1 ~ 0 0 0 0.1 5
execute as @s[scores={Timer=21..}] at @s run particle end_rod ~ ~1 ~ 1 1 1 0.1 50
execute as @s[scores={Timer=21..}] at @s run tag @e remove rail_hit
kill @s[scores={Timer=21..}]

execute as @s[scores={Timer=..21}] at @s run function styx:runecaster/rail_move