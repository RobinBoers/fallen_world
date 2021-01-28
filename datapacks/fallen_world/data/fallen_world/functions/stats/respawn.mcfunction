### If a player respawns (runs as player at player)

scoreboard players operation @s hp = @s max_hp
gamemode adventure @s
tp @s[tag=unlockedSpawn] -113 75 -175
tp @s[tag=!unlockedSpawn] 192 144 -349 91 20
effect clear @p
effect give @p minecraft:saturation 1 255
scoreboard players set @s mana 0

xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999

tag @s remove dead