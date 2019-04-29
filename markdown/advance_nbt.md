# Advanced NBT 
This module is all about manipulating nbt.

## Conventions
There are many things in this module that take up big space and can sometime look ugly so I'll just put it here instead.
1) anything that start with "#" will mostly be something to do with scoreboard of bb.variable objective.  
i.e. `#bb.nbt.something1 + #bb.nbt.something2 => scoreboard players operation #bb.nbt.something1 bb.variable += #bb.nbt.something2 bb.variable`  
2) `<@e[...]> path.to.nbt.data` this is definitely not a correct syntax for command but it can convey what's going easily, for example `<@e[tag=boomber.utils.memory]> ArmorItems[3].tag.ucit.boomber` mean I want nbt data at "ArmorItems[3].tag.ucit.boomber" of entity @e[tag=boomber.utils.memory]  
3) `<T> <NBT Path>`, i.e. `Array path.to.array` this mean nbt data at "path.to.array" must be array.

## Memory
This module required entity <@e[tag=boomber.utils.memory]> to operate, this entity should already be handled by Boomber's Utility itself so all you need to do is referring to this entity when it's required but if somehow the entity is gone from the world calling `/function boomber:utils/reset_memory` will respawn the entity but keep in mind that any data that you store inside will be removed.

## Input
This can be anything that you need this module to do, Each function will also specify what to put in this field.  
General Location: `<@e[tag=boomber.utils.memory]> ArmorItems[3].tag.ucit.boomber.nbt.input`

## Output
Pretty self-explanatory...  
Location: `<@e[tag=boomber.utils.memory]> ArmorItems[3].tag.ucit.boomber.nbt.output`

# Function
Now it's time to get into actual features!
1) **Index** : get an element in array! [`/function boomber:advanced_nbt/array/index`]  
 \- `Entity <@e[tag=boomber.utils.memory]>`  
 \- `Array ArmorItems[3].tag.ucit.boomber.nbt.input` : a copy of targeted array  
 \- `Scoreboard #bb.nbt.input.index` : a targeted index (0 -> first element of array)
2) **Insert** : insert an element into array! [`/function boomber:advanced_nbt/array/insert`]  
 \- `Entity <@e[tag=boomber.utils.memory]>`  
 \- `Array ArmorItems[3].tag.ucit.boomber.nbt.input[0]` : a copy of targeted array  
 \- `Any ArmorItems[3].tag.ucit.boomber.nbt.input[1][0]` : an element that you want to insert into array  
(Look like this in nbt format -> `{..., nbt:{ input: [ array, [element]] }, ...}`)  
 \- `Scoreboard #bb.nbt.input.index` : an index of where you want to insert an element  
3) **Reallocate** : resize an array! [`/function boomber:advanced_nbt/array/realloc`]
 \- `Entity <@e[tag=boomber.utils.memory]>`  
 \- `Array ArmorItems[3].tag.ucit.boomber.nbt.input` : a copy of targeted array  
 \- `Scorebaord #bb.nbt.input.size` : new size of targeted array (will do nothing if less than current array)  
4) **Set** : replace an element in array [`/function boomber:advanced_nbt/array/set`]
 \- `Entity <@e[tag=boomber.utils.memory]>`  
 \- `Array ArmorItems[3].tag.ucit.boomber.nbt.input[0]` : a copy of targeted array  
 \- `Any ArmorItems[3].tag.ucit.boomber.nbt.input[1][0]` : an element that you want to replace into array (Similar to 2: Insert )  
 \- `Scoreboard #bb.nbt.input.index` : an index of where you want to replace an element