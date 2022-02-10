particle minecraft:explosion ~ ~0.5 ~ 0 0 0 1 0

playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5

execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p feet

execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ ~ ~5

execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push

execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run scoreboard players set @s effect_shocked 5

particle minecraft:firework ~ ~0.5 ~ 0.3 0.3 0.3 0.15 40 normal