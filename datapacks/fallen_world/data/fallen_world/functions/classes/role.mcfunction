### Roles

execute as @a[team=admin] run scoreboard players set @s Classes 0

### Choose Warrior
execute as @a[scores={Classes=1}] run team join warrior @s
execute as @a[scores={Classes=1},tag=!gotPowerupW] run scoreboard players add @s bonusDefence 10
execute as @a[scores={Classes=1},tag=!gotPowerupW] run tag @s add gotPowerupW
execute as @a[scores={Classes=2..},tag=gotPowerupW] run scoreboard players remove @s bonusDdefence 10
execute as @a[scores={Classes=2..},tag=gotPowerupW] run tag @s remove gotPowerupW

### Choose Magician
execute as @a[scores={Classes=2}] run team join magician @s

### Choose Ranger
execute as @a[scores={Classes=3}] run team join ranger @s

### Choose Ninja
execute as @a[scores={Classes=4}] run team join ninja @s
