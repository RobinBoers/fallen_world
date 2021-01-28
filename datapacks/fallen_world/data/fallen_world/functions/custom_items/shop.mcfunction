#@@@@@@@@@ Shop System @@@@@@@@@# 

### Error message if not enough money
execute as @a[scores={buyItem=2,rubys=..1}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={buyItem=3,rubys=..12}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={buyItem=4,rubys=..6}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={buyItem=5,rubys=..2}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={buyItem=6,rubys=..7}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={buyItem=7,rubys=..17}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={buyItem=8,rubys=..11}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={buyItem=9,rubys=..5}] run tellraw @s "§cNot enough Rubys!"

### Sell item
execute as @a[scores={buyItem=2,rubys=2..}] run give @s bread 10
execute as @a[scores={buyItem=2,rubys=2..}] run tellraw @s "§6You have bought 10x \uE008"
execute as @a[scores={buyItem=2,rubys=2..}] run scoreboard players remove @s rubys 2

execute as @a[scores={buyItem=3,rubys=13..}] run give @s diamond_axe{HideFlags:63,CustomModelData:3,display:{Name:'{"text":"Diamond Hammer","color":"white","italic":false}',Lore:['{"text":"RARE","color":"red","italic":false,"bold":true}']}}
execute as @a[scores={buyItem=3,rubys=13..}] run tellraw @s "§6You have bought a §r§f\uE009"
execute as @a[scores={buyItem=3,rubys=13..}] run scoreboard players remove @s rubys 13

execute as @a[scores={buyItem=4,rubys=7..}] run give @s iron_axe{HideFlags:63,CustomModelData:3,display:{Name:'{"text":"Iron Hammer","color":"white","italic":false}',Lore:['{"text":"UNCOMMON","color":"green","italic":false,"bold":true}']}}
execute as @a[scores={buyItem=4,rubys=7..}] run tellraw @s "§6You have bought a §r§f\uE010"
execute as @a[scores={buyItem=4,rubys=7..}] run scoreboard players remove @s rubys 7

execute as @a[scores={buyItem=5,rubys=3..}] run give @s shield
execute as @a[scores={buyItem=5,rubys=3..}] run tellraw @s "§6You have bought a §r§f\uE011"
execute as @a[scores={buyItem=5,rubys=3..}] run scoreboard players remove @s rubys 3

# execute as @a[scores={buyItem=6,rubys=8..}] run give @s iron_helmet
# execute as @a[scores={buyItem=6,rubys=8..}] run tellraw @s "§6You have bought a §r§f\uE012"
# execute as @a[scores={buyItem=6,rubys=8..}] run scoreboard players remove @s rubys 8

execute as @a[scores={buyItem=7,rubys=18..}] run give @s iron_chestplate{HideFlags:63,display:{Lore:['{"text":"COMMON","color":"blue","bold":true,"italic":false}']},Defence:20,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1856666637,-773110938,-1867528201,-1263890947]}]}
execute as @a[scores={buyItem=7,rubys=18..}] run tellraw @s "§6You have bought a §r§f\uE013"
execute as @a[scores={buyItem=7,rubys=18..}] run scoreboard players remove @s rubys 18

execute as @a[scores={buyItem=8,rubys=12..}] run give @s iron_leggings{HideFlags:63,display:{Lore:['{"text":"COMMON","color":"blue","bold":true,"italic":false}']},Defence:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;599569685,-687520369,-1428913925,-1334145838]}]}
execute as @a[scores={buyItem=8,rubys=12..}] run tellraw @s "§6You have bought a §r§f\uE014"
execute as @a[scores={buyItem=8,rubys=12..}] run scoreboard players remove @s rubys 12

execute as @a[scores={buyItem=9,rubys=6..}] run give @s iron_boots{HideFlags:63,display:{Lore:['{"text":"COMMON","color":"blue","bold":true,"italic":false}']},Defence:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1749167715,-1018868671,-1438607478,-1730781502]}]}
execute as @a[scores={buyItem=9,rubys=6..}] run tellraw @s "§6You have bought a §r§f\uE015"
execute as @a[scores={buyItem=9,rubys=6..}] run scoreboard players remove @s rubys 6

### Reset score
execute as @a[scores={buyItem=1..}] run scoreboard players set @s buyItem 0