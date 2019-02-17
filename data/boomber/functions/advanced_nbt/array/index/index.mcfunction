scoreboard players remove #bb.nbt.index bb.calculation 1

execute as @e[tag=boomber.utils.memory] run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp set from entity @s ArmorItems[3].tag.ucit.boomber.nbt.input[0]
execute as @e[tag=boomber.utils.memory] run data remove entity @s ArmorItems[3].tag.ucit.boomber.nbt.input[0]

execute as @s if score #bb.nbt.index bb.calculation matches ..0 run scoreboard players set @s bb.success 1
execute as @s if score #bb.nbt.index bb.calculation matches 0.. run function boomber:advanced_nbt/array/index/index