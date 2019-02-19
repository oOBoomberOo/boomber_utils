scoreboard players set #bb.nbt.counter bb.calculation 1
execute as @s[scores={bb.success=0}] run function boomber:advanced_nbt/array/realloc/realloc
