# Ramdomizer
This module is all about generating random number!  

## Conventions
1) this datapack have only one scoreboard objective called "bb.variable" if you see anything about scoreboard you can always assume we're talking about this objective  
2) selector will always have "#" symbol infront of their name and you can somewhat guess what it does from just reading the name itself.

## Random number generator
Simply run "/function boomber:randomizer/random" This will generate random number with default setting which is random number between 0 - 10.  
You can also run /function boomber:randomizer/random/[0-99, 0-100, custom] to generate random number with different range, the first two are exactly what the name state generate random number between 0-99 and 0-100 but custom allow you to generate number between any range you want.  

[Input] to tell /function boomber:randomizer/random/custom the range you want your random number to be  
\- #boomber.randomizer.random_1.input.min : min range of random number  
usage: `/scoreboard players set #boomber.randomizer.random_1.input.min bb.variable <n>`  
\- #boomber.randomizer.random_1.input.max : max range of random number  
usage: `/scoreboard players set #boomber.randomizer.random_1.input.max bb.variable <n>`  

note: max input should always be (max range + 1) because some math stuff and totally not because I'm too lazy to add another command line.

## Retrieving generated number
  "#boomber.randomizer.result" is where all the generated number will be and then you can just run `/scoreboard players get #boomber.randomizer.result bb.variable` to get that generated number
