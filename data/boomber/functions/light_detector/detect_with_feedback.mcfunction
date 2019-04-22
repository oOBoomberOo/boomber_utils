execute positioned ~ ~ ~ run function boomber:light_detector/detect
tellraw @s [{"text": "Current Brightness: "}, {"score": {"name": "#bb.ld.result", "objective": "bb.variable"}}]
