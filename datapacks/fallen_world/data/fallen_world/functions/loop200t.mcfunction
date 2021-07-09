### 100 TICK FUNCTION FILE (LOOPS EVERY 200 ticks - 10 sec) ###

######################### Scoreboards ####################################

### Load up mana
scoreboard players add @a[scores={mana=..99}] mana 1

execute as @e[type=minecraft:item_frame] run tag @s add deco
execute as @e[type=minecraft:armor_stand] run tag @s add deco
execute as @e[type=minecraft:minecart] run tag @s add deco
execute as @e[type=minecraft:chest_minecart] run tag @s add deco
execute as @e[type=minecraft:furnace_minecart] run tag @s add deco
execute as @e[type=minecraft:tnt_minecart] run tag @s add deco
execute as @e[type=minecraft:painting] run tag @s add deco

schedule function fallen_world:loop200t 200t
