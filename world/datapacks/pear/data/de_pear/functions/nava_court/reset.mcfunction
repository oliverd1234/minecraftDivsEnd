tag @a remove water_shrine_1
tag @a remove water_shrine_2
tag @a remove no_parch
tag @a remove parched

kill @e[tag=court_monologue_1]
kill @e[tag=court_monologue_2]
kill @e[tag=court_monologue_3]
kill @e[tag=court_monologue_4]

summon armor_stand 837 97 -15 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["court_monologue_1"]}

summon armor_stand 780 64 132 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["court_monologue_2"]}

summon armor_stand 813 65 380 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["court_monologue_3"]}

summon armor_stand 851 92 657 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["court_monologue_4"]}