scoreboard objectives add zahlenrechner dummy
data merge storage zahlenrechner:daten {zahl1: 0, zahl2: 0, operator: "", ergebnis: 0}

scoreboard players set .zahl1 zahlenrechner 0
scoreboard players set .zahl2 zahlenrechner 0
scoreboard players set .operator zahlenrechner 0

scoreboard objectives setdisplay sidebar zahlenrechner
# data multiscoreboard toggle storage zahlenrechner:daten

# Konstanten erstellen
scoreboard players set #2 zahlenrechner 2
scoreboard players set #100 zahlenrechner 100
scoreboard players set #10000 zahlenrechner 10000