### When killing a Pirate (runs as player who killed him)

# title @s title "Killed Pirate"
advancement revoke @s only fallen_world_utility:kill_skullboy
scoreboard players add @s xp 5
execute if entity @s[scores={xpNotify=1}] run tellraw @s {"text":"+5XP","color":"blue"}