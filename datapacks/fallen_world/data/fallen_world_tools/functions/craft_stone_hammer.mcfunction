recipe take @s fallen_world_tools:stone_hammer

advancement revoke @s only fallen_world_utility:stone_hammer

clear @s minecraft:knowledge_book

give @s stone_axe{HideFlags:63,CustomModelData:3,display:{Name:'{"text":"Stone Hammer","color":"white","italic":false}'}}

scoreboard players add @s xp 2

execute if entity @s[scores={xpNotify=1}] run tellraw @s {"text":"+1XP","color":"blue"}

