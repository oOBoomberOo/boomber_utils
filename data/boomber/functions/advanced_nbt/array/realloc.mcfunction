#
# Reallocate array size
#
# Requirement:
# (
#  Entity @e[tag=boomber.utils.memory],
#  Array ArmorItems[3].tag.ucit.boomber.nbt.input: a copy of array you want to reallocate,
#  Score #bb.nbt.input.size: new reallocated array size
# )
#

scoreboard players set @s bb.success 0
scoreboard players operation #bb.nbt.size bb.calculation = #bb.nbt.input.size bb.variable
execute as @e[tag=boomber.utils.memory] store result score #bb.nbt.length bb.calculation run data get entity @s ArmorItems[3].tag.ucit.boomber.nbt.input

execute as @e[tag=boomber.utils.memory] run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp set value []

execute as @s[scores={bb.success=0}] if score #bb.nbt.size bb.calculation > #bb.nbt.length bb.calculation run function boomber:advanced_nbt/array/realloc/pre_realloc
execute as @s[scores={bb.success=0}] if score #bb.nbt.size bb.calculation <= #bb.nbt.length bb.calculation run function boomber:advanced_nbt/array/realloc/no_realloc

execute as @e[tag=boomber.utils.memory] run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.output set from entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp

