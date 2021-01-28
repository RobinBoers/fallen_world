### Levelup runs when someone has enough xp to level up (runs as player leveling up) ###

execute as @a[scores={Levels=1}] run scoreboard players remove @s xp 10
execute as @a[scores={Levels=2}] run scoreboard players remove @s xp 15
execute as @a[scores={Levels=3}] run scoreboard players remove @s xp 25
execute as @a[scores={Levels=4}] run scoreboard players remove @s xp 40
execute as @a[scores={Levels=5}] run scoreboard players remove @s xp 45
execute as @a[scores={Levels=6..}] run scoreboard players remove @s xp 60

scoreboard players add @s Levels 1

title @s title {"text":"Level up!","color":"green"}
title @s subtitle ["",{"text":"You are now Level ","color":"gold"},{"score":{"name":"@s","objective":"Levels"},"color":"gold"}]

execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~