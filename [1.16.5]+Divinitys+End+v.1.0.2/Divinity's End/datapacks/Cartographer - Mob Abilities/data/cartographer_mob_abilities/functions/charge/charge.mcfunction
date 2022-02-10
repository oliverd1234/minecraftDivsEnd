execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 3 0.5

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s slowness 1 6 true

execute unless entity @s[scores={ability_charge=1..2}] run tp @s ~ ~ ~ facing entity @p feet

execute unless entity @s[scores={ability_charge=1..2}] run data merge entity @s {NoAI:1}

execute unless entity @s[scores={ability_charge=1..2}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["charge_marker","ability_marker"]}

execute unless entity @s[scores={ability_charge=1..2}] run execute as @e[tag=charge_marker,distance=..2,limit=1] at @s run tp @s ~ ~ ~ facing entity @p feet

execute unless entity @s[scores={ability_charge=2}] run execute as @e[tag=charge_marker,distance=..2,limit=1] at @s run scoreboard players set @s helper_raycast 10

execute unless entity @s[scores={ability_charge=2}] run execute as @e[tag=charge_marker,distance=..2,limit=1] at @s run execute positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/charge_raycast

execute unless entity @s[scores={ability_charge=2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=3}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=3}] run function cartographer_mob_abilities:abilities/charge

execute if entity @s[scores={ability_charge=3}] run kill @e[tag=charge_marker]
