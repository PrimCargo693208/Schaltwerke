# Abhängig um welchen Ziffern-Marker es sich hierbei handelt (Etikett) werden die Stunden, Minuten oder Sekunden als Argumente in den jeweiligen Befehl übergeben.
$execute if entity @s[tag=EtiUhrAnz.1Stunden] run scoreboard players set VarUhrAnz.1Ziffer PZUhrAnz.1Wert $(Stunden)
$execute if entity @s[tag=EtiUhrAnz.1Minuten] run scoreboard players set VarUhrAnz.1Ziffer PZUhrAnz.1Wert $(Minuten)
$execute if entity @s[tag=EtiUhrAnz.1Sekunden] run scoreboard players set VarUhrAnz.1Ziffer PZUhrAnz.1Wert $(Sekunden)

# Um von einer Zahl nur die Zehner-Stelle zu erhalten wird geteilt durch zehn gerechnet.
execute if entity @s[tag=EtiUhrAnz.1Zehner] run scoreboard players operation VarUhrAnz.1Ziffer PZUhrAnz.1Wert /= KonstUhrAnz.1ZEHN PZUhrAnz.1Wert

# Um von einer Zahl nur die Einer-Stelle zu erhalten wird modulo zehn gerechnet.
execute if entity @s[tag=!EtiUhrAnz.1Zehner] run scoreboard players operation VarUhrAnz.1Ziffer PZUhrAnz.1Wert %= KonstUhrAnz.1ZEHN PZUhrAnz.1Wert

# Die ausgerechnete Ziffer wird in den Datenspeicher geschrieben.
execute store result storage uhren-anzeige:v1daten "EigUhrAnz.1Argumente".Ziffer int 1 run scoreboard players get VarUhrAnz.1Ziffer PZUhrAnz.1Wert

# Die Ziffern-Funktion wird mit dem Datenspeicher-Argumenten aufgerufen.
function uhren-anzeige:v1ziffer with storage uhren-anzeige:v1daten "EigUhrAnz.1Argumente"
