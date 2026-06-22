Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips

Profile: InmunizacionArg
Parent: $Immunization-uv-ips
Id: InmunizacionArg
Title: "Registro Vacuna Argentino IPS"
Description: "Perfil de Registro Vacunacion según CORE AR y dependiente de perfil IPS-UV"
* ^status = #draft
* ^date = "2026-06-22"
* ^publisher = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.name = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.argentina.gob.ar/salud/digital"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "privadadngiss@msal.gov.ar"
* extension contains NomivacEsquema named EsquemaVacunacion 0..1
* patient.identifier 1.. MS
* patient.identifier.system = "http://www.renaper.gob.ar/dni"
* patient.identifier.value 1.. MS
* occurrenceDateTime 1..1 MS
* occurrenceDateTime only dateTime
* primarySource 1.. MS
* location 1.. MS
* location.reference ..0
* location.identifier 1.. MS
* location.identifier.system = "http://refes.msal.gob.ar"
* location.identifier.value 1.. MS
* lotNumber 1.. MS
* reasonCode 1..1 MS
* protocolApplied 1..1 MS