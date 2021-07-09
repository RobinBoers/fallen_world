### Cloud_Wolf Entity Launcher ###
# Notes: You can remove the scoreboard creators
# if you aren't afraid of having excess scoreboards
# Make sure that you orient the entity in the direction you want it to face,
# YES that means this can launch zombies with a lunge attack (funny application)
###################################

scoreboard objectives add g_vec dummy

execute store result score %x g_vec run data get entity @s Pos[0] 1000
execute store result score %y g_vec run data get entity @s Pos[1] 1000
execute store result score %z g_vec run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute store result score %dx g_vec run data get entity @s Pos[0] 1000
execute store result score %dy g_vec run data get entity @s Pos[1] 1000
execute store result score %dz g_vec run data get entity @s Pos[2] 1000

scoreboard players operation %dx g_vec -= %x g_vec
scoreboard players operation %dy g_vec -= %y g_vec
scoreboard players operation %dz g_vec -= %z g_vec

execute store result entity @s Motion[0] double 0.002 run scoreboard players get %dx g_vec
execute store result entity @s Motion[1] double 0.002 run scoreboard players get %dy g_vec
execute store result entity @s Motion[2] double 0.002 run scoreboard players get %dz g_vec

scoreboard objectives remove g_vec

tag @s remove launch