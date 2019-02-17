scoreboard players operation #bb.nbt.offset_length bb.calculation = #bb.nbt.length bb.calculation
scoreboard players operation #bb.nbt.offset_length bb.calculation += #bb.nbt.index bb.calculation
scoreboard players operation #bb.nbt.index bb.calculation = #bb.nbt.offset_length bb.calculation
scoreboard players set #bb.nbt.counter bb.calculation 0

execute as @s[scores={bb.success=0}] if score #bb.nbt.index bb.calculation matches ..-1 run data modify entity @e[tag=boomber.utils.memory, limit=1] ArmorItems[3].tag.ucit.boomber.nbt.temp set value "ArrayIndexOutOfBoundsException"
execute as @s[scores={bb.success=0}] if score #bb.nbt.index bb.calculation matches ..-1 run scoreboard players set @s bb.success 1

execute as @s[scores={bb.success=0}] if score #bb.nbt.index bb.calculation < #bb.nbt.length bb.calculation run function boomber:advanced_nbt/array/set/set
execute as @s[scores={bb.success=0}] if score #bb.nbt.index bb.calculation >= #bb.nbt.length bb.calculation run data modify entity @e[tag=boomber.utils.memory, limit=1] ArmorItems[3].tag.ucit.boomber.nbt.temp set value "ArrayIndexOutOfBoundsException"
execute as @s[scores={bb.success=0}] if score #bb.nbt.index bb.calculation >= #bb.nbt.length bb.calculation run scoreboard players set @s bb.success 1
