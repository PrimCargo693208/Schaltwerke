
# Ergebnis in Natürliche Zahl und Nachkommastellen zerlegen
scoreboard players operation .ergebnis_1 zahlenrechner = .ergebnis zahlenrechner
scoreboard players operation .ergebnis_1 zahlenrechner /= #100 zahlenrechner
scoreboard players operation .ergebnis_2 zahlenrechner = .ergebnis zahlenrechner
scoreboard players operation .ergebnis_2 zahlenrechner %= #100 zahlenrechner

# data modify storage zahlenrechner:daten ergebnis set value [{score: {name: ".ergebnis_1", objective: "zahlenrechner"}}, ",", {score: {name: ".ergebnis_2", objective: "zahlenrechner"}}]
# data modify storage zahlenrechner:daten ergebnis set from 