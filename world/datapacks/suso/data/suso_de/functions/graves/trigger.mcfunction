execute as @e[type=sheep,tag=s_grave,sort=nearest,distance=..3,nbt=!{HurtTime:0s}] if score @s s_gid = @p s_id run function suso_de:graves/recover
execute as @e[type=sheep,tag=s_grave,sort=nearest,distance=..3,nbt=!{HurtTime:0s}] unless score @s s_gid = @p s_id at @s run function suso_de:graves/aesthetics/bad
advancement revoke @s only suso_de:grave_trigger