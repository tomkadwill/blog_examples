class UserFactoryService
  
  attr_accessor :user_params, :insurance_id, :new_user

  def initialize(user_params, insurance_id)
    @user_params = user_params
    @insurance_id = insurance_id
    @new_user = build_new_user
  end

  def save
    @new_user.save if GovernmentValidatorService.new(insurance_id).valid?
  end

  private

  def build_new_user
    User.new(user_params)
  end
end
