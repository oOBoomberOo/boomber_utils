execute as @s[scores={bb.success=0}] if score #bb.nbt.length bb.calculation > #bb.nbt.index bb.calculation run function boomber:advanced_nbt/array/index/index
execute as @s[scores={bb.success=0}] if score #bb.nbt.length bb.calculation <= #bb.nbt.index bb.calculation run data modify entity @e[tag=boomber.utils.memory, limit=1] ArmorItems[3].tag.ucit.boomber.nbt.output set value "ArrayIndexOutOfBoundsException"
execute as @s[scores={bb.success=0}] if score #bb.nbt.length bb.calculation <= #bb.nbt.index bb.calculation run scoreboard players set @s bb.success 1
