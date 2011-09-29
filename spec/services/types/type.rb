require 'xsd/qname'

module Types


class ActRecordBaseClass < Soybean::ComplexType
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
end

class AdoptionActRecord < ActRecordBaseClass
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
  attr_accessor :child_before
  attr_accessor :birth_reqs_before
  attr_accessor :child_after
  attr_accessor :birth_reqs_after
  attr_accessor :father_initials
  attr_accessor :father_citizenship
  attr_accessor :father_nationality
  attr_accessor :mother_initials
  attr_accessor :mother_citizenship
  attr_accessor :mother_nationality
  attr_accessor :adopter
  attr_accessor :adopter2
  attr_accessor :apopters_marriage
  attr_accessor :court_decision
  attr_accessor :adoptive_parents
  attr_accessor :applicant
  attr_accessor :applicant2
end

class BirthActRecord < ActRecordBaseClass
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
  attr_accessor :child
  attr_accessor :number_of_births
  attr_accessor :birth_type
  attr_accessor :childen_count_in_family
  attr_accessor :refused_child
  attr_accessor :found_child
  attr_accessor :father
  attr_accessor :mother
  attr_accessor :cert_of_birth
  attr_accessor :statement_of_attented_at_birth
  attr_accessor :statement_of_arrived_otherwise
  attr_accessor :cert_of_perinatal_death
  attr_accessor :marriage_reqs
  attr_accessor :filiation_reqs
  attr_accessor :single_mother_statement_date
  attr_accessor :applicant_person
  attr_accessor :applicant_organization
end

class DeathActRecord < ActRecordBaseClass
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
  attr_accessor :dead
  attr_accessor :death_date
  attr_accessor :death_date2
  attr_accessor :death_place
  attr_accessor :causes_of_death
  attr_accessor :cert_of_death
  attr_accessor :decision_of_death
  attr_accessor :doc_of_repressed
  attr_accessor :cert_of_perinatal_death
  attr_accessor :military_id
  attr_accessor :post_code
  attr_accessor :registration_district
  attr_accessor :military_district
  attr_accessor :applicant_person
  attr_accessor :applicant_organization
end

class DivorceActRecord < ActRecordBaseClass
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
  attr_accessor :husband
  attr_accessor :wife
  attr_accessor :new_last_name_of_husb
  attr_accessor :new_last_name_of_wife
  attr_accessor :divorce_date
  attr_accessor :marriage_reqs
  attr_accessor :children_count
  attr_accessor :joint_statement
  attr_accessor :decision_of_divorce
  attr_accessor :decision_with_statement
  attr_accessor :verdict_with_statement
  attr_accessor :is_statement
  attr_accessor :applicant
  attr_accessor :statement_number
  attr_accessor :statement_date
  attr_accessor :cert_date
  attr_accessor :tax
  attr_accessor :applicant2
  attr_accessor :statement_number2
  attr_accessor :statement_date2
  attr_accessor :cert_series2
  attr_accessor :cert_number2
  attr_accessor :cert_date2
  attr_accessor :tax2
end

class FiliationActRecord < ActRecordBaseClass
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
  attr_accessor :child
  attr_accessor :new_child_initials
  attr_accessor :father
  attr_accessor :mother
  attr_accessor :joint_statement
  attr_accessor :father_statement
  attr_accessor :court_decision
  attr_accessor :is_statement
  attr_accessor :applicant
  attr_accessor :applicant2
  attr_accessor :tax
  attr_accessor :marriage_reqs
  attr_accessor :moth_last_name_in_marriage
end

class MarriageActRecord < ActRecordBaseClass
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
  attr_accessor :groom
  attr_accessor :bride
  attr_accessor :new_last_name_of_husb
  attr_accessor :new_last_name_of_wife
  attr_accessor :divorce_requisites_for_husb
  attr_accessor :death_requisites_for_husb
  attr_accessor :divorce_requisites_for_wife
  attr_accessor :death_requisites_for_wife
  attr_accessor :is_statement
  attr_accessor :statement_number
  attr_accessor :statement_date
  attr_accessor :time_of_marriage
  attr_accessor :cease_reqs
  attr_accessor :divorce_reqs
  attr_accessor :state_tax
end

class NameChangeActRecord < ActRecordBaseClass
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_is_recovered
  attr_accessor :registrar_name_identity
  attr_accessor :record_identifier
  attr_accessor :info_and_service_marks
  attr_accessor :cancel_requisites
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :correction_date
  attr_accessor :person
  attr_accessor :changed_initials
  attr_accessor :phone
  attr_accessor :recr_office_name
  attr_accessor :reason
  attr_accessor :birth_act_requisites
  attr_accessor :child_initials
  attr_accessor :father_initials
  attr_accessor :mother_initials
  attr_accessor :marital_status
  attr_accessor :marital_status_reqs
  attr_accessor :children
  attr_accessor :corrected_act_list
  attr_accessor :tax
  attr_accessor :is_statement
  attr_accessor :statement_number
  attr_accessor :statement_date
  attr_accessor :case_number
  attr_accessor :case_end_date
end

class DateRecord < Soybean::ComplexType
  attr_accessor :day
  attr_accessor :month
  attr_accessor :year
end

class RegistrarIdentity < Soybean::ComplexType
  attr_accessor :region_code
  attr_accessor :registrar_code
  attr_accessor :registrar_id
end

class RegistrarNameIdentity < RegistrarIdentity
  attr_accessor :region_code
  attr_accessor :registrar_code
  attr_accessor :registrar_id
  attr_accessor :registrar_name_id
end

class ActRecordCancelRequisites < Soybean::ComplexType
  attr_accessor :court_name
  attr_accessor :court_date
  attr_accessor :cancel_date
end

class ActRecordRequisites < Soybean::ComplexType
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecordOfAdoptionRequisites < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecordOfBirthRequisites < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecordOfDeathRequisites < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecordOfDivorceRequisites < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecordOfFiliationRequisites < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecordOfMarriageRequisites < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecordOfNameChangeRequisites < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
end

class ActRecToCorrectDueNameChange < ActRecordRequisites
  attr_accessor :number
  attr_accessor :date
  attr_accessor :name_of_registrar
  attr_accessor :verification_status
  attr_accessor :type
  attr_accessor :subj1_initials
  attr_accessor :subj2_initials
  attr_accessor :corrections
end

class PersonInitials < Soybean::ComplexType
  attr_accessor :last_name
  attr_accessor :first_name
  attr_accessor :middle_name
end

class Child < PersonInitials
  attr_accessor :last_name
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :gender
  attr_accessor :birth_date
  attr_accessor :birth_place
end

class Person < Child
  attr_accessor :last_name
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :gender
  attr_accessor :birth_date
  attr_accessor :birth_place
  attr_accessor :citizenship
  attr_accessor :nationality
  attr_accessor :snils
  attr_accessor :residence_place
  attr_accessor :identity_document
end

class ChildInNameChangeOrCorrection < Child
  attr_accessor :last_name
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :gender
  attr_accessor :birth_date
  attr_accessor :birth_place
  attr_accessor :birth_reqs
end

class ApplicantPerson < PersonInitials
  attr_accessor :last_name
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :residence_place
  attr_accessor :identity_document
end

class RegistrarEmployee < PersonInitials
  attr_accessor :last_name
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :job_title
  attr_accessor :phone
end

class ListOfCorrectionsDueNameChange < ::Array
end

class CorrectionDueNameChange < Soybean::ComplexType
  attr_accessor :subject
  attr_accessor :field
  attr_accessor :correct_field_after_act_registration
  attr_accessor :previous_value
  attr_accessor :new_value
end

class ShortAddress < Soybean::ComplexType
  attr_accessor :country
  attr_accessor :state_entity
  attr_accessor :district
  attr_accessor :city
  attr_accessor :settl_type
  attr_accessor :settl_name
end

class FullAddress < ShortAddress
  attr_accessor :country
  attr_accessor :state_entity
  attr_accessor :district
  attr_accessor :city
  attr_accessor :settl_type
  attr_accessor :settl_name
  attr_accessor :street_type
  attr_accessor :street_name
  attr_accessor :house
  attr_accessor :building
  attr_accessor :appartment
end

class Citizenship < Soybean::ComplexType
  attr_accessor :type
  attr_accessor :country_in_genitive
end

class IdentityDocument < Soybean::ComplexType
  attr_accessor :document_name
  attr_accessor :series
  attr_accessor :number
  attr_accessor :organization_name
  attr_accessor :document_date
  attr_accessor :division_code
  attr_accessor :verification_status
end

class CourtDecisionRequisites < Soybean::ComplexType
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
end

class CourtDecisionInFatherStatementOfFiliation < CourtDecisionRequisites
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
  attr_accessor :type
end

class CourtDecisionOfDeath < CourtDecisionRequisites
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
  attr_accessor :type
end

class CourtDecisionOfDivorce < CourtDecisionRequisites
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
end

class CourtDecisionOfDivorceWithStatement < CourtDecisionOfDivorce
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
  attr_accessor :against_whom
  attr_accessor :type
  attr_accessor :statement_date
  attr_accessor :statement_number
end

class CourtVerdictOfDivorceWithStatement < CourtDecisionOfDivorce
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
  attr_accessor :against_whom
  attr_accessor :imprisonment
  attr_accessor :statement_date
  attr_accessor :statement_number
end

class CourtDecisionOfFiliation < CourtDecisionRequisites
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
  attr_accessor :type
end

class CourtDecisionOfMarriageCease < CourtDecisionRequisites
  attr_accessor :court_name
  attr_accessor :decision_date
  attr_accessor :verification_status
  attr_accessor :marriage_cease_date
end

class ApostilleDoc < Soybean::ComplexType
  attr_accessor :act_type
  attr_accessor :doc_type
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :subj1_initials
  attr_accessor :subj2_initials
  attr_accessor :doc_series
  attr_accessor :doc_number
  attr_accessor :doc_registrar
  attr_accessor :tax
  attr_accessor :perform_type
  attr_accessor :apostille_date
  attr_accessor :apostille_number
  attr_accessor :refuse_reason
  attr_accessor :issue_date
end

class StateTax < Soybean::ComplexType
  attr_accessor :registrar_identity
  attr_accessor :type
  attr_accessor :amount
  attr_accessor :payer
  attr_accessor :payment_date
  attr_accessor :statement_date
  attr_accessor :service_date
end

class ApplicantOrganization < Soybean::ComplexType
  attr_accessor :organization_name
  attr_accessor :legal_address
end

class MedicalCertificateOfBirth < Soybean::ComplexType
  attr_accessor :series
  attr_accessor :number
  attr_accessor :organization_name
  attr_accessor :document_date
  attr_accessor :verification_status
end

class MedicalCertificateOfPerinatalDeath < MedicalCertificateOfBirth
  attr_accessor :series
  attr_accessor :number
  attr_accessor :organization_name
  attr_accessor :document_date
  attr_accessor :verification_status
  attr_accessor :causes_of_death
end

class MedicalCertificateOfDeath < MedicalCertificateOfBirth
  attr_accessor :series
  attr_accessor :number
  attr_accessor :organization_name
  attr_accessor :document_date
  attr_accessor :verification_status
  attr_accessor :type
end

class StatementOfPersonAttentedAtBirth < Soybean::ComplexType
  attr_accessor :statement_date
  attr_accessor :initials
end

class StatementOfPersonArrivedOtherwise < StatementOfPersonAttentedAtBirth
  attr_accessor :statement_date
  attr_accessor :initials
  attr_accessor :proceed_method
  attr_accessor :organization_name
end

class ListOfCausesOfDeath < ::Array
end

class CauseOfDeath < Soybean::ComplexType
  attr_accessor :code_in_icd10
  attr_accessor :value
end

class CertificateIssueRecord < Soybean::ComplexType
  attr_accessor :act_type
  attr_accessor :registrar_identity
  attr_accessor :act_registrar_name_identity
  attr_accessor :act_record_id
  attr_accessor :cert_series
  attr_accessor :cert_number
  attr_accessor :cert_date
  attr_accessor :issue_type
  attr_accessor :spoil_reason
  attr_accessor :tax
end

class DocOfDeathUnjustlyRepressed < Soybean::ComplexType
  attr_accessor :organization_name
  attr_accessor :document_date
end

class PersonStatementBaseClass < Soybean::ComplexType
  attr_accessor :statement_date
  attr_accessor :statement_number
end

class JointStatementOfDivorce < PersonStatementBaseClass
  attr_accessor :statement_date
  attr_accessor :statement_number
end

class FatherStatementOfFiliation < PersonStatementBaseClass
  attr_accessor :statement_date
  attr_accessor :statement_number
  attr_accessor :death_reqs
  attr_accessor :court_decision
  attr_accessor :ref_reqs
end

class JointStatementOfFiliation < PersonStatementBaseClass
  attr_accessor :statement_date
  attr_accessor :statement_number
end

class RefInFatherStatementOfFiliation < Soybean::ComplexType
  attr_accessor :organization_name
  attr_accessor :ref_date
end

class ListOfActRecsToCorrectDueNameChange < ::Array
end

class ListOfApostilleDocs < ::Array
end

class ListOfChildrenInNameChangeOrCorrection < ::Array
end

class ListOfRegistrarEmployees < ::Array
end

class ListOfWebStatementTypes < ::Array
end

class TimeOfMarriage < Soybean::ComplexType
  attr_accessor :marriage_date
  attr_accessor :time_hour
  attr_accessor :time_minute
  attr_accessor :solemnly
  attr_accessor :hall_name
end

class ReferenceIssueRecord < Soybean::ComplexType
  attr_accessor :act_type
  attr_accessor :registrar_identity
  attr_accessor :act_registrar_name_identity
  attr_accessor :act_record_identifier
  attr_accessor :form_type
  attr_accessor :ref_number
  attr_accessor :ref_issue_date
  attr_accessor :tax
end

class Registrar < Soybean::ComplexType
  attr_accessor :full_name
  attr_accessor :short_name
  attr_accessor :legal_address
  attr_accessor :employees
  attr_accessor :head
  attr_accessor :identity
  attr_accessor :type
  attr_accessor :is_previous_name
  attr_accessor :web_statement_types
end

class ReportForm26 < Soybean::ComplexType
  attr_accessor :registrar_identity
  attr_accessor :report_month
  attr_accessor :report_year
  attr_accessor :birth_act_count
  attr_accessor :death_act_count
  attr_accessor :marriage_act_count
  attr_accessor :divorce_act_count
  attr_accessor :divorce_act_count_by_court
  attr_accessor :filiation_act_count
  attr_accessor :adoption_act_count
  attr_accessor :name_change_act_count
  attr_accessor :statement_of_corrections_count_at_begining
  attr_accessor :accepted_statement_of_corrections_count
  attr_accessor :considered_statement_of_corrections_count
  attr_accessor :performed_statement_of_corrections_under_art69_count
  attr_accessor :performed_statement_of_corrections_under_art70_count
  attr_accessor :refused_statement_of_corrections_count
  attr_accessor :statement_of_corrections_count_at_end
  attr_accessor :performed_notice_of_filiation_adoption_name_change_or_divorce_count
  attr_accessor :performed_conclusion_of_correction_count
  attr_accessor :reissued_certificate_count
  attr_accessor :issued_reference_and_notice_count
  attr_accessor :accepted_statement_of_requesting_documents_count
  attr_accessor :apostilled_document_count
  attr_accessor :supplemented_divorce_act_count
  attr_accessor :cancelled_act_count
  attr_accessor :issued_refuse_notice_count
  attr_accessor :service_marks_count
  attr_accessor :state_tax_total_in_thousands
  attr_accessor :state_tax_for_marriage_in_thousands
  attr_accessor :state_tax_for_divorce_in_thousands
  attr_accessor :state_tax_for_filiation_in_thousands
  attr_accessor :state_tax_for_name_change_in_thousands
  attr_accessor :state_tax_for_cert_reissue_in_thousands
  attr_accessor :state_tax_for_reference_issue_in_thousands
  attr_accessor :state_tax_for_requesting_documents_in_thousands
  attr_accessor :state_tax_for_apostille_in_thousands
  attr_accessor :registrar_total_count
  attr_accessor :registrar_office_total_count
  attr_accessor :registrar_management_office_count
  attr_accessor :registrar_office_in_management_structure_count
  attr_accessor :registrar_office_in_local_structure_count
  attr_accessor :registrar_branches_count
  attr_accessor :employees_in_management_count
  attr_accessor :employees_in_registrars_count
  attr_accessor :employees_in_branches_count
  attr_accessor :state_employees_in_management_count
  attr_accessor :state_employees_in_registrars_count
  attr_accessor :state_employees_in_branches_count
  attr_accessor :municipal_employees_in_management_count
  attr_accessor :municipal_employees_in_registrars_count
  attr_accessor :municipal_employees_in_branches_count
  attr_accessor :service_employees_in_management_count
  attr_accessor :service_employees_in_registrars_count
  attr_accessor :service_employees_in_branches_count
end

class StatementOfApostille < Soybean::ComplexType
  attr_accessor :statement_number
  attr_accessor :statement_date
  attr_accessor :applicant
  attr_accessor :registrar_identity
  attr_accessor :record_identifier
  attr_accessor :country_to
  attr_accessor :docs
end

class StatementOfRequestingDocuments < Soybean::ComplexType
  attr_accessor :statement_number
  attr_accessor :statement_date
  attr_accessor :applicant
  attr_accessor :registrar_identity
  attr_accessor :record_identifier
  attr_accessor :country_from
  attr_accessor :registrar_name_from
  attr_accessor :doc_type
  attr_accessor :act_type
  attr_accessor :act_number
  attr_accessor :act_date
  attr_accessor :act_date2
  attr_accessor :name_of_act_registrar
  attr_accessor :subj1_initials
  attr_accessor :subj1_birth_date
  attr_accessor :subj1_birth_date2
  attr_accessor :subj1_birth_place
  attr_accessor :subj2_initials
  attr_accessor :subj2_birth_date
  attr_accessor :subj2_birth_date2
  attr_accessor :subj2_birth_place
  attr_accessor :request_reason
  attr_accessor :request_rights
  attr_accessor :registrar_name_of_app_residence
  attr_accessor :registrar_address_of_app_residence
  attr_accessor :tax
  attr_accessor :receipt_date
  attr_accessor :issue_date
end

class TimeOfReceipt < Soybean::ComplexType
  attr_accessor :statement_type
  attr_accessor :receipt_date
  attr_accessor :time_hour
  attr_accessor :time_minute
  attr_accessor :cabinet_name
end

class DocumentVerificationStatusType < ::String
  Document_pending_verification = new("document_pending_verification")
  Document_verified = new("document_verified")
  Document_void = new("document_void")
  Undefined = new("undefined")
end

class ActRecordType < ::String
  Adoption = new("adoption")
  Birth = new("birth")
  Death = new("death")
  Divorce = new("divorce")
  Filiation = new("filiation")
  Marriage = new("marriage")
  Name_change = new("name_change")
  Undefined = new("undefined")
end

class CorrectionSubject < ::String
  Child_or_dead_or_name_changer = new("child_or_dead_or_name_changer")
  Father_or_husband = new("father_or_husband")
  First_adopter = new("first_adopter")
  Mother_or_wife = new("mother_or_wife")
  Second_adopter = new("second_adopter")
  Undefined = new("undefined")
end

class CorrectionFieldDueNameChange < ::String
  First_name = new("first_name")
  Last_name = new("last_name")
  Middle_name = new("middle_name")
  Undefined = new("undefined")
end

class GenderType < ::String
  Female = new("female")
  Male = new("male")
  Undefined = new("undefined")
end

class CitizenshipType < ::String
  Citizen = new("citizen")
  Citizenship_is_not_set = new("citizenship_is_not_set")
  Not_a_citizen = new("not_a_citizen")
  Stateless_person = new("stateless_person")
  Undefined = new("undefined")
end

class ApostilleDocType < ::String
  Certificate = new("certificate")
  Notice_of_absence = new("notice_of_absence")
  Reference = new("reference")
  Undefined = new("undefined")
end

class StateTaxType < ::String
  Apostille = new("apostille")
  Change_of_name = new("change_of_name")
  Corrections_on_art_69 = new("corrections_on_art_69")
  Corrections_on_art_70 = new("corrections_on_art_70")
  Discovery_of_documents = new("discovery_of_documents")
  Divorce_by_court_order = new("divorce_by_court_order")
  Divorce_by_mutual_consent = new("divorce_by_mutual_consent")
  Divorce_by_statement_of_one = new("divorce_by_statement_of_one")
  Filiation = new("filiation")
  Issuance_of_certificate = new("issuance_of_certificate")
  Issuance_of_reference = new("issuance_of_reference")
  Marriage = new("marriage")
  Undefined = new("undefined")
end

class ApostillePerformType < ::String
  Performed = new("performed")
  Refused = new("refused")
  Undefined = new("undefined")
end

class BirthType < ::String
  Deadborn = new("deadborn")
  Liveborn = new("liveborn")
  Undefined = new("undefined")
  Unknown = new("unknown")
end

class CertificateIssueType < ::String
  Issued_due_to_changes = new("issued_due_to_changes")
  Issued_primary = new("issued_primary")
  Issued_repeated = new("issued_repeated")
  Obtained = new("obtained")
  Spoiled = new("spoiled")
  Undefined = new("undefined")
end

class CourtDecisionInFatherStatementOfFiliationType < ::String
  Deprived_of_parental_rights = new("deprived_of_parental_rights")
  Incompetent = new("incompetent")
  Missing = new("missing")
  Undefined = new("undefined")
end

class CourtDecisionOfDeathType < ::String
  Declaring_a_person_dead = new("declaring_a_person_dead")
  Establishing_fact_of_death = new("establishing_fact_of_death")
  Undefined = new("undefined")
end

class CourtDecisionOfDivorceWithStatementType < ::String
  Incompetent = new("incompetent")
  Missing = new("missing")
  Undefined = new("undefined")
end

class CourtDecisionOfFiliationType < ::String
  Filiation = new("filiation")
  Recognition_of_paternity = new("recognition_of_paternity")
  Undefined = new("undefined")
end

class MedicalCertificateOfDeathType < ::String
  Definitive = new("definitive")
  Draft = new("draft")
  Instead_of_draft = new("instead_of_draft")
  Undefined = new("undefined")
end

class WebStatementType < ::String
  Adoption = new("adoption")
  Apostille = new("apostille")
  Birth = new("birth")
  Correction = new("correction")
  Death = new("death")
  Divorce = new("divorce")
  Filiation = new("filiation")
  Marriage = new("marriage")
  Name_change = new("name_change")
  Reissuing_documents = new("reissuing_documents")
  Requesting_documents = new("requesting_documents")
  Undefined = new("undefined")
end

class MaritalStatusType < ::String
  Divorced = new("divorced")
  Married = new("married")
  Undefined = new("undefined")
  Widowed = new("widowed")
end

class ReferenceFormType < ::String
  Adoption_30 = new("adoption_30")
  Birth_24 = new("birth_24")
  Birth_24a = new("birth_24a")
  Birth_25 = new("birth_25")
  Birth_25a = new("birth_25a")
  Birth_26 = new("birth_26")
  Birth_33 = new("birth_33")
  Death_33 = new("death_33")
  Death_33a = new("death_33a")
  Death_34 = new("death_34")
  Divorce_29 = new("divorce_29")
  Filiation_31 = new("filiation_31")
  Marriage_27 = new("marriage_27")
  Marriage_28 = new("marriage_28")
  Name_change_32 = new("name_change_32")
  Undefined = new("undefined")
end

class RegistrarType < ::String
  Archive = new("archive")
  Existing_branch = new("existing_branch")
  Inactive_branch = new("inactive_branch")
  Management = new("management")
  Registry_office = new("registry_office")
  Undefined = new("undefined")
end

class RequestedDocType < ::String
  Certificate = new("certificate")
  Copy_of_act_record = new("copy_of_act_record")
  Reference = new("reference")
  Undefined = new("undefined")
end


end
