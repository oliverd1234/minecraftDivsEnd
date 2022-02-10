#forceloading
forceload add ~-2 ~-2 ~2 ~2

#checking for valid landing position
execute at @s unless predicate vr:block_check/valid_end run function vr:home/return/valid_return

#failsafe
execute at @s unless predicate vr:block_check/valid_end run function vr:home/return/failsafe

#returning selected player
execute at @s run tp @a[tag=vr.selected] ~0.5 ~ ~0.5

#termination
forceload remove ~-2 ~-2 ~2 ~2
kill @s