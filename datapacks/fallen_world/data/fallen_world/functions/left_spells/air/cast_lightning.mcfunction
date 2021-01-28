tellraw @s "§6You cast lightning"

tag @s add castLightning
execute at @e[distance=0..30,tag=!castLightning,type=!armor_stand,tag=!armorDisplay,tag=!deco,tag=!npc,tag=hurt] run summon lightning_bolt
tag @s remove castLightning
