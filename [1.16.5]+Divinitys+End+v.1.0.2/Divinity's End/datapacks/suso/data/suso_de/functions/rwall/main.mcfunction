execute at @s as @e[type=area_effect_cloud,tag=rwall_aec,distance=..30] run function suso_de:rwall/entity
execute unless score $reveal_timer suso_var matches 100.. if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:99b,Duration:80}]}] at @s run function suso_de:rwall/reveal/do

tag @s add rwall_player