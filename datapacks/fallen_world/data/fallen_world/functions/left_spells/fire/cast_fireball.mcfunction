tellraw @s "§6You cast fireball"

gamerule mobGriefing false

execute positioned ~ ~1.35 ~ run summon fireball ^ ^ ^1 {Fire:1,ExplosionPower:2,life:70,Motion:[0.0,0.0,0.0],Tags:["launch"]}
execute as @e[tag=launch,limit=1,sort=nearest] at @s rotated as @p run function fallen_world:generic/launch