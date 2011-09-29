require 'soap/mapping'

module Mappings
  EncodedRegistry ||= ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry ||= ::SOAP::Mapping::LiteralRegistry.new

  module Base
    NsType = "http://ezags.rt.ru/type/"

    EncodedRegistry.register(
      :class => Types::DateRecord,
      :schema_type => XSD::QName.new(NsType, "dateRecord"),
      :schema_element => [
        ["day", "SOAP::SOAPInt"],
        ["month", "SOAP::SOAPInt"],
        ["year", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::RegistrarNameIdentity,
      :schema_type => XSD::QName.new(NsType, "registrarNameIdentity"),
      :schema_basetype => XSD::QName.new(NsType, "registrarIdentity"),
      :schema_element => [
        ["regionCode", "SOAP::SOAPInt"],
        ["registrarCode", "SOAP::SOAPInt"],
        ["registrarID", "SOAP::SOAPInt"],
        ["registrarNameID", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::RegistrarIdentity,
      :schema_type => XSD::QName.new(NsType, "registrarIdentity"),
      :schema_element => [
        ["regionCode", "SOAP::SOAPInt"],
        ["registrarCode", "SOAP::SOAPInt"],
        ["registrarID", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordCancelRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordCancelRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["courtDate", "Types::DateRecord", [0, 1]],
        ["cancelDate", "Types::DateRecord", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordOfAdoptionRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfAdoptionRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordOfBirthRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfBirthRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordOfDeathRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfDeathRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordOfDivorceRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfDivorceRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordOfFiliationRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfFiliationRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordOfMarriageRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfMarriageRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecordOfNameChangeRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfNameChangeRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ActRecToCorrectDueNameChange,
      :schema_type => XSD::QName.new(NsType, "actRecToCorrectDueNameChange"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::ActRecordType", [0, 1]],
        ["subj1Initials", "Types::PersonInitials", [0, 1]],
        ["subj2Initials", "Types::PersonInitials", [0, 1]],
        ["corrections", "Types::ListOfCorrectionsDueNameChange", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::PersonInitials,
      :schema_type => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfCorrectionsDueNameChange,
      :schema_type => XSD::QName.new(NsType, "listOfCorrectionsDueNameChange"),
      :schema_element => [
        ["item", "Types::CorrectionDueNameChange[]", [0, nil]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CorrectionDueNameChange,
      :schema_type => XSD::QName.new(NsType, "correctionDueNameChange"),
      :schema_element => [
        ["subject", "Types::CorrectionSubject", [0, 1]],
        ["field", "Types::CorrectionFieldDueNameChange", [0, 1]],
        ["correctFieldAfterActRegistration", "SOAP::SOAPBoolean"],
        ["previousValue", "SOAP::SOAPString", [0, 1]],
        ["newValue", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::AdoptionActRecord,
      :schema_type => XSD::QName.new(NsType, "adoptionActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["childBefore", "Types::Child", [0, 1]],
        ["birthReqsBefore", "Types::ActRecordOfBirthRequisites", [0, 1]],
        ["childAfter", "Types::Child", [0, 1]],
        ["birthReqsAfter", "Types::ActRecordOfBirthRequisites", [0, 1]],
        ["fatherInitials", "Types::PersonInitials", [0, 1]],
        ["fatherCitizenship", "Types::Citizenship", [0, 1]],
        ["fatherNationality", "SOAP::SOAPString", [0, 1]],
        ["motherInitials", "Types::PersonInitials", [0, 1]],
        ["motherCitizenship", "Types::Citizenship", [0, 1]],
        ["motherNationality", "SOAP::SOAPString", [0, 1]],
        ["adopter", "Types::Person", [0, 1]],
        ["adopter2", "Types::Person", [0, 1]],
        ["apoptersMarriage", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["courtDecision", "Types::CourtDecisionRequisites", [0, 1]],
        ["adoptiveParents", "SOAP::SOAPBoolean"],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["applicant2", "Types::ApplicantPerson", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::Child,
      :schema_type => XSD::QName.new(NsType, "child"),
      :schema_basetype => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["gender", "Types::GenderType", [0, 1]],
        ["birthDate", "Types::DateRecord", [0, 1]],
        ["birthPlace", "Types::ShortAddress", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ShortAddress,
      :schema_type => XSD::QName.new(NsType, "shortAddress"),
      :schema_element => [
        ["country", "SOAP::SOAPString", [0, 1]],
        ["stateEntity", "SOAP::SOAPString", [0, 1]],
        ["district", "SOAP::SOAPString", [0, 1]],
        ["city", "SOAP::SOAPString", [0, 1]],
        ["settlType", "SOAP::SOAPString", [0, 1]],
        ["settlName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::Citizenship,
      :schema_type => XSD::QName.new(NsType, "citizenship"),
      :schema_element => [
        ["type", "Types::CitizenshipType", [0, 1]],
        ["countryInGenitive", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::Person,
      :schema_type => XSD::QName.new(NsType, "person"),
      :schema_basetype => XSD::QName.new(NsType, "child"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["gender", "Types::GenderType", [0, 1]],
        ["birthDate", "Types::DateRecord", [0, 1]],
        ["birthPlace", "Types::ShortAddress", [0, 1]],
        ["citizenship", "Types::Citizenship", [0, 1]],
        ["nationality", "SOAP::SOAPString", [0, 1]],
        ["snils", "SOAP::SOAPString", [0, 1]],
        ["residencePlace", "Types::FullAddress", [0, 1]],
        ["identityDocument", "Types::IdentityDocument", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::FullAddress,
      :schema_type => XSD::QName.new(NsType, "fullAddress"),
      :schema_basetype => XSD::QName.new(NsType, "shortAddress"),
      :schema_element => [
        ["country", "SOAP::SOAPString", [0, 1]],
        ["stateEntity", "SOAP::SOAPString", [0, 1]],
        ["district", "SOAP::SOAPString", [0, 1]],
        ["city", "SOAP::SOAPString", [0, 1]],
        ["settlType", "SOAP::SOAPString", [0, 1]],
        ["settlName", "SOAP::SOAPString", [0, 1]],
        ["streetType", "SOAP::SOAPString", [0, 1]],
        ["streetName", "SOAP::SOAPString", [0, 1]],
        ["house", "SOAP::SOAPString", [0, 1]],
        ["building", "SOAP::SOAPString", [0, 1]],
        ["appartment", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::IdentityDocument,
      :schema_type => XSD::QName.new(NsType, "identityDocument"),
      :schema_element => [
        ["documentName", "SOAP::SOAPString", [0, 1]],
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["divisionCode", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionRequisites,
      :schema_type => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ApplicantPerson,
      :schema_type => XSD::QName.new(NsType, "applicantPerson"),
      :schema_basetype => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["residencePlace", "Types::FullAddress", [0, 1]],
        ["identityDocument", "Types::IdentityDocument", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ApostilleDoc,
      :schema_type => XSD::QName.new(NsType, "apostilleDoc"),
      :schema_element => [
        ["actType", "Types::ActRecordType", [0, 1]],
        ["docType", "Types::ApostilleDocType", [0, 1]],
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["subj1Initials", "Types::PersonInitials", [0, 1]],
        ["subj2Initials", "Types::PersonInitials", [0, 1]],
        ["docSeries", "SOAP::SOAPString", [0, 1]],
        ["docNumber", "SOAP::SOAPString", [0, 1]],
        ["docRegistrar", "SOAP::SOAPString", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["performType", "Types::ApostillePerformType", [0, 1]],
        ["apostilleDate", "SOAP::SOAPDateTime", [0, 1]],
        ["apostilleNumber", "SOAP::SOAPInt"],
        ["refuseReason", "SOAP::SOAPString", [0, 1]],
        ["issueDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::StateTax,
      :schema_type => XSD::QName.new(NsType, "stateTax"),
      :schema_element => [
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["type", "Types::StateTaxType", [0, 1]],
        ["amount", "SOAP::SOAPDouble"],
        ["payer", "Types::PersonInitials", [0, 1]],
        ["paymentDate", "SOAP::SOAPDateTime", [0, 1]],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["serviceDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ApplicantOrganization,
      :schema_type => XSD::QName.new(NsType, "applicantOrganization"),
      :schema_element => [
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["legalAddress", "Types::FullAddress", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::BirthActRecord,
      :schema_type => XSD::QName.new(NsType, "birthActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["child", "Types::Child", [0, 1]],
        ["numberOfBirths", "SOAP::SOAPString", [0, 1]],
        ["birthType", "Types::BirthType", [0, 1]],
        ["childenCountInFamily", "SOAP::SOAPString", [0, 1]],
        ["refusedChild", "SOAP::SOAPBoolean"],
        ["foundChild", "SOAP::SOAPBoolean"],
        ["father", "Types::Person", [0, 1]],
        ["mother", "Types::Person", [0, 1]],
        ["certOfBirth", "Types::MedicalCertificateOfBirth", [0, 1]],
        ["statementOfAttentedAtBirth", "Types::StatementOfPersonAttentedAtBirth", [0, 1]],
        ["statementOfArrivedOtherwise", "Types::StatementOfPersonArrivedOtherwise", [0, 1]],
        ["certOfPerinatalDeath", "Types::MedicalCertificateOfPerinatalDeath", [0, 1]],
        ["marriageReqs", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["filiationReqs", "Types::ActRecordOfFiliationRequisites", [0, 1]],
        ["singleMotherStatementDate", "Types::DateRecord", [0, 1]],
        ["applicantPerson", "Types::ApplicantPerson", [0, 1]],
        ["applicantOrganization", "Types::ApplicantOrganization", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::MedicalCertificateOfBirth,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfBirth"),
      :schema_element => [
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::StatementOfPersonAttentedAtBirth,
      :schema_type => XSD::QName.new(NsType, "statementOfPersonAttentedAtBirth"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["initials", "Types::PersonInitials", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::StatementOfPersonArrivedOtherwise,
      :schema_type => XSD::QName.new(NsType, "statementOfPersonArrivedOtherwise"),
      :schema_basetype => XSD::QName.new(NsType, "statementOfPersonAttentedAtBirth"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["initials", "Types::PersonInitials", [0, 1]],
        ["proceedMethod", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::MedicalCertificateOfPerinatalDeath,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfPerinatalDeath"),
      :schema_basetype => XSD::QName.new(NsType, "medicalCertificateOfBirth"),
      :schema_element => [
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["causesOfDeath", "Types::ListOfCausesOfDeath", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfCausesOfDeath,
      :schema_type => XSD::QName.new(NsType, "listOfCausesOfDeath"),
      :schema_element => [
        ["item", "Types::CauseOfDeath[]", [0, nil]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CauseOfDeath,
      :schema_type => XSD::QName.new(NsType, "causeOfDeath"),
      :schema_element => [
        ["codeInICD10", "SOAP::SOAPString", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CertificateIssueRecord,
      :schema_type => XSD::QName.new(NsType, "certificateIssueRecord"),
      :schema_element => [
        ["actType", "Types::ActRecordType", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["actRegistrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["actRecordID", "SOAP::SOAPInt"],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["certDate", "SOAP::SOAPDateTime", [0, 1]],
        ["issueType", "Types::CertificateIssueType", [0, 1]],
        ["spoilReason", "SOAP::SOAPString", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ChildInNameChangeOrCorrection,
      :schema_type => XSD::QName.new(NsType, "childInNameChangeOrCorrection"),
      :schema_basetype => XSD::QName.new(NsType, "child"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["gender", "Types::GenderType", [0, 1]],
        ["birthDate", "Types::DateRecord", [0, 1]],
        ["birthPlace", "Types::ShortAddress", [0, 1]],
        ["birthReqs", "Types::ActRecordOfBirthRequisites", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionInFatherStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "courtDecisionInFatherStatementOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::CourtDecisionInFatherStatementOfFiliationType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfDeath,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDeath"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::CourtDecisionOfDeathType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfDivorce,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDivorce"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfDivorceWithStatement,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDivorceWithStatement"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionOfDivorce"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["againstWhom", "Types::GenderType", [0, 1]],
        ["type", "Types::CourtDecisionOfDivorceWithStatementType", [0, 1]],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfFiliation,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::CourtDecisionOfFiliationType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfMarriageCease,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfMarriageCease"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["marriageCeaseDate", "Types::DateRecord", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::CourtVerdictOfDivorceWithStatement,
      :schema_type => XSD::QName.new(NsType, "courtVerdictOfDivorceWithStatement"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionOfDivorce"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["againstWhom", "Types::GenderType", [0, 1]],
        ["imprisonment", "SOAP::SOAPString", [0, 1]],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::DeathActRecord,
      :schema_type => XSD::QName.new(NsType, "deathActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["dead", "Types::Person", [0, 1]],
        ["deathDate", "Types::DateRecord", [0, 1]],
        ["deathDate2", "Types::DateRecord", [0, 1]],
        ["deathPlace", "Types::ShortAddress", [0, 1]],
        ["causesOfDeath", "Types::ListOfCausesOfDeath", [0, 1]],
        ["certOfDeath", "Types::MedicalCertificateOfDeath", [0, 1]],
        ["decisionOfDeath", "Types::CourtDecisionOfDeath", [0, 1]],
        ["docOfRepressed", "Types::DocOfDeathUnjustlyRepressed", [0, 1]],
        ["certOfPerinatalDeath", "Types::MedicalCertificateOfPerinatalDeath", [0, 1]],
        ["militaryID", "Types::IdentityDocument", [0, 1]],
        ["postCode", "SOAP::SOAPString", [0, 1]],
        ["registrationDistrict", "SOAP::SOAPString", [0, 1]],
        ["militaryDistrict", "SOAP::SOAPString", [0, 1]],
        ["applicantPerson", "Types::ApplicantPerson", [0, 1]],
        ["applicantOrganization", "Types::ApplicantOrganization", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::MedicalCertificateOfDeath,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfDeath"),
      :schema_basetype => XSD::QName.new(NsType, "medicalCertificateOfBirth"),
      :schema_element => [
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::MedicalCertificateOfDeathType", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::DocOfDeathUnjustlyRepressed,
      :schema_type => XSD::QName.new(NsType, "docOfDeathUnjustlyRepressed"),
      :schema_element => [
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::DivorceActRecord,
      :schema_type => XSD::QName.new(NsType, "divorceActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["husband", "Types::Person", [0, 1]],
        ["wife", "Types::Person", [0, 1]],
        ["newLastNameOfHusb", "SOAP::SOAPString", [0, 1]],
        ["newLastNameOfWife", "SOAP::SOAPString", [0, 1]],
        ["divorceDate", "Types::DateRecord", [0, 1]],
        ["marriageReqs", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["childrenCount", "SOAP::SOAPString", [0, 1]],
        ["jointStatement", "Types::JointStatementOfDivorce", [0, 1]],
        ["decisionOfDivorce", "Types::CourtDecisionOfDivorce", [0, 1]],
        ["decisionWithStatement", "Types::CourtDecisionOfDivorceWithStatement", [0, 1]],
        ["verdictWithStatement", "Types::CourtVerdictOfDivorceWithStatement", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["statementNumber", "SOAP::SOAPString", [0, 1]],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["certDate", "SOAP::SOAPDateTime", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["applicant2", "Types::ApplicantPerson", [0, 1]],
        ["statementNumber2", "SOAP::SOAPString", [0, 1]],
        ["statementDate2", "SOAP::SOAPDateTime", [0, 1]],
        ["certSeries2", "SOAP::SOAPString", [0, 1]],
        ["certNumber2", "SOAP::SOAPString", [0, 1]],
        ["certDate2", "SOAP::SOAPDateTime", [0, 1]],
        ["tax2", "Types::StateTax", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::JointStatementOfDivorce,
      :schema_type => XSD::QName.new(NsType, "jointStatementOfDivorce"),
      :schema_basetype => XSD::QName.new(NsType, "personStatementBaseClass"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::FatherStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "fatherStatementOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "personStatementBaseClass"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"],
        ["deathReqs", "Types::ActRecordOfDeathRequisites", [0, 1]],
        ["courtDecision", "Types::CourtDecisionInFatherStatementOfFiliation", [0, 1]],
        ["refReqs", "Types::RefInFatherStatementOfFiliation", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::RefInFatherStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "refInFatherStatementOfFiliation"),
      :schema_element => [
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["refDate", "Types::DateRecord", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::FiliationActRecord,
      :schema_type => XSD::QName.new(NsType, "filiationActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["child", "Types::Child", [0, 1]],
        ["newChildInitials", "Types::PersonInitials", [0, 1]],
        ["father", "Types::Person", [0, 1]],
        ["mother", "Types::Person", [0, 1]],
        ["jointStatement", "Types::JointStatementOfFiliation", [0, 1]],
        ["fatherStatement", "Types::FatherStatementOfFiliation", [0, 1]],
        ["courtDecision", "Types::CourtDecisionOfFiliation", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["applicant2", "Types::ApplicantPerson", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["marriageReqs", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["mothLastNameInMarriage", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::JointStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "jointStatementOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "personStatementBaseClass"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfActRecsToCorrectDueNameChange,
      :schema_type => XSD::QName.new(NsType, "listOfActRecsToCorrectDueNameChange"),
      :schema_element => [
        ["item", "Types::ActRecToCorrectDueNameChange[]", [0, nil]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfApostilleDocs,
      :schema_type => XSD::QName.new(NsType, "listOfApostilleDocs"),
      :schema_element => [
        ["item", "Types::ApostilleDoc[]", [0, nil]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfChildrenInNameChangeOrCorrection,
      :schema_type => XSD::QName.new(NsType, "listOfChildrenInNameChangeOrCorrection"),
      :schema_element => [
        ["item", "Types::ChildInNameChangeOrCorrection[]", [0, nil]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfRegistrarEmployees,
      :schema_type => XSD::QName.new(NsType, "listOfRegistrarEmployees"),
      :schema_element => [
        ["item", "Types::RegistrarEmployee[]", [0, nil]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::RegistrarEmployee,
      :schema_type => XSD::QName.new(NsType, "registrarEmployee"),
      :schema_basetype => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["jobTitle", "SOAP::SOAPString", [0, 1]],
        ["phone", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ListOfWebStatementTypes,
      :schema_type => XSD::QName.new(NsType, "listOfWebStatementTypes"),
      :schema_element => [
        ["item", "Types::WebStatementType[]", [0, nil]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::MarriageActRecord,
      :schema_type => XSD::QName.new(NsType, "marriageActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["groom", "Types::Person", [0, 1]],
        ["bride", "Types::Person", [0, 1]],
        ["newLastNameOfHusb", "SOAP::SOAPString", [0, 1]],
        ["newLastNameOfWife", "SOAP::SOAPString", [0, 1]],
        ["divorceRequisitesForHusb", "Types::ActRecordOfDivorceRequisites", [0, 1]],
        ["deathRequisitesForHusb", "Types::ActRecordOfDeathRequisites", [0, 1]],
        ["divorceRequisitesForWife", "Types::ActRecordOfDivorceRequisites", [0, 1]],
        ["deathRequisitesForWife", "Types::ActRecordOfDeathRequisites", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["statementNumber", "SOAP::SOAPString", [0, 1]],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["timeOfMarriage", "Types::TimeOfMarriage", [0, 1]],
        ["ceaseReqs", "Types::CourtDecisionOfMarriageCease", [0, 1]],
        ["divorceReqs", "Types::ActRecordOfDivorceRequisites", [0, 1]],
        ["stateTax", "Types::StateTax", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::TimeOfMarriage,
      :schema_type => XSD::QName.new(NsType, "timeOfMarriage"),
      :schema_element => [
        ["marriageDate", "SOAP::SOAPDateTime", [0, 1]],
        ["timeHour", "SOAP::SOAPInt"],
        ["timeMinute", "SOAP::SOAPInt"],
        ["solemnly", "SOAP::SOAPBoolean"],
        ["hallName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::NameChangeActRecord,
      :schema_type => XSD::QName.new(NsType, "nameChangeActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["person", "Types::Person", [0, 1]],
        ["changedInitials", "Types::PersonInitials", [0, 1]],
        ["phone", "SOAP::SOAPString", [0, 1]],
        ["recrOfficeName", "SOAP::SOAPString", [0, 1]],
        ["reason", "SOAP::SOAPString", [0, 1]],
        ["birthActRequisites", "Types::ActRecordOfBirthRequisites", [0, 1]],
        ["childInitials", "Types::PersonInitials", [0, 1]],
        ["fatherInitials", "Types::PersonInitials", [0, 1]],
        ["motherInitials", "Types::PersonInitials", [0, 1]],
        ["maritalStatus", "Types::MaritalStatusType", [0, 1]],
        ["maritalStatusReqs", "Types::ActRecordRequisites", [0, 1]],
        ["children", "Types::ListOfChildrenInNameChangeOrCorrection", [0, 1]],
        ["correctedActList", "Types::ListOfActRecsToCorrectDueNameChange", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["statementNumber", "SOAP::SOAPInt"],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["caseNumber", "SOAP::SOAPString", [0, 1]],
        ["caseEndDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ReferenceIssueRecord,
      :schema_type => XSD::QName.new(NsType, "referenceIssueRecord"),
      :schema_element => [
        ["actType", "Types::ActRecordType", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["actRegistrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["actRecordIdentifier", "SOAP::SOAPInt"],
        ["formType", "Types::ReferenceFormType", [0, 1]],
        ["refNumber", "SOAP::SOAPInt"],
        ["refIssueDate", "SOAP::SOAPDateTime", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::Registrar,
      :schema_type => XSD::QName.new(NsType, "registrar"),
      :schema_element => [
        ["fullName", "SOAP::SOAPString", [0, 1]],
        ["shortName", "SOAP::SOAPString", [0, 1]],
        ["legalAddress", "Types::FullAddress", [0, 1]],
        ["employees", "Types::ListOfRegistrarEmployees", [0, 1]],
        ["head", "Types::RegistrarEmployee", [0, 1]],
        ["identity", "Types::RegistrarNameIdentity", [0, 1]],
        ["type", "Types::RegistrarType", [0, 1]],
        ["isPreviousName", "SOAP::SOAPBoolean"],
        ["webStatementTypes", "Types::ListOfWebStatementTypes", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::ReportForm26,
      :schema_type => XSD::QName.new(NsType, "reportForm26"),
      :schema_element => [
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["reportMonth", "SOAP::SOAPInt"],
        ["reportYear", "SOAP::SOAPInt"],
        ["birthActCount", "SOAP::SOAPInt"],
        ["deathActCount", "SOAP::SOAPInt"],
        ["marriageActCount", "SOAP::SOAPInt"],
        ["divorceActCount", "SOAP::SOAPInt"],
        ["divorceActCountByCourt", "SOAP::SOAPInt"],
        ["filiationActCount", "SOAP::SOAPInt"],
        ["adoptionActCount", "SOAP::SOAPInt"],
        ["nameChangeActCount", "SOAP::SOAPInt"],
        ["statementOfCorrectionsCountAtBegining", "SOAP::SOAPInt"],
        ["acceptedStatementOfCorrectionsCount", "SOAP::SOAPInt"],
        ["consideredStatementOfCorrectionsCount", "SOAP::SOAPInt"],
        ["performedStatementOfCorrectionsUnderArt69Count", "SOAP::SOAPInt"],
        ["performedStatementOfCorrectionsUnderArt70Count", "SOAP::SOAPInt"],
        ["refusedStatementOfCorrectionsCount", "SOAP::SOAPInt"],
        ["statementOfCorrectionsCountAtEnd", "SOAP::SOAPInt"],
        ["performedNoticeOfFiliationAdoptionNameChangeOrDivorceCount", "SOAP::SOAPInt"],
        ["performedConclusionOfCorrectionCount", "SOAP::SOAPInt"],
        ["reissuedCertificateCount", "SOAP::SOAPInt"],
        ["issuedReferenceAndNoticeCount", "SOAP::SOAPInt"],
        ["acceptedStatementOfRequestingDocumentsCount", "SOAP::SOAPInt"],
        ["apostilledDocumentCount", "SOAP::SOAPInt"],
        ["supplementedDivorceActCount", "SOAP::SOAPInt"],
        ["cancelledActCount", "SOAP::SOAPInt"],
        ["issuedRefuseNoticeCount", "SOAP::SOAPInt"],
        ["serviceMarksCount", "SOAP::SOAPInt"],
        ["stateTaxTotalInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForMarriageInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForDivorceInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForFiliationInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForNameChangeInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForCertReissueInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForReferenceIssueInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForRequestingDocumentsInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForApostilleInThousands", "SOAP::SOAPDouble"],
        ["registrarTotalCount", "SOAP::SOAPInt"],
        ["registrarOfficeTotalCount", "SOAP::SOAPInt"],
        ["registrarManagementOfficeCount", "SOAP::SOAPInt"],
        ["registrarOfficeInManagementStructureCount", "SOAP::SOAPInt"],
        ["registrarOfficeInLocalStructureCount", "SOAP::SOAPInt"],
        ["registrarBranchesCount", "SOAP::SOAPInt"],
        ["employeesInManagementCount", "SOAP::SOAPInt"],
        ["employeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["employeesInBranchesCount", "SOAP::SOAPInt"],
        ["stateEmployeesInManagementCount", "SOAP::SOAPInt"],
        ["stateEmployeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["stateEmployeesInBranchesCount", "SOAP::SOAPInt"],
        ["municipalEmployeesInManagementCount", "SOAP::SOAPInt"],
        ["municipalEmployeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["municipalEmployeesInBranchesCount", "SOAP::SOAPInt"],
        ["serviceEmployeesInManagementCount", "SOAP::SOAPInt"],
        ["serviceEmployeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["serviceEmployeesInBranchesCount", "SOAP::SOAPInt"]
      ]
    )

    EncodedRegistry.register(
      :class => Types::StatementOfApostille,
      :schema_type => XSD::QName.new(NsType, "statementOfApostille"),
      :schema_element => [
        ["statementNumber", "SOAP::SOAPInt"],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["countryTo", "SOAP::SOAPString", [0, 1]],
        ["docs", "Types::ListOfApostilleDocs", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::StatementOfRequestingDocuments,
      :schema_type => XSD::QName.new(NsType, "statementOfRequestingDocuments"),
      :schema_element => [
        ["statementNumber", "SOAP::SOAPInt"],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["countryFrom", "SOAP::SOAPString", [0, 1]],
        ["registrarNameFrom", "SOAP::SOAPString", [0, 1]],
        ["docType", "Types::RequestedDocType", [0, 1]],
        ["actType", "Types::ActRecordType", [0, 1]],
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actDate2", "Types::DateRecord", [0, 1]],
        ["nameOfActRegistrar", "SOAP::SOAPString", [0, 1]],
        ["subj1Initials", "Types::PersonInitials", [0, 1]],
        ["subj1BirthDate", "Types::DateRecord", [0, 1]],
        ["subj1BirthDate2", "Types::DateRecord", [0, 1]],
        ["subj1BirthPlace", "Types::ShortAddress", [0, 1]],
        ["subj2Initials", "Types::PersonInitials", [0, 1]],
        ["subj2BirthDate", "Types::DateRecord", [0, 1]],
        ["subj2BirthDate2", "Types::DateRecord", [0, 1]],
        ["subj2BirthPlace", "Types::ShortAddress", [0, 1]],
        ["requestReason", "SOAP::SOAPString", [0, 1]],
        ["requestRights", "SOAP::SOAPString", [0, 1]],
        ["registrarNameOfAppResidence", "SOAP::SOAPString", [0, 1]],
        ["registrarAddressOfAppResidence", "Types::FullAddress", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["receiptDate", "SOAP::SOAPDateTime", [0, 1]],
        ["issueDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::TimeOfReceipt,
      :schema_type => XSD::QName.new(NsType, "timeOfReceipt"),
      :schema_element => [
        ["statementType", "Types::WebStatementType", [0, 1]],
        ["receiptDate", "SOAP::SOAPDateTime", [0, 1]],
        ["timeHour", "SOAP::SOAPInt"],
        ["timeMinute", "SOAP::SOAPInt"],
        ["cabinetName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    EncodedRegistry.register(
      :class => Types::DocumentVerificationStatusType,
      :schema_type => XSD::QName.new(NsType, "documentVerificationStatusType")
    )

    EncodedRegistry.register(
      :class => Types::ActRecordType,
      :schema_type => XSD::QName.new(NsType, "actRecordType")
    )

    EncodedRegistry.register(
      :class => Types::CorrectionSubject,
      :schema_type => XSD::QName.new(NsType, "correctionSubject")
    )

    EncodedRegistry.register(
      :class => Types::CorrectionFieldDueNameChange,
      :schema_type => XSD::QName.new(NsType, "correctionFieldDueNameChange")
    )

    EncodedRegistry.register(
      :class => Types::GenderType,
      :schema_type => XSD::QName.new(NsType, "genderType")
    )

    EncodedRegistry.register(
      :class => Types::CitizenshipType,
      :schema_type => XSD::QName.new(NsType, "citizenshipType")
    )

    EncodedRegistry.register(
      :class => Types::ApostilleDocType,
      :schema_type => XSD::QName.new(NsType, "apostilleDocType")
    )

    EncodedRegistry.register(
      :class => Types::StateTaxType,
      :schema_type => XSD::QName.new(NsType, "stateTaxType")
    )

    EncodedRegistry.register(
      :class => Types::ApostillePerformType,
      :schema_type => XSD::QName.new(NsType, "apostillePerformType")
    )

    EncodedRegistry.register(
      :class => Types::BirthType,
      :schema_type => XSD::QName.new(NsType, "birthType")
    )

    EncodedRegistry.register(
      :class => Types::CertificateIssueType,
      :schema_type => XSD::QName.new(NsType, "certificateIssueType")
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionInFatherStatementOfFiliationType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionInFatherStatementOfFiliationType")
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfDeathType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDeathType")
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfDivorceWithStatementType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDivorceWithStatementType")
    )

    EncodedRegistry.register(
      :class => Types::CourtDecisionOfFiliationType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfFiliationType")
    )

    EncodedRegistry.register(
      :class => Types::MedicalCertificateOfDeathType,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfDeathType")
    )

    EncodedRegistry.register(
      :class => Types::WebStatementType,
      :schema_type => XSD::QName.new(NsType, "webStatementType")
    )

    EncodedRegistry.register(
      :class => Types::MaritalStatusType,
      :schema_type => XSD::QName.new(NsType, "maritalStatusType")
    )

    EncodedRegistry.register(
      :class => Types::ReferenceFormType,
      :schema_type => XSD::QName.new(NsType, "referenceFormType")
    )

    EncodedRegistry.register(
      :class => Types::RegistrarType,
      :schema_type => XSD::QName.new(NsType, "registrarType")
    )

    EncodedRegistry.register(
      :class => Types::RequestedDocType,
      :schema_type => XSD::QName.new(NsType, "requestedDocType")
    )

    LiteralRegistry.register(
      :class => Types::DateRecord,
      :schema_type => XSD::QName.new(NsType, "dateRecord"),
      :schema_element => [
        ["day", "SOAP::SOAPInt"],
        ["month", "SOAP::SOAPInt"],
        ["year", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::RegistrarNameIdentity,
      :schema_type => XSD::QName.new(NsType, "registrarNameIdentity"),
      :schema_basetype => XSD::QName.new(NsType, "registrarIdentity"),
      :schema_element => [
        ["regionCode", "SOAP::SOAPInt"],
        ["registrarCode", "SOAP::SOAPInt"],
        ["registrarID", "SOAP::SOAPInt"],
        ["registrarNameID", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::RegistrarIdentity,
      :schema_type => XSD::QName.new(NsType, "registrarIdentity"),
      :schema_element => [
        ["regionCode", "SOAP::SOAPInt"],
        ["registrarCode", "SOAP::SOAPInt"],
        ["registrarID", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordCancelRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordCancelRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["courtDate", "Types::DateRecord", [0, 1]],
        ["cancelDate", "Types::DateRecord", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordOfAdoptionRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfAdoptionRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordOfBirthRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfBirthRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordOfDeathRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfDeathRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordOfDivorceRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfDivorceRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordOfFiliationRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfFiliationRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordOfMarriageRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfMarriageRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecordOfNameChangeRequisites,
      :schema_type => XSD::QName.new(NsType, "actRecordOfNameChangeRequisites"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ActRecToCorrectDueNameChange,
      :schema_type => XSD::QName.new(NsType, "actRecToCorrectDueNameChange"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordRequisites"),
      :schema_element => [
        ["number", "SOAP::SOAPInt"],
        ["date", "Types::DateRecord", [0, 1]],
        ["nameOfRegistrar", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::ActRecordType", [0, 1]],
        ["subj1Initials", "Types::PersonInitials", [0, 1]],
        ["subj2Initials", "Types::PersonInitials", [0, 1]],
        ["corrections", "Types::ListOfCorrectionsDueNameChange", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::PersonInitials,
      :schema_type => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfCorrectionsDueNameChange,
      :schema_type => XSD::QName.new(NsType, "listOfCorrectionsDueNameChange"),
      :schema_element => [
        ["item", "Types::CorrectionDueNameChange[]", [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CorrectionDueNameChange,
      :schema_type => XSD::QName.new(NsType, "correctionDueNameChange"),
      :schema_element => [
        ["subject", "Types::CorrectionSubject", [0, 1]],
        ["field", "Types::CorrectionFieldDueNameChange", [0, 1]],
        ["correctFieldAfterActRegistration", "SOAP::SOAPBoolean"],
        ["previousValue", "SOAP::SOAPString", [0, 1]],
        ["newValue", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::AdoptionActRecord,
      :schema_type => XSD::QName.new(NsType, "adoptionActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["childBefore", "Types::Child", [0, 1]],
        ["birthReqsBefore", "Types::ActRecordOfBirthRequisites", [0, 1]],
        ["childAfter", "Types::Child", [0, 1]],
        ["birthReqsAfter", "Types::ActRecordOfBirthRequisites", [0, 1]],
        ["fatherInitials", "Types::PersonInitials", [0, 1]],
        ["fatherCitizenship", "Types::Citizenship", [0, 1]],
        ["fatherNationality", "SOAP::SOAPString", [0, 1]],
        ["motherInitials", "Types::PersonInitials", [0, 1]],
        ["motherCitizenship", "Types::Citizenship", [0, 1]],
        ["motherNationality", "SOAP::SOAPString", [0, 1]],
        ["adopter", "Types::Person", [0, 1]],
        ["adopter2", "Types::Person", [0, 1]],
        ["apoptersMarriage", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["courtDecision", "Types::CourtDecisionRequisites", [0, 1]],
        ["adoptiveParents", "SOAP::SOAPBoolean"],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["applicant2", "Types::ApplicantPerson", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::Child,
      :schema_type => XSD::QName.new(NsType, "child"),
      :schema_basetype => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["gender", "Types::GenderType", [0, 1]],
        ["birthDate", "Types::DateRecord", [0, 1]],
        ["birthPlace", "Types::ShortAddress", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ShortAddress,
      :schema_type => XSD::QName.new(NsType, "shortAddress"),
      :schema_element => [
        ["country", "SOAP::SOAPString", [0, 1]],
        ["stateEntity", "SOAP::SOAPString", [0, 1]],
        ["district", "SOAP::SOAPString", [0, 1]],
        ["city", "SOAP::SOAPString", [0, 1]],
        ["settlType", "SOAP::SOAPString", [0, 1]],
        ["settlName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::Citizenship,
      :schema_type => XSD::QName.new(NsType, "citizenship"),
      :schema_element => [
        ["type", "Types::CitizenshipType", [0, 1]],
        ["countryInGenitive", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::Person,
      :schema_type => XSD::QName.new(NsType, "person"),
      :schema_basetype => XSD::QName.new(NsType, "child"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["gender", "Types::GenderType", [0, 1]],
        ["birthDate", "Types::DateRecord", [0, 1]],
        ["birthPlace", "Types::ShortAddress", [0, 1]],
        ["citizenship", "Types::Citizenship", [0, 1]],
        ["nationality", "SOAP::SOAPString", [0, 1]],
        ["snils", "SOAP::SOAPString", [0, 1]],
        ["residencePlace", "Types::FullAddress", [0, 1]],
        ["identityDocument", "Types::IdentityDocument", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::FullAddress,
      :schema_type => XSD::QName.new(NsType, "fullAddress"),
      :schema_basetype => XSD::QName.new(NsType, "shortAddress"),
      :schema_element => [
        ["country", "SOAP::SOAPString", [0, 1]],
        ["stateEntity", "SOAP::SOAPString", [0, 1]],
        ["district", "SOAP::SOAPString", [0, 1]],
        ["city", "SOAP::SOAPString", [0, 1]],
        ["settlType", "SOAP::SOAPString", [0, 1]],
        ["settlName", "SOAP::SOAPString", [0, 1]],
        ["streetType", "SOAP::SOAPString", [0, 1]],
        ["streetName", "SOAP::SOAPString", [0, 1]],
        ["house", "SOAP::SOAPString", [0, 1]],
        ["building", "SOAP::SOAPString", [0, 1]],
        ["appartment", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::IdentityDocument,
      :schema_type => XSD::QName.new(NsType, "identityDocument"),
      :schema_element => [
        ["documentName", "SOAP::SOAPString", [0, 1]],
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["divisionCode", "SOAP::SOAPString", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionRequisites,
      :schema_type => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ApplicantPerson,
      :schema_type => XSD::QName.new(NsType, "applicantPerson"),
      :schema_basetype => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["residencePlace", "Types::FullAddress", [0, 1]],
        ["identityDocument", "Types::IdentityDocument", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ApostilleDoc,
      :schema_type => XSD::QName.new(NsType, "apostilleDoc"),
      :schema_element => [
        ["actType", "Types::ActRecordType", [0, 1]],
        ["docType", "Types::ApostilleDocType", [0, 1]],
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["subj1Initials", "Types::PersonInitials", [0, 1]],
        ["subj2Initials", "Types::PersonInitials", [0, 1]],
        ["docSeries", "SOAP::SOAPString", [0, 1]],
        ["docNumber", "SOAP::SOAPString", [0, 1]],
        ["docRegistrar", "SOAP::SOAPString", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["performType", "Types::ApostillePerformType", [0, 1]],
        ["apostilleDate", "SOAP::SOAPDateTime", [0, 1]],
        ["apostilleNumber", "SOAP::SOAPInt"],
        ["refuseReason", "SOAP::SOAPString", [0, 1]],
        ["issueDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::StateTax,
      :schema_type => XSD::QName.new(NsType, "stateTax"),
      :schema_element => [
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["type", "Types::StateTaxType", [0, 1]],
        ["amount", "SOAP::SOAPDouble"],
        ["payer", "Types::PersonInitials", [0, 1]],
        ["paymentDate", "SOAP::SOAPDateTime", [0, 1]],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["serviceDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ApplicantOrganization,
      :schema_type => XSD::QName.new(NsType, "applicantOrganization"),
      :schema_element => [
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["legalAddress", "Types::FullAddress", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::BirthActRecord,
      :schema_type => XSD::QName.new(NsType, "birthActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["child", "Types::Child", [0, 1]],
        ["numberOfBirths", "SOAP::SOAPString", [0, 1]],
        ["birthType", "Types::BirthType", [0, 1]],
        ["childenCountInFamily", "SOAP::SOAPString", [0, 1]],
        ["refusedChild", "SOAP::SOAPBoolean"],
        ["foundChild", "SOAP::SOAPBoolean"],
        ["father", "Types::Person", [0, 1]],
        ["mother", "Types::Person", [0, 1]],
        ["certOfBirth", "Types::MedicalCertificateOfBirth", [0, 1]],
        ["statementOfAttentedAtBirth", "Types::StatementOfPersonAttentedAtBirth", [0, 1]],
        ["statementOfArrivedOtherwise", "Types::StatementOfPersonArrivedOtherwise", [0, 1]],
        ["certOfPerinatalDeath", "Types::MedicalCertificateOfPerinatalDeath", [0, 1]],
        ["marriageReqs", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["filiationReqs", "Types::ActRecordOfFiliationRequisites", [0, 1]],
        ["singleMotherStatementDate", "Types::DateRecord", [0, 1]],
        ["applicantPerson", "Types::ApplicantPerson", [0, 1]],
        ["applicantOrganization", "Types::ApplicantOrganization", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::MedicalCertificateOfBirth,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfBirth"),
      :schema_element => [
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::StatementOfPersonAttentedAtBirth,
      :schema_type => XSD::QName.new(NsType, "statementOfPersonAttentedAtBirth"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["initials", "Types::PersonInitials", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::StatementOfPersonArrivedOtherwise,
      :schema_type => XSD::QName.new(NsType, "statementOfPersonArrivedOtherwise"),
      :schema_basetype => XSD::QName.new(NsType, "statementOfPersonAttentedAtBirth"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["initials", "Types::PersonInitials", [0, 1]],
        ["proceedMethod", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::MedicalCertificateOfPerinatalDeath,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfPerinatalDeath"),
      :schema_basetype => XSD::QName.new(NsType, "medicalCertificateOfBirth"),
      :schema_element => [
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["causesOfDeath", "Types::ListOfCausesOfDeath", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfCausesOfDeath,
      :schema_type => XSD::QName.new(NsType, "listOfCausesOfDeath"),
      :schema_element => [
        ["item", "Types::CauseOfDeath[]", [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CauseOfDeath,
      :schema_type => XSD::QName.new(NsType, "causeOfDeath"),
      :schema_element => [
        ["codeInICD10", "SOAP::SOAPString", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CertificateIssueRecord,
      :schema_type => XSD::QName.new(NsType, "certificateIssueRecord"),
      :schema_element => [
        ["actType", "Types::ActRecordType", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["actRegistrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["actRecordID", "SOAP::SOAPInt"],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["certDate", "SOAP::SOAPDateTime", [0, 1]],
        ["issueType", "Types::CertificateIssueType", [0, 1]],
        ["spoilReason", "SOAP::SOAPString", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ChildInNameChangeOrCorrection,
      :schema_type => XSD::QName.new(NsType, "childInNameChangeOrCorrection"),
      :schema_basetype => XSD::QName.new(NsType, "child"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["gender", "Types::GenderType", [0, 1]],
        ["birthDate", "Types::DateRecord", [0, 1]],
        ["birthPlace", "Types::ShortAddress", [0, 1]],
        ["birthReqs", "Types::ActRecordOfBirthRequisites", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionInFatherStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "courtDecisionInFatherStatementOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::CourtDecisionInFatherStatementOfFiliationType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfDeath,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDeath"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::CourtDecisionOfDeathType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfDivorce,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDivorce"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfDivorceWithStatement,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDivorceWithStatement"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionOfDivorce"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["againstWhom", "Types::GenderType", [0, 1]],
        ["type", "Types::CourtDecisionOfDivorceWithStatementType", [0, 1]],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfFiliation,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::CourtDecisionOfFiliationType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfMarriageCease,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfMarriageCease"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionRequisites"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["marriageCeaseDate", "Types::DateRecord", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::CourtVerdictOfDivorceWithStatement,
      :schema_type => XSD::QName.new(NsType, "courtVerdictOfDivorceWithStatement"),
      :schema_basetype => XSD::QName.new(NsType, "courtDecisionOfDivorce"),
      :schema_element => [
        ["courtName", "SOAP::SOAPString", [0, 1]],
        ["decisionDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["againstWhom", "Types::GenderType", [0, 1]],
        ["imprisonment", "SOAP::SOAPString", [0, 1]],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::DeathActRecord,
      :schema_type => XSD::QName.new(NsType, "deathActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["dead", "Types::Person", [0, 1]],
        ["deathDate", "Types::DateRecord", [0, 1]],
        ["deathDate2", "Types::DateRecord", [0, 1]],
        ["deathPlace", "Types::ShortAddress", [0, 1]],
        ["causesOfDeath", "Types::ListOfCausesOfDeath", [0, 1]],
        ["certOfDeath", "Types::MedicalCertificateOfDeath", [0, 1]],
        ["decisionOfDeath", "Types::CourtDecisionOfDeath", [0, 1]],
        ["docOfRepressed", "Types::DocOfDeathUnjustlyRepressed", [0, 1]],
        ["certOfPerinatalDeath", "Types::MedicalCertificateOfPerinatalDeath", [0, 1]],
        ["militaryID", "Types::IdentityDocument", [0, 1]],
        ["postCode", "SOAP::SOAPString", [0, 1]],
        ["registrationDistrict", "SOAP::SOAPString", [0, 1]],
        ["militaryDistrict", "SOAP::SOAPString", [0, 1]],
        ["applicantPerson", "Types::ApplicantPerson", [0, 1]],
        ["applicantOrganization", "Types::ApplicantOrganization", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::MedicalCertificateOfDeath,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfDeath"),
      :schema_basetype => XSD::QName.new(NsType, "medicalCertificateOfBirth"),
      :schema_element => [
        ["series", "SOAP::SOAPString", [0, 1]],
        ["number", "SOAP::SOAPString", [0, 1]],
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]],
        ["verificationStatus", "Types::DocumentVerificationStatusType", [0, 1]],
        ["type", "Types::MedicalCertificateOfDeathType", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::DocOfDeathUnjustlyRepressed,
      :schema_type => XSD::QName.new(NsType, "docOfDeathUnjustlyRepressed"),
      :schema_element => [
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["documentDate", "Types::DateRecord", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::DivorceActRecord,
      :schema_type => XSD::QName.new(NsType, "divorceActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["husband", "Types::Person", [0, 1]],
        ["wife", "Types::Person", [0, 1]],
        ["newLastNameOfHusb", "SOAP::SOAPString", [0, 1]],
        ["newLastNameOfWife", "SOAP::SOAPString", [0, 1]],
        ["divorceDate", "Types::DateRecord", [0, 1]],
        ["marriageReqs", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["childrenCount", "SOAP::SOAPString", [0, 1]],
        ["jointStatement", "Types::JointStatementOfDivorce", [0, 1]],
        ["decisionOfDivorce", "Types::CourtDecisionOfDivorce", [0, 1]],
        ["decisionWithStatement", "Types::CourtDecisionOfDivorceWithStatement", [0, 1]],
        ["verdictWithStatement", "Types::CourtVerdictOfDivorceWithStatement", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["statementNumber", "SOAP::SOAPString", [0, 1]],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["certDate", "SOAP::SOAPDateTime", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["applicant2", "Types::ApplicantPerson", [0, 1]],
        ["statementNumber2", "SOAP::SOAPString", [0, 1]],
        ["statementDate2", "SOAP::SOAPDateTime", [0, 1]],
        ["certSeries2", "SOAP::SOAPString", [0, 1]],
        ["certNumber2", "SOAP::SOAPString", [0, 1]],
        ["certDate2", "SOAP::SOAPDateTime", [0, 1]],
        ["tax2", "Types::StateTax", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::JointStatementOfDivorce,
      :schema_type => XSD::QName.new(NsType, "jointStatementOfDivorce"),
      :schema_basetype => XSD::QName.new(NsType, "personStatementBaseClass"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::FatherStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "fatherStatementOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "personStatementBaseClass"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"],
        ["deathReqs", "Types::ActRecordOfDeathRequisites", [0, 1]],
        ["courtDecision", "Types::CourtDecisionInFatherStatementOfFiliation", [0, 1]],
        ["refReqs", "Types::RefInFatherStatementOfFiliation", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::RefInFatherStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "refInFatherStatementOfFiliation"),
      :schema_element => [
        ["organizationName", "SOAP::SOAPString", [0, 1]],
        ["refDate", "Types::DateRecord", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::FiliationActRecord,
      :schema_type => XSD::QName.new(NsType, "filiationActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["child", "Types::Child", [0, 1]],
        ["newChildInitials", "Types::PersonInitials", [0, 1]],
        ["father", "Types::Person", [0, 1]],
        ["mother", "Types::Person", [0, 1]],
        ["jointStatement", "Types::JointStatementOfFiliation", [0, 1]],
        ["fatherStatement", "Types::FatherStatementOfFiliation", [0, 1]],
        ["courtDecision", "Types::CourtDecisionOfFiliation", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["applicant2", "Types::ApplicantPerson", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["marriageReqs", "Types::ActRecordOfMarriageRequisites", [0, 1]],
        ["mothLastNameInMarriage", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::JointStatementOfFiliation,
      :schema_type => XSD::QName.new(NsType, "jointStatementOfFiliation"),
      :schema_basetype => XSD::QName.new(NsType, "personStatementBaseClass"),
      :schema_element => [
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["statementNumber", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfActRecsToCorrectDueNameChange,
      :schema_type => XSD::QName.new(NsType, "listOfActRecsToCorrectDueNameChange"),
      :schema_element => [
        ["item", "Types::ActRecToCorrectDueNameChange[]", [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfApostilleDocs,
      :schema_type => XSD::QName.new(NsType, "listOfApostilleDocs"),
      :schema_element => [
        ["item", "Types::ApostilleDoc[]", [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfChildrenInNameChangeOrCorrection,
      :schema_type => XSD::QName.new(NsType, "listOfChildrenInNameChangeOrCorrection"),
      :schema_element => [
        ["item", "Types::ChildInNameChangeOrCorrection[]", [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfRegistrarEmployees,
      :schema_type => XSD::QName.new(NsType, "listOfRegistrarEmployees"),
      :schema_element => [
        ["item", "Types::RegistrarEmployee[]", [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::RegistrarEmployee,
      :schema_type => XSD::QName.new(NsType, "registrarEmployee"),
      :schema_basetype => XSD::QName.new(NsType, "personInitials"),
      :schema_element => [
        ["lastName", "SOAP::SOAPString", [0, 1]],
        ["firstName", "SOAP::SOAPString", [0, 1]],
        ["middleName", "SOAP::SOAPString", [0, 1]],
        ["jobTitle", "SOAP::SOAPString", [0, 1]],
        ["phone", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ListOfWebStatementTypes,
      :schema_type => XSD::QName.new(NsType, "listOfWebStatementTypes"),
      :schema_element => [
        ["item", "Types::WebStatementType[]", [0, nil]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::MarriageActRecord,
      :schema_type => XSD::QName.new(NsType, "marriageActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["groom", "Types::Person", [0, 1]],
        ["bride", "Types::Person", [0, 1]],
        ["newLastNameOfHusb", "SOAP::SOAPString", [0, 1]],
        ["newLastNameOfWife", "SOAP::SOAPString", [0, 1]],
        ["divorceRequisitesForHusb", "Types::ActRecordOfDivorceRequisites", [0, 1]],
        ["deathRequisitesForHusb", "Types::ActRecordOfDeathRequisites", [0, 1]],
        ["divorceRequisitesForWife", "Types::ActRecordOfDivorceRequisites", [0, 1]],
        ["deathRequisitesForWife", "Types::ActRecordOfDeathRequisites", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["statementNumber", "SOAP::SOAPString", [0, 1]],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["timeOfMarriage", "Types::TimeOfMarriage", [0, 1]],
        ["ceaseReqs", "Types::CourtDecisionOfMarriageCease", [0, 1]],
        ["divorceReqs", "Types::ActRecordOfDivorceRequisites", [0, 1]],
        ["stateTax", "Types::StateTax", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::TimeOfMarriage,
      :schema_type => XSD::QName.new(NsType, "timeOfMarriage"),
      :schema_element => [
        ["marriageDate", "SOAP::SOAPDateTime", [0, 1]],
        ["timeHour", "SOAP::SOAPInt"],
        ["timeMinute", "SOAP::SOAPInt"],
        ["solemnly", "SOAP::SOAPBoolean"],
        ["hallName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::NameChangeActRecord,
      :schema_type => XSD::QName.new(NsType, "nameChangeActRecord"),
      :schema_basetype => XSD::QName.new(NsType, "actRecordBaseClass"),
      :schema_element => [
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actIsRecovered", "SOAP::SOAPBoolean"],
        ["registrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["infoAndServiceMarks", "SOAP::SOAPString", [0, 1]],
        ["cancelRequisites", "Types::ActRecordCancelRequisites", [0, 1]],
        ["certSeries", "SOAP::SOAPString", [0, 1]],
        ["certNumber", "SOAP::SOAPString", [0, 1]],
        ["correctionDate", "SOAP::SOAPDateTime", [0, 1]],
        ["person", "Types::Person", [0, 1]],
        ["changedInitials", "Types::PersonInitials", [0, 1]],
        ["phone", "SOAP::SOAPString", [0, 1]],
        ["recrOfficeName", "SOAP::SOAPString", [0, 1]],
        ["reason", "SOAP::SOAPString", [0, 1]],
        ["birthActRequisites", "Types::ActRecordOfBirthRequisites", [0, 1]],
        ["childInitials", "Types::PersonInitials", [0, 1]],
        ["fatherInitials", "Types::PersonInitials", [0, 1]],
        ["motherInitials", "Types::PersonInitials", [0, 1]],
        ["maritalStatus", "Types::MaritalStatusType", [0, 1]],
        ["maritalStatusReqs", "Types::ActRecordRequisites", [0, 1]],
        ["children", "Types::ListOfChildrenInNameChangeOrCorrection", [0, 1]],
        ["correctedActList", "Types::ListOfActRecsToCorrectDueNameChange", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["isStatement", "SOAP::SOAPBoolean"],
        ["statementNumber", "SOAP::SOAPInt"],
        ["statementDate", "SOAP::SOAPDateTime", [0, 1]],
        ["caseNumber", "SOAP::SOAPString", [0, 1]],
        ["caseEndDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ReferenceIssueRecord,
      :schema_type => XSD::QName.new(NsType, "referenceIssueRecord"),
      :schema_element => [
        ["actType", "Types::ActRecordType", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["actRegistrarNameIdentity", "Types::RegistrarNameIdentity", [0, 1]],
        ["actRecordIdentifier", "SOAP::SOAPInt"],
        ["formType", "Types::ReferenceFormType", [0, 1]],
        ["refNumber", "SOAP::SOAPInt"],
        ["refIssueDate", "SOAP::SOAPDateTime", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::Registrar,
      :schema_type => XSD::QName.new(NsType, "registrar"),
      :schema_element => [
        ["fullName", "SOAP::SOAPString", [0, 1]],
        ["shortName", "SOAP::SOAPString", [0, 1]],
        ["legalAddress", "Types::FullAddress", [0, 1]],
        ["employees", "Types::ListOfRegistrarEmployees", [0, 1]],
        ["head", "Types::RegistrarEmployee", [0, 1]],
        ["identity", "Types::RegistrarNameIdentity", [0, 1]],
        ["type", "Types::RegistrarType", [0, 1]],
        ["isPreviousName", "SOAP::SOAPBoolean"],
        ["webStatementTypes", "Types::ListOfWebStatementTypes", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::ReportForm26,
      :schema_type => XSD::QName.new(NsType, "reportForm26"),
      :schema_element => [
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["reportMonth", "SOAP::SOAPInt"],
        ["reportYear", "SOAP::SOAPInt"],
        ["birthActCount", "SOAP::SOAPInt"],
        ["deathActCount", "SOAP::SOAPInt"],
        ["marriageActCount", "SOAP::SOAPInt"],
        ["divorceActCount", "SOAP::SOAPInt"],
        ["divorceActCountByCourt", "SOAP::SOAPInt"],
        ["filiationActCount", "SOAP::SOAPInt"],
        ["adoptionActCount", "SOAP::SOAPInt"],
        ["nameChangeActCount", "SOAP::SOAPInt"],
        ["statementOfCorrectionsCountAtBegining", "SOAP::SOAPInt"],
        ["acceptedStatementOfCorrectionsCount", "SOAP::SOAPInt"],
        ["consideredStatementOfCorrectionsCount", "SOAP::SOAPInt"],
        ["performedStatementOfCorrectionsUnderArt69Count", "SOAP::SOAPInt"],
        ["performedStatementOfCorrectionsUnderArt70Count", "SOAP::SOAPInt"],
        ["refusedStatementOfCorrectionsCount", "SOAP::SOAPInt"],
        ["statementOfCorrectionsCountAtEnd", "SOAP::SOAPInt"],
        ["performedNoticeOfFiliationAdoptionNameChangeOrDivorceCount", "SOAP::SOAPInt"],
        ["performedConclusionOfCorrectionCount", "SOAP::SOAPInt"],
        ["reissuedCertificateCount", "SOAP::SOAPInt"],
        ["issuedReferenceAndNoticeCount", "SOAP::SOAPInt"],
        ["acceptedStatementOfRequestingDocumentsCount", "SOAP::SOAPInt"],
        ["apostilledDocumentCount", "SOAP::SOAPInt"],
        ["supplementedDivorceActCount", "SOAP::SOAPInt"],
        ["cancelledActCount", "SOAP::SOAPInt"],
        ["issuedRefuseNoticeCount", "SOAP::SOAPInt"],
        ["serviceMarksCount", "SOAP::SOAPInt"],
        ["stateTaxTotalInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForMarriageInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForDivorceInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForFiliationInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForNameChangeInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForCertReissueInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForReferenceIssueInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForRequestingDocumentsInThousands", "SOAP::SOAPDouble"],
        ["stateTaxForApostilleInThousands", "SOAP::SOAPDouble"],
        ["registrarTotalCount", "SOAP::SOAPInt"],
        ["registrarOfficeTotalCount", "SOAP::SOAPInt"],
        ["registrarManagementOfficeCount", "SOAP::SOAPInt"],
        ["registrarOfficeInManagementStructureCount", "SOAP::SOAPInt"],
        ["registrarOfficeInLocalStructureCount", "SOAP::SOAPInt"],
        ["registrarBranchesCount", "SOAP::SOAPInt"],
        ["employeesInManagementCount", "SOAP::SOAPInt"],
        ["employeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["employeesInBranchesCount", "SOAP::SOAPInt"],
        ["stateEmployeesInManagementCount", "SOAP::SOAPInt"],
        ["stateEmployeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["stateEmployeesInBranchesCount", "SOAP::SOAPInt"],
        ["municipalEmployeesInManagementCount", "SOAP::SOAPInt"],
        ["municipalEmployeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["municipalEmployeesInBranchesCount", "SOAP::SOAPInt"],
        ["serviceEmployeesInManagementCount", "SOAP::SOAPInt"],
        ["serviceEmployeesInRegistrarsCount", "SOAP::SOAPInt"],
        ["serviceEmployeesInBranchesCount", "SOAP::SOAPInt"]
      ]
    )

    LiteralRegistry.register(
      :class => Types::StatementOfApostille,
      :schema_type => XSD::QName.new(NsType, "statementOfApostille"),
      :schema_element => [
        ["statementNumber", "SOAP::SOAPInt"],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["countryTo", "SOAP::SOAPString", [0, 1]],
        ["docs", "Types::ListOfApostilleDocs", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::StatementOfRequestingDocuments,
      :schema_type => XSD::QName.new(NsType, "statementOfRequestingDocuments"),
      :schema_element => [
        ["statementNumber", "SOAP::SOAPInt"],
        ["statementDate", "Types::DateRecord", [0, 1]],
        ["applicant", "Types::ApplicantPerson", [0, 1]],
        ["registrarIdentity", "Types::RegistrarIdentity", [0, 1]],
        ["recordIdentifier", "SOAP::SOAPInt"],
        ["countryFrom", "SOAP::SOAPString", [0, 1]],
        ["registrarNameFrom", "SOAP::SOAPString", [0, 1]],
        ["docType", "Types::RequestedDocType", [0, 1]],
        ["actType", "Types::ActRecordType", [0, 1]],
        ["actNumber", "SOAP::SOAPInt"],
        ["actDate", "Types::DateRecord", [0, 1]],
        ["actDate2", "Types::DateRecord", [0, 1]],
        ["nameOfActRegistrar", "SOAP::SOAPString", [0, 1]],
        ["subj1Initials", "Types::PersonInitials", [0, 1]],
        ["subj1BirthDate", "Types::DateRecord", [0, 1]],
        ["subj1BirthDate2", "Types::DateRecord", [0, 1]],
        ["subj1BirthPlace", "Types::ShortAddress", [0, 1]],
        ["subj2Initials", "Types::PersonInitials", [0, 1]],
        ["subj2BirthDate", "Types::DateRecord", [0, 1]],
        ["subj2BirthDate2", "Types::DateRecord", [0, 1]],
        ["subj2BirthPlace", "Types::ShortAddress", [0, 1]],
        ["requestReason", "SOAP::SOAPString", [0, 1]],
        ["requestRights", "SOAP::SOAPString", [0, 1]],
        ["registrarNameOfAppResidence", "SOAP::SOAPString", [0, 1]],
        ["registrarAddressOfAppResidence", "Types::FullAddress", [0, 1]],
        ["tax", "Types::StateTax", [0, 1]],
        ["receiptDate", "SOAP::SOAPDateTime", [0, 1]],
        ["issueDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::TimeOfReceipt,
      :schema_type => XSD::QName.new(NsType, "timeOfReceipt"),
      :schema_element => [
        ["statementType", "Types::WebStatementType", [0, 1]],
        ["receiptDate", "SOAP::SOAPDateTime", [0, 1]],
        ["timeHour", "SOAP::SOAPInt"],
        ["timeMinute", "SOAP::SOAPInt"],
        ["cabinetName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    LiteralRegistry.register(
      :class => Types::DocumentVerificationStatusType,
      :schema_type => XSD::QName.new(NsType, "documentVerificationStatusType")
    )

    LiteralRegistry.register(
      :class => Types::ActRecordType,
      :schema_type => XSD::QName.new(NsType, "actRecordType")
    )

    LiteralRegistry.register(
      :class => Types::CorrectionSubject,
      :schema_type => XSD::QName.new(NsType, "correctionSubject")
    )

    LiteralRegistry.register(
      :class => Types::CorrectionFieldDueNameChange,
      :schema_type => XSD::QName.new(NsType, "correctionFieldDueNameChange")
    )

    LiteralRegistry.register(
      :class => Types::GenderType,
      :schema_type => XSD::QName.new(NsType, "genderType")
    )

    LiteralRegistry.register(
      :class => Types::CitizenshipType,
      :schema_type => XSD::QName.new(NsType, "citizenshipType")
    )

    LiteralRegistry.register(
      :class => Types::ApostilleDocType,
      :schema_type => XSD::QName.new(NsType, "apostilleDocType")
    )

    LiteralRegistry.register(
      :class => Types::StateTaxType,
      :schema_type => XSD::QName.new(NsType, "stateTaxType")
    )

    LiteralRegistry.register(
      :class => Types::ApostillePerformType,
      :schema_type => XSD::QName.new(NsType, "apostillePerformType")
    )

    LiteralRegistry.register(
      :class => Types::BirthType,
      :schema_type => XSD::QName.new(NsType, "birthType")
    )

    LiteralRegistry.register(
      :class => Types::CertificateIssueType,
      :schema_type => XSD::QName.new(NsType, "certificateIssueType")
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionInFatherStatementOfFiliationType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionInFatherStatementOfFiliationType")
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfDeathType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDeathType")
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfDivorceWithStatementType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfDivorceWithStatementType")
    )

    LiteralRegistry.register(
      :class => Types::CourtDecisionOfFiliationType,
      :schema_type => XSD::QName.new(NsType, "courtDecisionOfFiliationType")
    )

    LiteralRegistry.register(
      :class => Types::MedicalCertificateOfDeathType,
      :schema_type => XSD::QName.new(NsType, "medicalCertificateOfDeathType")
    )

    LiteralRegistry.register(
      :class => Types::WebStatementType,
      :schema_type => XSD::QName.new(NsType, "webStatementType")
    )

    LiteralRegistry.register(
      :class => Types::MaritalStatusType,
      :schema_type => XSD::QName.new(NsType, "maritalStatusType")
    )

    LiteralRegistry.register(
      :class => Types::ReferenceFormType,
      :schema_type => XSD::QName.new(NsType, "referenceFormType")
    )

    LiteralRegistry.register(
      :class => Types::RegistrarType,
      :schema_type => XSD::QName.new(NsType, "registrarType")
    )

    LiteralRegistry.register(
      :class => Types::RequestedDocType,
      :schema_type => XSD::QName.new(NsType, "requestedDocType")
    )
  end
end
