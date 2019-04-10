execute as @s positioned ~ ~ ~ run function boomber:light_detector/light_detection/daylight_detector
execute as @s positioned ~ ~ ~ run clone ~ 0 ~ ~ 0 ~ ~ ~0 ~ replace move
execute as @s positioned ~ ~ ~ run clone ~ 1 ~ ~ 1 ~ ~ 0 ~ replace normal
execute as @s positioned ~ ~ ~ run scoreboard players operation @s bb.light_level = #bb.ld.result bb.variable
execute as @s positioned ~ ~ ~ run tag @s remove boomber.light_detector.detect
execute as @s positioned ~ ~ ~ run tag @s remove boomber.light_detector.promise
execute as @s positioned ~ ~ ~ run tag @s add boomber.light_detector.resolve