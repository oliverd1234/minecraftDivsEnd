effect clear @s[tag=mob_vapors] minecraft:levitation

execute if entity @s[type=bee,tag=mob_vapors] run particle minecraft:nautilus ~ ~0.5 ~ 0.25 0.25 0.25 0.1 1 force
execute if entity @s[type=bee,tag=mob_vapors] run effect give @s glowing 2 0 true
execute if entity @s[type=bee,tag=mob_vapors] run execute unless entity @s[scores={de_pear_bee_t=20..}] run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.001 1 force
execute if entity @s[type=bee,tag=mob_vapors,scores={de_pear_bee_t=20..}] run particle minecraft:composter ~ ~0.5 ~ 0.5 0.2 0.5 0 3

execute if entity @s[type=bee,tag=mob_vapors,scores={de_pear_bee_t=20},nbt={HasStung:1b}] run data merge entity @e[distance=..2,type=area_effect_cloud,sort=nearest,limit=1] {ReapplicationDelay:5,Radius:2f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1200,WaitTime:20,Color:12580330,Potion:"minecraft:awkward",Effects:[{Id:11b,Amplifier:0b,Duration:80},{Id:28b,Amplifier:0b,Duration:80}]}
execute if entity @s[type=bee,tag=mob_vapors,scores={de_pear_bee_t=20},nbt={HasStung:1b}] run particle minecraft:cloud ~ ~0.5 ~ 0.5 0.2 0.5 0.05 30
execute if entity @s[type=bee,tag=mob_vapors,scores={de_pear_bee_t=20},nbt={HasStung:1b}] run playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..12] ~ ~ ~ 0.5 2
execute if entity @s[type=bee,tag=mob_vapors,scores={de_pear_bee_t=20..}] run particle minecraft:composter ~ ~1.5 ~ 0.5 0.2 0.5 0.05 2

execute if entity @s[type=bee,tag=mob_vapors,nbt={HasStung:1b}] run scoreboard players add @s de_pear_bee_t 1

execute if entity @s[type=bee,tag=mob_vapors,nbt={HasStung:0b}] run execute unless entity @e[type=area_effect_cloud,distance=..2] run kill @s

execute if entity @s[type=bee,tag=mob_vapors,scores={de_pear_bee_t=1200},nbt={HasStung:1b}] run kill @s

execute if entity @s[tag=mob_visionary] at @s run execute as @e[type=vex,tag=!mob_vapor_spirit,distance=..5] at @s run summon vex ~ ~ ~ {Tags:["mob_vapor_spirit"],LifeTicks:300,CustomName:'{"text":"Call of the Vapors","color":"white","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-700933268,1075333996,-1156945916,-859483202],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjA5NmIwZDdlZGRmN2IwNTlmYjQwY2ExNmZmMjllOGZjYWU4NTI3NTEyZTJjN2UwZjY3MTdjNGZlYmQ3YjBjNSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}

execute if entity @s[tag=mob_visionary] at @s run execute as @e[type=vex,tag=!mob_vapor_spirit,distance=..5] at @s run tp @s ~ -100 ~

execute if entity @s[type=bee,tag=keep_stinger,nbt={HasStung:1b}] run data merge entity @s {HasStung:0b,AngerTime:32767}

effect give @s[tag=has_slowfall] minecraft:slow_falling 30 0 false

effect give @s[tag=has_invisibility] minecraft:invisibility 30 0 false

effect give @s[tag=has_fire_resistance] minecraft:fire_resistance 30 0 false

effect give @s[tag=has_water_breathing] minecraft:water_breathing 30 0 false

execute if entity @s[tag=cloak_blind] at @s run execute if entity @a[distance=..20,nbt={ActiveEffects:[{Id:15b,Amplifier:0b,Duration:399}]}] run effect clear @a[distance=..20,nbt={ActiveEffects:[{Id:15b,Amplifier:0b,Duration:399}]}] blindness

execute if entity @s[tag=cloak_blind] at @s run execute if entity @s[nbt={ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1199}]}] run effect clear @s[nbt={ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1199}]}] invisibility


