### 100 TICK FUNCTION FILE (LOOPS EVERY 200 ticks - 10 sec) ###

######################### Scoreboards ####################################

### Heal mana up
scoreboard players add @a[scores={mana=..99}] mana 1

### Ruby generator (for testing)
# summon item -146 74 -172 {Item:{id:"minecraft:emerald",Count:3b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"red","text":"Ruby"}'}}}}
# fill -146 73 -172 -146 73 -172 minecraft:quartz_bricks

execute as @e[type=minecraft:item_frame] run tag @s add deco
execute as @e[type=minecraft:armor_stand] run tag @s add deco
execute as @e[type=minecraft:minecart] run tag @s add deco
execute as @e[type=minecraft:chest_minecart] run tag @s add deco
execute as @e[type=minecraft:furnace_minecart] run tag @s add deco
execute as @e[type=minecraft:tnt_minecart] run tag @s add deco
execute as @e[type=minecraft:painting] run tag @s add deco

schedule function fallen_world:loop200t 200t
