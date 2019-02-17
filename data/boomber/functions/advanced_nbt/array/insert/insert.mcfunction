execute as @e[tag=boomber.utils.memory] if score #bb.nbt.index bb.calculation = #bb.nbt.counter bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp append from entity @s ArmorItems[3].tag.ucit.boomber.nbt.input[1][0]
execute as @e[tag=boomber.utils.memory] unless score #bb.nbt.index bb.calculation = #bb.nbt.counter bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp append from entity @s ArmorItems[3].tag.ucit.boomber.nbt.input[0][0]
execute as @e[tag=boomber.utils.memory] unless score #bb.nbt.index bb.calculation = #bb.nbt.counter bb.calculation run data remove entity @s ArmorItems[3].tag.ucit.boomber.nbt.input[0][0]

scoreboard players add #bb.nbt.counter bb.calculation 1
execute as @s if score #bb.nbt.counter bb.calculation = #bb.nbt.length bb.calculation run scoreboard players set @s bb.success 1
execute as @s if score #bb.nbt.counter bb.calculation <= #bb.nbt.length bb.calculation run function boomber:advanced_nbt/array/insert/insert