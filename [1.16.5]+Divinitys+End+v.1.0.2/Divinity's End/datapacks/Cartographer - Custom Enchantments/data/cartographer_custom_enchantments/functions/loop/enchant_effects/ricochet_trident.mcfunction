execute if entity @e[scores={ricochet=1..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run execute if entity @e[type=#cartographer_core:hostile,tag=!bounced,distance=1..12] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ricochet_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-95787575,202787942,-1825696853,1067629892],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTExM2VlNjEwODQxZGVkMjE1YWNkMmI0Y2FhZWVmODdkZmQ2ZTNkNDc2OGU3YWI0ZTE5ZWI3NmIzZDgxMjFjZiJ9fX0="}]}}}}]}
execute if entity @e[scores={ricochet=1..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run scoreboard players set @s ricochet_cool 8
execute if entity @e[scores={ricochet=1..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @e[type=armor_stand,distance=..2,tag=ricochet_projectile,tag=!checked] ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,limit=1,distance=1..12,sort=nearest,tag=!bounced] feet
execute if entity @e[scores={ricochet=1..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tag @e[type=armor_stand,distance=..2,tag=ricochet_projectile] add checked
execute if entity @e[scores={ricochet=1..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tag @e[type=#cartographer_core:hostile,limit=1,distance=1..12] add bounced

execute if entity @e[scores={ricochet=2..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run execute if entity @e[type=#cartographer_core:hostile,tag=!bounced,distance=1..12] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ricochet_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-95787575,202787942,-1825696853,1067629892],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTExM2VlNjEwODQxZGVkMjE1YWNkMmI0Y2FhZWVmODdkZmQ2ZTNkNDc2OGU3YWI0ZTE5ZWI3NmIzZDgxMjFjZiJ9fX0="}]}}}}]}
execute if entity @e[scores={ricochet=2..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run scoreboard players set @s ricochet_cool 8
execute if entity @e[scores={ricochet=2..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @e[type=armor_stand,distance=..2,tag=ricochet_projectile,tag=!checked] ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,limit=1,distance=1..12,sort=nearest,tag=!bounced] feet
execute if entity @e[scores={ricochet=2..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tag @e[type=armor_stand,distance=..2,tag=ricochet_projectile] add checked
execute if entity @e[scores={ricochet=2..}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tag @e[type=#cartographer_core:hostile,limit=1,distance=1..12] add bounced

execute if entity @e[scores={ricochet=3}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run execute if entity @e[type=#cartographer_core:hostile,tag=!bounced,distance=1..12] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ricochet_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-95787575,202787942,-1825696853,1067629892],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTExM2VlNjEwODQxZGVkMjE1YWNkMmI0Y2FhZWVmODdkZmQ2ZTNkNDc2OGU3YWI0ZTE5ZWI3NmIzZDgxMjFjZiJ9fX0="}]}}}}]}
execute if entity @e[scores={ricochet=3}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run scoreboard players set @s ricochet_cool 8
execute if entity @e[scores={ricochet=3}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @e[type=armor_stand,distance=..2,tag=ricochet_projectile,tag=!checked] ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,limit=1,distance=1..12,sort=nearest,tag=!bounced] feet
execute if entity @e[scores={ricochet=3}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tag @e[type=armor_stand,distance=..2,tag=ricochet_projectile] add checked
execute if entity @e[scores={ricochet=3}] run execute as @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] at @s run tag @e[type=#cartographer_core:hostile,limit=1,distance=1..12] add bounced


tag @e[type=#cartographer_core:hostile,tag=bounced] remove bounced

execute if entity @e[scores={ricochet=1..}] run execute if entity @e[type=#cartographer_core:hostile,limit=1,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s ricochet 0