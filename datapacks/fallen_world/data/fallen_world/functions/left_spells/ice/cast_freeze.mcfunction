tellraw @s "§6You cast freeze"

tag @s add castFreeze
effect give @e[distance=0..2,tag=!castFreeze,tag=hurt] minecraft:slowness 3 255
tag @s remove castFreeze