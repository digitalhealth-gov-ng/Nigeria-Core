Profile: NgDevice
Parent: Device
Title: "NG Device"
Id: ng-device
Description: "Minimal Device profile for Nigeria Core (medical devices communications)."
* ^url = "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-device"

// Core elements (minimal & useful)
* status 1..1 MS
* type 1..1 MS
* identifier 0..* MS
* serialNumber 0..1 MS
* manufacturer 0..1
* deviceName 0..* MS
* deviceName.name 1..1
* deviceName.type MS
* deviceName.type 1..1
* patient 0..1
* owner 0..1
* location 0..1

// Reference targets
* patient only Reference(NgPatient)
* owner only Reference(NgOrganization)
* location only Reference(NgLocation)

// Value set bindings (use built-ins)
* status from FHIRDeviceStatus (required)


// -----------------------------
// Example Instance
// -----------------------------
Instance: NgDevice-001
InstanceOf: NgDevice
Usage: #example
Title: "Example NG Device"
Description: "An example Device."
* id = "00124456-e5f6-4789-a123-456789abcdef"
* status = #active
* type.text = "Pulse oximeter"
* identifier[0].system = "https://fhir-ig.digitalhealth.gov.ng/ValueSet/nigeria-device-identifier-vs"
* identifier[0].value = #VS-002
* serialNumber = "SN-12345"
* manufacturer = "Acme Medtech"
* deviceName[0].name = "POX-210"
* deviceName[0].type = #user-friendly-name
* owner = Reference(NgOrganization-001)
* patient = Reference(NgPatient-001)
* location = Reference(NgLocation-001)
