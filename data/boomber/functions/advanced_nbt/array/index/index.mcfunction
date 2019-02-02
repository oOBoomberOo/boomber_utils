scoreboard players remove #bb.utils.nbt.index bb.calculation 1
execute as @s run data modify entity @s ArmorItems[3].tag.ucit.boomber.utils.temp set from entity @s ArmorItems[3].tag.ucit.boomber.utils.data[0]
execute as @s run data remove entity @s ArmorItems[3].tag.ucit.boomber.utils.data[0]
execute as @s if score #bb.utils.nbt.index bb.calculation matches ..0 run scoreboard players set @s bb.success 1
execute as @s if score #bb.utils.nbt.index bb.calculation matches 0.. run function boomber:advanced_nbt/array/index/index