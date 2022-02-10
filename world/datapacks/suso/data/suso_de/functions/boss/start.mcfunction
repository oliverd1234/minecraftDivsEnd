scoreboard players set $boss suso_var 1
scoreboard players set $death_handle suso_var 2
scoreboard players set $boss_timer suso_var 100
execute as @a run function suso_de:boss/death/backup
bossbar set minecraft:boss players @a
gamerule doTileDrops false
scoreboard players set $next_area suso_var 0
forceload add 2287 -161 2384 -64
forceload add 2720 2640 2687 2639
scoreboard players set $boss_phase suso_var 1
function suso_de:boss/build_arena/load_area
tag @a add boss