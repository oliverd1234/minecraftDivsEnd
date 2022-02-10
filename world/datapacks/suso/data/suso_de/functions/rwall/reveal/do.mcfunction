scoreboard players set $reveal_timer suso_var 100
effect give @e[type=#cartographer_core:hostile,distance=..20,scores={effect_cloaked=1..}] minecraft:glowing 10 0 true
execute at @e[type=falling_block,tag=rwall_sand,distance=..20] as @e[type=falling_block,tag=rwall_sand,distance=..10] run function suso_de:rwall/reveal/entity
playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~ ~ .8 2
execute if entity @e[type=falling_block,tag=rwall_sand,distance=..20] run function suso_de:rwall/reveal/effects_if_reveal
execute if entity @e[type=#cartographer_core:hostile,distance=..20,scores={effect_cloaked=1..}] run function suso_de:rwall/reveal/effects_if_reveal