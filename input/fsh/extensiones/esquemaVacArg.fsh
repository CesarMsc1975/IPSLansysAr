
Extension: NomivacEsquema
Id: NomivacEsquema
Title: "Esquema Vacunacion"
Description: "Esquema de Vacunación Aplicable"
* ^version = "0.5.0"
* ^date = "2026-06-22"
* ^publisher = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.name = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.argentina.gob.ar/salud/digital"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "privadadngiss@msal.gov.ar"
* . ^short = "Esquema Vacunacion"
* . ^definition = "Esquema de Vacunación Aplicable"
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from NomivacEsquemaVS (required)