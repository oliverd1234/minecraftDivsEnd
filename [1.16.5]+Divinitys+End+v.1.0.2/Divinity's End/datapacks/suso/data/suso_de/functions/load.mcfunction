execute store result score $datapack_ct suso_var run datapack list
execute store result score $datapack_act suso_var run datapack list enabled
execute if score $datapack_fix suso_var matches 1 if score $datapack_act suso_var matches 15 run tellraw @p [{"text":"[!] ","color":"dark_green","bold":true},{"text":"Success! ","color":"green","bold":true}]
execute if score $datapack_fix suso_var matches 1 if score $datapack_act suso_var matches ..14 run tellraw @p [{"text":"[!] ","color":"dark_red","bold":true},{"text":"Failure. ","color":"red","bold":true},{"text":"A datapack is missing.\n\nThe map won't work in this state, please try reinstalling it.","color":"red","bold":false}]
execute unless score $datapack_fix suso_var matches 1 if score $datapack_act suso_var matches ..14 run setblock -74 1 -970 command_block{auto:1b,Command:"function suso_de:enable_datapacks"} destroy
scoreboard players set $datapack_fix suso_var 0

scoreboard objectives add suso_var dummy
execute unless score #r suso_var matches 1 run function suso_de:setup
execute unless score $started suso_var matches 1 unless entity @e[type=giant,tag=lobby_wall] run function suso_de:lobby/giant_wall
scoreboard players set #r suso_var 1

kill @e[type=giant,tag=succ]
function suso_de:rng/seed
worldborder set 59999900 100

execute if score $force_boss suso_var matches 1 run function suso_de:boss/load/start