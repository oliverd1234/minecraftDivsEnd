scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0 1 normal

execute if block ^ ^ ^0.8 #cartographer_core:can_raycast run tp @s ^ ^ ^0.8

execute unless block ~ ~ ~ #cartographer_core:can_raycast run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #cartographer_core:can_raycast run tp @s ~ ~-1 ~

execute as @e[type=#cartographer_core:hostile,distance=..2,tag=!warped_thru] at @s run scoreboard players set @s damage_queue 8
execute as @e[type=#cartographer_core:hostile,distance=..2,tag=!warped_thru] at @s run function cartographer_core:helper/deal_damage/by_score
execute as @e[type=#cartographer_core:hostile,distance=..2,tag=!warped_thru] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick
execute as @e[type=#cartographer_core:hostile,distance=..2,tag=!warped_thru] at @s run scoreboard players set @s effect_stunned 16
execute as @e[type=#cartographer_core:hostile,distance=..2,tag=!warped_thru] at @s run playsound minecraft:item.firecharge.use player @a[distance=..10] ~ ~ ~ 0.5 1.25
execute as @e[type=#cartographer_core:hostile,distance=..2,tag=!warped_thru] at @s run tag @s add warped_thru

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^0.8 run function de_pear:items/plane_warp_raycast