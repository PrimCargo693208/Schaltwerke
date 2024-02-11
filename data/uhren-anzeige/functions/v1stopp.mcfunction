# Das Punkte-Ziel wird gelöscht.
scoreboard objectives remove PZUhrA.1Ziffer

# An der Position aller Ziffern wird der Bereich durch Luft ersetzt.
execute at @e[type=minecraft:marker,tag=EtiUhrA.1Alle] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:quartz_block
execute at @e[type=minecraft:marker,tag=EtiUhrA.1Alle] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:quartz_stairs
execute at @e[type=minecraft:marker,tag=EtiUhrA.1Alle] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:quartz_slab

# Alle Spieler bekommen den Rüstungsständer aus dem Inventar entfernt
clear @a minecraft:armor_stand{EigUhrA.1Alle:true}

# Rüstungsständer die gedroppt wurden erhalten ein Etikett und alle Objekte mit dem Etikett werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigUhrA.1Alle:true} } }] add EtiUhrA.1Alle
kill @e[tag=EtiUhrA.1Alle]
