# Das Punkte-Ziel für das Zählen der Uhrzeit wird erstellt.
scoreboard objectives add PZUhrAnz.1Wert dummy ["Uhren-Anzeige.1: ",{"text":"Zeit der Uhr","bold":true}]

# Eine Konstante mit dem Wert 10.
scoreboard players set KonstUhrAnz.1ZEHN PZUhrAnz.1Wert 10

# Datenspeicher wird mit Eigenschaften angelegt.
data merge storage uhren-anzeige:v1daten {EigUhrAnz.1Uhrzeit:""}

# Allen Spielern im Umkreis von 25 Metern wird ein Rüstungsständer ins Inventar gelegt, mit dem man die Uhren-Anzeige platzieren kann.
give @a[distance=..25] minecraft:armor_stand[minecraft:entity_data={Invisible:true,NoGravity:true,Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Erstellen"],id:"minecraft:armor_stand"},minecraft:lore=['"Platziere den Rüstungsständer"','"um eine Uhr"','"erscheinen zu lassen"'],minecraft:custom_name='{"text":"Uhren-Anzeige","bold":true}',minecraft:custom_data={EigUhrAnz.1Alle:true},minecraft:enchantment_glint_override=true]

# Markierer, der an der Position des Wiederhol-Befehlsblock erzeugt wird.
summon minecraft:marker ~-1 ~ ~ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Sensor"]}

# Der Chunk wird aktiv gehalten, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~

# Die Sensor-Funktion wird aufgerufen, welche für das Erhalten der Uhrzeit zuständig ist.
schedule function uhren-anzeige:v1sensor 1t replace
