kill @e[tag=boomber.utils.memory]
summon armor_stand ~ ~ ~ {Tags:["boomber.utils.memory"], NoGravity:1b, Marker:1b, Invisible:1b, Invulnerable:1b}
execute as @e[type=armor_stand, tag=boomber.utils.memory] run loot replace entity @s armor.head loot boomber:utils/memory
