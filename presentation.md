---
title: Bibliotheks-Schnittstellen der Verbundzentrale des GBV (VZG)
subtile: Coding da Vinci Ost, Leipzig
shorttitle: Bibliotheks-APIs
date: 2018-04-14
author:
 - name: Jakob Voß
institute: Verbundzentrale des GBV (VZG)
---

# Gemeinsamer Bibliotheksverbund (GBV)

![](karte-gbv.png){width=70%}

<!-- u.A. Thüringen und Sachsen-Anhalt -->

# Bibliothekskataloge

* VZG betreibt/koordiniert > 300 Bibliothekskataloge
* Vor allem Hochschulbibliotheken
* APIs teilweise auch für externe Kataloge

\vspace{1em}

* Gemeinsamer Verbundkatalog (GVK)\
  [`http://uri.gbv.de/database/`*`gvk`*](http://uri.gbv.de/database/gvk)

\vspace{1em}

* Lokale Kataloge einzelner Bibliotheken\
  [`http://uri.gbv.de/database/`*`opac-de-...`*](http://uri.gbv.de/database/opac)

# Entitäten

            Beispiel-Identifier
----------- -------------------------------------------------
Bibliothek  `DE-Wim2` (ISIL der UB Weimar)
Katalog     `opac-de-wim2` (Katalog-ID auf ISIL-Basis)
Standort    <http://uri.gbv.de/organization/isil/DE-Wim2@bst>
Dokument    (`ppn:`)`826687091`
Exemplar    ...

URI-Präfixe (`http://uri.gbv.de/...`) teilweise optional.

# Schnittstellen und Formate

* [Document Availability Information API (DAIA)](http://purl.org/NET/DAIA)
    * Bibliothek + Dokument $\Rightarrow$ Verfügbarkeit und Standorte
    * JSON-Format

* [CSL-API]
    * Bibliothek + CQL-Query $\Rightarrow$ Dokumente
    * Formatierte Literaturangaben

* [SRU]
    * Bibliothek + CQL-Query $\Rightarrow$ Dokumente
    * Metadaten in verschiedenen XML-Formate

* Linked Open Data
    * Entität $\Rightarrow$ Metdaten
    * RDF/JSON

# DAIA

Siehe [DAIA-Spezifikation](http://purl.org/NET/DAIA),
[Projektseite](https://verbundwiki.gbv.de/display/VZG/DAIA) und
[Wikipedia](https://de.wikipedia.org/wiki/Document_Availability_Information_API).

<https://verbundwiki.gbv.de/display/VZG/DAIA>

# CSL

Bibliothek + CQL-Query $\Rightarrow$ Formatierte Literaturangaben

Mehrere Zitationsstile zur Auswahl

Zurückgeliefert werden auch Dokument-Identifier für anschließende Abfrage per DAIA

<!--
Beispiel:

http://ws.gbv.de/suggest/csl/?database=opac-de-27&query=pica.per=marx,karl&citationstyle=ieee&language=de
-->

<http://ws.gbv.de/csl/>

# SRU

<http://sru.gbv.de/opac-de-27?version=1.1&operation=searchRetrieve&query=pica.per=marx,karl&maximumRecords=10&recordSchema=mods>

<!-- TODO: Suche per Normdaten -->

<http://sru.gbv.de/opac-de-wim2?version=1.1&operation=searchRetrieve&query=pica.ppn=826687091&maximumRecords=10&recordSchema=mods>

....

# CQL-Abfragen

* `pica.ppn=...` (ein bestimmtes Dokument)
* ...
* ... <!-- TODO: per GND -->
* Mehrere Bedingungen kombinierbar

# MODS-Format

XML-Format mit bibliographischen Daten

\small

~~~xml
<name type="personal" usage="primary" 
      authority="gnd" authorityURI="http://d-nb.info/gnd/" 
      valueURI="http://d-nb.info/gnd/118578537">
  <namePart type="family">Marx</namePart>
  <namePart type="given">Karl</namePart>
  <role>
    <roleTerm authority="marcrelator" type="code">aut</roleTerm>
  </role>
</name>
~~~

PPN steht in `/record/recordIdentifier[@source="DE-601"]`:

~~~
<recordIdentifier source="DE-601">899009921</recordIdentifier>
~~~

# Linked Open Data: Angaben zu Standorten/Bibliotheken

![<http://uri.gbv.de/organization/isil/DE-Wim2@bst>](de-wim2-bst.png){width=95%}

# Unterstützte Bibliotheken und APIs

* Alle Hochschulbibliotheken in Thüringen und Sachsen-Anhalt
* Sachsen leider bislang nur eingeschränkt
* <https://github.com/gbv/cdvost2018>\
  siehe Tabelle (`libraries.csv`)

# Hinweise und Ideen

* Verknüpfung mit anderen Datensätzen über

    * Dokumente (ISIL+PPN)
    * Autoren und Themen (GND) 
    * ...

* Anzeige von Literaturangaben ([CSL-API])

* Anzeige von Standorten und Verfügbarkeit ([DAIA])

\vfill

*Bitte Nachfragen! <jakob.voss@gbv.de>*



[MODS]: http://www.loc.gov/standards/mods/
[DAIA]: http://purl.org/NET/DAIA
[CSL-API]: http://ws.gbv.de/csl/
