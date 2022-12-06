# Herbouw Washy in OutSystems Sizing

## Introduction

Lavans heeft web applicatie Washy gebouwd met BettyBlocks en wil deze herbouwen met het OutSystems platform.
Dit document beschrijft de uit te voeren stappen en de omvang van het herbouwproject.

## Applicatie kenmerken

### Functies

todo

### Datamodel

Nu 90 entities

todo

### Overig

* Multi-tenant (Nederland, Duitsland)
* Customizable base product per tenant
* Multi-language (nl,de)

## Project plan

### Application Objects

Een Application Object (AO) is een meting van de complexiteit van de applicaties die u uitvoert op het OutSystems platform. Elk **scherm**, elke **entiteit/databasetabel** en elke **API-methode** in uw apps telt als 1 AO.

Meer informatie [Application Objects](https://success.outsystems.com/Support/Licensing/Application_Objects)

Inschatting benodigde AO's voor herbouw Washy:

| Object type | Aantal |
| ------------| ------ |
| Entity| 60 |
| Static entity / enumeration | 30 |
| Scherm | 120 |
| Email | 4 |
| Email Template | 1 |
| Consumed Service methods | 2 |
| **Total** | 217 |

todo

### Application architecture

* Todo

### Style guide architecture

* Theme development
* Screen templates
