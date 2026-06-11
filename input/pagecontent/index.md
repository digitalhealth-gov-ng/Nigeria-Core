
### Introduction

The Nigeria Core FHIR Implementation Guide defines the national foundation for FHIR-based interoperability across Nigeria’s health sector. It establishes a common set of minimum profiles, extensions, terminology bindings, identifiers, RESTful interactions, and implementation expectations that can be reused by national, state, programme, regulator, hospitals, and vendor systems.

Nigeria Core is intended to serve as the common interoperability “floor” for digital health systems in Nigeria. It supports implementation across electronic medical record systems, community health information systems, registries, laboratory systems, pharmacy systems, insurance and claims platforms, logistics systems, analytics platforms, and health information exchange services.

This guide is developed under the overall digital health leadership of the Federal Ministry of Health and Social Welfare, the National Digital Health Architecture, and the Nigeria Digital in Health Initiative (NDHI). It is designed to support national priorities while recognising Nigeria’s decentralised and hybrid digital health architecture, where states, programmes, regulators, and service delivery platforms may operate distinct systems that must still exchange data using a common standards framework.

Nigeria Core provides the foundation for harmonising existing and future Nigerian FHIR implementation guides, including programme-specific and domain-specific guides for eCHIS, MNCH, HIV, TB, Malaria, Immunization, Family Planning, Health Logistics, ePharmacy, ePrescription, insurance and claims, medical devices, health workforce registries, facility registries, and shared health records.

The Nigeria Core Implementation Guide is based on [FHIR Version R4](http://hl7.org/fhir/R4/). It defines the minimum constraints on FHIR resources to create Nigeria Core Profiles. The elements, extensions, vocabularies, identifiers, and value sets that SHALL or SHOULD be present are identified, and their expected use is described. It also documents minimum FHIR RESTful interactions for accessing and exchanging administrative, clinical, public health, regulatory, and programme data.

Establishing a national baseline for FHIR implementation promotes interoperability, vendor alignment, standards-based procurement, conformance testing, and reuse across Nigeria’s health ecosystem. More specific implementation guides may add additional requirements for particular programmes, workflows, jurisdictions, or use cases, but they should build on Nigeria Core wherever applicable.

There are two general ways to implement Nigeria Core:

**Profile Only Support:** Systems may support Nigeria Core Profiles to represent clinical, administrative, registry, regulatory, or programme information in a consistent structure.

**Profile Support + Interaction Support:** Systems may support both the Nigeria Core Profile content structure and the RESTful interactions defined for a resource.

For a detailed description of these different usages of Nigeria Core, see the [Conformance Requirements](conformance.html) page.

### Background

Nigeria’s health sector includes a diverse and growing digital health ecosystem, with systems deployed by federal institutions, state governments, health programmes, regulators, donors, development partners, private providers, innovators, and vendors. These systems support service delivery, reporting, supply chain, health workforce management, facility management, claims processing, public health surveillance, and patient care.

Historically, many of these systems have been developed around programme-specific requirements, resulting in variation in data models, identifiers, terminology, reporting formats, and integration methods. Nigeria Core responds to this challenge by defining a common national FHIR-based foundation for health data exchange.

The guide is informed by Nigeria’s digital health policy direction, the National Digital Health Architecture, national health data standards work, existing FHIR implementation guide efforts, the Nigeria FHIR Community, DHIN Connectathon activities, standards work with the Standards Organisation of Nigeria, and lessons from implementation across priority health programmes.

Nigeria Core also supports the development of a Nigeria Shared Health Record, aligned where appropriate with the International Patient Summary, and enables interoperability with national and sub-national building blocks such as:

* Client and patient registries
* Health Facility Registry
* Health Workforce Registry
* Terminology services
* Consent and privacy services
* Provider and regulator registries
* Programme repositories
* Health information exchange platforms
* Conformance testing and sandbox environments

The guide is expected to evolve through formal standards development, stakeholder review, testing, and endorsement processes. Future releases will incorporate additional profiles, terminology mappings, implementation guidance, programme-specific artefacts, and lessons from vendor testing and real-world implementation.

### How To Read This Guide

This guide is divided into several pages, which are listed at the top of each page in the menu bar.

**[Home](index.html):** The home page provides the introduction and background for Nigeria Core.

**[Conformance](conformance.html):** These pages describe the rules for claiming conformance to this guide.

* **[General Requirements](general.html):** Defines requirements common to all actors and profiles used in this guide, including how CapabilityStatements are used to claim conformance.
* **[Must Support](must-support.html):** Defines expectations for mandatory and Must Support elements in Nigeria Core Profiles.
* **[Security](security.html):** Documents general security, privacy, consent, and access control requirements and recommendations for actors.

**[Guidance](guidance.html):** The Guidance pages document best practices and how to use the profiles and transactions defined in this guide.

* **[Program Guidance](program.html):** Provides guidance on how national and sub-national programmes should extend or specialise Nigeria Core for programme-specific use cases.
* **[Clinical Notes](clinical-notes.html):** Provides guidance on representing and exchanging clinical notes and narrative clinical information.
* **[Medication Management](medication-management.html):** Provides guidance on medication lists, prescriptions, dispensing, fulfilment, and pharmacy-related workflows.
* **[Relationship With Other IGs](other-igs.html):** Describes the relationship between Nigeria Core and other implementation guides, including programme-specific Nigerian IGs, IPS, IPA, US Core, and other reusable FHIR guides.

**[FHIR Artifacts](artifacts.html):** These pages provide detailed descriptions and formal definitions for the FHIR objects defined in this guide.

* **[Profiles and Extensions](profiles.html):** Lists the Nigeria Core Profiles and Extensions defined in this guide.
* **[Search Parameters and Operations](search-operations.html):** Lists the defined Nigeria Core Operations and Search Parameters used in Nigeria Core transactions.
* **[Terminology](terminology.html):** Lists Nigeria Core ValueSets and CodeSystems defined for the profiles.
* **[Capability Statements](capability-statements-api.html):** Defines the expected FHIR capabilities of Nigeria Core Servers and Clients.
* **[Examples](examples.html):** Lists examples used in this guide. {% include examples.md -%}
* **[Downloads](downloads.html):** Provides links to downloadable artefacts.

**[Version History](change-logs.html#versions):** These pages document changes across versions of Nigeria Core.

* **[Change Log](change-log.html):** Lists updates, enhancements, clarifications, corrections, and changes arising from community feedback, programme alignment, testing, and standards review.
* **[Changes Between Versions](change-logs.html#versioning):** Documents changes between Nigeria Core versions and considerations when transitioning across versions.
* **[Roadmap](roadmap.html):** Provides a preview of future direction, including additional profiles, programme guides, terminology mappings, conformance testing requirements, and sandbox-based validation.

### Nigeria Core Actors

The following actors are part of the Nigeria Core Implementation Guide:

#### Nigeria Core Requestor

A Nigeria Core Requestor is an application, system, service, or platform that initiates a data access or data exchange request. The Requestor is the Client in a FHIR Client-Server interaction.

Examples of Nigeria Core Requestors include EMR systems, community health applications, mobile health applications, analytics platforms, claims systems, laboratory systems, pharmacy platforms, state health information systems, regulator portals, and public health reporting tools.

The terms **Nigeria Core Requestor** and **Client** are used interchangeably throughout this guide.

#### Nigeria Core Responder

A Nigeria Core Responder is a system, service, platform, or repository that responds to a data access or exchange request by providing FHIR-conformant data. The Responder is the Server in a FHIR Client-Server interaction.

Examples of Nigeria Core Responders include EMRs, health information exchanges, shared health record platforms, health facility registries, health workforce registries, terminology servers, programme repositories, insurance platforms, pharmacy systems, and public health data platforms.

The terms **Nigeria Core Responder** and **Server** are used interchangeably throughout this guide.

#### Nigeria Core Registry Service

A Nigeria Core Registry Service is a system that maintains authoritative or reference information about entities such as patients, facilities, health workers, providers, organisations, products, or regulated services.

Registry services may be hosted by federal institutions, state governments, regulators, or designated national platforms. Examples include the Health Facility Registry, Health Workforce Registry, professional council registers, facility licensing systems, and related master data services.

#### Nigeria Core Terminology Service

A Nigeria Core Terminology Service provides access to CodeSystems, ValueSets, ConceptMaps, and terminology mappings used for national interoperability. These may include Nigerian local codes and mappings to international terminologies such as ICD-11, SNOMED CT, LOINC, ATC, and other applicable standards.

#### Nigeria Core Conformance and Sandbox Service

A Nigeria Core Conformance and Sandbox Service supports validation, testing, certification readiness, and implementation support for systems claiming conformance to this guide. It may include FHIR validation services, test data, reference servers, example transactions, Inferno-style tests, HAPI FHIR servers, and vendor onboarding workflows.

### Nigeria Core Profiles

Nigeria Core Profiles define the minimum constraints required to represent core health, administrative, registry, regulatory, and programme information in Nigeria. Each profile identifies the core elements, extensions, vocabularies, identifiers, and ValueSets that SHALL, SHOULD, or MAY be present when using the profile.

Together, these profiles promote interoperability and adoption through common implementation. They provide a national baseline for more specific implementation guides and use cases.

A narrative summary on each profile page describes the profile’s purpose, requirements, Must Support elements, terminology bindings, examples, and implementation guidance. A formal hierarchical table presents the logical view of the content in both differential and snapshot views and provides links to related terminologies and examples.



### Nigeria Core FHIR RESTful Interactions

For systems that support both Nigeria Core Profile content and RESTful interactions, requirements are formally defined in Nigeria Core CapabilityStatements. In addition, each profile page may include a Quick Start section that documents required or recommended FHIR RESTful search, read, create, update, and operation interactions.

These interactions demonstrate how systems can access and exchange patient, provider, facility, clinical, medication, immunization, referral, claims, logistics, registry, and programme data using standard FHIR APIs.


Implementers should refer to the FHIR specification for details on the [FHIR RESTful API](http://hl7.org/fhir/R4/http.html), [FHIR Search](http://hl7.org/fhir/R4/search.html), and applicable security and authorization patterns such as SMART App Launch and OAuth2-based access control.

### Relationship to Programme and Domain Implementation Guides

Nigeria Core is intended to be reused by programme-specific and domain-specific implementation guides. These guides may add constraints, examples, workflows, terminology bindings, and exchange patterns for particular use cases while maintaining alignment with Nigeria Core.

Examples of implementation areas expected to build on Nigeria Core include:

* Electronic Medical Records and Electronic Health Records
* eCHIS and community health workflows
* Maternal, Newborn and Child Health
* Immunization
* HIV
* Tuberculosis
* Malaria
* Family Planning
* Nutrition
* Health logistics and supply chain
* ePharmacy and ePrescription
* Insurance, claims, and payer workflows
* Medical devices and diagnostic systems
* Facility registry workflows
* Health workforce registry workflows
* Shared health records and longitudinal patient records
* Public health reporting and analytics

Programme guides should reuse Nigeria Core profiles and terminology where possible. Where additional constraints are required, they should be documented as derived profiles or extensions, with clear conformance expectations.

### Standards, Governance, and Conformance

Nigeria Core supports a standards-based approach to digital health governance in Nigeria. It is intended to align implementation with national health sector leadership, formal standards development processes, and conformance testing.

The guide supports:

* Harmonisation of existing health data standards into a national FHIR framework
* Reuse of international standards where appropriate
* Mapping of Nigerian terminology and identifiers to recognised global standards
* Vendor testing through sandbox environments
* Conformance readiness for procurement and implementation
* Progressive national endorsement through relevant governance and standards bodies
* Alignment between federal, state, programme, and regulator systems

Nigeria Core will continue to evolve through stakeholder engagement, technical working groups, Connectathons, implementation feedback, and testing in real-world settings.

### Primary Authors

Emeka Chukwu, Leke Ojewale