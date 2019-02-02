scoreboard players set #bb.utils.nbt.counter bb.calculation 0
scoreboard players add #bb.utils.nbt.length bb.calculation 1
execute as @s if score #bb.utils.nbt.length bb.calculation <= #bb.utils.nbt.index bb.calculation run data modify entity @s ArmorItems[3].tag.ucit.boomber.utils.temp set value "ArrayIndexOutOfBoundsException"
execute as @s if score #bb.utils.nbt.length bb.calculation > #bb.utils.nbt.index bb.calculation run function boomber:advanced_nbt/array/insert/insert
