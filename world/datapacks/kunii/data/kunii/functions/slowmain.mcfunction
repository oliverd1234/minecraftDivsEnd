#Mobs
execute as @e[tag=cryptcommand] at @s run function kunii:leader/cryptleader
execute as @e[type=wither_skeleton,tag=cryptsummon,tag=!has_summoned] at @s run function kunii:summoner/cryptsummon

#Melting
execute positioned 294 80 -878 as @a[tag=!udi1,distance=..10] run function kunii:trigger/check

#Necromancy Mob Tagging
execute unless entity @e[tag=necro_tagged] as @a[tag=adri_necro] at @s run function kunii:necromancy/tag
execute as @e[tag=necro_tagged] at @s unless entity @a[tag=adri_necro,distance=..30] run tag @s remove necro_tagged
execute as @e[tag=necro_tagged] at @s unless entity @a[tag=adri_necro,distance=..30] run data remove entity @s DeathLootTable

#RNG
function kunii:rng/prng

schedule function kunii:slowmain 1s