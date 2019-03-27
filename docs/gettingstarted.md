
# De Frogwatch Meter


<div style="max-width: 250px">
<img src="../img/frogwatch-meter.png" alt="Frogwatch Meter"/>
</div>

De Frogwatch Meter komt standard met de volgende accessoires:


<div style="display: flex; flex-flow: row wrap; justify-content: space-around">

<div style="flex: 0 1 250px">
<img src="../img/batterypack1.png" alt="Frogwatch Battery Pack" title="Frogwatch Battery Pack"/>
</div>
<div style="flex: 0 1 250px">
<img src="../img/voedingsadapter2.jpg" alt="Frogwatch Voedings Adapter" title="Frogwatch Voedings Adapter"/>
</div>
</div>

* Battery Pack: 8.4V rechargable lithium-ion battery


Wanneer je voor de eerste keer een Frogwatch Meter besteld wordt er een account voor je aangemaakt op [Frogwatch Dashboard](#todo).

![dashboard](../img/dashboard1.png)

Je ontvangt een email met een link om je wachtwoord in te stellen.

## Frogwatch Meter aanzetten

1. Log in op Frogwatch Dashboard en klik in het hoofdmenu op Meters voor een overzicht van alle meters binnen uw organisatie.
2. Open de deksel van de meter en sluit de batterij aan.
3. De rode LED gaat aan en de groene LED knippert een aantal keer tijdens het opstarten.
4. Op het dashboard springt de status van de Meter op `opstarten`.
![dashboard](../img/opstarten.png)
4. Vervolgens na ongeveer 15 seconde gaan de LEDs om en om knipperen. Dit betekent dat de meter verbinding zoekt met de server en eventuele data uitwisselt.
5. Zodra de lampjes uitgaan is de sensor opgestart, gesynchroniseerd en klaar voor gebruik. Dit duurt circa 0.5 - 3 minuten, afhankelijk van hoeveel data er uit te wisselen is met de server.
6. De status van het systeem staat nu op `geen config`. Dit betekent dat de meter nog niet is geconfigureerd met meetinstellingen.
![dashboard](../img/opstarten.png)

## Frogwatch configureren


1. Maak een nieuw project aan

![dashboard](../img/nieuwproject.png)

2. Voeg binnen het project een nieuw cluster toe, met een nieuw meetpunt en kies de Meter voor Meetpunt 1.

![dashboard](../img/cluster.png)

3. Klik op het link symbool om de sensor ook daadwerkelijk te koppelen aan dit cluster/meetpunt.

![dashboard](../img/sensorlink.png)

4. Vervolgens stellen we de meetconfiguratie in onder het `Configuratie` menu.
5. Klik op Cluster 1.
6. Klik op `CONTINU METEN` en kies onder Meetmethode voor `Schademeting Snelheid (SBR A/C)` en klik op `OPSLAAN`.

![dashboard](../img/configuratie.png)

7. Klik 2 keer op de knop op de Meter zodat de meter meteen contact zoekt met de server. Zodra deze de nieuwe configuratie ontvangen heeft wordt de status `gestopt`.

![dashboard](../img/statusstop.png)

8. Start de meting door 2 keer op de knop te klikken. De eerste klik activeert het menu en laat de huidige status zien (rood = gestopt). De tweede keer drukken start de meting (groen knipperend). Je kunt de meter ook starten via de start knop in het status overzicht op Frogwatch Dashboard. Hierna zal de status groen `actief` aangeven.

![dashboard](../img/statusactief.png)

