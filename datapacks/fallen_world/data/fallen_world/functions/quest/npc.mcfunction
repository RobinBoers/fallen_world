## Rotate NPC's
execute as @e[tag=npc] at @s rotated as @p run tp @s ~ ~ ~ facing entity @p

## No Zombie NPC's
execute as @e[tag=npc] at @s run kill @e[type=zombie,distance=0..2]