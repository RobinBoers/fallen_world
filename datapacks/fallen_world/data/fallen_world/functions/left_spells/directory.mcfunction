### Select subcategory when casting spell (runs at as player) ###

scoreboard players set @s attackCooldown 0
scoreboard players set @s usedLeftWand 0

execute if entity @s[gamemode=!creative,gamemode=!spectator,scores={mana=1..}] run scoreboard players remove @s mana 1
execute if entity @s[scores={mana=..0}] run tellraw @s "§cNot enough mana"

execute store result score @s element run data get entity @s SelectedItem.tag.element
execute store result score @s spellId run data get entity @s SelectedItem.tag.spellId

execute if entity @s[scores={mana=1..}] run execute if score @s element matches 1 run function fallen_world:left_spells/fire/directory
execute if entity @s[scores={mana=1..}] run execute if score @s element matches 2 run function fallen_world:left_spells/ice/directory
execute if entity @s[scores={mana=1..}] run execute if score @s element matches 3 run function fallen_world:left_spells/air/directory