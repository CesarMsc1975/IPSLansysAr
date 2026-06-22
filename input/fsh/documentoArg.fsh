Alias: $loinc = http://loinc.org
Alias: $Patient-ar-core = http://fhir.msal.gob.ar/core/StructureDefinition/Patient-ar-core
Alias: $Immunization-ar-core = http://fhir.msal.gob.ar/core/StructureDefinition/Immunization-ar-core
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $AllergyIntolerance-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips

Profile: DocumentoArg
Parent: Composition
Id: DocumentoArg
Title: "Documento IPS Argentino"
Description: "Perfil de Documento IPS definido en la CORE AR dependiente de perfil IPS-UV"
* ^version = "0.5.0"
* ^status = #draft
* ^date = "2026-06-22"
* ^publisher = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.name = "DNSIS - Ministerio de Salud - Rep. Argentina / HL7 Argentina"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.argentina.gob.ar/salud/digital"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "privadadngiss@msal.gov.ar"
* identifier 1.. MS
* status = #final
* status MS
* type MS
* subject 1.. MS
* subject only Reference(PacienteArg)
* date MS
* author ..1 MS
* author.reference ..0
* author only Reference(PrestadorArg)
* author.identifier 1.. MS
* author.identifier.system = "http://refes.msal.gob.ar"
* author.identifier.value 1.. MS
* custodian.reference ..0
* custodian.identifier 1.. MS
* custodian.identifier.system = "http://federador.msal.gob.ar/uri"
* custodian.identifier.value 1.. MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section.text 1.. MS
* section contains
    sectionImmunizationsAR 1..* MS and
    sectionConditionsAR 1..* MS and
    sectionMedicationAR 1..* MS and
    sectionAllergiesAR 1..* MS
* section[sectionImmunizationsAR].code 1..
* section[sectionImmunizationsAR].code = $loinc#11369-6
* section[sectionImmunizationsAR].text 1.. MS
* section[sectionImmunizationsAR].entry only Reference(InmunizacionArg)
* section[sectionConditionsAR].code 1..
* section[sectionConditionsAR].code = $loinc#11450-4
* section[sectionConditionsAR].text 1.. MS
* section[sectionConditionsAR].entry only Reference($Condition-uv-ips)
* section[sectionMedicationAR].code 1..
* section[sectionMedicationAR].code = $loinc#10160-0
* section[sectionMedicationAR].text 1.. MS
* section[sectionMedicationAR].entry only Reference($MedicationStatement-uv-ips)
* section[sectionAllergiesAR].code 1..
* section[sectionAllergiesAR].code = $loinc#48765-2
* section[sectionAllergiesAR].text 1.. MS
* section[sectionAllergiesAR].entry only Reference($AllergyIntolerance-uv-ips)