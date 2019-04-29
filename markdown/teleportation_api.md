# Teleportation API
This module lets you teleport an entity to a specific coordinate using scoreboard.

## Basic Teleporting
1) set coordinate  
`/scoreboard players set #bb.tp_api.input.target.x bb.variable <x>`
`/scoreboard players set #bb.tp_api.input.target.y bb.variable <y>`
`/scoreboard players set #bb.tp_api.input.target.z bb.variable <z>`
2) run `/execute as <entity> at @s run function boomber:teleportation_api/tp`

## Advanced Teleporting

## Custom Location Teleporting
Instead of using your target's position, it'll use whatever position you told it to do.  
1). Enabled custom location mode [ `scoreboard players set #bb.tp_api.cpos bb.variable 1` ] (you have to run this everytime you want custom location teleporting because it'll be set back to 0 everytime it teleported something)  
2). Set custom location  
 [ `scoreboard players set #bb.tp_api.input.pos.x bb.variable <x>`  ]  
 [ `scoreboard players set #bb.tp_api.input.pos.y bb.variable <y>`  ]  
 [ `scoreboard players set #bb.tp_api.input.pos.z bb.variable <z>`  ]  
3). run tp function [ `execute as <target> at @s run function boomber:teleportation_api/tp` ]  

### How it works
As you already know with custom location teleporting it'll use your given position instead of target's position but what actually is the difference?  

Let's say we have target called "[A]" at (145x + 80y + 145z) and we tp [A] to (250x + 80y + 250z), [A] will arrived at that location as expected.  
Now let's do this with custom location, [A] is at (145x + 80y + 145z) and custom location is (150x + 80y + 150z) then we tp [A] to (250x + 80y + 250z) this time [A] arrived at (245x + 80y + 245z) because [A] is at ((-5x) + 0y + (-5z)) offset from where the custom location is.  

To put it simply, the custom location will take the offset of a target into account. It could be useful when you want to teleport multiple entities to one location while maintaining their relative location of each other.

# Micro Teleportation API
The normal teleportation api only teleport you with the accuracy of a block if you want to teleport an entity with accuracy much more than that you have to use micro teleportation api

## Teleporting
1) set coordinate  
`/scoreboard players set #bb.tp_api.input.target.x bb.variable <x>`
`/scoreboard players set #bb.tp_api.input.target.y bb.variable <y>`
`/scoreboard players set #bb.tp_api.input.target.z bb.variable <z>`
`<x>, <y> and <z>` is the amount of offset from the corner of the current block in positive direction `(+x, +y, +z)`.  
the value is in the magnitude of 1000 (1 block = 1000 unit, half a block = 500 unit, etc.)  
Negative value will be the offset in negative direction instead.
2) run `/execute as <entity> run function boomber:teleporation_api/micro_tp`

\*Due to different calculation method, Micro teleportation will take more processing power than normal teleportation. It is not recommended to use micro teleportation if normal teleportation can be use instead.