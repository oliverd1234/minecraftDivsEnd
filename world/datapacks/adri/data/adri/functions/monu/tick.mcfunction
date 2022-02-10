scoreboard players set @a[nbt={SelectedItem:{tag:{display:{Lore:['{"text":" "}','{"italic":false,"color":"#DE81AF","text":"Bonus Objective Item"}']}}}}] adri_HoldGift 2
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,tag:{display:{Lore:['{"text":" "}','{"italic":false,"color":"#DE81AF","text":"Bonus Objective Item"}']}}}]}] adri_HoldGift 2

execute as @e[type=armor_stand,tag=obj] at @s run fill ~ ~ ~ ~ ~ ~ jukebox replace air
execute as @e[type=armor_stand,tag=obj] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:jukebox"}},distance=..1]
execute as @e[type=armor_stand,tag=obj,tag=!placed] at @s if block ~ ~ ~ jukebox[has_record=true] run function adri:monu/place
execute if entity @a[scores={adri_HoldGift=1..}] as @e[tag=bobj,tag=!placed] at @s if block ~ ~1 ~ #adri:glazed_terracotta run function adri:monu/bplace
execute as @e[type=armor_stand,tag=obj13,tag=!obj,tag=!bobj,tag=!sch] unless entity @e[type=armor_stand,tag=obj,tag=!bobj,tag=!placed] at @s run function adri:monu/pigschedule

particle soul -74 51 -970 12 5 16 0 1 normal
execute as @e[tag=obj] at @s run particle smoke ~ ~ ~ .5 .5 .5 0 2 force
execute as @e[tag=obj,tag=obj13] at @s run particle flame ~ ~ ~ .5 .5 .5 0 2 force

execute positioned -74 42 -970 if entity @a[distance=..18] unless entity @e[type=shulker,tag=mgs] as @e[type=armor_stand,tag=obj] at @s run function adri:monu/placeshulkers
execute positioned -74 42 -970 if entity @a[distance=..18] as @e[type=armor_stand,tag=obj,tag=placed] at @s run effect give @e[type=shulker,tag=mgs,distance=..1] glowing 2 1 true

execute positioned -74 42 -970 unless entity @a[distance=..18] run tp @e[type=shulker,tag=mgs] ~ -2711 ~

execute as @e[type=armor_stand,tag=obj,tag=obj1,tag=placed] at @s run function adri:monu/animation/obj1
execute as @e[type=armor_stand,tag=obj,tag=obj2,tag=placed] at @s run function adri:monu/animation/obj2
execute as @e[type=armor_stand,tag=obj,tag=obj3,tag=placed] at @s run function adri:monu/animation/obj3
execute as @e[type=armor_stand,tag=obj,tag=obj4,tag=placed] at @s run function adri:monu/animation/obj4
execute as @e[type=armor_stand,tag=obj,tag=obj5,tag=placed] at @s run function adri:monu/animation/obj5
execute as @e[type=armor_stand,tag=obj,tag=obj6,tag=placed] at @s run function adri:monu/animation/obj6
execute as @e[type=armor_stand,tag=obj,tag=obj7,tag=placed] at @s run function adri:monu/animation/obj7
execute as @e[type=armor_stand,tag=obj,tag=obj8,tag=placed] at @s run function adri:monu/animation/obj8
execute as @e[type=armor_stand,tag=obj,tag=obj9,tag=placed] at @s run function adri:monu/animation/obj9
execute as @e[type=armor_stand,tag=obj,tag=obj10,tag=placed] at @s run function adri:monu/animation/obj10
execute as @e[type=armor_stand,tag=obj,tag=obj11,tag=placed] at @s run function adri:monu/animation/obj11
execute as @e[type=armor_stand,tag=obj,tag=obj12,tag=placed] at @s run function adri:monu/animation/obj12
execute as @e[type=armor_stand,tag=obj,tag=obj13,tag=placed] at @s run function adri:monu/animation/obj13

execute as @e[type=armor_stand,tag=bobjt] run data modify entity @s CustomNameVisible set value 0
execute as @e[type=armor_stand,tag=objt] run data modify entity @s CustomNameVisible set value 0
execute positioned -91 27 -970 as @a[distance=..10] at @s positioned ^ ^2 ^2.5 as @e[distance=..1.5,type=minecraft:armor_stand,tag=bobjt,limit=1,sort=nearest] run data modify entity @s CustomNameVisible set value 1
execute positioned -74 46 -970 as @a[distance=..10] at @s positioned ^ ^1.5 ^2 as @e[distance=..2,type=minecraft:armor_stand,tag=objt,limit=1,sort=nearest] run data modify entity @s CustomNameVisible set value 1
execute unless entity @a[scores={adri_HoldGift=1..}] as @e[type=minecraft:armor_stand,tag=bobj,tag=!placed] at @s if block ~ ~1 ~ #adri:glazed_terracotta run setblock ~ ~1 ~ air destroy
scoreboard players remove @a[scores={adri_HoldGift=1..}] adri_HoldGift 1