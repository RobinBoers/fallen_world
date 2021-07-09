### If a player dies (runs as player at player)

playsound minecraft:entity.player.death player @s
title @s title {"text":"You Died!","color":"red"}
title @s subtitle {"text":"Respawning in 10 seconds...","color":"red"}
title @s actionbar ""
tellraw @a ["",{"text":"","color":"yellow","extra":[{"selector":"@p"}]},{"text":" died","color":"yellow"}]
gamemode spectator @s
tp @s ~ ~25 ~ facing ~ ~-25 ~
tag @s add dead