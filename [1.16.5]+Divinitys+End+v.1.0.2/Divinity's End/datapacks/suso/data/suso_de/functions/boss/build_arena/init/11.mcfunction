summon armor_stand 2369 155 -134 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
#summon armor_stand 2369 155 -144 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
#summon armor_stand 2374 155 -139 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2369 155 -110 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2364 155 -105 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2351 155 -110 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2344 155 -100 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2346 146 -78 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
##summon armor_stand 2360 146 -78 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2360 146 -86 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2369 125 -100 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
##summon armor_stand 2364 125 -105 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2350 125 -109 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2345 125 -101 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2333 125 -101 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
#summon armor_stand 2328 125 -106 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2328 125 -96 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2323 125 -81 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
##summon armor_stand 2333 125 -81 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
##summon armor_stand 2334 125 -74 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2335 131 -83 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2322 140 -82 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2331 140 -79 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2333 155 -75 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2323 155 -81 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2323 162 -92 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2326 170 -78 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2334 185 -74 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2334 185 -82 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
summon armor_stand 2323 185 -101 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
#summon armor_stand 2347 185 -101 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
#summon armor_stand 2347 185 -105 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}
#summon armor_stand 2364 185 -105 {Marker:1b,Invisible:1b,Tags:["boss_spawner","boss_spawner11"]}

scoreboard players set $boss_timer suso_var 350
execute store result bossbar minecraft:boss max run scoreboard players get $boss_timer suso_var

#forceload add 2543 2863 2592 2944