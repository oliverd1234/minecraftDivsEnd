####################################
# Darkest Hour Runecaster Rail Activation Function
####################################

execute as @s at @s run kill @e[type=arrow,distance=..2,limit=1,sort=nearest]
scoreboard players set @a crossbow 0
execute as @s at @s run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["rail","raycast"]}
tp @e[tag=rail,limit=1,sort=nearest] @s
tp @e[tag=rail,limit=1,sort=nearest] ~ ~ ~
execute as @s at @s run playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 0.75 0.5 1
execute as @s at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 2 1.25 1
execute if entity @e[tag=rail] run execute as @e[tag=rail] at @s run function styx:runecaster/rail_move