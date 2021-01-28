recipe take @s fallen_world_tools:diamond_hammer

advancement revoke @s only fallen_world_utility:diamond_hammer

clear @s minecraft:knowledge_book

give @s diamond_axe{HideFlags:63,CustomModelData:3,display:{Name:'{"text":"Diamond Hammer","color":"white","italic":false}',Lore:['{"text":"RARE","color":"red","italic":false,"bold":true}']}}

scoreboard players add @s xp 3
execute if entity @s[scores={xpNotify=1}] run tellraw @s {"text":"+3XP","color":"blue"}