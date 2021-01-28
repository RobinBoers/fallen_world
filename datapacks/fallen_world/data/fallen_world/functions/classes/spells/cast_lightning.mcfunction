### Cast lightning spell (runs as at player casting the spell)

execute as @a[scores={clickStick=1..,mana=1..}] run tag @s add castingSpell

execute if entity @e[distance=0..7,tag=!castingSpell,type=!villager,tag=!Guard,tag=!armorDisplay,tag=!deco,tag=!npc] run tag @s add usingMana
execute at @e[distance=0..7,tag=!castingSpell,type=!villager,tag=!Guard,tag=!armorDisplay,tag=!deco,tag=!npc] run summon lightning_bolt

### Old command:

# execute as @a[scores={Classes=2,clickStick=1..,mana=1..},nbt={Inventory:[{Slot:9b,id:"minecraft:enchanted_book",tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic:1b}}}] at @s anchored eyes run summon lightning_bolt ^ ^-1 ^15
