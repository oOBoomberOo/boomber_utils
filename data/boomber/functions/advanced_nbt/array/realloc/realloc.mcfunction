execute as @e[tag=boomber.utils.memory] if score #bb.nbt.counter bb.calculation > #bb.nbt.length bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp append value {}
execute as @e[tag=boomber.utils.memory] if score #bb.nbt.counter bb.calculation > #bb.nbt.length bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp append value ""
execute as @e[tag=boomber.utils.memory] if score #bb.nbt.counter bb.calculation > #bb.nbt.length bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp append value []
execute as @e[tag=boomber.utils.memory] if score #bb.nbt.counter bb.calculation > #bb.nbt.length bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp append value 0

execute as @e[tag=boomber.utils.memory] if score #bb.nbt.counter bb.calculation <= #bb.nbt.length bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.nbt.temp append from entity @s ArmorItems[3].tag.ucit.boomber.nbt.input[0]
execute as @e[tag=boomber.utils.memory] if score #bb.nbt.counter bb.calculation <= #bb.nbt.length bb.calculation run data remove entity @s ArmorItems[3].tag.ucit.boomber.nbt.input[0]

scoreboard players add #bb.nbt.counter bb.calculation 1
execute as @s if score #bb.nbt.counter bb.calculation >= #bb.nbt.size bb.calculation run scoreboard players set @s bb.success 1
execute as @s if score #bb.nbt.counter bb.calculation <= #bb.nbt.size bb.calculation run function boomber:advanced_nbt/array/realloc/realloc
