### When killing a Spider (runs as player who killed him)

# title @s title "Killed Spider"
advancement revoke @s only fallen_world_utility:kill_spider
scoreboard players add @s xp 1
execute if entity @s[scores={xpNotify=1}] run tellraw @s {"text":"+1XP","color":"blue"}