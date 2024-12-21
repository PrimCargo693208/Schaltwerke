# Das Punkte-Ziel wird gelöscht.
scoreboard objectives remove PZUhrAnz.1Wert

# Die Eigenschaften des Datenspeichers werden entfernt.
data remove storage uhren-anzeige:v1daten "EigUhrAnz.1Uhrzeit"
data remove storage uhren-anzeige:v1daten "EigUhrAnz.1Argumente"

# An der Position aller Uhrzeit-Symbolen wird der Bereich durch Luft ersetzt.
execute at @e[type=minecraft:marker,tag=EtiUhrAnz.1Alle] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:quartz_block
execute at @e[type=minecraft:marker,tag=EtiUhrAnz.1Alle] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:quartz_stairs
execute at @e[type=minecraft:marker,tag=EtiUhrAnz.1Alle] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:quartz_slab

# Alle Spieler bekommen den Rüstungsständer aus dem Inventar entfernt
clear @a minecraft:armor_stand[minecraft:custom_data~{EigUhrAnz.1Alle:true}]

# Rüstungsständer die gedroppt wurden alle Objekte mit dem Etikett werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigUhrAnz.1Alle:true}] run kill @s
kill @e[tag=EtiUhrAnz.1Alle]

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~

# Die Plan-Funktion wird gestoppt.
schedule clear uhren-anzeige:v1sensor
