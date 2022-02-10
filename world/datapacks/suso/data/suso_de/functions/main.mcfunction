execute as @a[tag=!suso_init] run function suso_de:init
execute as @a[tag=suso_init] unless score @s s_id matches 1.. run function suso_de:recover_id
execute store result score $players suso_var if entity @a
execute store result score $difficulty suso_var run difficulty
execute if score $difficulty suso_var matches 0 run difficulty normal

function suso_de:wbt/main
execute if entity @a[x=3149,y=37,z=759,distance=..300] run function suso_de:lobby/main
execute if score $boss suso_var matches 1 run function suso_de:boss/main
execute if score $angle_ct suso_var matches 1.. if score $boss suso_var matches 0 run function suso_de:boss/build_arena/main
execute if score $death_handle suso_var matches 1 run function suso_de:graves/main
execute if score $death_handle suso_var matches 2 run function suso_de:boss/death/main
execute as @a if score @s s_disconnect matches 1.. run function suso_de:reconnect

#Death counter
tag @a[nbt=!{DeathTime:0s}] add dead
execute as @a[tag=dead,nbt={DeathTime:0s},gamemode=!spectator] at @s run function suso_de:death/do
execute if score $death_display suso_var matches 1.. run function suso_de:death/main

data modify entity 00000783-C470-0000-0000-000000000000 Fire set value 32767s
particle minecraft:crimson_spore 2338.5 162.00 -115.5 4 1 4 1 3
execute positioned 2338.5 162.00 -115.5 if entity @a[distance=..4,nbt={DeathTime:0s}] unless score $boss suso_var matches 1 unless score $boss_dialog suso_var matches 1.. unless score $beat_curator suso_var matches 1 unless score $angle_ct suso_var matches 1.. run scoreboard players set $boss_dialog suso_var 1
function suso_de:animations

execute as @a[tag=rot_do] at @s run function suso_de:cl/update

tag @a remove rwall_player
execute as @a at @s positioned 3209.5 ~ -424.5 if entity @s[distance=..128] run function suso_de:rwall/main
execute if score $reveal_timer suso_var matches 1.. run scoreboard players remove $reveal_timer suso_var 1
execute if score $reveal_timer suso_var matches 1 as @e[type=falling_block,tag=rwall_sand,tag=rwall_revealed] run function suso_de:rwall/reveal/stop

#Make sure rain works on CFG
weather rain
execute if score $beat_curator suso_var matches 1 positioned 3612.5 70.0 -108.5 unless entity @a[distance=..350] run weather clear