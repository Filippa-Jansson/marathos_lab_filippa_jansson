# marathos_lab_filippa_jansson

Välkommen till min Marathos Lab

Bronze layer: 
Här ingestar jag datan till bronze så att man kan inte ändra något från orginalet. Jag gjorde också lite EDA men har kunnat gjort det i silver layer.

Silver layer: 
I silver layern så gör jag EDA från transformations/bronze/marathon_results_raw csv filen. Man kan se i explorations/eda_silver vad jag har kollat som behöver fixas på datan samt skapat ny kolumner. Jag har också skapat en obt fil i transformations/silver/marathos_obt.py Där jag gör rent av det jag kollade upp i min EDA.

Gold layer:
Här har jag skapat sql och mart filer från min silver layer data som jag kommer använda till min dashboard och genie. Jag valde top_countries och mart_event_summary som mart för min dashboard för att jag tänkte det kunda vara intressant till min dashboard. 

Övriga kommentarer:
Jag kunde ha gjort en bättre eda_silver, det fanns en hel del data som behövde renas men jag hade svårt vad jag skulle prioritera. Man hittade alltid något litet fel här och där och sen blir man bara överväldigad. Jag hade svårt med mart för att det var en del att göra, ibland så funkade inte så jag var tvungen att göra om (alltså drop i cleanup.sql) och komma tillbaka till pipelinen. "Det här blir enkelt" trodde man. Annars så var dashboarden lätthanterligt men jag är inte helt nöjd med mina mart, kunde ha gjort bättre data för att få till en snyggare dashboard. Det finns en hel del som behöver förbättras som att göra mer "clean" med mina filer och mappar, men jag förstår principen i det hela. 