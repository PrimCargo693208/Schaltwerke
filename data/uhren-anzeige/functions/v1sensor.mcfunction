# Aus dem stationären Wiederhol-Befehlsblock wird die Uhrzeit ausgelesen und in den Datenspeicher geschrieben.
execute at @e[type=minecraft:marker,tag=EtiUhrAnz.1Sensor,sort=nearest,limit=1] run data modify storage uhren-anzeige:v1daten "EigUhrAnz.1Uhrzeit" set string block ~ ~ ~ LastOutput 10 18

# Die Uhrzeit wird in separate Stunden-, Minuten- und Sekunden-Eigenschaften gespeichert um sie später in der Argument-Funktion verwenden zu können.
data modify storage uhren-anzeige:v1daten "EigUhrAnz.1Argumente".Stunden set string storage uhren-anzeige:v1daten "EigUhrAnz.1Uhrzeit" 0 2
data modify storage uhren-anzeige:v1daten "EigUhrAnz.1Argumente".Minuten set string storage uhren-anzeige:v1daten "EigUhrAnz.1Uhrzeit" 3 5
data modify storage uhren-anzeige:v1daten "EigUhrAnz.1Argumente".Sekunden set string storage uhren-anzeige:v1daten "EigUhrAnz.1Uhrzeit" 6 8

# Für jeden Ziffern-Markierer wird die Uhrzeit-Funktion aufgerufen.
execute as @e[type=minecraft:marker,tag=EtiUhrAnz.1Ziffer] at @s run function uhren-anzeige:v1uhrzeit with storage uhren-anzeige:v1daten "EigUhrAnz.1Argumente"

# Diese Funktion wird in einer Sekunde erneut aufgerufen.
schedule function uhren-anzeige:v1sensor 1s replace
