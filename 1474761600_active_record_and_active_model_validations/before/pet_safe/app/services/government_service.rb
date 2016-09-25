class GovernmentService

  attr_accessor :id

  def initialize(id)
    @id = id
  end

  def pet_age
    rand(0..20)
  end
end
