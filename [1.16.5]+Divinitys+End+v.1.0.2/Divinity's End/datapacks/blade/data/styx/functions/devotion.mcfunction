####################################
# Devotion Effect
# Checks for the amount of kills made; also checks if the player has a Absorption Shield up
####################################

execute as @s[scores={devotionKill=10..}] at @s run effect give @s minecraft:absorption 120 0 true

execute as @s[nbt=!{AbsorptionAmount:0.0f},tag=!devote_shield] at @s run playsound entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1.5 0.3
execute as @s[nbt=!{AbsorptionAmount:0.0f},tag=!devote_shield] at @s run particle end_rod ~ ~1 ~ 1 0.5 1 0.01 20
execute as @s[nbt=!{AbsorptionAmount:0.0f},tag=!devote_shield] at @s run tag @s add devote_shield

execute as @s[scores={devotionKill=10..}] at @s run scoreboard players set @s devotionKill 0

#Gives the player an Absorption shield if 10 kills are achieved while wielding the Obol
#Will also give players the display effects when applying Absorption through other means

execute as @s[nbt={AbsorptionAmount:0.0f},tag=devote_shield] at @s run execute as @e[distance=..7,type=!armor_stand,type=!item,type=!item_frame,type=!player] at @s run function cartographer_core:helper/deal_damage/5
execute as @s[nbt={AbsorptionAmount:0.0f},tag=devote_shield] at @s run execute as @e[distance=..7,type=!armor_stand,type=!item,type=!item_frame,type=!player] at @s run effect give @s minecraft:wither 1 1 true

execute as @s[nbt={AbsorptionAmount:0.0f},tag=devote_shield] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.5 0.75 0.3
execute as @s[nbt={AbsorptionAmount:0f},tag=devote_shield] at @s run summon area_effect_cloud ~ ~0.5 ~ {Particle:"soul_fire_flame",Radius:7f,Duration:1,DurationOnUse:0f,WaitTime:0}

execute as @s[nbt={AbsorptionAmount:0.0f},tag=devote_shield] at @s run tag @s remove devote_shield

#Swaps tags when the player loses their absorption hearts, dealing damage and putting the damage part on cooldown