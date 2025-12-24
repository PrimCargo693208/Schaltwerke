# Falls der Rüstungsständer gerade platziert wurde, wird von diesem aus die Erstellen-Funktion gestartet.
execute as @e[type=minecraft:armor_stand,tag=EtiUhrAnz.1Erstellen] at @s run function uhren-anzeige:v1erstellen

# Jeden Tick wird die Tick-Variable um eins erhöht und wenn sie die 20 erreicht hat, wird die Uhrzeit-Funktion geladen.
scoreboard players add #VarUhrAnz.1Tick PZUhrAnz.1Wert 1
execute if score #VarUhrAnz.1Tick PZUhrAnz.1Wert matches 20.. run scoreboard players set #VarUhrAnz.1Tick PZUhrAnz.1Wert 0

# Jedesmal wenn die Sekunde neu beginnt, werden die Doppelpunkte platziert und nach einer halben Sekunde werden sie wieder entfernt um das Blinken zu erzeugen.
execute if score #VarUhrAnz.1Tick PZUhrAnz.1Wert matches 0..9 at @e[type=minecraft:marker,tag=EtiUhrAnz.1Punkte] run place template uhren-anzeige:v1doppelpunkte ~ ~ ~
execute if score #VarUhrAnz.1Tick PZUhrAnz.1Wert matches 10..19 at @e[type=minecraft:marker,tag=EtiUhrAnz.1Punkte] run fill ~ ~ ~ ~ ~3 ~ minecraft:air replace
