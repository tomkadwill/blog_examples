class UserFactoryService
  include ActiveModel::Validations

  validate :validate_new_user
  validate :validate_government_validator

  attr_accessor :user_params, :insurance_id, :new_user

  def initialize(user_params, insurance_id)
    @user_params = user_params
    @insurance_id = insurance_id
    @new_user = build_new_user
  end

  def save
    @new_user.save if valid?
  end

  private

  def build_new_user
    User.new(user_params)
  end

  def government_validator_service
    @government_validator_service ||= GovernmentValidatorService.new(insurance_id)
  end

  def validate_new_user
    return if @new_user.valid?

    add_errors_for(@new_user)
  end

  def validate_government_validator
    return if government_validator_service.valid?
    
    add_errors_for(government_validator_service)
  end

  def add_errors_for(validator)
    validator.errors.messages.each do |k, v|
      v.each do |message|
        errors.add(k, message)
      end
    end
  end
end
