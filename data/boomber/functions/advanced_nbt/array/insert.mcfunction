#
# Insert an element into a list using index
#
# Required nbt:
# -ArmorItems[3].tag.ucit.boomber.utils.data: a copy of array you want to insert an element
# -ArmorItems[3].tag.ucit.boomber.utils.insert: the element you want to insert into an array
#
execute as @s run scoreboard players set @s bb.success 0
scoreboard players operation #bb.utils.nbt.index bb.calculation = #bb.utils.input.nbt.insert.index bb.variable
execute as @s store result score #bb.utils.nbt.length bb.calculation run data get entity @s ArmorItems[3].tag.ucit.boomber.utils.data

execute as @s run data modify entity @s ArmorItems[3].tag.ucit.boomber.utils.temp set value []
execute as @s[scores={bb.success=0}] if score #bb.utils.nbt.index bb.calculation matches 0.. run function boomber:advanced_nbt/array/insert/positive
execute as @s[scores={bb.success=0}] if score #bb.utils.nbt.index bb.calculation matches ..-1 run function boomber:advanced_nbt/array/insert/negative

execute as @s run data modify entity @s ArmorItems[3].tag.ucit.boomber.utils.result set from entity @s ArmorItems[3].tag.ucit.boomber.utils.temp
execute as @s run scoreboard players set @s bb.success 0