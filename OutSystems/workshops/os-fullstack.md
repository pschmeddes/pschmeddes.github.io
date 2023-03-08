# OutSystems Workshop voor Full Stack Developers

## Introductie van OutSystems

OutSystems is een low-code platform voor het ontwikkelen van web- en mobiele applicaties. Met OutSystems kunnen ontwikkelaars snel en eenvoudig applicaties bouwen zonder veel code te schrijven. Het platform heeft een visuele ontwikkelomgeving, een drag-and-drop-interface en een groot aantal voorgedefinieerde modules en sjablonen die kunnen worden aangepast aan de specifieke behoeften van de applicatie.

## Voordelen van OutSystems ten opzichte van full stack development

* Snellere ontwikkeling: Met OutSystems kunnen ontwikkelaars sneller applicaties bouwen. De drag-and-drop-interface en de voorgedefinieerde modules en sjablonen maken het mogelijk om snel prototypes te maken en functies toe te voegen zonder veel code te schrijven.

* Minder code: OutSystems maakt gebruik van low-code ontwikkeling, wat betekent dat ontwikkelaars minder code hoeven te schrijven om dezelfde functionaliteit te bereiken als bij traditionele full stack development. Dit leidt tot minder kans op fouten en snellere ontwikkeling.

* Eenvoudige integratie: OutSystems is ontworpen om gemakkelijk te integreren met andere systemen. Ontwikkelaars kunnen eenvoudig koppelingen maken met bestaande systemen, zoals databases en API's, zonder veel tijd te besteden aan het schrijven van code.

* Hogere kwaliteit: OutSystems biedt een platform met ingebouwde test- en validatiefuncties. Dit vermindert de kans op fouten en verhoogt de kwaliteit van de applicatie.

* Geen gevaar voor positie: OutSystems is geen bedreiging voor de positie van full stack ontwikkelaars. In plaats daarvan maakt het het werk van ontwikkelaars gemakkelijker en stelt het hen in staat zich te concentreren op complexere taken en uitdagingen.

## Workshop

In deze workshop leer je hoe je een voorbeeldapplicatie kunt bouwen met behulp van OutSystems en hoe je deze applicatie kunt integreren met een REST API.

Tijdens deze workshop zullen we de volgende stappen doorlopen om een eenvoudige applicatie te bouwen met OutSystems:

### Stap 1: Registratie en installatie

Om te beginnen, moeten de deelnemers zich registreren bij OutSystems en de software installeren.

Volg de stappen in deze [Setup Instructions](https://docs.google.com/presentation/d/1Dz1-CtfY7c8jxx07sO_RjN-MId_Hvy6ZnKm-gWpv0QA/edit?usp=share_link)

### Stap 2: Maak een nieuwe OutSystems applicatie aan

Maak een nieuwe OutSystems applicatie aan via de Service Studio en geef deze een gepaste naam.

### Stap 3: Maak een nieuw scherm aan

Maak een nieuw scherm aan binnen de OutSystems applicatie, waarop de todo-items zullen worden weergegeven.

### Stap 4: Voeg een REST integratie toe

Voeg een REST integratie toe aan de OutSystems applicatie, die zal communiceren met de ToDo API van JsonPlaceholder. Dit kan worden gedaan via de geïntegreerde integratiebuilder in OutSystems.

### Stap 5: Ontwerp de UI

Ontwerp de gebruikersinterface van het scherm om de todo-items weer te geven. Gebruik bijvoorbeeld een lijst of tabel om de items te tonen, met een knop om nieuwe items toe te voegen.

### Stap 6: Maak acties aan

Maak acties aan in OutSystems om de communicatie met de REST API af te handelen. Maak bijvoorbeeld een actie om een lijst met todo-items op te halen, en een andere actie om een nieuw item toe te voegen aan de lijst.

### Stap 7: Implementeer de acties

Implementeer de acties door ze te koppelen aan de gebruikersinterface-elementen van het scherm, zoals knoppen en selectievakjes.

### Stap 8: Configureer de REST integratie

Configureer de REST integratie zodat deze communiceert met de ToDo API van JsonPlaceholder. Gebruik hiervoor de volgende instellingen:

Endpoint: <https://jsonplaceholder.typicode.com/todos>
HTTP Methode: GET of POST (afhankelijk van de actie)
Response: JSON

### Stap 9: Publiceer de applicatie

Publiceer de OutSystems applicatie en test deze in een browser om te zien of de todo-items correct worden weergegeven en bijgewerkt.

Dit zijn de basisstappen voor het bouwen van een OutSystems applicatie die gebruik maakt van de ToDo API van JsonPlaceholder. Natuurlijk kan het ontwerp en de functionaliteit van de applicatie verder worden aangepast en uitgebreid naar wens.

### Test de API met Postman

* Open Postman en maak een nieuwe request aan.
* Stel de methode in op GET en voeg de URL van de ToDo API toe.
* Voeg eventuele query parameters toe (bijv. ?userId=1 om alleen taken voor een * bepaalde gebruiker op te halen).
* Voeg eventuele headers toe die vereist zijn voor de API (bijv. * Authorization-header voor toegang tot beveiligde endpoints).
* Druk op de "Send" knop om de request uit te voeren en de resultaten te zien.
* Hier is een voorbeeld van de response van de ToDo API:

```json
[
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  },
  {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
  },
  {
    "userId": 1,
    "id": 3,
    "title": "fugiat veniam minus",
    "completed": false
  }
]
