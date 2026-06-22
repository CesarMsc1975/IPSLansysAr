Profile: BundleDocArg
Parent: Bundle
Id: BundleDocArg
Title: "Bundle IPS Argentino"
Description: "Perfil de Bundle de IPS CORE AR, con separación de entradas según lo especificado en composition"
* ^version = "0.5.0"
* ^status = #draft
* ^date = "2026-06-22"
* ^publisher = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.name = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.argentina.gob.ar/salud/digital"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "privadadngiss@msal.gov.ar"
* ^jurisdiction = urn:iso:std:iso:3166#AR

* language = #es-AR
* identifier 1.. MS
* type = #document
* timestamp 1.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    IPSDoc 1..1 and
    PacienteArg 1..1 and
    PrestadorArg 0..1 and
    Alergia 1..* and
    Inmunzacion 1..* and
    Condicion 1..* and
    Medicacion 1..*
    
* entry[IPSDoc].resource only DocumentoArg
* entry[PacienteArg].resource only PacienteArg
* entry[PrestadorArg].resource only PrestadorArg
* entry[Alergia].resource only AllergyIntolerance
* entry[Inmunzacion].resource only InmunizacionArg
* entry[Condicion].resource only Condition
* entry[Medicacion].resource only MedicationStatement 