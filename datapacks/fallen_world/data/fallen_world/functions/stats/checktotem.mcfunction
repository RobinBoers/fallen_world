### If a player dies (runs as player at player) - checks for totem before dying

execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b,id:"minecraft:totem_of_undying"}]}] at @s run function fallen_world:stats/die
execute as @s if entity @s[nbt={Inventory:[{Slot:11b,id:"minecraft:totem_of_undying"}]}] at @s run function fallen_world:stats/undie
