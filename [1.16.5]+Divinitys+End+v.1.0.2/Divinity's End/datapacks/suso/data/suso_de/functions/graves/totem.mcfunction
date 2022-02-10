scoreboard players set $temp suso_var 0
execute at @a[tag=!dead] if score @s s_gid = @p s_id run scoreboard players set $temp suso_var 1
execute at @a[tag=!dead] if score @s s_gid = @p s_id run tp @p @s
execute if score $temp suso_var matches 1 run function suso_de:graves/recover