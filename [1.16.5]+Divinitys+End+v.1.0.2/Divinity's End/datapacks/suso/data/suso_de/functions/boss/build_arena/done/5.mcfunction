scoreboard players set $boss_timer suso_var 140
execute store result bossbar minecraft:boss max run scoreboard players get $boss_timer suso_var

schedule function suso_de:boss/curator/close_center 5s
#forceload remove 2687 2767 2736 2848