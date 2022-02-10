#stupid dumb idiot failure
execute if entity @s[tag=vr.stupid] at @s run function vr:stupid_check_one_tick_later

#area specific return checks
execute if entity @s[tag=vr.int] at @s if predicate vr:in_void/int run function vr:home/return
execute if entity @s[tag=vr.cfg] at @s if predicate vr:in_void/cfg run function vr:home/return

#default return and failsafe
execute at @s if predicate vr:in_void run function vr:home/return