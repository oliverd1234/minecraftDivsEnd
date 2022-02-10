data merge entity @s {Motion:[0.0,10.0,0.0]}

execute as @e[type=trident,tag=!saved,limit=1,distance=..10,sort=nearest] at @s run summon magma_cube ~ ~2 ~ {NoGravity:1b,DeathLootTable:"no_lol",NoAI:1b,Health:1f,Size:0,Attributes:[{Name:generic.max_health,Base:1}]}

tag @s add saved