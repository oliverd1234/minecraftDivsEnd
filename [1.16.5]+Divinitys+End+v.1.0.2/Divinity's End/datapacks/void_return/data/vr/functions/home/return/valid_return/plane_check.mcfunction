#plane check
execute positioned ~ ~-5 ~ unless predicate vr:block_check/plane run tp @s ~-2 ~ ~-2
execute positioned ~ ~-4 ~ unless predicate vr:block_check/plane run tp @s ~-2 ~ ~-2
execute positioned ~ ~-3 ~ unless predicate vr:block_check/plane run tp @s ~-2 ~ ~-2
execute positioned ~ ~-2 ~ unless predicate vr:block_check/plane run tp @s ~-2 ~ ~-2
execute positioned ~ ~-1 ~ unless predicate vr:block_check/plane run tp @s ~-2 ~ ~-2

#row check
execute at @s run function vr:home/return/valid_return/row_check