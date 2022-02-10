data modify storage s_graves grave_UUID set from entity @s UUID
execute as @p run function suso_de:graves/load/do
execute at @s positioned ~ ~-1.4 ~ run kill @e[tag=s_grave_ae,distance=..0.01]
execute at @s positioned ~ ~0.7 ~ run kill @e[tag=s_grave_tip,distance=..0.01]
execute at @s run function suso_de:graves/aesthetics/recover
tp 0 -2711 0
kill @s