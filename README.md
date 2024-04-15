# Programmeren Specialisatie - cover all eindopdracht (versie 1.0)

Je vindt DDL voor je databank, inclusief inhoud, in Database/SIS2024/DbCreate.sql. Maak deze databank aan onder SQLServer (Docker Linux container versie).

Bij de implementatie van je oplossing werk je verder met:

- Visual Studio 2022
- Github Classroom: check zo regelmatig mogelijk in (elke dag wanneer je werkt)
- Docker Desktop
- .NET 8.0

Met EF Core scaffolding kan je code aanmaken onder het project Assignment.Infrastructure (zie de scaffolding opdracht in Database/SIS2024/Commands.txt).

Het startpunt bevat een paar voorbeeldklassen die verwijderd mogen worden:

- Apps/Assignment.WPF.App/DTO/CustomerDTO.cs
- Apps/Assignment.WPF.App/ViewModels/ConsoleContent.cs
- Apps/Assignment.WPF.App/TestWindow.xaml(.cs)
- Libraries/Assignment.Domain/CustomerManager.cs
- Libraries/Assignment.Infrastructure/Repositories/EFCustomerRepository.cs

of aangepast mogen worden:

- Assignment.WPF.App/Languages/Translations.fr.resx
- Assignment.WPF.App/Languages/Translations.nl.resx
- Assignment.WPF.App/Languages/Translations.resx
- Assignment.Tests/UnitTest1.cs

Implementeer de opdracht die hieronder beschreven wordt en zorg hierbij dat je de lagen inhoudelijk respecteert. 

Voorzie voldoende SeriLog logging (configuratie: zie appsettings.json).

Maak gebruik van AutoMapper.

Maak een aantrekkelijke gebruikersinterface met MaterialDesignThemes.

Maak gebruik van Microsoft Generic Host voor:

- dependency injection (vensters kunnen via deze weg vensters oproepen)
- logging
- configuratiegebruik.

In plaats van events te voorzien in de code behind van je vensters, maak je gebruik van het MVVM patroon (two way data binding, command pattern, ...).

Zorg ervoor dat je EF Core ASYNCHROON gebruikt en verder in je applicatie asynchroon werkt waar mogelijk.

Gebruik Hangfire om elke minuut informatie te tonen op je gebruikersinterface met betrekking tot het geheugengebruik van je applicatie.

Inhoudelijk maak je het volgende mogelijk:

- een lector logt aan bij het systeem.
- de ingelogde lector krijgt een overzicht van alle vakken.
- per vak kan de ingelogde lector:

1. aangeven welke onderwijsvormen gehanteerd worden
1. aangeven welke evaluatievormen gehanteerd worden
1. aangeven in welke mate welke IOEM maatregelen in aanmerking genomen kunnen worden (schaal van 0 tot 10)
1. aangeven in welke mate welke soft skills belangrijk zijn (schaal van 0 tot 10).

- per vak kan de ingelogde lector:

1. een opmerking toevoegen per onderwijsvorm (of deze nu geactiveerd is of niet)
1. een opmerking toevoegen per evaluatievorm (of deze nu geactiveerd is of niet)
1. een opmerking toevoegen per IOEM maatregel
1. een opmerking toevoegen per soft skill.

Uiteraard kan de lector op een overzichtelijke manier al deze informatie per vak bekijken (onderwijsvormen, evaluatievormen, mogelijke ondersteuning IOEM maatregelen, relevantie soft skills).

Maak een kleine console applicatie die

- als uitvoer een overzicht toont van alle vakken met per vak de gehanteerde onderwijs- en evaluatievormen
- gebouwd kan worden als Docker Linux container
- je kan demonstreren onder Docker.
