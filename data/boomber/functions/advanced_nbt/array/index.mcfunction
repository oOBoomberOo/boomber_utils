#
# Select an element in a list using index
#
# Requirement:
# (
#  Entity @e[tag=boomber.utils.memory],
#  Array ArmorItems[3].tag.ucit.boomber.nbt.input: a copy of array you want to select an element from,
#  Score #bb.nbt.input.index: index of an element
# )
#
scoreboard players set @s bb.success 0
scoreboard players operation #bb.nbt.index bb.calculation = #bb.nbt.input.index bb.variable
execute as @e[tag=boomber.utils.memory] store result score #bb.nbt.length bb.calculation run data get entity @s ArmorItems[3].tag.ucit.boomber.nbt.input

execute as @s[scores={bb.success=0}] if score #bb.nbt.index bb.calculation matches 0.. run function boomber:advanced_nbt/array/index/positive
execute as @s[scores={bb.success=0}] if score #bb.nbt.index bb.calculation matches ..-1 run function boomber:advanced_nbt/array/index/negative

execute as @e[tag=boomber.utils.memory] run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.output set from entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp

scoreboard players set @s bb.success 0