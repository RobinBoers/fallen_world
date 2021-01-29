## Rotate NPC's
# NPC's always look at the nearest player
execute as @e[tag=npc] at @s rotated as @p run tp @s ~ ~ ~ facing entity @p

## No Zombie NPC's
# This killes the zombies when trying to kill a NPC
execute as @e[tag=npc] at @s run kill @e[type=zombie,distance=0..2]