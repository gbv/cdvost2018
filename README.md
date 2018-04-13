# Bibliotheks-Schnittstellen der Verbundzentrale des GBV (VZG)

Im Rahmen des Hackathons [Coding da Vinci Ost](https://codingdavinci.de/events/ost/)
sollen am 14.4.2018 in Leipzig ausgewählte Schnittstellen zu Bibliothekssystemen 
vorgestellt werden. Weiter Informationen siehe:

* im GitHub-repository <https://github.com/gbv/cdvost2018>
* im GBV-Wiki <https://verbundwiki.gbv.de/display/VZGVers/Coding+da+Vinci>

## Beschreibung der Daten

Bibliothekskataloge verzeichnen Bücher, Zeitschriften und andere Medien mit
**bibliographischen Angaben** (Titel, Autor, Jahr...) und **Exemplardaten**
(Standort, Signatur, Verfügbarkeit...). Die Verbundzentrale des GBV stellt
einheitliche Schnittstellen zum Zugriff auf Kataloge von mehreren Hundert
Bibliotheken bereit, darunter alle Hochschulbibliotheken der GBV-Mitglieder
Thüringen und Sachsen-Anhalt. Für Sächsische Bibliotheken gibt es teilweise
entsprechende Schnittstellen. Konkret können Bibliothekskataloge per
**[SRU]/[CQL]** durchsucht werden (beispielsweise Suche nach einer ISBN oder
nach allen Veröffentlichungen eines Autors) und per **[DAIA]** ermittelt
werden, welche Exemplare eines Titels verfügbar oder ausgeliehen sind.

### Formate

Dateiformate
  : basierend auf XML und JSON

Metadatenstandards
  : [MODS], [DAIA] u.A.

Schnittstellen:
  : [DAIA], [SRU], [CSL-API] (letztere mit Abfragesprache [CQL])

## Übersicht

![](vzg-apis.jpg)

## Datenpräsentation

* Vortragsfolien: [PDF](presentation.pdf) / [Markdown-Quelltext](presentation.md)
* Liste von API-Endpunkten: [libraries.csv](libraries.csv)

## Bibliotheken und Schnittstellen

| Hochschule/Bibliothek | Bundesland | Stadt | ISIL | Wikidata-ID | SRU | DAIA |
| --------------------- | ---------- | ----- | ---- | ----------- | --- | -----  |
| Universitäts- und Landesbibliothek Sachsen-Anhalt | Sachsen-Anhalt | Halle | [DE-3](http://uri.gbv.de/organization/isil/DE-3) | [Q1600777](http://www.wikidata.org/entity/Q1600777) | <http://sru.gbv.de/opac-de-3> | <https://paia.gbv.de/DE-3/daia> |
| Hochschule Merseburg | Sachsen-Anhalt | Merseburg | [DE-542](http://uri.gbv.de/organization/isil/DE-542) | [Q47486421](http://www.wikidata.org/entity/Q47486421) | <http://sru.gbv.de/opac-de-542> | <https://paia.gbv.de/DE-542/daia> |
| Universitätsbibliothek Magdeburg | Sachsen-Anhalt | Magdeburg | [DE-Ma9](http://uri.gbv.de/organization/isil/DE-Ma9) | [Q15133246](http://www.wikidata.org/entity/Q15133246) | <http://sru.gbv.de/opac-de-ma9> | <https://paia.gbv.de/DE-Ma9/daia> |
| Fachhochschule Erfurt | Thüringen | Erfurt | [DE-546](http://uri.gbv.de/organization/isil/DE-546) | [Q28738387](http://www.wikidata.org/entity/Q28738387) | <http://sru.gbv.de/opac-de-546> | <https://paia.gbv.de/DE-546/daia> |
| Hochschule Nordhausen | Thüringen | Nordhausen | [DE-564](http://uri.gbv.de/organization/isil/DE-564) | [Q28738399](http://www.wikidata.org/entity/Q28738399) | <http://sru.gbv.de/opac-de-564> | <https://paia.gbv.de/DE-564/daia> |
| Universitätsbibliothek Ilmenau | Thüringen | Ilmenau | [DE-Ilm1](http://uri.gbv.de/organization/isil/DE-Ilm1) | [Q1366123](http://www.wikidata.org/entity/Q1366123) | <http://sru.gbv.de/opac-de-ilm1> | <https://paia.gbv.de/DE-Ilm1/daia> |
| Hochschule Schmalkalden | Thüringen | Schmalkalden | [DE-Shm2](http://uri.gbv.de/organization/isil/DE-Shm2) | [Q28738202](http://www.wikidata.org/entity/Q28738202) | <http://sru.gbv.de/opac-de-shm2> | <https://paia.gbv.de/DE-Shm2/daia> |
| Universitätsbibliothek Weimar | Thüringen | Weimar | [DE-Wim2](http://uri.gbv.de/organization/isil/DE-Wim2) | [Q1581267](http://www.wikidata.org/entity/Q1581267) | <http://sru.gbv.de/opac-de-wim2> | <https://paia.gbv.de/DE-Wim2/daia> |
| Hochschule für Musik Franz Liszt | Thüringen | Weimar | [DE-Wim8](http://uri.gbv.de/organization/isil/DE-Wim8) | [Q28738233](http://www.wikidata.org/entity/Q28738233) | <http://sru.gbv.de/opac-de-wim8> | <https://paia.gbv.de/DE-Wim8/daia> |
| Universitäts- und Forschungsbibliothek Erfurt | Thüringen | Erfurt | [DE-547](http://uri.gbv.de/organization/isil/DE-547) | [Q28776150](http://www.wikidata.org/entity/Q28776150) | <http://sru.gbv.de/opac-de-547> | <https://paia.gbv.de/DE-547/daia> |
| Thüringer Universitäts- und Landesbibliothek | Thüringen | Jena | [DE-27](http://uri.gbv.de/organization/isil/DE-27) | [Q1255096](http://www.wikidata.org/entity/Q1255096) | <http://sru.gbv.de/opac-de-27> | <https://jenlbs6.thulb.uni-jena.de:7242/DE-27/daia> |
| Oberlausitzische Bibliothek der Wissenschaften | Sachsen | Görlitz | [DE-Gl2](http://uri.gbv.de/organization/isil/DE-Gl2) | [Q2010093](http://www.wikidata.org/entity/Q2010093) | <http://sru.gbv.de/opac-de-gl2> | - |
| Universitätsbibliothek Leipzig | Sachsen | Leipzig | [DE-15](http://lobid.org/organisations/DE-15) | [Q872896](http://www.wikidata.org/entity/Q872896) | - | nicht öffentlich |
| Universitätsbibliothek der TU Chemnitz | Sachsen | Chemnitz | [DE-Ch1](http://lobid.org/organisations/DE-Ch1) | [Q15480074](http://www.wikidata.org/entity/Q15480074) | - | nicht öffentlich |
| SLUB Dresden | Sachsen | Dresden | [DE-14](http://lobid.org/organisations/DE-14) | [Q323270](http://www.wikidata.org/entity/Q323270) | - | nicht öffentlich |
| Universitätsbibliothek Freiberg | Sachsen | Freiberg | [DE-105](http://lobid.org/organisations/DE-105) | [Q2496296](http://www.wikidata.org/entity/Q2496296) | - | nicht öffentlich |
| Bibliothek der Halle 14 | Sachsen | Leipzig | [DE-L328](http://lobid.org/organisations/DE-L328) | [Q1571434](http://www.wikidata.org/entity/Q1571434) | <http://sru.gbv.de/opac-de-l328> | - |

## Rechteangaben und Lizenzen

Die Metadaten können frei weitergenutzt werden ([CC0]). Sie können allerdings
Verweise auf unfreie Cover, Inhaltsverzeichnisse und andere Mediendateien
enthalten.


[CC0]: https://creativecommons.org/publicdomain/zero/1.0/deed.de
[MODS]: http://www.loc.gov/standards/mods/
[DAIA]: http://purl.org/NET/DAIA
[SRU]: http://www.loc.gov/standards/sru/
[CQL]: http://www.loc.gov/standards/sru/cql/
[CSL-API]: http://ws.gbv.de/csl/
