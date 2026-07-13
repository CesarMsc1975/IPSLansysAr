Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $Practitioner-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Alias: $FathersFamily = http://hl7.org/fhir/StructureDefinition/humanname-fathers-family
Alias: $MothersFamily = http://hl7.org/fhir/StructureDefinition/humanname-mothers-family


Profile: PrestadorArg
Parent: $Practitioner-uv-ips
Id: PrestadorArg
Title: "Profesional Argentino"
Description: "Perfil de Registro de Profesional descrito en CORE AR (REFEPS) y dependiente de perfil IPS-UV"
* ^status = #draft
* ^date = "2026-06-22"
* ^publisher = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.name = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.argentina.gob.ar/salud/digital"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "privadadngiss@msal.gov.ar"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    DocumentoUnico 1..1 MS and
    REFEPSid 1..1 MS
* identifier[DocumentoUnico].use = #official (exactly)

* identifier[DocumentoUnico].type = $v2-0203#NI
* identifier[DocumentoUnico].type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
* identifier[DocumentoUnico].system 1..
* identifier[DocumentoUnico].system = "http://www.renaper.gob.ar/dni" (exactly)
* identifier[DocumentoUnico].system ^short = "RENAPER"
* identifier[DocumentoUnico].system ^definition = "Registro Nacional de las Personas de Argentina"
* identifier[DocumentoUnico].value 1.. MS
* identifier[DocumentoUnico].assigner.display 1..
* identifier[DocumentoUnico].assigner.display = "RENAPER" (exactly)
* identifier[REFEPSid].use = #usual (exactly)
* identifier[REFEPSid].type = $v2-0203#AC
* identifier[REFEPSid].type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
* identifier[REFEPSid].system 1..
* identifier[REFEPSid].system = "http://refeps.msal.gob.ar"
* identifier[REFEPSid].value 1.. MS
* identifier[REFEPSid].period.start 1..
* active 1..
* name ..1
* name.use = #official
* name.family.extension contains
    $MothersFamily named MothersLastName 0..1 and
    $FathersFamily named FathersLastName 0..1
* name.prefix ..0
* name.suffix ..0
* telecom ..2
* gender from AdministrativeGender (required)
* birthDate MS
* qualification MS