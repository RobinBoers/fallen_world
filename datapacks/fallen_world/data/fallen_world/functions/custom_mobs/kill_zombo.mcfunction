### When killing a Zombo (runs as player who killed him)

# title @s title "Killed Zombo"
advancement revoke @s only fallen_world_utility:kill_zombo
scoreboard players add @s xp 2
execute if entity @s[scores={xpNotify=1}] run tellraw @s {"text":"+2XP","color":"blue"}