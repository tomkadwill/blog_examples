class Candidate < ApplicationRecord
  def self.candidate_of_the_week
    find_by(name: 'nobody') || NullCandidate.new
  end
end
