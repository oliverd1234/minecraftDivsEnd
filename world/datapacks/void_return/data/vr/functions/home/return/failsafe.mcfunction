data modify entity @s Pos set from storage vr:main Pos

execute at @s unless block ~ ~1 ~ minecraft:water run fill ~ ~1 ~ ~ ~1 ~ air destroy
execute at @s unless block ~ ~ ~ #minecraft:beds at @s unless block ~ ~ ~ minecraft:water run fill ~ ~ ~ ~ ~ ~ air destroy
execute at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:white_stained_glass replace #vr:air