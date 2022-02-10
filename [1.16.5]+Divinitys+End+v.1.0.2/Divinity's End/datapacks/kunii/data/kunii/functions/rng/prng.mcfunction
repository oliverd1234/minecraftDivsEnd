# Default seed for on loop
execute as @a[scores={prngi1=0}] run scoreboard players set @s prngi1 1709505025

# Generate next random number using a LCG
execute as @a run scoreboard players set @s prngMulti1 1087134287
execute as @a run scoreboard players set @s prngAddi1 1170644129
execute as @a run scoreboard players operation @s prngi1 *= @s prngMulti1
execute as @a run scoreboard players operation @s prngi1 += @s prngAddi1

# For sample display - Currently grabs a number between 0 and 10 inclusive each tick
execute as @a run scoreboard players operation @s prngSamplei1 = @s prngi1
execute as @a run scoreboard players set @s prngSampleModi1 5
execute as @a run scoreboard players set @s prngSampleAddi1 1
execute as @a run scoreboard players operation @s prngSamplei1 %= @s prngSampleModi1
execute as @a run scoreboard players operation @s prngSamplei1 += @s prngSampleAddi1