# frozen_string_literal: true

class CustomerRegistrationPage < BasePage
  
  attr_reader :customer_physical_first_name_field, :customer_physical_birth_date_field, :customer_physical_cpf_field,
  :customer_physical_postal_code_field, :customer_physical_street_number_field, :customer_physical_complement_field,
  :customer_physical_reference_location_field, :customer_physical_phone_field, :customer_physical_type_address_field, 
  :customer_physical_create_new_account_button, :customer_legal_email_field, :customer_legal_cnpj_field, :customer_legal_social_name_field,
  :customer_legal_address_type_field, :customer_legal_street_number_field, :customer_legal_complement_field,
  :customer_legal_reference_location_field, :customer_legal_phone_field, :customer_legal_postal_code_field

  def initialize
    @customer_physical_create_new_account_button = EL['customer_physical_create_new_account_button']
    @customer_physical_first_name_field = EL['customer_physical_first_name_field']
    @customer_physical_birth_date_field = EL['customer_physical_birth_date_field']
    @customer_physical_cpf_field = EL['customer_physical_cpf_field']
    @customer_physical_type_address_field = EL['customer_physical_type_address_field']
    @customer_physical_postal_code_field = EL['customer_physical_postal_code_field']
    @customer_physical_street_number_field = EL['customer_physical_street_number_field']
    @customer_physical_complement_field = EL['customer_physical_complement_field']
    @customer_physical_reference_location_field = EL['customer_physical_reference_location_field']
    @customer_physical_phone_field = EL['customer_physical_phone_field']
    @customer_legal_email_field = EL['customer_legal_email_field']
    @customer_legal_cnpj_field = EL['customer_legal_cnpj_field']
    @customer_legal_social_name_field = EL['customer_legal_social_name_field']
    @customer_legal_address_type_field = EL['customer_legal_address_type_field']
    @customer_legal_postal_code_field = EL['customer_legal_postal_code_field']
    @customer_legal_street_number_field = EL['customer_legal_street_number_field']
    @customer_legal_complement_field = EL['customer_legal_complement_field']
    @customer_legal_reference_location_field = EL['customer_legal_reference_location_field']
    @customer_legal_phone_field = EL['customer_legal_phone_field']
  end

  def create_new_account
    find(@customer_physical_create_new_account_button).click
  end

  def date_generate
    day = rand(1..28).to_s
    mounth = rand(1..12).to_s
    year = rand(1980..1990).to_s
    birth_day = ("#{day}" + "#{mounth}" + "#{birth_day}")
  end

  def registration_new_account_physical
    choose 'Sou pessoa física'
    find_field(@customer_physical_first_name_field).send_keys(Faker::Name.name)
    find_field(@customer_physical_birth_date_field).send_keys(date_generate)
    choose 'Sou Brasileiro'
    find_field(@customer_physical_cpf_field).send_keys(CPF.generate)
    find_field(@customer_physical_type_address_field).click
    find_field(@customer_physical_type_address_field).select('Residencial')
    find_field(@customer_physical_postal_code_field).send_keys('61930-070')
    find_field(@customer_physical_street_number_field).send_keys(Faker::Number.number(digits: 3))
    find_field(@customer_physical_complement_field).send_keys('Teste')
    find_field(@customer_physical_phone_field).send_keys("#{'11'}#{'9'}#{Faker::Number.number(digits: 10)}")
  end

  def registration_new_account_legal
    choose 'Sou pessoa juridica'
    binding.pry
    find_field(@customer_legal_email_field).send_keys(Faker::Internet.email)
    find_field(@customer_legal_cnpj_field).send_keys(CNPJ.generate)
    find_field(@customer_legal_social_name_field).send_keys(Faker::Company.name)
    check 'Isento'
    find_field(@customer_legal_address_type_field).click
    find_field(@customer_legal_address_type_field).select('Comercial')
    find_field(@customer_legal_postal_code_field).send_keys('75902-150')
    find_field(@customer_legal_street_number_field).send_keys(Faker::Number.number(digits: 3))
    find_field(@customer_physical_complement_field).send_keys('Teste')
    find_field(@customer_physical_phone_field).send_keys("#{'11'}#{'9'}#{Faker::Number.number(digits: 10)}")
  end

  def click_register
    click_button 'Registrar'
  end
end
