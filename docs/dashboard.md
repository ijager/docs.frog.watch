
# Projectstructuur

Trillingsmetingen via Frogwatch worden gedaan vanuit de context van een project.
Projecten zijn ingedeeld in *clusters* die elk hun eigen instellingen hebben.
Meetpunten bestaan binnen een cluster, vaak representeren die een fysieke locatie waar gemeten moet worden.

Vervolgens wordt er een Frogwatch Meter in het meetpunt geplaatst om de trillingsdata te verzamelen. Dit is heel flexibel, want de data hoort bij het meetpunt, niet bij de meter. Dus je kunt de meter in een meetpunt zonder problemen vervangen.

![ProjectStructuur](/img/ProjectStructuur.png).


# Trillingsnormen instellen

Via Frogwatch Dashboard kunnen trillingsnormen flexibel gedefinieerd worden.  Op deze manier kun je heel gemakkelijk meten via verschillende normen. Op dit moment wordt er onderscheid gemaakt tussen Schadenormen en Hindernormen.  Schadenormen kunnen zowel in het acceleratiedomein als in het snelheidsdomein gedefinieerd worden zodat SBR A en SBR C beide zijn ondersteund.
Met hindernormen wordt volgens de SBR B richtlijn gemeten.

## Schadenormen (SBR A en SBR C)



### Norm Definiëren

Ga naar het hoofdmenu item `Normen` en klik op `Schadenormen`. Hier wordt een lijst getoond van alle normen die aangemaakt zijn. Klik boven aan de lijst op `+ NIEUWE NORM`.
Doormiddel van Frequentie - Acceleratie/snelheids paren wordt de norm gedefinieerd.
Kies het type norm: `snelheid` of `acceleratie`. Voeg vervolgens een aantal datapunten toe die samen door middel van interpolatie een norm vormen.
Kies een unieke naam voor de norm en klik op `OPSLAAN`. De Norm verschijnt nu in de lijst.

![SBR A Norm](/img/norm.png).


## Hindernormen (SBR B)

Een Hindernorm bestaat, zoals de SBR B richtlijn omschrijft uit 6 waardes. Drie waardes voor de *dag* en *avond* periode. En 3 waardes voor de *nacht* periode.

### Norm Definiëren
Ga naar het hoofdmenu item `Normen` en klik op `Hindernormen`. Hier wordt een lijst getoond van alle normen die aangemaakt zijn. Klik boven aan de lijst op `+ NIEUWE NORM`.
Er verschijnt een popup met 7 invoer velden. De waardes A1, A2 en A3 voor zowel de dag/avond en de nacht periode, en 1 veld voor de unieke naam van de norm.

 ![SBR B Norm](/img/norm_b.png)

# Meetconfiguratie

Per cluster kan er een meetconfiguratie worden ingesteld. In de configuratie kan bepaald worden

* Wanneer er gemeten wordt: op welke dagen en tussen welke tijdstippen
* Hoe er gemeten wordt: Volgens welke methode, in welke eenheid
* Hoe wordt de meting getoetst: Wordt er een norm gebruikt, en welke?

## Meetperiode

Er kan ingesteld worden op welke dagen van de week er gemeten wordt en vervolgens tussen welke tijdstippen op die dagen de meetpunten actief zijn. Buiten deze periode zijn de meters in stroombesparingsstand. Dat wil zeggen dat ze alleen af en toe verbinding maken met het Frogwatch Dashboard om te checken of er nieuwe instellingen zijn.

## Meetmethode

Op dit moment worden er 4 meetmethodes ondersteund:

1. **Schademeting Snelheid (SBR A/C).** Meten met een schadenorm in het snelheidsdomein werkt volgens de SBR A richtlijn. Dat wil zeggen dat er elke seconde één datapunt per as (x, y en z richting) wordt uitgerekend. Een datapunt bestaat uit de dominante frequentie en de bijbehorende topwaarde (snelheid of acceleratie) over een window van 1 seconde. De dominante frequentie wordt bepaald aan de hand van de norm. De norm is gedefinieerd over het bereik van 1 - 100 Hz. De frequentie met de meeste energie ten op zichte van de norm is de dominante frequentie (dit wordt bepaald via een Fast Fourier Transformatie). De topwaarde wordt bepaald in het tijdsdomein. Voor meer informatie zie de officiële documentatie over de SBR A en C richtlijnen. Ook kan er zonder norm gemeten worden. Dat wil zeggen dat de frequenties niet gewogen worden en dat er geen normoverschrijdingen kunnen plaatsvinden.
2. **Schademeting Acceleratie (SBR C).** In deze methode wordt er gemeten in het acceleratiedomein, verder is deze methode equivalent aan *Schademeting Snelheid*. Deze mode is geschikt voor SBR C-acceleratie normen.
3. **Hindermeting (SBR B).** Deze methode gaat volgens de SBR B richtlijn. Dat wil zeggen dat er elke 30 seconde een datapunt wordt uitgerekend waar een Vmax uit volgt. Dit is een dimensieloos  getal gerelateerd aan de trillingssnelheid (Een effectieve waarde gemiddeld over 30 seconde). Deze methode is dus te gebruiken met SBR B normen en ook zonder norm.
4. **Kalibratie.** Kies deze meetmethode als uw meters gekalibreerd moeten worden. Dit zorgt automatisch voor de juiste meetinstellingen. Ook wordt in deze methode de trillingsdata niet verstuurd naar het Frogwatch Dashboard om de kalibratie sneller te laten verlopen.



# Statusoverzicht Meters

# Trillingsdata inzien