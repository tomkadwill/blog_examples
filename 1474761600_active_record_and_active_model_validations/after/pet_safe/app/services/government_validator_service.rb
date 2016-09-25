class GovernmentValidatorService
  include ActiveModel::Validations

  validates_inclusion_of :age, in: 0..15, message: "Pet's age is too high for insurance"

  attr_accessor :id, :age

  def initialize(id)
    @id = id
    @age = pet_age
  end
 
  def pet_age
    government_service.pet_age
  end

  def government_service
    GovernmentService.new(id)
  end
end
