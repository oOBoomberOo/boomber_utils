scoreboard players operation #bb.utils.nbt.length bb.calculation += #bb.utils.nbt.index bb.calculation
scoreboard players operation #bb.utils.nbt.index bb.calculation = #bb.utils.nbt.length bb.calculation

execute as @s if score #bb.utils.nbt.index bb.calculation matches ..-1 run data modify entity @s ArmorItems[3].tag.ucit.boomber.utils.temp set value "ArrayIndexOutOfBoundsException"
execute as @s if score #bb.utils.nbt.index bb.calculation matches 0.. run function boomber:advanced_nbt/array/index/index