### 100 TICK FUNCTION FILE (LOOPS EVERY 200 ticks - 10 sec) ###

######################### Scoreboards ####################################

### Bank door
# fill -144 77 -159 -144 74 -162 minecraft:netherite_block
# fill -144 77 -159 -144 74 -162 minecraft:stripped_dark_oak_log
# setblock -143 75 -160 tripwire_hook[facing=east] replace
# setblock -143 75 -161 tripwire_hook[facing=east] replace

schedule function fallen_world:loop60t 60t


### Anti-Cheat (illegal items)
clear @a[gamemode=!creative] tnt
clear @a[gamemode=!creative] bedrock
clear @a[gamemode=!creative] barrier
clear @a[gamemode=!creative] command_block
clear @a[gamemode=!creative] repeating_command_block
clear @a[gamemode=!creative] chain_command_block
clear @a[gamemode=!creative] structure_block
clear @a[gamemode=!creative] structure_void
