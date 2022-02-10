#I hate this
execute unless block ~ ~0 ~ #vr:air unless block ~ ~0 ~ minecraft:water run setblock ~ ~0 ~ air destroy
execute unless block ~ ~1 ~ #vr:air unless block ~ ~1 ~ minecraft:water run setblock ~ ~1 ~ air destroy

execute if block ~ ~ ~ #vr:air if block ~ ~-1 ~ #vr:air run setblock ~ ~-1 ~ minecraft:black_stained_glass

tag @s remove vr.stupid