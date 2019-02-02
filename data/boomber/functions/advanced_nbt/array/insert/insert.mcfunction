execute as @s if score #bb.utils.nbt.index bb.calculation = #bb.utils.nbt.counter bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.utils.temp append from entity @s ArmorItems[3].tag.ucit.boomber.utils.insert
execute as @s unless score #bb.utils.nbt.index bb.calculation = #bb.utils.nbt.counter bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.utils.temp append from entity @s ArmorItems[3].tag.ucit.boomber.utils.data[0]
execute as @s unless score #bb.utils.nbt.index bb.calculation = #bb.utils.nbt.counter bb.calculation run data remove entity @s ArmorItems[3].tag.ucit.boomber.utils.data[0]

execute as @s run tellraw @a {"nbt": "ArmorItems[3].tag.ucit.boomber.utils", "entity": "@s"}

scoreboard players add #bb.utils.nbt.counter bb.calculation 1
execute as @s if score #bb.utils.nbt.counter bb.calculation = #bb.utils.nbt.length bb.calculation run scoreboard players set @s bb.success 1
execute as @s if score #bb.utils.nbt.counter bb.calculation <= #bb.utils.nbt.length bb.calculation run function boomber:advanced_nbt/array/insert/insert