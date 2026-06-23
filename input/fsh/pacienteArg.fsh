Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $FathersFamily = http://hl7.org/fhir/StructureDefinition/humanname-fathers-family
Alias: $MothersFamily = http://hl7.org/fhir/StructureDefinition/humanname-mothers-family

Profile: PacienteArg
Id: PacienteArg
Parent: Patient
Title: "Paciente Argentino"
Description: "Perfil de Paciente Argentino definido en la CORE AR y dependiente de perfil IPS-UV"
* ^status = #draft
* ^date = "2025-06-22"
* ^publisher = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.name = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.argentina.gob.ar/salud/digital"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "privadadngiss@msal.gov.ar"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #closed
* identifier contains
    DocumentoUnico 1..1 MS and
    IdentificadorDominio 1..1 MS
* identifier[DocumentoUnico].use 1..
* identifier[DocumentoUnico].use = #official
* identifier[DocumentoUnico].system = "http://www.renaper.gob.ar/dni"
* identifier[DocumentoUnico].value MS
* identifier[IdentificadorDominio].use 1..
* identifier[IdentificadorDominio].use = #usual
* identifier[IdentificadorDominio].system MS
* identifier[IdentificadorDominio].value MS
* active 1.. MS
* active = true
* name ..2
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #closed
* name contains
    NombreLegal 1..1 MS and
    NombreElegido 0..1 MS
* name[NombreLegal].use 1..
* name[NombreLegal].use = #official
* name[NombreLegal].family 1..
* name[NombreLegal].family.extension contains
    $FathersFamily named FathersLastName 1..1 and
    $MothersFamily named MothersLastName 0..1
* name[NombreLegal].given 1..
* name[NombreElegido].use 1..
* name[NombreElegido].use = #usual
* name[NombreElegido].given 1..
* gender from AdministrativeGender (required)
* link MS
