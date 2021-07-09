recipe take @s fallen_world_tools:iron_hammer

advancement revoke @s only fallen_world_utility:iron_hammer

clear @s minecraft:knowledge_book

give @s iron_axe{HideFlags:63,CustomModelData:3,display:{Name:'{"text":"Iron Hammer","color":"white","italic":false}'}}

scoreboard players add @s xp 2

execute if entity @s[scores={xpNotify=1}] run tellraw @s {"text":"+2XP","color":"blue"}